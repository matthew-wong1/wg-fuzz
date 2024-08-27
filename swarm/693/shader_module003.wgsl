struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-1i, -1i, 0i), vec3<i32>(0i, 19417i, -55196i), vec3<i32>(1i, 0i, 10429i), vec3<i32>(-56240i, i32(-2147483648), 31391i), vec3<i32>(24586i, -6258i, 54087i), vec3<i32>(25276i, i32(-2147483648), 2147483647i), vec3<i32>(-42234i, i32(-2147483648), 6606i), vec3<i32>(1i, 0i, 0i), vec3<i32>(-1i, 4446i, -2756i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(-34509i, -38984i, -6878i), vec3<i32>(1i, -10822i, 24088i), vec3<i32>(i32(-2147483648), 1i, -59093i), vec3<i32>(-32667i, -28547i, -30427i), vec3<i32>(1i, 1i, -56350i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(-43269i, 65988i, -2213i), vec3<i32>(2987i, i32(-2147483648), 32777i));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<i32>(45227i, -38071i, 8635i, 13980i), vec2<u32>(18186u, 0u), 103844u, vec4<bool>(true, true, false, true), vec3<i32>(i32(-2147483648), -25546i, 19919i)), Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), 48394i), vec2<u32>(1u, 0u), 1u, vec4<bool>(false, false, false, true), vec3<i32>(20863i, -46872i, 1i)), Struct_1(vec4<i32>(-31165i, 15434i, i32(-2147483648), 2147483647i), vec2<u32>(87970u, 1u), 4294967295u, vec4<bool>(true, false, true, false), vec3<i32>(57020i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, -15369i, -28448i, 1i), vec2<u32>(4294967295u, 61131u), 44694u, vec4<bool>(false, true, true, true), vec3<i32>(0i, i32(-2147483648), 0i)), Struct_1(vec4<i32>(2147483647i, 27258i, -1i, -15846i), vec2<u32>(1u, 35040u), 64684u, vec4<bool>(false, false, false, false), vec3<i32>(0i, 1i, 0i)), Struct_1(vec4<i32>(1i, 23467i, -37597i, 2147483647i), vec2<u32>(4294967295u, 0u), 16833u, vec4<bool>(true, false, true, false), vec3<i32>(2147483647i, 63167i, -1i)), Struct_1(vec4<i32>(1i, 15877i, -951i, -12658i), vec2<u32>(4294967295u, 0u), 12111u, vec4<bool>(true, true, false, true), vec3<i32>(19707i, -35132i, -469i)), Struct_1(vec4<i32>(5671i, -37763i, i32(-2147483648), i32(-2147483648)), vec2<u32>(9851u, 1u), 0u, vec4<bool>(false, true, true, true), vec3<i32>(30205i, 0i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), 37009i, 1i, 32725i), vec2<u32>(1u, 11957u), 15658u, vec4<bool>(true, false, true, true), vec3<i32>(0i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(30758i, -240i, 1i, 22547i), vec2<u32>(4294967295u, 0u), 45957u, vec4<bool>(true, true, false, false), vec3<i32>(i32(-2147483648), -20026i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 2197i), vec2<u32>(4294967295u, 56697u), 13322u, vec4<bool>(true, false, false, true), vec3<i32>(39462i, 1i, 27340i)), Struct_1(vec4<i32>(2147483647i, 86047i, 0i, 67773i), vec2<u32>(4294967295u, 19846u), 56398u, vec4<bool>(false, true, true, false), vec3<i32>(5653i, 1i, -5694i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    return vec2<u32>(countOneBits(26019u), 1u);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_2.a, abs(_wgslsmith_mult_vec2_u32(vec2<u32>(19096u, ~4294967295u), _wgslsmith_sub_vec2_u32(func_3(arg_2, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, arg_2.a.x), arg_2.b, 1u, vec4<bool>(true, arg_2.d.x, true, true), u_input.a), 1884f), ~arg_2.b))), 38563u, vec4<bool>(true, all(vec4<bool>(arg_2.d.x, arg_2.d.x, select(arg_2.d.x, arg_2.d.x, arg_2.d.x), u_input.a.x != arg_2.a.x)), !(arg_1.x >= 1u), true), vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-33136i, ~(u_input.b.x & 0i)), max(1i, u_input.a.x)));
    let var_1 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-var_0.a, ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.e.x, -31854i, -13593i, 2147483647i), arg_2.a)), var_0.a), abs(select(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), countOneBits(arg_2.b.x)), max(~u_input.c.yy, arg_2.b), arg_2.d.x)), ~countOneBits(_wgslsmith_div_u32(abs(arg_2.c), var_0.b.x)), !(!vec4<bool>(var_0.d.x, false, true, true)), reverseBits(~_wgslsmith_mult_vec3_i32(u_input.a, firstLeadingBit(arg_2.a.yzw))));
    global1 = array<vec3<i32>, 18>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1546f, _wgslsmith_f_op_f32(sign(arg_0))) - vec2<f32>(1424f, _wgslsmith_f_op_f32(exp2(arg_0))))));
    let var_3 = select(var_0.d, vec4<bool>(select(true, all(!var_1.d.wxw), false), any(vec3<bool>(var_0.d.x, var_1.d.x, false)), var_0.d.x, true), false);
    return _wgslsmith_mod_u32(3916u, reverseBits(65208u));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(1i, min(arg_0, 1i), arg_0), -(~(~arg_0)), _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, arg_0), ~u_input.d), firstTrailingBit(u_input.d)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c.x >> (u_input.c.x % 32u), u_input.c.x << (u_input.c.x % 32u), func_2(arg_1.x, u_input.c.xy, global2[_wgslsmith_index_u32(u_input.c.x, 12u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(64660u, u_input.c.x, u_input.c.x, 1u), u_input.c >> (vec4<u32>(u_input.c.x, 7989u, 56295u, 1u) % vec4<u32>(32u)))), u_input.c.x), _wgslsmith_div_u32(min(~0u, ~(u_input.c.x << (u_input.c.x % 32u))), _wgslsmith_clamp_u32(select(_wgslsmith_dot_vec2_u32(u_input.c.zw, u_input.c.xx), _wgslsmith_div_u32(u_input.c.x, 40325u), true), reverseBits(u_input.c.x) >> ((u_input.c.x >> (u_input.c.x % 32u)) % 32u), ~(~4294967295u))), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), true, true, false), _wgslsmith_mod_vec3_i32(vec3<i32>(~(-1i) >> (~u_input.c.x % 32u), countOneBits(-u_input.b.x), 1i), vec3<i32>(u_input.b.x, -41341i, u_input.a.x & u_input.b.x) | global1[_wgslsmith_index_u32(85914u, 18u)]));
    global2 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-118f, 230f))) + vec2<f32>(785f, -1000f)) - _wgslsmith_f_op_vec2_f32(exp2(arg_1.zy))), vec2<f32>(-118f, -124f))));
    global1 = array<vec3<i32>, 18>();
    global2 = array<Struct_1, 12>();
    return abs(_wgslsmith_div_u32(0u, _wgslsmith_add_u32(37791u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(97777u, 12u)];
    let var_1 = ~(select(abs(vec2<i32>(1i, -1457i)), (vec2<i32>(-39310i, var_0.e.x) ^ vec2<i32>(u_input.b.x, -45085i)) | var_0.a.zw, !(true & var_0.d.x)) & u_input.b);
    global0 = var_0.d.x;
    global1 = array<vec3<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(766f, _wgslsmith_f_op_f32(max(609f, -1000f))) * _wgslsmith_div_f32(-120f, 411f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-480f + _wgslsmith_f_op_f32(223f * 612f))))), vec3<u32>(func_1(_wgslsmith_dot_vec3_i32(var_0.a.wyw, min(vec3<i32>(var_1.x, u_input.a.x, var_1.x), vec3<i32>(u_input.a.x, 2147483647i, -1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1087f, -840f, -1026f)))), u_input.c.x, ~(~4294967295u)), _wgslsmith_f_op_f32(398f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1615f))))), 54294u | _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_clamp_u32(var_0.c, var_0.c, countOneBits(var_0.b.x))), _wgslsmith_clamp_vec2_i32(abs(~(u_input.a.zx | vec2<i32>(u_input.b.x, var_1.x))), u_input.b, u_input.a.xz));
}

