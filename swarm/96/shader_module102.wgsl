struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global1: bool = true;

var<private> global2: array<bool, 32> = array<bool, 32>(false, true, false, false, false, true, true, false, false, true, true, true, false, true, false, true, true, false, false, true, true, true, true, true, false, false, true, true, false, false, true, true);

var<private> global3: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_3(vec4<u32>(0u, 17574u, 0u, 39496u)), vec4<f32>(-1237f, 408f, -443f, 1079f), vec3<f32>(268f, 1000f, -1317f)), Struct_4(Struct_3(vec4<u32>(0u, 5291u, 39245u, 1u)), vec4<f32>(-1569f, -486f, -457f, 810f), vec3<f32>(253f, 2035f, -1133f)), Struct_4(Struct_3(vec4<u32>(1u, 33506u, 4294967295u, 0u)), vec4<f32>(-141f, 925f, 1086f, 1804f), vec3<f32>(102f, 452f, 1243f)), Struct_4(Struct_3(vec4<u32>(4294967295u, 1u, 11746u, 20969u)), vec4<f32>(860f, 277f, -105f, 3090f), vec3<f32>(269f, 136f, 1028f)), Struct_4(Struct_3(vec4<u32>(106717u, 4294967295u, 4294967295u, 4294967295u)), vec4<f32>(551f, -670f, -791f, -648f), vec3<f32>(575f, -637f, -1439f)), Struct_4(Struct_3(vec4<u32>(4294967295u, 16136u, 4294967295u, 34588u)), vec4<f32>(1362f, 1293f, -850f, -387f), vec3<f32>(166f, -435f, -1582f)), Struct_4(Struct_3(vec4<u32>(1118u, 0u, 36796u, 0u)), vec4<f32>(932f, 1871f, -1392f, -1470f), vec3<f32>(-475f, 1128f, 126f)), Struct_4(Struct_3(vec4<u32>(0u, 97325u, 30438u, 12236u)), vec4<f32>(1000f, 779f, 1860f, -293f), vec3<f32>(-1000f, 200f, 557f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 6>();
    global3 = array<Struct_4, 8>();
    var var_0 = vec2<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(~53768i, u_input.d.x & u_input.d.x), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d, u_input.d), max(2147483647i, u_input.d.x)))), u_input.b);
    var var_1 = Struct_4(Struct_3(vec4<u32>(47506u, ~_wgslsmith_clamp_u32(u_input.c, u_input.a.x, 0u), _wgslsmith_mult_u32(reverseBits(u_input.a.x), ~0u), firstTrailingBit(select(u_input.a.x, 73436u, global2[_wgslsmith_index_u32(u_input.c, 32u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-327f, -687f, 350f, -469f)))), vec3<f32>(1975f, -605f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(423f, -141f)))))));
    let var_2 = Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], !(!global2[_wgslsmith_index_u32(firstTrailingBit(0u), 32u)]), false, select(global2[_wgslsmith_index_u32(min(~4294967295u, 1u | var_1.a.a.x), 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], ~21123u > u_input.a.x)), _wgslsmith_mod_i32(0i, var_0.x), !global0[_wgslsmith_index_u32(max(123613u, 9940u), 6u)], Struct_1(0i ^ _wgslsmith_div_i32(_wgslsmith_mod_i32(16408i, -2147483647i), -u_input.d.x), vec3<f32>(var_1.c.x, _wgslsmith_div_f32(-1255f, var_1.b.x), -1580f), _wgslsmith_dot_vec2_i32(vec2<i32>(-15046i, 22911i) | _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, 1i), u_input.d), ~(~u_input.d)), _wgslsmith_sub_i32(countOneBits(select(u_input.b, -2147483647i, global2[_wgslsmith_index_u32(48562u, 32u)])), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 1i, u_input.d.x), vec3<i32>(var_0.x, u_input.d.x, u_input.d.x)), abs(vec3<i32>(u_input.b, 1i, var_0.x))))), Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.yyz + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.c.x, 1331f)))), u_input.d.x, i32(-1i) * -(1i << (u_input.a.x % 32u))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + var_2.e.b.x)))), -918f));
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<bool>(global2[_wgslsmith_index_u32(58015u, 32u)], ~_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.b, -3031i, 6584i), vec4<i32>(u_input.b, 2147483647i, u_input.d.x, u_input.b))) != u_input.b);
    let var_1 = Struct_5(abs(abs(u_input.b | 16655i)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2443f * 819f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1129f - 621f) * _wgslsmith_f_op_f32(-637f + -487f)), _wgslsmith_f_op_f32(-152f * _wgslsmith_f_op_f32(-310f + -1494f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-819f, 1000f, 515f, -334f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1731f, -463f, 572f, -1100f)))), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], true, true), vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(0u, 32u)], false, false), var_0.x | var_0.x))))), Struct_2(vec4<bool>(false, var_0.x, u_input.c <= u_input.a.x, -741f <= _wgslsmith_f_op_f32(trunc(348f))), ~(-(u_input.b >> (87043u % 32u))), select(vec3<bool>(4294967295u != u_input.c, any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 32u)], var_0.x)), false), select(!vec3<bool>(global2[_wgslsmith_index_u32(4581u, 32u)], true, global2[_wgslsmith_index_u32(1u, 32u)]), global0[_wgslsmith_index_u32(27925u, 6u)], vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.c, 32u)])), select(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 32u)], true), global0[_wgslsmith_index_u32(max(1u, u_input.a.x), 6u)], true)), Struct_1(-1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(755f, 123f, -814f))), max(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -1i, 46382i), vec4<i32>(0i, u_input.d.x, u_input.b, u_input.d.x))), reverseBits(u_input.d.x) ^ _wgslsmith_add_i32(u_input.d.x, -46835i)), Struct_1(-1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-470f, 866f, -685f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1716f, -701f, -1099f)))), 1i, u_input.b)));
    var var_2 = 741f;
    var var_3 = ~u_input.a.x;
    var_0 = !var_1.c.a.wz;
    return Struct_3(firstLeadingBit(abs(vec4<u32>(4294967295u, 4294967295u, 9542u, u_input.c) >> (vec4<u32>(41175u, 0u, 4670u, 1u) % vec4<u32>(32u)))) << (~firstTrailingBit(vec4<u32>(27677u, 22017u, u_input.a.x, 4294967295u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: bool) -> Struct_2 {
    let var_0 = 1f;
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    let var_1 = _wgslsmith_add_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.d.x, 1i, -1i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(18285i, u_input.b, 1i, -3404i), vec4<i32>(1i, 1i, -13584i, u_input.d.x)), countOneBits(-vec4<i32>(u_input.d.x, u_input.b, -50612i, 0i))), ~_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.d.x, u_input.d.x, -45313i, u_input.d.x), vec4<i32>(u_input.b, u_input.b, u_input.d.x, -2147483647i), true), select(vec4<i32>(u_input.b, u_input.d.x, 8851i, -1i), vec4<i32>(6573i, u_input.b, -120906i, 55843i), global2[_wgslsmith_index_u32(arg_2, 32u)])), select(select(vec4<bool>(arg_1, true, global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)]), vec4<bool>(false, arg_1, false, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(true, arg_1, global2[_wgslsmith_index_u32(28949u, 32u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 32u)], global2[_wgslsmith_index_u32(44861u, 32u)], true, global2[_wgslsmith_index_u32(31108u, 32u)])), !select(vec4<bool>(true, true, arg_3, global2[_wgslsmith_index_u32(1u, 32u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 32u)], false, true, arg_1), vec4<bool>(arg_1, arg_3, true, true)))), _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.d.x, 1i, _wgslsmith_add_i32(13560i, u_input.d.x), _wgslsmith_mult_i32(-18787i, u_input.d.x)) >> (arg_0.a % vec4<u32>(32u)), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(21063i, u_input.d.x, u_input.b, 9180i), vec4<i32>(u_input.d.x, -35701i, 0i, u_input.b)) >> (_wgslsmith_add_vec4_u32(arg_0.a, vec4<u32>(10404u, 91937u, arg_2, arg_2)) % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_clamp_vec2_u32(abs(~_wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.a.x), ~vec2<u32>(arg_0.a.x, arg_2))), vec2<u32>(~func_2().a.x, ~select(~arg_2, _wgslsmith_mod_u32(arg_0.a.x, u_input.c), !arg_3)), max(arg_0.a.ww, ~(~(u_input.a.xy >> (vec2<u32>(arg_2, u_input.c) % vec2<u32>(32u))))));
    return Struct_2(!vec4<bool>(all(!vec4<bool>(arg_3, arg_3, true, arg_3)), any(vec2<bool>(true, true)), true, true), 1i, vec3<bool>(arg_1, any(!select(vec4<bool>(arg_1, true, false, true), vec4<bool>(true, global2[_wgslsmith_index_u32(42239u, 32u)], false, true), vec4<bool>(arg_3, arg_1, arg_3, arg_1))), false), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(836f, var_0, var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1544f) * vec3<f32>(var_0, 1626f, var_0))))), u_input.b, _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, ~(-1i)), ~(-u_input.b), -(var_1.x & var_1.x))), Struct_1(-((var_1.x | -8422i) & -13580i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 - -1584f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 905f, -796f), vec3<f32>(656f, 693f, 892f))))), _wgslsmith_mod_i32(var_1.x, 15595i), _wgslsmith_div_i32(var_1.x, -u_input.b & u_input.d.x)));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec2<f32>) -> Struct_1 {
    global2 = array<bool, 32>();
    global3 = array<Struct_4, 8>();
    global0 = array<vec3<bool>, 6>();
    let var_0 = select(_wgslsmith_mult_i32(1i, 2147483647i), _wgslsmith_mult_i32(~u_input.b, arg_0.a), global2[_wgslsmith_index_u32(u_input.a.x, 32u)]);
    global1 = !all(!(!global0[_wgslsmith_index_u32(25455u, 6u)]));
    return arg_0.c.e;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> vec4<i32> {
    global1 = global2[_wgslsmith_index_u32(37017u, 32u)];
    global3 = array<Struct_4, 8>();
    global1 = false;
    global1 = all(vec2<bool>(true, all(vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 10428u), 32u)], true, global2[_wgslsmith_index_u32(1u, 32u)], false))));
    let var_0 = func_5(Struct_5(~67636i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 803f, arg_1, _wgslsmith_f_op_f32(107f + arg_1)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-346f, arg_1, arg_1, 913f), vec4<f32>(1508f, arg_1, -992f, arg_1))))), func_4(func_2(), any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(40669u, 32u)], false, global2[_wgslsmith_index_u32(1u, 32u)])), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(83603u, 65667u)), true)), func_2().a.yzw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1342f, 1054f) - vec2<f32>(274f, arg_1)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, 1241f))), select(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 32u)]))))) + vec2<f32>(arg_1, arg_1)));
    return vec4<i32>(func_5(Struct_5(func_4(Struct_3(vec4<u32>(u_input.a.x, 0u, u_input.c, u_input.a.x)), false, 0u, true).e.c, vec4<f32>(var_0.b.x, -1000f, var_0.b.x, -1715f), Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(52260u, 32u)], false, false), -1i, vec3<bool>(global2[_wgslsmith_index_u32(72872u, 32u)], true, global2[_wgslsmith_index_u32(26707u, 32u)]), Struct_1(-10809i, vec3<f32>(1331f, arg_1, -783f), arg_0.x, var_0.c), Struct_1(u_input.d.x, vec3<f32>(arg_1, 602f, var_0.b.x), -2147483647i, arg_0.x))), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(sign(267f)), var_0.b.x)).d, -14799i, arg_0.x, u_input.b) << (vec4<u32>(min(38297u, ~u_input.c), 24212u, _wgslsmith_mod_u32(abs(0u), u_input.c), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 0u, 37989u, u_input.c), ~vec4<u32>(83664u, 0u, 4294967295u, u_input.a.x))) % vec4<u32>(32u));
}

