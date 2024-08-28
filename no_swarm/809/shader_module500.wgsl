struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = global0.wzy;
    var var_1 = -2147483647i;
    var_1 = -2147483647i;
    var_1 = u_input.b.x | 23582i;
    let var_2 = Struct_1(-2378f);
    return firstTrailingBit(max(~(~(-global0.x)), -23566i));
}

fn func_3() -> vec4<i32> {
    global0 = _wgslsmith_sub_vec4_i32(~firstTrailingBit(abs(min(vec4<i32>(global0.x, 410i, 5095i, u_input.b.x), vec4<i32>(global0.x, u_input.b.x, global0.x, 0i)))), ~_wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.b.x, global0.x, 0i, u_input.b.x)), abs(vec4<i32>(u_input.b.x, global0.x, global0.x, -2147483647i))));
    let var_0 = _wgslsmith_f_op_f32(-350f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-261f - 245f)))))));
    let var_1 = ~(u_input.a | ~(~vec3<u32>(u_input.a.x, 28821u, u_input.a.x)));
    global0 = vec4<i32>(~_wgslsmith_div_i32(~(-2147483647i), -global0.x), global0.x, _wgslsmith_add_i32(global0.x, u_input.b.x ^ 2147483647i), global0.x);
    let var_2 = -vec2<i32>(u_input.b.x, _wgslsmith_div_i32(select(global0.x, 36247i, false), -38782i)) << (~_wgslsmith_mult_vec2_u32(min(_wgslsmith_mult_vec2_u32(var_1.zy, var_1.yy), vec2<u32>(u_input.a.x, 1u) ^ u_input.a.xy), vec2<u32>(var_1.x, 64782u)) % vec2<u32>(32u));
    return select(vec4<i32>(var_2.x, u_input.b.x << (u_input.a.x % 32u), min(~_wgslsmith_mult_i32(var_2.x, -27141i), -19338i), ~(~_wgslsmith_mod_i32(0i, -1i))), max(_wgslsmith_div_vec4_i32(max(vec4<i32>(var_2.x, -1i, -23157i, -1i) | vec4<i32>(var_2.x, global0.x, var_2.x, var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 9925i, var_2.x, global0.x), vec4<i32>(global0.x, u_input.b.x, global0.x, u_input.b.x))), _wgslsmith_sub_vec4_i32(~vec4<i32>(36382i, 30951i, 1i, 1i), -vec4<i32>(16220i, u_input.b.x, global0.x, global0.x))), -max(vec4<i32>(global0.x, global0.x, global0.x, 20383i) >> (vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, var_1.x) % vec4<u32>(32u)), vec4<i32>(var_2.x, 8357i, u_input.b.x, global0.x))), all(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<u32> {
    global0 = vec4<i32>(-9151i, -func_2(), 1i, global0.x);
    let var_0 = u_input.a.xz;
    global0 = _wgslsmith_div_vec4_i32(abs(~firstLeadingBit(vec4<i32>(18528i, u_input.b.x, 37786i, 15245i) << (vec4<u32>(1u, var_0.x, u_input.a.x, var_0.x) % vec4<u32>(32u)))), func_3());
    var var_1 = u_input.b.x;
    var var_2 = 1242f;
    return vec4<u32>(_wgslsmith_div_u32(49143u | ~(~var_0.x), select(var_0.x, 18077u, true)), u_input.a.x, max(0u, u_input.a.x), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-995f);
    let var_1 = 16329u;
    let var_2 = ~min(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 2243u, u_input.a.x, u_input.a.x), ~vec4<u32>(var_1, var_1, var_1, 34101u)), _wgslsmith_mod_u32(1u, var_1), u_input.a.x, ~min(u_input.a.x, var_1)), ~max(func_1(var_0, vec4<f32>(122f, 1574f, var_0.a, var_0.a)), ~vec4<u32>(var_1, 18515u, 53158u, var_1)));
    global0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(countOneBits(-2147483647i), global0.x, ~(~u_input.b.x), _wgslsmith_clamp_i32(-15674i, _wgslsmith_dot_vec3_i32(vec3<i32>(-50414i, 2147483647i, global0.x), vec3<i32>(1i, -45877i, global0.x)), ~global0.x)), reverseBits(vec4<i32>(~(~0i), _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.b.x, 22779i, -2147483647i), vec4<i32>(global0.x, -1i, global0.x, 3610i))), _wgslsmith_sub_i32(u_input.b.x, -2147483647i), _wgslsmith_div_i32(-global0.x, u_input.b.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(1541f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1122f)))), false)), _wgslsmith_f_op_f32(min(-552f, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(sign(304f))))), _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-227f, var_0.a, -1416f) - vec3<f32>(var_0.a, var_0.a, var_0.a)))))));
    let var_4 = abs(~func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -475f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.x, var_3.x, -1000f, 195f)))))).x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, 16170i);
}

