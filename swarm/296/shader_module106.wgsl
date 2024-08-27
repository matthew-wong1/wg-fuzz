struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(select(vec4<bool>(!any(vec4<bool>(true, false, true, false)), !select(true, true, true), false, true), vec4<bool>(true, true, false, any(vec4<bool>(true, false, false, false)) && true), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), any(vec3<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))), all(vec4<bool>(false, true, true, false)) && (0i >= global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), true)), _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.d, 4744i, u_input.d), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], -19793i, 82710i, -2147483647i), vec4<bool>(true, false, true, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, global0[_wgslsmith_index_u32(87948u, 5u)], u_input.d, -1682i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 5u)], u_input.d, global0[_wgslsmith_index_u32(4294967295u, 5u)], -1i), vec4<i32>(1i, -2147483647i, 16590i, global0[_wgslsmith_index_u32(1u, 5u)]))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-global0[_wgslsmith_index_u32(u_input.c.x, 5u)], u_input.d, u_input.d, global0[_wgslsmith_index_u32(u_input.b.x, 5u)] & global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), abs(firstTrailingBit(vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 56842i, -2147483647i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(9211u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(15369u, 5u)], -2147483647i), vec4<i32>(-2147483647i, u_input.d, 0i, 35444i)), -2147483647i, 8008i, ~17936i))), 542f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1836f, var_0.d), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_0.d - var_0.d), var_0.d)))) - vec4<f32>(1746f, var_0.d, 835f, var_0.d));
    global0 = array<i32, 5>();
    let var_2 = var_0.c.x;
    global0 = array<i32, 5>();
    return _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-1f));
}

fn func_2(arg_0: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32((vec4<i32>(global0[_wgslsmith_index_u32(43540u, 5u)], 16610i, global0[_wgslsmith_index_u32(5406u, 5u)], global0[_wgslsmith_index_u32(47023u, 5u)]) >> (u_input.c % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.a.x, u_input.c.x), u_input.c) % vec4<u32>(32u)), ~(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], u_input.d, 12940i) & vec4<i32>(u_input.d, -1i, -43196i, 2147483647i))), vec4<i32>(-global0[_wgslsmith_index_u32(min(u_input.c.x, 1u) << (_wgslsmith_add_u32(14619u, u_input.c.x) % 32u), 5u)], 1i, abs(0i), _wgslsmith_div_i32(select(global0[_wgslsmith_index_u32(20703u, 5u)] ^ u_input.d, 2147483647i, all(vec2<bool>(false, false))), global0[_wgslsmith_index_u32(18166u, 5u)])));
    var var_1 = abs(~u_input.c.x) & ~_wgslsmith_mod_u32(reverseBits(~60678u), 4294967295u);
    let var_2 = Struct_2(~(_wgslsmith_add_u32(4294967295u, select(u_input.a.x, u_input.b.x, false)) ^ u_input.c.x), var_0.wzz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-562f, -1000f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-556f, arg_0)))))), vec3<f32>(1278f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1112f - arg_0) + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(arg_0 - arg_0))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(388f + _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(484f + -627f), var_0.x != -1i)));
    let var_4 = var_2;
    return max(var_4.b.xx, vec2<i32>(-global0[_wgslsmith_index_u32(~41112u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)]));
}

fn func_1() -> f32 {
    let var_0 = max(min(~vec2<i32>(u_input.d, u_input.d ^ u_input.d), countOneBits(vec2<i32>(29102i, ~0i))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(861f, -211f, true)), 300f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f)))));
    var var_1 = -594f;
    let var_2 = Struct_1(vec4<bool>(false, false, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), all(vec4<bool>(true, false, true, true))), any(vec3<bool>(false, true, !all(vec4<bool>(false, true, false, false)))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(abs(var_0.x), -38722i), -1i, var_0.x, 2147483647i), firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(3541i, -7667i, 0i, u_input.d), reverseBits(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 5u)], -1i, var_0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1231f)))), -200f)));
    let var_3 = ~(select(-31100i, -45370i, false) >> (min(1u, ~(~4294967295u)) % 32u));
    var var_4 = var_2;
    return _wgslsmith_f_op_f32(round(2212f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-149f)))), -493f));
    global0 = array<i32, 5>();
    var var_1 = true && !(!all(vec4<bool>(false, false, false, true)));
    var_1 = any(!vec2<bool>(true, (19269i ^ u_input.d) > -2147483647i));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(~_wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)])), ~global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-6026i, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), min(vec2<i32>(-41931i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec2<i32>(u_input.d, 0i)))) | vec2<i32>(1i, -min(8016i, 0i)));
    let var_3 = 0i;
    var_1 = _wgslsmith_f_op_f32(min(1452f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) - -1000f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))) + var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-18439i);
}

