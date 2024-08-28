struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(-62424i, vec4<bool>(true, true, false, false))), Struct_3(Struct_1(i32(-2147483648), vec4<bool>(false, true, false, true))), Struct_3(Struct_1(1i, vec4<bool>(false, true, false, false))), Struct_3(Struct_1(2147483647i, vec4<bool>(false, false, true, true))), Struct_3(Struct_1(-14076i, vec4<bool>(true, true, true, true))), Struct_3(Struct_1(-1i, vec4<bool>(false, false, true, true))), Struct_3(Struct_1(-33961i, vec4<bool>(true, true, true, false))), Struct_3(Struct_1(i32(-2147483648), vec4<bool>(true, true, true, true))), Struct_3(Struct_1(52465i, vec4<bool>(true, false, false, false))), Struct_3(Struct_1(21140i, vec4<bool>(true, false, false, true))), Struct_3(Struct_1(0i, vec4<bool>(false, true, true, true))), Struct_3(Struct_1(2147483647i, vec4<bool>(true, false, true, true))), Struct_3(Struct_1(-5766i, vec4<bool>(true, false, false, true))), Struct_3(Struct_1(1i, vec4<bool>(false, true, false, true))), Struct_3(Struct_1(1i, vec4<bool>(false, true, true, false))), Struct_3(Struct_1(0i, vec4<bool>(false, true, false, true))), Struct_3(Struct_1(-8737i, vec4<bool>(false, false, true, true))), Struct_3(Struct_1(-29665i, vec4<bool>(false, true, true, false))), Struct_3(Struct_1(-10237i, vec4<bool>(false, true, false, false))), Struct_3(Struct_1(-35085i, vec4<bool>(true, false, false, false))), Struct_3(Struct_1(0i, vec4<bool>(false, true, true, true))), Struct_3(Struct_1(-1i, vec4<bool>(false, true, false, false))), Struct_3(Struct_1(0i, vec4<bool>(true, false, true, false))), Struct_3(Struct_1(47699i, vec4<bool>(false, false, false, true))), Struct_3(Struct_1(-36706i, vec4<bool>(true, true, false, false))), Struct_3(Struct_1(-1i, vec4<bool>(false, true, false, true))), Struct_3(Struct_1(-37994i, vec4<bool>(true, false, false, true))), Struct_3(Struct_1(-35724i, vec4<bool>(true, false, false, true))), Struct_3(Struct_1(-12091i, vec4<bool>(true, true, true, false))), Struct_3(Struct_1(24969i, vec4<bool>(true, false, false, true))), Struct_3(Struct_1(-67273i, vec4<bool>(false, false, false, true))), Struct_3(Struct_1(-46289i, vec4<bool>(true, false, true, false))));

