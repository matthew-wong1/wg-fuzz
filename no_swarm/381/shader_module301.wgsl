struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: f32,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c))), u_input.c.xz << (u_input.d % vec2<u32>(32u))) & -19533i;
    var var_1 = vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, arg_0, false))), select(!vec2<bool>(arg_0, false), vec2<bool>(true, arg_1), any(vec4<bool>(arg_1, arg_0, arg_0, false))))), all(!(!(!vec4<bool>(false, false, arg_1, true)))));
    var_0 = -_wgslsmith_dot_vec3_i32(-vec3<i32>(-u_input.c.x, 27079i, abs(41756i)), u_input.c);
    var var_2 = Struct_1(vec3<i32>(4733i, i32(-1i) * -31129i, abs(1i)));
    var_0 = _wgslsmith_sub_i32(var_2.a.x, -46835i);
    return var_2.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = arg_0;
    var_0 = _wgslsmith_sub_i32(-var_1.a.x, ~6082i);
    var_0 = -2147483647i;
    var var_2 = -27123i;
    return Struct_1(_wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, arg_1.x, u_input.c.x), arg_1), min(max(vec3<i32>(-1i, arg_2.x, var_1.a.x), vec3<i32>(-8597i, 2147483647i, arg_1.x)), u_input.c)) ^ ~(-(~vec3<i32>(arg_1.x, var_1.a.x, -38602i))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = firstTrailingBit(vec2<i32>(-28748i, firstTrailingBit(-2147483647i)));
    var var_1 = !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, any(vec4<bool>(false, true, true, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, true)));
    let var_2 = 67428i & u_input.c.x;
    let var_3 = u_input.d;
    let var_4 = _wgslsmith_sub_i32(func_2(Struct_2(-select(u_input.c.xz, arg_0.a.zz, vec2<bool>(var_1.x, var_1.x)), vec2<bool>(any(vec4<bool>(true, var_1.x, var_1.x, false)), all(vec3<bool>(var_1.x, var_1.x, true))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2066f, -928f, 790f))))), -(~u_input.c), u_input.c.zz).a.x, var_2);
    return vec4<bool>(var_1.x, var_1.x, !(all(vec3<bool>(false, false, true)) & var_1.x), true && (((var_1.x && var_1.x) | true) == var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var_0 = ~func_1(all(vec4<bool>(true, true, any(vec4<bool>(false, false, false, false)), select(true, false, false))), true);
    let var_1 = !vec4<bool>(true, !all(vec4<bool>(false, false, false, false)), all(func_3(func_2(Struct_2(u_input.c.xx, vec2<bool>(true, false), vec3<f32>(686f, -992f, -386f)), u_input.c, u_input.c.xx))), all(vec3<bool>(true, select(false, false, false), false)));
    var_0 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(418f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(471f)), -1000f)), -2204f));
    var var_3 = vec3<u32>(~u_input.b, 54905u, firstLeadingBit(u_input.d.x));
    let var_4 = Struct_1(~firstLeadingBit(_wgslsmith_add_vec3_i32(-u_input.c, ~u_input.c)));
    let var_5 = vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_3.zz), vec2<u32>(countOneBits(var_3.x), ~62174u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, 35177u) & vec4<u32>(u_input.d.x, u_input.b, u_input.b, 30080u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_3.x, 1u, var_3.x), vec4<u32>(u_input.d.x, 124628u, u_input.d.x, 35112u))), vec4<u32>(u_input.a ^ 1u, _wgslsmith_sub_u32(u_input.b, 0u), var_3.x, var_3.x))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d.x, u_input.a, _wgslsmith_dot_vec2_u32(var_3.zz, vec2<u32>(0u, var_3.x)), ~4294967295u), countOneBits(vec4<u32>(1u, 2455u, u_input.b, 17985u) >> (vec4<u32>(39627u, u_input.d.x, var_3.x, 14076u) % vec4<u32>(32u)))), u_input.d.x);
    let var_6 = _wgslsmith_div_vec3_i32(-vec3<i32>(_wgslsmith_clamp_i32(u_input.e & var_4.a.x, var_4.a.x, ~2147483647i), _wgslsmith_div_i32(-u_input.c.x, reverseBits(var_4.a.x)), func_2(Struct_2(vec2<i32>(u_input.e, 0i), var_1.yy, vec3<f32>(var_2, var_2, 811f)), vec3<i32>(var_4.a.x, -8819i, 58521i), var_4.a.zx).a.x), -(~(-func_2(Struct_2(vec2<i32>(var_4.a.x, var_4.a.x), var_1.zz, vec3<f32>(var_2, -145f, var_2)), vec3<i32>(-51668i, u_input.c.x, -2147483647i), var_4.a.yx).a)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2))), _wgslsmith_clamp_vec4_u32(var_5, abs(var_5), ~vec4<u32>(1u, _wgslsmith_add_u32(45331u, var_3.x), 1u, 1u)), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1237f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f))))));
}

