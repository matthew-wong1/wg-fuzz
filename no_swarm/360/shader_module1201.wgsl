struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> vec2<i32> {
    global0 = select(!vec4<bool>(all(vec4<bool>(false, false, true, global0.x)), false, any(!vec4<bool>(true, global0.x, global0.x, false)), true), !(!(!(!vec4<bool>(global0.x, global0.x, true, true)))), select(select(select(!vec4<bool>(global0.x, false, false, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, true, global0.x), global0.x), global0.x), vec4<bool>(arg_0.a == 15591i, true, global0.x, any(vec4<bool>(true, global0.x, true, false))), false), vec4<bool>(-697f <= _wgslsmith_f_op_f32(min(-412f, arg_2.x)), false, true, all(select(vec2<bool>(global0.x, global0.x), global0.wy, vec2<bool>(true, global0.x)))), true));
    let var_0 = arg_0;
    var var_1 = ~(vec4<u32>(4294967295u, abs(arg_1), 1u, firstLeadingBit(u_input.c)) >> (vec4<u32>(arg_1 >> (4294967295u % 32u), _wgslsmith_sub_u32(arg_1, arg_1), ~arg_1, ~11318u) % vec4<u32>(32u))) << ((countOneBits(u_input.b >> (u_input.b % vec4<u32>(32u))) >> ((_wgslsmith_sub_vec4_u32(u_input.b, reverseBits(vec4<u32>(68300u, arg_1, u_input.b.x, 0u))) ^ ~(~u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = !(!(!select(vec4<bool>(true, false, global0.x, global0.x), select(vec4<bool>(true, false, global0.x, true), vec4<bool>(false, global0.x, global0.x, global0.x), true), vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    var var_3 = vec4<i32>(12930i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 32852i, var_0.a, var_0.a), vec4<i32>(arg_0.a, 1i, 2147483647i, -7173i)), var_0.a | arg_0.a, arg_0.a, var_0.a), select(select(vec4<i32>(arg_0.a, 0i, 18426i, -2147483647i), vec4<i32>(1i, 6331i, arg_0.a, -33768i), var_2), vec4<i32>(arg_0.a, arg_0.a, -29533i, 1i), !vec4<bool>(global0.x, false, true, var_2.x))), arg_0.a, arg_0.a);
    return vec2<i32>(_wgslsmith_div_i32(1i | ((var_3.x << (u_input.b.x % 32u)) << (~arg_1 % 32u)), arg_0.a), _wgslsmith_clamp_i32(var_3.x, max(~_wgslsmith_dot_vec4_i32(vec4<i32>(-9378i, 2147483647i, arg_0.a, arg_0.a), vec4<i32>(2147483647i, 0i, var_3.x, 0i)), ~var_0.a), 78163i));
}

fn func_2(arg_0: bool) -> StorageBuffer {
    let var_0 = vec4<u32>(select(17830u, 53562u, select(arg_0, arg_0, !any(vec2<bool>(global0.x, global0.x)))), firstLeadingBit(u_input.c), _wgslsmith_mod_u32(~24109u, 68164u), 8562u);
    let var_1 = select(countOneBits(firstLeadingBit(vec2<i32>(~(-2147483647i), i32(-1i) * -1i))), select(firstTrailingBit(~vec2<i32>(-49892i, 29525i)) >> (vec2<u32>(~4294967295u, 0u) % vec2<u32>(32u)), func_3(Struct_1(~(-14729i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(898f, 490f, -600f, -1000f)))), _wgslsmith_mult_u32(~var_0.x, _wgslsmith_mult_u32(92124u, u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(671f, -897f, 703f) * vec3<f32>(-341f, -1753f, 262f)))), global0.wz), arg_0);
    var var_2 = all(!(!select(vec2<bool>(global0.x, arg_0), vec2<bool>(true, arg_0), global0.yw)));
    let var_3 = 1000f;
    let var_4 = var_1;
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3)) + 980f) - 323f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3), -886f)) * var_3), _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3)) - _wgslsmith_f_op_f32(abs(312f))))), countOneBits(-select(vec4<i32>(var_4.x, var_1.x, 42223i, var_4.x), vec4<i32>(var_1.x, 1i, var_4.x, var_1.x), arg_0)) ^ ~max(select(vec4<i32>(var_4.x, var_4.x, 20135i, 965i), vec4<i32>(7128i, -8673i, -65083i, 1i), false), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_1.x, -2147483647i, var_4.x), vec4<i32>(var_1.x, -40400i, 0i, -62557i))), abs(countOneBits(vec2<i32>(~var_1.x, 14646i))), ~_wgslsmith_sub_vec4_i32(min(-vec4<i32>(-8198i, 8623i, -49980i, 46813i), ~vec4<i32>(-60895i, var_1.x, var_4.x, var_1.x)), ~(-vec4<i32>(-1i, 32055i, var_1.x, -37095i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2049f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3 - -517f), var_3)), 534f)));
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    var var_0 = Struct_1(0i, vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-720f)))), 928f)), -286f, -292f));
    return func_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(u_input.c, 54769u);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1220f, _wgslsmith_f_op_f32(606f - _wgslsmith_div_f32(-1915f, -1084f)), _wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f - -503f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1096f, -565f, 1328f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(508f, 1000f, -1101f, -680f))), vec4<bool>(global0.x, true, false, true)))))));
}

