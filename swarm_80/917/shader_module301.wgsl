struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28>;

var<private> global1: array<i32, 25> = array<i32, 25>(-26601i, -38719i, 11353i, i32(-2147483648), 39626i, 15212i, 2147483647i, -9015i, 7938i, 0i, -1i, 32659i, -56891i, -30263i, 1i, -1i, 21644i, -46204i, -27501i, -22255i, 1i, i32(-2147483648), -3711i, 2147483647i, -1i);

var<private> global2: vec3<u32> = vec3<u32>(0u, 15803u, 0u);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, arg_0.d.c)) + _wgslsmith_div_f32(130f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.d.c)), _wgslsmith_f_op_f32(833f + 392f)))) + _wgslsmith_f_op_f32(-arg_0.d.c));
    global0 = array<vec2<f32>, 28>();
    global2 = max(~(arg_0.e.yxy << (reverseBits(vec3<u32>(u_input.b.x, 4294967295u, global2.x)) % vec3<u32>(32u))), arg_0.e.zyy);
    let var_1 = arg_0.d.d;
    global2 = ~reverseBits(arg_0.e.yzz);
    return global2.x;
}

fn func_3() -> u32 {
    let var_0 = Struct_4(-global1[_wgslsmith_index_u32(global2.x, 25u)]);
    return firstTrailingBit(_wgslsmith_clamp_u32(u_input.b.x, 39959u, u_input.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(1000f - 982f);
    var var_1 = Struct_5(true, select(arg_0.e, vec2<u32>(u_input.c, _wgslsmith_clamp_u32(u_input.a, global2.x, 111917u) >> (~91076u % 32u)), !arg_0.d), 0i);
    let var_2 = 1i << (_wgslsmith_mod_u32(abs(~global2.x), ~global2.x >> (arg_0.e.x % 32u)) % 32u);
    let var_3 = -539f;
    var var_4 = !select(vec4<bool>(all(vec2<bool>(false, arg_0.d)), !var_1.a || var_1.a, any(vec3<bool>(var_1.a, false, true)), all(!vec4<bool>(var_1.a, arg_0.d, false, arg_0.d))), !(!(!vec4<bool>(true, arg_0.d, var_1.a, true))), false);
    return ~vec3<u32>(53828u, 1647u, select(arg_0.b, ~1u, !any(vec2<bool>(var_4.x, var_1.a))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global1 = array<i32, 25>();
    global0 = array<vec2<f32>, 28>();
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_mult_u32(6851u, ~u_input.c)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(21167u, 4294967295u) >> (global2.x % 32u), ~global2.x, u_input.a >> (func_2(Struct_2(1i, true, 3329u, Struct_1(4294967295u, global2.x, -757f, false, vec2<u32>(1u, 56262u)), vec4<u32>(u_input.c, global2.x, u_input.c, 9529u)), vec2<i32>(u_input.d.x, u_input.d.x)) % 32u)), ~func_2(Struct_2(global1[_wgslsmith_index_u32(u_input.a, 25u)], false, 24722u, Struct_1(u_input.b.x, u_input.a, -862f, arg_0.x, global2.yy), vec4<u32>(global2.x, 38214u, u_input.c, global2.x)), vec2<i32>(1i, 37816i))), _wgslsmith_add_vec3_u32(reverseBits(~select(vec3<u32>(5795u, 3375u, 83495u), vec3<u32>(global2.x, 36205u, 21952u), arg_0.x)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(8824u, 73458u, 1u), vec3<u32>(global2.x, 30665u, u_input.c), vec3<u32>(4294967295u, global2.x, 10612u)), vec3<u32>(u_input.b.x, u_input.c, global2.x))));
    global2 = _wgslsmith_add_vec3_u32(func_4(Struct_1(func_3(), var_0.x << (1u % 32u), -564f, false, abs(var_0.zz)), -u_input.d, Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(52051i, -26693i, global1[_wgslsmith_index_u32(1u, 25u)], u_input.d.x), vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(11178u, 25u)], global1[_wgslsmith_index_u32(38318u, 25u)])))), ~vec3<u32>(select(23287u, var_0.x, arg_0.x), 20243u ^ u_input.a, u_input.a)) ^ func_4(Struct_1(~7275u, 72438u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1000f, 874f, arg_0.x)))), any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), ~var_0.zy), ~(min(u_input.d, u_input.d) ^ vec2<i32>(1i, 0i)), Struct_4(-1i));
    global0 = array<vec2<f32>, 28>();
    return Struct_1(firstLeadingBit(0u), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1124f)) - _wgslsmith_f_op_f32(f32(-1f) * -1900f))) * _wgslsmith_f_op_f32(round(1f))), true, firstLeadingBit(~_wgslsmith_clamp_vec2_u32(var_0.xz, vec2<u32>(34096u, u_input.a), vec2<u32>(25189u, 4294967295u)) << (u_input.b % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    var var_0 = arg_3;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1251f, _wgslsmith_f_op_f32(exp2(arg_0.c)))) + 313f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-935f + _wgslsmith_f_op_f32(step(-997f, 1000f)))));
    var var_2 = Struct_4(-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-arg_1, select(arg_1, arg_1, arg_2.x)), max(global1[_wgslsmith_index_u32(138009u, 25u)], u_input.d.x) & -2147483647i));
    global0 = array<vec2<f32>, 28>();
    var var_3 = arg_2;
    return Struct_2(~u_input.d.x, select(!(_wgslsmith_mult_i32(arg_1.x, 0i) < var_2.a), false, all(arg_2)), ~4294967295u, Struct_1(_wgslsmith_div_u32(~1028u, func_4(func_1(vec3<bool>(true, false, true)), u_input.d ^ vec2<i32>(2147483647i, 1i), Struct_4(-1i)).x), abs(~_wgslsmith_div_u32(global2.x, 1u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-690f)) * _wgslsmith_div_f32(1070f, 170f)))), true, vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, abs(arg_0.e.x), arg_0.b), _wgslsmith_add_u32(4294967295u, 0u))), _wgslsmith_mod_vec4_u32(select(abs(~vec4<u32>(4294967295u, global2.x, arg_0.a, 4294967295u)), ~(vec4<u32>(arg_0.a, 38147u, u_input.c, 29845u) ^ vec4<u32>(0u, 4294967295u, global2.x, 55294u)), select(select(vec4<bool>(var_3.x, var_3.x, false, true), vec4<bool>(var_3.x, false, var_3.x, false), vec4<bool>(false, true, arg_2.x, arg_0.d)), !vec4<bool>(arg_0.d, arg_2.x, arg_0.d, var_3.x), arg_0.d)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.a) ^ firstLeadingBit(vec4<u32>(1u, 48314u, u_input.a, 286u)), vec4<u32>(_wgslsmith_mult_u32(arg_0.e.x, arg_0.b), arg_0.b, 4294967295u, _wgslsmith_sub_u32(u_input.b.x, u_input.c)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_4 {
    let var_0 = u_input.a;
    var var_1 = Struct_3(func_5(func_5(Struct_1(_wgslsmith_mult_u32(u_input.a, global2.x), 604u ^ u_input.b.x, _wgslsmith_div_f32(arg_3.c, arg_3.c), true, ~global2.zx), vec3<i32>(firstTrailingBit(arg_0.a), global1[_wgslsmith_index_u32(1u, 25u)], countOneBits(arg_0.a)), select(vec2<bool>(arg_3.d, true), vec2<bool>(false, arg_2), select(vec2<bool>(arg_0.b, false), vec2<bool>(false, arg_3.d), vec2<bool>(true, arg_3.d))), ~(global1[_wgslsmith_index_u32(u_input.c, 25u)] & global1[_wgslsmith_index_u32(77762u, 25u)])).d, _wgslsmith_mod_vec3_i32(abs(vec3<i32>(global1[_wgslsmith_index_u32(2797u, 25u)], global1[_wgslsmith_index_u32(16485u, 25u)], u_input.d.x)), vec3<i32>(arg_0.a, global1[_wgslsmith_index_u32(arg_0.c, 25u)], -1i) & vec3<i32>(-39071i, arg_0.a, arg_0.a)) >> (arg_0.e.yxx % vec3<u32>(32u)), vec2<bool>((0i << (global2.x % 32u)) <= -global1[_wgslsmith_index_u32(0u, 25u)], (arg_3.d | true) && true), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-43779i, 19255i, arg_0.a)), vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(14063u, 25u)], -1i, arg_0.a))), func_5(func_1(!vec3<bool>(false, arg_0.b, arg_3.d)), vec3<i32>(func_5(func_5(Struct_1(1u, var_0, -1000f, true, vec2<u32>(arg_0.d.b, 0u)), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0, 25u)], arg_0.a), vec2<bool>(true, arg_3.d), -2147483647i).d, ~vec3<i32>(-23726i, global1[_wgslsmith_index_u32(4294967295u, 25u)], 35683i), select(vec2<bool>(arg_2, true), vec2<bool>(false, true), true), _wgslsmith_mod_i32(-23759i, 1244i)).a, u_input.d.x, -45736i), !(!select(vec2<bool>(arg_3.d, true), vec2<bool>(false, arg_2), true)), func_5(arg_3, min(vec3<i32>(arg_0.a, -20879i, 5328i), select(vec3<i32>(-2147483647i, 6632i, 8373i), vec3<i32>(62169i, u_input.d.x, 0i), arg_3.d)), select(vec2<bool>(true, true), select(vec2<bool>(arg_0.d.d, true), vec2<bool>(arg_3.d, true), arg_2), !vec2<bool>(arg_2, true)), u_input.d.x).a));
    let var_2 = var_1.b.e;
    var var_3 = ~u_input.d;
    var var_4 = func_5(var_1.a.d, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a, (u_input.d.x | 16117i) ^ u_input.d.x, abs(u_input.d.x)), vec3<i32>(_wgslsmith_mod_i32(-61641i, 1i), _wgslsmith_sub_i32(-1i, 2147483647i & u_input.d.x), 1i)), !select(select(select(vec2<bool>(true, false), vec2<bool>(false, var_1.a.b), var_1.b.d.d), vec2<bool>(true, arg_0.b), select(vec2<bool>(false, true), vec2<bool>(arg_2, arg_3.d), vec2<bool>(arg_2, var_1.b.b))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, arg_0.b), var_1.a.d.d), select(arg_2, var_1.b.b, false)), true), -func_5(arg_3, ~vec3<i32>(arg_0.a, 31970i, 0i), !vec2<bool>(false, arg_0.d.d), firstLeadingBit(countOneBits(0i))).a);
    return Struct_4(-_wgslsmith_dot_vec3_i32(min(abs(vec3<i32>(global1[_wgslsmith_index_u32(1u, 25u)], u_input.d.x, var_4.a)), reverseBits(vec3<i32>(-61706i, 40145i, -1i))), ~(-vec3<i32>(u_input.d.x, var_3.x, 2147483647i))));
}

