struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: vec4<f32> = vec4<f32>(1579f, -971f, 316f, 1000f);

var<private> global3: vec3<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    return Struct_4(abs(reverseBits(~(~vec4<u32>(4294967295u, 0u, 0u, arg_2)))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(21566u, 65027u), 8u)], true, global0[_wgslsmith_index_u32(60581u, 18u)]);
}

fn func_3(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(779f, global2.x, _wgslsmith_f_op_f32(-func_2(u_input.a.x, Struct_3(Struct_1(arg_0, u_input.a.x)), 15248u).d.b), -218f)), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) << (_wgslsmith_mod_u32(1u, 1u) % 32u));
    var var_1 = Struct_5(abs(~abs(vec4<u32>(1u, 1u, 24677u, 4294967295u))), abs(vec3<u32>(11544u, 34829u, select(106490u, 4294967295u, true))) & ~vec3<u32>(firstTrailingBit(68302u), 1u, ~0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global3.yx, vec2<f32>(arg_0.x, -196f)))));
    let var_2 = Struct_5(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.b.xy, vec2<u32>(33509u, ~var_1.b.x)), ~var_1.a.x, var_1.a.x, 0u), ~max(~min(vec3<u32>(var_1.b.x, var_1.b.x, var_1.a.x), vec3<u32>(4294967295u, 0u, var_1.a.x)), vec3<u32>(1u, 1u, 79998u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_1.c, var_0.a.ww))));
    let var_3 = func_2(_wgslsmith_div_i32(_wgslsmith_mod_i32(i32(-1i) * -36619i, -(~(-2147483647i))), var_0.b), Struct_3(var_0), ~(~_wgslsmith_mult_u32(var_1.b.x, 1u)) >> (~(abs(0u) << (abs(var_1.b.x) % 32u)) % 32u));
    let var_4 = !select(vec4<bool>(~var_0.b < -var_3.d.a.x, var_3.c, true, true), select(select(vec4<bool>(var_3.c, false, true, true), select(vec4<bool>(var_3.c, var_3.b.x, false, true), vec4<bool>(true, true, false, var_3.c), vec4<bool>(false, var_3.c, var_3.b.x, true)), !vec4<bool>(false, var_3.b.x, true, false)), vec4<bool>(-14082i < u_input.a.x, func_2(u_input.a.x, Struct_3(var_0), 105948u).c, var_3.a.x != 0u, !var_3.b.x), var_3.b.x), vec4<bool>(var_3.c, true, !any(vec2<bool>(var_3.b.x, var_3.c)), var_3.c));
    return func_2(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-(~u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_3.d.a.x, -71048i, var_3.d.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -28901i, 0i), vec4<i32>(34445i, -31637i, -2147483647i, 1i)), -vec4<i32>(var_0.b, -1i, 2147483647i, -18636i))), var_0.b), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(989f, -932f, global2.x, 1571f))), -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-11596i, -1759i, -1i)))), ~_wgslsmith_div_u32(~43439u, max(38148u, var_1.b.x))).d;
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    return Struct_2(arg_0.d.a, _wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_div_i32(arg_0.d.a.x, -17418i), Struct_3(Struct_1(vec4<f32>(-965f, 479f, 753f, global3.x), 2147483647i)), arg_0.d.d.x).d.c - _wgslsmith_f_op_f32(-global2.x))), ~select(~arg_2.d, vec3<u32>(arg_2.e, 4294967295u, 6070u), vec3<bool>(all(vec2<bool>(arg_0.c, arg_0.b.x)), true, true)), ~arg_2.e);
}

fn func_1(arg_0: i32, arg_1: Struct_5) -> vec3<u32> {
    let var_0 = func_4(func_2(_wgslsmith_div_i32(arg_0, u_input.a.x), Struct_3(Struct_1(vec4<f32>(global2.x, global2.x, 422f, -757f), 0i)), ~arg_1.b.x), arg_1.c.x, func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -738f, arg_1.c.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1468f, global3.x, 251f, arg_1.c.x)))));
    global1 = array<vec2<bool>, 8>();
    global1 = array<vec2<bool>, 8>();
    global0 = array<Struct_2, 18>();
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(Struct_4(arg_1.a, vec2<bool>(true, true), true, global0[_wgslsmith_index_u32(abs(arg_1.a.x), 18u)]), var_0.b, func_4(Struct_4(vec4<u32>(4294967295u, 0u, arg_1.b.x, 0u), vec2<bool>(true, true), true, Struct_2(vec2<i32>(2147483647i, arg_0), -870f, global3.x, arg_1.b, var_0.d.x)), arg_1.c.x, func_2(var_0.a.x, Struct_3(Struct_1(vec4<f32>(420f, global3.x, 1072f, var_0.b), -41646i)), var_0.e).d)).c, _wgslsmith_div_f32(390f, global2.x), _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(-1755f - _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(var_0.b + arg_1.c.x)));
    return func_2(-2147483647i, Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(612f, arg_1.c.x, 534f, 2177f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, 936f, 1293f) + vec4<f32>(769f, var_0.b, var_0.b, global3.x))), _wgslsmith_div_i32(2147483647i | u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, arg_0), u_input.a)))), _wgslsmith_div_u32(countOneBits(~var_0.d.x << (arg_1.b.x % 32u)), _wgslsmith_add_u32(~0u, max(func_4(Struct_4(arg_1.a, global1[_wgslsmith_index_u32(1u, 8u)], false, Struct_2(vec2<i32>(-1096i, arg_0), arg_1.c.x, -1219f, vec3<u32>(arg_1.a.x, arg_1.b.x, 0u), 69630u)), -1777f, Struct_2(vec2<i32>(u_input.a.x, 2147483647i), 1000f, global2.x, arg_1.b, arg_1.a.x)).d.x, ~6334u)))).d.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(reverseBits(func_1(select(u_input.a.x, 42873i, false), Struct_5(vec4<u32>(1u, 63158u, 0u, 4294967295u), vec3<u32>(21387u, 0u, 47216u), vec2<f32>(279f, global3.x)))) | abs(~vec3<u32>(1u, 1u, 1u)), ~func_3(vec4<f32>(_wgslsmith_f_op_f32(global3.x - -103f), global3.x, _wgslsmith_f_op_f32(-global3.x), 1307f)).d, ~abs(_wgslsmith_div_vec3_u32(func_4(Struct_4(vec4<u32>(20366u, 0u, 0u, 26043u), vec2<bool>(true, true), true, global0[_wgslsmith_index_u32(18581u, 18u)]), global2.x, Struct_2(u_input.a.yz, global3.x, global2.x, vec3<u32>(13398u, 59179u, 20407u), 4294967295u)).d, reverseBits(vec3<u32>(0u, 30952u, 1u)))));
    global0 = array<Struct_2, 18>();
    var var_1 = var_0.xy;
    var var_2 = var_1.x;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1171f)), _wgslsmith_f_op_f32(f32(-1f) * -188f), -187f, global3.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 1000f, global3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, global3.x, global3.x, -601f), vec4<f32>(358f, global2.x, -918f, global2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xz, abs(vec4<u32>(~1u, abs(var_1.x), 0u, ~var_0.x)), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785f * global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)));
}

