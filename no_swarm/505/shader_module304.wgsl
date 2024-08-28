struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<bool, 22> = array<bool, 22>(true, true, false, true, true, false, true, true, true, true, false, true, false, true, false, true, false, true, false, false, true, true);

var<private> global2: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(87331u, 15188u), vec2<u32>(9859u, 73818u), vec2<u32>(1u, 0u), vec2<u32>(1u, 12357u), vec2<u32>(1u, 30028u), vec2<u32>(64516u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 43376u), vec2<u32>(1u, 32591u), vec2<u32>(95118u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(9461u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(25672u, 4294967295u), vec2<u32>(46686u, 1u), vec2<u32>(1u, 8494u), vec2<u32>(1u, 86056u), vec2<u32>(51227u, 99636u), vec2<u32>(29550u, 46927u), vec2<u32>(0u, 0u), vec2<u32>(37021u, 0u), vec2<u32>(34892u, 4294967295u), vec2<u32>(23455u, 12088u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 37951u), vec2<u32>(4294967295u, 19394u), vec2<u32>(60850u, 38330u));

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global2 = array<vec2<u32>, 27>();
    global0 = array<Struct_1, 21>();
    var var_0 = vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x >> (u_input.a.x % 32u), 0u), u_input.a.x), 4294967295u, 4294967295u & _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(65851u, 1u, u_input.a.x, 8568u), vec4<u32>(4294967295u, u_input.a.x, 40154u, u_input.a.x)), ~u_input.a.x), _wgslsmith_mult_u32(~4294967295u, 42614u));
    let var_1 = Struct_1(~(~(~(~vec4<u32>(77600u, var_0.x, 41877u, 1u)))), vec2<bool>(any(select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec3<bool>(global3.x, false, global3.x), vec3<bool>(false, global3.x, true))) || (firstTrailingBit(u_input.a.x) > (4294967295u << (u_input.a.x % 32u))), false), _wgslsmith_add_vec3_u32(~(max(vec3<u32>(43552u, 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_0.x), vec3<u32>(0u, 23094u, var_0.x))), _wgslsmith_div_vec3_u32(~var_0.wyz, ~vec3<u32>(0u, var_0.x, u_input.a.x))));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(select(-countOneBits(16757i), 0i, var_1.b.x), 0i, max(-4387i, _wgslsmith_div_i32(-1i, ~(-29542i)))), ~(~max(vec3<i32>(8617i, 2147483647i, 1i), vec3<i32>(0i, 2147483647i, -12648i))) & vec3<i32>(-1i, _wgslsmith_clamp_i32(220i, -1i, 12098i) & countOneBits(-29318i), -15602i));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.c.x, 21u)];
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var_0 = arg_0;
    let var_1 = vec4<bool>(var_0.b.x, func_3(), all(select(!(!vec3<bool>(var_0.b.x, false, false)), select(!vec3<bool>(false, arg_0.b.x, global1[_wgslsmith_index_u32(25426u, 22u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1, 22u)], var_0.b.x), global1[_wgslsmith_index_u32(33241u, 22u)]), !(!vec3<bool>(arg_0.b.x, arg_0.b.x, true)))), all(global3.yy));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-664f, _wgslsmith_f_op_f32(1000f + -492f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(815f)), _wgslsmith_f_op_f32(f32(-1f) * -1120f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    global3 = !(!select(vec3<bool>(global3.x, arg_1 == global3.x, 4294967295u <= u_input.a.x), select(vec3<bool>(global3.x, false, arg_1), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(53672u, 22u)]), false), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) != (u_input.a.x >> (u_input.a.x % 32u))));
    global2 = array<vec2<u32>, 27>();
    var var_0 = select(vec3<bool>(true, arg_1, all(vec2<bool>(global3.x == false, all(vec3<bool>(arg_1, global3.x, true))))), vec3<bool>(!global1[_wgslsmith_index_u32(~0u, 22u)], select(~u_input.a.x > u_input.a.x, true, global3.x), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 16782i, 11180i), max(vec3<i32>(-25685i, -1i, -32439i), vec3<i32>(2670i, -2147483647i, -50505i))) <= _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -1i, -1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))), select(vec3<bool>(false, false, any(select(vec2<bool>(global3.x, global1[_wgslsmith_index_u32(23508u, 22u)]), global3.zx, vec2<bool>(true, false)))), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(max(1u, ~(~u_input.a.x)), 22u)]));
    let var_1 = Struct_1(~_wgslsmith_clamp_vec4_u32(~min(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 10146u)), ~min(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 73581u), vec4<u32>(u_input.a.x, 326u, u_input.a.x, u_input.a.x)), ~(~vec4<u32>(4294967295u, 1u, 106970u, 12134u))), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(~u_input.a.x ^ (u_input.a.x >> (0u % 32u)), 22u)]), !select(var_0.xz, vec2<bool>(true, true), global3.yy), false), vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(4294967295u)), ~u_input.a.x, _wgslsmith_div_u32(abs(min(68857u, u_input.a.x)), u_input.a.x)));
    global0 = array<Struct_1, 21>();
    return var_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_1, 21>();
    global2 = array<vec2<u32>, 27>();
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 7610u, u_input.a.x), vec4<u32>(u_input.a.x, arg_0.x, 1u, arg_0.x)) ^ 40828u, ~4294967295u, arg_0.x, 26101u), vec2<bool>(u_input.a.x >= u_input.a.x, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_0.x, u_input.a.x, arg_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_0.x), arg_0.ywx)), 22u)]), ~countOneBits(~(u_input.a & arg_0.yyz)));
    global3 = vec3<bool>(true, false, global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(44590u, var_0.c.x), ~4294967295u), _wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 823u, var_0.a.x), arg_0.zyy))), _wgslsmith_sub_u32(arg_0.x, firstLeadingBit(1u))), 22u)]);
    global1 = array<bool, 22>();
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(834f + -1516f))), _wgslsmith_f_op_f32(1538f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(19827u, var_0.c.x, var_0.a.x, var_0.c.x), global3.zy, arg_0.yyw), 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2150f - 873f)), _wgslsmith_f_op_f32(trunc(-120f))), true & (true != any(!vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.c.x, 22u)], global1[_wgslsmith_index_u32(arg_0.x, 22u)], var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 27>();
    var var_0 = func_1(max(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 7626u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 42295u, 21137u, 11096u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(63525u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 1899u, u_input.a.x, 4294967295u) | vec4<u32>(0u, 1u, 7279u, u_input.a.x))), abs(1i));
    let var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32((_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 40593i), vec2<i32>(1i, -11674i), vec2<i32>(79360i, 2147483647i)) >> ((vec2<u32>(var_0.c.x, u_input.a.x) | vec2<u32>(0u, 80472u)) % vec2<u32>(32u))) | vec2<i32>(~0i, ~(-1i)), _wgslsmith_mod_vec2_i32(~vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, -6554i), -vec2<i32>(8078i, -58491i))), firstTrailingBit(-vec2<i32>(295i, 1i))), vec2<i32>(-1i, firstTrailingBit(-41455i)));
    let var_2 = !(!select(vec3<bool>(!var_0.b.x, var_0.b.x, !var_0.b.x), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], true, false), select(vec3<bool>(true, var_0.b.x, true), vec3<bool>(global1[_wgslsmith_index_u32(43176u, 22u)], global1[_wgslsmith_index_u32(var_0.c.x, 22u)], true), false), !vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(25538u, 22u)])), vec3<bool>(global3.x, !global3.x, u_input.a.x == var_0.c.x)));
    global3 = var_2;
    global3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(var_1.x, 64438i), var_1))) | max(vec2<i32>(1i, ~var_1.x), min(var_1, vec2<i32>(2147483647i, 0i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1383f, _wgslsmith_div_f32(-986f, -558f), _wgslsmith_f_op_f32(func_2(Struct_1(var_0.a, var_0.b, var_0.c), var_0.a.x))))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.a, global3.zx, u_input.a), 0u)))), -736f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)))), abs(0i) | _wgslsmith_mult_i32(var_1.x, -var_1.x));
}

