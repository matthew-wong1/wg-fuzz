struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(false, vec3<f32>(-1380f, 2281f, -1000f), 1u), Struct_2(true, vec3<f32>(169f, 225f, -828f), 0u), Struct_2(true, vec3<f32>(-595f, 601f, 392f), 23811u), Struct_2(true, vec3<f32>(-312f, -321f, 639f), 4294967295u), Struct_2(false, vec3<f32>(602f, 1033f, -1064f), 9946u), Struct_2(false, vec3<f32>(-842f, 1240f, -519f), 122840u), Struct_2(true, vec3<f32>(-650f, 1583f, -2156f), 64657u), Struct_2(true, vec3<f32>(-1433f, 707f, 945f), 1u), Struct_2(false, vec3<f32>(616f, -793f, 415f), 50479u), Struct_2(true, vec3<f32>(-877f, 250f, 673f), 4294967295u), Struct_2(true, vec3<f32>(477f, 1826f, -2232f), 100590u), Struct_2(true, vec3<f32>(-1000f, -1000f, 872f), 7180u), Struct_2(true, vec3<f32>(-215f, 303f, -2215f), 19659u), Struct_2(true, vec3<f32>(-854f, 213f, 1052f), 0u), Struct_2(true, vec3<f32>(-613f, 375f, -964f), 17494u), Struct_2(false, vec3<f32>(-351f, 135f, -2195f), 1u), Struct_2(true, vec3<f32>(369f, -1447f, 638f), 37205u), Struct_2(true, vec3<f32>(-294f, -2083f, -1000f), 4294967295u));

var<private> global1: vec4<i32> = vec4<i32>(-30973i, -33119i, -54743i, i32(-2147483648));

var<private> global2: Struct_2;

var<private> global3: array<vec2<bool>, 4>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> bool {
    global1 = select(u_input.a & -u_input.a, abs(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_div_i32(-22577i, global1.x), abs(u_input.a.x), 1i << (1u % 32u), global1.x))), vec4<bool>(!any(!vec3<bool>(true, global2.a, true)), !(global2.c <= global2.c), true, global2.a));
    global1 = firstTrailingBit(-(vec4<i32>(-1i) * -min(u_input.a, u_input.a)));
    let var_0 = all(vec2<bool>(true, !global2.a)) || all(vec4<bool>((global2.c ^ 29365u) != (77770u & global2.c), false, false, true));
    var var_1 = -u_input.a.x;
    var_1 = -32239i;
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<f32>) -> bool {
    global0 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(63670u, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global2.c, global2.c, global2.c, 1u), vec4<u32>(arg_0.c, 23482u, 4294967295u, 33927u)), ~vec4<u32>(0u, 2033u, 11119u, 0u)), ~(~_wgslsmith_mult_u32(arg_0.c, 0u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.c, 1u), abs(vec2<u32>(global2.c, 50808u))) << ((~global2.c << (global2.c % 32u)) % 32u)), ~(reverseBits(vec4<u32>(global2.c, 1u, 1u, 11581u)) | ~vec4<u32>(global2.c, arg_0.c, 17277u, 5688u)) >> (~_wgslsmith_div_vec4_u32(max(vec4<u32>(arg_0.c, 1u, 0u, 0u), vec4<u32>(19614u, arg_0.c, global2.c, 78130u)), select(vec4<u32>(1u, global2.c, global2.c, arg_0.c), vec4<u32>(global2.c, 4294967295u, 1u, global2.c), vec4<bool>(false, true, false, false))) % vec4<u32>(32u)));
    let var_1 = select(!vec3<bool>(true, true, !arg_0.a && any(vec3<bool>(arg_0.a, true, true))), select(vec3<bool>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global1.x, 1i, global1.x, -2147483647i)) >= abs(-21987i), true, !global2.a), vec3<bool>(arg_0.a, (1936u | arg_0.c) != _wgslsmith_div_u32(arg_0.c, 51923u), false), arg_0.a), true);
    let var_2 = Struct_3(var_0.zx);
    global0 = array<Struct_2, 18>();
    return !(!arg_0.a) || false;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(arg_1.x, arg_1.x));
    global1 = u_input.a;
    var var_1 = func_3(global0[_wgslsmith_index_u32(reverseBits(~(~(~global2.c))), 18u)], vec4<i32>(u_input.a.x, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -66998i & global1.x), abs(-u_input.b.zx)), ~(-(i32(-1i) * -33422i))), _wgslsmith_f_op_vec3_f32(-arg_2));
    global0 = array<Struct_2, 18>();
    var_1 = false;
    return Struct_1(_wgslsmith_dot_vec4_i32(~firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 16i, 7746i, global1.x), vec4<i32>(21571i, -1i, arg_1.x, global1.x))), vec4<i32>(-1i) * -(~u_input.a)));
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(1u, global2.c), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0), vec2<u32>(var_0, var_0)), reverseBits(vec2<u32>(global2.c, global2.c))))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, var_0, global2.c), 0u ^ global2.c), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, global2.c, var_0, 1u), vec4<u32>(45944u, 1581u, 1u, global2.c)), var_0), max(vec2<u32>(var_0, 46890u), vec2<u32>(0u, 0u))));
    var var_2 = max(u_input.a, _wgslsmith_div_vec4_i32(-u_input.a, u_input.a));
    let var_3 = _wgslsmith_sub_u32(~firstTrailingBit(59059u), 4294967295u | ~abs(min(global2.c, 1u)));
    global3 = array<vec2<bool>, 4>();
    return Struct_5(~(var_2.zz >> (~vec2<u32>(23772u, var_0) % vec2<u32>(32u))), select(~func_2(~vec3<u32>(1u, global2.c, 33553u), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(-global2.b)).a, arg_0.a, !global2.a));
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: bool, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = vec4<bool>(!arg_2, false, false, func_3(global0[_wgslsmith_index_u32(~0u, 18u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.x, _wgslsmith_mod_i32(global1.x, 31559i), ~0i, 2147483647i), vec4<i32>(arg_0, arg_1.a.x, arg_1.b, _wgslsmith_sub_i32(1593i, -19942i)), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) + vec3<f32>(arg_3.x, 690f, 569f)))));
    var var_1 = arg_3.x;
    let var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.c, global2.c), vec2<u32>(25874u, global2.c)) >> (vec2<u32>(global2.c, 45726u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(2398u, 0u) ^ vec2<u32>(76u, global2.c), select(vec2<u32>(7611u, global2.c), vec2<u32>(0u, global2.c), false))), vec2<u32>(global2.c << (reverseBits(25454u) % 32u), ~0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(reverseBits(abs(global2.c)), global2.c), ~(~vec2<u32>(4294967295u, global2.c)), reverseBits(firstLeadingBit(vec2<u32>(0u, 4294967295u)) & ~vec2<u32>(1u, global2.c))));
    let var_3 = func_3(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_2.x, 0u), 18u)], firstTrailingBit(u_input.a) ^ _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b.x, ~19611i, -28973i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global1.x, arg_0, arg_1.a.x) << (vec4<u32>(var_2.x, 1u, var_2.x, var_2.x) % vec4<u32>(32u)), vec4<i32>(arg_0, -11829i, arg_0, -1i) >> (vec4<u32>(36177u, 17998u, 0u, 0u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(global2.b * global2.b));
    var var_4 = Struct_3(reverseBits(var_2));
    return Struct_4(Struct_3(vec2<u32>(abs(67079u), ~92097u)), abs(~u_input.a.yxw), var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-637f)), _wgslsmith_f_op_f32(arg_3.x + global2.b.x), false)), global0[_wgslsmith_index_u32(1u, 18u)]);
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_4, arg_3: bool) -> Struct_3 {
    let var_0 = u_input.b.x;
    global2 = global0[_wgslsmith_index_u32(~15333u & ~(~_wgslsmith_clamp_u32(arg_2.a.a.x, min(arg_2.e.c, global2.c), ~global2.c)), 18u)];
    let var_1 = vec3<f32>(1000f, arg_2.d, arg_2.e.b.x);
    let var_2 = 188f;
    var var_3 = global2.b;
    return arg_2.a;
}

