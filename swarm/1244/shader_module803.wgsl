struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    global0 = array<f32, 10>();
    var var_0 = select(!vec4<bool>(false, all(vec2<bool>(false, true)), all(vec4<bool>(false, true, true, false)) && false, false), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), all(vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true)), vec4<bool>(all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true)), false, false, false));
    global0 = array<f32, 10>();
    let var_1 = vec3<bool>(var_0.x, !(!(!var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(87504u, 10u)]))))) < global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~37950u, abs(u_input.b.x)), ~firstLeadingBit(4294967295u)), 10u)]);
    global0 = array<f32, 10>();
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, ~4294967295u, u_input.a.x, 1u) | u_input.b, reverseBits(max(vec4<u32>(52180u, u_input.b.x, 0u, 55385u), select(u_input.b, u_input.b, vec4<bool>(var_0.x, true, false, var_1.x)))));
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 10>();
    let var_0 = !any(vec2<bool>(true, abs(51171u) >= _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)));
    let var_1 = ~u_input.b.x;
    let var_2 = Struct_1(~_wgslsmith_dot_vec2_i32(max(u_input.d.yz, u_input.c.zx) & vec2<i32>(21712i, u_input.d.x), min(vec2<i32>(13274i, -52989i), u_input.d.xy)), ~func_3());
    let var_3 = var_2;
    return Struct_1(_wgslsmith_mod_i32(-13714i, firstTrailingBit(u_input.d.x)), vec4<u32>(countOneBits(_wgslsmith_clamp_u32(u_input.a.x, var_2.b.x, 4294967295u)) << (var_1 % 32u), 1u, 0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(~var_2.b.x, _wgslsmith_mult_u32(55670u, 1u)), u_input.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: vec2<i32>) -> vec2<f32> {
    let var_0 = arg_0;
    var var_1 = func_2();
    let var_2 = true;
    let var_3 = select(var_2, firstTrailingBit(-31388i) != -34821i, 0i < ~((-10033i ^ arg_2) >> (arg_0.b.x % 32u)));
    var var_4 = func_2();
    return arg_1.xz;
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<f32>) -> vec3<f32> {
    let var_0 = 4294967295u;
    global0 = array<f32, 10>();
    global0 = array<f32, 10>();
    global0 = array<f32, 10>();
    global0 = array<f32, 10>();
    return vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 10u)] - arg_0.x)))), _wgslsmith_f_op_vec2_f32(func_4(func_2(), vec3<f32>(1448f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 10u)] * -781f), _wgslsmith_f_op_f32(arg_0.x * global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), u_input.c.x, _wgslsmith_mod_vec2_i32(countOneBits(u_input.c.yz), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), u_input.c.xy)))).x, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1142f))), -857f))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec3<u32> {
    global0 = array<f32, 10>();
    let var_0 = countOneBits(u_input.a.x);
    let var_1 = u_input.b.ywz;
    var var_2 = ~(~(~u_input.c.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1007f, -287f, global0[_wgslsmith_index_u32(var_1.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -803f)), _wgslsmith_f_op_vec2_f32(func_4(func_2(), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(778f, 1193f, 2164f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1051f, -505f, arg_0.x), vec3<f32>(global0[_wgslsmith_index_u32(24407u, 10u)], global0[_wgslsmith_index_u32(var_1.x, 10u)], -265f))))), firstTrailingBit(-u_input.d.x), abs(u_input.d.xz))))));
    return countOneBits(func_3().wxx);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1136f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -172f)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.xy, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0.b.x, 66091u), 33953u), _wgslsmith_sub_vec2_u32(select(vec2<u32>(6500u, arg_1.b.x), vec2<u32>(4294967295u, 1u), vec2<bool>(true, true)), func_2().b.yy))), 10u)]);
    let var_2 = vec2<i32>(var_0.a, firstTrailingBit(min(max(19091i, u_input.c.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.a), vec2<i32>(var_0.a, -3929i)))));
    var var_3 = arg_1;
    let var_4 = !all(vec3<bool>(false, all(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)) && false));
    return global0[_wgslsmith_index_u32(arg_1.b.x, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 26852u), ~u_input.b), u_input.a), _wgslsmith_div_u32(62595u >> (u_input.b.x % 32u), abs(u_input.b.x)) >> (u_input.b.x % 32u)), 10u)], _wgslsmith_f_op_f32(func_6(_wgslsmith_mod_vec3_u32(u_input.a.zzz, func_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(25797u, 10u)], global0[_wgslsmith_index_u32(45438u, 10u)]))), ~u_input.c.x)), Struct_1(-74049i, ~countOneBits(u_input.a)))), -725f);
    global0 = array<f32, 10>();
    var var_1 = 414f;
    let x = u_input.a;
    s_output = StorageBuffer(-11875i, 10092u, var_0.x);
}

