struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(-23833i, i32(-2147483648)), vec2<i32>(-39677i, i32(-2147483648)), vec2<i32>(-26015i, 27203i), vec2<i32>(14645i, 2147483647i), vec2<i32>(-5451i, -1i), vec2<i32>(2147483647i, 41172i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-168i, 0i), vec2<i32>(28657i, 2147483647i), vec2<i32>(-44059i, 47i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 6702i), vec2<i32>(-1i, 54255i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 34380i), vec2<i32>(2147483647i, -34702i), vec2<i32>(-1i, 48602i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(75883i, i32(-2147483648)));

var<private> global2: array<i32, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = 1995f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1871f + arg_2.x) - _wgslsmith_div_f32(arg_3.a.x, -1472f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-822f + 691f), _wgslsmith_div_f32(-941f, global0.x)))) * global0.x);
    var var_2 = global1[_wgslsmith_index_u32(~44707u, 21u)];
    return u_input.b;
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1275f, 493f)))) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - global0.x))), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(-478f))))));
    global2 = array<i32, 5>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) >> (select(10120u, u_input.b, false) % 32u), 1u, 77133u)), ~vec3<u32>(1u, ~u_input.b, _wgslsmith_sub_u32(~u_input.b, func_3(global2[_wgslsmith_index_u32(70033u, 5u)], -844f, var_0.a, Struct_1(vec4<f32>(-410f, var_0.a.x, 2190f, global0.x)))))), 5u)];
    var_1 = ~global2[_wgslsmith_index_u32(~u_input.b, 5u)];
    global1 = array<vec2<i32>, 21>();
    return -global2[_wgslsmith_index_u32(~1u, 5u)] != (-(~global2[_wgslsmith_index_u32(u_input.a.x, 5u)] | -11731i) >> (u_input.b % 32u));
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<i32>, 21>();
    var var_0 = -549f;
    var_0 = -843f;
    var var_1 = !(!any(vec3<bool>(func_2(), true, true)));
    let var_2 = !vec3<bool>(true, false, !func_2() == (any(vec2<bool>(true, false)) && (global0.x >= -209f)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1163f + global0.x), _wgslsmith_f_op_f32(ceil(-2774f)), global0.x, -1850f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, 757f, global0.x, global0.x)))))));
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32((vec2<u32>(4294967295u, u_input.a.x) | u_input.a.zx) >> (abs(u_input.a.zx) % vec2<u32>(32u)), u_input.a.wx), u_input.a.zy) | vec2<u32>(0u, ~max(~4294967295u, ~u_input.a.x));
    var var_1 = arg_0;
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) * _wgslsmith_f_op_f32(exp2(arg_0.a.x)))) * -490f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(646f)));
    var_1 = Struct_1(vec4<f32>(global0.x, 459f, _wgslsmith_f_op_f32(select(473f, _wgslsmith_f_op_f32(trunc(239f)), true)), var_1.a.x));
    return _wgslsmith_f_op_vec4_f32(var_2.a - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_1().a.x, var_1.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.x)))), 1376f), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(global0.x + 582f))), _wgslsmith_f_op_f32(f32(-1f) * -211f), 1090f, -819f), select(vec4<bool>(7831i != global2[_wgslsmith_index_u32(124426u, 5u)], any(vec2<bool>(var_3, var_3)), true, true), !vec4<bool>(true, true, var_3, var_3), true))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global2 = array<i32, 5>();
    var var_0 = false;
    var var_1 = arg_1.a.x;
    let var_2 = 0u;
    global2 = array<i32, 5>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.zy);
    global1 = array<vec2<i32>, 21>();
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global0.x, -939f) - vec3<f32>(var_0.x, -837f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, -2136f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2177f, global0.x, -636f), vec3<f32>(1319f, var_0.x, var_0.x)), vec3<f32>(var_0.x, 347f, var_0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(223f, global0.x, -907f)))))));
    let var_1 = vec2<u32>(56638u, ~75218u);
    let var_2 = max(~(-(~vec3<i32>(-4538i, global2[_wgslsmith_index_u32(var_1.x, 5u)], global2[_wgslsmith_index_u32(339u, 5u)]))), _wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, ~0u), 5u)], _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(var_1.x, 5u)]), 0i), -vec3<i32>(-1i | global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 1i, -1i)));
    var var_3 = func_5(~_wgslsmith_mult_vec3_u32(~u_input.a.xyw, min(u_input.a.xxy | u_input.a.xww, ~vec3<u32>(u_input.b, 4294967295u, u_input.b))), Struct_1(_wgslsmith_f_op_vec4_f32(func_4(func_1()))), 0u);
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a.x - 1000f), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_vec3_u32(max(u_input.a.wzy, u_input.a.wzw), vec3<u32>(var_1.x, firstTrailingBit(u_input.b), _wgslsmith_add_u32(u_input.a.x, u_input.b)), vec3<u32>(u_input.b, u_input.a.x, 49428u)), max(u_input.a.yxw, vec3<u32>(0u, 35125u, u_input.a.x))), _wgslsmith_div_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a.zyy, vec3<u32>(24353u, var_1.x, var_1.x)), 6847u), 20869u), -1i, vec2<i32>(-52936i, select(var_2.x, ~1i, true)));
}

