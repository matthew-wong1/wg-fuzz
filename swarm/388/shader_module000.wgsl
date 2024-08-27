struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = 87979u;
    var var_1 = vec3<u32>(0u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(17021u, var_0), select(~u_input.b.x & (37168u >> (1u % 32u)), u_input.b.x & _wgslsmith_add_u32(var_0, 52714u), true), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, 29108u, 22468u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(75995u, 70526u)), ~24971u, 4294967295u))), ~29229u);
    let var_2 = 4294967295u;
    var var_3 = var_0;
    let var_4 = ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0, ~(var_2 >> (var_1.x % 32u))), reverseBits(4294967295u));
    return ~abs(firstTrailingBit(u_input.a.xzw));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: f32) -> bool {
    let var_0 = _wgslsmith_sub_vec3_i32(u_input.a.zwz, _wgslsmith_add_vec3_i32(u_input.a.yzw, func_3(Struct_1(!vec3<bool>(arg_0.a.x, false, arg_0.a.x), -51551i, _wgslsmith_div_f32(arg_3, 719f), vec2<i32>(arg_0.d.x, -10780i), countOneBits(vec2<i32>(u_input.a.x, arg_0.b))), -(arg_0.b | arg_0.e.x), arg_0)));
    var var_1 = var_0.zx;
    var_1 = _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.d | ~(-78270i), ~var_1.x | _wgslsmith_div_i32(0i, var_0.x)), _wgslsmith_clamp_vec2_i32(-countOneBits(u_input.a.wy) & vec2<i32>(47078i ^ u_input.c.x, 31157i ^ var_1.x), firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec2_i32(arg_0.e, vec2<i32>(17882i, 1i), arg_0.e))), vec2<i32>(var_1.x, ~(-86061i))));
    var_1 = _wgslsmith_clamp_vec2_i32(-u_input.a.yy, vec2<i32>(~u_input.d, -(~(i32(-1i) * -7137i))), u_input.a.zw);
    var var_2 = 62391u;
    return false;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(475f - -1105f) - _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(542f * 1000f))))) - -736f);
    let var_1 = u_input.c.x;
    let var_2 = select(select(vec4<bool>(func_2(Struct_1(vec3<bool>(true, true, false), var_1, 694f, vec2<i32>(u_input.d, 25029i), vec2<i32>(u_input.c.x, u_input.c.x)), select(u_input.b, vec4<u32>(1u, 46136u, 0u, 1u), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec4_f32(exp2(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -798f)), var_1 <= -var_1, true, (u_input.b.x >= 36303u) != true), vec4<bool>(false, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), true, _wgslsmith_f_op_f32(round(1000f)) == var_0), !select(true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, true, true)), func_2(Struct_1(vec3<bool>(false, true, false), -19768i, var_0, u_input.c, u_input.c), ~u_input.b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-584f, var_0, arg_0.x, 2334f))), _wgslsmith_f_op_f32(arg_0.x + -1178f)), u_input.b.x > ~u_input.b.x), all(vec4<bool>(false, true, true, func_2(Struct_1(vec3<bool>(true, false, true), -55127i, arg_0.x, vec2<i32>(-2147483647i, -2147483647i), u_input.c), vec4<u32>(18549u, u_input.b.x, u_input.b.x, 0u), arg_0, -494f)))), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, func_2(Struct_1(vec3<bool>(true, false, false), var_1, arg_0.x, u_input.a.wy, u_input.c), vec4<u32>(u_input.b.x, 21104u, 0u, 0u), arg_0, arg_0.x), true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.b.x <= abs(u_input.b.x))));
    var var_3 = Struct_1(!(!var_2.yyy), ~_wgslsmith_sub_i32(max(1i, i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -19127i) >> (vec3<u32>(1u, 97628u, u_input.b.x) % vec3<u32>(32u)), -u_input.a.wxz)), _wgslsmith_f_op_f32(-arg_0.x), select(u_input.a.xx, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.wx ^ vec2<i32>(var_1, var_1), countOneBits(u_input.c)), firstTrailingBit(~vec2<i32>(2147483647i, var_1)), vec2<i32>(0i, _wgslsmith_mult_i32(-2147483647i, var_1))), var_2.xz), -select(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-9661i, u_input.c.x)), _wgslsmith_add_i32(0i, u_input.d)), u_input.c, true));
    let var_4 = Struct_1(var_3.a, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + 428f)), vec2<i32>(-func_3(Struct_1(vec3<bool>(var_2.x, var_3.a.x, var_3.a.x), 1832i, var_0, u_input.c, u_input.a.zw), abs(u_input.c.x), Struct_1(var_2.wwz, u_input.a.x, arg_0.x, vec2<i32>(30109i, var_1), vec2<i32>(var_3.d.x, var_3.e.x))).x, ~(-14209i)), reverseBits(vec2<i32>(-39023i, 2147483647i)));
    return Struct_1(select(!var_2.zxx, var_2.yyz, true), -var_3.d.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), vec2<i32>(var_3.d.x, -_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_4.d.x, var_1, -1i, 0i)) << (4294967295u % 32u)), vec2<i32>(min(2147483647i, countOneBits(abs(var_4.d.x))), abs(u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, -1000f, 951f, 3093f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1388f, 1227f, -1713f, 343f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2095f, 1107f, -1107f, 1938f))))))));
    var var_1 = u_input.a;
    var var_2 = ~_wgslsmith_sub_vec4_u32(~u_input.b, vec4<u32>(select(25616u, 4294967295u, true), 22893u, 80252u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(11867u, u_input.b.x, 1u, 4294967295u)), ~u_input.b)));
    let var_3 = any(select(var_0.a, var_0.a, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-626f, 1335f, var_0.c, -1000f) + vec4<f32>(587f, 1815f, var_0.c, -126f))).a)) && true;
    var_2 = ~(~vec4<u32>(1604u, ~82390u, _wgslsmith_mult_u32(~u_input.b.x, ~u_input.b.x), 4370u));
    let var_4 = _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.d << (vec2<u32>(~18389u, u_input.b.x) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(-vec2<i32>(i32(-1i) * -2147483647i, u_input.c.x), vec2<i32>(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c, var_1.wx)), _wgslsmith_div_i32(-var_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(30138i, -1i, var_0.e.x, 32314i), vec4<i32>(var_0.d.x, var_1.x, 0i, -6812i))))));
    var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(min(1u, 30437u), _wgslsmith_dot_vec2_u32(var_2.zz, u_input.b.wz), 1u, 48380u), vec4<u32>(u_input.b.x << (u_input.b.x % 32u), var_2.x, reverseBits(u_input.b.x), ~u_input.b.x)), (var_2.x | min(var_2.x, 73647u)) & u_input.b.x, var_2.x, var_2.x ^ var_2.x) ^ abs(vec4<u32>(u_input.b.x & 0u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 40976u), var_2.zx)), u_input.b.x, u_input.b.x));
    var_2 = _wgslsmith_div_vec4_u32(u_input.b, ~max(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b.x, var_2.x, 60472u), u_input.b), u_input.b), ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

