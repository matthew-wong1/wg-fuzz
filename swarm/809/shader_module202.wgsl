struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<i32>(u_input.a << (u_input.b % 32u), u_input.a, u_input.a);
    var_0 = vec3<i32>(i32(-1i) * -77929i, _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.x, max(u_input.a & -16634i, u_input.a), ~(-8699i), _wgslsmith_mod_i32(u_input.a >> (1u % 32u), _wgslsmith_mult_i32(2147483647i, u_input.a))), vec4<i32>(u_input.a, _wgslsmith_sub_i32(-var_0.x, var_0.x), var_0.x, -_wgslsmith_sub_i32(94885i, 7290i))), 1i);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1035f - -870f))), 792f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-905f, 885f, -276f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, 1307f, 468f))))));
    var var_2 = Struct_1(~u_input.d.x, ~vec4<i32>(_wgslsmith_mult_i32(~17854i, ~u_input.a), -2147483647i, 61962i, u_input.a));
    var var_3 = -45984i;
    return Struct_1(1u, ~var_2.b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = vec2<i32>(-2147483647i, abs(_wgslsmith_mod_i32(countOneBits(arg_2.b.x) << (u_input.c.x % 32u), select(arg_0.b.x, -1i, true))));
    let var_1 = Struct_1(_wgslsmith_mult_u32(countOneBits(~abs(arg_2.a)), ~(_wgslsmith_clamp_u32(55100u, arg_0.a, arg_0.a) >> (arg_2.a % 32u))), ~(~(~func_2().b)));
    let var_2 = u_input.d.wwy;
    let var_3 = ~var_1.b;
    let var_4 = var_1;
    return reverseBits(countOneBits(var_1.a));
}

fn func_1(arg_0: f32, arg_1: i32) -> i32 {
    var var_0 = func_3(Struct_1(u_input.b, -firstTrailingBit(vec4<i32>(u_input.a, -2147483647i, 30101i, 1i) ^ vec4<i32>(arg_1, -8621i, arg_1, -32756i))), countOneBits(_wgslsmith_clamp_u32(~(~u_input.b), 45223u | (u_input.d.x >> (13287u % 32u)), 0u)), func_2());
    var_0 = u_input.b;
    let var_1 = arg_1;
    var var_2 = reverseBits(u_input.d) | ~u_input.d;
    let var_3 = Struct_1(~abs(~var_2.x) << (~func_2().a % 32u), ~(-max(firstLeadingBit(vec4<i32>(0i, -2147483647i, u_input.a, 2147483647i)), vec4<i32>(-1i, arg_1, u_input.a, 7459i))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 21601i), vec2<i32>(u_input.a, 0i)), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, u_input.a)), vec2<i32>(u_input.a, 0i) << (u_input.c % vec2<u32>(32u)))) & ~firstLeadingBit(-u_input.a), u_input.a);
    let var_1 = 25984i;
    var var_2 = Struct_1(1u, (vec4<i32>(-1i) * -(~vec4<i32>(u_input.a, u_input.a, var_1, var_0.x))) | vec4<i32>(_wgslsmith_sub_i32(0i, reverseBits(u_input.a)), func_1(_wgslsmith_f_op_f32(select(-393f, 113f, true)), max(-1i, var_1)), -36856i, -reverseBits(2147483647i)));
    let var_3 = var_0.x;
    var_2 = Struct_1(~u_input.b, var_2.b);
    let var_4 = ~var_0.x;
    let var_5 = false == all(vec3<bool>(select(true, true, true), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    var var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(~var_2.a, 4294967295u), 1u, reverseBits(~var_6.a)), select(~vec4<u32>(u_input.d.x, var_2.a, 0u, 1u), ~(u_input.d >> (vec4<u32>(881u, u_input.b, 1u, var_6.a) % vec4<u32>(32u))), any(!vec2<bool>(false, var_5)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1800f))), -288f), firstTrailingBit(abs(~(~u_input.d.xx))), 68209u, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(572f))), 926f, _wgslsmith_f_op_f32(f32(-1f) * -827f)), vec3<f32>(1054f, -1827f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(250f))))))));
}

