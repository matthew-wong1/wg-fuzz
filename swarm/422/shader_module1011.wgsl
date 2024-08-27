struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec2<f32>(-1871f, -123f)), Struct_3(vec2<f32>(-467f, 520f)), Struct_3(vec2<f32>(1046f, 1399f)), Struct_3(vec2<f32>(-812f, -1460f)), Struct_3(vec2<f32>(422f, -715f)), Struct_3(vec2<f32>(-107f, -198f)), Struct_3(vec2<f32>(198f, -1000f)), Struct_3(vec2<f32>(-177f, -1359f)), Struct_3(vec2<f32>(-257f, -572f)), Struct_3(vec2<f32>(272f, -1358f)), Struct_3(vec2<f32>(794f, -1501f)), Struct_3(vec2<f32>(293f, -168f)), Struct_3(vec2<f32>(-944f, -923f)), Struct_3(vec2<f32>(-2750f, 1000f)), Struct_3(vec2<f32>(-509f, 1426f)), Struct_3(vec2<f32>(-498f, -182f)), Struct_3(vec2<f32>(-1000f, 1000f)), Struct_3(vec2<f32>(-1367f, 481f)), Struct_3(vec2<f32>(1000f, -1332f)), Struct_3(vec2<f32>(-1987f, -396f)), Struct_3(vec2<f32>(1284f, 711f)), Struct_3(vec2<f32>(1000f, -371f)), Struct_3(vec2<f32>(363f, -1648f)), Struct_3(vec2<f32>(-337f, 903f)), Struct_3(vec2<f32>(1188f, -2077f)));

var<private> global1: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec2<f32>(-1303f, -943f)), Struct_3(vec2<f32>(-638f, -666f)), Struct_3(vec2<f32>(-1041f, -273f)), Struct_3(vec2<f32>(291f, -621f)), Struct_3(vec2<f32>(-642f, -661f)), Struct_3(vec2<f32>(-948f, 711f)), Struct_3(vec2<f32>(830f, -398f)), Struct_3(vec2<f32>(1000f, 104f)), Struct_3(vec2<f32>(1008f, 269f)), Struct_3(vec2<f32>(1196f, 314f)));

var<private> global2: array<vec2<bool>, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(arg_0.yx, !(false && arg_1), vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(select(-1000f, arg_2.a, arg_1 | any(vec4<bool>(arg_1, true, arg_1, false))))));
    var var_1 = Struct_1(vec2<u32>(var_0.a.x >> (~1u % 32u), firstTrailingBit(4294967295u)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a, -1161f), var_0.c)), var_0.c) - var_0.c));
    var var_2 = -635f;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-369f, -1000f), var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1388f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(364f, -698f, var_1.c.x), vec3<f32>(arg_2.a, var_0.c.x, -471f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-998f, 638f, var_1.c.x))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_0.c.x, 623f) + vec3<f32>(1000f, 1172f, arg_2.a)) + vec3<f32>(737f, var_1.c.x, arg_2.a)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a)), _wgslsmith_f_op_f32(-arg_2.a), arg_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, var_0.c.x, var_1.c.x), vec3<f32>(var_1.c.x, 333f, var_0.c.x))))));
    var var_4 = vec3<bool>(true, !(arg_1 & (arg_1 == any(vec2<bool>(var_0.b, false)))), ~83823u != var_1.a.x);
    return false;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> Struct_2 {
    global0 = array<Struct_3, 25>();
    var var_0 = global0[_wgslsmith_index_u32(~u_input.b, 25u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(round(var_0.a.x)));
    var var_2 = _wgslsmith_mult_vec4_i32(select(-vec4<i32>(u_input.a.x, -2147483647i, -u_input.c.x, ~(-1494i)), ~(~(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, 44503i) | vec4<i32>(17218i, u_input.a.x, -26236i, 4827i))), vec4<bool>(any(global2[_wgslsmith_index_u32(4294967295u, 6u)]), func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, 1u, 9791u)), false, Struct_2(var_1.a)), select(true, false, true), arg_0.x < arg_0.x)), ~(-vec4<i32>(u_input.c.x, arg_0.x, -19002i, countOneBits(2147483647i))));
    var var_3 = select(select(vec4<bool>(true, func_3(reverseBits(vec3<u32>(4294967295u, u_input.b, 45613u)), true, Struct_2(-2123f)), true, any(select(global2[_wgslsmith_index_u32(u_input.b, 6u)], vec2<bool>(true, true), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true, all(vec3<bool>(false, false, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true)))), !select(vec4<bool>(any(vec3<bool>(true, true, false)), true, false, false), vec4<bool>(true, 0u <= u_input.b, var_0.a.x < arg_1.x, true), arg_0.x > (u_input.a.x >> (1u % 32u))), max((u_input.b ^ 0u) | ~0u, firstLeadingBit(12034u)) < ~47949u);
    return Struct_2(1491f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = ~vec4<i32>(u_input.c.x, u_input.c.x, _wgslsmith_mult_i32(u_input.a.x, countOneBits(u_input.a.x)), ~u_input.a.x);
    var var_1 = arg_1;
    global1 = array<Struct_3, 10>();
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_1.c)), var_1.c, select(!arg_2, vec2<bool>(select(arg_1.b, false, var_2), any(vec2<bool>(var_1.b, var_2))), arg_2))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1550f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(1096f * 1151f))))));
    return arg_0;
}

