struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(4294967295u, 1u, -1000f, vec2<f32>(-222f, 2032f), Struct_1(vec4<bool>(true, false, true, true), 1624f)));

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(0u, 4294967295u, -1000f, vec2<f32>(-700f, 781f), Struct_1(vec4<bool>(true, false, true, true), -417f)), Struct_2(51558u, 79711u, 638f, vec2<f32>(-415f, -575f), Struct_1(vec4<bool>(false, true, false, false), 1000f)), Struct_2(0u, 4294967295u, -1295f, vec2<f32>(638f, -1676f), Struct_1(vec4<bool>(true, true, false, false), 494f)), Struct_2(1u, 26746u, -319f, vec2<f32>(241f, 529f), Struct_1(vec4<bool>(false, true, true, false), 172f)), Struct_2(4294967295u, 34567u, 491f, vec2<f32>(627f, 743f), Struct_1(vec4<bool>(false, false, true, true), 672f)), Struct_2(0u, 10596u, -163f, vec2<f32>(-1006f, -180f), Struct_1(vec4<bool>(false, false, true, false), 434f)), Struct_2(93848u, 40564u, 1313f, vec2<f32>(-1080f, 777f), Struct_1(vec4<bool>(false, true, true, true), -281f)), Struct_2(0u, 1u, -574f, vec2<f32>(331f, -552f), Struct_1(vec4<bool>(false, false, false, false), -930f)), Struct_2(0u, 88205u, 409f, vec2<f32>(1000f, -1789f), Struct_1(vec4<bool>(false, false, true, false), 261f)), Struct_2(0u, 1u, 841f, vec2<f32>(143f, 781f), Struct_1(vec4<bool>(false, false, true, false), -413f)), Struct_2(1u, 37627u, 222f, vec2<f32>(-1000f, -298f), Struct_1(vec4<bool>(false, false, false, false), -390f)), Struct_2(1u, 6516u, 279f, vec2<f32>(-374f, 1076f), Struct_1(vec4<bool>(false, true, false, true), 1486f)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec4<u32> {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(-u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_mult_i32(countOneBits(u_input.a.x) & countOneBits(u_input.a.x), ~(-(~u_input.a.x))), -(~(-2147483647i)));
    global0 = reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(3658u, arg_1, arg_1, arg_1), vec4<u32>(42862u, global0.x, 1496u, u_input.b.x)) ^ _wgslsmith_div_u32(1u, reverseBits(24404u)), 26777u));
    global0 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(79253u, global0.x | arg_1), select(~max(arg_0.zz, vec2<u32>(46754u, 18395u)), u_input.b.yy, true)));
    global1 = array<Struct_2, 1>();
    var var_1 = Struct_4(1000f, select(vec3<i32>(~(-49018i), select(reverseBits(-1i), 0i, true), var_0.x), var_0.xzw, false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-235f)), _wgslsmith_f_op_f32(step(1756f, -1674f)))), min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, arg_0.x, u_input.b.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 1u, 89741u, 36800u), vec4<u32>(arg_1, global0.x, 72417u, arg_0.x)), ~vec4<u32>(arg_0.x, global0.x, global0.x, u_input.b.x)) ^ _wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_0.x, global0.x, 2271u, 53277u)), min(vec4<u32>(5982u, global0.x, 1u, 1105u), vec4<u32>(79165u, arg_1, u_input.b.x, arg_0.x))), ~vec4<u32>(min(u_input.b.x, 32235u), 49616u, 0u, select(0u, 111301u, true))), Struct_1(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), true, true), all(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(489f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -887f))))));
    return ~vec4<u32>((39002u ^ _wgslsmith_dot_vec2_u32(u_input.b.yy, var_1.d.zy)) ^ 1u, ~arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 70362u, 26201u), _wgslsmith_mult_vec3_u32(u_input.b, arg_0)), arg_0.x);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 1u), 12u)];
    var_0 = Struct_2(1u, u_input.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1750f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(arg_2.xz)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.d))) * arg_1.d.d))), Struct_1(arg_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.e.b) - _wgslsmith_f_op_f32(ceil(-1304f)))))));
    let var_1 = arg_1.d.e;
    let var_2 = vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, global0.x, arg_1.c, global0.x), ~vec4<u32>(47029u, u_input.b.x, 1u, 0u)), ~vec4<u32>(8642u, 1u, var_0.a, 0u)), var_0.a, 70008u) >> (func_3(abs(firstTrailingBit(_wgslsmith_clamp_vec3_u32(arg_1.e, u_input.b, vec3<u32>(906u, 37923u, 4294967295u)))), arg_1.d.a) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * -158f))), arg_1.d.d.x, arg_1.b.x));
    return ~global0.x ^ var_0.a;
}

