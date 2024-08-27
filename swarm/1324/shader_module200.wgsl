struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-687f);

var<private> global1: array<bool, 16>;

var<private> global2: array<Struct_4, 25>;

var<private> global3: Struct_5;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> f32 {
    global2 = array<Struct_4, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2228f));
    var var_1 = abs(global3.b.a.x);
    var_1 = -global3.b.a.x;
    let var_2 = Struct_3(i32(-1i) * -59368i, ~(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -23928i), global3.b.a) | (vec3<i32>(-1i, global3.b.a.x, global3.b.a.x) ^ global3.b.a)), 30426u, vec4<f32>(198f, _wgslsmith_f_op_f32(select(global3.a, -253f, true)), global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))), Struct_1(arg_1));
    return _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(562f))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2839f), -722f, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(global3.a * 496f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(144f, -158f, -2012f, global0.a) + vec4<f32>(global3.a, global0.a, global0.a, 291f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-861f, 1874f, global3.a, global0.a)))));
    global3 = Struct_5(_wgslsmith_f_op_f32(min(-1057f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(max(vec2<i32>(-1i, 653i), vec2<i32>(global3.b.a.x, 1i)), -790f))))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, min(4294967295u, 4294967295u), ~65270u, 1u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(35206u, 4294967295u, 79412u, 4294967295u), vec4<u32>(0u, 1u, 13788u, 0u))), 25u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-235f * _wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_f_op_f32(f32(-1f) * -1119f)), 1951f, global3.a) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(610f - global0.a))), vec3<f32>(global3.a, global3.a, _wgslsmith_f_op_f32(f32(-1f) * -814f)))));
    let var_2 = ~(vec3<i32>(-1i) * -(vec3<i32>(u_input.b.x, global3.b.a.x, global3.b.a.x) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-15956i, u_input.a, arg_0.x), global3.b.a)));
    global1 = array<bool, 16>();
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1211u, ~firstTrailingBit(27989u) & ~_wgslsmith_add_u32(62247u, 0u)) << (abs(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(~101099u, _wgslsmith_mult_u32(25121u, 61152u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(73261u, 1u), vec2<u32>(4294967295u, 59087u)))) % 32u), 25u)];
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(178f, global3.a, -280f))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-200f, -1125f, -818f), vec3<f32>(global3.a, -118f, global0.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(306f, global0.a, 596f)), true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(875f)), 1000f)), global1[_wgslsmith_index_u32(58712u, 16u)]);
    global0 = Struct_1(var_0.b);
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -484f))), 139f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(step(1000f, -1779f)), false && global1[_wgslsmith_index_u32(1u, 16u)])))), global3.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global0.a, -769f, global0.a)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, 250f, arg_1.a, global0.a), vec4<f32>(1420f, global0.a, arg_1.a, -920f))))) - vec4<f32>(-1775f, _wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec2_i32(vec2<i32>(-68461i, arg_2.x), arg_2.yz), arg_0.a.x)), arg_1.a, 635f)), !vec4<bool>(false, true, true, !all(vec4<bool>(arg_0.c, true, global3.b.b.x, true)))));
    let var_1 = -31797i;
    global0 = arg_1;
    let var_2 = arg_1;
    let var_3 = u_input.a;
    return 2147483647i;
}

