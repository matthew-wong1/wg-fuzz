struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-157f, 964f, 144f, 229f);

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<bool>, 2>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_clamp_u32(u_input.a, ~(~(~(u_input.a >> (u_input.a % 32u)))), ~49417u);
    let var_1 = Struct_4(_wgslsmith_div_vec4_i32(abs(vec4<i32>(2147483647i, 0i, -21266i, 1i)), max(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-15362i, 134i, -15515i, 0i) >> (vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a) % vec4<u32>(32u)))) & ~vec4<i32>(i32(-1i) * -393i, ~20935i, i32(-1i) * -10432i, min(-2147483647i, -2147483647i)), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(766f, global0.x, -279f)))), ~vec3<u32>(0u, var_0, var_0), _wgslsmith_f_op_f32(-arg_0.x), vec2<f32>(-604f, -407f))));
    return var_1.a.xxz;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(~(-vec3<i32>(2147483647i, 1i, 27545i)), firstTrailingBit(vec3<i32>(21176i, 1i, 5084i) >> (vec3<u32>(arg_0.x, u_input.a, u_input.a) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_mod_i32(2147483647i, max(-12452i, -1i)), -37681i, -1i)), vec3<i32>(1i, i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(~(-1i), ~(-2147483647i), 1i)) ^ func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, global0.x)), vec2<f32>(global0.x, 756f)))));
    var var_1 = abs(abs(~(~vec3<u32>(0u, u_input.a, 1u)) | firstTrailingBit(~vec3<u32>(u_input.a, 33689u, arg_1))));
    var_1 = vec3<u32>(reverseBits(1u), arg_0.x, ~(~countOneBits(_wgslsmith_div_u32(51716u, 4294967295u))));
    var var_2 = -(-1i ^ (~(-2147483647i) << (arg_0.x % 32u)));
    var var_3 = abs(~var_1.zy) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(abs(u_input.a & 36337u), _wgslsmith_mod_u32(var_1.x & arg_1, var_1.x ^ 16249u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), ~(arg_0 & var_1.xy)));
    return Struct_1(global0.x, abs(_wgslsmith_add_vec2_i32(abs(-vec2<i32>(6437i, -8856i)), max(firstTrailingBit(vec2<i32>(0i, 2147483647i)), select(vec2<i32>(16748i, -37960i), vec2<i32>(-1i, 36170i), global2[_wgslsmith_index_u32(var_3.x, 2u)])))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global2 = array<vec2<bool>, 2>();
    var var_0 = ~(reverseBits(3561u) | _wgslsmith_sub_u32(~_wgslsmith_mod_u32(1u, u_input.a), ~max(0u, 24290u)));
    var var_1 = ~87519u;
    let var_2 = Struct_1(159f, reverseBits((vec2<i32>(0i, -1i) ^ abs(vec2<i32>(-8822i, arg_0.x))) | arg_0.wx));
    var var_3 = -1573f;
    return func_2(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a & 85941u, u_input.a ^ 4294967295u), vec2<u32>(~1u, firstLeadingBit(u_input.a))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(-1i) * -(~vec4<i32>(-32996i, -10517i, -1i, -1i)));
    global1 = select(vec2<bool>(global1.x, false), vec2<bool>(any(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(5226u, countOneBits(0u)), 2u)]), true), select(select(global2[_wgslsmith_index_u32(29621u, 2u)], !(!global2[_wgslsmith_index_u32(u_input.a, 2u)]), -var_0.b.x < (1i >> (u_input.a % 32u))), global2[_wgslsmith_index_u32(~(~u_input.a), 2u)], u_input.a > 0u));
    let var_1 = -1i;
    global1 = select(global2[_wgslsmith_index_u32(99719u, 2u)], vec2<bool>(!any(vec4<bool>(true, true, false, false)), false), select(vec2<bool>(!(global1.x != global1.x), select(global1.x, false, all(vec3<bool>(false, true, false)))), select(!vec2<bool>(false, global1.x), select(!global2[_wgslsmith_index_u32(21222u, 2u)], select(vec2<bool>(global1.x, global1.x), global2[_wgslsmith_index_u32(1u, 2u)], global1.x), all(global2[_wgslsmith_index_u32(37839u, 2u)])), !vec2<bool>(false, global1.x)), false));
    var var_2 = ~var_0.b;
    let var_3 = ~vec2<i32>(~(~0i) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 103i), vec2<i32>(var_1, 1i)), ~vec2<i32>(29786i, 0i)), var_0.b.x);
    let var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(min(func_2(vec2<u32>(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 0u, 1u))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), -1618f), ~(~(vec3<u32>(1u, u_input.a, 11595u) ^ vec3<u32>(u_input.a, 45809u, 75515u))) << (countOneBits(~abs(vec3<u32>(62123u, 70953u, 1u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_vec2_f32(-global0.wy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2081f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1614f))) + global0.yzx));
}

