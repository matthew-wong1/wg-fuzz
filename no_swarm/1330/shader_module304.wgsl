struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: Struct_1 = Struct_1(-1495f);

var<private> global2: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global2 = 4294967295u;
    var var_0 = Struct_2(Struct_1(global1.a), Struct_1(868f), u_input.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(1000f + 1714f)))), _wgslsmith_f_op_f32(f32(-1f) * -605f), false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a + -940f)))), -1172f));
    let var_1 = vec3<i32>(~0i, ~(~(-36595i)), var_0.c) & ~vec3<i32>(countOneBits(6316i), u_input.b.x, 1i);
    global0 = array<vec3<f32>, 17>();
    var var_2 = Struct_2(var_0.b, var_0.b, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_vec2_f32(var_0.e * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(685f, -2325f), vec2<f32>(-1287f, -1813f))), vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.d)), _wgslsmith_f_op_f32(2305f - global1.a)))));
    return _wgslsmith_f_op_f32(1235f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f) + _wgslsmith_f_op_f32(-global1.a)) + _wgslsmith_div_f32(global1.a, global1.a))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_0.x;
    let var_1 = 163f;
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.a.a)), 322f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 2542u, 0u, u_input.a.x)))) + arg_1.b.a)));
    global0 = array<vec3<f32>, 17>();
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, (select(arg_1.c, 41761i, false) | 0i) >> (~29256u % 32u)), reverseBits(~reverseBits(-vec2<i32>(arg_0.x, arg_1.c))));
    return Struct_2(arg_1.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(3239f - -729f))))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(min(1287i, select(var_2.x, 1i, false)), 1i), var_2.x), -1000f, arg_1.e);
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = global1.a;
    var_0 = global1.a;
    global0 = array<vec3<f32>, 17>();
    let var_1 = ~0i;
    let var_2 = vec4<u32>(u_input.a.x, u_input.a.x >> (abs(44590u) % 32u), max(u_input.a.x, u_input.a.x), 0u) << (~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 37710u, 0u), ~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u));
    return _wgslsmith_div_u32(~(~firstLeadingBit(abs(4294967295u))), _wgslsmith_mod_u32(_wgslsmith_add_u32(20403u, var_2.x), 4294967295u));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_u32(func_4(func_2(-vec2<i32>(arg_0.c, -2147483647i), arg_0)), ~(~54545u));
    var var_1 = vec4<bool>(select(true, _wgslsmith_f_op_f32(arg_0.b.a - arg_0.e.x) != _wgslsmith_f_op_f32(f32(-1f) * -1000f), true) & !(!(22192u == arg_1.x)), true, true, true);
    var_0 = 38844u;
    var var_2 = Struct_1(arg_0.e.x);
    return Struct_1(_wgslsmith_div_f32(arg_0.e.x, -203f));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec4<u32>(0u, u_input.a.x, ~10465u, reverseBits(_wgslsmith_mult_u32(u_input.a.x, 113766u)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(vec4<u32>(~var_0.x, 1u, arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 23024u, 0u), vec4<u32>(var_0.x, 0u, u_input.a.x, arg_0)))))), func_2(max(abs(select(vec2<i32>(u_input.b.x, u_input.c), u_input.b.xy, true)), -u_input.b.xx), Struct_2(func_2(abs(vec2<i32>(-1i, u_input.b.x)), func_2(u_input.b.xz, Struct_2(Struct_1(global1.a), arg_1, u_input.c, arg_3.a, vec2<f32>(1220f, 364f)))).b, func_1(func_2(u_input.b.yz, Struct_2(arg_1, arg_1, u_input.c, arg_1.a, arg_2.yy)), _wgslsmith_mult_vec2_u32(u_input.a.zy, vec2<u32>(53499u, 75882u))), _wgslsmith_dot_vec3_i32(~u_input.b, u_input.b), func_2(u_input.b.zx ^ u_input.b.yx, func_2(u_input.b.xx, Struct_2(Struct_1(arg_2.x), arg_3, u_input.c, -1546f, arg_2.yz))).b.a, arg_2.xz)).b, _wgslsmith_mod_i32(5172i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(trunc(arg_3.a)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(300f, -745f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.xz))))));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = -(~reverseBits(max(min(vec4<i32>(1i, 0i, arg_3.c, u_input.c), vec4<i32>(arg_3.c, arg_3.c, -1i, arg_3.c)), vec4<i32>(arg_3.c, 30538i, -27833i, arg_3.c))));
    var var_1 = u_input.a.x;
    global1 = arg_3.a;
    global2 = abs(43721u);
    global1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(211f)), _wgslsmith_f_op_f32(-arg_3.b.a)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(_wgslsmith_add_u32(u_input.a.x, func_6(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), global0[_wgslsmith_index_u32(min(u_input.a.x & u_input.a.x, _wgslsmith_div_u32(51372u, u_input.a.x)), 17u)], vec3<bool>(true, true, true), func_5(~8409u, func_1(Struct_2(Struct_1(global1.a), Struct_1(global1.a), u_input.c, -2299f, vec2<f32>(-393f, 439f)), u_input.a.yz), _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), func_1(Struct_2(Struct_1(1629f), Struct_1(global1.a), 36946i, global1.a, vec2<f32>(750f, 812f)), u_input.a.yy)))));
    let var_0 = func_1(Struct_2(Struct_1(global1.a), func_5(~_wgslsmith_dot_vec2_u32(vec2<u32>(17871u, u_input.a.x), u_input.a.zz), func_5(0u << (u_input.a.x % 32u), func_5(u_input.a.x, Struct_1(-597f), global0[_wgslsmith_index_u32(4294967295u, 17u)], Struct_1(global1.a)).a, _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)] + global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), Struct_1(-367f)).a, _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 17u)]), Struct_1(1000f)).b, _wgslsmith_dot_vec2_i32(u_input.b.xx, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 44603i), u_input.b.yx) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, -399f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-394f, global1.a) - vec2<f32>(global1.a, global1.a))))), ~u_input.a.yy);
    let var_1 = func_1(func_5(1u, func_2(u_input.b.zx, Struct_2(Struct_1(-849f), var_0, _wgslsmith_clamp_i32(2147483647i, 57155i, 1i), 581f, vec2<f32>(-242f, var_0.a))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)])) - vec3<f32>(var_0.a, global1.a, 358f))), Struct_1(_wgslsmith_f_op_f32(-global1.a))), u_input.a.yy & vec2<u32>(firstLeadingBit(u_input.a.x) | 0u, max(~79257u, u_input.a.x)));
    var var_2 = 0u;
    var var_3 = _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a, ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 36659u), vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.a))));
    global1 = func_2(u_input.b.zx, func_2(firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, 1i), u_input.c & 1204i)), func_5(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 17u)]))), func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 58075u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 14440u, 0u)), Struct_1(-2141f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 1861f, 408f) + vec3<f32>(var_0.a, global1.a, 919f)), func_5(u_input.a.x, var_0, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], Struct_1(global1.a)).a).b))).b;
    let var_4 = vec4<u32>(u_input.a.x, ~_wgslsmith_mod_u32(~u_input.a.x, countOneBits(u_input.a.x)), 1u, _wgslsmith_mod_u32(0u, ~_wgslsmith_sub_u32(func_6(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(u_input.a.x, 17u)], vec3<bool>(true, true, true), Struct_2(var_0, Struct_1(var_1.a), 3003i, var_1.a, vec2<f32>(-770f, 2391f))), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_sub_i32(~1i & ~_wgslsmith_sub_i32(-52264i, u_input.c), u_input.c), abs(~(~u_input.a.x)) >> ((abs(_wgslsmith_add_u32(var_4.x, var_4.x)) | u_input.a.x) % 32u), firstTrailingBit(select(_wgslsmith_div_vec4_i32(abs(vec4<i32>(72167i, u_input.c, -2147483647i, u_input.b.x)), ~vec4<i32>(-28694i, -1i, -73733i, u_input.c)), ~min(vec4<i32>(-40091i, u_input.c, u_input.c, 1i), vec4<i32>(u_input.b.x, u_input.c, 12446i, u_input.b.x)), !(u_input.b.x <= u_input.b.x))));
}

