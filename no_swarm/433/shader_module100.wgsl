struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(4294967295u, 23712u, 278u));

var<private> global2: array<vec2<f32>, 30>;

var<private> global3: array<bool, 2> = array<bool, 2>(true, false);

var<private> global4: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = u_input.a;
    return select(select(!select(vec2<bool>(false, true), select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(1351u, 2u)]), true), true), select(vec2<bool>(32054u < arg_2.b.x, select(global3[_wgslsmith_index_u32(61339u, 2u)], global0.a, true)), !vec2<bool>(global0.a, global0.a), !select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(13280u, 2u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(18300u, 2u)]), vec2<bool>(global0.a, false))), all(select(vec2<bool>(true, global0.a), !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], false), select(vec2<bool>(true, true), vec2<bool>(false, global0.a), false)))), vec2<bool>(true || global0.a, any(select(vec2<bool>(global3[_wgslsmith_index_u32(arg_2.b.x, 2u)], global0.a), vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 2u)]), true))), !(!(true || global3[_wgslsmith_index_u32(~1u, 2u)])));
}

fn func_2() -> Struct_3 {
    global1 = Struct_2(~select(global1.a, vec3<u32>(0u | u_input.a, 1u, 4294967295u), global4[_wgslsmith_index_u32(~(u_input.a & 81319u), 28u)]));
    var var_0 = vec4<u32>((_wgslsmith_sub_u32(14450u, _wgslsmith_clamp_u32(u_input.a, global1.a.x, 59323u)) ^ _wgslsmith_mod_u32(~global1.a.x, global1.a.x)) & u_input.a, 32263u, 1u, _wgslsmith_dot_vec3_u32(global1.a, vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global1.a.x, 39689u, 4294967295u), ~vec4<u32>(u_input.a, global1.a.x, u_input.a, 4294967295u)), 94747u)));
    global2 = array<vec2<f32>, 30>();
    let var_1 = Struct_2((_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 21985u, var_0.x), global1.a) >> (abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, global1.a.x, var_0.x), vec3<u32>(4294967295u, 1u, 17553u))) % vec3<u32>(32u))) | abs(global1.a));
    var var_2 = !select(!vec2<bool>(277f > global0.c.x, false), vec2<bool>(!(global0.d == -2147483647i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(17902u, 9717u), global1.a.zx >> (vec2<u32>(global1.a.x, var_1.a.x) % vec2<u32>(32u))), 2u)]), !select(vec2<bool>(global0.a, global3[_wgslsmith_index_u32(var_0.x, 2u)]), func_3(vec2<i32>(-7292i, global0.d), vec2<u32>(0u, u_input.a), Struct_3(global0.c.x, vec4<u32>(u_input.a, var_1.a.x, u_input.a, u_input.a))), global0.a));
    return Struct_3(-861f, _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(var_0.x), var_0.x, 1u, 6636u), ~min(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 13654u, 78514u, u_input.a), vec4<u32>(var_0.x, u_input.a, u_input.a, 73392u)), firstLeadingBit(vec4<u32>(u_input.a, 14668u, global1.a.x, global1.a.x)))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    let var_0 = arg_1;
    var var_1 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(max(1i, -8148i), (global0.d >> (1u % 32u)) >> (var_0.b.x % 32u)), firstTrailingBit(2147483647i), -countOneBits(min(global0.d, 0i))), 19117i, global0.d);
    global4 = array<vec3<bool>, 28>();
    global4 = array<vec3<bool>, 28>();
    global2 = array<vec2<f32>, 30>();
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    global0 = Struct_1(func_3(vec2<i32>(0i, -59829i), countOneBits(countOneBits(~arg_1.a.yz)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -582f), arg_0.b)).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-566f, 1453f)) * arg_0.a) + _wgslsmith_f_op_f32(-global0.c.x)))), _wgslsmith_f_op_vec3_f32(abs(global0.c)), _wgslsmith_div_i32(global0.d, _wgslsmith_add_i32(global0.d, global0.d)));
    let var_0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_0.b.x, 57317u), 58228u & arg_1.a.x, ~57651u), arg_0.b.x), firstTrailingBit(u_input.a), u_input.a, 1u) | _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.x, ~arg_0.b.x >> (_wgslsmith_mod_u32(0u, arg_1.a.x) % 32u), _wgslsmith_mod_u32(17035u >> (u_input.a % 32u), ~72912u), min(0u, 0u)), min(_wgslsmith_mod_vec4_u32(arg_0.b, ~vec4<u32>(u_input.a, arg_0.b.x, global1.a.x, 1u)), ~arg_0.b >> (func_4(global0.a, arg_0).b % vec4<u32>(32u))));
    global3 = array<bool, 2>();
    global1 = arg_1;
    global2 = array<vec2<f32>, 30>();
    return Struct_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -837f))), _wgslsmith_f_op_f32(-314f + 335f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2389f, -1020f)) * global0.b))), _wgslsmith_f_op_f32(floor(336f)), _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(150f)))))), global0.c.xz, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-100f + _wgslsmith_f_op_f32(global0.c.x + -1391f)))), _wgslsmith_f_op_f32(-func_2().a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3387f + global0.c.x) * 552f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + _wgslsmith_f_op_f32(select(-1378f, -661f, arg_2)))))), !(any(!vec2<bool>(arg_2, global3[_wgslsmith_index_u32(var_0.x, 2u)])) | all(select(vec3<bool>(false, true, arg_2), global4[_wgslsmith_index_u32(u_input.a, 28u)], vec3<bool>(true, false, global0.a)))), _wgslsmith_dot_vec3_i32(~vec3<i32>(abs(-2147483647i), 7730i, ~(-2147483647i)), select(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(global0.d, -22487i, global0.d)), -vec3<i32>(10779i, global0.d, global0.d)), _wgslsmith_mult_vec3_i32(~vec3<i32>(27620i, global0.d, global0.d), vec3<i32>(-1i, 2147483647i, global0.d)), arg_2)));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> vec4<f32> {
    let var_0 = global1.a.yz;
    global3 = array<bool, 2>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(2010f, global0.b, 386f, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-394f - -2161f))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.b, -1488f), 258f)), _wgslsmith_f_op_f32(floor(-738f)), _wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(-global0.c.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-423f, -1123f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1722f, global0.b) - arg_0.xx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, global0.b) - vec2<f32>(410f, -2827f)))) - global0.c.xz), select(vec2<bool>(arg_1 && false, false), vec2<bool>(all(global4[_wgslsmith_index_u32(4294967295u, 28u)]), any(vec2<bool>(global0.a, arg_2))), !vec2<bool>(true, global3[_wgslsmith_index_u32(global1.a.x, 2u)])))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(444f, 382f), _wgslsmith_div_f32(global0.c.x, arg_0.x), any(global4[_wgslsmith_index_u32(var_0.x, 28u)]))), arg_0.x, -731f, global0.c.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b, global0.c.x, global0.c.x, -192f), vec4<f32>(899f, arg_0.x, global0.c.x, 1000f)), vec4<f32>(-141f, -750f, arg_0.x, arg_0.x), arg_1)))), !(!(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.x, global1.a.x), vec3<u32>(var_0.x, global1.a.x, 4294967295u)) > ~1u)), 1i);
    let var_2 = func_5(func_4(arg_1, func_2()), Struct_2(vec3<u32>(var_0.x, ~abs(global1.a.x), _wgslsmith_sub_u32(func_2().b.x, u_input.a))), select(true, false, any(!global4[_wgslsmith_index_u32(func_2().b.x, 28u)])));
    var_1 = func_5(Struct_3(var_2.c.x, vec4<u32>(global1.a.x, _wgslsmith_clamp_u32(~var_0.x, global1.a.x, ~1u), 1u, global1.a.x)), Struct_2(global1.a), !(!(!all(vec4<bool>(true, arg_1, arg_1, false)))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-395f, global0.b);
    global4 = array<vec3<bool>, 28>();
    var var_1 = true;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f - -745f))) < var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), global0.c, countOneBits(_wgslsmith_div_i32(global0.d, global0.d)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(245f, var_0.x, 547f, global0.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 317f, 1000f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global0.c, false, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, var_0.x, -1483f, 2013f) + vec4<f32>(global0.c.x, 216f, 868f, 1186f)))), global0.c.xy, vec4<f32>(-2693f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 836f), func_5(func_2(), Struct_2(~global1.a), global0.a | select(true, true, false)).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1989f + -908f))) * var_0.x)), global3[_wgslsmith_index_u32(~func_2().b.x, 2u)], global0.d);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - -464f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1120f * global0.c.x) + func_2().a)) * _wgslsmith_f_op_f32(-255f + _wgslsmith_f_op_f32(max(var_2.a.x, _wgslsmith_div_f32(var_0.x, -2098f))))), _wgslsmith_f_op_f32(floor(var_0.x)));
    let var_3 = Struct_4(var_2.c, vec2<f32>(_wgslsmith_f_op_f32(-1528f * 690f), -272f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1037f, global0.b, -293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(585f + 210f))))), func_3(vec2<i32>(global0.d, ~_wgslsmith_mod_i32(global0.d, -2147483647i)), ~(~vec2<u32>(global1.a.x, u_input.a)), func_2()).x, -50408i);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.x & abs(u_input.a & _wgslsmith_dot_vec3_u32(vec3<u32>(19111u, global1.a.x, 100620u), vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c.yz * var_3.b)) - var_3.c.xz)), func_2().b.x, firstTrailingBit(vec3<u32>(global1.a.x, u_input.a, 956u)));
}

