struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(1u, 20383u, 4294967295u, 4294967295u), vec4<u32>(23582u, 0u, 8853u, 26763u), vec4<u32>(66165u, 4294967295u, 74618u, 0u), vec4<u32>(1u, 99050u, 5545u, 86038u), vec4<u32>(4294967295u, 0u, 78181u, 13310u), vec4<u32>(22417u, 0u, 40444u, 4294967295u), vec4<u32>(4294967295u, 44660u, 105076u, 8770u), vec4<u32>(4294967295u, 94484u, 9040u, 55800u), vec4<u32>(64798u, 1u, 34157u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 20313u), vec4<u32>(0u, 47461u, 1u, 0u), vec4<u32>(1839u, 1u, 68934u, 49976u), vec4<u32>(95480u, 59822u, 0u, 34976u), vec4<u32>(99113u, 26053u, 1u, 4294967295u), vec4<u32>(2700u, 69139u, 73425u, 0u), vec4<u32>(5756u, 1u, 14287u, 46137u), vec4<u32>(0u, 18152u, 20391u, 61573u), vec4<u32>(17050u, 49948u, 37314u, 0u), vec4<u32>(39383u, 36848u, 11729u, 4294967295u), vec4<u32>(0u, 460u, 21077u, 44779u), vec4<u32>(31878u, 13874u, 56192u, 54654u), vec4<u32>(1u, 55930u, 4294967295u, 0u), vec4<u32>(14907u, 28369u, 67787u, 17766u), vec4<u32>(1u, 26763u, 74166u, 21119u), vec4<u32>(25142u, 1u, 1u, 0u), vec4<u32>(121188u, 4294967295u, 4294967295u, 46140u), vec4<u32>(65638u, 0u, 1u, 4945u), vec4<u32>(14421u, 0u, 27970u, 0u), vec4<u32>(0u, 45110u, 46087u, 4294967295u), vec4<u32>(0u, 79132u, 7081u, 89041u), vec4<u32>(4294967295u, 20508u, 4294967295u, 31069u));

var<private> global1: u32;

var<private> global2: array<Struct_1, 5>;