fn func_1() -> Struct_4 {
    var var_0 = reverseBits(-2663i);
    var var_1 = _wgslsmith_mult_u32(select(min(u_input.b.x, u_input.b.x) | ~(global0.x ^ u_input.b.x), global0.x, !select(true, true, any(vec3<bool>(false, false, true)))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, func_2(u_input.a.x, Struct_3(505f, vec4<bool>(true, false, false, true), global0.x, Struct_2(22244u, 0u, -1750f, vec2<f32>(1366f, -904f), Struct_1(vec4<bool>(false, false, false, false), 721f)), vec3<u32>(44332u, u_input.b.x, 4294967295u)), vec3<f32>(815f, 154f, -646f)), u_input.b.x, u_input.b.x), firstTrailingBit(~vec4<u32>(u_input.b.x, u_input.b.x, global0.x, global0.x))) ^ select(global0.x, 0u, false));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(567f, -897f, 286f, -123f)), vec4<f32>(596f, -733f, -801f, -790f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(674f, -422f, 2017f, 1393f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1306f, 1000f, -226f, -101f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1130f, 1273f, 566f, -1000f)))))));
    var var_3 = Struct_2(~func_3(u_input.b, ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(67856u, u_input.b.x, 99840u))).x, global0.x, _wgslsmith_f_op_f32(select(-408f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_2.x)))))), true)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_2.x + -678f), _wgslsmith_f_op_f32(-1090f + var_2.x)))), Struct_1(vec4<bool>(false, all(vec4<bool>(false, false, true, true)) | any(vec4<bool>(false, false, true, true)), true, !select(false, true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x)))));
    var_0 = firstLeadingBit(u_input.a.x);
    return Struct_4(var_3.c, abs(-_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x) >> (vec3<u32>(global0.x, 57434u, var_3.a) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-17058i, 22437i, 12756i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_2.x)), var_2.x, all(var_3.e.a) & var_3.e.a.x))), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b.x, 4294967295u, global0.x, 68806u) & vec4<u32>(global0.x, 15684u, global0.x, 70159u), ~vec4<u32>(u_input.b.x, global0.x, 10682u, 1u), select(vec4<bool>(false, var_3.e.a.x, false, var_3.e.a.x), var_3.e.a, vec4<bool>(false, var_3.e.a.x, false, true))), (vec4<u32>(var_3.a, 18160u, 20632u, 6939u) & vec4<u32>(u_input.b.x, 25710u, 14082u, u_input.b.x)) | ~vec4<u32>(0u, global0.x, 1u, 11475u)), ~vec4<u32>(reverseBits(global0.x), var_3.a, ~global0.x, ~var_3.b)), Struct_1(vec4<bool>(var_3.e.a.x, false, false, var_3.e.a.x), var_2.x));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    global2 = array<Struct_2, 12>();
    let var_0 = vec2<bool>(arg_0, arg_0 & false);
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-175f, arg_1.a, 402f) + vec3<f32>(arg_1.d.e.b, arg_2.c, 1454f)), vec3<f32>(arg_1.d.c, -289f, arg_2.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(702f, arg_2.e.b, -869f) * vec3<f32>(1434f, arg_1.d.e.b, arg_2.e.b)))))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(7261u), _wgslsmith_dot_vec3_u32(~arg_2.d.yxz, ~vec3<u32>(global0.x, u_input.b.x, arg_2.d.x)) << (~_wgslsmith_mult_u32(0u, 11863u) % 32u), 1u, arg_1.e.x), _wgslsmith_clamp_vec4_u32(arg_2.d | vec4<u32>(0u, u_input.b.x & 4294967295u, _wgslsmith_add_u32(21639u, 25997u), _wgslsmith_mod_u32(global0.x, u_input.b.x)), arg_2.d ^ func_3(arg_1.e, ~13681u), arg_2.d));
    let var_3 = u_input.a.x <= -38455i;
    return abs(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 12>();
    global2 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(3745u, _wgslsmith_add_u32(global0.x ^ global0.x, abs(u_input.b.x))), ~(~vec2<u32>(0u, global0.x)), vec2<u32>(_wgslsmith_div_u32(countOneBits(12016u), abs(15807u)) << (func_4(any(vec4<bool>(false, false, false, true)), Struct_3(242f, vec4<bool>(true, false, true, false), u_input.b.x, Struct_2(u_input.b.x, 1u, 1000f, vec2<f32>(236f, 501f), Struct_1(vec4<bool>(true, true, false, false), 2468f)), vec3<u32>(0u, 32732u, 1u)), func_1()) % 32u), u_input.b.x));
    global1 = array<Struct_2, 1>();
    let var_1 = ~abs(~(firstLeadingBit(var_0.x) >> (1u % 32u)));
    let var_2 = u_input.b.x;
    let var_3 = vec4<i32>(~u_input.a.x, 0i, u_input.a.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~43508u);
}

