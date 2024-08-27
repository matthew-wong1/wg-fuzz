struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(0u, 0u, 39838u));

var<private> global1: Struct_2;

var<private> global2: f32 = 727f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = Struct_3(global0.a);
    var var_1 = var_0;
    global0 = var_0;
    let var_2 = Struct_4(firstTrailingBit(2147483647i), _wgslsmith_mod_vec4_i32(arg_1.b, arg_1.b), _wgslsmith_add_vec3_i32(arg_1.c, ~(~(-arg_1.b.zyy))));
    var var_3 = -(i32(-1i) * -25493i);
    return _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 20123u, ~firstLeadingBit(0u), 0u), vec4<u32>(firstLeadingBit(1469u ^ ~global0.a.x), ~u_input.a.x, _wgslsmith_mult_u32(var_1.a.x, _wgslsmith_sub_u32(~47595u, 71991u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_1.a.x, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 1u, 0u, 0u))), 4294967295u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    global1 = Struct_2(global1.c, ~(global1.a.b | firstTrailingBit(~u_input.b)), global1.a);
    let var_0 = Struct_4(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.a.b, arg_2.b, arg_2.b, 34207i), vec4<i32>(0i, arg_2.b, arg_2.b, u_input.b), vec4<bool>(false, true, false, false)), vec4<i32>(u_input.b, -54581i, -19024i, u_input.b) & vec4<i32>(13189i, 29886i, global1.b, -38572i)), 2147483647i), select(abs(vec4<i32>(arg_2.b, arg_2.b, 20887i, 2147483647i) ^ (vec4<i32>(global1.a.b, global1.a.b, 2147483647i, u_input.b) << (vec4<u32>(1u, 0u, 56715u, arg_0.a.x) % vec4<u32>(32u)))), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.b, global1.b, arg_2.b), all(vec2<bool>(false, arg_0.a.x >= arg_1.x))), vec3<i32>(arg_2.b, _wgslsmith_div_i32(select(_wgslsmith_div_i32(1i, 2147483647i), -47776i, false), global1.c.b), _wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_2.b, arg_2.b, 61472i, -2147483647i), vec4<i32>(0i, u_input.b, 1i, global1.c.b)), vec4<i32>(~u_input.b, global1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.b, -7045i, arg_2.b, 0i), vec4<i32>(global1.a.b, -57246i, 2147483647i, arg_2.b)), i32(-1i) * -17991i))));
    global1 = Struct_2(Struct_1(434f, -662i, global1.c.c), reverseBits(global1.c.b), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f) - arg_2.a), _wgslsmith_clamp_i32(-2147483647i, (30368i ^ arg_2.b) & _wgslsmith_mod_i32(arg_2.b, 43528i), global1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.c.x, 1651f, global1.a.c.x, global1.a.a) + arg_2.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_2.c)) - vec4<f32>(arg_2.a, global1.a.c.x, global1.a.c.x, arg_2.c.x)))));
    var var_1 = u_input.d;
    global1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-258f))), -566f), i32(-1i) * -21469i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1186f, arg_2.a)) - _wgslsmith_f_op_f32(-255f + global1.c.c.x)), global1.a.a, 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global1.a.a, global1.c.c.x)))))), _wgslsmith_sub_i32(u_input.b & 2147483647i, -12579i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(339f)) * arg_2.c.x)), -2147483647i, vec4<f32>(-2196f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.x), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-565f, arg_2.c.x)) * -373f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-605f, 1893f))))));
    return -_wgslsmith_add_i32(arg_2.b, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.b & vec4<i32>(var_0.a, arg_2.b, -54862i, 21176i), var_0.b), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.b, arg_2.b, 47705i)), var_0.b)));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_4(func_4(Struct_3(~firstTrailingBit(vec3<u32>(global0.a.x, 4294967295u, 15431u))), func_3(vec3<i32>(-1i) * -arg_0.wyx, Struct_4(23232i, -vec4<i32>(2147483647i, -56639i, arg_0.x, arg_0.x), vec3<i32>(2147483647i, u_input.b, global1.b))), Struct_1(global1.c.c.x, -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a, -1000f, 163f, -2275f)))), global0.a.x), ~(max(arg_0, vec4<i32>(u_input.b, -12185i, 2147483647i, -2147483647i)) << (~max(vec4<u32>(arg_2, 67760u, 1u, global0.a.x), vec4<u32>(4769u, arg_2, arg_2, arg_2)) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(-arg_0.x), ~1i, 19306i), (-arg_0.zxx & (arg_0.zxy | arg_0.wyw)) & arg_0.xzw, select(arg_0.xzw, ~vec3<i32>(global1.b, u_input.b, -2147483647i), false)));
    global0 = Struct_3(select(global0.a, ~vec3<u32>(~4294967295u, 0u, ~4294967295u), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))));
    var var_1 = -264f;
    let var_2 = vec3<i32>(arg_0.x, arg_0.x, _wgslsmith_mult_i32(var_0.b.x << (firstTrailingBit(u_input.d) % 32u), min(firstLeadingBit(-20463i) >> (~global0.a.x % 32u), var_0.a)));
    var var_3 = !all(vec4<bool>(false, select(-24507i, global1.a.b, false) != 1i, false, all(vec2<bool>(true, true))));
    return Struct_2(Struct_1(arg_1, -firstTrailingBit(~u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global1.c.c))))), -4777i ^ _wgslsmith_dot_vec3_i32(~abs(var_2), abs(-var_0.c)), global1.c);
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global1 = Struct_2(global1.c, func_2(vec4<i32>(u_input.b, _wgslsmith_mod_i32(firstLeadingBit(u_input.b), reverseBits(arg_0.b)), u_input.b, 1i), global1.a.a, select(7658u, _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(4096u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global0.a.x), vec2<u32>(25984u, 1u))), false)).a.b, func_2(vec4<i32>(arg_0.c.b, func_2(vec4<i32>(u_input.b, -2147483647i, 1i, 522i), global1.c.a, 44884u).c.b | -1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0.c.b, u_input.b), 10920i), -69611i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c.x)))), firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(global0.a.x, u_input.a.x), global0.a.x))).a);
    global1 = Struct_2(func_2(abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, global1.c.b, global1.b, 44854i), vec4<i32>(global1.b, global1.c.b, u_input.b, 2147483647i)) << (~vec4<u32>(22454u, global0.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), 175f, 68772u).c, abs(_wgslsmith_add_i32(-13021i, u_input.b | 28062i)), func_2(-reverseBits(vec4<i32>(u_input.b, u_input.b, global1.a.b, global1.a.b) >> (vec4<u32>(0u, global0.a.x, 78698u, global0.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f) + 1243f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) - arg_0.c.c.x)), 1u).a);
    var var_0 = max(select(abs(~vec2<u32>(0u, u_input.a.x)), vec2<u32>(~global0.a.x, 36421u), u_input.a.x > 31633u), u_input.c.yx) & global0.a.zy;
    var var_1 = true;
    global1 = Struct_2(global1.c, 0i, arg_0.a);
    return Struct_3(~global0.a);
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = vec3<i32>(-(~(u_input.b >> (4294967295u % 32u)) & -1i), select(21844i, ~_wgslsmith_clamp_i32(~arg_2.x, _wgslsmith_div_i32(global1.c.b, u_input.b), i32(-1i) * -37130i), true), countOneBits(_wgslsmith_add_i32(u_input.b, max(arg_2.x, u_input.b)) << (firstLeadingBit(38521u) % 32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c.a), global1.c.a, global1.b >= -8958i))) - 1000f), _wgslsmith_div_i32(2147483647i, 9957i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-786f, 268f, global1.c.c.x, global1.c.c.x), global1.c.c)) - _wgslsmith_f_op_vec4_f32(floor(global1.a.c))), global1.a.c, -288f != _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1225f, -1455f), _wgslsmith_f_op_f32(-global1.c.c.x))))));
    var var_2 = vec2<bool>(true, true);
    let var_3 = max(1u, ~firstTrailingBit(0u));
    let var_4 = true;
    return global1.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: f32) -> i32 {
    var var_0 = Struct_2(func_6(func_5(func_2(vec4<i32>(-2147483647i, 65857i, 1i, 88829i), 840f, ~arg_1.x)), ~(~u_input.c.x), vec3<i32>(countOneBits(-global1.a.b), abs(-36472i), global1.c.b)), func_6(Struct_3(global0.a), arg_1.x, vec3<i32>(u_input.b >> (select(global0.a.x, 1u, arg_0.x) % 32u), firstLeadingBit(-10460i), abs(u_input.b))).b, global1.a);
    let var_1 = arg_0.x;
    var var_2 = var_0.a;
    var var_3 = arg_0;
    global0 = Struct_3(_wgslsmith_mod_vec3_u32(vec3<u32>(~func_3(vec3<i32>(14297i, u_input.b, global1.a.b), Struct_4(3316i, vec4<i32>(global1.a.b, var_0.c.b, -2857i, var_0.c.b), vec3<i32>(u_input.b, u_input.b, var_0.c.b))).x, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, 20167u), global0.a.x ^ u_input.d), arg_1.x), ~vec3<u32>(abs(global0.a.x), 0u, _wgslsmith_add_u32(44609u, 74639u))));
    return reverseBits(global1.b);
}