fn func_6(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<i32>) -> Struct_2 {
    global0 = array<vec3<bool>, 6>();
    var var_0 = (_wgslsmith_dot_vec2_u32(~min(vec2<u32>(9417u, u_input.c), vec2<u32>(u_input.c, 22591u)), arg_1.ww) ^ 1u) >> ((abs(u_input.a.x) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1, vec4<u32>(u_input.a.x, 24821u, 5165u, 1u)), vec4<u32>(28340u, ~arg_1.x, 1u, ~arg_1.x))) % 32u);
    var var_1 = func_4(Struct_3(vec4<u32>(58361u, 1u, func_2().a.x, u_input.a.x)), false, (u_input.c | reverseBits(~u_input.a.x)) | (arg_1.x & ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_1.x, 5745u, 4294967295u))), arg_0);
    let var_2 = Struct_3(~(~vec4<u32>(5091u, max(35220u, u_input.c), arg_1.x, arg_1.x)));
    let var_3 = func_5(Struct_5(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d.b.x, 1647f)) + 2887f), _wgslsmith_f_op_f32(abs(var_1.e.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1148f), 196f), Struct_2(vec4<bool>(true, arg_1.x != u_input.c, all(var_1.a.xzz), true), 0i, vec3<bool>(40401i > arg_2.x, !arg_0, any(vec3<bool>(false, false, true))), func_4(var_2, true, arg_1.x, true).e, Struct_1(var_1.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.d.b.x, var_1.e.b.x, var_1.e.b.x))), _wgslsmith_sub_i32(u_input.d.x, 43955i), -1i))), ~(vec3<u32>(max(u_input.a.x, arg_1.x), var_2.a.x & arg_1.x, ~var_2.a.x) & _wgslsmith_add_vec3_u32(~var_2.a.xwz, vec3<u32>(4294967295u, u_input.a.x, 0u))), var_1.e.b.zz);
    return func_4(Struct_3(vec4<u32>(1u, _wgslsmith_clamp_u32(var_2.a.x & var_2.a.x, ~0u, ~4294967295u), ~var_2.a.x, 10568u)), !var_1.a.x, func_2().a.x, all(vec3<bool>(false, var_1.c.x, true)));
}

