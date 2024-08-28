struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec4<u32> {
    var var_0 = 0i;
    var var_1 = Struct_1(7510i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.e.x, 0u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, 27799u, u_input.d))) << (4294967295u % 32u), abs(min(-(u_input.c ^ u_input.c), global0.e.yy)));
    var var_2 = Struct_1(23394i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.b))), _wgslsmith_div_u32(min(8386u, _wgslsmith_dot_vec3_u32(u_input.a.yzy & vec3<u32>(u_input.d, 72421u, var_1.c), abs(u_input.a.xzx))), var_1.c), ~var_1.d);
    var_2 = Struct_1(countOneBits(_wgslsmith_mod_i32(global0.d.x, ~(u_input.b ^ var_2.d.x))), _wgslsmith_f_op_vec4_f32(floor(arg_0)), 0u, var_1.d);
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1004f)), _wgslsmith_mult_vec4_i32(global0.e, -firstLeadingBit(vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, global0.b.x) << (u_input.a % vec4<u32>(32u)))), 2473f, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -2147483647i, ~_wgslsmith_mult_i32(35122i, u_input.b)), vec3<i32>(_wgslsmith_mult_i32(var_2.d.x >> (13776u % 32u), i32(-1i) * -27389i), ~(-11914i), 0i)), global0.b);
    return vec4<u32>(var_2.c << (firstLeadingBit(u_input.a.x << (~u_input.d % 32u)) % 32u), firstTrailingBit(4294967295u), var_1.c, ~firstLeadingBit(firstTrailingBit(~4294967295u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> u32 {
    global0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(-104f + global0.a.x))), -1647f), -_wgslsmith_clamp_vec4_i32(-(global0.b ^ vec4<i32>(global0.d.x, 37053i, -35477i, -8345i)), countOneBits(~global0.e), abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, global0.e.x, arg_2, global0.d.x), global0.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1224f)) + _wgslsmith_div_f32(global0.c, global0.c)), abs(firstTrailingBit(global0.d)), ~(~max(vec4<i32>(u_input.b, 0i, global0.e.x, global0.d.x), vec4<i32>(-2147483647i, arg_2, arg_2, arg_2))) >> (func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, -1291f, global0.a.x, 900f))), -(u_input.b >> (u_input.a.x % 32u))) % vec4<u32>(32u)));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(458f - global0.c))), -573f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    var var_2 = Struct_1(firstTrailingBit(1i), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))), 632f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-248f, global0.a.x)), global0.a.x), ~_wgslsmith_mod_u32(arg_0.x, 43222u), -vec2<i32>(u_input.b, -8221i));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b.xw - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(1000f, 290f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1095f, var_1))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.wz * vec2<f32>(var_1, var_0)))))), vec4<i32>(~global0.b.x, global0.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, abs(global0.b.x)), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-31634i, 23988i), global0.d.zz))), -u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(global0.a.x - global0.c))) + global0.a.x), vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(global0.d, vec3<i32>(4499i, 0i, 3132i))), arg_2, -2147483647i), vec4<i32>(_wgslsmith_mult_i32(~var_2.d.x, global0.e.x ^ -2147483647i), countOneBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, 14536i), vec2<i32>(-1i, u_input.b))), var_2.d.x, -9322i));
    return u_input.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_4 {
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.a.yw * global0.a)))), abs(vec4<i32>(arg_1.c, abs(firstLeadingBit(-2147483647i)), -12400i, _wgslsmith_mult_i32(arg_0.x ^ arg_1.c, 1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a.x + -1131f), _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(524f * global0.c) - _wgslsmith_f_op_f32(floor(-476f))), -878f)), _wgslsmith_sub_vec3_i32(arg_0.yzx, max(abs(vec3<i32>(arg_0.x, arg_0.x, u_input.c.x)), select(vec3<i32>(8344i, 52229i, arg_1.c), global0.d, vec3<bool>(arg_1.b, false, false))) | ~global0.e.yyw), vec4<i32>(arg_1.c, 33037i, abs(arg_0.x), u_input.c.x));
    let var_0 = Struct_2(vec4<u32>(~firstLeadingBit(~26241u), 46028u, 4294967295u | u_input.d, u_input.a.x), _wgslsmith_f_op_f32(trunc(438f)), _wgslsmith_f_op_vec4_f32(-arg_1.a), ~1u, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(arg_0.zy, global0.d.zx)), ~global0.e.wy), vec4<f32>(_wgslsmith_f_op_f32(select(1606f, _wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x)), all(vec3<bool>(true, arg_1.b, arg_1.b)))), -415f, arg_1.a.x, arg_1.a.x), _wgslsmith_sub_u32(~arg_1.d.x, u_input.d), firstTrailingBit(select(arg_0.zz, vec2<i32>(u_input.b, -69313i), all(vec2<bool>(false, false))))));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) - vec2<f32>(356f, arg_1.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.a.yx)) * vec2<f32>(-232f, -1570f))))), arg_0, var_0.b, _wgslsmith_mult_vec3_i32(global0.d, ~vec3<i32>(13610i, u_input.c.x, global0.e.x)) << ((vec3<u32>(~61791u, ~var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.x, arg_1.d.x, var_0.a.x), var_0.a.yyz)) ^ ~(arg_1.d.wwy >> (vec3<u32>(0u, var_0.d, 39725u) % vec3<u32>(32u)))) % vec3<u32>(32u)), -vec4<i32>(_wgslsmith_mult_i32(global0.d.x, -2147483647i), abs(4271i), arg_0.x, -1i) << (~arg_1.d % vec4<u32>(32u)));
    global0 = Struct_4(_wgslsmith_div_vec2_f32(global0.a, arg_1.a.xw), countOneBits(vec4<i32>(var_0.e.d.x, _wgslsmith_clamp_i32(var_0.e.d.x | 35676i, abs(var_0.e.d.x), var_0.e.d.x), -47256i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.x, var_0.e.d.x, -1i), vec3<i32>(global0.e.x, var_0.e.d.x, arg_1.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c + -798f), _wgslsmith_div_f32(390f, 1006f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f * 180f)))), -(max(vec3<i32>(arg_0.x, var_0.e.d.x, arg_0.x), select(global0.e.yyz, vec3<i32>(-1i, arg_0.x, 6764i), true)) & vec3<i32>(~u_input.b, arg_0.x, ~u_input.c.x)), _wgslsmith_add_vec4_i32(min(~(-vec4<i32>(-2147483647i, arg_1.c, -35819i, 33836i)), global0.e), vec4<i32>(2147483647i, arg_1.c, -(u_input.c.x | 39774i), -1i << (u_input.d % 32u))));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-337f * arg_1.a.x), 1157f)))), vec4<i32>(~(-_wgslsmith_dot_vec2_i32(arg_0.zw, vec2<i32>(arg_0.x, global0.d.x))), -2147483647i, var_0.e.d.x, max(~1i, arg_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(432f, global0.c)), _wgslsmith_f_op_f32(step(-1268f, 972f)))) - global0.a.x), -(global0.d << (_wgslsmith_div_vec3_u32(max(vec3<u32>(1u, arg_1.d.x, u_input.e.x), var_0.a.wzy), ~vec3<u32>(var_0.e.c, 4950u, 0u)) % vec3<u32>(32u))), -((-vec4<i32>(arg_0.x, -50538i, u_input.b, global0.b.x) >> (firstLeadingBit(arg_1.d) % vec4<u32>(32u))) << (~vec4<u32>(var_0.e.c, u_input.a.x, 4294967295u, 26664u) % vec4<u32>(32u))));
    return Struct_4(global0.a, vec4<i32>(_wgslsmith_sub_i32(global0.d.x, abs(-1i)), -u_input.b | 1i, i32(-1i) * -48090i, ~global0.b.x ^ -global0.e.x) ^ -vec4<i32>(~9696i, -6364i, -938i, 0i), var_0.c.x, arg_0.xzx, _wgslsmith_div_vec4_i32(~firstTrailingBit(vec4<i32>(var_0.e.d.x, u_input.b, arg_1.c, global0.b.x) | arg_0), vec4<i32>(arg_1.c, 12575i, var_0.e.d.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(global0.d), global0.e.xww))));
}

