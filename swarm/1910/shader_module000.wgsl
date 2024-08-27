struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-1027f, 582f, -688f, 1117f, 212f, -1110f, -307f, 970f, -2189f, -1000f, 733f, -1146f, -2484f, 1262f, -653f, -2852f, 1000f, 1529f, 348f, 304f, -158f, 1325f, 696f, -345f, -1000f, 259f, -424f, 1205f, -711f, -235f);

var<private> global1: array<f32, 18>;

var<private> global2: vec2<u32> = vec2<u32>(23183u, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<u32> {
    global2 = abs(vec2<u32>(u_input.a.x, 1u ^ _wgslsmith_mult_u32(4294967295u, u_input.c)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(275f, _wgslsmith_f_op_f32(697f - global0[_wgslsmith_index_u32(76082u, 30u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(6633u, 18u)] + global0[_wgslsmith_index_u32(u_input.a.x, 30u)])) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(432f, -1359f, global1[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<f32>(694f, -1000f, global0[_wgslsmith_index_u32(global2.x, 30u)]))), vec3<f32>(-1088f, 1000f, global1[_wgslsmith_index_u32(global2.x, 18u)])))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(746f, global0[_wgslsmith_index_u32(global2.x, 30u)], -906f), vec3<f32>(global1[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(8116u, 30u)], 671f), vec3<bool>(true, false, true))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 1569f, global0[_wgslsmith_index_u32(4294967295u, 30u)]) + vec3<f32>(-572f, global1[_wgslsmith_index_u32(u_input.c, 18u)], global1[_wgslsmith_index_u32(66654u, 18u)])))))));
    var var_1 = select(~global2.x, ~0u, var_0.x > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2169f, global1[_wgslsmith_index_u32(global2.x, 18u)])) + _wgslsmith_f_op_f32(sign(315f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 30u)] + 1738f) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(5416u, 30u)], -451f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1579f))), global1[_wgslsmith_index_u32(reverseBits(global2.x), 18u)], 839f)));
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(-15364i, min(~(-58342i), _wgslsmith_dot_vec4_i32(vec4<i32>(-29075i, 2445i, -1i, -93556i), vec4<i32>(5350i, -8163i, 1i, 24092i)))), 1i), i32(-1i) * -42599i);
    return _wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 0u), abs(7128u), 1u, _wgslsmith_div_u32(4294967295u, u_input.a.x)), _wgslsmith_div_vec4_u32(min(u_input.a, vec4<u32>(u_input.c, u_input.b.x, 95722u, global2.x)), ~u_input.a))), abs(u_input.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> f32 {
    global1 = array<f32, 18>();
    global2 = arg_3.a.zx;
    var var_0 = Struct_2(arg_3);
    var var_1 = func_3();
    global1 = array<f32, 18>();
    return global0[_wgslsmith_index_u32(u_input.b.x, 30u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> Struct_1 {
    global2 = _wgslsmith_mod_vec2_u32(u_input.b.xy << (u_input.a.yw % vec2<u32>(32u)), ~u_input.a.wy);
    var var_0 = false;
    global1 = array<f32, 18>();
    let var_1 = all(select(vec3<bool>(true, true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), select(vec3<bool>(true, arg_3.x >= arg_3.x, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, true))), -_wgslsmith_mult_i32(arg_3.x, -21389i) <= 0i));
    let var_2 = any(select(!(!select(vec2<bool>(true, var_1), vec2<bool>(true, true), var_1)), vec2<bool>(true, true), select(select(!vec2<bool>(var_1, true), vec2<bool>(true, false), !vec2<bool>(false, var_1)), !select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), !vec2<bool>(true, var_1))));
    return Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(37264u, countOneBits(global2.x)), u_input.a.x, 18588u), reverseBits(vec3<u32>(34666u, u_input.a.x, 12564u))), any(!vec3<bool>(var_2 && var_2, !var_1, !var_2)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    global2 = _wgslsmith_div_vec2_u32(~(~u_input.a.zy), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(136980u, 0u), vec2<u32>(~u_input.a.x, 4294967295u)), ~vec2<u32>(0u, 4294967295u) << (vec2<u32>(countOneBits(9687u), global2.x) % vec2<u32>(32u))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 30u)])) * -1000f);
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-468f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.c, 30u)], -1500f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global2.x, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 1187f)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, ~45665u), 18u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(arg_2.b, arg_2.b), global1[_wgslsmith_index_u32(0u, 18u)], 1456f, Struct_1(vec3<u32>(0u, u_input.a.x, 1u), true))))), vec4<f32>(-1012f, global1[_wgslsmith_index_u32(global2.x, 18u)], _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(13558u, 18u)])), 2487f), ~vec4<i32>(select(-2147483647i, 1i, false), ~(-11549i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(-5522i, 2143i, 0i, -2147483647i)), countOneBits(-12040i))));
    let var_2 = global2.x;
    global1 = array<f32, 18>();
    return abs(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-14093i, -2147483647i), vec2<i32>(-6818i, -1i)), ~(-1i)), _wgslsmith_mod_i32(~(-34738i), -26074i)) >> (vec2<u32>(33588u, reverseBits(0u << (global2.x % 32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = vec4<bool>(!var_0.x, false, false, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(2147483647i, 1i) << (u_input.b.zx % vec2<u32>(32u))) | _wgslsmith_add_vec2_i32(reverseBits(func_1(global1[_wgslsmith_index_u32(8323u, 18u)], false, Struct_1(u_input.a.zyy, false), false)), vec2<i32>(~(-33123i), select(-1i, 5255i, false))), u_input.b.x, ~vec2<i32>(abs(_wgslsmith_add_i32(1i, -2147483647i)), select(0i, 1i, true)));
}

