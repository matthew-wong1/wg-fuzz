struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(false, 26415i, vec3<i32>(2147483647i, _wgslsmith_mod_i32(arg_0, -1i), arg_0) | vec3<i32>(abs(44648i), i32(-1i) * -2147483647i, u_input.a)), firstTrailingBit(~vec4<u32>(~19239u, ~33184u, ~82536u, firstLeadingBit(global0.x))), firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -2147483647i, u_input.a), firstTrailingBit(vec3<i32>(u_input.a, 2147483647i, arg_0))))), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(1671i, arg_0, u_input.a, -24875i), abs(vec4<i32>(8192i, u_input.a, u_input.a, u_input.a))) & arg_0));
    var var_1 = false;
    var var_2 = Struct_1(true, 1i, (vec3<i32>(-arg_0, ~(-1i), countOneBits(u_input.a)) ^ vec3<i32>(var_0.c.x, _wgslsmith_add_i32(var_0.c.x, 1i), -53047i ^ arg_0)) >> (((~global0.xzy | var_0.b.zzy) | vec3<u32>(~70228u, ~global0.x, abs(1u))) % vec3<u32>(32u)));
    var var_3 = arg_0;
    var_0 = Struct_2(Struct_1(all(!(!vec2<bool>(var_0.a.a, var_0.a.a))), 1i, firstTrailingBit(vec3<i32>(var_0.a.b, var_0.d, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0), vec2<i32>(u_input.a, 52505i))))), vec4<u32>(var_0.b.x, _wgslsmith_mult_u32(80481u, global0.x), global0.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.b.wy, global0.xw), ~var_0.b.x), 13461u)), vec3<i32>(~16140i, i32(-1i) * -reverseBits(u_input.a), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.c, var_2.c), vec3<i32>(var_2.c.x, arg_0, arg_0)), firstTrailingBit(~var_0.a.b), firstTrailingBit(-u_input.a))), _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(0i, var_0.a.b, var_2.b, 33091i)) | max(vec4<i32>(-1i, var_2.b, -17387i, arg_0), -vec4<i32>(-1i, var_0.d, u_input.a, arg_0)), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(11485i, 0i, 6806i, 102753i), vec4<i32>(var_2.c.x, -2147483647i, -67779i, arg_0)), (-2147483647i ^ u_input.a) ^ 30291i, -_wgslsmith_mult_i32(58569i, arg_0), arg_0)));
    return vec4<i32>(-(~var_2.c.x), 72362i, -reverseBits(reverseBits(arg_0)), 4327i);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = 37203i;
    let var_1 = 1u;
    let var_2 = 44604i;
    global0 = vec4<u32>(_wgslsmith_mod_u32(3550u >> (_wgslsmith_sub_u32(abs(global0.x), 22008u) % 32u), 4294967295u), global0.x, _wgslsmith_div_u32(global0.x, 4294967295u), var_1);
    let var_3 = func_3(var_2, _wgslsmith_f_op_f32(1f + 2378f));
    return Struct_2(Struct_1(arg_0.a, _wgslsmith_mod_i32(u_input.a, -30411i), ~arg_0.c), countOneBits(select(vec4<u32>(var_1, countOneBits(global0.x), var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, 9233u, global0.x), vec4<u32>(global0.x, var_1, global0.x, var_1))), vec4<u32>(global0.x, ~22098u, global0.x >> (global0.x % 32u), reverseBits(4294967295u)), !select(vec4<bool>(arg_0.a, arg_0.a, false, true), vec4<bool>(false, false, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.a, false, arg_0.a)))), vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(0i, var_0)), u_input.a, var_2), _wgslsmith_mult_i32(arg_0.c.x ^ max(var_0 ^ var_2, _wgslsmith_div_i32(var_2, var_2)), var_3.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-527f)) - 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(179f, -1336f)), vec2<f32>(-217f, _wgslsmith_f_op_f32(floor(-875f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(862f, 152f), vec2<f32>(1585f, -1023f)) - vec2<f32>(1089f, 194f))))));
    global0 = abs(vec4<u32>(global0.x, ~arg_0.b.x, 34819u, max(min(global0.x, 12880u), 1u)) | vec4<u32>(arg_0.b.x, arg_0.b.x, global0.x, reverseBits(_wgslsmith_dot_vec3_u32(global0.yyz, vec3<u32>(1u, 1u, global0.x)))));
    var var_1 = func_2(arg_0.a).a;
    var var_2 = countOneBits(vec4<i32>(i32(-1i) * -13349i, -8648i, ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(-5746i, u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(arg_3.c, vec3<i32>(1i, -1i, arg_0.d))), _wgslsmith_clamp_i32(arg_3.c.x, arg_1.c.x, -(~(-2147483647i)))));
    var var_3 = arg_0.b.x;
    return arg_3;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = abs(~vec4<i32>(-2147483647i, arg_0.d, _wgslsmith_div_i32(u_input.a, _wgslsmith_sub_i32(u_input.a, arg_0.d)), select(-50217i, ~u_input.a, any(vec2<bool>(arg_1.a, false)))));
    let var_1 = func_4(func_2(Struct_1(!all(vec4<bool>(arg_0.a.a, arg_0.a.a, arg_2, true)), 0i, ~_wgslsmith_clamp_vec3_i32(arg_0.c, vec3<i32>(arg_1.b, var_0.x, 2147483647i), vec3<i32>(var_0.x, 2147483647i, var_0.x)))), func_2(func_2(arg_1).a).a, vec2<bool>(true, true), func_2(Struct_1(!arg_1.a, arg_0.a.b, countOneBits(arg_0.a.c))).a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -101f)) + vec2<f32>(arg_3, 535f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3, -1000f))), vec2<f32>(726f, -503f), select(vec2<bool>(false, arg_1.a), vec2<bool>(true, arg_2), var_1.a))))));
    let var_3 = vec4<i32>(select(_wgslsmith_dot_vec2_i32(firstLeadingBit(abs(vec2<i32>(1i, -56708i))), _wgslsmith_sub_vec2_i32(vec2<i32>(-18009i, arg_1.c.x), vec2<i32>(arg_0.a.b, arg_0.c.x)) & _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_0.x), arg_1.c.xx)), -19098i, true), -14869i, arg_0.a.b, 1i);
    var_0 = var_3;
    return ~global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), ~vec4<u32>(~0u, ~global0.x, func_1(Struct_2(Struct_1(true, 23323i, vec3<i32>(u_input.a, u_input.a, -38292i)), vec4<u32>(36938u, 1u, global0.x, 2206u), vec3<i32>(u_input.a, -1i, u_input.a), -2147483647i), Struct_1(true, u_input.a, vec3<i32>(1i, u_input.a, -2147483647i)), true, -322f), _wgslsmith_mult_u32(global0.x, global0.x))));
    var var_0 = vec3<i32>(2147483647i, i32(-1i) * -10501i, _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(111218i, 1i, -29502i), ~vec3<i32>(u_input.a, u_input.a, 0i) >> (~global0.zxw % vec3<u32>(32u)))));
    global0 = _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(global0.x), 1u, max(65261u, 56311u), ~1u), firstTrailingBit(~vec4<u32>(0u, global0.x, 117776u, global0.x)), select(~vec4<u32>(global0.x, global0.x, global0.x, global0.x), ~vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, false, true))), ~firstLeadingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 0u, 96469u, global0.x), vec4<u32>(global0.x, global0.x, 18232u, 83304u))));
    var var_1 = vec2<f32>(1074f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f) - _wgslsmith_f_op_f32(max(-497f, -813f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1344f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, 469f, -489f)))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -955f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1230f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(~max(global0.xz, global0.yy), reverseBits(firstLeadingBit(global0.yy)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec4<bool>(false, true, false, false))))), var_0.zy, ~vec4<i32>(var_0.x, 1097i, u_input.a, select(u_input.a, 5782i, true) ^ -18813i), ~global0.x);
}

