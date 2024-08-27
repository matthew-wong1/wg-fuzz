struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(34034i, 2147483647i, -7597i), vec3<i32>(-27397i, 70037i, 28379i), vec3<i32>(-18873i, -13010i, 2147483647i), vec3<i32>(-26085i, 0i, 62216i), vec3<i32>(37536i, 0i, -1i), vec3<i32>(50382i, -1i, -1i), vec3<i32>(-1i, -19657i, 75778i), vec3<i32>(i32(-2147483648), 2147483647i, -33445i), vec3<i32>(7316i, 48068i, -1i), vec3<i32>(-1i, -6591i, i32(-2147483648)), vec3<i32>(-58998i, 10264i, 36681i), vec3<i32>(21765i, 2147483647i, -1i), vec3<i32>(1i, 12815i, 51068i), vec3<i32>(-21884i, 41248i, -1i), vec3<i32>(-1i, 35125i, 2147483647i), vec3<i32>(0i, -1i, -27394i), vec3<i32>(i32(-2147483648), i32(-2147483648), -9187i), vec3<i32>(49991i, 1i, -17141i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-4328i, 2147483647i, 0i), vec3<i32>(2147483647i, 1i, -11924i), vec3<i32>(-1i, i32(-2147483648), -12598i), vec3<i32>(1i, 19056i, 2147483647i), vec3<i32>(0i, 31235i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 9943i, i32(-2147483648)));

var<private> global3: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_4 {
    let var_0 = ~vec2<u32>(~(~922u), 0u) & firstLeadingBit(max(~vec2<u32>(26999u, 4294967295u), ~(~vec2<u32>(global0.x, global0.x))));
    let var_1 = Struct_2(790f);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, -762f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(f32(-1f) * -675f)), var_1.a)), -1000f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1071f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1264f - -1292f)), var_1.a)));
    global1 = global0.x;
    return Struct_4(vec2<i32>(1i, min(-_wgslsmith_clamp_i32(3455i, 2147483647i, 2147483647i), -u_input.b.x)), Struct_1(vec4<i32>((u_input.a >> (1u % 32u)) | 6978i, 74245i ^ (u_input.b.x & 2147483647i), -1i, _wgslsmith_sub_i32(1i, u_input.b.x << (4294967295u % 32u))), vec3<u32>(var_0.x, 1u, ~var_0.x), firstLeadingBit(var_0.x), vec4<f32>(535f, var_1.a, _wgslsmith_f_op_f32(-var_1.a), 361f)), Struct_1(-vec4<i32>(-3250i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.b.x, -19262i), vec4<i32>(u_input.b.x, -16926i, u_input.a, -2147483647i)), u_input.a), ~(select(vec3<u32>(6308u, 0u, 0u), vec3<u32>(var_0.x, 1u, 0u), vec3<bool>(true, false, true)) << (~vec3<u32>(44891u, 0u, 14441u) % vec3<u32>(32u))), ~1u, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1273f + 395f))), var_1.a, 681f, -369f)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_div_vec2_f32(var_0.c.d.zz, _wgslsmith_f_op_vec2_f32(-var_0.c.d.wy));
    let var_2 = any(select(vec4<bool>(true, true, var_1.x <= _wgslsmith_f_op_f32(sign(1429f)), true), !vec4<bool>(true, true, true, any(vec4<bool>(true, true, false, true))), vec4<bool>(!any(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), false, true)));
    global1 = ~(0u << (var_0.c.b.x % 32u));
    let var_3 = var_0.c;
    return func_2().c;
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    global3 = 27745u;
    let var_0 = Struct_3(Struct_2(arg_0.a));
    let var_1 = Struct_4(~u_input.b.xz, Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, u_input.a, u_input.b.x, -2147483647i), vec4<i32>(1i, u_input.a, -28623i, 67759i)), select(~vec4<i32>(-27752i, u_input.b.x, u_input.a, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(3675i, u_input.a, u_input.a, u_input.a)), true)), select(vec3<u32>(1u, 0u, 1u), ~(~vec3<u32>(global0.x, global0.x, 1u)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))), global0.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1056f, var_0.a.a, var_0.a.a, -1696f), vec4<f32>(323f, var_0.a.a, arg_1, var_0.a.a))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-348f, arg_0.a, arg_0.a, 488f))))))), Struct_1(-vec4<i32>(-u_input.b.x, u_input.a, ~u_input.a, -88852i), vec3<u32>(0u, _wgslsmith_div_u32(firstTrailingBit(global0.x), ~global0.x), max(~global0.x, ~global0.x)), global0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1949f, arg_1, -1249f, arg_1), vec4<f32>(320f, -1296f, var_0.a.a, arg_1), true))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(104f, -1767f, 1123f, -116f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, var_0.a.a, arg_0.a, var_0.a.a) + vec4<f32>(arg_1, -1000f, 1453f, arg_0.a)))))));
    let var_2 = Struct_4(vec2<i32>(_wgslsmith_mult_i32(-17794i, func_1().a.x), var_1.c.a.x), Struct_1(var_1.b.a, ~var_1.b.b, var_1.b.c, var_1.c.d), var_1.c);
    var var_3 = reverseBits(-(~max(vec3<i32>(-2147483647i, -2147483647i, -2147483647i), max(vec3<i32>(1i, 34557i, u_input.b.x), vec3<i32>(var_1.a.x, -53292i, 70710i)))));
    return ~select(var_1.c.c >> (0u % 32u), ~reverseBits(47558u), true) & (global0.x << (var_2.c.b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.b.yz, func_1(), Struct_1(-_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-6322i, u_input.b.x, u_input.a, u_input.a), vec4<i32>(-2147483647i, -1i, 2147483647i, 39367i)), max(vec4<i32>(4846i, u_input.b.x, 51166i, 55088i), vec4<i32>(1i, 0i, 2147483647i, u_input.a))), vec3<u32>(~min(17382u, global0.x), _wgslsmith_mult_u32(global0.x, global0.x) & _wgslsmith_mod_u32(20708u, global0.x), func_3(Struct_2(-1299f), _wgslsmith_div_f32(-1218f, -812f))), abs(~40865u & ~global0.x), _wgslsmith_f_op_vec4_f32(-func_2().b.d)));
    var_0 = func_2();
    let var_1 = (_wgslsmith_mult_u32(func_2().c.c, global0.x) << (var_0.c.b.x % 32u)) | _wgslsmith_sub_u32(global0.x, global0.x);
    var var_2 = ~var_0.c.a.x;
    var var_3 = _wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c.c, ~0u), ~vec2<u32>(0u, 23387u), vec2<u32>(4294967295u, var_0.b.b.x)), _wgslsmith_sub_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(~var_0.c.b.yx, _wgslsmith_sub_vec2_u32(var_0.b.b.yx, var_0.c.b.yx))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 26069u), func_2().c.b.zz, var_0.c.b.zy << (var_0.b.b.yz % vec2<u32>(32u))) >> (~_wgslsmith_mult_vec2_u32(var_0.c.b.xz, vec2<u32>(0u, 0u)) % vec2<u32>(32u))));
    var_2 = _wgslsmith_mod_i32(countOneBits(0i), u_input.a);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-vec3<i32>(_wgslsmith_dot_vec4_i32(var_4.a, var_4.a), abs(33472i), -32128i)));
}

