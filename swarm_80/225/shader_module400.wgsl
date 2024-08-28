struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(55696i, -3441i, -2648i, -17552i), vec4<i32>(i32(-2147483648), 0i, 4605i, 55968i), vec4<i32>(26635i, 2147483647i, 1i, -28030i), vec4<i32>(0i, 2147483647i, 4094i, 13172i), vec4<i32>(1i, -14832i, 30509i, 35314i), vec4<i32>(0i, 18905i, 9122i, 0i), vec4<i32>(-38254i, 2147483647i, 1i, -23588i), vec4<i32>(i32(-2147483648), 2147483647i, -52319i, 9940i), vec4<i32>(i32(-2147483648), -1i, 10036i, 2147483647i), vec4<i32>(0i, 51113i, i32(-2147483648), 0i), vec4<i32>(20270i, 1i, i32(-2147483648), 9108i), vec4<i32>(0i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, 50413i, 25567i, 1i), vec4<i32>(-33861i, 1i, 42095i, 10402i), vec4<i32>(-16252i, -34109i, -1i, 2147483647i), vec4<i32>(0i, -1i, 46794i, -2158i), vec4<i32>(i32(-2147483648), -4950i, 18290i, 14896i), vec4<i32>(0i, -33982i, 24955i, -1i), vec4<i32>(i32(-2147483648), -1i, 4987i, -11833i), vec4<i32>(39941i, 23642i, -1i, -2350i), vec4<i32>(-35772i, 1i, i32(-2147483648), 0i), vec4<i32>(2147483647i, 64207i, 71087i, 2147483647i), vec4<i32>(-1i, -1i, 2147483647i, -1i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 20858i), vec4<i32>(-33108i, 2147483647i, -1i, 35910i), vec4<i32>(-92580i, -14554i, 41055i, i32(-2147483648)), vec4<i32>(-20113i, -3906i, 2147483647i, -1i), vec4<i32>(20035i, -11022i, -3356i, 2147483647i), vec4<i32>(2147483647i, -1i, -1i, i32(-2147483648)));

var<private> global1: vec3<i32>;

var<private> global2: vec4<i32>;

var<private> global3: i32 = 1i;

