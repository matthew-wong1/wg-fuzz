struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_4) -> Struct_1 {
    return Struct_1(!arg_3.e.x & true, true, vec4<i32>(~arg_3.b, ~abs(arg_0.a.x), u_input.a, -65304i));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5, arg_3: Struct_1) -> vec3<bool> {
    global0 = arg_2;
    var var_0 = vec2<i32>(i32(-1i) * -(~min(-26394i, global0.a)), 1i);
    var_0 = abs(abs(select(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.a.c.wx, vec2<i32>(0i, 2147483647i)), ~0i), arg_0.a.c.yz, all(!arg_0.e.zxw))));
    var var_1 = Struct_4(arg_0.c.c, firstLeadingBit(_wgslsmith_div_i32(max(arg_0.c.c.x, -51031i), ~arg_2.a >> (~u_input.b % 32u))), vec2<f32>(555f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) - -869f)))), select(arg_0.e, vec4<bool>(arg_3.a, !arg_0.c.b, arg_0.a.a, !(!arg_3.b)), arg_3.a), select(vec2<bool>(false, arg_3.a), select(vec2<bool>(arg_3.b, true), arg_0.e.wy, vec2<bool>(true, true)), select(select(vec2<bool>(arg_0.a.b, true), vec2<bool>(false, arg_3.b), !vec2<bool>(arg_0.c.b, arg_3.b)), select(vec2<bool>(false, false), select(vec2<bool>(false, true), arg_0.e.xx, arg_0.e.wz), vec2<bool>(arg_0.e.x, false)), vec2<bool>(true, true))));
    let var_2 = arg_0.e.wz;
    return !select(var_1.d.zyw, vec3<bool>(any(vec2<bool>(true, true)), !var_1.e.x, (arg_0.d > arg_3.c.x) || func_2(Struct_4(arg_0.c.c, arg_0.a.c.x, vec2<f32>(var_1.c.x, -829f), vec4<bool>(true, true, arg_3.a, true), vec2<bool>(var_1.d.x, true)), arg_3.c.zx, 4294967295u, Struct_4(vec4<i32>(-33918i, 1i, 41206i, arg_2.a), -2147483647i, vec2<f32>(412f, var_1.c.x), vec4<bool>(false, arg_3.a, false, arg_0.a.b), vec2<bool>(false, arg_0.c.b))).a), true);
}

fn func_4(arg_0: bool) -> Struct_5 {
    var var_0 = ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global0.a), vec2<i32>(global0.a, u_input.a)), global0.a, 2147483647i, global0.a), vec4<i32>(select(u_input.a, -14916i, arg_0), u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, -4034i), -21783i, u_input.a << (u_input.c % 32u))));
    var var_1 = 6129i;
    var_0 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, global0.a, firstLeadingBit(u_input.a), _wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(var_0.x, var_0.x))), -vec4<i32>(_wgslsmith_sub_i32(29121i, 17359i), ~37534i, ~1i, -1i)));
    var_0 = ~abs(vec4<i32>(-u_input.a, -1i, 2147483647i, global0.a) >> (~vec4<u32>(24391u, u_input.c, u_input.b, 20516u) % vec4<u32>(32u)));
    var var_2 = func_2(Struct_4(abs(vec4<i32>(global0.a, 2147483647i, -2147483647i, -1i)) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(4386i, -1i, var_0.x, u_input.a), vec4<i32>(1i, global0.a, global0.a, -27191i)), reverseBits(abs(global0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1338f, -1184f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-364f, -958f) + vec2<f32>(-604f, -417f)))), vec4<bool>(false, !all(vec2<bool>(arg_0, true)), !arg_0, false), vec2<bool>(any(vec2<bool>(true, true)), arg_0)), -abs(var_0.yz) ^ ~max(-vec2<i32>(var_0.x, global0.a), -var_0.xw), u_input.b, Struct_4(-(~func_2(Struct_4(vec4<i32>(-2147483647i, -1i, 1i, var_0.x), var_0.x, vec2<f32>(817f, 775f), vec4<bool>(arg_0, false, true, true), vec2<bool>(true, true)), var_0.xx, 0u, Struct_4(vec4<i32>(-2147483647i, global0.a, global0.a, 13687i), u_input.a, vec2<f32>(443f, 1514f), vec4<bool>(false, true, arg_0, false), vec2<bool>(true, arg_0))).c), -2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-181f + -1770f), 1f)), select(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, false, false, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, true, arg_0, true), vec4<bool>(arg_0, false, true, arg_0))), vec4<bool>(56319u <= u_input.b, arg_0 | false, all(vec3<bool>(true, true, true)), arg_0), func_2(Struct_4(vec4<i32>(-44167i, 44433i, -2147483647i, global0.a), 0i, vec2<f32>(2539f, 1000f), vec4<bool>(true, arg_0, arg_0, false), vec2<bool>(true, arg_0)), abs(var_0.zz), u_input.c | u_input.b, Struct_4(vec4<i32>(0i, u_input.a, global0.a, u_input.a), 0i, vec2<f32>(-1184f, -657f), vec4<bool>(true, arg_0, false, arg_0), vec2<bool>(false, arg_0))).b), func_3(Struct_2(Struct_1(arg_0, false, vec4<i32>(u_input.a, 1i, -48959i, var_0.x)), -16031i, func_2(Struct_4(vec4<i32>(u_input.a, var_0.x, -14938i, -1i), var_0.x, vec2<f32>(718f, 1000f), vec4<bool>(arg_0, false, true, arg_0), vec2<bool>(arg_0, true)), vec2<i32>(-6288i, u_input.a), 58282u, Struct_4(vec4<i32>(var_0.x, global0.a, var_0.x, global0.a), var_0.x, vec2<f32>(-1436f, 1268f), vec4<bool>(true, arg_0, true, false), vec2<bool>(false, false))), u_input.a, select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), true)), 1541f, Struct_5(-66672i), Struct_1(true, true, abs(vec4<i32>(global0.a, 20566i, -2147483647i, 0i)))).zx));
    return Struct_5(7186i);
}

