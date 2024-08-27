struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12349u;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(i32(-2147483648), vec2<f32>(1428f, 1390f)), Struct_4(-51468i, vec2<f32>(-1737f, -399f)), Struct_4(33013i, vec2<f32>(164f, 233f)), Struct_4(-22599i, vec2<f32>(-1247f, 778f)), Struct_4(2147483647i, vec2<f32>(-1639f, 1000f)), Struct_4(2147483647i, vec2<f32>(631f, 1093f)), Struct_4(33884i, vec2<f32>(-557f, -1000f)), Struct_4(-4539i, vec2<f32>(-435f, 253f)), Struct_4(40501i, vec2<f32>(125f, 548f)), Struct_4(0i, vec2<f32>(174f, -1000f)), Struct_4(2008i, vec2<f32>(-297f, 1216f)), Struct_4(-48259i, vec2<f32>(-730f, -675f)), Struct_4(-31050i, vec2<f32>(888f, -1629f)), Struct_4(0i, vec2<f32>(839f, -546f)), Struct_4(-8213i, vec2<f32>(-1209f, -1055f)), Struct_4(1i, vec2<f32>(1303f, 389f)), Struct_4(-3382i, vec2<f32>(-109f, 674f)), Struct_4(2147483647i, vec2<f32>(1000f, -108f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    global2 = array<Struct_4, 18>();
    let var_0 = select(any(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))), true, false);
    global2 = array<Struct_4, 18>();
    global0 = 1u;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(global1.zzy))));
    return countOneBits(u_input.a << (77876u % 32u));
}

fn func_2() -> Struct_4 {
    var var_0 = max(min(~_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, -57357i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -7628i), vec2<i32>(-2147483647i, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(41066i, u_input.a)), true), abs(min(vec2<i32>(-9347i, -1i), vec2<i32>(-2147483647i, 2147483647i))))), ~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 16844i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(-2147483647i, u_input.a))) | _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 2147483647i), firstLeadingBit(-vec2<i32>(1i, u_input.a))));
    var var_1 = Struct_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) + 414f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -447f))), Struct_1(~2657u, _wgslsmith_div_i32(-2147483647i, u_input.a) << (1u % 32u))), all(select(vec4<bool>(true, u_input.a > 0i, true, true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true), true))), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 15935u), vec3<u32>(149819u, 33076u, 44863u)) << (0u % 32u), _wgslsmith_mult_i32(firstTrailingBit(-2147483647i), -var_0.x) >> (~(~18301u) % 32u)));
    var var_2 = vec4<i32>(59327i, 1i, var_1.a.b.b, max(func_3(~max(vec4<i32>(var_1.a.b.b, 0i, 3128i, 0i), vec4<i32>(35021i, 2147483647i, 1i, var_1.c.b)), var_0.x), -(_wgslsmith_div_i32(var_1.c.b, -2147483647i) >> (firstTrailingBit(var_1.a.b.a) % 32u))));
    var var_3 = global1.x;
    global0 = var_1.a.b.a;
    return Struct_4(max(~var_0.x, -39270i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1.x, global1.x), 933f)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec2<bool>) -> u32 {
    global2 = array<Struct_4, 18>();
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1881f, arg_0.b.x, arg_1.b.x, 721f), vec4<f32>(arg_0.b.x, 1030f, arg_0.b.x, arg_1.b.x), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, -1681f, global1.x, -832f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b.x, arg_1.b.x, arg_0.b.x, global1.x))))), vec4<f32>(_wgslsmith_div_f32(-958f, global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * -1196f) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.b.x, -251f), _wgslsmith_f_op_f32(round(arg_1.b.x))))), _wgslsmith_f_op_f32(-global1.x))));
    let var_0 = _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(83408u, 82307u), 1u, ~60492u), ~max(~vec3<u32>(18927u, 0u, 11942u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 6536u, 97074u)))));
    let var_1 = abs(vec2<u32>(55098u, _wgslsmith_mult_u32(firstLeadingBit(var_0), reverseBits(var_0) | min(0u, var_0))));
    let var_2 = true;
    return var_1.x;
}

fn func_1() -> Struct_2 {
    global0 = ~(~1u);
    global0 = func_4(func_2(), func_2(), countOneBits(_wgslsmith_add_vec2_i32(-countOneBits(vec2<i32>(u_input.a, 0i)), vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(887i, 22716i, u_input.a, -19790i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))))), vec2<bool>(true, true));
    return Struct_2(!any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), global1.x <= global1.x)), Struct_1(2257u, ~1i));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    global0 = reverseBits(~(~abs(~arg_2.b.a)));
    let var_0 = ~(func_1().b.a & min(arg_2.b.a, _wgslsmith_add_u32(arg_2.b.a, arg_2.b.a) & arg_2.b.a));
    let var_1 = Struct_3(global1.x, countOneBits(37624u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, -1002f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -196f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1336f, global1.x)), 1886f)))));
    var var_2 = arg_2;
    var var_3 = 1u;
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-927f, _wgslsmith_f_op_f32(max(global1.x, global1.x)))));
    var var_1 = Struct_2(true, func_5(vec2<bool>(true, true), -(~(~vec2<i32>(u_input.a, 2147483647i))), func_1()));
    global1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 1000f, -1460f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -349f), -999f, global1.x, _wgslsmith_f_op_f32(1508f * global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-298f, 1507f, -1118f, -178f), vec4<f32>(1914f, global1.x, 819f, global1.x), select(vec4<bool>(false, true, var_1.a, true), vec4<bool>(false, false, false, var_1.a), vec4<bool>(true, false, false, var_1.a))))), any(vec3<bool>(all(vec2<bool>(false, false)), true, true))))));
    let var_2 = abs(select(_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.b.a, var_1.b.a, 4294967295u), vec3<u32>(1u, var_1.b.a, 5385u) & vec3<u32>(var_1.b.a, var_1.b.a, var_1.b.a)), ~reverseBits(vec3<u32>(4294967295u, var_1.b.a, var_1.b.a)), vec3<bool>(true, false && var_1.a, true))) << (~_wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.a, 4294967295u, var_1.b.a), vec3<u32>(1u, 1u, 36473u)), max(~vec3<u32>(var_1.b.a, var_1.b.a, var_1.b.a), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.a, var_1.b.a, var_1.b.a), vec3<u32>(var_1.b.a, 1u, 31848u)))) % vec3<u32>(32u));
    var var_3 = func_2();
    var var_4 = func_1();
    let var_5 = max(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(func_1().b.b, u_input.a, _wgslsmith_sub_i32(1i, -36844i)), firstLeadingBit(vec3<i32>(var_1.b.b, 75094i, -8499i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(var_4.b.b, var_1.b.b, 12165i), vec3<i32>(22026i, u_input.a, var_1.b.b)), -abs(vec3<i32>(-2147483647i, var_3.a, 1i))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, 32263i), vec3<i32>(var_3.a, var_4.b.b, 2147483647i)) & vec3<i32>(-1i, 0i, var_3.a), -(vec3<i32>(0i, var_1.b.b, -58748i) >> (vec3<u32>(33178u, 0u, var_2.x) % vec3<u32>(32u))))), var_4.b.b);
    let var_6 = var_4.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(2147483647i, firstTrailingBit(18665i)));
}

