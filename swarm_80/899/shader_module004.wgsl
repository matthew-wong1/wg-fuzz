struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<f32>;

var<private> global2: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    var var_0 = select(select(select(countOneBits(countOneBits(vec3<u32>(arg_2.b, u_input.a, 50475u))), select(~vec3<u32>(34253u, u_input.a, 4294967295u), ~vec3<u32>(arg_2.b, arg_2.d, arg_1.d), vec3<bool>(arg_0, arg_0, arg_0)), true), abs(vec3<u32>(u_input.b, 11021u, arg_1.d)) ^ countOneBits(~vec3<u32>(59544u, arg_2.d, arg_2.b)), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, arg_0), false), select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, false))), select(!vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(false, arg_0, true), select(vec3<bool>(true, true, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, arg_0))))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_1.b, 22220u), arg_1.d, countOneBits(_wgslsmith_mult_u32(1u, u_input.d))), select(_wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.c, 4294967295u, u_input.a), vec3<u32>(u_input.a, arg_1.d, arg_1.b)), vec3<u32>(arg_2.d, 4294967295u, 23439u) ^ vec3<u32>(7435u, u_input.a, arg_1.d)), vec3<u32>(u_input.d, firstTrailingBit(18381u), u_input.d), select(!vec3<bool>(arg_0, true, true), select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0)), select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, false))))), !(!(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, arg_0)))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(177f, -1072f)) + arg_1.c) + arg_3.x);
    let var_1 = vec4<bool>(arg_0, arg_0, all(select(vec2<bool>(arg_0, all(vec4<bool>(true, false, arg_0, arg_0))), !vec2<bool>(arg_0, true), !arg_0)), !(!(!arg_0)) || ((~4294967295u | max(arg_2.b, 0u)) != countOneBits(max(var_0.x, 4294967295u))));
    let var_2 = select(~(~vec3<u32>(firstTrailingBit(4294967295u), ~30351u, ~1u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, arg_2.d)) ^ vec3<u32>(28238u, u_input.d, var_0.x), ~vec3<u32>(arg_1.b, var_0.x, 4294967295u)) << (vec3<u32>(arg_1.d, ~_wgslsmith_mod_u32(var_0.x, 4294967295u), var_0.x) % vec3<u32>(32u)), !vec3<bool>(select(arg_0 && arg_0, arg_0 | var_1.x, true), !var_1.x || true, any(!vec4<bool>(false, arg_0, var_1.x, false))));
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -659f))), -1430f, _wgslsmith_f_op_f32(-318f + _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(-836f - -601f))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(706f, 683f)), _wgslsmith_f_op_f32(-arg_3.x), arg_0 == true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(max(arg_2.c, 1000f))), _wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(abs(global1.x))), -600f))));
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(step(global1.x, arg_1.c));
    var var_0 = vec4<i32>(-611i, ~(~(-1i)), ~2147483647i, -69481i);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f)))));
    let var_1 = ~firstLeadingBit(~(~vec2<u32>(u_input.c, 12992u)));
    var var_2 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(false, any(vec4<bool>(true, false, false, true)), true)), vec3<bool>(func_3(all(vec3<bool>(false, false, true)), Struct_1(vec4<i32>(arg_0, -56609i, arg_1.a.x, var_0.x), 0u, 1000f, arg_1.b), Struct_1(vec4<i32>(-29680i, arg_1.a.x, 1i, 0i), 14708u, arg_1.c, u_input.c), _wgslsmith_f_op_vec2_f32(-global1.xz)), arg_1.a.x <= ~arg_0, !any(vec3<bool>(true, true, true))), !(!all(vec3<bool>(true, true, true))));
    return arg_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(round(global1.x));
    global0 = ~(~_wgslsmith_sub_u32(func_2(arg_2.a.x, func_2(arg_2.a.x, arg_2)).b, firstLeadingBit(~arg_2.d)));
    let var_0 = max(vec4<i32>(21657i, arg_2.a.x >> (0u % 32u), -1i & -_wgslsmith_dot_vec2_i32(vec2<i32>(5957i, -2147483647i), vec2<i32>(0i, arg_2.a.x)), arg_2.a.x ^ reverseBits(7674i)), -arg_2.a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(407f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -198f), -529f);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), -189f, _wgslsmith_f_op_f32(global1.x - -683f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global1.x, -467f, -2589f) + _wgslsmith_f_op_vec4_f32(exp2(var_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 198f, var_1.x, arg_2.c)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1673f, arg_0.x), var_1))))));
    return Struct_1((vec4<i32>(60950i, ~arg_2.a.x, -60628i, abs(arg_2.a.x)) | abs(var_0)) ^ arg_2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d, arg_3), vec2<u32>(37060u, ~(~u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1752f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))))), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(36691u, arg_2.b, arg_2.b, u_input.a), vec4<u32>(arg_3, 1u, 7579u, arg_2.d) & vec4<u32>(1u, 0u, 38556u, u_input.a))) ^ arg_3);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(min(arg_0.a, -(~vec4<i32>(13318i, arg_0.a.x, arg_0.a.x, 3201i))), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(-1i | arg_0.a.x, arg_0).c), _wgslsmith_f_op_f32(147f * _wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_sub_u32(reverseBits(u_input.d), 1u));
    let var_1 = u_input.b;
    let var_2 = !(!(!(true != (arg_0.a.x != var_0.a.x))));
    global1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(select(var_0.c, 1290f, false)))) + var_0.c), -276f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * arg_0.c)), _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-global1.x))))))));
    var var_3 = vec2<i32>(arg_0.a.x, var_0.a.x);
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = arg_1.a >> (select(vec4<u32>(arg_2, 13368u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.d, 29933u, arg_1.d), vec4<u32>(0u, arg_2, 0u, 1888u)), _wgslsmith_sub_u32(arg_0.b, arg_0.b) ^ max(arg_1.b, 64270u)), abs(min(select(vec4<u32>(arg_0.d, arg_1.b, arg_1.b, 18740u), vec4<u32>(arg_1.d, arg_0.d, arg_2, u_input.d), vec4<bool>(false, true, true, false)), vec4<u32>(arg_0.b, 4294967295u, 15339u, u_input.b))), true) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 2061f)))))));
    global0 = _wgslsmith_clamp_u32(~arg_2, 60188u, arg_0.d);
    global2 = var_1;
    global0 = func_5(arg_0).d;
    return Struct_1(-_wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(var_0.x), arg_1.a.x >> (0u % 32u), i32(-1i) * -13063i, _wgslsmith_mod_i32(29894i, -1i)), func_2(arg_1.a.x, arg_1).a), arg_2, _wgslsmith_f_op_f32(sign(224f)), ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.b, arg_0.b), vec3<u32>(arg_1.b, 70749u, 0u)))));
}