fn func_1() -> vec3<u32> {
    global0 = Struct_5(u_input.a & (_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 0i, 78082i), vec4<i32>(50071i, u_input.a, 0i, -54073i))) << (max(4294967295u, u_input.c) % 32u)));
    global0 = func_4(any(vec3<bool>(false, true, true)) || any(func_3(Struct_2(Struct_1(true, false, vec4<i32>(-88509i, global0.a, u_input.a, global0.a)), u_input.a, Struct_1(true, false, vec4<i32>(0i, -1840i, global0.a, global0.a)), u_input.a, vec4<bool>(false, false, true, true)), -1000f, Struct_5(u_input.a), func_2(Struct_4(vec4<i32>(global0.a, u_input.a, global0.a, u_input.a), 28320i, vec2<f32>(345f, -394f), vec4<bool>(true, true, false, true), vec2<bool>(true, false)), vec2<i32>(0i, -2147483647i), 32121u, Struct_4(vec4<i32>(global0.a, -2147483647i, 0i, 0i), global0.a, vec2<f32>(-498f, -1887f), vec4<bool>(true, true, true, false), vec2<bool>(true, false))))));
    global0 = Struct_5(func_4(select(false, true, true)).a);
    var var_0 = true;
    let var_1 = Struct_3(Struct_2(func_2(Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -2860i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, global0.a, -1i)), u_input.a, vec2<f32>(1788f, -273f), vec4<bool>(true, true, false, true), vec2<bool>(true, true)), vec2<i32>(0i, ~u_input.a), u_input.c, Struct_4(_wgslsmith_add_vec4_i32(vec4<i32>(global0.a, 15170i, global0.a, global0.a), vec4<i32>(global0.a, -54801i, -8893i, u_input.a)), global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-963f, -534f)), vec4<bool>(true, true, true, true), vec2<bool>(true, true))), -60362i, Struct_1(true, true, _wgslsmith_sub_vec4_i32(vec4<i32>(global0.a, 2147483647i, 2147483647i, global0.a), vec4<i32>(u_input.a, global0.a, -1i, global0.a))), _wgslsmith_div_i32(min(3601i, ~(-7937i)), -28624i), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)));
    return _wgslsmith_mult_vec3_u32(firstLeadingBit(select(~vec3<u32>(u_input.b, u_input.c, u_input.c) & select(vec3<u32>(u_input.c, u_input.c, 31409u), vec3<u32>(u_input.c, u_input.c, 0u), var_1.a.e.x), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.b), vec3<u32>(0u, u_input.c, u_input.b))), func_3(Struct_2(Struct_1(var_1.a.e.x, var_1.a.a.a, var_1.a.a.c), u_input.a, Struct_1(false, true, var_1.a.c.c), global0.a, vec4<bool>(false, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_5(-2147483647i), Struct_1(var_1.a.e.x, var_1.a.a.b, vec4<i32>(-2147483647i, global0.a, -1i, -1145i))).x)), vec3<u32>(min(41703u, ~(~u_input.c)), u_input.c, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(~min(vec3<u32>(select(42995u, u_input.b, true), u_input.c, 20761u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.c, 1u)), firstLeadingBit(vec3<u32>(u_input.c, u_input.b, u_input.c)))), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.b), vec3<u32>(0u, u_input.b, u_input.c)) | func_1()));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(791f, 1000f, 446f, 476f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(789f, -2034f, 396f, 1624f) - vec4<f32>(909f, 162f, 503f, -720f)))))));
    var var_2 = vec4<i32>(-21036i, _wgslsmith_dot_vec2_i32(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a, global0.a), vec2<i32>(u_input.a, 4093i), vec2<i32>(global0.a, 0i))), _wgslsmith_mod_vec2_i32(countOneBits(countOneBits(vec2<i32>(-1i, u_input.a))), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.a, -1i), vec2<i32>(u_input.a, -1900i)) & vec2<i32>(global0.a, u_input.a))), 34876i, 1i);
    var var_3 = vec4<u32>(var_0, ~_wgslsmith_div_u32(32979u, _wgslsmith_mod_u32(min(92800u, var_0), reverseBits(var_0))), func_1().x << (~(abs(1u) >> (~4294967295u % 32u)) % 32u), 0u);
    var var_4 = Struct_3(Struct_2(Struct_1(true, false, abs(firstLeadingBit(vec4<i32>(1912i, -2718i, var_2.x, u_input.a)))), global0.a, Struct_1(false, true, vec4<i32>(-2789i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, global0.a, 1i, global0.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, 9103i)), -1i, global0.a)), var_2.x >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, var_3.x), vec3<u32>(0u, u_input.b, var_3.x)), var_0) % 32u), vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a.c.zx, _wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(var_0, var_3.x, 17101u), firstLeadingBit(vec3<u32>(63934u, var_0, var_0))), _wgslsmith_div_vec3_u32(~(~var_3.zzz), ~var_3.ywx)), var_1.zyz, vec3<i32>(-var_4.a.c.c.x, 2147483647i, var_4.a.c.c.x), _wgslsmith_f_op_f32(1219f - var_1.x));
}

