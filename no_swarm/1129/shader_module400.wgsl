struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(498f, -857f, -134f, 287f, -288f, 222f, 194f, -1188f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> vec2<f32> {
    let var_0 = Struct_5(vec2<bool>(true, true), Struct_3(false), !(((u_input.d >= 0u) && !arg_1.x) || false), global0[_wgslsmith_index_u32(~min(u_input.d ^ 4294967295u, _wgslsmith_mod_u32(firstTrailingBit(4294967295u), 29316u)), 8u)]);
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    var var_1 = Struct_2(1843f, Struct_1(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.d, u_input.d, 75973u, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 1u), vec4<bool>(false, false, false, true)), vec4<u32>(u_input.d, u_input.d, 59396u, u_input.d)) << (vec4<u32>(44027u, u_input.d, 0u, u_input.d >> (u_input.d % 32u)) % vec4<u32>(32u)), !(true == all(arg_1.wy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(384f, var_0.d)) - 175f), u_input.d, var_0.a.x), Struct_1(~vec4<u32>(select(u_input.d, 36777u, var_0.b.a), ~4294967295u, ~u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 43141u), vec2<u32>(u_input.d, 4294967295u))), !any(arg_1) | arg_1.x, -688f, _wgslsmith_clamp_u32(u_input.d, ~u_input.d, _wgslsmith_add_u32(u_input.d, select(32567u, 12244u, true))), var_0.c), Struct_1(~(reverseBits(vec4<u32>(31590u, 1u, 4294967295u, 4294967295u)) & ~vec4<u32>(4294967295u, u_input.d, 120893u, 0u)), arg_1.x, _wgslsmith_f_op_f32(-var_0.d), abs(u_input.d), !arg_1.x));
    global0 = array<f32, 8>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, global0[_wgslsmith_index_u32(0u, 8u)]) * vec2<f32>(217f, global0[_wgslsmith_index_u32(1u, 8u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, global0[_wgslsmith_index_u32(u_input.d, 8u)]) * vec2<f32>(var_1.b.c, var_1.d.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-669f, -1531f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-988f, 412f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-489f, 238f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.d, -643f), vec2<f32>(-451f, global0[_wgslsmith_index_u32(107702u, 8u)]))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-503f, 2204f) + vec2<f32>(-372f, var_0.d))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * -1771f)), var_0.d), vec2<bool>(true, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.c.d, 8u)], _wgslsmith_f_op_f32(f32(-1f) * -221f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.d, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], arg_0.a)), _wgslsmith_f_op_f32(round(-2556f))))));
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(Struct_3(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)) & true), vec4<bool>(false, false, true, !all(vec3<bool>(true, true, true)))));
    let var_1 = false;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(any(vec4<bool>(var_1, var_1, var_1, true))), select(vec4<bool>(var_1, false, true, true), vec4<bool>(true, var_1, true, var_1), any(vec2<bool>(var_1, var_1)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1769f) * vec2<f32>(global0[_wgslsmith_index_u32(59036u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2952f, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 8u)], 581f)), 4294967295u <= u_input.d))))));
    let var_2 = firstTrailingBit(~abs(u_input.d));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -269f), -177f, _wgslsmith_f_op_f32(-884f - var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1098f, -627f))), global0[_wgslsmith_index_u32(~reverseBits(0u), 8u)], global0[_wgslsmith_index_u32(11015u, 8u)]))) - vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -440f)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(var_2, var_2), 8u)]))));
}

fn func_1() -> Struct_5 {
    global0 = array<f32, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-993f, 786f, 1916f) - vec3<f32>(1000f, 283f, global0[_wgslsmith_index_u32(u_input.d, 8u)]))))) * vec3<f32>(-177f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 8u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 8u)]))), global0[_wgslsmith_index_u32(firstTrailingBit(~21667u), 8u)]));
    global0 = array<f32, 8>();
    var var_1 = vec4<bool>(any(vec3<bool>(any(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true)))), any(select(vec2<bool>(all(vec2<bool>(false, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), 1316f >= global0[_wgslsmith_index_u32(u_input.d, 8u)]), true)), all(vec2<bool>(true != any(vec3<bool>(true, false, false)), true)), 336f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2708f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, global0[_wgslsmith_index_u32(28568u, 8u)]))));
    var_1 = select(!(!(!(!vec4<bool>(var_1.x, true, var_1.x, var_1.x)))), select(vec4<bool>(true, all(!var_1.xwz), select(all(vec2<bool>(var_1.x, var_1.x)), !var_1.x, var_1.x), u_input.d >= (1u >> (0u % 32u))), !(!(!vec4<bool>(false, var_1.x, false, var_1.x))), !var_1.x), true);
    return Struct_5(vec2<bool>(var_1.x & !var_1.x, !var_1.x), Struct_3(any(!(!vec4<bool>(var_1.x, true, var_1.x, false)))), all(vec4<bool>(!var_1.x, true, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.d, 8u)], var_0.x)) * var_0.x) + -108f) + var_0.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: f32, arg_3: i32) -> StorageBuffer {
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    let var_0 = _wgslsmith_add_u32(u_input.d, _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(_wgslsmith_div_u32(22682u ^ u_input.d, ~1u), ~_wgslsmith_add_u32(u_input.d, u_input.d))));
    var var_1 = u_input.d ^ 0u;
    global0 = array<f32, 8>();
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), 2413f, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    let var_0 = -1i;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-873f, global0[_wgslsmith_index_u32(43002u, 8u)], -672f, -935f))) - vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 8u)] - -575f), _wgslsmith_f_op_f32(-251f - -1067f), _wgslsmith_f_op_f32(max(-1078f, global0[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 8u)] - global0[_wgslsmith_index_u32(4294967295u, 8u)])))), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(889f + global0[_wgslsmith_index_u32(u_input.d, 8u)])))), _wgslsmith_div_i32(~(_wgslsmith_div_i32(var_0, var_0) | u_input.c), ~(-(~u_input.b.x))));
}

