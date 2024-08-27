struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: array<Struct_2, 9>;

var<private> global2: array<f32, 17> = array<f32, 17>(-684f, 461f, 1083f, 524f, 111f, 1631f, -1041f, 813f, -1113f, -404f, 1392f, -2109f, -124f, 2412f, 289f, 140f, -465f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1, global2[_wgslsmith_index_u32(0u, 17u)], arg_2.x)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(u_input.c.x), 17u)])))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-459f, 552f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_1 * -1132f), _wgslsmith_f_op_f32(-arg_1)), vec2<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(32999u, 17u)], global2[_wgslsmith_index_u32(u_input.c.x, 17u)])), _wgslsmith_f_op_f32(sign(1011f))), select(arg_2.zz, !arg_2.wy, arg_2.x))), select(!(!arg_2.xz), !vec2<bool>(true, arg_2.x), ~4294967295u != countOneBits(u_input.a.x)))));
    let var_1 = vec4<i32>(i32(-1i) * -20153i, 28041i, -1i, firstLeadingBit(countOneBits(_wgslsmith_add_i32(1i, select(-35886i, arg_0, false)))));
    var var_2 = !(!(!arg_2));
    var var_3 = vec3<bool>(!var_2.x, !(!(!any(arg_2.zxw))), all(select(vec4<bool>(true, arg_1 != arg_1, !arg_2.x, var_2.x), !arg_2, all(!arg_2.wx))));
    let var_4 = 60268i;
    return !all(arg_2.xx);
}

fn func_2() -> f32 {
    global2 = array<f32, 17>();
    var var_0 = u_input.c.x;
    global1 = array<Struct_2, 9>();
    var var_1 = u_input.a.zy;
    let var_2 = Struct_1(true == any(vec4<bool>(true, true, all(vec2<bool>(false, false)), u_input.d > u_input.d)), min(~vec3<u32>(~u_input.a.x, abs(var_1.x), 15154u), u_input.b), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -949f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~43810u, ~u_input.a.x), 17u)]), -1000f, -804f), select(select(vec4<bool>(u_input.a.x <= u_input.c.x, true, true, true), vec4<bool>(true, any(vec4<bool>(true, false, true, true)), true, true), func_3(-3570i, global2[_wgslsmith_index_u32(u_input.c.x, 17u)], vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false))), !vec4<bool>(49740u != u_input.c.x, true, true, select(false, false, true))));
    return _wgslsmith_f_op_f32(step(-1000f, -1743f));
}

fn func_1(arg_0: u32, arg_1: bool) -> u32 {
    global1 = array<Struct_2, 9>();
    let var_0 = ~(~4294967295u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_2()), Struct_1(!any(!vec4<bool>(arg_1, true, false, false)), u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(arg_0, 17u)], 2196f, global2[_wgslsmith_index_u32(74448u, 17u)], 369f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(9430u, 17u)], 1709f, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(15229u, 17u)])), vec4<f32>(1799f, global2[_wgslsmith_index_u32(u_input.c.x, 17u)], global2[_wgslsmith_index_u32(1u, 17u)], -1384f), !vec4<bool>(arg_1, arg_1, arg_1, arg_1)))), vec4<bool>(arg_1 | all(vec4<bool>(false, arg_1, false, arg_1)), any(select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_1), vec2<bool>(true, false))), any(!vec3<bool>(arg_1, false, false)), ~u_input.d > abs(u_input.d))), vec3<u32>(62084u, _wgslsmith_sub_u32(4294967295u, var_0), 28373u));
    var var_2 = true;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.c.x ^ ~1u, var_0, ~99956u), 9u)];
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, ~vec3<u32>(u_input.a.x, func_1(abs(0u), false), _wgslsmith_dot_vec4_u32(vec4<u32>(19002u, u_input.b.x, 0u, 57681u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u) >> (vec4<u32>(4294967295u, u_input.c.x, 9539u, u_input.c.x) % vec4<u32>(32u)))), vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(27766u, 17u)])), _wgslsmith_f_op_f32(trunc(-396f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1997f)))), -877f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -522f) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 17u)] - 297f))))), vec4<bool>(!((u_input.d == -23057i) || true), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true))), all(vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true)), 0u != (_wgslsmith_sub_u32(0u, u_input.c.x) | u_input.a.x)));
    global2 = array<f32, 17>();
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, ~_wgslsmith_mult_u32(firstLeadingBit(var_0.b.x), ~u_input.b.x)), 17u)];
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.c.zzx, vec3<f32>(var_0.c.x, 256f, var_0.c.x))) * _wgslsmith_f_op_vec3_f32(-var_0.c.ywz)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-578f - -125f), var_2.a.x) - var_2.a.x) - _wgslsmith_f_op_f32(sign(var_0.c.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 17u)]))), -1181f));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), var_2.a.x, false)));
    let var_5 = ~(vec4<i32>(-1i) * -min(~vec4<i32>(-12855i, u_input.d, 0i, 6330i), vec4<i32>(1i, u_input.d, -1i, u_input.d) & vec4<i32>(u_input.d, u_input.d, 51487i, u_input.d)));
    let var_6 = ~select(vec4<u32>(~var_0.b.x, ~u_input.b.x | var_0.b.x, ~(~33174u), 0u), vec4<u32>(_wgslsmith_div_u32(1u, 1u) ^ ~var_0.b.x, _wgslsmith_mod_u32(~5025u, countOneBits(58042u)), ~(~u_input.b.x), 4294967295u), true);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_0.b.x);
}

