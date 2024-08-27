struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5123u;

var<private> global1: i32;

var<private> global2: vec2<u32>;

var<private> global3: f32;

var<private> global4: vec3<u32> = vec3<u32>(1u, 0u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> i32 {
    global4 = select(arg_0.wyw, u_input.a.www, arg_0.x == ~(min(u_input.a.x, u_input.a.x) << (23380u % 32u)));
    return _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mult_i32(firstLeadingBit(max(1i, -1i)), select(arg_1, arg_1, true))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_1, arg_1) ^ _wgslsmith_mod_i32(arg_1, arg_1), -30347i));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_sub_i32(~countOneBits(abs(-28799i)), -34709i), global4.yx, _wgslsmith_mult_i32(min(1i, _wgslsmith_mod_i32(-38714i, -1i)), firstTrailingBit(~2147483647i)) & -func_3(vec4<u32>(4294967295u, global4.x, global4.x, arg_0.x) << (vec4<u32>(global4.x, u_input.a.x, 12031u, 1u) % vec4<u32>(32u)), min(0i, -1i)), vec3<u32>(1u, ~1u, 105271u), Struct_1(select(false, false, true), 1i));
    return Struct_2(var_0.a, vec2<u32>(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(38671u, 0u), u_input.a.yy), ~u_input.a.x, ~0u), 53359u), -(var_0.c & (var_0.c ^ ~1i)), ~abs(arg_0), var_0.e);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> vec3<u32> {
    var var_0 = func_2(firstTrailingBit(select(select(~vec3<u32>(global4.x, 25923u, arg_2.d.x), vec3<u32>(4382u, 8922u, arg_2.b.x), select(vec3<bool>(false, arg_2.e.a, arg_2.e.a), vec3<bool>(true, false, true), true)), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, arg_2.d.x), 0u, ~u_input.a.x), !any(vec4<bool>(arg_0, false, false, arg_0))))).e;
    let var_1 = Struct_3(vec4<f32>(-840f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -725f)) + -857f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -350f))))), _wgslsmith_f_op_f32(f32(-1f) * -669f)), abs(~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a.x, global2.x, global4.x, arg_3)), vec4<u32>(1u, 62784u, u_input.a.x, arg_3) | vec4<u32>(37029u, 1u, 4294967295u, global2.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2271f - _wgslsmith_f_op_f32(-1225f - -1019f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(-688f)))), -1268f, -1322f, -158f));
    var var_2 = Struct_4(func_2(~(_wgslsmith_sub_vec3_u32(vec3<u32>(global4.x, 4294967295u, var_1.b.x), var_1.b.zwy) << ((u_input.a.zzw >> (u_input.a.wzx % vec3<u32>(32u))) % vec3<u32>(32u)))).e, vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(388f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, false)), _wgslsmith_f_op_f32(-var_1.c.x), !arg_0))), -1032f), arg_2.e, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_1.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2075f, var_1.c.x, var_1.c.x, var_1.c.x))), select(u_input.a, ~(~var_1.b), select(vec4<bool>(true, false, arg_2.e.a, true), vec4<bool>(true, false, arg_2.e.a, false), true)), _wgslsmith_f_op_vec4_f32(select(var_1.c, var_1.c, select(vec4<bool>(arg_2.e.a, true, false, true), !vec4<bool>(false, arg_2.e.a, true, false), !vec4<bool>(true, true, arg_0, arg_0))))), func_2(_wgslsmith_add_vec3_u32(u_input.a.wwz, u_input.a.zzw)));
    var var_3 = arg_0;
    global0 = _wgslsmith_dot_vec2_u32(arg_2.d.yz, reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b.x, 1u), vec2<u32>(0u, 64584u))) ^ vec2<u32>(global2.x >> (0u % 32u), arg_3)) ^ func_2(vec3<u32>(7438u >> (_wgslsmith_dot_vec2_u32(global4.zy, global4.xx) % 32u), 56790u, 9660u)).b.x;
    return ~max(vec3<u32>(arg_2.b.x ^ arg_2.d.x, _wgslsmith_mult_u32(~arg_3, 1u), 27656u), (func_2(vec3<u32>(global4.x, 1u, 15887u)).d & _wgslsmith_sub_vec3_u32(var_1.b.ywx, var_1.b.xyy)) << (~(~vec3<u32>(0u, 4294967295u, 25042u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = abs(func_4(-(i32(-1i) * -55853i) == (-2147483647i & _wgslsmith_dot_vec2_i32(vec2<i32>(-53374i, arg_0.x), arg_0)), ~abs(1i), func_2(~vec3<u32>(4294967295u, global2.x, global2.x) | _wgslsmith_sub_vec3_u32(vec3<u32>(69205u, 1u, u_input.a.x), u_input.a.zyw)), u_input.a.x));
    global0 = select(~17253u, global4.x, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = ~1i >= (arg_0.x & arg_0.x);
    var var_2 = func_2(vec3<u32>(_wgslsmith_dot_vec2_u32(global4.zz, ~global4.yy), reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(global4.x, 77628u, 4294967295u, 4294967295u), u_input.a ^ vec4<u32>(16408u, u_input.a.x, 63442u, 4294967295u))), _wgslsmith_mod_u32(1u, global4.x & global2.x) ^ (4294967295u ^ global4.x))).e;
    global3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -586f)));
    return 33993u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.a.x, 4294967295u, 4294967295u), firstLeadingBit(u_input.a)), (u_input.a << (vec4<u32>(14699u, 1u, 4294967295u, global2.x) % vec4<u32>(32u))) | ~vec4<u32>(u_input.a.x, 4294967295u, 35908u, global2.x), vec4<u32>(u_input.a.x, u_input.a.x, 2331u, 1u)), vec4<u32>(_wgslsmith_mod_u32(0u, u_input.a.x) ^ func_1(vec2<i32>(-7882i, 0i)), ~_wgslsmith_sub_u32(39769u, 10059u), func_1(_wgslsmith_div_vec2_i32(vec2<i32>(-15825i, 2147483647i), vec2<i32>(1i, -30725i))), ~global2.x)), 1i, vec3<u32>(max(~(~global4.x), ~(~global4.x)), _wgslsmith_mod_u32(global2.x, 1u), ~_wgslsmith_sub_u32(global4.x, ~4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1129f - -1077f), -108f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(259f + 296f))))));
}

