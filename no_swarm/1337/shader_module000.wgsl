struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(15702u, vec3<u32>(1u, 1u, 4294967295u), vec4<bool>(false, true, true, false), -656f), vec3<i32>(0i, 7928i, 41918i), vec4<f32>(-866f, 1320f, 1000f, -1000f), vec3<u32>(91675u, 15143u, 0u)), Struct_2(Struct_1(68211u, vec3<u32>(30625u, 1u, 114782u), vec4<bool>(true, false, false, false), 228f), vec3<i32>(52478i, 1i, -6413i), vec4<f32>(930f, 550f, 1158f, 1555f), vec3<u32>(41697u, 12785u, 4294967295u)), Struct_2(Struct_1(4294967295u, vec3<u32>(0u, 13195u, 4294967295u), vec4<bool>(false, true, true, true), -627f), vec3<i32>(20443i, 2147483647i, i32(-2147483648)), vec4<f32>(-580f, 552f, 832f, -1103f), vec3<u32>(1u, 37046u, 0u)), Struct_2(Struct_1(1u, vec3<u32>(106698u, 0u, 1u), vec4<bool>(false, false, true, true), -390f), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec4<f32>(-884f, 759f, -222f, 1885f), vec3<u32>(1u, 4294967295u, 1u)), Struct_2(Struct_1(4294967295u, vec3<u32>(14307u, 45028u, 37926u), vec4<bool>(true, true, false, false), 1247f), vec3<i32>(-827i, 0i, i32(-2147483648)), vec4<f32>(778f, 736f, -149f, 1457f), vec3<u32>(51944u, 0u, 23736u)), Struct_2(Struct_1(60947u, vec3<u32>(19415u, 4294967295u, 0u), vec4<bool>(true, false, true, true), 741f), vec3<i32>(0i, i32(-2147483648), 12283i), vec4<f32>(-695f, -1350f, 242f, 525f), vec3<u32>(4294967295u, 25114u, 54653u)), Struct_2(Struct_1(7306u, vec3<u32>(1u, 93427u, 1u), vec4<bool>(false, false, false, false), -1368f), vec3<i32>(2147483647i, 1i, 0i), vec4<f32>(1839f, -1118f, -352f, 349f), vec3<u32>(17647u, 31169u, 1u)), Struct_2(Struct_1(102053u, vec3<u32>(21418u, 1u, 29820u), vec4<bool>(false, false, false, false), 914f), vec3<i32>(-7069i, -26858i, 10733i), vec4<f32>(-322f, 1000f, -293f, 400f), vec3<u32>(843u, 4294967295u, 1u)), Struct_2(Struct_1(48127u, vec3<u32>(4294967295u, 1u, 1u), vec4<bool>(false, true, true, false), -574f), vec3<i32>(2147483647i, -12950i, 33241i), vec4<f32>(2262f, 1112f, -474f, 1212f), vec3<u32>(52413u, 0u, 57385u)), Struct_2(Struct_1(4976u, vec3<u32>(3237u, 0u, 1u), vec4<bool>(true, false, false, false), -1628f), vec3<i32>(-1i, -1i, 950i), vec4<f32>(724f, 186f, 1121f, 884f), vec3<u32>(98625u, 59090u, 4294967295u)), Struct_2(Struct_1(1u, vec3<u32>(1u, 0u, 4294967295u), vec4<bool>(false, false, false, false), 1000f), vec3<i32>(0i, 39987i, 30085i), vec4<f32>(-828f, 278f, 1348f, 631f), vec3<u32>(45434u, 47502u, 39661u)), Struct_2(Struct_1(41604u, vec3<u32>(21559u, 8322u, 43266u), vec4<bool>(false, false, true, true), 117f), vec3<i32>(43338i, 40900i, 33422i), vec4<f32>(1189f, -644f, 217f, -677f), vec3<u32>(1u, 11509u, 43960u)), Struct_2(Struct_1(690u, vec3<u32>(11643u, 56646u, 45268u), vec4<bool>(false, false, false, true), -644f), vec3<i32>(15809i, i32(-2147483648), 0i), vec4<f32>(-3030f, 397f, 1229f, -628f), vec3<u32>(4294967295u, 0u, 1u)), Struct_2(Struct_1(13421u, vec3<u32>(19745u, 1u, 45280u), vec4<bool>(true, true, false, true), -2125f), vec3<i32>(2147483647i, 1i, 2147483647i), vec4<f32>(1222f, -878f, 998f, -1005f), vec3<u32>(1u, 1u, 0u)));

var<private> global2: vec4<u32>;

