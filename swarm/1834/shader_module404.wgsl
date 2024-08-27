struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(73495u), Struct_1(0u), Struct_1(1120u), Struct_1(21591u), Struct_1(4294967295u), Struct_1(7042u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(25907u), Struct_1(73735u), Struct_1(4294967295u), Struct_1(23185u), Struct_1(4235u), Struct_1(11356u), Struct_1(36395u), Struct_1(71518u), Struct_1(4294967295u));

var<private> global1: array<vec3<f32>, 23>;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = ((false & any(vec2<bool>(false, false))) & true) || !(!(!any(vec3<bool>(true, false, true))));
    var_0 = true;
    global2 = array<Struct_1, 16>();
    var var_1 = Struct_1(18984u);
    let var_2 = select(vec4<bool>(true & all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)), true, false, true), !vec4<bool>(!(-2147483647i >= u_input.b.x), true, true, true), !(_wgslsmith_f_op_f32(sign(-1724f)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(2703f))))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1196f, 737f, 1674f, -431f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1278f, 1128f, -760f, -2165f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-345f, 340f, -608f, -641f) + vec4<f32>(642f, 689f, 820f, -268f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2202f, -1000f, _wgslsmith_f_op_f32(869f - 1062f), _wgslsmith_f_op_f32(1409f - 504f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-576f, 1000f, -668f, -2294f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-152f, -993f, -934f, 210f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-142f, 755f, 1275f, -451f) - vec4<f32>(-257f, -419f, 1242f, -1509f))), true)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-678f, 245f, 2360f, 974f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(376f, 1052f, 509f, -836f)))), vec4<f32>(-1886f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -535f), -279f), ~u_input.b.x <= _wgslsmith_mod_i32(-2147483647i, u_input.c.x))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 16u)];
    global2 = array<Struct_1, 16>();
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2030f, -1871f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(392f, arg_1.x, arg_1.x, -473f) - vec4<f32>(arg_1.x, -553f, 1018f, -713f)))) - vec4<f32>(_wgslsmith_f_op_f32(min(-267f, -1550f)), _wgslsmith_f_op_f32(-arg_1.x), -114f, _wgslsmith_f_op_f32(abs(arg_1.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-779f, -497f, _wgslsmith_div_f32(724f, 994f), _wgslsmith_f_op_f32(exp2(arg_1.x))) * _wgslsmith_f_op_vec4_f32(func_3(arg_2)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-691f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + arg_1.x))), 246f)));
    global1 = array<vec3<f32>, 23>();
    return select(vec3<bool>(all(!vec4<bool>(true, var_1, true, var_1)), false, !var_1), select(!vec3<bool>(true, var_1, !var_1), select(!(!vec3<bool>(false, false, var_1)), !(!vec3<bool>(var_1, var_1, var_1)), vec3<bool>(var_1, var_1, !var_1)), !select(select(vec3<bool>(false, var_1, true), vec3<bool>(true, var_1, false), vec3<bool>(false, false, true)), !vec3<bool>(true, var_1, false), true)), vec3<bool>(var_1, any(select(vec4<bool>(var_1, false, true, true), vec4<bool>(var_1, true, true, var_1), false)) & true, var_0.a != (1u & var_0.a)));
}

fn func_1() -> vec2<bool> {
    var var_0 = !(!vec3<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), true));
    let var_1 = u_input.a;
    var_0 = select(vec3<bool>(any(!select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), var_0.x, any(vec2<bool>(true, all(vec3<bool>(var_0.x, var_0.x, true))))), !func_2(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x) ^ vec4<i32>(u_input.b.x, u_input.b.x, -28589i, 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1831f, 648f, 1000f), global1[_wgslsmith_index_u32(u_input.a, 23u)])), Struct_1(11340u)), vec3<bool>(var_0.x, all(!vec3<bool>(var_0.x, false, false)), var_0.x));
    let var_2 = _wgslsmith_clamp_i32(-firstTrailingBit(u_input.b.x), _wgslsmith_add_i32((_wgslsmith_div_i32(-28472i, u_input.c.x) >> (var_1 % 32u)) | _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, u_input.b.x), firstTrailingBit(u_input.c.x)), _wgslsmith_dot_vec3_i32(u_input.c, abs(min(u_input.b, u_input.b)))), -10896i);
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1896f)), 221f));
    return vec2<bool>(var_0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1357f);
    var var_1 = select(func_1(), select(vec2<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))), vec2<bool>(!any(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true))), !vec2<bool>(true, any(vec2<bool>(false, false)))), !(!vec2<bool>(true, u_input.c.x == -1i)));
    var var_2 = global2[_wgslsmith_index_u32(0u, 16u)];
    var var_3 = 1560i;
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, select(~_wgslsmith_mod_u32(1u, 19727u), 4294967295u, true)) >> (reverseBits(~var_2.a) % 32u), 16u)];
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.c.x, u_input.c.x), ~23066i), u_input.b) ^ vec3<i32>(-_wgslsmith_sub_i32(-41041i, 17030i), u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b.x, u_input.c.x), 1i)), countOneBits(~(_wgslsmith_div_vec3_i32(u_input.b, u_input.c) << ((vec3<u32>(u_input.a, 96846u, 101791u) ^ vec3<u32>(57996u, u_input.a, 1u)) % vec3<u32>(32u)))), 33343i, _wgslsmith_div_u32(1u, var_4.a), -818f);
}