fn func_1() -> vec3<f32> {
    var var_0 = func_6(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(22997i, 17011i), 0i << (0u % 32u), i32(-1i) * -55769i, ~(-12768i)), vec4<i32>(1i, 1i, 1i, 1i)), ~67387u, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f))), u_input.a), func_5(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.xw, global1.yw, vec2<bool>(false, false)))), vec3<bool>(true, true, true), func_2(-43791i, Struct_1(vec4<i32>(-1i, 1i, -9672i, 2147483647i), u_input.d, 661f, 43236u)), u_input.c)), 82921u);
    return global1.yzy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(global1.wzy, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.www) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, -948f), vec3<f32>(745f, global1.x, -220f), true))), vec3<bool>(true, true, true))))));
    var var_1 = u_input.b;
    global2 = func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(799f - global1.x), _wgslsmith_f_op_f32(-902f - global1.x)), global1.zx), _wgslsmith_f_op_vec2_f32(global1.yy * global1.yx))), vec3<bool>(select(func_3(false, Struct_1(vec4<i32>(-1i, 41337i, 0i, -6742i), 18154u, var_0.x, u_input.b), Struct_1(vec4<i32>(-2147483647i, -63468i, -26253i, -2147483647i), u_input.c, -868f, u_input.d), vec2<f32>(global1.x, global1.x)) | (33322u != u_input.d), true, true), true, true), func_5(Struct_1(func_2(-10352i, Struct_1(vec4<i32>(-1i, -43034i, 5114i, 2147483647i), 62535u, 2053f, 1u)).a, ~_wgslsmith_mult_u32(41573u, 17113u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -616f) - _wgslsmith_f_op_f32(abs(global1.x))), u_input.c)), _wgslsmith_add_u32(35448u, ~(~13805u))).c;
    global2 = -1146f;
    var_1 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, max(firstLeadingBit(-(~vec4<i32>(17437i, -1i, -1i, 0i))), ~(~(~vec4<i32>(-1i, 1390i, -56054i, -59435i)))), 46101u);
}

