struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1053f))));
    var_1 = _wgslsmith_f_op_f32(select(-1018f, 206f, true));
    var var_2 = vec4<u32>(~(countOneBits(1u) >> ((24138u & _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)) % 32u)), 0u, 0u, ~0u);
    var_2 = vec4<u32>(u_input.d.x, 0u, 1u, 1u);
    return true;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = ~firstTrailingBit(~u_input.d.x);
    let var_1 = Struct_2(-38783i, Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -62517i, u_input.e, 2147483647i) ^ vec4<i32>(-2147483647i, u_input.e, arg_0.x, arg_0.x), firstLeadingBit(vec4<i32>(u_input.c.x, -1i, u_input.e, u_input.b)))), 9642u, true);
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_f32(-648f * 1241f);
    let var_4 = func_1(Struct_1(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(-var_2.a, _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.a.x, var_1.b.a.x, arg_0.x, var_2.a.x), vec4<i32>(u_input.c.x, var_2.a.x, 17738i, arg_0.x))), var_1.b.a.x, 10789i)));
    return var_1.c;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec4<f32>) -> vec4<u32> {
    var var_0 = firstLeadingBit(vec3<u32>(~_wgslsmith_mod_u32(~0u, max(u_input.d.x, u_input.a)), ~18563u, ~(~27409u)));
    let var_1 = arg_3.x;
    var_0 = arg_1.wyz;
    var_0 = arg_1.ywy;
    var var_2 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~select(u_input.d.x & u_input.a, _wgslsmith_sub_u32(1u, 0u), func_1(Struct_1(vec4<i32>(u_input.e, -10073i, u_input.e, u_input.e)))), _wgslsmith_dot_vec2_u32(countOneBits(~u_input.d), select(~u_input.d, vec2<u32>(89800u, 54975u), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), max(_wgslsmith_dot_vec2_u32(u_input.d, abs(vec2<u32>(0u, 72044u))), u_input.a | 16529u), ~1u), func_3(-max(~vec3<i32>(-8151i, 2147483647i, -34429i), reverseBits(vec3<i32>(-1i, 2134i, u_input.b))), vec4<u32>(firstLeadingBit(u_input.a), abs(func_2(vec3<i32>(u_input.b, 9314i, u_input.b))), max(u_input.a, 4294967295u) ^ u_input.a, 0u), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-199f, 341f, -990f, -1000f) - vec4<f32>(-486f, -1000f, -438f, -348f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1128f, -318f, -941f, -864f) + vec4<f32>(-301f, 1583f, -1016f, 160f)))))));
    var var_1 = Struct_2(~_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, 1i), countOneBits(1i))), Struct_1(abs(vec4<i32>(u_input.b | 0i, -u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 2147483647i), -2147483647i))), 4294967295u, all(select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(u_input.d.x != 0u, true), vec2<bool>(any(vec3<bool>(false, true, false)), true))));
    let var_2 = vec4<bool>(true, !(!var_1.d), var_1.d, func_1(Struct_1(~(-vec4<i32>(-20414i, var_1.b.a.x, 2147483647i, var_1.a)))));
    var_1 = Struct_2(-49305i, Struct_1(abs(abs(vec4<i32>(50489i, 2147483647i, 2147483647i, 15038i)) >> (vec4<u32>(u_input.d.x, 82645u, var_0.x, u_input.a) % vec4<u32>(32u)))), ~34547u, true);
    let var_3 = _wgslsmith_add_vec4_u32(var_0 | func_3(vec3<i32>(_wgslsmith_clamp_i32(-14379i, var_1.a, -21050i), ~u_input.c.x, u_input.e), select(var_0 ^ vec4<u32>(u_input.a, var_1.c, 63017u, var_1.c), vec4<u32>(56107u, var_1.c, 8386u, u_input.a) >> (var_0 % vec4<u32>(32u)), var_2), _wgslsmith_f_op_f32(666f * 594f) == _wgslsmith_f_op_f32(ceil(-921f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(885f, -2444f, 759f, -284f))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0, vec4<u32>(4294967295u, var_0.x, var_1.c, u_input.a), reverseBits(var_0)), vec4<u32>(9433u, var_1.c, 2833u, u_input.a) >> (reverseBits(vec4<u32>(var_0.x, var_0.x, 0u, 4294967295u)) % vec4<u32>(32u)), ~func_3(var_1.b.a.yxx, vec4<u32>(10329u, 62945u, var_0.x, 1u), var_2.x, vec4<f32>(-551f, 380f, -698f, -861f))));
    let var_4 = !select(vec2<bool>(all(vec2<bool>(var_1.d, var_2.x)) | true, abs(var_0.x) > u_input.d.x), var_2.wx, var_2.xx);
    let var_5 = -1958f;
    var var_6 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-445f * var_5) - var_5), _wgslsmith_f_op_f32(round(var_5)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(var_1.b.a.xzz, ~var_1.b.a.xwz >> (firstTrailingBit(vec3<u32>(var_3.x, var_0.x, 1u)) % vec3<u32>(32u))), 1u);
}

