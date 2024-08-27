struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(569f, 533f, -295f), vec3<f32>(-170f, 116f, -381f), vec3<f32>(-2098f, 223f, 1245f), vec3<f32>(-1000f, -980f, -1566f), vec3<f32>(668f, 1397f, -2452f), vec3<f32>(-408f, -1690f, -101f), vec3<f32>(-930f, 385f, -1540f), vec3<f32>(-1069f, 393f, -463f), vec3<f32>(1115f, -1000f, 547f), vec3<f32>(263f, -481f, 687f), vec3<f32>(173f, -234f, 123f), vec3<f32>(670f, 1000f, 1000f), vec3<f32>(1408f, -1718f, 1071f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    let var_0 = global1.b;
    global0 = array<Struct_1, 13>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(181f)) + _wgslsmith_f_op_f32(abs(-225f))) * 1517f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1514f + 598f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-846f * -1516f), _wgslsmith_div_f32(-380f, -1253f), true))) - -611f));
    let var_2 = Struct_1(select(vec2<bool>(!(!global1.a.x), global1.a.x), global1.a, select(global1.a, vec2<bool>(true, any(vec3<bool>(true, true, global1.c))), global1.a)), abs(global1.b), global1.a.x);
    global1 = var_2;
    return var_2.c;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c.x, 1u, ~_wgslsmith_div_u32(_wgslsmith_add_u32(global1.b, 21858u), abs(90550u))), 13u)];
    global1 = global0[_wgslsmith_index_u32(arg_0.b, 13u)];
    global1 = Struct_1(vec2<bool>(arg_0.c, all(!vec3<bool>(false, arg_0.a.x, global1.c))), 17158u, !(!func_3()));
    var var_0 = Struct_2(vec4<bool>(true, true, true, true), global1.b, ~(-firstTrailingBit(~vec3<i32>(u_input.a, -2260i, 10451i))));
    let var_1 = all(vec3<bool>(var_0.c.x > (_wgslsmith_mult_i32(38029i, var_0.c.x) >> (~var_0.b % 32u)), !any(vec4<bool>(false, global1.c, arg_0.a.x, false)), false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2605f - -461f) * 854f), arg_1)));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(arg_0.a.x, false), global1.b, true), _wgslsmith_f_op_f32(max(-1235f, 384f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(646f))))))));
    var var_1 = u_input.c.x;
    var var_2 = Struct_2(vec4<bool>(!(true & any(vec3<bool>(true, false, false))), false, (arg_0.a.x | arg_0.a.x) && true, any(select(vec3<bool>(false, true, global1.a.x), !vec3<bool>(false, global1.a.x, global1.a.x), !arg_0.c))), max(4294967295u, 1u), vec3<i32>(select(-u_input.a, abs(max(u_input.a, -36823i)), _wgslsmith_f_op_f32(624f - var_0) < _wgslsmith_f_op_f32(var_0 - var_0)), select(select(20204i, u_input.a, true), u_input.a, arg_0.a.x && any(vec4<bool>(false, false, arg_0.a.x, false))), u_input.a));
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(select(-2147483647i, u_input.a, var_0 < var_0), -u_input.a, i32(-1i) * -2147483647i), u_input.a), firstLeadingBit(var_2.c.x) | ~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -25278i, 0i, u_input.a), vec4<i32>(-13433i, u_input.a, var_2.c.x, u_input.a) >> (vec4<u32>(1u, 47675u, 83780u, 37727u) % vec4<u32>(32u))), u_input.a);
    let var_4 = abs(vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, var_3.x, 0i, var_2.c.x), vec4<i32>(-19337i, 58395i, var_3.x, -2147483647i))), -5142i, _wgslsmith_mod_i32(var_3.x, 27717i) >> (arg_0.b % 32u), -_wgslsmith_mult_i32(var_3.x, -23255i))) & ~(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(var_2.c.x, var_3.x, u_input.a, -46882i), vec4<i32>(8031i, 0i, u_input.a, -2147483647i)));
    return all(vec4<bool>(select(all(var_2.a.wxz), all(select(var_2.a.ywy, var_2.a.zxw, vec3<bool>(arg_0.c, true, true))), arg_0.c), var_2.a.x, global1.a.x, any(!select(arg_0.a, var_2.a.xw, global1.c))));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    global2 = array<vec3<f32>, 13>();
    var var_0 = vec3<u32>(~1u, u_input.c.x << (_wgslsmith_mod_u32(abs(~u_input.b.x), 1u) % 32u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.b, global1.b, 12611u, 4294967295u), ~u_input.b), u_input.c.x), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 85061u), firstLeadingBit(vec2<u32>(1u, u_input.b.x))))));
    let var_1 = 31061u;
    let var_2 = ~min(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), -vec3<i32>(40606i, -27853i, 0i)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -52454i, 1i), vec3<i32>(arg_1, 56206i, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, 0i, -21600i), vec3<i32>(arg_1, 41414i, u_input.a))), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-2147483647i, u_input.a, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(36493i, -8232i, -7590i), vec3<i32>(u_input.a, arg_1, 6770i)))));
    var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c.wzx, vec3<u32>(~global1.b, abs(var_0.x), ~5790u)), ~(~global1.b), ~min(var_1, _wgslsmith_div_u32(1u, var_0.x)));
    return global0[_wgslsmith_index_u32(~0u >> (0u % 32u), 13u)];
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = -max(vec4<i32>(2147483647i, arg_0.x | arg_0.x, 1i & arg_0.x, u_input.a << (29778u % 32u)), vec4<i32>(arg_0.x, firstTrailingBit(arg_0.x), _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i), -arg_0.x)) ^ (vec4<i32>(~1i & u_input.a, -max(25459i, 1i), -2147483647i | _wgslsmith_div_i32(arg_0.x, u_input.a), ~7790i) << (vec4<u32>(arg_1.b, ~_wgslsmith_sub_u32(u_input.b.x, u_input.c.x), firstLeadingBit(~11582u), 30927u) % vec4<u32>(32u)));
    var var_1 = false;
    let var_2 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.b, u_input.b.x, global1.b, 1u) ^ ~vec4<u32>(global1.b, global1.b, arg_1.b, 11002u), u_input.b) ^ firstTrailingBit(0u)), 13u)];
    let var_3 = func_4(vec3<bool>(false, func_1(func_4(vec3<bool>(false, arg_1.a.x, false), -23116i)), true), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0.zw, var_0.xy), u_input.a ^ var_0.x) ^ 2147483647i);
    var_0 = arg_0;
    return Struct_2(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_3.c, false, var_3.a.x), vec4<bool>(true, var_3.c, false, true), vec4<bool>(true, var_3.a.x, var_2.a.x, arg_1.a.x)), arg_1.a.x && true)), var_3.b, abs(vec3<i32>(firstLeadingBit(-2147483647i), -reverseBits(arg_0.x), ~(~u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 13>();
    var var_0 = func_5(firstLeadingBit(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -18760i, -126i, -2147483647i), -vec4<i32>(-12578i, u_input.a, -5809i, -16709i), -vec4<i32>(-21272i, 1i, u_input.a, u_input.a)))), func_4(vec3<bool>(func_1(Struct_1(global1.a, 0u, global1.a.x)), true, true), -u_input.a));
    let var_1 = func_5(vec4<i32>((u_input.a ^ ~56125i) & 1i, -1i, var_0.c.x, -1i & var_0.c.x), global0[_wgslsmith_index_u32(1u, 13u)]);
    var var_2 = !any(vec4<bool>(any(vec3<bool>(false, false, false)), !(!global1.a.x), func_4(vec3<bool>(false, false, true), abs(-2147483647i)).a.x, select(1u > global1.b, false, var_0.a.x)));
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1186f), -2825f, _wgslsmith_f_op_f32(f32(-1f) * -1489f), -1000f)))), max(~u_input.c, vec4<u32>(reverseBits(var_0.b), _wgslsmith_mult_u32(0u, 33338u), 59940u, global1.b) ^ countOneBits(vec4<u32>(4294967295u, var_0.b, 4294967295u, u_input.b.x))), u_input.c.yy, ~vec4<i32>(u_input.a, 53496i, select(_wgslsmith_mult_i32(u_input.a, var_1.c.x), ~var_1.c.x, true), -_wgslsmith_div_i32(-59916i, -46904i)));
}

