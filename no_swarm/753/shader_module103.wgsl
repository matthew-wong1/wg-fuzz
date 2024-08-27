struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec3<i32>(-1i, i32(-2147483648), 9067i)), Struct_1(vec3<i32>(-19820i, 1i, 0i))), Struct_2(Struct_1(vec3<i32>(1i, -4332i, -1i)), Struct_1(vec3<i32>(-41976i, i32(-2147483648), 0i))), Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, 0i)), Struct_1(vec3<i32>(-1i, 1i, -29415i))), Struct_2(Struct_1(vec3<i32>(19160i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(-5877i, 1i, 2147483647i))), Struct_2(Struct_1(vec3<i32>(27199i, i32(-2147483648), 18701i)), Struct_1(vec3<i32>(2147483647i, -36304i, 0i))), Struct_2(Struct_1(vec3<i32>(-1i, -39076i, 2147483647i)), Struct_1(vec3<i32>(-45792i, -1i, 2147483647i))), Struct_2(Struct_1(vec3<i32>(1i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(0i, -1i, 18881i))), Struct_2(Struct_1(vec3<i32>(-27904i, 59530i, -10300i)), Struct_1(vec3<i32>(6521i, 29027i, 47087i))), Struct_2(Struct_1(vec3<i32>(-29687i, -1243i, -1i)), Struct_1(vec3<i32>(65723i, -24101i, 74774i))), Struct_2(Struct_1(vec3<i32>(4680i, 2147483647i, 1i)), Struct_1(vec3<i32>(39759i, -22685i, 0i))), Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, -29684i)), Struct_1(vec3<i32>(i32(-2147483648), 20643i, -20154i))), Struct_2(Struct_1(vec3<i32>(-12045i, 2300i, -25649i)), Struct_1(vec3<i32>(-1i, -16525i, 5937i))), Struct_2(Struct_1(vec3<i32>(2147483647i, -5539i, 2147483647i)), Struct_1(vec3<i32>(9156i, 1648i, -2805i))), Struct_2(Struct_1(vec3<i32>(-18026i, i32(-2147483648), -1i)), Struct_1(vec3<i32>(i32(-2147483648), -60172i, 39537i))), Struct_2(Struct_1(vec3<i32>(18736i, 376i, 2147483647i)), Struct_1(vec3<i32>(0i, 16490i, i32(-2147483648)))), Struct_2(Struct_1(vec3<i32>(1i, -21413i, -39660i)), Struct_1(vec3<i32>(1484i, -21414i, 0i))), Struct_2(Struct_1(vec3<i32>(3301i, -1i, -28139i)), Struct_1(vec3<i32>(53893i, 1i, -1i))), Struct_2(Struct_1(vec3<i32>(2147483647i, -39737i, 4060i)), Struct_1(vec3<i32>(44477i, -33001i, -1i))), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, -1i)), Struct_1(vec3<i32>(-1i, 2147483647i, 0i))), Struct_2(Struct_1(vec3<i32>(-23578i, -19439i, i32(-2147483648))), Struct_1(vec3<i32>(-15250i, -1i, -19077i))), Struct_2(Struct_1(vec3<i32>(49924i, 1i, 1i)), Struct_1(vec3<i32>(1050i, 11668i, i32(-2147483648)))), Struct_2(Struct_1(vec3<i32>(0i, -13307i, -1i)), Struct_1(vec3<i32>(285i, 0i, 24492i))), Struct_2(Struct_1(vec3<i32>(-15304i, 1i, -2263i)), Struct_1(vec3<i32>(1i, -34238i, -1i))), Struct_2(Struct_1(vec3<i32>(4771i, 2147483647i, -22756i)), Struct_1(vec3<i32>(21972i, 32270i, -42212i))), Struct_2(Struct_1(vec3<i32>(2147483647i, 7685i, -9637i)), Struct_1(vec3<i32>(0i, 2147483647i, 56130i))), Struct_2(Struct_1(vec3<i32>(21033i, -34201i, 0i)), Struct_1(vec3<i32>(-6492i, -1i, 0i))), Struct_2(Struct_1(vec3<i32>(2147483647i, -46134i, 33053i)), Struct_1(vec3<i32>(-21794i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(vec3<i32>(-10562i, 13252i, 1i)), Struct_1(vec3<i32>(2147483647i, -60614i, 2147483647i))));

var<private> global1: array<Struct_1, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec3<i32> {
    global0 = array<Struct_2, 28>();
    global1 = array<Struct_1, 25>();
    let var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 25u)];
    global1 = array<Struct_1, 25>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.b ^ ~(u_input.b >> (~(~u_input.b) % 32u)), 25u)];
    return _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(countOneBits(-666i), -2147483647i, u_input.d), vec3<i32>(-27948i, -37640i, u_input.d)), var_1.a);
}

