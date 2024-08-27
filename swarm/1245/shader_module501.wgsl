struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(28000u, 1u, 1u, 0u), vec4<u32>(4294967295u, 53337u, 0u, 14493u), vec4<u32>(63060u, 0u, 82667u, 47227u), vec4<u32>(1u, 68789u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(0u, 1u, 0u, 22260u), vec4<u32>(4294967295u, 4294967295u, 67287u, 11473u), vec4<u32>(1u, 1u, 16881u, 1u), vec4<u32>(24728u, 50017u, 5094u, 32502u), vec4<u32>(40032u, 58243u, 93269u, 52228u), vec4<u32>(4294967295u, 35503u, 4294967295u, 1275u), vec4<u32>(0u, 4294967295u, 1u, 540u), vec4<u32>(1u, 47693u, 0u, 0u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(7785u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 126873u, 1u, 4294967295u), vec4<u32>(54709u, 1u, 4294967295u, 13988u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(58320u, 0u, 65635u, 4294967295u), vec4<u32>(1u, 3504u, 101377u, 43247u), vec4<u32>(34005u, 42844u, 3391u, 56637u), vec4<u32>(52375u, 5817u, 4294967295u, 0u), vec4<u32>(0u, 1u, 0u, 9348u), vec4<u32>(20610u, 8661u, 1u, 0u), vec4<u32>(0u, 1u, 7113u, 1u), vec4<u32>(0u, 7432u, 0u, 4294967295u), vec4<u32>(4294967295u, 47953u, 11754u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = arg_0.d.x;
    global0 = array<vec4<u32>, 27>();
    let var_1 = 23275u;
    var var_2 = arg_0.b.zyx & -u_input.c.zyy;
    let var_3 = arg_0;
    return _wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.e, 4294967295u), reverseBits(abs(_wgslsmith_add_u32(~var_3.d.x, 33462u))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    global0 = array<vec4<u32>, 27>();
    var var_1 = ~vec4<u32>(4294967295u ^ (select(0u, 0u, true) ^ (u_input.b & 0u)), reverseBits(_wgslsmith_sub_u32(u_input.e, u_input.a >> (u_input.e % 32u))), func_3(Struct_1(u_input.c.wy, vec4<i32>(-24641i, u_input.c.x, -2147483647i, u_input.d), false, vec3<u32>(1732u, 1u, u_input.b)), 0u), u_input.a);
    var var_2 = Struct_2(_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(44864u, var_1.x, 15064u), var_1.xzw) << (~_wgslsmith_add_vec3_u32(var_1.xyz, var_1.zwy) % vec3<u32>(32u)), ~(vec3<u32>(9942u, var_1.x, 40502u) >> (~var_1.xww % vec3<u32>(32u)))));
    var_1 = vec4<u32>(var_1.x, var_2.a.x, var_1.x, countOneBits(var_2.a.x));
    return Struct_2(var_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global0 = array<vec4<u32>, 27>();
    var var_0 = _wgslsmith_sub_i32(max(-2147483647i, select(select(arg_0.b.x, abs(arg_0.a.x), true), 33906i, !(!arg_2.c))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(arg_2.b.xw, arg_2.b.yw), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, arg_0.b), 1i)));
    var_0 = i32(-1i) * -1i;
    global0 = array<vec4<u32>, 27>();
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.c.x | -19614i, -2147483647i), -1i << (countOneBits(func_2().a.x) % 32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(~41032i, 2822i), max(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, arg_2.a.x), vec2<i32>(arg_0.a.x, arg_2.a.x))), u_input.c.ww & arg_2.b.ww)));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = arg_1.a.x;
    let var_2 = _wgslsmith_sub_i32(arg_0.a.x, -30413i);
    var_1 = _wgslsmith_div_u32(arg_0.d.x, firstLeadingBit(u_input.b));
    var var_3 = Struct_1(u_input.c.yy, vec4<i32>(23674i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, arg_2.x) << (arg_3.a.xy % vec2<u32>(32u)), vec2<i32>(arg_2.x, arg_0.a.x)) | 2147483647i, -2147483647i, ~(~u_input.c.x ^ 28759i)), false, ~firstTrailingBit(~vec3<u32>(25367u, 4294967295u, arg_0.d.x)));
    return Struct_1(firstTrailingBit(~firstTrailingBit(min(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(-1i, -1i)))), var_3.b, true, arg_1.a);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: u32) -> i32 {
    let var_0 = false;
    var var_1 = func_5(Struct_1(u_input.c.zx, u_input.c, _wgslsmith_f_op_f32(select(1756f, arg_1.x, var_0)) != arg_1.x, (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 0u, arg_3), arg_0) ^ vec3<u32>(1u, 1u, u_input.b)) >> (reverseBits(min(vec3<u32>(11144u, 72090u, 58363u), vec3<u32>(arg_2.x, arg_3, 82182u))) % vec3<u32>(32u))), Struct_2(vec3<u32>(4294967295u, firstLeadingBit(~arg_3), 5799u)), _wgslsmith_div_vec3_i32(-max(firstTrailingBit(u_input.c.yzw), vec3<i32>(u_input.c.x, u_input.c.x, 9229i)), vec3<i32>(-u_input.c.x, _wgslsmith_clamp_i32(u_input.d | 2147483647i, u_input.d, -3894i), u_input.c.x)), func_4(Struct_1(vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c.yyw, u_input.c.www)), ~u_input.c, false, ~arg_0), func_2(), Struct_1(abs(~vec2<i32>(u_input.c.x, -21020i)), ~countOneBits(u_input.c), var_0, _wgslsmith_add_vec3_u32(min(arg_0, vec3<u32>(u_input.e, 1u, arg_3)), ~arg_0))));
    var var_2 = func_5(Struct_1(var_1.a, var_1.b, !(any(vec3<bool>(false, var_1.c, var_1.c)) != true), select(reverseBits(~vec3<u32>(arg_3, 90941u, 3463u)), ~(vec3<u32>(1u, u_input.a, arg_2.x) ^ var_1.d), !var_0 & true)), func_2(), vec3<i32>(0i & (u_input.c.x | ~var_1.a.x), var_1.b.x & abs(-43043i), ~var_1.a.x >> (~(~arg_3) % 32u)), Struct_2(~arg_0));
    var_1 = func_5(func_5(Struct_1(~u_input.c.wy, _wgslsmith_mod_vec4_i32(firstTrailingBit(var_1.b), select(var_1.b, u_input.c, var_0)), any(select(vec4<bool>(false, true, var_2.c, var_2.c), vec4<bool>(var_2.c, true, var_2.c, false), vec4<bool>(var_1.c, false, var_1.c, var_2.c))), func_2().a), Struct_2(countOneBits(vec3<u32>(arg_0.x, 0u, 25695u))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(0i, -2147483647i), var_2.a.x, -var_1.a.x), vec3<i32>(reverseBits(-1i), -37501i, ~(-15238i))), func_2()), func_2(), vec3<i32>(-3887i, u_input.c.x, select(abs(-2219i | var_2.a.x), u_input.c.x ^ var_1.b.x, any(vec4<bool>(var_2.c, var_0, var_2.c, var_1.c)))), func_4(func_5(func_5(func_5(Struct_1(var_1.a, vec4<i32>(var_2.a.x, u_input.d, -50927i, -69171i), true, vec3<u32>(var_1.d.x, 0u, 1u)), Struct_2(vec3<u32>(0u, 74453u, 4294967295u)), var_2.b.wxw, Struct_2(vec3<u32>(6262u, 16287u, var_1.d.x))), func_2(), ~var_1.b.zzz, Struct_2(var_1.d)), func_4(Struct_1(var_1.a, var_2.b, var_0, vec3<u32>(24255u, 24027u, 5789u)), Struct_2(arg_0), Struct_1(vec2<i32>(-1i, u_input.d), vec4<i32>(1i, u_input.d, var_1.b.x, var_2.b.x), true, vec3<u32>(arg_3, 38554u, 4294967295u))), vec3<i32>(abs(1i), 50615i, -15209i), func_2()), Struct_2(~(arg_0 ^ arg_0)), func_5(func_5(func_5(Struct_1(u_input.c.xw, var_1.b, var_1.c, vec3<u32>(1322u, 20811u, u_input.b)), Struct_2(var_1.d), vec3<i32>(1i, 13239i, 6237i), Struct_2(arg_0)), Struct_2(var_1.d), vec3<i32>(var_2.b.x, var_1.b.x, 1i), Struct_2(vec3<u32>(0u, 1u, var_1.d.x))), Struct_2(vec3<u32>(56679u, 4294967295u, var_2.d.x) & vec3<u32>(arg_0.x, 0u, arg_2.x)), -vec3<i32>(0i, var_2.a.x, -59327i), func_4(func_5(Struct_1(var_2.a, var_1.b, var_0, vec3<u32>(112829u, 55935u, var_2.d.x)), Struct_2(var_2.d), u_input.c.yzw, Struct_2(arg_0)), func_4(Struct_1(vec2<i32>(-1i, 0i), var_2.b, var_2.c, var_1.d), Struct_2(vec3<u32>(28926u, arg_3, 1u)), Struct_1(vec2<i32>(var_2.a.x, -6752i), var_1.b, var_0, arg_0)), Struct_1(vec2<i32>(var_2.b.x, var_2.a.x), u_input.c, false, var_1.d)))));
    let var_3 = Struct_2(_wgslsmith_sub_vec3_u32(arg_0, select(firstTrailingBit(vec3<u32>(0u, 52985u, 24612u)), ~vec3<u32>(var_2.d.x, var_2.d.x, 1u), true)));
    return var_1.a.x;
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: bool) -> StorageBuffer {
    global0 = array<vec4<u32>, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(646f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f) * -417f)) - vec2<f32>(_wgslsmith_f_op_f32(665f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -462f)))), 775f));
    global0 = array<vec4<u32>, 27>();
    let var_1 = _wgslsmith_f_op_f32(362f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_2) + _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(arg_1.x + -341f)))));
    global0 = array<vec4<u32>, 27>();
    return StorageBuffer(~(u_input.a & 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(841f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(830f)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1528f);
    global0 = array<vec4<u32>, 27>();
    var var_2 = u_input.c.yw;
    global0 = array<vec4<u32>, 27>();
    let x = u_input.a;
    s_output = func_6(reverseBits(vec2<i32>(_wgslsmith_add_i32(func_1(vec3<u32>(74941u, 26065u, u_input.a), vec4<f32>(-749f, 305f, 1611f, var_0.x), vec2<u32>(4294967295u, u_input.e), 0u), -7690i), ~(-21542i))), vec3<f32>(var_0.x, 1933f, 543f), 434f, true);
}

