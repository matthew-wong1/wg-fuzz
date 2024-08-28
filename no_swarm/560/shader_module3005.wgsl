struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 0u), 34962u);

var<private> global1: u32 = 0u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(u_input.c, global0.b);
    global0 = Struct_1(var_0.a, (~(~0u) << (_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 72690u), _wgslsmith_dot_vec2_u32(global0.a, var_0.a)) % 32u)) | 1u);
    let var_1 = ~(0i & (u_input.d ^ u_input.d));
    global0 = Struct_1(u_input.a.zz, _wgslsmith_clamp_u32(global0.b, ~4294967295u, u_input.c.x | min(_wgslsmith_div_u32(var_0.a.x, global0.b), _wgslsmith_sub_u32(7065u, u_input.e))));
    let var_2 = global0.b;
    return vec4<i32>(49626i, _wgslsmith_div_i32(~_wgslsmith_mult_i32(var_1, -2147483647i) | 2147483647i, u_input.d), _wgslsmith_dot_vec3_i32(max(vec3<i32>(var_1, 1i, var_1 & 0i), vec3<i32>(-17288i, 2651i, u_input.d) >> (~vec3<u32>(52955u, 1u, var_0.a.x) % vec3<u32>(32u))), firstLeadingBit(min(_wgslsmith_sub_vec3_i32(vec3<i32>(-43807i, -2147483647i, -9769i), vec3<i32>(1i, u_input.d, var_1)), select(vec3<i32>(11484i, -865i, -1i), vec3<i32>(-20626i, 20814i, 2147483647i), vec3<bool>(true, false, false))))), ~21228i);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-22868i, u_input.d, 1i, u_input.d)), func_3()), ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(0i, -2147483647i, u_input.d, -1i)), func_3())) != 2147483647i;
    global1 = u_input.b ^ _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(6550u, 2180u, u_input.b, u_input.e)), u_input.a), ~_wgslsmith_mult_u32(global0.a.x, ~u_input.e));
    let var_1 = Struct_1(global0.a, min(firstLeadingBit(abs(reverseBits(global0.b))), ~15694u));
    let var_2 = Struct_1(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(abs(13175u), _wgslsmith_sub_u32(global0.a.x, 4294967295u)), var_1.a ^ _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), global0.a))), 4294967295u);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 969f))), vec2<f32>(-1518f, 1257f), !var_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, -997f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-239f, -354f))))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1f), -538f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-684f, 3094f), vec2<f32>(-1116f, 448f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-367f, 1027f), vec2<f32>(1684f, -484f), var_0))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-210f)), _wgslsmith_f_op_f32(f32(-1f) * -793f))))), all(!select(!vec2<bool>(var_0, true), !vec2<bool>(var_0, var_0), var_0))));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = i32(-1i) * -2147483647i;
    let var_1 = u_input.c.x;
    let var_2 = u_input.d;
    global1 = _wgslsmith_dot_vec2_u32(u_input.a.xz, ~vec2<u32>(u_input.c.x, abs(81872u << (1u % 32u))));
    var var_3 = Struct_1(reverseBits(~(select(vec2<u32>(7617u, u_input.a.x), global0.a, true) << (vec2<u32>(global0.a.x, var_1) % vec2<u32>(32u)))), ~19494u);
    return Struct_1(~countOneBits(~firstLeadingBit(vec2<u32>(var_1, global0.b))), global0.b);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<i32> {
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(arg_1.b << ((u_input.b & arg_0) % 32u)), 1u, ~(~u_input.b)), u_input.a.xwz);
    let var_0 = countOneBits(vec4<i32>(max(-2147483647i, max(u_input.d, -2147483647i)) & u_input.d, 2147483647i, ~(-51347i), u_input.d));
    var var_1 = vec2<u32>(~arg_0, global0.b);
    let var_2 = Struct_1(vec2<u32>(select(_wgslsmith_dot_vec3_u32(select(vec3<u32>(40998u, var_1.x, 4294967295u), u_input.a.zww, true), reverseBits(vec3<u32>(global0.a.x, 0u, u_input.c.x))), u_input.a.x, any(vec2<bool>(true, true))), 4294967295u), 1u);
    var_1 = arg_2.wy;
    return vec3<i32>(reverseBits(_wgslsmith_div_i32(u_input.d, 1i)), select(0i, -36496i, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)))) << (~global0.a.x % 32u), _wgslsmith_dot_vec4_i32(var_0, -var_0));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    var var_0 = i32(-1i) * -_wgslsmith_mult_i32(arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d) << (vec2<u32>(global0.b, arg_2.a.x) % vec2<u32>(32u)), vec2<i32>(2147483647i, -1i)));
    var var_1 = arg_0;
    var var_2 = func_5(_wgslsmith_sub_u32(var_1.a.x, ~(~global0.a.x)) ^ 0u, func_4(!vec3<bool>(true, func_2(), true), _wgslsmith_f_op_vec2_f32(arg_3 + vec2<f32>(-449f, _wgslsmith_div_f32(-1584f, 160f)))), u_input.a);
    global0 = arg_0;
    var var_3 = !vec4<bool>(all(vec2<bool>(true, true)), false, true, any(vec4<bool>(true, true, true, true)));
    return ~(~4294967295u);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(189f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -537f)), _wgslsmith_div_f32(-1821f, 706f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-648f, -439f, false))))))), _wgslsmith_f_op_f32(1f - -2790f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-2057f)))));
    var var_1 = arg_1;
    let var_2 = u_input.d;
    var var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(max(max(u_input.a, u_input.a), vec4<u32>(4294967295u, arg_0.a.x, var_1.a.x, 32717u)), ~u_input.a) & u_input.a, vec4<u32>(select(func_4(vec3<bool>(true, true, true), var_0.zx).a.x, _wgslsmith_dot_vec4_u32(reverseBits(u_input.a), vec4<u32>(global0.b, 355u, u_input.e, 1u)), true), ~4294967295u, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b, global0.a.x), vec2<u32>(arg_1.b, global0.a.x)), vec2<u32>(~global0.a.x, var_1.b)), func_4(vec3<bool>(true, true, select(false, true, false)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(2020f - -777f))).b));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -2361f))) * 1432f);
    return select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), var_0.x <= _wgslsmith_f_op_f32(sign(var_0.x))), !vec4<bool>(true, true, all(vec3<bool>(true, true, true)), any(vec2<bool>(false, false))), vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), _wgslsmith_sub_u32(arg_1.a.x, 81991u) < ~u_input.b, all(vec4<bool>(true, true, false, false)), !func_2())), vec4<bool>(true, false, !(var_0.x > _wgslsmith_f_op_f32(-var_0.x)), any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))), vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + var_0.x) < var_0.x, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(573f)) * _wgslsmith_f_op_f32(111f * 761f)), _wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(-504f - _wgslsmith_f_op_f32(max(-273f, 1625f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(514f - -777f), _wgslsmith_f_op_f32(select(754f, 1128f, false)), -269f, _wgslsmith_div_f32(-1222f, -478f)))));
    let var_1 = ~u_input.a;
    global1 = var_1.x;
    var var_2 = func_6(Struct_1(~(~u_input.c | ~u_input.a.xx), 0u), Struct_1(vec2<u32>(~func_1(Struct_1(global0.a, 7684u), vec4<i32>(u_input.d, -9935i, -11552i, -2147483647i), Struct_1(u_input.a.wx, u_input.c.x), var_0.zy), global0.b), ~46862u));
    var var_3 = !vec4<bool>(var_2.x, any(var_2.xy), var_2.x & (false || !var_2.x), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(0i, ~abs(u_input.d)), -countOneBits(max(_wgslsmith_mult_vec4_i32(vec4<i32>(18269i, -17800i, -1i, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.d, -1i)), vec4<i32>(2147483647i, u_input.d, -1i, 1i))));
}

