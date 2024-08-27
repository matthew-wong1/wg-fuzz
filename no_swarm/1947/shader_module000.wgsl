struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = vec2<bool>(true, !(!(reverseBits(u_input.b.x) == 0u)));
    var var_1 = false;
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(u_input.d, -1i), u_input.c.x, countOneBits(-9705i));
    var_1 = false;
    var_1 = !select(any(vec4<bool>(var_0.x, u_input.b.x >= u_input.a, !arg_1, var_0.x)), true, false || arg_1);
    return 0u;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-919f, 299f) + _wgslsmith_div_vec2_f32(vec2<f32>(1172f, -908f), vec2<f32>(-179f, -1133f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(239f, 1090f))))));
    var var_1 = Struct_1(~u_input.c.x, u_input.c ^ u_input.c, 103f, select(!vec4<bool>(true, true, true, !arg_0), vec4<bool>(arg_0, arg_0, arg_0, any(vec2<bool>(arg_0, true))), vec4<bool>(!arg_0, arg_0 && arg_0, arg_0, false)), _wgslsmith_mult_u32(u_input.a | 2063u, (u_input.a & (u_input.b.x & 1u)) & (u_input.b.x ^ func_3(-1514f, true))));
    let var_2 = Struct_1(u_input.c.x, reverseBits(u_input.c), 1605f, !(!var_1.d), u_input.a);
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~var_1.a, ~var_2.b.x) & _wgslsmith_sub_vec2_i32(abs(vec2<i32>(0i, u_input.d)), -u_input.c), u_input.c), _wgslsmith_clamp_vec2_i32(select(var_2.b, vec2<i32>(u_input.c.x | 2147483647i, var_1.a), false != arg_0), _wgslsmith_clamp_vec2_i32(abs(u_input.c), -abs(vec2<i32>(var_2.a, var_1.b.x)), firstTrailingBit(u_input.c)), u_input.c), -1675f, !select(select(!var_2.d, vec4<bool>(var_1.d.x, false, false, arg_0), true), vec4<bool>(any(var_1.d.zyy), all(var_2.d.xw), true, false), select(true, var_1.d.x, all(var_2.d.zzw))), _wgslsmith_add_u32(~reverseBits(~var_2.e), ~reverseBits(_wgslsmith_sub_u32(var_2.e, u_input.a))));
    let var_4 = vec4<i32>(1i, var_1.b.x, var_1.a | _wgslsmith_mult_i32(1i, var_1.a), ~(-u_input.d));
    return 36225i;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(countOneBits(-1i)), i32(-1i) * -8036i);
    return _wgslsmith_mod_i32(func_2(arg_1.d.x), select(reverseBits(-1i), _wgslsmith_mod_i32(u_input.c.x, ~arg_1.a), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1i, u_input.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), select(vec4<bool>(true, 1623i != func_1(vec3<i32>(18558i, 33908i, u_input.c.x), Struct_1(u_input.c.x, u_input.c, 1000f, vec4<bool>(false, false, true, false), u_input.b.x), vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x)), true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(false, false, true)), any(vec3<bool>(true, true, true)))), 3611u);
    var var_1 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(106229u, _wgslsmith_div_u32(1u, u_input.b.x), firstTrailingBit(39665u), select(var_0.e, 20835u, false)) ^ vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), var_0.e >> (u_input.b.x % 32u), _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.zy), abs(u_input.b.x))), ~vec4<u32>(u_input.b.x, ~(0u << (var_0.e % 32u)), _wgslsmith_sub_u32(func_3(var_0.c, true), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e, u_input.a), vec2<u32>(0u, 0u))), u_input.b.x << (~var_0.e % 32u)));
    let var_2 = var_0;
    var var_3 = var_2;
    let var_4 = !vec3<bool>(!var_3.d.x, true, !(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(var_2.e, var_0.e)) >= u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.b, u_input.b) << (firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, u_input.b.x), u_input.b << (u_input.b % vec3<u32>(32u)))) % vec3<u32>(32u)), ~vec2<u32>(firstLeadingBit(var_2.e), 1u));
}