fn func_7(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = select(~(global2.c & (43575u | _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, arg_3.x, 158220u), vec3<u32>(89309u, global2.c, 2962u)))), ~(~_wgslsmith_add_u32(min(arg_2, global2.c), ~global2.c)), !global2.a);
    global3 = array<vec2<bool>, 4>();
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    return func_2(abs(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global2.c, global2.c), arg_2 & global2.c), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1u, 1u), vec3<u32>(1u, 1u, arg_3.x)), _wgslsmith_sub_u32(arg_3.x, ~global2.c))), vec4<i32>(i32(-1i) * -52820i, -30302i, abs(abs(u_input.a.x)) & 0i, select(-1i, global1.x, global2.a && true)), global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 4>();
    global2 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(global2.c, global2.c), vec2<u32>(global2.c, global2.c))), vec2<u32>(~0u, ~_wgslsmith_mult_u32(0u, global2.c)))), 18u)];
    global3 = array<vec2<bool>, 4>();
    var var_0 = (any(vec3<bool>(!global2.a, true, any(vec3<bool>(true, global2.a, global2.a)))) | !(_wgslsmith_f_op_f32(-global2.b.x) >= -1773f)) & func_1();
    var var_1 = func_7(func_6(global2.b.x, -322f, func_5(-41334i, func_4(func_2(vec3<u32>(39036u, global2.c, 28011u), u_input.a, vec3<f32>(161f, global2.b.x, -1064f))), global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.b.xz, global2.b.xy))), true), -457f, _wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(12702u, global2.c, global2.c), vec3<u32>(28996u, 4294967295u, 1u)), ~vec3<u32>(108935u, global2.c, global2.c), global2.a), firstLeadingBit(~vec3<u32>(global2.c, 1u, 1u))) >> (~0u % 32u), vec2<u32>(countOneBits(global2.c), ~(global2.c | global2.c)) << (~vec2<u32>(1u, 65282u) % vec2<u32>(32u)));
    var var_2 = global1.zy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

