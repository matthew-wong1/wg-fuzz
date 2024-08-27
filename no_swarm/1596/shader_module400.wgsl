struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec2<bool>) -> vec4<i32> {
    global0 = array<Struct_1, 21>();
    return -(~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(-19847i, u_input.b, u_input.d, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-24176i, -2147483647i, u_input.b, -16635i), vec4<i32>(50400i, 0i, u_input.b, -1i))), -min(vec4<i32>(u_input.b, u_input.d, -1i, u_input.d), vec4<i32>(5989i, -15188i, u_input.d, u_input.b))));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    let var_0 = Struct_1(-3216i);
    var var_1 = Struct_2(~(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-18239i, u_input.d), vec2<i32>(u_input.b, var_0.a), vec2<i32>(var_0.a, var_0.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(3621i, -18384i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b))) >> (u_input.a.yz % vec2<u32>(32u))), _wgslsmith_mult_i32(-(~u_input.d), ~func_1(vec2<bool>(true, true)).x));
    global0 = array<Struct_1, 21>();
    return -1377f;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-1150f - _wgslsmith_f_op_f32(func_3()));
    let var_1 = u_input.c;
    let var_2 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))) | (all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))) & true);
    let var_3 = !(!((17999u != var_1.x) & var_2) && any(select(vec3<bool>(true, true, true), !vec3<bool>(true, var_2, true), !vec3<bool>(true, true, var_2))));
    let var_4 = Struct_1(arg_1.x | _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_1.yzz, arg_0), 1i), vec2<i32>(i32(-1i) * -48948i, u_input.d >> (u_input.c.x % 32u))));
    return all(!vec4<bool>(var_2, true, var_2, var_2 || var_3)) && true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_2(-((~vec3<i32>(-46074i, -21394i, u_input.d) | vec3<i32>(1445i, u_input.b, 37402i)) << (~(~u_input.c) % vec3<u32>(32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.d, 1i, 0i, 13208i)), -u_input.d), ~max(vec4<i32>(53371i, u_input.d, u_input.d, -26645i), vec4<i32>(u_input.b, u_input.d, 2966i, u_input.d)), func_1(vec2<bool>(true, true))), ~(~(-vec4<i32>(-1i, u_input.b, u_input.b, u_input.d)))));
    var var_0 = firstTrailingBit(_wgslsmith_mult_u32(~(u_input.c.x >> (u_input.c.x % 32u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, u_input.a.x), u_input.a.x), firstLeadingBit(~u_input.a.x))));
    global0 = array<Struct_1, 21>();
    let var_1 = -1i;
    let var_2 = 0i;
    global1 = false;
    var_0 = _wgslsmith_div_u32(69902u, ~31601u);
    let var_3 = -min(_wgslsmith_mod_vec3_i32(countOneBits(func_1(vec2<bool>(false, false)).zyw), min(vec3<i32>(-6637i, u_input.b, -2147483647i) & vec3<i32>(var_1, 2147483647i, u_input.d), vec3<i32>(-1i, var_2, 7902i))), vec3<i32>(~(-18798i) | _wgslsmith_mod_i32(u_input.d, 52119i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, var_2, -2147483647i, 2147483647i), ~vec4<i32>(var_2, u_input.d, 1i, 0i)), _wgslsmith_mod_i32(1i, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(663f * 169f))))), func_1(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -940f) - _wgslsmith_f_op_f32(min(141f, 1047f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f + 1000f)))), firstTrailingBit(var_2));
}

