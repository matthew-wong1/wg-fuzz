struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 93182u;

var<private> global1: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(49068i, 1i, -1i, 16886i), vec4<i32>(0i, -15794i, -15692i, 2147483647i), vec4<i32>(0i, 3097i, 1i, -18170i), vec4<i32>(34001i, -3826i, -44103i, 0i), vec4<i32>(-14120i, -29716i, 24049i, 0i), vec4<i32>(30493i, 49933i, -37707i, 0i), vec4<i32>(-20202i, 73697i, 15537i, 28810i), vec4<i32>(35926i, i32(-2147483648), 0i, 0i), vec4<i32>(2147483647i, 2147483647i, 21794i, 9561i), vec4<i32>(-1i, -1037i, 28431i, i32(-2147483648)), vec4<i32>(-41162i, i32(-2147483648), 0i, 3950i), vec4<i32>(2147483647i, -8530i, -30836i, 40256i), vec4<i32>(-30666i, 19734i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 0i, 16526i, -651i), vec4<i32>(1i, 2147483647i, 16877i, 1i), vec4<i32>(i32(-2147483648), -36027i, 10010i, 0i), vec4<i32>(1i, 0i, 2147483647i, 10470i), vec4<i32>(i32(-2147483648), 0i, 12413i, 2147483647i), vec4<i32>(2147483647i, 0i, 1i, 2011i), vec4<i32>(13797i, -32197i, -61657i, -1i), vec4<i32>(-20900i, -70506i, 62140i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), 12898i, -11992i), vec4<i32>(0i, -1i, -20612i, -10707i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -1i), vec4<i32>(-1i, i32(-2147483648), 1i, 1i), vec4<i32>(21297i, -25528i, -50378i, 1i), vec4<i32>(32848i, -1i, -1i, 6011i), vec4<i32>(2147483647i, 26530i, 1i, -1i), vec4<i32>(1i, 0i, -52104i, i32(-2147483648)), vec4<i32>(9369i, -33578i, 10963i, -38986i));

var<private> global2: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(57815u, 20017u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 106524u), vec2<u32>(31814u, 0u), vec2<u32>(30512u, 7520u), vec2<u32>(0u, 42724u), vec2<u32>(37486u, 0u), vec2<u32>(1489u, 1u), vec2<u32>(4294967295u, 14883u), vec2<u32>(4294967295u, 0u), vec2<u32>(54966u, 16237u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = ~(810u >> (u_input.c % 32u)) >= u_input.c;
    global2 = array<vec2<u32>, 11>();
    let var_1 = Struct_3(vec3<bool>(arg_0.a.x, true, all(!(!vec3<bool>(arg_0.a.x, arg_0.a.x, false)))));
    var var_2 = abs(abs(-firstTrailingBit(i32(-1i) * -2147483647i)));
    global0 = ~0u;
    return ~(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, 4294967295u, 4294967295u) << (vec3<u32>(4294967295u, 81981u, 21261u) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(17639u, 8793u, 2046u), vec3<u32>(u_input.c, 0u, 12521u))) & _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.c, 37236u, u_input.c ^ 54131u), max(countOneBits(vec3<u32>(4294967295u, 1u, 33247u)), min(vec3<u32>(1u, u_input.c, 4635u), vec3<u32>(u_input.c, u_input.c, u_input.c)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-249f, -263f, 1463f), vec3<f32>(166f, 588f, -1667f))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-682f, -377f, 452f))))))));
    global2 = array<vec2<u32>, 11>();
    var var_1 = Struct_3(select(vec3<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false))), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), true), !vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, true, any(vec3<bool>(true, true, true)))));
    var_1 = Struct_3(select(select(!var_1.a, select(select(vec3<bool>(false, false, false), var_1.a, var_1.a), !var_1.a, false), true), vec3<bool>(false, -arg_0.x < -9070i, all(!var_1.a.xx)), 734f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-112f)) * -177f)));
    var var_2 = Struct_1(!vec2<bool>(var_1.a.x, true), select(select(_wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(36312u, 30u)] | u_input.a, vec4<i32>(u_input.b, -2147483647i, arg_0.x, u_input.b)), global1[_wgslsmith_index_u32(~arg_1.x, 30u)], select(!vec4<bool>(false, false, var_1.a.x, var_1.a.x), vec4<bool>(true, var_1.a.x, false, var_1.a.x), select(vec4<bool>(true, true, var_1.a.x, false), vec4<bool>(false, var_1.a.x, false, false), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)))), _wgslsmith_mod_vec4_i32(~(u_input.a << (vec4<u32>(u_input.c, 77717u, u_input.c, arg_1.x) % vec4<u32>(32u))), ~(vec4<i32>(-2147483647i, arg_0.x, 19464i, arg_0.x) & vec4<i32>(u_input.b, arg_0.x, u_input.b, -19557i))), !any(vec2<bool>(true, var_1.a.x))), abs(reverseBits(-2147483647i)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-294f * -1181f))), var_0.x, _wgslsmith_f_op_f32(-583f * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1020f, var_0.x, 989f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_1.a.x, var_1.a.x, true, true))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(241f, var_0.x, -241f, var_0.x))))))));
    return func_2(Struct_1(!(!vec2<bool>(var_1.a.x, false)), vec4<i32>(u_input.b, -72332i, 12956i, var_2.c), reverseBits(_wgslsmith_add_i32(u_input.a.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(var_2.d)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_2.d, vec4<f32>(-268f, var_0.x, 218f, -366f)), var_2.d, var_1.a.x))))).x;
}