var<private> global3: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(4294967295u, 0u), vec2<u32>(60365u, 1u), vec2<u32>(37023u, 4294967295u), vec2<u32>(30375u, 15286u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(13411u, 31929u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(34049u, 1u), vec2<u32>(0u, 11446u), vec2<u32>(24762u, 35798u), vec2<u32>(11391u, 4170u), vec2<u32>(0u, 0u), vec2<u32>(1u, 16542u), vec2<u32>(1u, 0u), vec2<u32>(2380u, 9068u), vec2<u32>(63887u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 21329u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 12352u), vec2<u32>(0u, 0u), vec2<u32>(51166u, 4294967295u), vec2<u32>(4294967295u, 0u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(-580f)), ~(i32(-1i) * -u_input.b.x));
    var var_1 = -18952i;
    return -(~0i);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<u32> {
    global2 = array<Struct_1, 5>();
    global2 = array<Struct_1, 5>();
    let var_0 = firstLeadingBit(-(~max(abs(vec4<i32>(u_input.b.x, -2147483647i, arg_2.b, -2147483647i)), -vec4<i32>(u_input.b.x, 0i, u_input.b.x, -21573i))));
    let var_1 = 4294967295u;
    let var_2 = u_input.a.x;
    return vec4<u32>(abs(0u), firstLeadingBit(u_input.a.x) << (1u % 32u), 17245u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u >> (var_2 % 32u), 58078u, _wgslsmith_clamp_u32(arg_1.x, var_2, u_input.a.x), _wgslsmith_mult_u32(var_2, 34956u)), ~vec4<u32>(1u, 4294967295u, 1u, u_input.a.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_1 {
    global2 = array<Struct_1, 5>();
    global3 = array<vec2<u32>, 26>();
    let var_0 = func_4(arg_1, u_input.a.yx, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-797f))), _wgslsmith_div_i32(func_3(arg_3.x, vec4<f32>(arg_1.a, 368f, arg_1.a, -2647f), vec2<f32>(-308f, 430f), Struct_1(-903f, u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(22969i, u_input.b.x, arg_2.x), vec3<i32>(17019i, -33492i, -6267i))))) ^ vec4<u32>(_wgslsmith_add_u32(arg_3.x << (~u_input.a.x % 32u), 8835u), select(abs(28423u), 9551u, true) & (~u_input.e ^ 4294967295u), arg_3.x, 53006u);
    global0 = array<vec4<u32>, 31>();
    global3 = array<vec2<u32>, 26>();
    return Struct_1(_wgslsmith_f_op_f32(-1219f * arg_1.a), arg_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = min(_wgslsmith_add_u32(1u, ~u_input.e), _wgslsmith_clamp_u32(~u_input.c.x, countOneBits(u_input.c.x), 4294967295u)) | countOneBits(1u);
    var var_1 = firstTrailingBit(max(vec3<u32>(0u, var_0 | 6507u, ~var_0), ~func_4(Struct_1(2009f, arg_0.b), vec2<u32>(54788u, 0u), Struct_1(1006f, arg_0.b)).yzz) ^ ~(~_wgslsmith_sub_vec3_u32(u_input.a.xxy, u_input.a.zyy)));
    let var_2 = ~_wgslsmith_mod_i32(min(~(-1i), select(~1i, u_input.b.x << (2436u % 32u), true)), abs(arg_2.b));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -251f))) - var_3.a), 722f)) - _wgslsmith_f_op_f32(f32(-1f) * -1070f));
    return u_input.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = Struct_1(-267f, _wgslsmith_div_i32(max(-24251i, 12684i), arg_1));
    let var_1 = arg_0.a;
    return 4294967295u < func_5(func_2(min(abs(vec4<i32>(arg_0.b, u_input.b.x, -1i, 29566i)), vec4<i32>(24565i, arg_0.b, 12857i, u_input.b.x) >> (global0[_wgslsmith_index_u32(u_input.d, 31u)] % vec4<u32>(32u))), Struct_1(1195f, abs(2147483647i)), firstTrailingBit(vec4<i32>(arg_1, 14794i, var_0.b, u_input.b.x)) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, 0i, -62168i, 0i), vec4<i32>(-39580i, arg_0.b, var_0.b, u_input.b.x)), ~(vec2<u32>(1u, 7064u) << (global3[_wgslsmith_index_u32(u_input.a.x, 26u)] % vec2<u32>(32u)))), -164f, func_2(~countOneBits(vec4<i32>(arg_1, arg_0.b, -2147483647i, 1i)), Struct_1(_wgslsmith_div_f32(-1619f, var_1), 31849i), ~(~vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, -14134i)), vec2<u32>(u_input.e >> (u_input.c.x % 32u), u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 26>();
    var var_0 = select(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, false), !vec3<bool>(true, true, all(vec3<bool>(true, true, true))), vec3<bool>(!all(vec2<bool>(false, false)), func_1(global2[_wgslsmith_index_u32(u_input.c.x & 1u, 5u)], u_input.b.x), true)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), true);
    global1 = u_input.a.x;
    let var_1 = func_2(vec4<i32>(_wgslsmith_add_i32((u_input.b.x << (u_input.a.x % 32u)) ^ max(2147483647i, u_input.b.x), -16981i), u_input.b.x, 0i, u_input.b.x), func_2(vec4<i32>(firstLeadingBit(72799i), _wgslsmith_mod_i32(abs(0i), i32(-1i) * -2147483647i), -50768i, 2147483647i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-454f + -1473f) + _wgslsmith_f_op_f32(max(-709f, 609f))), -(~u_input.b.x)), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i) ^ select(vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x), max(vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), vec4<i32>(u_input.b.x, -1i, u_input.b.x, -1i)), var_0.x), ~u_input.c), vec4<i32>(firstTrailingBit(-2147483647i), u_input.b.x >> (u_input.c.x % 32u), u_input.b.x, ~0i), ((_wgslsmith_add_vec2_u32(vec2<u32>(69952u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.d)) & vec2<u32>(4868u, u_input.c.x)) << (_wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(~1u, 26u)], _wgslsmith_clamp_vec2_u32(global3[_wgslsmith_index_u32(u_input.c.x, 26u)], global3[_wgslsmith_index_u32(u_input.c.x, 26u)], vec2<u32>(43300u, 1u))) % vec2<u32>(32u))) ^ ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.a.x), global3[_wgslsmith_index_u32(u_input.c.x, 26u)]), func_4(global2[_wgslsmith_index_u32(95441u, 5u)], vec2<u32>(u_input.c.x, u_input.c.x), Struct_1(698f, -18698i)).yx, select(vec2<u32>(3278u, 35254u), global3[_wgslsmith_index_u32(14536u, 26u)], var_0.x)));
    global0 = array<vec4<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.e, _wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.d, 10065u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), u_input.a.xxx))), firstTrailingBit(_wgslsmith_mult_u32(u_input.e, func_4(Struct_1(-1428f, 39528i), global3[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(var_1.a, -104982i)).x)), u_input.c.x));
}

