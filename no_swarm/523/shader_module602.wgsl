struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = vec3<i32>(-38597i, 39104i, u_input.b.x);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) * -623f));
    var_0 = -u_input.a.yyy;
    var_0 = firstLeadingBit(_wgslsmith_sub_vec3_i32(u_input.b, ~vec3<i32>(~19183i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.a.www), ~0i)));
    let var_2 = !(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))));
    return var_1.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(918f))))));
    let var_2 = vec3<i32>(arg_1.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(vec2<i32>(24425i, u_input.b.x))), u_input.a.yz), u_input.b.x) << (max(firstTrailingBit(countOneBits(vec3<u32>(arg_2.x, arg_2.x, 4294967295u))), vec3<u32>(~arg_2.x, arg_2.x, 93986u)) % vec3<u32>(32u));
    var var_3 = Struct_3(-3042f);
    return Struct_2(Struct_1(~1061u, ~_wgslsmith_dot_vec2_i32(var_2.yy, -arg_1), -u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, -1000f, var_3.a) + vec3<f32>(var_3.a, var_3.a, 1288f)))), !(arg_1.x <= -6957i)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(!vec4<bool>(all(vec4<bool>(true, false, true, true)), true, true, false), u_input.a.wx, vec3<u32>(u_input.c, u_input.c, u_input.c));
    var var_1 = var_0;
    var_1 = var_0;
    var_1 = func_2(!vec4<bool>(_wgslsmith_div_u32(72198u, var_0.a.a) >= (var_1.a.a >> (1u % 32u)), false, -var_0.a.b < reverseBits(u_input.b.x), true), _wgslsmith_add_vec2_i32(-var_1.a.c.wz, _wgslsmith_add_vec2_i32(~var_0.a.c.xx, ~var_0.a.c.yy) >> (max(select(vec2<u32>(var_1.a.a, 1u), vec2<u32>(81088u, 83513u), vec2<bool>(false, var_1.a.e)), vec2<u32>(4294967295u, var_1.a.a)) % vec2<u32>(32u))), vec3<u32>(_wgslsmith_mod_u32(~(~12341u), _wgslsmith_clamp_u32(firstLeadingBit(56654u), var_1.a.a ^ 4294967295u, ~20616u)), ~(~var_0.a.a), 4294967295u));
    var_1 = Struct_2(Struct_1(2311u, u_input.a.x, vec4<i32>(_wgslsmith_div_i32(var_0.a.b, firstLeadingBit(var_0.a.b)), _wgslsmith_dot_vec3_i32(var_1.a.c.wzy, -vec3<i32>(var_0.a.b, 42880i, 0i)), 0i, var_1.a.c.x), vec3<f32>(-227f, var_0.a.d.x, 447f), !var_0.a.e));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, 0u) & vec4<u32>(u_input.d, 1u, 28759u, u_input.c), vec4<u32>(3416u, u_input.d, u_input.d, u_input.d))));
    var var_1 = _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(firstTrailingBit(min(u_input.d & var_0.x, ~u_input.c)), _wgslsmith_dot_vec4_u32(var_0, firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, 27652u, u_input.c), var_0)))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -551f);
    var var_3 = func_1();
    var_3 = func_1();
    let var_4 = Struct_3(var_2);
    var_1 = ~(~63636u);
    var var_5 = var_3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~(~select(~vec4<u32>(var_0.x, 4294967295u, 7107u, 86714u), ~var_0, any(vec3<bool>(var_3.e, false, true)))));
}