fn func_3(arg_0: u32) -> u32 {
    global1 = array<Struct_1, 25>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1746f + _wgslsmith_f_op_f32(f32(-1f) * -1042f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1177f * 1531f)))), -484f);
    var var_1 = ~select(max(vec4<u32>(~arg_0, _wgslsmith_div_u32(40749u, arg_0), u_input.e.x, ~arg_0), select(_wgslsmith_div_vec4_u32(vec4<u32>(33114u, arg_0, u_input.a.x, 79636u), vec4<u32>(66178u, u_input.b, 20613u, arg_0)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.e.x, u_input.a.x, arg_0), vec4<u32>(4294967295u, u_input.b, u_input.a.x, 12413u)), 1u != u_input.e.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, u_input.a.x, 174670u, 1u), vec4<u32>(u_input.b, arg_0, 18665u, u_input.b)) >> (vec4<u32>(_wgslsmith_div_u32(6117u, 21895u), firstTrailingBit(4294967295u), arg_0, _wgslsmith_clamp_u32(3844u, u_input.b, arg_0)) % vec4<u32>(32u)), false);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(104f, var_0.x, false)), var_0.x, _wgslsmith_f_op_f32(floor(938f)), _wgslsmith_f_op_f32(var_0.x * 697f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(619f, -1000f, -1091f, 456f), vec4<f32>(var_0.x, var_0.x, var_0.x, 591f)))))));
    var_1 = _wgslsmith_add_vec4_u32(~firstTrailingBit(~vec4<u32>(var_1.x, u_input.e.x, u_input.a.x, u_input.b)), firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_0, 4294967295u, 2125u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0, var_1.x, 0u), vec4<u32>(arg_0, 63451u, 49141u, u_input.e.x))), ~abs(vec4<u32>(1u, 89893u, 1u, var_1.x)))));
    return abs(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(arg_0), arg_0 << (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, var_1.x, u_input.b), vec3<u32>(15200u, u_input.b, u_input.a.x))), u_input.e)) ^ u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    global0 = array<Struct_2, 28>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(46261u, func_3(4294967295u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(3632u, _wgslsmith_mult_u32(u_input.e.x, 36426u), _wgslsmith_dot_vec4_u32(~vec4<u32>(59381u, u_input.a.x, 4294967295u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(39101u, 4294967295u, 1u, u_input.b), vec4<u32>(u_input.e.x, u_input.b, u_input.a.x, 26023u), vec4<u32>(u_input.a.x, 16478u, u_input.a.x, u_input.b)))), u_input.e), 28u)];
    global1 = array<Struct_1, 25>();
    global1 = array<Struct_1, 25>();
    var var_1 = vec2<bool>(true, !((1u >= func_3(u_input.a.x)) & select(select(arg_1, false, false), true, false)));
    return arg_3.b.a >> (vec3<u32>(~abs(_wgslsmith_mult_u32(26629u, u_input.b)), 76831u, 4294967295u) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_3) -> vec3<u32> {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    var var_0 = Struct_1(firstTrailingBit(arg_3.d.a));
    global0 = array<Struct_2, 28>();
    var_0 = Struct_1(_wgslsmith_sub_vec3_i32(~(~vec3<i32>(var_0.a.x, 10736i, arg_0.d.a.x)), vec3<i32>(func_1().x, -_wgslsmith_div_i32(-33633i, 29050i), i32(-1i) * -1i)));
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(vec2<i32>(-u_input.c, _wgslsmith_mult_i32(u_input.d, ~u_input.d)), u_input.a.x ^ 1u, global0[_wgslsmith_index_u32(u_input.e.x, 28u)], Struct_1(select(func_1(), func_2(-223f, false, Struct_2(Struct_1(vec3<i32>(-18597i, 1i, 20531i)), Struct_1(vec3<i32>(u_input.d, -2147483647i, 2147483647i))), global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec3<bool>(true, true, false)))), select(~vec3<u32>(func_3(u_input.b), ~4294967295u, ~u_input.a.x), u_input.e, false), ~_wgslsmith_add_u32(u_input.e.x, 0u), Struct_3(abs(select(vec2<i32>(u_input.c, 1i), vec2<i32>(u_input.c, u_input.d), true) << (vec2<u32>(27011u, 0u) % vec2<u32>(32u))), u_input.a.x, global0[_wgslsmith_index_u32(~u_input.e.x, 28u)], global1[_wgslsmith_index_u32(~22476u, 25u)]));
    let var_1 = false;
    let var_2 = max(countOneBits(max(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4545u), 26712u, _wgslsmith_dot_vec4_u32(vec4<u32>(39531u, var_0.x, u_input.a.x, 62617u), vec4<u32>(u_input.e.x, var_0.x, 4294967295u, 4294967295u))), ~u_input.e << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, 11004u), u_input.e) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(countOneBits(u_input.e), abs(~(~u_input.e))));
    global1 = array<Struct_1, 25>();
    var_0 = abs(var_2);
    let var_3 = var_0.x & (4294967295u << (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c & 1i), _wgslsmith_mult_vec4_u32(~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(16554u, u_input.a.x, var_2.x, 47737u), vec4<u32>(52703u, 55818u, var_0.x, u_input.a.x))), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 9622u, 4294967295u, var_2.x), ~vec4<u32>(u_input.a.x, 35033u, u_input.b, 0u))), ~countOneBits(select(u_input.e, vec3<u32>(var_3, var_0.x, var_2.x), vec3<bool>(false, var_1, false))), var_2);
}

