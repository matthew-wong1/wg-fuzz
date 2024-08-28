struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    var var_1 = vec2<bool>(true, false);
    let var_2 = ~(~_wgslsmith_clamp_vec3_i32(-reverseBits(vec3<i32>(u_input.a, -2147483647i, u_input.a)), -min(vec3<i32>(u_input.a, u_input.a, -5096i), vec3<i32>(2147483647i, -1i, u_input.a)), vec3<i32>(firstLeadingBit(-12336i), _wgslsmith_dot_vec3_i32(vec3<i32>(14939i, u_input.a, u_input.a), vec3<i32>(1i, 8665i, -20853i)), _wgslsmith_mod_i32(u_input.a, u_input.a))));
    var var_3 = (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-578f))), var_0.a)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))))) != any(select(select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x), vec2<bool>(false, false), true), !vec2<bool>(var_1.x, true), false));
    var_1 = vec2<bool>(all(vec2<bool>(var_1.x, var_1.x)), false);
    return 50880i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-120f, -222f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -516f))))) * -2237f);
    let var_1 = -func_3(Struct_1(var_0, countOneBits(~vec2<u32>(u_input.b.x, arg_0))), Struct_1(_wgslsmith_f_op_f32(round(var_0)), u_input.b.yx));
    var var_2 = Struct_1(-1758f, ~vec2<u32>(61282u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31995u, 1u, 4294967295u), u_input.b), 0u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-514f + 658f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, -877f)), var_0)), true)), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, _wgslsmith_mod_u32(11891u, 51464u)), u_input.b.zy << (vec2<u32>(var_2.b.x, 1u) % vec2<u32>(32u)))));
    let var_4 = _wgslsmith_f_op_f32(round(var_2.a));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 + -1000f) - -285f))), u_input.b.yy);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = reverseBits(~reverseBits(vec2<i32>(-12286i, _wgslsmith_dot_vec4_i32(vec4<i32>(2428i, u_input.a, 1i, 0i), vec4<i32>(15595i, -1i, u_input.a, u_input.a)))));
    var var_1 = vec2<bool>(false, true);
    var_1 = select(select(vec2<bool>(true, var_1.x), vec2<bool>(select(var_1.x, all(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), all(vec2<bool>(true, var_1.x))), true), !vec2<bool>(true, var_0.x == var_0.x)), !(!(!select(vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x), true))), vec2<bool>(!(true || all(vec2<bool>(var_1.x, var_1.x))), false));
    return ~vec2<u32>(arg_3.b.x, 0u);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(-1933f, reverseBits(func_4(Struct_1(1f, ~vec2<u32>(u_input.b.x, arg_2.b.x)), -295f, u_input.b.x, func_2(countOneBits(arg_2.b.x)))));
    var var_1 = Struct_1(arg_0, func_4(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(694f * arg_2.a) + 833f), 4294967295u, func_2(abs(4294967295u) & select(4294967295u, u_input.b.x, false))));
    return arg_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~63876u, u_input.b.x, max(~firstLeadingBit(1u), 1u)), countOneBits(~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x) & ~vec4<u32>(4294967295u, u_input.b.x, 75750u, u_input.b.x)) | select(_wgslsmith_sub_vec4_u32(vec4<u32>(93974u, 1u, 81005u, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), ~countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)), vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1176f, 427f, 1185f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(314f, 879f, -576f)))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -919f))), var_1.x)) * var_1.x), u_input.b.xx);
    let var_3 = vec3<bool>(any(vec2<bool>(any(vec4<bool>(false, true, false, true)) & true, false)), !(firstTrailingBit(0u) != func_1(var_1.x, -1i, var_2)) || true, true);
    let var_4 = min(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(22752i, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, 0i, -1471i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a, -2147483647i, -6285i), vec4<i32>(u_input.a, u_input.a, u_input.a, 271i), vec4<i32>(u_input.a, 1i, -8700i, 0i)), select(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(1i, 64861i, u_input.a, -245i), vec4<bool>(var_3.x, false, true, var_3.x)))), vec4<i32>(0i | ~u_input.a, u_input.a, min(u_input.a, 1i), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(~var_4, var_4, select(u_input.a, var_4, true), _wgslsmith_add_i32(var_4, firstLeadingBit(2147483647i))));
}

