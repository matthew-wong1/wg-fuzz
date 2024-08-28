struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = 1i < ~select(abs(2147483647i), -8816i, (arg_0.a >= arg_0.a) & any(vec3<bool>(arg_0.c, true, arg_0.e)));
    let var_1 = ~vec2<u32>(_wgslsmith_add_u32(16264u, 1u), u_input.a.x);
    let var_2 = Struct_1(arg_0.b, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) + -789f), _wgslsmith_div_f32(-511f, -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a * -1811f))), -526f))));
    let var_3 = Struct_2(_wgslsmith_div_f32(var_2.b.x, var_2.b.x), i32(-1i) * -1i, true, arg_0.b, false);
    var var_4 = Struct_2(2806f, _wgslsmith_mod_i32(reverseBits(1i), var_3.d), all(vec4<bool>(false, false, false, false)), ~23203i, !all(vec2<bool>(all(vec3<bool>(var_0, var_3.c, false)), true)));
    return _wgslsmith_clamp_u32(31820u, abs(var_1.x), 1u);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(vec3<u32>(u_input.a.x, firstTrailingBit(u_input.a.x), u_input.b.x), max(40467i, arg_1.x) ^ (_wgslsmith_add_i32(arg_2.a, select(arg_1.x, arg_1.x, true)) & (20158i >> (min(u_input.a.x, u_input.b.x) % 32u))), reverseBits(vec3<u32>(max(~33898u, abs(24264u)), _wgslsmith_add_u32(18489u, 17798u) & u_input.a.x, ~(~1u))), arg_0);
    var var_1 = -arg_1.x;
    let var_2 = ~abs(func_3(Struct_2(1142f, -var_0.b, any(vec2<bool>(true, false)), 1i, true), ~(-arg_2.a)));
    var var_3 = vec3<bool>(!(any(vec3<bool>(true, false, true)) & !all(vec3<bool>(false, false, false))), all(vec2<bool>(true, true)), -2147483647i != _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -39844i, 9878i), vec3<i32>(var_0.b, var_0.b, arg_1.x) << (vec3<u32>(u_input.a.x, u_input.b.x, 0u) % vec3<u32>(32u))), vec3<i32>(1i, arg_2.a | var_0.b, ~var_0.b)));
    let var_4 = vec4<i32>(reverseBits(~_wgslsmith_dot_vec3_i32(arg_1.zxw, vec3<i32>(0i, arg_2.a, -2147483647i)) | arg_2.a), -25762i, abs(-54805i), min(firstTrailingBit(-55667i), _wgslsmith_dot_vec3_i32(min(reverseBits(arg_1.wzz), arg_1.yxw), arg_1.zwy ^ -arg_1.zyz)));
    return Struct_2(1000f, arg_1.x, true, -33888i, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    return select(!vec2<bool>(true, any(select(vec4<bool>(arg_1.c, arg_1.e, arg_1.c, arg_1.e), vec4<bool>(false, true, true, true), vec4<bool>(true, arg_1.e, true, arg_1.c)))), !(!vec2<bool>(!arg_1.e, true)), true);
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = select(vec2<bool>(!all(vec2<bool>(true, true)), true), !(!func_4(Struct_1(-1i, vec4<f32>(-760f, 1000f, -1000f, 409f)), func_2(512f, vec4<i32>(arg_0.b, 19134i, arg_0.b, arg_0.b), Struct_1(2147483647i, vec4<f32>(-1366f, arg_0.d, arg_0.d, 861f))), Struct_1(arg_0.b, vec4<f32>(arg_0.d, arg_0.d, arg_0.d, arg_0.d)))), any(select(select(func_4(Struct_1(69783i, vec4<f32>(arg_0.d, arg_0.d, arg_0.d, 1134f)), Struct_2(-786f, -15523i, true, 3112i, false), Struct_1(arg_0.b, vec4<f32>(arg_0.d, arg_0.d, arg_0.d, arg_0.d))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), func_4(Struct_1(-38986i, vec4<f32>(arg_0.d, 717f, arg_0.d, arg_0.d)), Struct_2(arg_0.d, -39343i, false, arg_0.b, true), Struct_1(0i, vec4<f32>(arg_0.d, arg_0.d, 251f, 429f))), false))));
    let var_1 = arg_0;
    let var_2 = false;
    let var_3 = func_4(Struct_1(~_wgslsmith_clamp_i32(arg_0.b, _wgslsmith_clamp_i32(var_1.b, arg_0.b, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<i32>(var_1.b, -20179i, 37697i, var_1.b))), _wgslsmith_div_vec4_f32(vec4<f32>(871f, _wgslsmith_f_op_f32(f32(-1f) * -899f), -385f, _wgslsmith_f_op_f32(-364f + 527f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1433f, 580f, var_1.d, var_1.d) + vec4<f32>(arg_0.d, var_1.d, arg_0.d, arg_0.d))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + arg_0.d))), 24042i, true, firstTrailingBit(2147483647i), var_0.x), Struct_1(func_2(arg_0.d, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b, 38962i, -46527i, var_1.b), vec4<i32>(var_1.b, arg_0.b, var_1.b, -15700i)), ~vec4<i32>(-51037i, 62432i, -23937i, 16948i)), Struct_1(firstLeadingBit(var_1.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1076f, 195f, arg_0.d, -1008f), vec4<f32>(arg_0.d, var_1.d, var_1.d, var_1.d), var_0.x)))).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(arg_0.d * arg_0.d), -662f, _wgslsmith_f_op_f32(-var_1.d)) - vec4<f32>(-701f, arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -2041f), var_1.d)))).x;
    var var_4 = Struct_1(~(-1i), vec4<f32>(321f, _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(ceil(-416f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(494f, var_1.d)) + var_1.d))));
    return !var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(34875i, 1i), vec2<i32>(0i, -1i), vec2<i32>(-84852i, -1i)), vec2<i32>(-1i, 15812i)), abs(vec2<i32>(1i, 1i))), vec2<i32>(28462i, -1i), select(select(vec2<bool>(true, func_1(Struct_3(u_input.a.yyx, -14547i, u_input.b.yxy, -966f))), vec2<bool>(true, true), !func_4(Struct_1(22651i, vec4<f32>(-1628f, 411f, 909f, 832f)), Struct_2(-535f, -2147483647i, true, 1i, false), Struct_1(6367i, vec4<f32>(-1450f, -752f, 428f, 110f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, true), func_2(-1629f, vec4<i32>(-21627i, -53777i, -2147483647i, -40564i), Struct_1(-7933i, vec4<f32>(930f, -2077f, -452f, -305f))).e)));
    var var_1 = func_2(_wgslsmith_div_f32(263f, _wgslsmith_f_op_f32(-1560f - _wgslsmith_f_op_f32(-func_2(595f, vec4<i32>(2147483647i, -36273i, 57374i, 4601i), Struct_1(var_0.x, vec4<f32>(336f, -1000f, -828f, 116f))).a))), vec4<i32>(var_0.x, func_2(_wgslsmith_f_op_f32(round(3085f)), vec4<i32>(_wgslsmith_div_i32(var_0.x, 2147483647i), -var_0.x, _wgslsmith_add_i32(var_0.x, 1i), -39407i ^ var_0.x), Struct_1(1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1435f, -1265f, -933f, 330f) - vec4<f32>(-396f, 1591f, -490f, -755f)))).b, var_0.x, ~(8103i & var_0.x) | -7224i), Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, -224f, -756f, -346f))))));
    var var_2 = _wgslsmith_dot_vec3_i32(~firstLeadingBit(max(vec3<i32>(4116i, var_1.b, var_0.x), reverseBits(vec3<i32>(1i, var_1.d, var_1.d)))), ~(-(vec3<i32>(-1i) * -vec3<i32>(-18538i, var_1.d, -28783i))));
    var_1 = Struct_2(var_1.a, i32(-1i) * -1476i, !var_1.e != (var_1.a != _wgslsmith_f_op_f32(943f * _wgslsmith_f_op_f32(f32(-1f) * -361f))), max(var_0.x, _wgslsmith_div_i32(var_0.x, var_0.x)) << (reverseBits(func_3(Struct_2(2584f, 28494i, false, var_1.b, var_1.e), -1i)) % 32u), func_2(var_1.a, vec4<i32>(-var_1.d, _wgslsmith_div_i32(~var_1.b, _wgslsmith_div_i32(var_1.d, var_1.d)), firstLeadingBit(var_1.b ^ var_0.x), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(var_1.d, var_0.x))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_1.b, var_1.b, var_1.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(-76364i, var_1.b, 6934i, var_0.x), vec4<i32>(-46284i, var_1.d, var_1.b, 1i), vec4<i32>(var_1.d, 15180i, 25355i, var_1.b))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, 1175f, var_1.a, var_1.a))))))).c);
    var_2 = ~(-select(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, 8001i), var_0.x << (1u % 32u)), ~_wgslsmith_clamp_i32(1i, -34897i, -19092i), var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, 27216u);
}