var<private> global4: array<vec3<bool>, 12>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    global1 = _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-23606i, -global2.x, max(-29070i, global1.x))) | ~_wgslsmith_add_vec3_i32(vec3<i32>(global2.x, global1.x, 0i), -vec3<i32>(global1.x, 51626i, 2147483647i)), global2.xww);
    global4 = array<vec3<bool>, 12>();
    let var_0 = global2.zy;
    global3 = _wgslsmith_mod_i32(global2.x, global1.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(-arg_1)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), 1922f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(false, true), _wgslsmith_f_op_f32(-1000f + -1299f))))));
    var var_1 = vec2<u32>(17019u, 1u);
    let var_2 = true;
    global1 = global2.yxy;
    var var_3 = max(global2.x << (u_input.a % 32u), 8850i);
    return Struct_1(true, any(!(!vec3<bool>(var_2, false, var_2))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b, 507f, -1000f, arg_2.b))) * vec4<f32>(-216f, -1892f, -228f, var_0.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b, -1260f, arg_2.b, arg_2.b), vec4<f32>(-1696f, 216f, arg_2.b, -217f)) + vec4<f32>(arg_2.b, 266f, 223f, 1045f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, 1472f, var_0.b, -336f) * vec4<f32>(1000f, var_0.b, arg_2.b, arg_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(659f, var_0.b, var_0.b, -350f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1926f, 239f, -1000f, 321f)))))), vec4<f32>(-1599f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1090f) - 103f), arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.b * 1000f), 1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-688f - var_0.b) + 1631f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(arg_2.b))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -860f), 708f, _wgslsmith_f_op_f32(trunc(arg_2.b))));
    var var_4 = var_0.c;
    return Struct_2(vec3<i32>(firstLeadingBit(~(-29566i)), -1i, global2.x), 275f, func_2(), arg_2.e, arg_0.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: i32) -> Struct_2 {
    global0 = array<vec4<i32>, 29>();
    let var_0 = true;
    let var_1 = arg_0.c;
    let var_2 = Struct_2(vec3<i32>(0i, 2147483647i, arg_3), _wgslsmith_f_op_f32(256f + arg_1.x), Struct_1(!var_0, all(vec2<bool>(func_2().b, true))), _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(global1.x, -20969i >> (u_input.b % 32u))) < 2147483647i, false);
    global1 = var_2.a;
    return func_4(func_4(Struct_1(var_2.e, 1f < func_4(Struct_1(arg_0.c.b, false), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), Struct_2(vec3<i32>(global2.x, global2.x, global2.x), 1100f, arg_0.c, var_2.c.b, true), vec3<u32>(1u, u_input.b, 21804u)).b), ((vec4<u32>(4294967295u, 1u, 0u, u_input.b) & vec4<u32>(17432u, 114221u, u_input.a, u_input.b)) ^ (vec4<u32>(u_input.b, u_input.b, 8624u, 4294967295u) & vec4<u32>(74036u, u_input.b, 1u, u_input.a))) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, 91867u, 21253u), vec4<u32>(u_input.a, 0u, 4294967295u, 0u)), Struct_2(-select(vec3<i32>(27943i, var_2.a.x, 2147483647i), vec3<i32>(-12706i, arg_3, -46416i), vec3<bool>(false, arg_0.e, false)), func_4(func_2(), vec4<u32>(u_input.a, u_input.a, 0u, u_input.b), var_2, ~vec3<u32>(u_input.b, u_input.b, u_input.b)).b, func_2(), !var_0, true), firstLeadingBit(max(~vec3<u32>(u_input.a, u_input.b, 1u), ~vec3<u32>(u_input.a, 14662u, u_input.a)))).c, ~reverseBits(vec4<u32>(1u, _wgslsmith_div_u32(u_input.b, 4294967295u), _wgslsmith_mod_u32(u_input.b, 0u), u_input.b)), var_2, ~(~(~(vec3<u32>(4294967295u, 55413u, u_input.a) | vec3<u32>(1u, 1u, u_input.a)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = func_5(Struct_2(-reverseBits(vec3<i32>(arg_1.a.x, arg_1.a.x, arg_0.a.x) | vec3<i32>(-2518i, global2.x, global2.x)), func_4(arg_2, vec4<u32>(43338u | u_input.b, _wgslsmith_clamp_u32(1u, 37172u, 28107u), _wgslsmith_div_u32(32537u, 4294967295u), ~57564u), Struct_2(global2.wzz & arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -812f), func_4(Struct_1(false, true), vec4<u32>(3851u, u_input.a, u_input.a, u_input.a), Struct_2(arg_1.a, 1386f, Struct_1(arg_2.b, arg_2.b), arg_2.b, arg_1.e), vec3<u32>(u_input.b, 8837u, 14469u)).c, true, true), firstTrailingBit(vec3<u32>(2597u, u_input.a, 55024u))).b, func_4(Struct_1(true, arg_1.c.a), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(0u, 54183u, 4294967295u, 38423u)), vec4<u32>(u_input.b, 4294967295u, u_input.b, 25999u), vec4<u32>(u_input.b, 1u, 1u, 5442u)), Struct_2(vec3<i32>(1i, 2147483647i, global2.x), _wgslsmith_div_f32(267f, arg_1.b), func_2(), func_5(arg_0, vec2<f32>(-144f, -506f), arg_1.a, arg_1.a.x).c.b, 2147483647i >= global2.x), ~(~vec3<u32>(36052u, u_input.b, 2789u))).c, arg_0.c.a, ~(-18382i) >= _wgslsmith_add_i32(2147483647i << (0u % 32u), func_5(Struct_2(vec3<i32>(-25373i, global2.x, -64012i), -248f, arg_0.c, arg_2.b, arg_1.d), vec2<f32>(-243f, arg_0.b), arg_1.a, 13222i).a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1035f, -792f) - vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b, -1135f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(381f)) + func_4(Struct_1(arg_0.d, arg_2.b), vec4<u32>(23194u, u_input.b, 1u, u_input.a), arg_1, vec3<u32>(u_input.a, 4294967295u, 10676u)).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b, arg_1.b)) - _wgslsmith_f_op_f32(arg_0.b + -1075f)))), vec3<i32>(-61850i, ~(~2147483647i), -41138i), ~func_5(arg_1, vec2<f32>(-1384f, _wgslsmith_f_op_f32(select(-445f, 166f, arg_0.c.b))), arg_0.a, 0i).a.x).c;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b, 2047f)))));
    let var_2 = var_0;
    var var_3 = arg_1;
    var var_4 = arg_0;
    return ~(~(~((7886u << (u_input.b % 32u)) | _wgslsmith_div_u32(u_input.b, 4294967295u))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    global3 = global2.x;
    var var_0 = global4[_wgslsmith_index_u32(16138u, 12u)];
    var_0 = global4[_wgslsmith_index_u32(0u >> (arg_0.x % 32u), 12u)];
    global0 = array<vec4<i32>, 29>();
    let var_1 = func_6(Struct_2(-global2.xxy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1183f, _wgslsmith_div_f32(407f, 737f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(567f, 555f)) + _wgslsmith_f_op_f32(f32(-1f) * -514f))), arg_1, all(global4[_wgslsmith_index_u32(~(23749u >> (arg_0.x % 32u)), 12u)]), var_0.x && (arg_1.a && var_0.x)), func_5(func_4(func_2(), vec4<u32>(~1u, ~14107u, ~4294967295u, arg_0.x), Struct_2(global2.xwz, _wgslsmith_f_op_f32(floor(2011f)), Struct_1(arg_1.b, var_0.x), var_0.x | false, arg_1.a || var_0.x), vec3<u32>(6910u, ~15181u, 1u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1193f, -2051f) - vec2<f32>(1066f, -2377f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1466f, -887f), vec2<f32>(1437f, 2165f), var_0.x))))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(2147483647i, global1.x, -8610i)), global2.zzw), global2.yyx), -firstLeadingBit(i32(-1i) * -24338i)), arg_1);
    return Struct_2(vec3<i32>(abs(0i), reverseBits(1i), abs(abs(global2.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1664f + _wgslsmith_f_op_f32(899f - -1326f)) + _wgslsmith_f_op_f32(-834f + _wgslsmith_f_op_f32(f32(-1f) * -1261f))), all(select(vec3<bool>(var_0.x, arg_1.b, false), global4[_wgslsmith_index_u32(var_1, 12u)], true)))), func_2(), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(true, var_0.x), 294f)).x != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-376f, -252f)), _wgslsmith_f_op_f32(f32(-1f) * -520f)))), all(var_0.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(firstTrailingBit(countOneBits(62864i << (u_input.b % 32u)) << (~(u_input.b >> (1u % 32u)) % 32u)), min(~abs(_wgslsmith_mult_i32(2147483647i, global1.x)), -2147483647i));
    var var_1 = func_1(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, u_input.b), vec2<u32>(37309u, 38646u)), vec2<u32>(u_input.a, ~1u)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 34439u), vec2<u32>(64660u, u_input.a))) << ((vec2<u32>(u_input.a, 73593u) | _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(43035u, u_input.b))) % vec2<u32>(32u))), Struct_1(select(any(vec3<bool>(true, false, false)), true, any(vec3<bool>(true, true, true))), global2.x > -2147483647i));
    var_0 = global1.x;
    var var_2 = Struct_2(~vec3<i32>(global2.x, select(-175i, ~(-2147483647i), var_1.d), max(-global1.x, _wgslsmith_mod_i32(43285i, -46461i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(false, var_1.e), _wgslsmith_f_op_f32(abs(-1000f)))).x, func_1(~vec2<u32>(28989u, 1u), Struct_1(true, false)).b)), var_1.b), var_1.c, !var_1.c.b, func_5(func_4(var_1.c, ~vec4<u32>(u_input.b, u_input.a, u_input.a, 4408u), Struct_2(vec3<i32>(25725i, 0i, -34019i), 1147f, Struct_1(var_1.d, false), var_1.c.a, var_1.c.b), ~vec3<u32>(58583u, 49277u, 1u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-864f, var_1.b)))), vec3<i32>(1i, 730i, global2.x) >> (select(vec3<u32>(89238u, u_input.a, 5528u), vec3<u32>(0u, 0u, 33151u), global4[_wgslsmith_index_u32(1u, 12u)]) % vec3<u32>(32u)), -1i).d && func_4(var_1.c, ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 57820u, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a)), func_4(var_1.c, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 20371u, u_input.a), vec4<u32>(47310u, u_input.a, 25610u, u_input.b)), func_5(Struct_2(vec3<i32>(global2.x, 18046i, global2.x), var_1.b, Struct_1(true, var_1.d), true, var_1.c.b), vec2<f32>(1759f, -2776f), vec3<i32>(var_1.a.x, 65297i, global2.x), 7194i), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.a), vec3<u32>(u_input.b, 4294967295u, 1u))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, u_input.b), vec3<u32>(2683u, u_input.b, 1u)) >> (~vec3<u32>(u_input.b, u_input.b, u_input.a) % vec3<u32>(32u))).d);
    let var_3 = ~(~(~(min(vec4<u32>(u_input.b, 4294967295u, 5226u, u_input.b), vec4<u32>(u_input.a, u_input.a, 92630u, u_input.a)) | (vec4<u32>(u_input.a, 17113u, 4294967295u, 63722u) << (vec4<u32>(1u, u_input.a, u_input.b, u_input.b) % vec4<u32>(32u))))));
    let var_4 = var_2.c.a;
    let var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(4294967295u, var_3.x, 155797u)), reverseBits(vec3<u32>(13844u, u_input.b, var_3.x))), var_3.yyx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1014f, 140f) * vec2<f32>(-684f, var_1.b)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-724f, 188f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-912f, 1720f) - vec2<f32>(var_1.b, var_1.b))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1519f, var_1.b) + vec2<f32>(var_2.b, -986f)), vec2<f32>(-786f, var_1.b)))), abs(abs(~var_3.x)), _wgslsmith_f_op_f32(-682f * var_2.b));
}

