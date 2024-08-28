struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = select(arg_1.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(1i, arg_1.a, arg_1.a), vec3<i32>(-1i, 1i, u_input.d)), min(~vec3<i32>(-9426i, arg_1.a, -2147483647i), -vec3<i32>(1i, 34827i, arg_1.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1286f))) >= -1000f) & firstTrailingBit(-1i);
    var var_1 = select(select(select(select(select(vec3<bool>(true, false, arg_0), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, false, arg_0)), vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(true, false, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0))), vec3<bool>(arg_0, all(vec2<bool>(false, false)), !arg_0), arg_0), select(select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, arg_0, true)), vec3<bool>(true, false, arg_0 || true), !(!vec3<bool>(arg_0, arg_0, arg_0))), !arg_0 || false), vec3<bool>(!(!(!arg_0)), any(select(!vec3<bool>(arg_0, true, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, false), arg_0), any(vec2<bool>(true, true)))), any(!select(vec3<bool>(false, false, true), vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, true, true)))), true);
    var var_2 = arg_1.a;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(309f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2849f)))))), 571f, all(vec4<bool>(true, !any(vec3<bool>(false, var_1.x, var_1.x)), any(select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, false), true)), !all(vec3<bool>(var_1.x, false, false))))));
    var var_4 = 0u ^ _wgslsmith_sub_u32(arg_1.c, _wgslsmith_add_u32(~24000u, _wgslsmith_add_u32(abs(42106u), arg_1.c ^ 0u)));
    return 1u | _wgslsmith_clamp_u32(_wgslsmith_mod_u32(49252u, min(1u, ~15854u)), ~u_input.a.x | u_input.a.x, 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~27405i, min(~7926u, func_3(any(vec4<bool>(true, true, true, true)), Struct_1(-2147483647i, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.b), _wgslsmith_div_u32(0u, u_input.b), vec4<u32>(u_input.b, 5789u, 0u, 76411u)))), firstLeadingBit(~_wgslsmith_sub_u32(~34418u, 0u)), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(~26253u, func_3(true, Struct_1(-1295i, u_input.a.x, u_input.b, vec4<u32>(u_input.a.x, 51978u, 19742u, u_input.a.x))), _wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.b), 68035u)), ~vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.b), u_input.a.x, func_3(true, Struct_1(u_input.c.x, u_input.b, u_input.b, vec4<u32>(u_input.b, u_input.b, 16919u, u_input.a.x))))));
    var_0 = Struct_1(u_input.d, u_input.b, 1u, _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 42290u, 5631u, var_0.c), var_0.d, countOneBits(vec4<u32>(1u, var_0.d.x, 15586u, u_input.b))) << (vec4<u32>(~_wgslsmith_sub_u32(50361u, u_input.a.x), (0u >> (var_0.c % 32u)) << (abs(u_input.b) % 32u), ~u_input.a.x, _wgslsmith_sub_u32(var_0.c, 56452u) & var_0.b) % vec4<u32>(32u)));
    var var_1 = Struct_1(u_input.c.x, 1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b | (u_input.a.x >> (4294967295u % 32u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.d.x, u_input.a.x), 91949u)), u_input.a.x), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(359u, 10551u, var_0.c, 1u)), vec4<u32>(u_input.b, ~1u, var_0.d.x, min(var_0.c, 4294967295u))), min(~(vec4<u32>(4294967295u, u_input.a.x, 68453u, var_0.d.x) | vec4<u32>(var_0.d.x, var_0.c, var_0.d.x, var_0.c)), select(vec4<u32>(u_input.a.x, 33792u, var_0.c, 9026u), ~vec4<u32>(u_input.b, 1u, var_0.d.x, u_input.a.x), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))))));
    var_0 = Struct_1(1i, var_1.c, max(u_input.b, ~firstLeadingBit(reverseBits(0u))), var_0.d);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-610f + _wgslsmith_f_op_f32(1010f + 355f)) * 1137f) - 382f));
    return Struct_1(22066i, u_input.a.x, 127017u, var_0.d);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(236f, -835f, -183f) * vec3<f32>(-921f, -813f, -155f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(887f, 677f, 698f)), vec3<f32>(498f, -1307f, 377f), vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(max(317f, -1057f)), -887f, 1186f))));
    var_0 = arg_1;
    let var_2 = !select(vec4<bool>(false, (194f > var_1.x) | true, false, any(vec2<bool>(true, true))), vec4<bool>(true, false, true, false), vec4<bool>(!select(true, false, true), true, true, true));
    let var_3 = Struct_1(var_0.a, ~25316u, arg_1.d.x, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(13092u, arg_3.d.x, 1u) & (arg_3.c & arg_3.d.x), 0u), _wgslsmith_clamp_u32(4294967295u | arg_3.b, 1u, 0u) << (abs(firstLeadingBit(0u)) % 32u), func_3(false, Struct_1(-51134i, var_0.b, 4294967295u, arg_1.d)), _wgslsmith_div_u32(firstTrailingBit(var_0.d.x), 1u)));
    return Struct_1(0i, 1u, 4294967295u, _wgslsmith_mod_vec4_u32(~(~reverseBits(var_3.d)), arg_3.d >> (select(max(arg_1.d, vec4<u32>(arg_1.d.x, 0u, 69246u, 1u)), _wgslsmith_mult_vec4_u32(arg_1.d, vec4<u32>(var_3.c, 10564u, var_0.b, var_0.c)), false) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = ~(~(~vec3<u32>(_wgslsmith_mult_u32(u_input.b, arg_1.c), 34572u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_1.b, 7321u, u_input.b)))));
    let var_1 = arg_1;
    var var_2 = -u_input.d;
    var var_3 = 2147483647i;
    var var_4 = Struct_1(23266i, ~u_input.b, var_0.x, ~(~(~vec4<u32>(64009u, 34341u, 21350u, 85064u) | ~var_1.d)));
    return -460f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1034i;
    var var_1 = vec3<bool>(false, true, any(vec2<bool>(true, true)));
    var_1 = !(!select(select(vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x), false), var_1.x), !(!vec3<bool>(var_1.x, true, false)), true));
    let var_2 = !(!select(select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x), var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), !var_1.x), vec3<bool>(true, true, any(vec4<bool>(var_1.x, true, var_1.x, true))), var_1.x));
    var_0 = -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(3308i, _wgslsmith_clamp_i32(u_input.d, -1i, u_input.c.x ^ u_input.d)), -countOneBits(-2147483647i), u_input.d & 0i);
    var_0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1927f, 1283f, -1395f))), func_1(~0i, Struct_1(-2147483647i, u_input.a.x, u_input.a.x, vec4<u32>(23760u, u_input.a.x, u_input.b, u_input.a.x)), -11002i, Struct_1(u_input.c.x, u_input.b, u_input.b, vec4<u32>(39656u, u_input.b, 4294967295u, 4386u))), vec2<f32>(-1157f, _wgslsmith_f_op_f32(min(1000f, 965f))), -748f)), -1833f, false)), 846f);
}

