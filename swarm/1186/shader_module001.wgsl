struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: vec2<u32>;

var<private> global3: array<f32, 1>;

var<private> global4: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_1(global1.a, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~max(u_input.a, global1.b), select(_wgslsmith_mult_vec3_u32(global1.b, u_input.a), firstLeadingBit(u_input.a), true && arg_2.x)), u_input.d));
    var_0 = Struct_1(var_0.a, _wgslsmith_add_vec3_u32(countOneBits(~(~var_0.b)), firstLeadingBit(~(vec3<u32>(43752u, 39778u, arg_0) | vec3<u32>(global1.b.x, 0u, global1.b.x)))));
    let var_1 = vec4<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 38266i), vec2<i32>(-12746i, -2147483647i)), min(36358i, -1i)) & 1i, -1i << (var_0.b.x % 32u), countOneBits(-1i));
    global3 = array<f32, 1>();
    let var_2 = abs(var_1.x);
    return ~var_0.b.x;
}

fn func_2() -> i32 {
    let var_0 = Struct_1(vec4<f32>(-520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1122f, _wgslsmith_f_op_f32(-248f + global1.a.x), true))), 171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.b.x, 1u)] * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(8155u, 1u)], global3[_wgslsmith_index_u32(global1.b.x, 1u)])) + -434f))), vec3<u32>(~func_3(12399u, global3[_wgslsmith_index_u32(~u_input.e, 1u)], vec2<bool>(true, true), vec3<bool>(true, true, true)), ~(~0u), ~(~u_input.e & (global1.b.x >> (0u % 32u)))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.a.x)), 227f, 710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(355f, -437f)) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.b.x, 1u)] + var_0.a.x))), vec3<u32>(global2.x, ~func_3(_wgslsmith_add_u32(global1.b.x, 51117u), -1203f, vec2<bool>(false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), ~(~(global2.x | 23603u))));
    let var_2 = -2147483647i;
    var var_3 = !(!select(vec2<bool>(true, true), vec2<bool>(false, var_2 <= var_2), vec2<bool>(true, true)));
    global4 = all(select(select(select(vec3<bool>(true, var_3.x, false), vec3<bool>(var_3.x, false, true), var_3.x == var_3.x), select(select(vec3<bool>(true, var_3.x, false), vec3<bool>(false, true, var_3.x), var_3.x), !vec3<bool>(var_3.x, false, true), 1588f == global1.a.x), !var_3.x), vec3<bool>(true != var_3.x, ~global2.x == ~17832u, var_3.x), select(vec3<bool>(true, false, select(false, true, var_3.x)), vec3<bool>(false, var_3.x, 1292f == global1.a.x), vec3<bool>(var_3.x, true, false))));
    return var_2;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: i32) -> bool {
    global0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(func_2(), -1i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, 28424i, arg_3, 1i), vec4<i32>(1i, 2147483647i, arg_3, 2147483647i)))), vec3<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(arg_3, arg_3)), ~(~(~arg_3)), ~2147483647i));
    var var_0 = Struct_1(global1.a, vec3<u32>(143411u, global2.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(28121u, arg_1, 1160u), global1.b)));
    var var_1 = abs((~min(global2.x, u_input.b) >> (28656u % 32u)) ^ ~18868u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.a))), vec3<u32>(4294967295u, arg_1, countOneBits(var_0.b.x)));
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_2.a, vec4<f32>(-502f, var_0.a.x, var_2.a.x, global1.a.x)), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-566f, -1273f, var_0.a.x, -772f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1338f, 804f, var_2.a.x, var_2.a.x) + var_0.a), select(vec4<bool>(arg_0, true, arg_2, arg_2), vec4<bool>(arg_0, true, arg_2, arg_2), arg_2)))), global1.a), min(vec3<u32>(~18106u, var_0.b.x, ~7369u ^ ~global2.x), ~vec3<u32>(u_input.e, abs(18913u), global2.x)));
    return all(select(select(vec2<bool>(true, true), select(vec2<bool>(arg_2, false), !vec2<bool>(arg_2, arg_2), any(vec4<bool>(arg_2, false, true, true))), !any(vec4<bool>(false, true, arg_0, arg_2))), select(!(!vec2<bool>(arg_2, arg_0)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_2), true), vec2<bool>(arg_0, arg_2)), arg_0), vec2<bool>(all(vec2<bool>(arg_0, true)), any(vec3<bool>(arg_2, false, true)) != arg_0)));
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = vec2<i32>(0i, min(select(max(i32(-1i) * -26353i, ~(-2147483647i)), 0i, true), 1i));
    let var_1 = ~u_input.a.zx;
    global0 = _wgslsmith_sub_i32(-23294i, -var_0.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1144f, -562f, -428f)) * global1.a.yzw))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global1.a.yzz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 1u)], global1.a.x, global3[_wgslsmith_index_u32(1u, 1u)]))))) * _wgslsmith_f_op_vec3_f32(round(global1.a.wzz))));
    var var_3 = _wgslsmith_f_op_f32(step(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1.a.x, _wgslsmith_f_op_f32(round(var_2.x)))), _wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(var_2.x + 1440f))))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(floor(global1.a)), ~global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 1>();
    let var_0 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(31336u, 1u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global2.x, 1u)], global1.a.x)), global3[_wgslsmith_index_u32(54044u, 1u)]))));
    global2 = vec2<u32>(_wgslsmith_div_u32(4294967295u, global2.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, u_input.d.x, 59380u, u_input.b), vec4<u32>(89141u, 32404u, 99923u, 42872u)) << (1u % 32u)) | u_input.d.yx;
    global0 = 0i;
    global2 = abs(vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_div_u32(global2.x, global1.b.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(20302u, global1.b.x, u_input.a.x, 3484u), select(vec4<u32>(global1.b.x, global1.b.x, global1.b.x, 1u), vec4<u32>(global2.x, global1.b.x, u_input.e, global2.x), vec4<bool>(true, false, true, false)))), ~(_wgslsmith_sub_u32(global2.x, global1.b.x) >> (1u % 32u))));
    var var_1 = func_4(!func_1(true, firstTrailingBit(_wgslsmith_dot_vec3_u32(global1.b, vec3<u32>(u_input.a.x, global1.b.x, global1.b.x))), false, -abs(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(var_1.b.x, 1u)], _wgslsmith_div_vec3_i32(-vec3<i32>(1i, firstTrailingBit(64155i), -26120i), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(-2147483647i, 0i, -949i), vec3<i32>(-2147483647i, 3552i, 1i), true), vec3<i32>(0i, 104050i, 30652i)), vec3<i32>(1i, 1i, 1i))), u_input.a, _wgslsmith_f_op_f32(-422f + _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(max(-548f, global1.a.x))))), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b.x, u_input.b, var_1.b.x), vec3<u32>(0u, global1.b.x, 4294967295u) ^ u_input.a, ~var_1.b)));
}

