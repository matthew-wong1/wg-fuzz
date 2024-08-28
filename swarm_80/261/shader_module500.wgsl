struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: u32) -> bool {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(-1i), arg_0, _wgslsmith_clamp_i32(arg_0, -40385i, u_input.a)), vec3<i32>(2147483647i, -(u_input.a ^ u_input.a), -1i)));
    var var_1 = u_input.c;
    var var_2 = !select(select(arg_1, arg_1, vec3<bool>(arg_1.x, false, false)), !arg_1, !(!select(vec3<bool>(arg_1.x, true, true), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x))));
    var_0 = ~(vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, var_0.x, -1i, u_input.a)), ~vec4<i32>(2147483647i, var_0.x, 34344i, -72652i)), var_0.x ^ -4309i, abs(-19588i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -27293i, -58823i << (arg_2 % 32u)), vec3<i32>(0i, u_input.a, ~1i)));
    let var_3 = ~arg_2;
    return arg_1.x || !(true | !var_2.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = Struct_3(-u_input.a, Struct_1(min(-62908i, u_input.a >> ((0u ^ u_input.d) % 32u)), u_input.d));
    var_0 = Struct_3(1i, Struct_1(~u_input.a, 1u));
    var_0 = Struct_3(47369i, Struct_1(reverseBits(-2147483647i), ~1u));
    var var_1 = var_0.b;
    let var_2 = Struct_1(var_0.a, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b, 34062u, 0u, u_input.b) << (vec4<u32>(4294967295u, var_1.b, 8255u, 1u) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.c.x, 14854u, 14161u))), ~countOneBits(~vec4<u32>(27971u, 1u, var_0.b.b, var_0.b.b))));
    return -12138i;
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = Struct_3(6323i << ((arg_0.b | (u_input.c.x & 31471u)) % 32u), Struct_1(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(933f, -567f) + vec2<f32>(-1248f, 1170f))), vec2<bool>(true, func_3(-2147483647i, vec3<bool>(true, false, true), u_input.b))), arg_0.b));
    let var_1 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.c.zy, u_input.c.zz, u_input.c.yx), _wgslsmith_sub_vec2_u32(u_input.c.xx, u_input.c.yy)), min(arg_0.b, u_input.d) | u_input.d, 0u, _wgslsmith_div_u32(~arg_0.b, _wgslsmith_mod_u32(select(arg_0.b, var_0.b.b, true), 1u | u_input.b)));
    let var_2 = Struct_1(-31647i, ~(~_wgslsmith_mod_u32(arg_0.b, _wgslsmith_sub_u32(var_1.x, 0u))));
    var_0 = Struct_3(~firstLeadingBit(u_input.a), var_0.b);
    var var_3 = _wgslsmith_clamp_vec2_i32(~firstLeadingBit(countOneBits(vec2<i32>(-1i, arg_0.a)) | -vec2<i32>(u_input.a, u_input.a)), vec2<i32>(1i, _wgslsmith_div_i32(-(-1i ^ var_2.a), ~_wgslsmith_sub_i32(-1i, var_2.a))), -(select(vec2<i32>(4838i, arg_0.a), vec2<i32>(2147483647i, var_0.b.a), select(vec2<bool>(true, true), vec2<bool>(false, false), true)) >> (~(~vec2<u32>(27896u, 35900u)) % vec2<u32>(32u))));
    return firstTrailingBit(-countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-86208i, -2147483647i, var_2.a, arg_0.a), vec4<i32>(var_0.b.a, 0i, arg_0.a, -4277i)))) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.b.a << (80408u % 32u), min(-62471i, u_input.a), -arg_0.a, 2147483647i), vec4<i32>(-59258i, u_input.a | select(1i, arg_0.a, true), min(-u_input.a, 1i), max(select(var_3.x, 2147483647i, false), -6799i)), ~max(vec4<i32>(arg_0.a, -2147483647i, -1i, var_0.b.a) & vec4<i32>(var_2.a, var_0.a, 21909i, 2147483647i), vec4<i32>(9251i, -2147483647i, u_input.a, arg_0.a) & vec4<i32>(var_2.a, u_input.a, var_0.a, var_3.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = ~select(_wgslsmith_add_vec4_i32(func_2(arg_2.b), vec4<i32>(2147483647i ^ arg_2.a, func_2(Struct_1(u_input.a, 56941u)).x, _wgslsmith_add_i32(-12473i, 2147483647i), func_2(arg_2.b).x)), func_2(Struct_1(arg_2.a, ~u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -1265f) == -1275f);
    var var_1 = select(vec2<bool>(arg_1, false), vec2<bool>(func_3(arg_2.a, !vec3<bool>(arg_1, arg_1, true), arg_2.b.b), func_3(func_4(_wgslsmith_f_op_vec2_f32(round(arg_0.zy)), vec2<bool>(true, true)), select(!vec3<bool>(arg_1, arg_1, false), !vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, false, arg_1)), reverseBits(~arg_2.b.b))), !select(select(vec2<bool>(true, true), vec2<bool>(arg_1, false), !vec2<bool>(arg_1, true)), vec2<bool>(arg_1, false), true));
    let var_2 = arg_1 & true;
    var var_3 = ~abs(-var_0.wx);
    var var_4 = min(-4807i, var_0.x);
    return vec3<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.b.b, arg_2.b.b, 10755u), u_input.c), arg_2.b.b, abs(4294967295u));
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> StorageBuffer {
    let var_0 = arg_2.b;
    var var_1 = arg_2;
    let var_2 = true;
    var var_3 = -abs(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, -42933i, -47890i), vec3<i32>(var_0.a, u_input.a, u_input.a), vec3<i32>(var_1.b.a, -1i, arg_2.b.a)))) ^ ~abs(~vec3<i32>(arg_2.b.a, arg_2.b.a, u_input.a));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 258f, arg_2.a.x, var_1.a.x) + vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, -672f)))))))), arg_2.b);
    return StorageBuffer(abs(firstTrailingBit(~firstLeadingBit(vec4<u32>(var_1.b.b, var_4.b.b, 1u, var_0.b)))), 55748u, ~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, 1u), arg_1.xy), ~u_input.c.xx) & countOneBits(firstLeadingBit(_wgslsmith_clamp_vec2_u32(arg_3, arg_1.zy, arg_1.xx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1984i;
    var var_1 = u_input.a;
    var_1 = -1i;
    var_0 = 1i;
    let x = u_input.a;
    s_output = func_5(u_input.c.x, abs(~func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1578f, -247f, -935f, -774f) + vec4<f32>(-239f, 254f, 1000f, 1000f)), true, Struct_3(u_input.a, Struct_1(u_input.a, u_input.d)))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1374f, 354f, 641f)) * vec4<f32>(1169f, 1117f, 508f, -530f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-570f, -301f, -782f, -1000f)))), Struct_1(max(21408i, 0i >> (u_input.d % 32u)), u_input.c.x)), select(vec2<u32>(~u_input.e, _wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.yx)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 11882u), vec2<u32>(0u, 1u), vec2<u32>(u_input.c.x, u_input.c.x)) >> (u_input.c.yz % vec2<u32>(32u)), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)) | (vec2<u32>(~u_input.b, ~u_input.d) ^ reverseBits(~u_input.c.zy)));
}