var<private> global1: Struct_5 = Struct_5(Struct_4(Struct_3(Struct_1(6529i, vec4<bool>(false, true, true, false))), false, Struct_2(vec3<f32>(-2815f, 105f, 1303f), Struct_1(-24341i, vec4<bool>(false, false, true, true)), 0i)), vec4<u32>(1u, 0u, 0u, 7178u), vec3<i32>(666i, -70239i, 53905i), Struct_3(Struct_1(-1i, vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, false));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_5, arg_3: bool) -> Struct_2 {
    global0 = array<Struct_3, 32>();
    let var_0 = Struct_4(Struct_3(Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.c.b.a, 2147483647i, global1.c.x), vec3<i32>(u_input.a, 1i, global1.a.a.a.a)), arg_2.a.a.a.b)), true, arg_2.a.c);
    global1 = arg_2;
    let var_1 = select(select(vec3<bool>(!(!arg_2.e.x), arg_0 <= _wgslsmith_f_op_f32(f32(-1f) * -1720f), any(!vec3<bool>(arg_2.d.a.b.x, true, false))), vec3<bool>(true, false, true), global1.a.a.a.b.x), !global1.a.c.b.b.yyz, arg_2.d.a.b.zwz);
    return arg_2.a.c;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    global1 = Struct_5(global1.a, ~global1.b ^ vec4<u32>(_wgslsmith_div_u32(global1.b.x, 819u) >> (global1.b.x % 32u), firstLeadingBit(_wgslsmith_add_u32(global1.b.x, global1.b.x)), 1u, _wgslsmith_add_u32(global1.b.x, global1.b.x >> (14080u % 32u))), u_input.c.yzw, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~global1.b.x, ~1u), select(_wgslsmith_add_vec3_u32(vec3<u32>(global1.b.x, global1.b.x, 0u), global1.b.wxx), global1.b.wwz, false)), global1.b.x), 32u)], !arg_0.b.b);
    let var_0 = vec3<bool>(global1.e.x, (-17892i << (global1.b.x % 32u)) != arg_0.c, !global1.d.a.b.x);
    let var_1 = Struct_3(func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-699f + arg_0.a.x), global1.a.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(177f + 1000f) + _wgslsmith_f_op_f32(select(arg_0.a.x, global1.a.c.a.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1741f + global1.a.c.a.x))), Struct_5(Struct_4(Struct_3(Struct_1(u_input.c.x, vec4<bool>(true, true, false, false))), !var_0.x, func_2(global1.a.c.a.x, arg_0.a.x, Struct_5(global1.a, vec4<u32>(30246u, 65445u, global1.b.x, 60531u), u_input.c.zxy, global1.a.a, arg_2.b), arg_0.b.b.x)), _wgslsmith_add_vec4_u32(global1.b >> (global1.b % vec4<u32>(32u)), ~global1.b), -vec3<i32>(31691i, global1.a.c.c, u_input.a), Struct_3(Struct_1(u_input.e, vec4<bool>(true, true, arg_2.b.x, false))), global1.d.a.b), var_0.x).b);
    let var_2 = Struct_3(Struct_1(arg_2.a, func_2(580f, arg_0.a.x, Struct_5(Struct_4(Struct_3(global1.a.a.a), var_1.a.b.x, Struct_2(vec3<f32>(global1.a.c.a.x, arg_0.a.x, -206f), arg_2, global1.d.a.a)), vec4<u32>(global1.b.x, global1.b.x, 1u, global1.b.x), vec3<i32>(2147483647i, u_input.c.x, global1.c.x), global0[_wgslsmith_index_u32(~global1.b.x, 32u)], vec4<bool>(false, true, global1.e.x, false)), any(vec2<bool>(global1.d.a.b.x, var_0.x))).b.b));
    global1 = Struct_5(global1.a, _wgslsmith_clamp_vec4_u32(~abs(~global1.b), ~(global1.b & vec4<u32>(1u, 4294967295u, global1.b.x, 4294967295u)), vec4<u32>(global1.b.x, reverseBits(_wgslsmith_add_u32(4294967295u, global1.b.x)), firstLeadingBit(~40335u), global1.b.x)), u_input.c.xxz, var_2, arg_0.b.b);
    return vec4<u32>(~global1.b.x, ~1u, 1u, abs(~_wgslsmith_div_u32(~52098u, abs(global1.b.x))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(762f, arg_0.a.x, 442f) + arg_0.a))))), Struct_1(_wgslsmith_mult_i32(35470i, global1.a.a.a.a & ~(-22009i)), arg_0.b.b), 5936i);
    var var_1 = var_0.b;
    let var_2 = firstTrailingBit(~_wgslsmith_clamp_vec4_u32(func_3(func_2(623f, 1533f, Struct_5(Struct_4(Struct_3(Struct_1(arg_0.b.a, arg_0.b.b)), var_1.b.x, global1.a.c), vec4<u32>(1u, 16485u, arg_1.x, 1u), vec3<i32>(68568i, -2147483647i, global1.a.c.b.a), global1.d, var_1.b), global1.a.c.b.b.x), u_input.a, global1.a.c.b), global1.b, abs(~vec4<u32>(global1.b.x, global1.b.x, 0u, arg_1.x))));
    var var_3 = -1720f;
    var var_4 = arg_1.x;
    return _wgslsmith_mult_i32(75810i, u_input.b >> (~arg_1.x % 32u));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_2 {
    global1 = Struct_5(global1.a, abs(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, 49789u, global1.b.x), vec4<u32>(global1.b.x, global1.b.x, 1u, global1.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, 39683u, global1.b.x), vec4<u32>(2883u, 0u, 33625u, global1.b.x))) | global1.b), u_input.c.zww, Struct_3(global1.a.a.a), arg_3);
    global1 = Struct_5(Struct_4(arg_2, true, global1.a.c), ~abs(~(~global1.b)), vec3<i32>(~select(u_input.e, 2147483647i, !arg_0.x), func_1(Struct_2(_wgslsmith_div_vec3_f32(global1.a.c.a, vec3<f32>(global1.a.c.a.x, -790f, global1.a.c.a.x)), Struct_1(u_input.d, vec4<bool>(arg_0.x, global1.a.c.b.b.x, global1.d.a.b.x, arg_2.a.b.x)), -31490i), vec2<u32>(select(global1.b.x, 79302u, false), abs(10449u))), arg_1), global1.d, global1.a.c.b.b);
    var var_0 = _wgslsmith_add_i32(arg_2.a.a, -reverseBits(arg_1));
    global0 = array<Struct_3, 32>();
    let var_1 = abs(firstLeadingBit(~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a, -44762i, -26245i, arg_2.a.a)), vec4<i32>(u_input.c.x, 33470i, global1.d.a.a, -1i), ~u_input.c)));
    return global1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.zz), global1.c.x), select(global1.e, select(vec4<bool>(false, global1.d.a.b.x, false, false), global1.d.a.b, global1.a.c.b.b), vec4<bool>(true, global1.a.a.a.b.x, global1.d.a.b.x, true)))), global1.a.c.b.b.x, Struct_2(_wgslsmith_f_op_vec3_f32(global1.a.c.a + vec3<f32>(_wgslsmith_div_f32(global1.a.c.a.x, -1234f), _wgslsmith_f_op_f32(min(1556f, 407f)), -709f)), global1.a.a.a, global1.d.a.a));
    var var_1 = var_0.c;
    var_1 = func_4(vec4<bool>(true, var_0.c.a.x <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + 252f))), var_0.c.b.b.x, !var_0.a.a.b.x), func_1(Struct_2(global1.a.c.a, var_0.a.a, -2147483647i), abs(vec2<u32>(_wgslsmith_dot_vec3_u32(global1.b.xyw, vec3<u32>(global1.b.x, global1.b.x, global1.b.x)), ~71156u))), Struct_3(func_2(global1.a.c.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1120f)))), Struct_5(global1.a, global1.b, _wgslsmith_div_vec3_i32(global1.c, vec3<i32>(29052i, u_input.c.x, 3465i)), Struct_3(Struct_1(0i, var_0.c.b.b)), !vec4<bool>(false, var_1.b.b.x, false, true)), var_0.b).b), global1.a.c.b.b);
    let var_2 = reverseBits(vec4<i32>(0i ^ global1.c.x, global1.c.x, _wgslsmith_mod_i32(~u_input.c.x, -37743i) & -66123i, 1i));
    let var_3 = _wgslsmith_add_vec4_i32(select(u_input.c, reverseBits(_wgslsmith_div_vec4_i32(select(vec4<i32>(35453i, -28494i, 1i, u_input.d), vec4<i32>(global1.a.c.b.a, var_0.c.c, -6541i, var_0.c.b.a), false), vec4<i32>(var_0.c.b.a, -2147483647i, -13380i, var_0.a.a.a))), global1.a.c.b.b), _wgslsmith_mult_vec4_i32(var_2, ~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c, 25633i, 2147483647i, var_0.a.a.a), vec4<i32>(var_1.b.a, 1i, 2147483647i, -1i), vec4<i32>(global1.d.a.a, var_0.a.a.a, -2293i, global1.c.x)), ~vec4<i32>(global1.d.a.a, global1.d.a.a, var_0.a.a.a, 2147483647i))));
    var var_4 = -471f;
    global1 = Struct_5(Struct_4(global1.d, any(select(vec2<bool>(false, true), var_1.b.b.ww, !vec2<bool>(global1.d.a.b.x, true))), Struct_2(vec3<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(-global1.a.c.a.x), _wgslsmith_f_op_f32(-var_0.c.a.x)), Struct_1(~var_1.c, var_0.a.a.b), u_input.a | (0i >> (global1.b.x % 32u)))), _wgslsmith_add_vec4_u32(vec4<u32>(func_3(Struct_2(var_1.a, Struct_1(49732i, global1.d.a.b), 22952i), 1i, var_0.c.b).x, global1.b.x, _wgslsmith_dot_vec2_u32(global1.b.wy, vec2<u32>(1u, global1.b.x)), 0u) ^ vec4<u32>(_wgslsmith_div_u32(global1.b.x, global1.b.x), ~37609u, global1.b.x << (1u % 32u), min(0u, global1.b.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, 42889u, global1.b.x), vec3<u32>(18943u, global1.b.x, 1u) >> (vec3<u32>(4294967295u, global1.b.x, global1.b.x) % vec3<u32>(32u))), _wgslsmith_sub_u32(global1.b.x, global1.b.x), global1.b.x, 15647u)), u_input.c.xzx, global1.a.a, select(vec4<bool>(func_4(var_0.a.a.b, i32(-1i) * -11518i, Struct_3(Struct_1(-1i, vec4<bool>(false, true, var_0.a.a.b.x, var_1.b.b.x))), select(global1.d.a.b, var_0.a.a.b, var_0.c.b.b)).b.b.x, all(!vec3<bool>(var_0.b, var_1.b.b.x, true)), var_1.b.b.x, all(global1.d.a.b)), select(select(vec4<bool>(var_1.b.b.x, var_0.a.a.b.x, global1.a.b, true), var_1.b.b, func_4(var_0.a.a.b, var_2.x, Struct_3(Struct_1(-13288i, var_0.c.b.b)), vec4<bool>(var_0.b, global1.d.a.b.x, false, var_0.a.a.b.x)).b.b), var_1.b.b, select(vec4<bool>(var_0.a.a.b.x, var_1.b.b.x, true, false), func_4(vec4<bool>(var_1.b.b.x, true, false, var_1.b.b.x), 47917i, Struct_3(Struct_1(1i, var_1.b.b)), vec4<bool>(global1.a.b, var_1.b.b.x, global1.a.c.b.b.x, false)).b.b, false)), all(global1.a.c.b.b.wz)));
    global1 = Struct_5(Struct_4(Struct_3(Struct_1(-u_input.e, vec4<bool>(var_0.b, var_0.a.a.b.x, global1.e.x, true))), global1.e.x, global1.a.c), _wgslsmith_div_vec4_u32(~vec4<u32>(global1.b.x, 1u, 38331u << (global1.b.x % 32u), ~global1.b.x), vec4<u32>(~_wgslsmith_dot_vec4_u32(global1.b, global1.b), 27262u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global1.b.zxz, global1.b.yzx), global1.b.x | global1.b.x), ~(global1.b.x & global1.b.x))), ~abs(abs(u_input.c.wwy)), var_0.a, var_0.c.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.a.x, 813f, -411f, global1.a.c.a.x), vec4<f32>(-525f, global1.a.c.a.x, 773f, 453f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-939f - -558f) + var_0.c.a.x), 692f, 1765f, _wgslsmith_f_op_f32(var_0.c.a.x * _wgslsmith_f_op_f32(-global1.a.c.a.x)))), ~global1.a.c.c);
}

