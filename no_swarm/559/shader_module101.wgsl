struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<i32, 5>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec2<i32>(2147483647i, 41676i), vec4<bool>(false, false, false, false), 232f, vec3<i32>(2147483647i, 312i, 0i));

var<private> global3: array<bool, 31> = array<bool, 31>(true, true, false, false, false, false, false, true, true, false, true, true, true, true, true, true, true, false, false, false, true, true, true, false, false, true, true, false, true, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> vec2<bool> {
    global3 = array<bool, 31>();
    var var_0 = min(countOneBits(global1[_wgslsmith_index_u32(30638u, 5u)]), arg_0.d.b.x);
    let var_1 = abs(~(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), min(vec4<u32>(14536u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 11161u, arg_1.x))) << (min(firstLeadingBit(vec4<u32>(0u, 4294967295u, arg_1.x, 4294967295u)), ~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 4294967295u)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-109f + 651f), _wgslsmith_f_op_f32(floor(1234f)), _wgslsmith_f_op_f32(-global2.d), arg_0.a.d), vec4<f32>(global2.d, arg_0.a.d, global2.d, _wgslsmith_f_op_f32(round(global2.d))), !select(arg_0.a.c, global2.c, vec4<bool>(false, true, global2.c.x, true))))));
    var var_3 = 2147483647i >> (arg_1.x % 32u);
    return vec2<bool>(select(true, arg_0.b.x, false), arg_2);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = select(!select(global2.c.xy, func_3(Struct_2(Struct_1(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 31u)], arg_2), u_input.a.zz, global2.c, arg_3.x, u_input.a.ywx), global2.c, vec3<bool>(false, false, true), Struct_1(vec3<bool>(arg_2, arg_2, false), vec2<i32>(-21015i, u_input.b.x), global2.c, arg_1, global2.e)), vec3<u32>(0u, 0u, 4294967295u), true), vec2<bool>(true & global3[_wgslsmith_index_u32(4294967295u, 31u)], true)), vec2<bool>(true, true), !(arg_3.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, 200f)))));
    return Struct_3(-10825i, Struct_1(global2.a, vec2<i32>(0i | global2.e.x, -global1[_wgslsmith_index_u32(select(16406u, 1u, true), 5u)]), global2.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 - -1028f))), 561f)), global2.e), global2.e.zx);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = ~((u_input.a.x | _wgslsmith_dot_vec3_i32(~arg_0.b.e, vec3<i32>(arg_0.a, arg_0.b.b.x, u_input.a.x))) & arg_0.b.b.x);
    var var_1 = Struct_2(arg_2.b, arg_0.b.c, vec3<bool>(arg_2.b.a.x, global3[_wgslsmith_index_u32(6686u, 31u)], true), arg_2.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-845f + global2.d)), 851f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1562f)) - _wgslsmith_f_op_f32(-arg_0.b.d))))));
    var_1 = Struct_2(arg_0.b, vec4<bool>(false, !all(func_2(-52511i, arg_0.b.d, false, vec4<f32>(var_2.x, var_2.x, arg_2.b.d, 345f)).b.c), global2.a.x, !arg_1), select(global2.a, arg_2.b.c.xww, global2.c.wxw), func_2(1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.d)), _wgslsmith_f_op_f32(-659f * func_2(var_0, arg_2.b.d, global3[_wgslsmith_index_u32(0u, 31u)], vec4<f32>(arg_0.b.d, var_2.x, -1317f, -528f)).b.d)), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(721f, var_2.x, -209f, arg_2.b.d) * vec4<f32>(-949f, 1470f, 367f, var_1.a.d)), vec4<f32>(-2222f, global2.d, -883f, -510f))) * vec4<f32>(106f, _wgslsmith_f_op_f32(trunc(-226f)), _wgslsmith_f_op_f32(-var_2.x), -1330f))).b);
    var var_3 = arg_2.b.c;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, var_2.x, var_2.x, var_1.d.d))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1181f, var_2.x, var_2.x, 1093f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-263f, var_2.x, 1000f, arg_0.b.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(597f, var_2.x, -296f, -647f) * vec4<f32>(1505f, global2.d, arg_0.b.d, -259f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.d, global2.d, 1003f, arg_2.b.d) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.d, arg_2.b.d, -386f, global2.d), vec4<f32>(var_1.d.d, arg_0.b.d, arg_0.b.d, -440f)))))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = vec3<u32>(_wgslsmith_add_u32(min(61892u, 1u), 1u), ~(~1u), 15144u >> (_wgslsmith_mult_u32(1u, 0u) % 32u));
    var var_1 = Struct_1(global2.a, -vec2<i32>(10262i, -2147483647i), global2.c, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1089f)), global2.d))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(~global1[_wgslsmith_index_u32(36077u, 5u)], _wgslsmith_sub_i32(2147483647i, 18416i), -global2.e.x), global2.e));
    let var_2 = ~max(var_0.x, _wgslsmith_add_u32(var_0.x, var_0.x));
    global0 = ~var_2;
    global3 = array<bool, 31>();
    return vec4<bool>(!global3[_wgslsmith_index_u32(~29077u, 31u)], (_wgslsmith_clamp_i32(~54403i, u_input.a.x, -8036i) & -global1[_wgslsmith_index_u32(firstLeadingBit(48837u), 5u)]) == -_wgslsmith_div_i32(global2.e.x, ~(-32442i)), global3[_wgslsmith_index_u32(var_2, 31u)], true);
}

