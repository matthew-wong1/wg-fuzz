struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, false, false, true));

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec2<i32>(1i, 82513i), vec2<i32>(1i, 1i), true, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, 35526i), false, false)), Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), vec2<i32>(-98026i, 20380i), false, true)), Struct_2(Struct_1(vec2<i32>(2147483647i, 15172i), vec2<i32>(50466i, 0i), false, false)), Struct_2(Struct_1(vec2<i32>(-26714i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), false, true)), Struct_2(Struct_1(vec2<i32>(1i, -33340i), vec2<i32>(16487i, 13432i), true, true)), Struct_2(Struct_1(vec2<i32>(6467i, -45468i), vec2<i32>(2147483647i, -46141i), true, false)), Struct_2(Struct_1(vec2<i32>(34353i, -20313i), vec2<i32>(0i, 4597i), false, false)), Struct_2(Struct_1(vec2<i32>(26188i, 2147483647i), vec2<i32>(0i, -10748i), true, false)), Struct_2(Struct_1(vec2<i32>(-27392i, 40422i), vec2<i32>(-10251i, 26406i), true, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(31230i, 1i), true, false)), Struct_2(Struct_1(vec2<i32>(2147483647i, -42055i), vec2<i32>(9825i, 73486i), false, false)), Struct_2(Struct_1(vec2<i32>(-5796i, -42050i), vec2<i32>(-1i, -6250i), true, false)), Struct_2(Struct_1(vec2<i32>(1i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), true, true)), Struct_2(Struct_1(vec2<i32>(1i, 23457i), vec2<i32>(36360i, 861i), true, true)), Struct_2(Struct_1(vec2<i32>(-72527i, 0i), vec2<i32>(2147483647i, -1i), true, true)), Struct_2(Struct_1(vec2<i32>(44864i, 0i), vec2<i32>(-45659i, 25852i), false, true)), Struct_2(Struct_1(vec2<i32>(-9468i, 2147483647i), vec2<i32>(-1i, 22389i), false, true)), Struct_2(Struct_1(vec2<i32>(-2021i, 1i), vec2<i32>(-1i, 0i), true, true)), Struct_2(Struct_1(vec2<i32>(-15701i, 1i), vec2<i32>(1i, -1i), false, false)), Struct_2(Struct_1(vec2<i32>(13239i, 0i), vec2<i32>(2147483647i, 0i), false, true)), Struct_2(Struct_1(vec2<i32>(-29844i, 65798i), vec2<i32>(i32(-2147483648), -50486i), false, true)), Struct_2(Struct_1(vec2<i32>(-2404i, -16776i), vec2<i32>(i32(-2147483648), 2147483647i), true, true)), Struct_2(Struct_1(vec2<i32>(0i, 36214i), vec2<i32>(2147483647i, -18079i), true, true)));

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec4<bool>(false, false, false, true)), Struct_3(vec4<bool>(false, false, false, false)), Struct_3(vec4<bool>(false, false, true, true)), Struct_3(vec4<bool>(false, true, true, true)), Struct_3(vec4<bool>(false, false, false, true)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(true, false, false, true)), Struct_3(vec4<bool>(true, true, true, false)), Struct_3(vec4<bool>(true, false, false, true)), Struct_3(vec4<bool>(false, false, true, false)), Struct_3(vec4<bool>(true, false, false, false)), Struct_3(vec4<bool>(false, false, true, true)), Struct_3(vec4<bool>(false, false, false, true)), Struct_3(vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(false, true, false, false)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> f32 {
    global2 = array<Struct_3, 16>();
    let var_0 = abs(vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.c.x), 18519i, abs(-1i)));
    let var_1 = Struct_3(select(vec4<bool>(true, true, false, true), select(global0.a, select(vec4<bool>(arg_1.d, arg_1.d, true, arg_1.c), vec4<bool>(true, arg_1.c, true, false), select(true, arg_1.c, true)), _wgslsmith_f_op_f32(482f - 2334f) > _wgslsmith_f_op_f32(arg_0 * arg_0)), select(vec4<bool>(arg_1.c, false, false, -43219i < arg_1.b.x), vec4<bool>(arg_1.c, -1i >= arg_1.a.x, false, global0.a.x), global0.a.x)));
    return -1471f;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> vec2<bool> {
    var var_0 = abs(_wgslsmith_dot_vec2_u32(~(~firstLeadingBit(vec2<u32>(14531u, u_input.d.x))), vec2<u32>(~0u >> ((u_input.a | u_input.d.x) % 32u), countOneBits(select(arg_1, arg_1, false)))));
    var var_1 = _wgslsmith_f_op_f32(round(-1000f));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-726f, Struct_1(u_input.c.yz, min(vec2<i32>(-2147483647i, 16072i), vec2<i32>(u_input.c.x, u_input.c.x)), all(vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), any(vec4<bool>(global0.a.x, true, global0.a.x, true))), _wgslsmith_f_op_f32(f32(-1f) * -544f))))));
    return global0.a.xx;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> u32 {
    global0 = global2[_wgslsmith_index_u32(30707u, 16u)];
    var var_0 = global0.a.wwz;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.yx) + vec2<f32>(_wgslsmith_f_op_f32(abs(-736f)), 381f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1232f, 1f)))), _wgslsmith_f_op_vec2_f32(-arg_3.xz)));
    let var_2 = vec3<bool>(false, var_0.x, (true | arg_1.x) && any(func_2(global0.a, abs(u_input.a))));
    global2 = array<Struct_3, 16>();
    return 12119u;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = 1227f;
    global1 = array<Struct_2, 24>();
    var var_1 = global2[_wgslsmith_index_u32(~0u, 16u)];
    let var_2 = ~_wgslsmith_dot_vec2_i32(-countOneBits(u_input.c.zz), min(vec2<i32>(arg_1.a.x, u_input.b) | -vec2<i32>(arg_1.a.x, 2147483647i), vec2<i32>(66852i, arg_1.b.x << (7073u % 32u))));
    var var_3 = arg_1.c;
    return ~vec4<i32>(_wgslsmith_div_i32(-(~0i), 2147483647i), arg_0 << (func_4(arg_1, func_2(global0.a, 134126u), vec4<bool>(true, false, false, global0.a.x), vec3<f32>(-174f, 1701f, 157f)) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -2147483647i, u_input.b, 4806i), -vec4<i32>(var_2, 0i, 45276i, -2147483647i)), 0i), firstTrailingBit(abs(_wgslsmith_sub_i32(-93183i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(199f)), _wgslsmith_f_op_f32(-1539f * -279f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0, 1f)), 159f));
    var var_2 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~func_1(u_input.c.x, Struct_1(u_input.c.yy, u_input.c.zz, true, true)), abs(vec4<i32>(u_input.b, 34394i, -13347i, 2147483647i)) | vec4<i32>(6451i, -2147483647i, -25942i, u_input.b)), -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -37773i, -66717i, 2147483647i), vec4<i32>(1i, -1i, 2147483647i, u_input.c.x), vec4<i32>(0i, 1i, -28812i, -62086i))));
    var var_3 = -vec4<i32>(_wgslsmith_add_i32(-reverseBits(u_input.b), -(-28014i << (u_input.a % 32u))), u_input.c.x, u_input.c.x, reverseBits(~(~u_input.b)));
    var_2 = ~(u_input.c.x | -1i);
    let var_4 = vec4<i32>(func_1(var_3.x, Struct_1(vec2<i32>(u_input.c.x, 0i) & u_input.c.yz, vec2<i32>(-33940i, u_input.c.x) & vec2<i32>(var_3.x, -34329i), !global0.a.x, global0.a.x)).x, abs(_wgslsmith_div_i32(u_input.c.x | -65085i, -var_3.x)), -var_3.x, i32(-1i) * -11401i) | func_1(func_1(var_3.x & -4113i, Struct_1(_wgslsmith_mult_vec2_i32(u_input.c.zx, vec2<i32>(var_3.x, 33801i)), u_input.c.zz, all(global0.a.zyy), global0.a.x)).x, Struct_1(vec2<i32>(i32(-1i) * -1i, -4180i ^ var_3.x), var_3.wz, true, !all(vec3<bool>(true, global0.a.x, false))));
    global1 = array<Struct_2, 24>();
    var var_5 = u_input.d.yy;
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.x, _wgslsmith_sub_vec2_i32(u_input.c.yz, func_1(var_4.x, Struct_1(u_input.c.yx, vec2<i32>(var_3.x, var_4.x), true, false)).xz & vec2<i32>(~10937i, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0 * 698f), _wgslsmith_f_op_f32(round(833f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1))), vec2<bool>(true, var_4.x <= var_3.x)))), _wgslsmith_mod_u32(~_wgslsmith_add_u32(var_5.x, 36485u), firstTrailingBit(~(~u_input.d.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0, 412f)))), -663f) * vec3<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-994f, 307f), _wgslsmith_f_op_f32(round(var_1.x)))))));
}

