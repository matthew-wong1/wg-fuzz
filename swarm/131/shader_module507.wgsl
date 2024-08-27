struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_2(arg_1.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-337f * _wgslsmith_f_op_f32(1082f - 885f)), 1662f)), vec4<bool>(arg_0.x, all(vec2<bool>(false | arg_0.x, true)), any(!select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true))), !((984u <= arg_1.c.x) | any(vec3<bool>(arg_0.x, false, arg_0.x)))));
    global0 = -vec2<i32>(9993i, 1i);
    global0 = vec2<i32>(-(var_0.a.a | (countOneBits(1i) << (arg_1.c.x % 32u))), ~(-(~10711i)));
    let var_1 = var_0.a;
    global0 = abs(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)), _wgslsmith_div_vec2_i32(~vec2<i32>(var_0.a.a, global0.x) | countOneBits(vec2<i32>(var_1.a, var_1.a)), -abs(vec2<i32>(1748i, var_1.a))), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 24624i), firstTrailingBit(vec2<i32>(29259i, u_input.b)))));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_clamp_u32(61099u, arg_1.c.x, 0u) << (~arg_1.b.x % 32u), 1u >> (countOneBits(u_input.a) % 32u)), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_1.b.x, u_input.a), vec3<u32>(1u, 1u, u_input.a)) | abs(arg_1.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.b.yx, arg_1.c.zy) ^ 1183u, arg_1.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 38452u), arg_1.c.yz), 38050u), ~arg_1.b.yx)));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = ~vec4<u32>(arg_0.x, min(9327u >> (func_3(vec2<bool>(true, true), Struct_3(Struct_1(u_input.b), arg_0.xxy, arg_0.yzw, -603f, Struct_1(u_input.b))) % 32u), func_3(vec2<bool>(true, true), Struct_3(Struct_1(global0.x), vec3<u32>(4294967295u, arg_0.x, arg_0.x), arg_0.xxw, -1000f, Struct_1(global0.x)))), 0u, reverseBits(_wgslsmith_dot_vec4_u32(countOneBits(arg_0), vec4<u32>(arg_0.x, u_input.a, 21821u, arg_0.x))));
    var_0 = _wgslsmith_mult_vec4_u32(~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.a, 1u, u_input.a), arg_0, arg_0)), arg_0) | (~(firstTrailingBit(arg_0) << (_wgslsmith_div_vec4_u32(vec4<u32>(91566u, var_0.x, arg_0.x, arg_0.x), arg_0) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_add_u32(1u, ~u_input.a), 99576u | u_input.a, 4294967295u >> (_wgslsmith_sub_u32(1u, u_input.a) % 32u), arg_0.x) % vec4<u32>(32u)));
    global0 = vec2<i32>(-17149i ^ (u_input.b & _wgslsmith_mult_i32(global0.x, -1i)), countOneBits(0i) << (u_input.a % 32u));
    var var_1 = Struct_5(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.b, 1i, u_input.b) & vec4<i32>(global0.x, global0.x, global0.x, global0.x), firstLeadingBit(vec4<i32>(global0.x, 22542i, global0.x, -32217i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-38337i, 0i, u_input.b, u_input.b) | vec4<i32>(-1i, global0.x, u_input.b, 1i), vec4<i32>(0i, global0.x, 1682i, global0.x)), vec4<i32>(u_input.b, select(global0.x, -4491i, true), -1i, ~u_input.b)), (_wgslsmith_mult_vec4_i32(vec4<i32>(-18364i, -2147483647i, u_input.b, -2147483647i), vec4<i32>(u_input.b, global0.x, 36304i, 44755i)) ^ ~vec4<i32>(-1i, -2147483647i, global0.x, 25466i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global0.x, -27604i, global0.x), vec4<i32>(u_input.b, -31687i, global0.x, -2147483647i) | vec4<i32>(24165i, global0.x, u_input.b, u_input.b))), ~vec4<u32>(5955u & u_input.a, 71688u, _wgslsmith_clamp_u32(~var_0.x, 1u, ~4294967295u), ~(~var_0.x)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), ~(~vec3<u32>(min(arg_0.x, u_input.a), _wgslsmith_mult_u32(4035u, 1u), ~u_input.a)), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    let var_2 = ~firstLeadingBit(7358u);
    return !(any(!vec2<bool>(false, var_1.e.x)) | select(var_1.c, all(select(vec2<bool>(false, var_1.c), var_1.e, var_1.e)), false));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec3<u32> {
    var var_0 = select(arg_1.c, vec4<bool>(false, func_2(vec4<u32>(4294967295u, countOneBits(1u), 1u, ~arg_3.x)), arg_1.c.x, arg_1.c.x), arg_1.c);
    var_0 = arg_1.c;
    let var_1 = Struct_4(Struct_3(Struct_1(u_input.b), abs(~(~vec3<u32>(4294967295u, u_input.a, 1u))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(9789u, arg_2.x), ~arg_2.x), u_input.a, 37431u), _wgslsmith_f_op_f32(-arg_1.b), Struct_1(58890i | select(u_input.b, -2147483647i, false))), true, Struct_2(arg_1.a, _wgslsmith_f_op_f32(-1000f * arg_1.b), !select(arg_1.c, arg_1.c, true)));
    var var_2 = var_1.c.c.x;
    var_2 = any(!vec3<bool>(all(var_0.ww), !arg_0, false)) | false;
    return vec3<u32>(~(~4294967295u), arg_3.x, ~0u);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_mult_i32(89i, ~global0.x << (_wgslsmith_clamp_u32(select(28378u, 32407u, true), u_input.a >> (arg_1.x % 32u), func_1(true, Struct_2(Struct_1(-2147483647i), -1058f, vec4<bool>(arg_2.x, false, false, true)), vec2<u32>(arg_1.x, arg_1.x), arg_1.xy).x) % 32u)));
    global0 = vec2<i32>(4846i, u_input.b);
    let var_1 = _wgslsmith_clamp_u32(min(func_3(arg_2, Struct_3(var_0, vec3<u32>(0u, 48091u, arg_1.x), vec3<u32>(u_input.a, u_input.a, arg_1.x), 285f, var_0)) | 984u, 43908u), select(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)), ~vec2<u32>(u_input.a, arg_1.x)), arg_1.x, func_2(countOneBits(vec4<u32>(94633u, 1u, 0u, 4294967295u)))), arg_1.x);
    global0 = arg_3.yx;
    var var_2 = ~func_1(false, Struct_2(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(484f)) * _wgslsmith_f_op_f32(ceil(-568f))), vec4<bool>(arg_2.x, true, true, func_2(vec4<u32>(4294967295u, 1u, arg_1.x, u_input.a)))), countOneBits(arg_1.xz), ~vec2<u32>(arg_1.x, var_1)).yy;
    return vec2<i32>(var_0.a, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-48731i, global0.x, 0i), vec3<i32>(-41834i, global0.x, u_input.b)), vec3<i32>(u_input.b, -23126i, 0i)), firstLeadingBit(vec3<i32>(-26348i, global0.x, global0.x))) << (~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 4294967295u), func_1(false, Struct_2(Struct_1(u_input.b), 1618f, vec4<bool>(true, true, false, false)), vec2<u32>(16089u, u_input.a), vec2<u32>(28143u, u_input.a))) % vec3<u32>(32u)), vec3<u32>(1u, u_input.a, ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(12847u, u_input.a), 1u)), vec2<bool>(true, all(vec3<bool>(true, all(vec4<bool>(true, false, true, true)), false))), ~((firstTrailingBit(vec3<i32>(u_input.b, global0.x, -1i)) ^ ~vec3<i32>(-1i, 0i, u_input.b)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 77095u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(1u, u_input.a, u_input.a)), vec3<u32>(10338u, u_input.a, 49166u)) % vec3<u32>(32u))));
    let var_0 = Struct_2(Struct_1(global0.x), -248f, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, func_2(vec4<u32>(28645u, 1u, 0u, 0u))), select(true, false, true) | (global0.x == 0i)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), true));
    var var_1 = ~1u;
    global0 = vec2<i32>(-14718i, _wgslsmith_dot_vec3_i32(select(min(vec3<i32>(37330i, var_0.a.a, 20424i), vec3<i32>(-2147483647i, 993i, -26426i)), -vec3<i32>(2147483647i, var_0.a.a, 15206i), !var_0.c.wxx), vec3<i32>(global0.x, _wgslsmith_mult_i32(var_0.a.a, -1i), -global0.x)) << (u_input.a % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -517f, -586f, var_0.b) * vec4<f32>(var_0.b, -530f, -1354f, 1495f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 747f, 907f, var_0.b) * vec4<f32>(426f, var_0.b, var_0.b, -780f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-479f, var_0.b, var_0.b, 860f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(859f, 1000f, 281f, var_0.b)))), any(vec3<bool>(var_0.c.x, var_0.c.x, true))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(122f + var_0.b), _wgslsmith_f_op_f32(var_0.b * -973f), var_0.b, var_0.b) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1129f, var_0.b, var_0.b, var_0.b), vec4<f32>(var_0.b, var_0.b, var_0.b, -403f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(606f, var_0.b, 1000f, -107f))))))));
    let var_3 = Struct_1(select(31952i, _wgslsmith_clamp_i32(~0i, -41801i, -2147483647i), all(vec2<bool>(var_0.c.x, false)) | (var_0.c.x || (-1i != u_input.b))));
    var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1608f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-331f, -256f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) * var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-388f)))) * 1000f)), vec4<f32>(-1451f, -1033f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -343f)), var_2.x)));
    var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-289f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -1229f))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(round(var_2.x)), -682f)));
    let var_4 = vec3<bool>((-36262i <= _wgslsmith_div_i32(-66356i, -var_0.a.a)) | !(func_2(vec4<u32>(86508u, 4294967295u, u_input.a, u_input.a)) && select(false, var_0.c.x, true)), var_0.c.x, any(select(var_0.c.wxx, select(vec3<bool>(var_0.c.x, false, false), select(vec3<bool>(var_0.c.x, true, var_0.c.x), vec3<bool>(true, var_0.c.x, var_0.c.x), vec3<bool>(true, var_0.c.x, false)), vec3<bool>(true, true, true)), !(var_0.c.x != var_0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(12740u >> (u_input.a % 32u), ~_wgslsmith_div_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-36212i, u_input.b))), func_4(_wgslsmith_div_vec3_i32(vec3<i32>(20149i, -1633i, var_3.a), vec3<i32>(u_input.b, -31283i, -3406i)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 30589u, 32264u), vec3<u32>(1u, u_input.a, 100302u)), select(var_4.yz, var_0.c.xy, vec2<bool>(true, var_0.c.x)), vec3<i32>(-33386i, 388i, 0i))));
}

