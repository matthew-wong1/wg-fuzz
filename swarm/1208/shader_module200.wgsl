struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
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

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-1017f, 1579f, -1274f), vec3<f32>(310f, -256f, -614f), vec3<f32>(-252f, -1091f, -1564f), vec3<f32>(796f, 210f, 1351f), vec3<f32>(1000f, -656f, 1752f), vec3<f32>(155f, 1000f, -2138f), vec3<f32>(-1747f, 1087f, -1010f), vec3<f32>(1000f, -618f, 112f), vec3<f32>(1786f, -236f, 1042f), vec3<f32>(-1499f, 257f, 1119f));

var<private> global1: array<i32, 13>;

var<private> global2: bool = false;

var<private> global3: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    global3 = true || any(vec2<bool>(false, arg_0.x));
    global0 = array<vec3<f32>, 10>();
    let var_0 = Struct_1(~abs(11549u), _wgslsmith_f_op_f32(select(arg_1.e.b, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.e.b, _wgslsmith_f_op_f32(f32(-1f) * -272f)), _wgslsmith_f_op_f32(floor(arg_1.e.b)))), all(vec3<bool>(arg_0.x, !arg_0.x, arg_0.x)))), -_wgslsmith_add_vec3_i32(arg_1.e.c, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.e.c.x, -1i, -1i), arg_1.e.c), arg_1.e.c)));
    global2 = arg_0.x;
    var var_1 = arg_0.x;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1936f))) + -384f) * arg_1.e.b)));
}

