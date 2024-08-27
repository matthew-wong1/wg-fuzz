struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(634f, 146f, 1807f), vec3<f32>(435f, 422f, -485f), vec3<f32>(296f, 218f, -281f), vec3<f32>(328f, -1561f, 464f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    let var_0 = select(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(1u, 20u)], false);
    var var_1 = true;
    var var_2 = vec4<i32>(min(0i, _wgslsmith_mod_i32(-2147483647i, var_0)), u_input.a.x, var_0, ~(~(-28740i)));
    return 4294967295u;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<i32, 20>();
    let var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2513f, 303f)) * vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-498f, arg_2.a)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a, arg_1.a), vec2<f32>(-1771f, arg_1.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-961f, -118f))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-226f, 273f))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-377f, arg_2.a))), vec2<bool>(arg_2.d.x, -1322f < arg_1.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, 421f)))));
    var var_2 = var_1.x;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, arg_2.a)))))));
    return _wgslsmith_div_u32(63286u, _wgslsmith_dot_vec4_u32(~abs(arg_2.b) >> (~select(vec4<u32>(u_input.c.x, 0u, 0u, u_input.c.x), vec4<u32>(arg_1.b.x, 36934u, 0u, arg_1.b.x), vec4<bool>(var_0, arg_1.c, arg_2.d.x, true)) % vec4<u32>(32u)), firstTrailingBit(arg_2.b)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: u32) -> bool {
    var var_0 = Struct_3(Struct_1(303f, max(vec4<u32>(func_3(77410u, Struct_1(689f, vec4<u32>(arg_1, arg_2, 16761u, arg_2), true, vec4<bool>(false, true, false, false)), Struct_1(-603f, vec4<u32>(13995u, 0u, arg_2, 4294967295u), true, vec4<bool>(true, true, true, true))), 1u, abs(1u), 1u), ~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 48353u)), true, !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true))), vec4<i32>(abs(_wgslsmith_div_i32(u_input.a.x, countOneBits(1364i))), -1i, ~(-2147483647i) << (_wgslsmith_dot_vec2_u32(~arg_0, select(vec2<u32>(arg_0.x, 38436u), vec2<u32>(arg_2, arg_0.x), vec2<bool>(true, false))) % 32u), ~_wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(arg_1, 20u)], global0[_wgslsmith_index_u32(abs(3917u), 20u)])), Struct_1(_wgslsmith_f_op_f32(ceil(947f)), ~vec4<u32>(arg_2, min(u_input.c.x, u_input.c.x), arg_1, 5604u), true, !vec4<bool>(select(false, true, true), false, true, true)));
    global0 = array<i32, 20>();
    var var_1 = var_0.c.d.yz;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, -1053f, _wgslsmith_f_op_f32(trunc(var_0.c.a)), var_0.c.a));
    let var_3 = select(var_0.c.d.yxy, vec3<bool>(select(abs(u_input.b.x) >= countOneBits(var_0.b.x), var_0.a.d.x, true), true, all(!select(vec2<bool>(var_1.x, false), var_0.c.d.wx, vec2<bool>(false, var_0.c.c)))), (_wgslsmith_f_op_f32(select(-133f, 266f, !var_1.x)) >= -2272f) | any(var_0.c.d.zz));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = _wgslsmith_div_i32(~(-(i32(-1i) * -u_input.a.x)), -2147483647i);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-351f - 1050f) + _wgslsmith_f_op_f32(f32(-1f) * -914f)))));
    let var_3 = vec3<bool>(false, true, func_2(u_input.c, _wgslsmith_sub_u32(func_1(false, vec2<f32>(var_2.a, 187f), Struct_1(var_2.a, vec4<u32>(1u, 14600u, u_input.c.x, u_input.c.x), true, vec4<bool>(false, true, true, false)), var_2), u_input.c.x), u_input.c.x) | true);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(exp2(var_2.a))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a * 108f), -533f)))), min(~(~vec4<u32>(4294967295u, u_input.c.x, 1u, 56877u)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(30646u, u_input.c.x, u_input.c.x, 0u)) % vec4<u32>(32u)), vec4<u32>(1u & _wgslsmith_clamp_u32(u_input.c.x, 5565u, u_input.c.x), countOneBits(func_1(var_3.x, vec2<f32>(var_2.a, -725f), Struct_1(var_2.a, vec4<u32>(u_input.c.x, u_input.c.x, 117038u, u_input.c.x), var_3.x, vec4<bool>(true, var_3.x, var_3.x, true)), Struct_2(var_2.a))), _wgslsmith_clamp_u32(~1u, reverseBits(1u), 4294967295u), u_input.c.x)), all(select(select(vec4<bool>(var_3.x, true, var_3.x, var_3.x), select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, true, false, false), true), var_3.x), select(select(vec4<bool>(true, var_3.x, true, true), vec4<bool>(var_3.x, false, false, true), vec4<bool>(var_3.x, false, true, var_3.x)), !vec4<bool>(var_3.x, var_3.x, false, var_3.x), all(vec4<bool>(false, var_3.x, var_3.x, var_3.x))), select(vec4<bool>(true, true, false, var_3.x), select(vec4<bool>(false, var_3.x, false, true), vec4<bool>(false, true, var_3.x, true), var_3.x), select(vec4<bool>(var_3.x, var_3.x, var_3.x, true), vec4<bool>(var_3.x, true, false, true), false)))), !vec4<bool>(all(var_3.xz), all(select(vec4<bool>(var_3.x, true, var_3.x, true), vec4<bool>(true, true, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), false, var_3.x));
    global0 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(countOneBits(var_4.b.x), ~_wgslsmith_mod_u32(~var_4.b.x, func_3(var_4.b.x, Struct_1(-1115f, var_4.b, var_4.c, var_4.d), Struct_1(var_2.a, var_4.b, var_4.c, var_4.d))), u_input.c.x), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_4.b.zwy, firstLeadingBit(~vec3<u32>(var_4.b.x, 67290u, 4294967295u))), 20u)], var_1, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(~0u, 4u)], vec3<f32>(var_4.a, var_2.a, var_4.a)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a, -889f, var_2.a) - global1[_wgslsmith_index_u32(50320u, 4u)])))))), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.c.x, 4u)] + vec3<f32>(1264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.a))), -327f)));
}