fn func_1() -> Struct_2 {
    global2 = array<vec2<bool>, 6>();
    var var_0 = min(~0u, ~max(select(90710u, 4294967295u, false), u_input.b)) | firstLeadingBit(29914u);
    var var_1 = (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 0u, 0u, 4294967295u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u), vec4<u32>(u_input.b, u_input.b, 42087u, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)))) << (u_input.b % 32u)) < (u_input.b << (~(~u_input.b) % 32u));
    var var_2 = true;
    var var_3 = vec4<i32>(0i, 1i, countOneBits(40543i) << (0u % 32u), -firstTrailingBit(u_input.c.x));
    return func_4(func_2(firstTrailingBit(u_input.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(584f, 315f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -303f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1879f, -114f) - vec2<f32>(1526f, 1158f)))))), Struct_1(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(53876u, u_input.b), vec2<u32>(3279u, u_input.b))), true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-274f, 203f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1331f, -533f)))), select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), 6u)], !global2[_wgslsmith_index_u32(22895u, 6u)], !global2[_wgslsmith_index_u32(4294967295u, 6u)])))), select(!global2[_wgslsmith_index_u32(29969u, 6u)], !select(select(vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.b, 6u)], false), global2[_wgslsmith_index_u32(~83610u, 6u)], vec2<bool>(true, false)), global2[_wgslsmith_index_u32(~1u, 6u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(~vec2<u32>(u_input.b, _wgslsmith_clamp_u32(~u_input.b, u_input.b, u_input.b)), true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -1580f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1306f, var_0.a))), vec2<f32>(_wgslsmith_f_op_f32(var_0.a + -1000f), -907f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(364f, var_0.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 1000f)))), select(global2[_wgslsmith_index_u32(19870u, 6u)], select(select(vec2<bool>(false, true), global2[_wgslsmith_index_u32(u_input.b, 6u)], vec2<bool>(false, false)), !global2[_wgslsmith_index_u32(1997u, 6u)], true), vec2<bool>(true, true)))));
    let var_2 = u_input.c.x;
    global0 = array<Struct_3, 25>();
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 11999u, u_input.b), _wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.b, u_input.b, 59442u), vec3<u32>(4294967295u, u_input.b, var_1.a.x)), vec3<u32>(0u, 41714u, 4294967295u))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4722u, u_input.b, 41084u, var_1.a.x), vec4<u32>(33592u, u_input.b, 4294967295u, 953u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, u_input.b, 1u, 1u), vec4<u32>(0u, var_1.a.x, 4272u, var_1.a.x)), ~u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_1.c.x, 983f), vec3<f32>(464f, 1608f, var_1.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -613f, var_0.a)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-336f, -417f, -388f), vec3<f32>(var_1.c.x, 538f, var_0.a)))))), ~reverseBits(max(u_input.c.x, var_2) | -2147483647i));
}