fn func_2() -> Struct_4 {
    global3 = all(!vec3<bool>(true, any(vec2<bool>(true, true)), true));
    global0 = array<vec3<f32>, 10>();
    var var_0 = 8390u;
    global2 = any(vec4<bool>((_wgslsmith_f_op_f32(abs(-761f)) == _wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, true), Struct_4(global1[_wgslsmith_index_u32(74996u, 13u)], 56440i, Struct_3(vec4<bool>(false, true, false, true)), Struct_3(vec4<bool>(false, true, true, false)), Struct_1(0u, -1935f, vec3<i32>(u_input.a, 2147483647i, u_input.a))), 4294967295u, vec2<i32>(2147483647i, 1i)))) || true, true, all(vec2<bool>(true, true)) && all(vec2<bool>(false, true)), true));
    var_0 = abs(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(10923u, 6664u), ~vec2<u32>(40756u, 23640u), true) | vec2<u32>(~1u, 1u), ~vec2<u32>(1u, 1u)));
    return Struct_4(global1[_wgslsmith_index_u32(31105u, 13u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(928u, 1u, 1u, 35775u), vec4<u32>(0u, 4294967295u, 0u, 34959u)), 1u) & _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(59729u, 4294967295u) >> (_wgslsmith_clamp_u32(1u, 41796u, 1u) % 32u)), 13u)], Struct_3(vec4<bool>(true, !all(vec2<bool>(true, false)), _wgslsmith_mod_u32(0u, 26820u) > _wgslsmith_dot_vec4_u32(vec4<u32>(20744u, 10335u, 4294967295u, 10711u), vec4<u32>(12534u, 4294967295u, 4294967295u, 11568u)), true)), Struct_3(vec4<bool>(!all(vec4<bool>(true, false, false, true)), false, true, true)), Struct_1(_wgslsmith_dot_vec4_u32(min(select(vec4<u32>(4294967295u, 4294967295u, 56845u, 0u), vec4<u32>(1u, 27232u, 51445u, 4294967295u), vec4<bool>(true, true, false, true)), ~vec4<u32>(0u, 4294967295u, 27715u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(9205u, 11925u, 0u, 4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -1149f), vec3<i32>(-(~global1[_wgslsmith_index_u32(12211u, 13u)]), -1i, _wgslsmith_sub_i32(~31817i, -4939i))));
}

fn func_1() -> Struct_5 {
    global3 = select(true, !(!(all(vec2<bool>(true, false)) || any(vec3<bool>(false, true, false)))), u_input.a > 40931i);
    var var_0 = func_2();
    let var_1 = func_2();
    var var_2 = Struct_2(countOneBits(firstLeadingBit(~(~vec2<u32>(var_0.e.a, var_0.e.a)))), Struct_1(_wgslsmith_dot_vec3_u32(select(firstLeadingBit(vec3<u32>(var_1.e.a, 17565u, 1u)), countOneBits(vec3<u32>(var_1.e.a, var_0.e.a, 0u)), !var_0.c.a.zwz), vec3<u32>(0u, var_0.e.a, var_1.e.a) ^ ~vec3<u32>(var_0.e.a, var_0.e.a, 44994u)), 293f, _wgslsmith_mult_vec3_i32(var_0.e.c, _wgslsmith_div_vec3_i32(abs(var_0.e.c), var_1.e.c))), vec2<u32>(var_0.e.a, 0u));
    let var_3 = func_2();
    return Struct_5(func_2().e, Struct_2(var_2.a, func_2().e, firstLeadingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.e.a, var_1.e.a), var_2.c, var_2.a))), vec3<u32>(~var_1.e.a, var_3.e.a, var_3.e.a));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_sub_vec2_u32(arg_2.c.xz, arg_2.b.a);
    var var_1 = func_2();
    let var_2 = _wgslsmith_sub_i32(-2147483647i, arg_0.a.c.x);
    let var_3 = _wgslsmith_f_op_f32(min(arg_0.a.b, _wgslsmith_f_op_f32(-685f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -668f), -1051f)))));
    let var_4 = vec2<u32>(firstLeadingBit(arg_2.a.a), ~arg_2.a.a);
    return _wgslsmith_f_op_f32(step(var_3, var_1.e.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 13>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1111f), 1523f));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) + _wgslsmith_f_op_f32(func_4(func_1(), vec2<bool>(true, true), Struct_5(Struct_1(23752u, -239f, vec3<i32>(43382i, global1[_wgslsmith_index_u32(31564u, 13u)], global1[_wgslsmith_index_u32(75968u, 13u)])), Struct_2(vec2<u32>(1u, 0u), Struct_1(1u, -369f, vec3<i32>(1i, u_input.a, u_input.a)), vec2<u32>(58610u, 0u)), vec3<u32>(82150u, 0u, 59885u)), vec2<bool>(false, false)))) - _wgslsmith_div_f32(1422f, 1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1804f, -1000f, true)) - -486f)))));
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(countOneBits(~(~vec2<u32>(5496u, 0u))), vec2<u32>(_wgslsmith_clamp_u32(abs(0u), ~1u, ~1u), 4294967295u)));
    global0 = array<vec3<f32>, 10>();
    var var_3 = false;
    let var_4 = func_1();
    var var_5 = vec2<u32>(_wgslsmith_div_u32(var_2.x, abs(var_2.x) << (~1u % 32u)), abs(abs(abs(_wgslsmith_clamp_u32(var_4.b.c.x, var_2.x, 10590u)))));
    let var_6 = Struct_4(_wgslsmith_mod_i32(1i, -1i), var_4.b.b.c.x, Struct_3(vec4<bool>(true, true, true, true)), Struct_3(vec4<bool>(true, true, true, true)), Struct_1(~(~_wgslsmith_mult_u32(var_4.c.x, 30892u)), _wgslsmith_f_op_f32(f32(-1f) * -184f), -func_1().a.c));
    let x = u_input.a;
    s_output = StorageBuffer(~var_6.a, _wgslsmith_div_vec2_f32(vec2<f32>(-192f, 1951f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1034f, var_6.e.b))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.e.b, var_6.e.b) + vec2<f32>(var_6.e.b, var_6.e.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.e.b, -2321f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -243f), vec2<f32>(var_4.a.b, var_6.e.b))))))), abs(var_5.x), var_4.b.b.b);
}

