struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, arg_2.a.x))), vec2<f32>(146f, _wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x))))), u_input.b, arg_2.d, true);
    var_0 = arg_2;
    return abs(vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-20276i, var_0.b), vec2<i32>(0i, var_0.b), vec2<bool>(arg_2.d, true)), vec2<i32>(u_input.b, 1i))), select(23010i, arg_2.b, true), -43037i));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = i32(-1i) * -(~(~(~5467i)));
    var var_1 = vec2<u32>(u_input.a.x, 1u);
    var_1 = u_input.a.zz;
    var var_2 = !select(arg_1, true, all(select(!vec2<bool>(arg_1, true), select(vec2<bool>(true, true), vec2<bool>(arg_1, true), vec2<bool>(false, false)), vec2<bool>(true, true))));
    let var_3 = ~(u_input.a ^ _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 10263u)), u_input.a));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(962f, -691f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(436f, 880f))), !(!arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-286f + _wgslsmith_f_op_f32(-1029f - -173f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -251f)))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(~reverseBits(arg_0.x), 1i, u_input.b ^ u_input.b), var_0), max(_wgslsmith_div_u32(7585u, var_3.x), 1u) > _wgslsmith_clamp_u32(~u_input.a.x, ~var_3.x ^ 858u, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(901f, 2014f, true))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = 1i <= _wgslsmith_mod_i32(arg_3, _wgslsmith_mult_i32(~7929i, min(1i, 0i)));
    let var_1 = false;
    let var_2 = ~(~_wgslsmith_dot_vec3_u32(~u_input.a.zzx, ~u_input.a.zwz << (u_input.a.zwx % vec3<u32>(32u))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1401f - 294f)))))), -1000f);
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(floor(343f)), var_3.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(667f)) * 1007f))), ~8206i, true, true);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_3(select(func_2(u_input.b, vec2<bool>(true, false), Struct_1(vec2<f32>(-1186f, -193f), 45544i, false, true)), vec3<i32>(u_input.b, u_input.b, ~6908i), true), !all(vec2<bool>(true, false))), -1179f, _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(59767u), firstTrailingBit(54405u), ~495u, 2865u), _wgslsmith_clamp_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), ~u_input.a, vec4<u32>(4294967295u, 2314u, u_input.a.x, u_input.a.x))) & u_input.a.x, u_input.b);
    let var_1 = -vec2<i32>(_wgslsmith_add_i32(abs(u_input.b), 68793i), 2147483647i | firstLeadingBit(var_0.b)) >> ((select(vec2<u32>(u_input.a.x, ~u_input.a.x), u_input.a.zz | (vec2<u32>(u_input.a.x, 27572u) | vec2<u32>(u_input.a.x, u_input.a.x)), -1i < var_0.b) & (~vec2<u32>(u_input.a.x, u_input.a.x) ^ firstLeadingBit(u_input.a.wx))) % vec2<u32>(32u));
    let var_2 = vec3<bool>(func_4(Struct_1(func_4(Struct_1(var_0.a, u_input.b, var_0.d, var_0.d), -1443f, 1u & u_input.a.x, max(31397i, -2147483647i)).a, 0i, !any(vec4<bool>(false, var_0.d, false, var_0.d)), var_0.c && var_0.d), _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) * var_0.a.x))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a.xxy, vec3<u32>(1u, 9808u, 45549u)), firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, 1u))), -var_0.b).c, var_0.d, _wgslsmith_div_i32(~firstTrailingBit(u_input.b), var_1.x) != -(-43263i << (u_input.a.x % 32u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))), var_0.a.x))), _wgslsmith_mult_i32(~(u_input.b << (55287u % 32u)), 2147483647i), var_0.c, true);
    let var_3 = func_3(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(var_0.b, var_1.x), 0i, 1i)), vec3<i32>(_wgslsmith_mult_i32(-1i, -51654i), _wgslsmith_clamp_i32(24059i, var_1.x, 55136i), u_input.b) >> (~(vec3<u32>(67044u, u_input.a.x, u_input.a.x) | vec3<u32>(u_input.a.x, u_input.a.x, 0u)) % vec3<u32>(32u))), !var_2.x);
    return func_4(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(-1i, 2147483647i, -2147483647i), var_3.c).a.x + _wgslsmith_f_op_f32(round(var_3.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(var_3.b, 1i, 4531i), true).a.x * _wgslsmith_f_op_f32(-var_0.a.x)))), ~firstTrailingBit(u_input.a.x), var_0.b);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = arg_0;
    var_0 = func_1();
    var var_1 = var_0.a.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_5(func_1(), vec2<u32>(u_input.a.x, u_input.a.x) >> (_wgslsmith_add_vec2_u32(u_input.a.wy, vec2<u32>(1u, 18718u)) % vec2<u32>(32u))) && ((u_input.a.x > reverseBits(21241u)) | all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)))), !any(vec2<bool>(true, true)) || true, !(true || func_3(vec3<i32>(1i, -2182i, 7775i), true).d) & any(vec2<bool>(true, true)), false);
    let var_1 = 1462f;
    var var_2 = func_3(-vec3<i32>(i32(-1i) * -u_input.b, -9502i, -1i), true);
    var var_3 = var_2.c;
    var var_4 = max(max(3368u >> ((abs(u_input.a.x) >> (firstTrailingBit(61856u) % 32u)) % 32u), _wgslsmith_mult_u32(min(4294967295u, 38341u), u_input.a.x) & ~u_input.a.x), ~u_input.a.x);
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_1) + vec2<f32>(var_1, 2125f))), !(!var_0.zx)))), ~2107i, true, var_2.c);
    var var_6 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3766f + 1443f) * _wgslsmith_f_op_f32(trunc(1333f))), var_2.a.x, _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(762f - -979f) * _wgslsmith_f_op_f32(1232f * var_5.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_4(func_4(Struct_1(vec2<f32>(-212f, -591f), 21516i, var_2.d, false), 345f, 70411u, -2147483647i), 1000f, ~u_input.a.x, _wgslsmith_add_i32(u_input.b, var_2.b)).a.x), func_3(~abs(vec3<i32>(-9194i, var_5.b, var_2.b)), func_1().d).a.x));
    var_2 = Struct_1(func_1().a, func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(83081i, -1784i, var_5.b), ~vec3<i32>(var_5.b, var_2.b, 2147483647i)), _wgslsmith_sub_u32(1u, u_input.a.x) > 64322u).b | -(~(-u_input.b)), select(any(vec4<bool>(all(vec3<bool>(var_2.d, true, true)), var_2.d, true, var_5.c)), var_2.c, all(select(vec2<bool>(true, var_2.d), select(vec2<bool>(var_2.d, var_5.c), vec2<bool>(true, false), var_0.xw), vec2<bool>(var_0.x, var_0.x)))), func_3(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_add_i32(var_2.b, -2147483647i), func_2(var_5.b, var_0.wx, Struct_1(vec2<f32>(var_5.a.x, -470f), var_2.b, var_0.x, var_5.d)).x), select(-vec3<i32>(58734i, var_5.b, -35222i), vec3<i32>(52852i, var_5.b, -1i), all(vec4<bool>(true, true, true, var_2.c)))), true).c);
    let var_7 = _wgslsmith_f_op_vec2_f32(max(var_2.a, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a.x, -2039f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(130f, var_1))))), max(var_2.b, 1i), true, false), var_1, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 15479u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 35236u)), firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.a.wxx, u_input.a.yyz))), -1i).a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_6.yyy + vec3<f32>(var_2.a.x, -721f, var_7.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.a.x, -445f, 115f) - _wgslsmith_f_op_vec3_f32(var_6.zyx - var_6.wyx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_6.yzy * var_6.xww) + _wgslsmith_f_op_vec3_f32(select(var_6.wyz, var_6.wxx, vec3<bool>(var_5.d, var_5.d, true)))))), vec4<u32>(u_input.a.x, ~u_input.a.x, 0u, u_input.a.x));
}

