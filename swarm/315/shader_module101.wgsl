struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-999f, 451f, -786f, -836f), vec4<f32>(826f, -809f, 214f, -197f), vec4<f32>(-279f, 316f, 1000f, -836f), vec4<f32>(949f, -579f, 489f, 1413f), vec4<f32>(355f, 610f, -175f, 1719f), vec4<f32>(332f, -960f, -427f, -373f), vec4<f32>(-1065f, 549f, -328f, 1610f), vec4<f32>(384f, 1168f, -360f, -461f), vec4<f32>(2440f, -320f, -389f, 1538f), vec4<f32>(-2237f, 400f, 1371f, -1094f), vec4<f32>(-816f, -896f, 1242f, -733f), vec4<f32>(-942f, 1217f, 2285f, 582f), vec4<f32>(-213f, 759f, 1394f, -526f), vec4<f32>(-1774f, 1328f, 141f, 381f), vec4<f32>(1658f, -830f, -436f, -1626f), vec4<f32>(560f, -966f, 1000f, 261f), vec4<f32>(-1162f, 217f, -1995f, -439f), vec4<f32>(1584f, -320f, 153f, 1305f), vec4<f32>(-1000f, 687f, -1075f, 664f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> bool {
    global0 = Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) + _wgslsmith_f_op_f32(-arg_2)) >= arg_2, _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(global0.a.c.x, u_input.c, -780i, 859i)), global0.a.c), global0.a.d, arg_0.e));
    var var_0 = vec4<i32>(reverseBits(global0.a.c.x ^ u_input.c), -_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-41372i, 0i, -20310i), vec3<i32>(u_input.c, arg_0.c.x, -1i)), -vec3<i32>(-1i, 30788i, 0i)), 26857i, -1i);
    var_0 = select(arg_0.c, abs(vec4<i32>(_wgslsmith_add_i32(arg_0.c.x, var_0.x), arg_0.c.x ^ arg_0.c.x, u_input.c | 0i, var_0.x) & vec4<i32>(~(-31277i), _wgslsmith_dot_vec2_i32(arg_0.c.wz, vec2<i32>(-12018i, arg_0.c.x)), global0.a.c.x, max(var_0.x, var_0.x))), true);
    let var_1 = -(~abs(u_input.c));
    let var_2 = select(_wgslsmith_mult_vec2_i32(var_0.yy, -firstTrailingBit(~var_0.xz)), vec2<i32>(0i, -_wgslsmith_mod_i32(select(global0.a.c.x, var_0.x, global0.a.a.x), ~arg_0.c.x)), global0.a.a);
    return global0.a.b;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = vec4<u32>(global0.a.e, u_input.b, 1u, ~_wgslsmith_clamp_u32(global0.a.e, firstLeadingBit(61972u), arg_1));
    let var_1 = Struct_2(Struct_1(select(!global0.a.a, vec2<bool>(all(vec3<bool>(global0.a.d, false, false)), global0.a.a.x), global0.a.d && (global0.a.c.x >= -31997i)), func_3(Struct_1(!vec2<bool>(true, global0.a.d), all(vec3<bool>(true, true, global0.a.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-6140i, 1i, -2147483647i, u_input.c), global0.a.c), false, u_input.a), arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))), global0.a.c & vec4<i32>(global0.a.c.x, -2147483647i & global0.a.c.x, -79296i, abs(u_input.c)), global0.a.d, firstTrailingBit(arg_1)));
    let var_2 = max(2147483647i, 0i) << (~var_0.x % 32u);
    var_0 = select(~select(~abs(vec4<u32>(1u, 1u, var_0.x, 0u)), vec4<u32>(firstLeadingBit(var_0.x), ~0u, global0.a.e, 1u), all(vec4<bool>(false, true, var_1.a.a.x, global0.a.b)) && any(vec4<bool>(var_1.a.d, var_1.a.d, true, var_1.a.d))), countOneBits(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.a.e, 20163u, var_0.x), vec4<u32>(6662u, 0u, 0u, u_input.a)))), !(!(!vec4<bool>(true, var_1.a.d, global0.a.b, global0.a.b))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), -422f))), -2295f);
    return global0.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec3<i32>(9348i, -1i, ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(global0.a.c.x, global0.a.c.x, 1i, global0.a.c.x), ~vec4<i32>(-36846i, arg_0.c.x, arg_0.c.x, -6445i), arg_0.e < 0u), vec4<i32>(_wgslsmith_div_i32(u_input.c, 37321i), u_input.c, _wgslsmith_sub_i32(global0.a.c.x, arg_1.c.x), ~31905i)));
    global0 = Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-791f, 832f) - _wgslsmith_div_f32(-1501f, 357f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 988f))), global0.a.e));
    let var_1 = Struct_2(arg_1);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1049f)) + -797f) + _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -313f))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(699f, 1499f) - _wgslsmith_f_op_f32(-1092f - -449f))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    let var_1 = select(global0.a.a, vec2<bool>(var_0.b, true), var_0.b);
    var_0 = global0.a;
    global0 = func_1(global0.a, Struct_1(vec2<bool>(global0.a.a.x, true), global0.a.a.x, abs(global0.a.c), !(~var_0.e < (0u ^ var_0.e)), ~0u));
    global0 = func_1(global0.a, global0.a);
    global0 = Struct_2(Struct_1(vec2<bool>(all(select(vec4<bool>(var_0.b, true, false, false), vec4<bool>(true, true, false, var_0.d), vec4<bool>(false, true, true, var_0.b))), true == global0.a.b), var_1.x, -countOneBits(global0.a.c), false, reverseBits(firstLeadingBit(~0u))));
    let var_2 = _wgslsmith_dot_vec3_i32(min(global0.a.c.yyy, ~global0.a.c.xzy), _wgslsmith_mult_vec3_i32(~max(global0.a.c.xyz, vec3<i32>(u_input.c, u_input.c, 41430i)) | (vec3<i32>(global0.a.c.x, -1i, -23809i) ^ countOneBits(vec3<i32>(global0.a.c.x, 1i, -12704i))), ~firstTrailingBit(vec3<i32>(var_0.c.x, var_0.c.x, u_input.c))));
    var_0 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-730f)), _wgslsmith_div_f32(-1360f, -549f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2106f, 796f, -203f)))), vec3<f32>(_wgslsmith_f_op_f32(2500f - -642f), _wgslsmith_f_op_f32(step(-685f, -623f)), _wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, reverseBits(u_input.a), ~0u), _wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, global0.a.e), vec3<u32>(u_input.a, 17417u, global0.a.e), vec3<u32>(u_input.a, 19201u, var_0.e)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.e, u_input.b, global0.a.e), vec3<u32>(global0.a.e, 1u, 4294967295u))), _wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(60404u, u_input.b, u_input.a), vec3<u32>(var_0.e, u_input.a, u_input.b), vec3<u32>(u_input.b, u_input.b, var_0.e))), ~firstLeadingBit(vec3<u32>(var_0.e, global0.a.e, u_input.a)))));
}