fn func_7(arg_0: Struct_5, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_0.b)))) + arg_0.b)));
    global3 = array<Struct_4, 8>();
    let var_1 = false;
    let var_2 = func_4(func_2(), !arg_3.x, ~u_input.a.x, 4885i >= _wgslsmith_div_i32((arg_0.a ^ u_input.d.x) & u_input.d.x, 1i)).e;
    global0 = array<vec3<bool>, 6>();
    return Struct_3(abs(~(~vec4<u32>(arg_1, u_input.c, 70021u, u_input.c) ^ (vec4<u32>(29903u, 0u, 1u, u_input.c) << (vec4<u32>(u_input.c, arg_1, arg_1, arg_1) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = func_7(Struct_5(1i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(-1601f, 1000f)), -943f, _wgslsmith_f_op_f32(abs(-1012f)), 942f))), func_6(global2[_wgslsmith_index_u32(~0u, 32u)] && !global2[_wgslsmith_index_u32(u_input.a.x, 32u)], vec4<u32>(_wgslsmith_add_u32(var_0, 30901u), ~4294967295u, _wgslsmith_clamp_u32(4294967295u, var_0, var_0), u_input.a.x), func_1(vec3<i32>(-2147483647i, u_input.d.x, -1i), 1330f))), 1u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(vec4<u32>(1u, u_input.a.x, var_0, 3424u)), false, 4424u, global2[_wgslsmith_index_u32(var_0, 32u)]).e.b.x - -861f)), 956f, -2212f), !(!select(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(var_0, 32u)]), !vec4<bool>(global2[_wgslsmith_index_u32(var_0, 32u)], true, global2[_wgslsmith_index_u32(4294967295u, 32u)], true), global2[_wgslsmith_index_u32(var_0, 32u)] && false)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(vec4<u32>(14325u, 1u, 32244u, u_input.a.x))), _wgslsmith_f_op_f32(-func_6(!global2[_wgslsmith_index_u32(~var_1.a.x, 32u)], var_1.a, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b, 21824i, 35814i, -1i)), min(vec4<i32>(-1i, -55845i, u_input.d.x, 2147483647i), vec4<i32>(u_input.b, u_input.d.x, 0i, -2147483647i)))).d.b.x), -34355i, max(~1u, ~abs(~u_input.a.x)));
}