fn func_1() -> f32 {
    var var_0 = func_5(905f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d))))), vec2<i32>(_wgslsmith_sub_i32(~global2.e.x, 13460i), _wgslsmith_mult_i32(~(~(-1i)), 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2(1i, _wgslsmith_f_op_f32(abs(global2.d)), 1i < u_input.b.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.d, global2.d, global2.d, global2.d)))), global2.c.x, Struct_3(max(u_input.b.x, 2147483647i), Struct_1(vec3<bool>(true, true, global3[_wgslsmith_index_u32(1u, 31u)]), u_input.a.yz, vec4<bool>(false, global2.c.x, false, false), -1980f, u_input.a.xzw), _wgslsmith_mod_vec2_i32(global2.e.zx, vec2<i32>(global1[_wgslsmith_index_u32(105963u, 5u)], global2.b.x)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.d, global2.d, 782f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d, 694f, 1000f) + vec3<f32>(-758f, -207f, 533f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(147f, global2.d, global2.d) * vec3<f32>(752f, global2.d, global2.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(538f, -543f, 1022f)), var_0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(global2.d * -298f), func_2(2068i, global2.d, true, vec4<f32>(global2.d, global2.d, global2.d, 993f)).b.d)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-601f, 209f, 347f), vec3<f32>(global2.d, global2.d, global2.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1432f, -479f, global2.d))))))));
    let var_2 = vec3<i32>(-1i, u_input.b.x, -17933i) >> (~vec3<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(971u, 1u), vec2<u32>(1u, 4367u))), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(36179u, 836u, 0u, 81033u), vec4<u32>(37719u, 1u, 0u, 0u))), min(1u, 1u)) % vec3<u32>(32u));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1336f), _wgslsmith_div_f32(223f, -1000f)) + _wgslsmith_f_op_f32(-1059f + _wgslsmith_f_op_f32(var_1.x * 1962f))), _wgslsmith_f_op_f32(-183f + -1100f), var_1.x));
    global1 = array<i32, 5>();
    return -1074f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d, global2.d) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d, global2.d) - vec2<f32>(global2.d, 890f))) * vec2<f32>(global2.d, -467f)), vec2<f32>(-2108f, _wgslsmith_f_op_f32(func_1()))))));
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(abs(~(~4294967295u)), 5u)], func_2(i32(-1i) * -_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(46202u, 5u)], u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-971f, _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(ceil(-978f)))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1377f, global2.d, var_0.x, global2.d) * vec4<f32>(154f, -320f, -1630f, 145f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.d, var_0.x, var_0.x, 1140f), vec4<f32>(-428f, -2143f, var_0.x, -2644f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-180f, 259f, var_0.x, -531f) * vec4<f32>(var_0.x, -1213f, global2.d, global2.d)) + vec4<f32>(var_0.x, -1048f, -188f, -754f)))).b, u_input.a.yy);
    global2 = Struct_1(var_1.b.c.wyz, global2.b, global2.c, global2.d, reverseBits(_wgslsmith_clamp_vec3_i32(var_1.b.e, global2.e, var_1.b.e)));
    var var_2 = func_2(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_clamp_i32(-62072i, u_input.a.x, ~u_input.b.x)), var_1.b.d, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global2.d, global2.d, var_0.x, var_0.x), vec4<f32>(-1999f, -904f, global2.d, global2.d)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(264f, var_0.x, var_1.b.d, var_1.b.d)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_1.b.d, var_1.b.d, -897f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(462f, 132f, var_1.b.d, var_1.b.d) * vec4<f32>(global2.d, -1000f, 472f, -201f))))));
    var var_3 = vec2<bool>(var_2.b.c.x, func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(701f - global2.d), _wgslsmith_f_op_f32(-2150f - -740f), any(var_2.b.a))), _wgslsmith_f_op_f32(-var_0.x))), var_1.b.d, _wgslsmith_mod_vec2_i32(reverseBits(~vec2<i32>(27437i, 36220i)), vec2<i32>(-19936i, 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, var_1.b.d, var_1.b.d, var_1.b.d)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-725f, global2.d, -184f, -809f) + vec4<f32>(1393f, -1000f, 534f, -897f))))).x);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1898f))), _wgslsmith_f_op_vec4_f32(func_4(func_2(~(-25980i), var_2.b.d, global3[_wgslsmith_index_u32(4294967295u, 31u)], vec4<f32>(1000f, var_0.x, -505f, var_2.b.d)), select(func_2(22118i, 471f, false, vec4<f32>(var_0.x, 1067f, -724f, var_2.b.d)).b.a.x, true, global3[_wgslsmith_index_u32(max(1u, 0u), 31u)]), Struct_3(var_2.b.e.x, var_2.b, global2.b))).x));
    let var_4 = Struct_3(-global1[_wgslsmith_index_u32(~(~4302u), 5u)], func_2(countOneBits(firstLeadingBit(global2.b.x)) >> (~(~4294967295u) % 32u), _wgslsmith_f_op_f32(var_0.x + var_1.b.d), true | var_2.b.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.b.d)), _wgslsmith_f_op_f32(trunc(192f)), _wgslsmith_f_op_f32(819f + -1125f), _wgslsmith_f_op_f32(-1498f + 764f)) + vec4<f32>(_wgslsmith_f_op_f32(round(var_1.b.d)), -564f, global2.d, global2.d))).b, var_2.c);
    global1 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(1u, 1u, 1u, 1u)), firstLeadingBit(~(i32(-1i) * -var_2.b.b.x)), 0i, min(func_2(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1394f, var_4.b.d, false))), true && any(vec4<bool>(true, false, global2.a.x, var_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.d, var_0.x, var_2.b.d, var_0.x), vec4<f32>(global2.d, var_4.b.d, var_2.b.d, -595f)))).c.x, 50253i), _wgslsmith_f_op_f32(-var_2.b.d));
}

