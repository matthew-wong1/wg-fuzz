struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(Struct_1(72252u, vec4<f32>(471f, -614f, 174f, -222f)), vec4<bool>(false, true, false, false), Struct_1(17343u, vec4<f32>(-835f, 763f, -290f, -597f)), Struct_2(false)), Struct_5(Struct_1(0u, vec4<f32>(-607f, -358f, 875f, -1056f)), vec4<bool>(true, false, true, true), Struct_1(12856u, vec4<f32>(-502f, 1142f, -1298f, -1000f)), Struct_2(false)));

var<private> global1: Struct_4 = Struct_4(1000f, -427f);

var<private> global2: f32;

var<private> global3: array<f32, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> vec2<u32> {
    let var_0 = !(global3[_wgslsmith_index_u32(~u_input.c & 1u, 22u)] != _wgslsmith_f_op_f32(-global1.a));
    return ~vec2<u32>(u_input.c, 16681u);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_3(max(-1i, -5448i), true, Struct_2(false), Struct_1(17111u, arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-386f, 574f))))));
    var var_1 = abs(firstTrailingBit(_wgslsmith_add_i32(-63672i, _wgslsmith_mult_i32(~1i, -3244i))));
    global1 = arg_0;
    var var_2 = arg_0;
    var_2 = arg_0;
    return !(!vec4<bool>(!(!var_0.c.a), var_0.a > -33579i, _wgslsmith_mult_u32(6764u, 0u) > (arg_2.a | var_0.d.a), !(601f <= var_2.a)));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = vec2<bool>(any(!select(vec2<bool>(true, arg_1), vec2<bool>(false, true), false)), arg_1);
    global3 = array<f32, 22>();
    global0 = array<Struct_5, 2>();
    var var_1 = Struct_3(_wgslsmith_div_i32(_wgslsmith_sub_i32(-7394i, select(u_input.b >> (u_input.d % 32u), 0i, false)), u_input.b), -2147483647i < (select(0i, -u_input.a, arg_1 || var_0.x) | max(u_input.a, u_input.a)), Struct_2(select(false, true, false)), Struct_1(89721u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 612f, arg_0, global3[_wgslsmith_index_u32(u_input.d, 22u)]), vec4<f32>(835f, global3[_wgslsmith_index_u32(u_input.d, 22u)], global1.b, global1.a)))) * vec4<f32>(_wgslsmith_f_op_f32(arg_0 * global3[_wgslsmith_index_u32(u_input.d, 22u)]), _wgslsmith_f_op_f32(-671f * global1.b), _wgslsmith_f_op_f32(sign(-586f)), -1000f))), _wgslsmith_f_op_f32(select(-245f, _wgslsmith_f_op_f32(ceil(1662f)), any(func_3(Struct_4(-998f, global1.a), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 22u)]), Struct_1(64075u, vec4<f32>(global1.a, 1160f, arg_0, global3[_wgslsmith_index_u32(u_input.c, 22u)])), _wgslsmith_f_op_f32(sign(global1.b)))))));
    global0 = array<Struct_5, 2>();
    return var_1.c;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32) -> Struct_3 {
    let var_0 = vec2<bool>(false, arg_2 != _wgslsmith_f_op_f32(1443f * 569f));
    let var_1 = select(_wgslsmith_mult_vec2_u32(arg_1.yy ^ arg_1.xx, ~(~countOneBits(arg_1.yy))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.yy, vec2<u32>(4294967295u, 4294967295u)), arg_1.yy), vec2<u32>(1u, arg_0.d.a)), arg_0.d.a), select(!(!var_0), var_0, select(select(var_0, vec2<bool>(var_0.x, arg_0.b), var_0), !(!var_0), var_0)));
    let var_2 = global0[_wgslsmith_index_u32(var_1.x, 2u)];
    global2 = _wgslsmith_f_op_f32(-arg_0.e);
    var var_3 = Struct_2(!(!(true | var_0.x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, -6104i), 1i), -19091i, u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -17290i), firstLeadingBit(vec2<i32>(-32016i, -2147483647i))), -vec2<i32>(u_input.a, 0i) << (func_1() % vec2<u32>(32u))));
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 2u)];
    let var_2 = func_4(Struct_3(_wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(~(-38196i), -62093i)), ~(-33089i) < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, var_0.x), vec4<i32>(1i, var_0.x, u_input.b, u_input.b)), func_2(var_1.a.b.x, any(vec2<bool>(true, true))), Struct_1(_wgslsmith_div_u32(1u, ~0u), var_1.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1077f * global3[_wgslsmith_index_u32(var_1.a.a, 22u)]) - _wgslsmith_f_op_f32(round(1476f)))), min(vec3<u32>(~13961u, 6743u, ~20089u), ~vec3<u32>(u_input.d, _wgslsmith_mod_u32(27825u, var_1.c.a), u_input.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.b.x)) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 22u)] - global3[_wgslsmith_index_u32(4294967295u, 22u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(277f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.b.x))) - _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(24258u, 22u)], 252f)))));
    var var_3 = func_4(Struct_3(var_2.a, false, var_1.d, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.e)))), vec3<u32>(0u, ~firstTrailingBit(_wgslsmith_sub_u32(u_input.d, 4294967295u)), countOneBits(max(u_input.d, ~var_1.c.a))), -1039f).d;
    let var_4 = false;
    let var_5 = 1u;
    var var_6 = ~(~vec3<u32>(0u, ~var_3.a << (~1u % 32u), 1u));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.b.x, _wgslsmith_div_f32(var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b.x, _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(var_6.x, 22u)])))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_3.b.x)), _wgslsmith_f_op_f32(ceil(1216f)), -1486f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-197f, 144f, 1691f) * var_1.a.b.wyw) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-678f, var_3.b.x, var_2.d.b.x))))), vec3<u32>(func_1().x, u_input.c, 1u), vec4<i32>(var_2.a | (~2147483647i ^ ~var_2.a), _wgslsmith_clamp_i32(-42268i, _wgslsmith_add_i32(var_2.a, -41370i) << (~28767u % 32u), max(27360i, var_2.a | var_0.x)), ~func_4(Struct_3(var_0.x, true, var_1.d, var_2.d, var_1.a.b.x), vec3<u32>(u_input.d, 10833u, 24731u) << (vec3<u32>(var_2.d.a, 4294967295u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(var_1.c.b.x * global1.a)).a, select(15314i, abs(1i), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.e, 829f)))))));
}

