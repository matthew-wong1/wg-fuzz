struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = -445f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(679f)))) - _wgslsmith_f_op_f32(100f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1238f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(334f * 1000f), 1280f))))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(186f, 539f) * _wgslsmith_f_op_f32(-2529f - -1278f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-198f, 1210f)) - 451f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(702f + 449f))))))));
    return 0u;
}

fn func_2() -> u32 {
    let var_0 = -u_input.c;
    return func_3();
}

fn func_1() -> Struct_1 {
    let var_0 = max(_wgslsmith_sub_u32(func_2(), 1u), 1u);
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_clamp_i32(2147483647i, -31860i << (var_0 % 32u), 26628i)), firstTrailingBit(~u_input.a), 1i), ~_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(0i, -1616i, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(u_input.c, 0i, u_input.a) << (vec3<u32>(var_0, 4294967295u, var_0) % vec3<u32>(32u))), ~reverseBits(vec3<i32>(-38412i, u_input.c, u_input.a))));
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-872f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(101f))) + _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-653f, -788f))), -1100f, -870f));
    var var_3 = Struct_2(462f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a.x)) + 384f), _wgslsmith_f_op_f32(668f + -1377f)), vec3<bool>(any(vec4<bool>(true, true, false, true)) | true, true & (var_1.x <= 55568i), all(vec2<bool>(true, false)) || true), ~(70552u | ~var_0)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.xzw)), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), ~var_0));
    var_3 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1228f + _wgslsmith_div_f32(-798f, var_2.a.x))), _wgslsmith_f_op_f32(-var_2.a.x))), Struct_1(var_3.c.a, !vec3<bool>(var_3.c.b.x, var_3.b.b.x, !var_3.c.b.x), abs(_wgslsmith_add_u32(103359u, _wgslsmith_dot_vec3_u32(vec3<u32>(1049u, 43161u, 52962u), vec3<u32>(1u, 7900u, 96748u))))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_3.b.a)), select(var_3.c.b, vec3<bool>(false, !var_3.c.b.x, true), select(var_3.c.b, vec3<bool>(var_3.b.b.x, var_3.b.b.x, true), all(vec2<bool>(true, var_3.c.b.x)))), abs(_wgslsmith_add_u32(countOneBits(4294967295u), ~var_0))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a.xzz * vec3<f32>(490f, var_3.c.a.x, -935f)))) * vec3<f32>(-1000f, -186f, _wgslsmith_f_op_f32(select(var_2.a.x, 2323f, u_input.c >= 38816i)))), !var_3.c.b, abs(51004u ^ var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-1248f, func_1(), func_1());
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -u_input.a, -u_input.c), 56365i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.a), vec4<i32>(0i, -1i, 0i, u_input.b))), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(55219i, u_input.a, u_input.a, u_input.b)) ^ countOneBits(vec4<i32>(0i, 1i, -2147483647i, u_input.b)), vec4<i32>(u_input.c, -74401i, u_input.a, 2147483647i) << (abs(vec4<u32>(var_0.b.c, var_0.b.c, var_0.b.c, 66704u)) % vec4<u32>(32u))), vec4<i32>(~max(u_input.a, 2147483647i), u_input.b << (1u % 32u), abs(reverseBits(u_input.a)), ~(u_input.b & -2147483647i))) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~1u, ~var_0.b.c, 33431u >> (var_0.b.c % 32u), 29742u), select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.c, 0u, 1u, 4294967295u), vec4<u32>(var_0.c.c, var_0.c.c, 4294967295u, 4294967295u)), vec4<u32>(var_0.c.c, 1u, 101503u, 4294967295u) & vec4<u32>(64965u, var_0.b.c, 51219u, 0u), !var_0.b.b.x)), vec4<u32>(var_0.b.c, reverseBits(4294967295u), 1u, 34072u)) % vec4<u32>(32u));
    var_1 = _wgslsmith_add_vec4_i32(-(~vec4<i32>(-30786i, 1i, _wgslsmith_add_i32(u_input.c, u_input.c), u_input.b)), -countOneBits(~vec4<i32>(0i, u_input.b, 39480i, var_1.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), var_0.b.a.x, _wgslsmith_f_op_f32(var_0.b.a.x - var_0.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -155f)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(2131f)), _wgslsmith_div_f32(var_0.b.a.x, var_0.b.a.x), var_0.c.a.x, _wgslsmith_f_op_f32(-var_0.a))))));
    let var_3 = var_0.b.b;
    var var_4 = vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, -var_1.x), 72381i | ~var_1.x), u_input.c, 2328i, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(~(-(vec2<i32>(1i, var_1.x) << (vec2<u32>(var_0.b.c, var_0.b.c) % vec2<u32>(32u)))), var_4.zz), ~(_wgslsmith_div_vec4_i32(vec4<i32>(var_4.x, var_4.x, -21649i, 34299i) & vec4<i32>(u_input.a, 0i, var_1.x, var_4.x), vec4<i32>(var_4.x, 39930i, -10174i, -38731i)) & abs(vec4<i32>(var_4.x, 1i, var_1.x, 33301i))));
}