fn func_7(arg_0: u32, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = firstTrailingBit(~(~arg_0));
    let var_1 = func_2(-vec4<i32>(_wgslsmith_clamp_i32(arg_1 & global1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, -2147483647i), vec3<i32>(2147483647i, arg_2.x, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(625i, arg_1, -2147483647i), arg_2.ywx)), -2147483647i >> (_wgslsmith_clamp_u32(1u, arg_0, 74470u) % 32u), func_4(func_5(Struct_2(global1.c, 38490i, Struct_1(855f, -19459i, vec4<f32>(global1.c.a, global1.a.c.x, global1.a.a, global1.c.a)))), vec4<u32>(arg_0, 0u, global0.a.x, u_input.a.x), func_6(Struct_3(global0.a), global0.a.x, arg_2.yyx), ~32042u), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f), 1407f))), _wgslsmith_mult_u32((_wgslsmith_div_u32(u_input.c.x, 76955u) >> (arg_0 % 32u)) | abs(var_0 << (0u % 32u)), global0.a.x ^ reverseBits(u_input.d << (42782u % 32u))));
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_add_u32(1u, ~abs(u_input.c.x)) & u_input.a.x, min(_wgslsmith_mod_i32(-21841i & u_input.b, -u_input.b), func_1(vec2<bool>(true, true), global0.a, _wgslsmith_f_op_f32(global1.a.c.x + global1.c.a))) >> (func_3(countOneBits(vec3<i32>(-1i, 2147483647i, global1.a.b) | vec3<i32>(u_input.b, global1.a.b, u_input.b)), Struct_4(~global1.a.b, ~vec4<i32>(global1.c.b, global1.b, global1.a.b, u_input.b), vec3<i32>(u_input.b, 1i, 28605i))).x % 32u), vec4<i32>(_wgslsmith_add_i32(global1.a.b, _wgslsmith_clamp_i32(1i, firstLeadingBit(-49091i), abs(u_input.b))), -abs(14859i), -max(-global1.c.b, min(-2147483647i, 0i)), i32(-1i) * -9717i));
    global0 = func_5(Struct_2(global1.a, abs(-1i), Struct_1(216f, -global1.a.b, vec4<f32>(global1.c.a, global1.a.a, _wgslsmith_f_op_f32(global1.a.a * -1059f), _wgslsmith_f_op_f32(-639f - -1286f)))));
    var var_1 = Struct_2(func_7(global0.a.x, 2147483647i, reverseBits(vec4<i32>(u_input.b, -23705i, countOneBits(var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, global1.c.b), vec3<i32>(39615i, -2147483647i, global1.b))))), select(_wgslsmith_mult_i32(~select(global1.c.b, global1.c.b, true), global1.a.b), -u_input.b, any(vec3<bool>(true, true, true)) && (u_input.c.x >= 4294967295u)), Struct_1(var_0.c.x, u_input.b, _wgslsmith_f_op_vec4_f32(-global1.a.c)));
    let var_2 = abs(4294967295u);
    let var_3 = func_2(select(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.b, -13925i, var_0.b, global1.c.b), abs(vec4<i32>(global1.c.b, 0i, global1.c.b, 0i))), (~vec4<i32>(var_1.b, var_1.a.b, u_input.b, global1.b) << (select(vec4<u32>(11730u, var_2, global0.a.x, 49190u), vec4<u32>(37462u, 4294967295u, 0u, u_input.d), true) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(33064u, global0.a.x, 1u)), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_2, global0.a.x, 0u)), select(global0.a.x, 2742u, true)) % vec4<u32>(32u)), vec4<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(false, false, false, true)), true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.c.x, -1383f, true)) - func_6(Struct_3(vec3<u32>(var_2, 4294967295u, 27179u)), 38565u, vec3<i32>(-2147483647i, var_0.b, var_0.b)).c.x), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b, -47340i), vec2<i32>(var_0.b, -11901i), vec2<i32>(var_1.a.b, global1.a.b)))), vec3<i32>(var_3.c.b ^ ~_wgslsmith_div_i32(var_3.c.b, global1.b), ~(-var_1.c.b) << ((_wgslsmith_mult_u32(var_2, 4294967295u) & var_2) % 32u), 12127i), vec3<u32>(var_2, var_2, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a << (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u)), func_5(var_3).a))), global1.c.c.zxx);
}