var<private> global3: array<vec2<i32>, 30>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    global3 = array<vec2<i32>, 30>();
    var var_0 = global2.x;
    global1 = array<Struct_2, 14>();
    let var_1 = ~arg_1 ^ 9674u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-760f, -660f, _wgslsmith_f_op_f32(f32(-1f) * -611f), arg_0));
    return _wgslsmith_f_op_f32(sign(var_2.x));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(select(0u, ~global0[_wgslsmith_index_u32(4294967295u, 22u)] & countOneBits(1u), false), abs(firstTrailingBit(abs(vec3<u32>(9354u, 0u, 1u)))), vec4<bool>(arg_0, true, !(!arg_0), (global0[_wgslsmith_index_u32(1u, 22u)] ^ 59861u) == ~1u), _wgslsmith_f_op_f32(func_3(-712f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)], global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~60432u, 22u)], 14u)], _wgslsmith_add_vec3_u32(global2.xzw, vec3<u32>(global2.x, 13721u, global2.x))))), u_input.a.wzx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-620f, -1268f, 1000f, 476f), vec4<f32>(-3088f, 716f, 741f, -809f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(414f, 494f, 864f, -742f)), select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, arg_0, true, arg_0), false))), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_add_vec3_u32(global2.xyy, ~(~(~vec3<u32>(80824u, 4294967295u, 33356u)))));
    global1 = array<Struct_2, 14>();
    var var_1 = ~(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-46763i, var_0.b.x, var_0.b.x), var_0.b) ^ var_0.b.x, firstTrailingBit(_wgslsmith_div_i32(var_0.b.x, -4930i))) & ~(-u_input.a.x));
    var var_2 = _wgslsmith_f_op_f32(select(var_0.a.d, _wgslsmith_div_f32(var_0.a.d, 445f), all(select(select(vec2<bool>(var_0.a.c.x, true), vec2<bool>(arg_0, arg_0), select(var_0.a.c.yw, vec2<bool>(arg_0, var_0.a.c.x), arg_0)), !select(vec2<bool>(true, var_0.a.c.x), var_0.a.c.wz, var_0.a.c.zw), true))));
    let var_3 = select(select(!(!select(vec4<bool>(arg_0, true, true, arg_0), var_0.a.c, arg_0)), vec4<bool>(all(var_0.a.c), var_0.a.c.x, any(vec3<bool>(true, var_0.a.c.x, true)), firstTrailingBit(var_0.a.a) >= ~global0[_wgslsmith_index_u32(var_0.d.x, 22u)]), false), select(var_0.a.c, var_0.a.c, !any(var_0.a.c.wyw) & any(vec3<bool>(var_0.a.c.x, true, false))), select(vec4<bool>(true, false, _wgslsmith_add_u32(1u, 35760u) < var_0.d.x, false), select(!select(vec4<bool>(var_0.a.c.x, var_0.a.c.x, false, false), var_0.a.c, true), !vec4<bool>(arg_0, true, arg_0, var_0.a.c.x), !select(var_0.a.c, var_0.a.c, vec4<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x))), !all(vec4<bool>(arg_0, var_0.a.c.x, false, false))));
    return Struct_2(var_0.a, vec3<i32>(var_0.b.x, _wgslsmith_clamp_i32(-27632i | _wgslsmith_div_i32(0i, u_input.a.x), _wgslsmith_div_i32(_wgslsmith_sub_i32(-35477i, 1i), _wgslsmith_sub_i32(var_0.b.x, 28689i)), 1i), select(~(-1i), -1i, !(var_0.a.c.x == true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), global2.wxz);
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.a.d;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), 518f);
    global0 = array<u32, 22>();
    var var_2 = Struct_1(global2.x & global2.x, vec3<u32>(~(~1u), 0u, 1u), vec4<bool>(true, true, true, true), var_1.x);
    var var_3 = select(select(select(vec3<bool>(var_2.c.x, !arg_0.a.c.x, 2147483647i < arg_0.b.x), var_2.c.yxx, var_2.c.yzz), !vec3<bool>(true, true, var_2.c.x), any(vec2<bool>(func_2(true).a.c.x, true))), select(!arg_0.a.c.zyx, !(!select(vec3<bool>(false, false, arg_0.a.c.x), var_2.c.xxw, var_2.c.x)), vec3<bool>(true, var_2.c.x, true)), !arg_0.a.c.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - -1000f) * 668f);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-960f * -1692f))), _wgslsmith_f_op_f32(func_4(func_2(arg_1.c.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_1.d - 803f), arg_1.d))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, -421f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2289f, -1733f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.d, arg_1.d)))))))));
    let var_1 = vec3<u32>(arg_1.a, abs(14882u), _wgslsmith_clamp_u32(global2.x, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global2.x, 22u)], 10396u), select(global2.x, ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global2.x, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]), any(func_2(arg_1.c.x).a.c))));
    var var_2 = select(abs(countOneBits(vec2<i32>(50345i, ~(-8015i)))), ~(-_wgslsmith_div_vec2_i32(u_input.a.zw << (vec2<u32>(global2.x, 6196u) % vec2<u32>(32u)), vec2<i32>(3177i, 1i))), true);
    var var_3 = ~countOneBits(vec3<i32>(var_2.x, -1i, max(countOneBits(arg_0.x), arg_0.x)));
    let var_4 = ~(arg_1.b.xx ^ var_1.yy);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(arg_1.d - -807f), var_0.x, -198f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1316f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -2118f, 444f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1150f, -1334f, 306f))))))));
}

fn func_5(arg_0: vec3<f32>) -> StorageBuffer {
    var var_0 = ~(~(firstTrailingBit(102671u) ^ ~1u)) >> (global2.x % 32u);
    let var_1 = !(!(_wgslsmith_add_u32(global2.x, global0[_wgslsmith_index_u32(global2.x, 22u)]) < countOneBits(global0[_wgslsmith_index_u32(4294967295u, 22u)])) | !all(func_2(false).a.c.yzw));
    let var_2 = countOneBits(~vec2<i32>(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -(1i ^ u_input.a.x)));
    global3 = array<vec2<i32>, 30>();
    return StorageBuffer(reverseBits(vec4<u32>(~1u, global0[_wgslsmith_index_u32(17646u, 22u)], ~0u & global2.x, ~107123u)), arg_0.x, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(672f, arg_0.x))), 946f, arg_0.x, 689f))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21077u, 22u)], 14u)];
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    let var_1 = !((true & !any(var_0.a.c.wxy)) | !(~73351u > ~global2.x));
    let var_2 = var_0.a.c.wyz;
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(~u_input.a.x, u_input.a.x), abs(~1i));
    var var_4 = !(~(~u_input.a.x) == (var_3 ^ 1i));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_0.a.d, var_0.c.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.zwz + var_0.c.wwx))) + _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_add_vec2_i32(vec2<i32>(3544i, var_0.b.x), vec2<i32>(u_input.a.x, -1i)), var_0.a))));
}