fn func_1() -> i32 {
    global0 = func_4(~vec4<i32>(2147483647i, -75472i, -20001i, u_input.c.x << (func_2(u_input.e, true, 2147483647i) % 32u)), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c, -1061f, global0.a.x, -318f), vec4<f32>(-987f, global0.c, 686f, global0.c))) + vec4<f32>(global0.a.x, 1106f, global0.c, global0.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1469f, global0.c, global0.a.x, global0.c))), !any(vec2<bool>(true, false)), abs(~abs(u_input.c.x)), ~(~(~vec4<u32>(1u, u_input.d, u_input.d, 44080u)))));
    var var_0 = Struct_1(firstLeadingBit(~1i), vec4<f32>(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global0.c) * 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1256f) - global0.c), 1000f, _wgslsmith_f_op_f32(1000f + global0.a.x)), _wgslsmith_dot_vec2_u32(u_input.e.ww & select(~vec2<u32>(1u, u_input.a.x), ~vec2<u32>(u_input.a.x, 1u), true), vec2<u32>(max(1u, 28318u), u_input.a.x | u_input.d) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.e, u_input.a), u_input.a.x | u_input.e.x) % vec2<u32>(32u))), global0.b.ww);
    global0 = func_4(vec4<i32>(global0.d.x, 0i, u_input.b, 1i << (1u % 32u)), Struct_3(var_0.b, _wgslsmith_f_op_f32(sign(-1015f)) > global0.c, (~u_input.b << (~1u % 32u)) << (func_3(_wgslsmith_f_op_vec4_f32(var_0.b - var_0.b), var_0.a).x % 32u), u_input.e));
    var var_1 = 120f;
    global0 = func_4(max(select(global0.e, vec4<i32>(u_input.b, -1i, -57805i, global0.b.x), select(true, false, false)) >> (~(u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), -(~max(global0.b, global0.b))), Struct_3(var_0.b, true, ~_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c.x, var_0.d.x), global0.d.x), ~vec4<u32>(4294967295u, ~13417u, ~7488u, 1u)));
    return 41274i;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<u32>) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.a, global0.a) + global0.a))) * vec2<f32>(465f, _wgslsmith_f_op_f32(trunc(global0.c)))), -(~(global0.e ^ -global0.e)), _wgslsmith_f_op_f32(step(-434f, global0.c)), max(_wgslsmith_mult_vec3_i32(func_4(vec4<i32>(33654i, global0.b.x, global0.e.x, u_input.b), Struct_3(vec4<f32>(global0.a.x, 113f, global0.c, global0.c), false, 69562i, vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x))).e.xyy, global0.b.zzz) << (~vec3<u32>(arg_1.x, u_input.d, arg_1.x) % vec3<u32>(32u)), reverseBits(_wgslsmith_div_vec3_i32(global0.e.wwz << (vec3<u32>(113023u, u_input.a.x, arg_1.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(global0.d.x, 1i, u_input.c.x), global0.b.ywz)))), global0.b);
    global0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-259f - _wgslsmith_f_op_f32(f32(-1f) * -453f))), func_4(var_0.e, Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 970f, 347f, global0.c)), any(vec4<bool>(true, true, false, false)), _wgslsmith_sub_i32(-1i, arg_0.x), func_3(vec4<f32>(-246f, var_0.c, -1184f, global0.c), 2147483647i))).c), ~(var_0.e ^ max(var_0.b, _wgslsmith_mult_vec4_i32(global0.b, global0.b))), -1633f, -arg_0, global0.b);
    let var_1 = Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.a)))))), -_wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(abs(19234i), u_input.c.x, global0.e.x, -arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(234f, global0.c) + 991f) - global0.c), 784f), abs(_wgslsmith_div_vec3_i32(global0.e.zwy, global0.e.yyy)) ^ ~arg_0, _wgslsmith_sub_vec4_i32(var_0.e, abs(vec4<i32>(reverseBits(-1i), ~u_input.b, 2147483647i, abs(-1i)))));
    global0 = var_1;
    let var_2 = _wgslsmith_add_u32(0u >> ((u_input.e.x >> (_wgslsmith_dot_vec2_u32(u_input.e.xw, arg_1.yw) % 32u)) % 32u), _wgslsmith_mult_u32(select(2783u, arg_1.x, false) ^ firstLeadingBit(arg_1.x), _wgslsmith_div_u32(reverseBits(0u), _wgslsmith_add_u32(arg_1.x, 84683u)))) == u_input.d;
    return ~arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1077f, global0.a.x, -627f, global0.a.x), vec4<f32>(-1000f, global0.a.x, global0.a.x, global0.c)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.x, global0.c, 656f, 340f))), true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c, global0.c, 2225f, global0.a.x), vec4<f32>(-302f, global0.c, global0.c, global0.c))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(496f, -765f, -148f, global0.c))))), func_5(select(vec3<i32>(func_1(), firstLeadingBit(-19488i), ~(-23483i)), firstLeadingBit(vec3<i32>(u_input.c.x, 2147483647i, global0.b.x)), vec3<bool>(u_input.a.x > u_input.e.x, true, all(vec4<bool>(true, false, true, true)))), ~(~u_input.e) ^ vec4<u32>(~0u, u_input.e.x, ~4294967295u, ~u_input.a.x)), vec2<i32>(-1i, _wgslsmith_clamp_i32(select(-14387i, global0.d.x >> (32749u % 32u), true), -62590i, _wgslsmith_mult_i32(-1i, u_input.b))));
    var var_1 = countOneBits(u_input.e.ywz);
    var var_2 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(var_1.x, _wgslsmith_dot_vec4_u32(~u_input.a, min(u_input.e, u_input.e))), ~abs(firstTrailingBit(u_input.d)) >> (var_1.x % 32u));
    var_1 = ~(~vec3<u32>(56909u, func_2(vec4<u32>(4294967295u, var_0.c, u_input.d, 21770u), true, var_0.a), _wgslsmith_clamp_u32(var_1.x, u_input.a.x, var_1.x))) >> ((((u_input.e.xww << (u_input.e.zww % vec3<u32>(32u))) << (~u_input.a.xxy % vec3<u32>(32u))) >> (u_input.e.wxz % vec3<u32>(32u))) % vec3<u32>(32u));
    var_1 = ~(_wgslsmith_mult_vec3_u32(u_input.a.xyx, _wgslsmith_mod_vec3_u32(vec3<u32>(20967u, 28473u, 49170u), u_input.a.yzy)) << (u_input.a.xww % vec3<u32>(32u)));
    let var_3 = (_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_0.d.x, 1i, 57877i), global0.b.x & -30547i, -2147483647i, _wgslsmith_mod_i32(global0.b.x, 0i)), ~vec4<i32>(u_input.c.x, 903i, 1i, -9296i)) >> (u_input.e % vec4<u32>(32u))) << (~vec4<u32>(_wgslsmith_mod_u32(u_input.d, ~var_1.x), u_input.a.x, 1u, 4294967295u) % vec4<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global0.c * var_0.b.x), var_0.b.x, 1979f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.zyx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 446f, 403f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-926f, global0.c, 1010f), var_0.b.zzw)) - vec3<f32>(global0.c, -1426f, 885f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.wyz * var_0.b.xyy) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.x, -1167f, 1000f))))), false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, select(-(~abs(vec2<i32>(20050i, -50105i))), min(_wgslsmith_clamp_vec2_i32(global0.e.wz, var_0.d, vec2<i32>(0i, var_0.a)), u_input.c | var_0.d), vec2<bool>(!any(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)))), _wgslsmith_div_i32(var_0.d.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(-9891i, -2147483647i) << (var_1.zy % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(global0.b.zw, vec2<i32>(0i, 2147483647i)), var_0.d << (vec2<u32>(1u, 0u) % vec2<u32>(32u))))), -_wgslsmith_add_i32(min(0i, var_3.x) | _wgslsmith_sub_i32(global0.d.x, u_input.b), -(~var_3.x)));
}

