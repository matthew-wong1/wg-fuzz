struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(103800u, 24050u, 65681u), vec3<u32>(41914u, 115316u, 0u), vec3<u32>(4294967295u, 8266u, 1u), vec3<u32>(13968u, 67140u, 1u), vec3<u32>(1u, 1u, 80009u), vec3<u32>(41191u, 0u, 40356u));

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(0u, 12112u, 10547u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 35075u, 17054u, 4294967295u), vec4<u32>(98790u, 1u, 35149u, 0u), vec4<u32>(14610u, 4294967295u, 0u, 18200u), vec4<u32>(4294967295u, 1u, 4294967295u, 47644u), vec4<u32>(4294967295u, 13441u, 74897u, 1149u), vec4<u32>(104338u, 4294967295u, 0u, 69932u), vec4<u32>(21149u, 21755u, 35703u, 1u), vec4<u32>(50572u, 1u, 52042u, 80780u), vec4<u32>(0u, 4294967295u, 4294967295u, 20210u), vec4<u32>(59560u, 72182u, 1u, 0u), vec4<u32>(43051u, 0u, 1898u, 8221u), vec4<u32>(24912u, 0u, 0u, 47368u), vec4<u32>(29439u, 0u, 1359u, 54152u), vec4<u32>(54415u, 1u, 4294967295u, 1u), vec4<u32>(37025u, 46787u, 4294967295u, 118874u), vec4<u32>(32754u, 4294967295u, 87697u, 22558u), vec4<u32>(20803u, 96748u, 7667u, 4294967295u), vec4<u32>(65440u, 8213u, 1884u, 0u), vec4<u32>(9966u, 0u, 1u, 44859u), vec4<u32>(4294967295u, 28140u, 4294967295u, 76925u));

var<private> global3: i32;

var<private> global4: u32 = 5022u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(~1u, 90759u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = vec2<i32>(-1i) * -u_input.b;
    global3 = -2147483647i;
    let var_2 = abs(u_input.a);
    var var_3 = _wgslsmith_add_i32(_wgslsmith_add_i32(1i, -_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.x, var_2.x, -13746i, u_input.a.x), abs(vec4<i32>(25354i, var_1.x, u_input.b.x, -2147483647i)))), 1i);
    return global1[_wgslsmith_index_u32(u_input.d, 4u)];
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global3 = u_input.a.x;
    var var_0 = global1[_wgslsmith_index_u32(~(~(countOneBits(25025u) ^ u_input.d)), 4u)];
    var var_1 = Struct_1(~_wgslsmith_div_u32(~(0u & var_0.a), ~u_input.c), vec4<f32>(_wgslsmith_f_op_f32(355f + func_2().b.x), _wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -828f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - 313f) - 1162f)));
    var var_2 = select(!vec2<bool>((-1i > u_input.a.x) | false, (1244f <= arg_0) & true), !select(vec2<bool>(all(vec4<bool>(true, true, true, true)), arg_0 == arg_0), vec2<bool>(true, true), vec2<bool>(true, true)), true);
    global3 = u_input.a.x;
    return _wgslsmith_add_vec3_i32(~(~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a.x, -1i, u_input.b.x), false), u_input.a, -vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))), u_input.a & vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(25807i, 4731i), i32(-1i) * -1i), abs(u_input.b.x) >> (_wgslsmith_clamp_u32(2439u, 45346u, var_1.a) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<u32> {
    var var_0 = vec3<bool>(arg_1.x >= u_input.b.x, true, !(!(-1294f >= arg_0.b.x) && false));
    global1 = array<Struct_1, 4>();
    var var_1 = arg_0.b.x;
    var var_2 = !var_0.x;
    var var_3 = func_2();
    return countOneBits(~(~countOneBits(vec2<u32>(4294967295u, var_3.a))) << (~(min(vec2<u32>(var_3.a, 4294967295u), vec2<u32>(4294967295u, u_input.c)) >> (vec2<u32>(var_3.a, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = ~func_4(func_2(), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f * 1220f))));
    global0 = array<vec3<u32>, 6>();
    global0 = array<vec3<u32>, 6>();
    global0 = array<vec3<u32>, 6>();
    let var_1 = func_2();
    return var_1;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(u_input.d), ~_wgslsmith_mod_u32(9136u, u_input.c), ~(~61522u)), 4u)];
    global0 = array<vec3<u32>, 6>();
    let var_1 = -1511f;
    var var_2 = Struct_1(4294967295u | ~_wgslsmith_clamp_u32(var_0.a, arg_1.a, var_0.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(_wgslsmith_div_f32(var_1, var_0.b.x), -766f, _wgslsmith_f_op_f32(floor(317f)), _wgslsmith_f_op_f32(f32(-1f) * -1574f))))));
    let var_3 = ~u_input.b.x;
    return Struct_1(39087u, _wgslsmith_f_op_vec4_f32(-var_0.b));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = func_2();
    global2 = array<vec4<u32>, 22>();
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-528f, arg_0.b.x, _wgslsmith_f_op_f32(var_0.b.x - 585f))));
    var var_2 = abs(vec2<u32>(4424u, arg_0.a << (arg_0.a % 32u)));
    let var_3 = ~global0[_wgslsmith_index_u32(~u_input.c, 6u)];
    return 16798u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 4>();
    let var_0 = true;
    var var_1 = min(min(_wgslsmith_clamp_u32(u_input.d, u_input.c, ~u_input.d), ~(~(u_input.d | u_input.d))), u_input.d);
    var var_2 = select((_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(4294967295u, u_input.d)) & ((1u | u_input.d) | u_input.c)) & ~_wgslsmith_sub_u32(u_input.d, ~1u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~global2[_wgslsmith_index_u32(34094u, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)] | global2[_wgslsmith_index_u32(4426u, 22u)]), _wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(min(4294967295u, u_input.d), 22u)], vec4<u32>(u_input.d, 45552u, u_input.d, u_input.c))), _wgslsmith_mod_u32(u_input.d, u_input.c) != func_6(func_5(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), true), func_1(u_input.a)), select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(true, var_0, var_0, var_0), var_0)));
    global0 = array<vec3<u32>, 6>();
    let var_3 = vec2<u32>(u_input.d, ~(~23911u));
    var var_4 = global1[_wgslsmith_index_u32(23169u, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x)))), countOneBits(var_3 & ~var_3), u_input.a, -1036f);
}

