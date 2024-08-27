struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<bool, 8> = array<bool, 8>(false, true, true, false, false, true, false, true);

var<private> global2: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(641f, 1053f, 1356f, -169f), vec4<f32>(707f, 351f, 1474f, -2509f), vec4<f32>(196f, 1503f, -413f, -1030f), vec4<f32>(-1282f, 126f, 319f, -286f), vec4<f32>(354f, -1895f, 1114f, 1682f), vec4<f32>(692f, 774f, -147f, 1218f), vec4<f32>(1251f, -1577f, -1084f, 714f), vec4<f32>(194f, -746f, -351f, 916f), vec4<f32>(-868f, 1374f, -433f, -1312f), vec4<f32>(-482f, 1734f, 101f, -817f), vec4<f32>(496f, -353f, -683f, -919f), vec4<f32>(-373f, 110f, -231f, -1058f), vec4<f32>(324f, 740f, -1381f, -482f), vec4<f32>(1036f, 814f, -941f, 2332f), vec4<f32>(-1661f, 1585f, -501f, -528f), vec4<f32>(-274f, -1135f, -1000f, -803f), vec4<f32>(386f, -477f, 946f, 469f), vec4<f32>(406f, 960f, -391f, 222f), vec4<f32>(-813f, 408f, -509f, 436f), vec4<f32>(443f, -671f, 1670f, -795f));

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<u32>(31453u, 1u)), Struct_1(vec2<u32>(0u, 3028u)), Struct_1(vec2<u32>(1u, 10367u)), Struct_1(vec2<u32>(58865u, 59000u)), Struct_1(vec2<u32>(14903u, 4294967295u)), Struct_1(vec2<u32>(14866u, 30109u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(1u, 38180u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(1381u, 4294967295u)), Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(1u, 73509u)));

var<private> global4: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(1000f, -429f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<i32, 26>();
    var var_0 = true;
    global0 = array<i32, 26>();
    var var_1 = select(select(vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], true, false)), false & all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(u_input.d, 8u)], true, global1[_wgslsmith_index_u32(4294967295u, 8u)]))), vec2<bool>(true, all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 8u)], true), vec3<bool>(global1[_wgslsmith_index_u32(83966u, 8u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], true, true)))), !vec2<bool>(true || global1[_wgslsmith_index_u32(u_input.c.x, 8u)], true)), select(vec2<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 8u)], global1[_wgslsmith_index_u32(u_input.c.x, 8u)], true))), !vec2<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(u_input.d, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]))), false), false);
    global2 = array<vec4<f32>, 20>();
    return ~_wgslsmith_clamp_u32(u_input.d | abs(abs(u_input.d)), min(~1u, 100910u) << (~u_input.c.x % 32u), u_input.d);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec2<u32>(u_input.d, firstLeadingBit(~func_3(1000f))));
    global2 = array<vec4<f32>, 20>();
    var var_1 = 1f;
    var var_2 = countOneBits(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_clamp_i32(-35050i, u_input.a, u_input.b.x), u_input.a, ~u_input.a));
    var var_3 = ~(~select(~countOneBits(u_input.b.x), _wgslsmith_mod_i32(~0i, _wgslsmith_mult_i32(-1i, u_input.b.x)), true));
    return Struct_2(abs(var_2.x), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 26u)], u_input.a), -vec3<i32>(var_2.x, var_2.x, var_2.x)) << (select(u_input.c.yxx, vec3<u32>(u_input.c.x, u_input.c.x, var_0.a.x), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(54642u, 8u)])) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    let var_0 = func_2();
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(u_input.d, 101077u) & 63835u), 8u)];
    var var_2 = Struct_1(min(~(vec2<u32>(27034u, arg_1.x) << (arg_1.wx % vec2<u32>(32u))) >> (vec2<u32>(arg_0.a.x, ~1u) % vec2<u32>(32u)), ~vec2<u32>(15455u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 0u, arg_1.x), vec3<u32>(0u, arg_0.a.x, u_input.c.x)))));
    let var_3 = !(true && (global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(u_input.c.wyy, vec3<u32>(arg_1.x, arg_0.a.x, 4294967295u))), 26u)] < func_2().b.x));
    global3 = array<Struct_1, 12>();
    return abs(abs(min(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, arg_1.x, u_input.c.x), u_input.c.zyz))));
}

fn func_4(arg_0: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(step(-573f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(478f)))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.d, 20u)]))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(-1585f, 2422f))), _wgslsmith_f_op_f32(-436f + _wgslsmith_f_op_f32(944f - 715f)), !arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(568f + 949f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-424f * -784f), _wgslsmith_f_op_f32(trunc(-2173f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2155f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(616f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -623f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, 1000f))))))));
    let var_2 = !global1[_wgslsmith_index_u32(0u | u_input.c.x, 8u)] | any(!(!vec3<bool>(arg_0, global1[_wgslsmith_index_u32(32401u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)])));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~4294967295u), select(~_wgslsmith_div_u32(17905u, u_input.d), _wgslsmith_dot_vec3_u32(~(u_input.c.wxz >> (vec3<u32>(u_input.d, 58094u, 1u) % vec3<u32>(32u))), ~vec3<u32>(u_input.c.x, u_input.c.x, 1u)), true)), 12u)];
    let var_4 = vec4<i32>(u_input.a, -1i, -2147483647i, func_2().b.x);
    return StorageBuffer(-6395i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-740f, var_1.x, -135f, var_1.x), vec4<f32>(var_1.x, -1233f, var_1.x, var_1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1450f), _wgslsmith_f_op_f32(ceil(-395f)), _wgslsmith_f_op_f32(-1530f - _wgslsmith_f_op_f32(1833f - var_1.x)), -457f), vec4<bool>(!global1[_wgslsmith_index_u32(~0u, 8u)], all(select(vec2<bool>(var_2, arg_0), vec2<bool>(true, arg_0), vec2<bool>(true, true))), all(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 8u)])), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = true;
    let var_2 = false;
    global0 = array<i32, 26>();
    global2 = array<vec4<f32>, 20>();
    global1 = array<bool, 8>();
    var var_3 = global0[_wgslsmith_index_u32(u_input.d, 26u)] == 54518i;
    let var_4 = u_input.c;
    global1 = array<bool, 8>();
    let x = u_input.a;
    s_output = func_4(select(~global0[_wgslsmith_index_u32(43398u, 26u)] != 0i, true, global1[_wgslsmith_index_u32(func_1(global3[_wgslsmith_index_u32(~46266u, 12u)], var_4), 8u)]) | false);
}

