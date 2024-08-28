struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: Struct_2;

var<private> global2: array<u32, 10>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = !select(select(!select(vec3<bool>(global0.a, global0.a, global1.a.a), vec3<bool>(false, global0.a, true), global0.a), !select(vec3<bool>(false, true, true), vec3<bool>(global0.a, global1.c.a, global1.a.a), vec3<bool>(global1.b.a, global1.c.a, global1.d)), true), vec3<bool>(global0.a, false, !(global0.a | global0.a)), !vec3<bool>(global0.a, global1.d == global0.a, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1059f, -1516f)))));
    var var_2 = 1u;
    let var_3 = ~min(-1i, 2147483647i) & _wgslsmith_mod_i32(~(-37455i), select(abs(-31384i), ~arg_0, true) ^ ~_wgslsmith_div_i32(-1i, u_input.b.x));
    var var_4 = 1000f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 721f, -513f, var_1.x) * vec4<f32>(var_1.x, -773f, -1054f, var_1.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, var_1.x, 570f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), 1561f, _wgslsmith_f_op_f32(256f * -124f), _wgslsmith_f_op_f32(var_1.x - 979f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, 739f, var_1.x) - vec4<f32>(var_1.x, var_1.x, 543f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 775f, 1625f, var_1.x) * vec4<f32>(219f, var_1.x, var_1.x, 1157f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(var_1.x - var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))), 1020f, _wgslsmith_f_op_f32(exp2(var_1.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>) -> vec3<u32> {
    global1 = Struct_2(arg_0, global1.a, Struct_1(true), true && ((arg_2.x <= _wgslsmith_f_op_f32(-2487f - 561f)) && any(!vec4<bool>(global1.a.a, true, global0.a, global0.a))));
    var var_0 = Struct_2(arg_0, Struct_1(true), arg_0, !(_wgslsmith_f_op_f32(arg_1.x * arg_2.x) != 1f) && false);
    var var_1 = -countOneBits(abs(u_input.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(834f, arg_2.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f)), -1637f, -558f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_1.x, arg_1.x, 1000f)))));
    let var_3 = abs(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(~(~4294967295u), 10u)], 1u), 10u)]);
    return _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(u_input.a, 10u)]), 10u)], 0u) >> (u_input.a % 32u), 10u)], _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, _wgslsmith_sub_u32(6720u, 1u), min(global2[_wgslsmith_index_u32(4294967295u, 10u)], 1u)), ~abs(vec3<u32>(4294967295u, 4837u, u_input.a)))), firstLeadingBit(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(var_3, 4294967295u, global2[_wgslsmith_index_u32(var_3, 10u)])))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> vec3<f32> {
    global0 = global1.c;
    global0 = Struct_1(global1.d);
    var var_0 = global0.a;
    let var_1 = func_4(Struct_1(!(!arg_1.a) != true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1240f, 245f, -192f, -342f), vec4<f32>(1000f, -1532f, 1000f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-165f, 1089f, -1083f, -369f) - vec4<f32>(953f, 839f, 1000f, 231f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1118f, 1000f, -2579f, 1412f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-532f, 402f, 1034f, -1449f) - vec4<f32>(-646f, 703f, 904f, -325f)))) + _wgslsmith_f_op_vec4_f32(func_3(u_input.b.x, arg_0, abs(vec2<i32>(-1i, -1i) ^ u_input.b.yy)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-451f, 326f, -606f) - vec3<f32>(-408f, 1753f, -471f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1692f, -591f, -1000f), vec3<f32>(1317f, 724f, -1432f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-617f, 725f, 1087f))))) + vec3<f32>(-1039f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -850f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-318f - -1437f), _wgslsmith_f_op_f32(-772f - -552f))))));
    global1 = Struct_2(global1.b, global1.b, arg_1, !(!arg_1.a));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-971f, -1299f, -1396f) - vec3<f32>(-1515f, -453f, 950f)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -516f, 1098f), vec3<f32>(-302f, 591f, 267f))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-643f, 688f, 768f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2292f, 637f, -691f) - vec3<f32>(-415f, -443f, -758f))), _wgslsmith_f_op_vec4_f32(func_3(-1i, vec3<u32>(4279u, 4294967295u, var_1.x), u_input.b.xy)).xxw, vec3<bool>(false, false, true))))));
}

fn func_5(arg_0: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1180f)));
    global2 = array<u32, 10>();
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3(2147483647i, select(func_4(global1.c, _wgslsmith_f_op_vec4_f32(func_3(-9010i, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(4752u, 10u)], u_input.a), vec3<u32>(1u, 1u, u_input.a)), -vec2<i32>(0i, u_input.b.x))), _wgslsmith_f_op_vec3_f32(trunc(arg_0))), vec3<u32>((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)] << (global2[_wgslsmith_index_u32(1u, 10u)] % 32u)) | 84659u, _wgslsmith_dot_vec2_u32(vec2<u32>(14204u, u_input.a), select(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53127u, 10u)], 10u)], 10u)], 37384u), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], 36987u), vec2<bool>(global1.d, false))), u_input.a), (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1367i, -2147483647i, -1i), vec4<i32>(75049i, u_input.b.x, 1i, -1i)) >= _wgslsmith_clamp_i32(u_input.b.x, 9884i, u_input.b.x)) && true), -vec2<i32>(_wgslsmith_div_i32(-u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), u_input.b.x))).ww;
    let var_2 = _wgslsmith_div_i32(-1i, u_input.b.x & 12348i);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-828f, var_1.x)) - -848f);
    return _wgslsmith_f_op_f32(trunc(var_1.x));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> bool {
    let var_0 = vec3<bool>(true, !(!(false | (global2[_wgslsmith_index_u32(u_input.a, 10u)] != arg_1))), false);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1187f, 393f, -1364f, 732f), vec4<f32>(945f, -673f, 741f, 233f), var_0.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(211f, -1266f, 498f, -1563f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-135f, -579f, 1000f, -1496f) + vec4<f32>(-1000f, 594f, 607f, 247f))))), vec4<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(u_input.a, arg_2, u_input.a), arg_0, vec3<bool>(false, global0.a, false), false)) * vec3<f32>(-1887f, -1367f, -1033f)))), _wgslsmith_f_op_f32(359f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(479f + -473f), _wgslsmith_f_op_f32(724f - 746f)))), -467f, 1117f)));
    global1 = Struct_2(Struct_1(false), global1.c, global1.c, true);
    global2 = array<u32, 10>();
    global2 = array<u32, 10>();
    return (_wgslsmith_add_i32(-19105i, u_input.b.x) < firstTrailingBit(u_input.b.x)) != true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 10>();
    global0 = global1.c;
    let var_0 = select(func_1(global1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(52619u, 1u) >> (vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], u_input.a) % vec2<u32>(32u))), _wgslsmith_add_u32(~u_input.a, global2[_wgslsmith_index_u32(u_input.a, 10u)] << (u_input.a % 32u))), any(vec4<bool>(true, true, true, true)), global0.a) && false;
    global1 = Struct_2(Struct_1(true), Struct_1(global1.a.a || global0.a), Struct_1(global0.a), global0.a);
    let var_1 = _wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_add_i32(_wgslsmith_div_i32(-u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x << (u_input.a % 32u), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)), select(vec2<i32>(1i, 2147483647i), vec2<i32>(22133i, 17755i), global1.d) | select(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.b.x), global1.c.a))), ~(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(31207i, ~var_1, _wgslsmith_dot_vec3_i32(~u_input.b, _wgslsmith_add_vec3_i32(firstLeadingBit(u_input.b), -vec3<i32>(1i, u_input.b.x, var_1)))));
}

