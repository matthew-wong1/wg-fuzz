struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1266f, -111f, 512f) + vec3<f32>(977f, 1369f, 307f))))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-265f - 190f) * _wgslsmith_f_op_f32(f32(-1f) * -222f)), _wgslsmith_f_op_f32(round(-508f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f)), 121f), !(!vec3<bool>(true, arg_1.b < 69941u, arg_1.c.x > arg_1.b))));
    return -2147483647i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(abs(vec3<i32>(_wgslsmith_add_i32(-26085i, 74139i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(19771i, -51826i, 18851i, -10725i), vec4<i32>(1i, 274i, 19884i, -2147483647i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -79984i, 0i), vec3<i32>(1312i, 0i, 37077i)), func_3(Struct_2(Struct_1(vec3<i32>(34564i, -29374i, -6607i)), 50274u, vec2<u32>(u_input.a, 1044u), 4715i, vec4<u32>(u_input.a, 3970u, 68118u, 25028u)), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, 0i)), u_input.a, vec2<u32>(4294967295u, 22914u), -1i, vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u)), Struct_1(vec3<i32>(-2147483647i, -32689i, -1i)))))));
    var var_1 = -41186i;
    var_1 = var_0.a.x;
    var_0 = Struct_1(firstTrailingBit(~max(var_0.a, vec3<i32>(var_0.a.x, var_0.a.x, 0i))));
    let var_2 = _wgslsmith_sub_i32(56818i, -1i);
    return Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -var_2, _wgslsmith_sub_i32(~var_2, -1i >> (u_input.a % 32u)), func_3(Struct_2(Struct_1(var_0.a), u_input.a, vec2<u32>(32472u, u_input.a), -36324i, vec4<u32>(u_input.a, 40131u, 36853u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(1i, -1i, 24776i)), u_input.a, vec2<u32>(22062u, u_input.a), var_2, vec4<u32>(u_input.a, u_input.a, 24803u, 0u)), Struct_1(vec3<i32>(-1i, var_0.a.x, -47059i)))), var_0.a));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = any(vec3<bool>(true, !any(vec3<bool>(true, false, true)), (22584u == _wgslsmith_add_u32(arg_1, arg_1)) & (all(vec2<bool>(false, true)) | true)));
    let var_1 = vec2<bool>(var_0, true);
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(595f, 524f)))))));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(179f, var_3.x)) + var_3.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f)))), false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(round(-181f)))), _wgslsmith_div_f32(-471f, _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_div_f32(var_3.x, var_3.x)))))));
    return Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-93367i, var_2.a.x), firstLeadingBit(vec2<i32>(arg_0.x, arg_0.x))), vec2<i32>(var_2.a.x, var_2.a.x) ^ arg_0.ww), var_2.a.x, _wgslsmith_mult_i32(arg_0.x, _wgslsmith_dot_vec3_i32(var_2.a, var_2.a))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> vec4<u32> {
    var var_0 = -arg_0.a.yx;
    var_0 = ~countOneBits(vec2<i32>((arg_0.a.x & 1i) >> (abs(4294967295u) % 32u), ~var_0.x));
    var var_1 = Struct_1(-arg_0.a);
    var_0 = arg_1.a.a.xz;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(627f * arg_2.a) * _wgslsmith_f_op_f32(-arg_2.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(select(174f, arg_2.c, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)))) + arg_2.a));
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(1u), ~(~8239u), arg_1.c.x, arg_1.e.x), firstTrailingBit(select(arg_1.e, arg_1.e, arg_2.c == -673f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~(vec3<i32>(35755i, 0i, 0i) ^ (vec3<i32>(-5837i, 0i, -1i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))))));
    let var_1 = select(select(func_4(func_1(~vec4<i32>(2147483647i, -14399i, var_0.a.x, var_0.a.x), 64191u), Struct_2(Struct_1(var_0.a), ~4294967295u, max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), 1i, countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), Struct_4(_wgslsmith_div_f32(-755f, -658f), 1u == u_input.a, _wgslsmith_f_op_f32(max(-1268f, -622f)))), ~vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a), ~u_input.a, ~4294967295u, u_input.a), vec4<bool>(true, true, true, true)), ~(~(~vec4<u32>(1u, 4294967295u, 0u, 21614u))), !(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-1f), true, _wgslsmith_f_op_f32(min(731f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(565f * 1216f))))));
    let var_3 = vec2<bool>(var_2.b, any(!(!(!vec3<bool>(var_2.b, var_2.b, false)))));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(min(min(vec4<i32>(0i, 2147483647i, -2147483647i, var_0.a.x) & vec4<i32>(17711i, 2147483647i, 24011i, var_0.a.x), vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, -16208i)) & -(~vec4<i32>(23248i, var_0.a.x, -2893i, 0i)), min(countOneBits(~vec4<i32>(var_0.a.x, var_0.a.x, -1i, var_0.a.x)), vec4<i32>(_wgslsmith_sub_i32(var_0.a.x, -33415i), -1i, 1i, 1i))));
}