fn func_7(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = any(select(vec3<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)) && false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !(1u == u_input.b.x)), !all(vec2<bool>(false, false)) && true));
    var var_1 = select(firstTrailingBit(select(~2877u, u_input.c, var_0)), min(u_input.b.x, ~_wgslsmith_mult_u32(u_input.c, global2.x)), var_0) << (global2.x % 32u);
    return Struct_1(~(func_5(func_1(vec3<bool>(var_0, var_0, false)), arg_2, !vec2<bool>(var_0, false), reverseBits(-251i)).e.x ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 45440u, 23548u), vec3<u32>(global2.x, 4294967295u, 28815u)), _wgslsmith_clamp_u32(51722u, u_input.c, u_input.c))), ~(~15680u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3))), false, max(vec2<u32>(1u, firstLeadingBit(_wgslsmith_clamp_u32(global2.x, u_input.b.x, 0u))), vec2<u32>(func_3(), 21281u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 28>();
    let var_0 = 0i;
    global1 = array<i32, 25>();
    let var_1 = func_7(func_6(func_5(func_1(vec3<bool>(true, true, true)), -vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 47973i, -10006i) ^ -vec3<i32>(49821i, -2147483647i, -426i), vec2<bool>(true, true), 1i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1932f * 1533f) + 1f), _wgslsmith_f_op_f32(f32(-1f) * -602f), 239f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1987f - 450f))), true, Struct_1(_wgslsmith_mult_u32(global2.x, ~u_input.c), 1u | func_4(Struct_1(27767u, u_input.b.x, -833f, true, vec2<u32>(u_input.c, u_input.a)), u_input.d, Struct_4(-33935i)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)), any(vec2<bool>(true, true)), global2.yy)), _wgslsmith_mult_i32(-3568i, min(u_input.d.x, var_0 >> (select(global2.x, 4294967295u, false) % 32u))), vec3<i32>(~firstTrailingBit(max(16122i, var_0)), global1[_wgslsmith_index_u32(u_input.c, 25u)], -(~abs(var_0))), 952f);
    var var_2 = var_1.d;
    global0 = array<vec2<f32>, 28>();
    let var_3 = func_5(var_1, max(vec3<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 25u)] & -2147483647i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(global2.x, 25u)], 21660i)), 0i, u_input.d.x), select(-(vec3<i32>(0i, -2147483647i, global1[_wgslsmith_index_u32(u_input.c, 25u)]) ^ vec3<i32>(1i, u_input.d.x, u_input.d.x)), abs(vec3<i32>(0i, -1i, 24685i)), !select(vec3<bool>(var_1.d, var_1.d, var_1.d), vec3<bool>(false, var_1.d, var_1.d), var_1.d))), vec2<bool>(false, select(var_1.d, !any(vec2<bool>(true, var_1.d)), !all(vec2<bool>(true, false)))), ~select(~0i, 40621i, true)).d;
    var var_4 = !select(vec3<bool>(var_1.d, func_7(func_6(Struct_2(u_input.d.x, true, u_input.a, var_1, vec4<u32>(var_1.e.x, var_3.b, var_1.e.x, u_input.b.x)), vec4<f32>(457f, var_1.c, 330f, var_3.c), var_3.d, Struct_1(var_1.a, global2.x, 815f, false, vec2<u32>(var_1.a, 1u))), u_input.d.x, select(vec3<i32>(0i, -1i, 1i), vec3<i32>(-1i, -1i, u_input.d.x), vec3<bool>(true, true, var_3.d)), _wgslsmith_f_op_f32(var_1.c + var_3.c)).d, var_1.d && true), vec3<bool>(false, func_7(Struct_4(-1i), 0i, select(vec3<i32>(51848i, u_input.d.x, var_0), vec3<i32>(8363i, u_input.d.x, u_input.d.x), true), _wgslsmith_div_f32(-407f, var_1.c)).d, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, -632f);
}