fn func_6(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    global3 = Struct_5(-1000f, global3.b);
    global0 = Struct_1(func_4(global3.b).a.x);
    var var_0 = !select(vec4<bool>(false, true || all(global3.b.b), global3.b.b.x, global3.b.b.x), !select(!vec4<bool>(arg_3, global3.b.b.x, true, global1[_wgslsmith_index_u32(566u, 16u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(6776u, 16u)], global3.b.b.x, global1[_wgslsmith_index_u32(4294967295u, 16u)]), arg_3), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 19422u, 0u), vec3<u32>(1u, 1u, 1u)), 16u)], all(global3.b.b.zz), true, any(select(vec4<bool>(arg_3, global1[_wgslsmith_index_u32(19769u, 16u)], arg_3, arg_3), vec4<bool>(true, global3.b.b.x, true, arg_3), vec4<bool>(true, true, true, arg_3)))));
    let var_1 = ~(~min(~vec4<u32>(0u, 0u, 68022u, 19909u), vec4<u32>(~0u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(8390u, 1553u), vec2<u32>(88476u, 4294967295u)), 1u)));
    let var_2 = 0u;
    return global3.a;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global3.a, global3.a, global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-3740f, global0.a, -106f, 153f)))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1210f, global3.a, -1021f, 723f), vec4<f32>(-1288f, global3.a, global3.a, -1323f), true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(593f, global3.a, -153f, global0.a) + vec4<f32>(962f, 1000f, 194f, global3.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1006f, global3.a, global3.a, -427f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 737f, -959f, 1762f) * vec4<f32>(1479f, 217f, global0.a, global0.a))))));
    var var_1 = vec4<bool>(false, true, arg_0, true);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1196f))), -864f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, global3.a)), _wgslsmith_f_op_f32(384f - var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1392f)))), -1000f);
    global0 = Struct_1(_wgslsmith_f_op_f32(func_6(func_5(func_4(func_2(u_input.b.xz)), Struct_1(_wgslsmith_f_op_f32(max(var_0.x, global0.a))), u_input.b), u_input.b.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 787f)))), (u_input.a <= 2147483647i) || !any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], false)))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(min(var_0.x, global0.a)))))), func_2(u_input.b.xz));
    return abs(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(327u, 6831u, 88027u) & firstTrailingBit(vec3<u32>(98916u, 19018u, 5590u))), vec3<u32>(1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_5(_wgslsmith_f_op_f32(max(-308f, global0.a)), global3.b);
    var var_0 = vec3<u32>(~(func_1(global3.b.b.x, select(global3.b.b, global3.b.b, true)) >> (~func_1(global1[_wgslsmith_index_u32(45555u, 16u)], vec3<bool>(false, true, true)) % 32u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(firstLeadingBit(43326u), 1u) << (abs(1u) % 32u), _wgslsmith_mult_u32(abs(0u), firstLeadingBit(~1u)), 91227u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(0u, 4294967295u)), global1[_wgslsmith_index_u32(firstTrailingBit(33910u), 16u)]), vec2<u32>(1u, ~4294967295u))));
    let var_1 = 1u;
    let var_2 = _wgslsmith_mult_i32(select(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), u_input.b.yy)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(2147483647i, u_input.b.x))), ~_wgslsmith_clamp_i32(~(-1i), func_5(Struct_2(vec3<f32>(global0.a, 500f, global0.a), global3.a, true), Struct_1(global3.a), vec3<i32>(global3.b.a.x, global3.b.a.x, 80474i)), _wgslsmith_add_i32(23103i, -30070i)), false), func_5(Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1014f, global3.a, 1000f)))), _wgslsmith_f_op_f32(global0.a - _wgslsmith_div_f32(1406f, global3.a)), !func_4(global2[_wgslsmith_index_u32(4294967295u, 25u)]).c), Struct_1(_wgslsmith_f_op_f32(step(-1905f, _wgslsmith_f_op_f32(round(-752f))))), vec3<i32>(_wgslsmith_add_i32(u_input.a, -u_input.a), u_input.a, max(global3.b.a.x, -2147483647i))));
    global1 = array<bool, 16>();
    var var_3 = !select(global3.b.b, global3.b.b, vec3<bool>(global3.b.b.x, select(global3.b.b.x, global3.b.b.x, global1[_wgslsmith_index_u32(var_1, 16u)] & false), func_2(vec2<i32>(u_input.a, 1i) & global3.b.a.zy).b.x));
    global3 = Struct_5(_wgslsmith_f_op_f32(sign(2515f)), global3.b);
    let var_4 = global3.b;
    let var_5 = _wgslsmith_add_i32(i32(-1i) * -46903i, ~u_input.b.x | _wgslsmith_sub_i32(-(i32(-1i) * -2147483647i), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec2_i32(var_4.a.xy, global3.b.a.xx))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(81565u, 0u), vec2<u32>(1u, 0u))), ~var_1), _wgslsmith_sub_u32(~25502u, var_0.x), global3.b.b.x), vec3<u32>(~var_1, abs(var_0.x), abs(firstTrailingBit(var_0.x))) >> (~vec3<u32>(15175u, abs(var_1), 1u) % vec3<u32>(32u)), _wgslsmith_add_vec2_i32(global3.b.a.zx, (vec2<i32>(-1i) * -var_4.a.zz) << ((max(vec2<u32>(1u, 7922u), vec2<u32>(var_1, 73042u)) << ((var_0.yz << (var_0.xz % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

