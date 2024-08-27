struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(138618u), vec2<bool>(true, false)), Struct_2(Struct_1(35525u), vec2<bool>(false, true)), Struct_2(Struct_1(0u), vec2<bool>(true, true)), Struct_2(Struct_1(89689u), vec2<bool>(true, false)), Struct_2(Struct_1(21133u), vec2<bool>(false, false)), Struct_2(Struct_1(70359u), vec2<bool>(true, true)), Struct_2(Struct_1(1u), vec2<bool>(true, true)), Struct_2(Struct_1(4294967295u), vec2<bool>(true, true)), Struct_2(Struct_1(86318u), vec2<bool>(false, false)), Struct_2(Struct_1(4294967295u), vec2<bool>(true, true)), Struct_2(Struct_1(1u), vec2<bool>(false, true)), Struct_2(Struct_1(0u), vec2<bool>(false, false)), Struct_2(Struct_1(0u), vec2<bool>(true, true)), Struct_2(Struct_1(1u), vec2<bool>(false, true)), Struct_2(Struct_1(1u), vec2<bool>(false, false)), Struct_2(Struct_1(4294967295u), vec2<bool>(false, true)), Struct_2(Struct_1(35447u), vec2<bool>(false, false)), Struct_2(Struct_1(1u), vec2<bool>(true, false)), Struct_2(Struct_1(67000u), vec2<bool>(false, false)), Struct_2(Struct_1(48153u), vec2<bool>(false, true)), Struct_2(Struct_1(4294967295u), vec2<bool>(true, true)), Struct_2(Struct_1(0u), vec2<bool>(true, true)), Struct_2(Struct_1(0u), vec2<bool>(false, false)), Struct_2(Struct_1(43091u), vec2<bool>(false, false)), Struct_2(Struct_1(39827u), vec2<bool>(true, false)), Struct_2(Struct_1(0u), vec2<bool>(true, false)), Struct_2(Struct_1(0u), vec2<bool>(false, false)));

var<private> global2: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_3(global2.a, vec4<u32>(global2.a.a.a, global2.a.a.a, _wgslsmith_mult_u32(global2.a.a.a | firstLeadingBit(0u), ~_wgslsmith_div_u32(136327u, 19618u)), _wgslsmith_sub_u32(0u, firstTrailingBit(~108410u))), global2.a.b.x);
    global0 = array<vec2<bool>, 29>();
    global0 = array<vec2<bool>, 29>();
    global0 = array<vec2<bool>, 29>();
    var var_1 = firstTrailingBit(reverseBits(vec2<i32>(~(-13730i), ~(-2147483647i))));
    return arg_1;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global1 = array<Struct_2, 27>();
    let var_0 = Struct_4(!(!all(vec2<bool>(true, true))), u_input.a.x);
    var var_1 = func_2(!global2.a.b.x, Struct_1(_wgslsmith_dot_vec4_u32(global2.b, global2.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-1027f + _wgslsmith_f_op_f32(step(-481f, arg_0.x))), -736f)));
    var var_2 = _wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(firstTrailingBit(var_0.b), min(_wgslsmith_div_i32(firstTrailingBit(var_0.b), 29231i), firstLeadingBit(1i))));
    var var_3 = Struct_2(func_2(global2.c, global2.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-3252f, -906f), vec2<f32>(arg_0.x, 1093f), var_0.a)) + vec2<f32>(arg_0.x, arg_0.x)))), global2.a.b);
    return -(-var_0.b | select(~reverseBits(-31789i), -abs(var_0.b), all(vec2<bool>(false, false))));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = !global2.c;
    var_0 = global2.c;
    let var_1 = func_2(true, global2.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-661f + -647f)), _wgslsmith_div_f32(632f, _wgslsmith_f_op_f32(f32(-1f) * -621f)))));
    var_0 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-773f, 936f), vec2<f32>(981f, 374f), global0[_wgslsmith_index_u32(3435u, 29u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-501f, -363f) - vec2<f32>(770f, 1005f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-356f, _wgslsmith_f_op_f32(select(945f, 532f, global2.c))))))));
    return func_3(vec3<f32>(-2218f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-887f + var_2.x), 509f, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-736f - var_2.x))))) << (~func_2(global2.c, var_1, vec2<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), 1254f)).a % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-1326f));
    let var_1 = !any(select(vec2<bool>(false, true), vec2<bool>(true, !arg_2), false));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) + _wgslsmith_f_op_f32(f32(-1f) * -1163f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2135f)) + _wgslsmith_f_op_f32(trunc(-783f))), -516f, -483f));
    let var_3 = vec4<bool>(true, any(global2.a.b), any(select(vec3<bool>(true, global2.a.b.x, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, global2.a.b.x), vec3<bool>(true, var_1, true)), any(vec3<bool>(true, global2.a.b.x, arg_3.a)))) || false, arg_2);
    var var_4 = Struct_4(all(var_3), ~0i);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.x;
    var var_1 = func_4(global2.a.a, vec4<i32>(_wgslsmith_mult_i32(-14336i, -1i), u_input.a.x >> (global2.a.a.a % 32u), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), func_1(global2.b)), -u_input.a.x), !global2.c, Struct_4(true, u_input.a.x));
    let var_2 = reverseBits(func_2(global2.a.b.x, Struct_1(28924u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(272f, 354f)))).a);
    let var_3 = Struct_2(func_2(var_1.a, func_2(global2.c, func_2(false, func_2(global2.c, Struct_1(var_2), vec2<f32>(-1409f, -1220f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(309f, -1178f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1042f, -1020f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-168f, -1673f), vec2<f32>(1249f, -1598f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2302f, -755f) * vec2<f32>(-1825f, -790f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(929f, 287f) - vec2<f32>(-102f, 674f)), true))))), !(!global2.a.b));
    global0 = array<vec2<bool>, 29>();
    let var_4 = func_2(var_1.a, global2.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1346f, -2394f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(626f, 1059f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1437f, -1357f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1258f, 432f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(0u ^ var_4.a, 30214u, func_2(var_3.b.x, var_4, vec2<f32>(856f, -1960f)).a, countOneBits(9013u)) ^ vec4<u32>(~var_4.a << (~var_3.a.a % 32u), ~var_4.a | _wgslsmith_mult_u32(0u, 42638u), _wgslsmith_dot_vec4_u32(vec4<u32>(17768u, 0u, global2.a.a.a, 84879u), vec4<u32>(global2.b.x, 1u, var_3.a.a, var_2)) & 1u, abs(reverseBits(4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(464f, -191f)))) * vec2<f32>(_wgslsmith_f_op_f32(729f + -1125f), _wgslsmith_f_op_f32(sign(1000f))))));
}