fn func_4(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = 1u;
    var_0 = arg_0.x;
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(~(vec2<u32>(32774u, arg_0.x) << (arg_0.xy % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(~global2[_wgslsmith_index_u32(0u, 11u)], select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), global2[_wgslsmith_index_u32(0u, 11u)]), arg_0.yy, true))), global2[_wgslsmith_index_u32(arg_0.x, 11u)]);
    var_0 = u_input.c;
    var var_1 = Struct_3(!vec3<bool>(!all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(ceil(-600f)), any(vec4<bool>(false, false, false, true)) | false));
    return Struct_3(select(vec3<bool>(any(vec3<bool>(var_1.a.x, true, var_1.a.x)), true, all(vec2<bool>(false, true))), select(!var_1.a, var_1.a, var_1.a), true));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1915f * -308f)))));
    var var_1 = ~arg_0.b.x;
    let var_2 = func_4(~(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, arg_0.a.x, 76937u), func_2(Struct_1(vec2<bool>(false, true), u_input.a, 2147483647i, vec4<f32>(-291f, 599f, -278f, -233f)))) | vec3<u32>(func_3(u_input.a.wwz, vec3<u32>(arg_0.a.x, arg_0.a.x, 49204u)), arg_0.a.x, 29070u)));
    let var_3 = -539f;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0)));
    return Struct_3(select(select(func_4(firstTrailingBit(vec3<u32>(1u, arg_0.a.x, 93139u))).a, func_4(~vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)).a, true), func_4(~vec3<u32>(u_input.c, 39183u, 4294967295u)).a, var_2.a.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = Struct_2(func_2(Struct_1(vec2<bool>(arg_2, true), select(arg_1.b, vec4<i32>(-29702i, arg_1.c, u_input.a.x, arg_1.c), vec4<bool>(true, true, true, arg_0.a.x)), max(-1i, u_input.a.x), vec4<f32>(1000f, arg_1.d.x, 692f, 822f))).yx | global2[_wgslsmith_index_u32(~(~u_input.c) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c)), 11u)], _wgslsmith_mod_vec3_i32(u_input.a.xwy ^ vec3<i32>(0i & u_input.a.x, _wgslsmith_div_i32(1i, arg_1.b.x), -arg_1.c), vec3<i32>(-49983i | firstLeadingBit(u_input.b), ~(-arg_1.b.x), 0i)));
    var var_1 = _wgslsmith_mult_i32(-29363i >> ((94943u >> (func_2(Struct_1(vec2<bool>(arg_3, arg_2), arg_1.b, 28425i, arg_1.d)).x % 32u)) % 32u), var_0.b.x);
    var var_2 = arg_2;
    var var_3 = arg_1;
    var var_4 = 0i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_3.d.x, arg_1.d.x)), _wgslsmith_f_op_f32(sign(-2812f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 11>();
    let var_0 = Struct_1(vec2<bool>(false, true), _wgslsmith_clamp_vec4_i32((vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x) | u_input.a) >> ((abs(vec4<u32>(10149u, 2669u, 44346u, u_input.c)) | (vec4<u32>(1u, 64246u, 388u, u_input.c) << (vec4<u32>(8271u, 46029u, u_input.c, u_input.c) % vec4<u32>(32u)))) % vec4<u32>(32u)), reverseBits(vec4<i32>(~11489i, firstTrailingBit(u_input.a.x), max(1i, -1i), ~u_input.a.x)), -vec4<i32>(u_input.a.x, max(u_input.a.x, -664i), u_input.b, ~59851i)), -11916i, vec4<f32>(-328f, _wgslsmith_f_op_f32(func_5(func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.c, 11u)], vec3<i32>(u_input.b, -66066i, 59679i))), Struct_1(func_4(vec3<u32>(u_input.c, 39128u, 17414u)).a.xy, vec4<i32>(u_input.b, 1i, u_input.a.x, -16968i), countOneBits(-45617i), vec4<f32>(-625f, -462f, 722f, 186f)), true, true)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-235f + -1666f))) - -295f)));
    let var_1 = -var_0.b.zx;
    let var_2 = func_4(func_2(var_0));
    var var_3 = Struct_1(!func_4(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(0u, u_input.c, u_input.c))).a.xy, select(~u_input.a << (vec4<u32>(u_input.c, 4294967295u, ~u_input.c, u_input.c) % vec4<u32>(32u)), u_input.a, !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, var_2.a.x, true), vec4<bool>(false, true, true, false)))), -((0i | _wgslsmith_sub_i32(u_input.b, var_0.c)) << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c, 0u, 65939u, 40532u), vec4<u32>(49766u, 13224u, 1u, 4294967295u), false), ~vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c)) % 32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, 540f, var_0.d.x, -1461f) * vec4<f32>(var_0.d.x, 1254f, var_0.d.x, -1659f)) + vec4<f32>(848f, var_0.d.x, var_0.d.x, 422f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0.d)))))));
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(reverseBits(global2[_wgslsmith_index_u32(4294967295u, 11u)]), ~global2[_wgslsmith_index_u32(7153u, 11u)]), var_3.d);
}

