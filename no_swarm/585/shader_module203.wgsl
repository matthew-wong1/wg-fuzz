struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: array<Struct_3, 18>;

var<private> global2: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1596f)), _wgslsmith_f_op_f32(ceil(294f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, 1000f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2031f, 289f))), vec2<f32>(1f, 1f)))), min(vec2<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 28464i, u_input.b)), -u_input.b), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), 1i)), select(-(vec2<i32>(u_input.b, 2147483647i) & vec2<i32>(-10577i, u_input.b)), vec2<i32>(-2147483647i, abs(u_input.b)), true)));
    var var_2 = Struct_4(_wgslsmith_mod_u32(_wgslsmith_sub_u32(max(~1u, countOneBits(u_input.a.x)), ~_wgslsmith_div_u32(12490u, var_0)), _wgslsmith_dot_vec4_u32(reverseBits(select(vec4<u32>(8360u, u_input.a.x, 76943u, 512u), vec4<u32>(0u, 47587u, 19697u, var_0), vec4<bool>(false, true, true, false))), min(vec4<u32>(4294967295u, var_0, 1u, u_input.a.x) | vec4<u32>(1u, var_0, var_0, u_input.a.x), ~vec4<u32>(0u, u_input.a.x, 1u, 1u)))));
    let var_3 = Struct_4(var_2.a);
    global1 = array<Struct_3, 18>();
    return (_wgslsmith_dot_vec3_i32(vec3<i32>(18154i, min(0i, -2147483647i), abs(u_input.b)), -vec3<i32>(u_input.b, -1i, var_1.b.x) >> (vec3<u32>(4294967295u, 4294967295u, 2820u) % vec3<u32>(32u))) | -1i) >> (1u % 32u);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_3 {
    global2 = _wgslsmith_sub_i32(~(~(-func_3())), ~u_input.b);
    let var_0 = select(select(vec2<bool>(true && (1016f == arg_2.x), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)))), vec2<bool>(_wgslsmith_f_op_f32(sign(-499f)) >= -1179f, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))), vec2<bool>(false, !any(vec3<bool>(false, true, true)))), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(arg_2.x >= arg_2.x, any(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))));
    global1 = array<Struct_3, 18>();
    var var_1 = any(vec3<bool>(true, !(1u > ~u_input.a.x), true));
    global1 = array<Struct_3, 18>();
    return global1[_wgslsmith_index_u32(1u, 18u)];
}

fn func_1() -> bool {
    var var_0 = func_2(u_input.a.x, u_input.a.zy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1595f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(850f)), _wgslsmith_f_op_f32(f32(-1f) * -624f), true)), 1059f, _wgslsmith_div_f32(-480f, -1480f))));
    var var_1 = vec3<u32>(0u, ~abs(~countOneBits(30181u)), 94812u >> (_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x) >> (vec3<u32>(1u, 90432u, u_input.a.x) % vec3<u32>(32u)), u_input.a ^ vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)) % 32u));
    let var_2 = func_2(7182u, ~(~var_1.zy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 402f, -739f, 756f), vec4<f32>(219f, 1000f, -352f, -878f))))))));
    let var_3 = var_0.a;
    let var_4 = 0i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-751f, _wgslsmith_f_op_f32(-1088f - _wgslsmith_f_op_f32(sign(-423f))))), -2090f) != _wgslsmith_f_op_f32(ceil(-202f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!vec2<bool>(func_1(), any(vec3<bool>(true, true, true))));
    var var_1 = true;
    global2 = _wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(~u_input.b, u_input.b));
    global2 = ~min(-_wgslsmith_add_i32(~u_input.b, i32(-1i) * -5458i), ~_wgslsmith_div_i32(~u_input.b, i32(-1i) * -1i));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(364f, 625f, -1000f) + vec3<f32>(-621f, -259f, 158f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-943f, -978f, 1000f) * vec3<f32>(-1436f, -1388f, 469f)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1098f, -1437f, -294f) * vec3<f32>(-653f, 338f, 626f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(405f, -565f, -679f)), vec3<f32>(-119f, -912f, 308f)), true)) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(374f, -2332f)) - _wgslsmith_f_op_f32(abs(208f))), 115f, 1f), vec3<f32>(_wgslsmith_f_op_f32(sign(-1246f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-225f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(106f)), _wgslsmith_f_op_f32(trunc(1080f))))));
    var var_3 = global0[_wgslsmith_index_u32(0u, 11u)];
    let var_4 = !all(!select(select(vec4<bool>(true, var_3.c.x, var_3.c.x, var_3.c.x), vec4<bool>(var_0, true, false, var_0), false), !vec4<bool>(var_0, false, var_3.c.x, true), var_0));
    var var_5 = firstLeadingBit(abs(-vec4<i32>(-u_input.b, -32855i, ~u_input.b, _wgslsmith_sub_i32(-7452i, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(121f);
}

