struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec2<i32> {
    var var_0 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), 53863u < arg_0)));
    let var_1 = 1i;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-787f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3, 805f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, -346f) * _wgslsmith_f_op_f32(f32(-1f) * -551f)))), _wgslsmith_f_op_f32(1769f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(floor(arg_3)))))));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1577f * _wgslsmith_div_f32(arg_2, arg_3)) + _wgslsmith_f_op_f32(min(-130f, _wgslsmith_f_op_f32(-arg_3))))));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -436f);
    return vec2<i32>(var_1, -41860i);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(1u, ~select(vec2<i32>(-10888i, arg_0) << (u_input.a % vec2<u32>(32u)), abs(vec2<i32>(arg_0, arg_0)), vec2<bool>(true, true)) & ~(func_3(u_input.a.x, Struct_1(19389u, vec2<i32>(arg_0, -2147483647i), u_input.a.x), -122f, -401f) | firstTrailingBit(vec2<i32>(-2147483647i, arg_0))), _wgslsmith_mult_u32(u_input.a.x, 1u));
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, ~(~var_0.c), 29362u << (1u % 32u), countOneBits(u_input.a.x & var_0.c)), ~vec4<u32>(max(4294967295u, 4294967295u), firstTrailingBit(u_input.a.x), ~var_0.a, ~54884u)), var_0.b, ~u_input.a.x);
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(select(countOneBits(_wgslsmith_div_vec2_u32(u_input.a, u_input.a)), vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, var_0.a), u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(63570u, var_0.c), u_input.a) <= u_input.a.x), select(u_input.a & ~u_input.a, ~abs(u_input.a), select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec3<bool>(true, false, true))))), _wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(var_0.b, var_0.b)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, var_0.b.x), vec3<i32>(8686i, -1i, arg_0)), _wgslsmith_mod_i32(-6921i, arg_0)), ~(arg_0 & var_0.b.x))), abs(4294967295u));
    var var_1 = true;
    var_1 = all(vec3<bool>(!(!(1u != var_0.c)), false, !(!any(vec3<bool>(true, false, false)))));
    return Struct_1(58250u, vec2<i32>(abs(30891i), _wgslsmith_mult_i32(2147483647i, countOneBits(1i))), var_0.a);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    return func_2(-2147483647i);
}

fn func_1() -> Struct_1 {
    let var_0 = -628f;
    let var_1 = func_4(func_2(~_wgslsmith_div_i32(2147483647i, -2147483647i)));
    let var_2 = func_4(var_1);
    var var_3 = func_2(-_wgslsmith_mult_i32(10219i, 1i));
    let var_4 = Struct_1(57609u, vec2<i32>(var_2.b.x, var_2.b.x), var_1.a);
    return Struct_1(var_3.c, vec2<i32>(-1i) * -select(~vec2<i32>(23982i, 1i), vec2<i32>(var_3.b.x, var_1.b.x), true), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~max(~vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, max(~u_input.a.x, 14154u))), ~vec2<i32>(-10163i, ~countOneBits(-27138i)), 1u);
    let var_1 = func_1();
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.a.x, var_0.a) >> (select(vec2<u32>(var_0.c, var_1.a), vec2<u32>(var_1.a, var_1.a), false) % vec2<u32>(32u))), max(reverseBits(u_input.a), ~(~u_input.a))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.b, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x, 2147483647i), reverseBits(var_0.b))), -max(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 22086i), vec2<i32>(var_0.b.x, var_0.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.b.x, 1i), vec2<i32>(-1i, -1i)))), _wgslsmith_div_u32(var_1.a | ~select(u_input.a.x, u_input.a.x, true), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 14655u), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(25008u, 54891u))), u_input.a & _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(var_1.c, 21026u)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-565f - -1000f), 788f)), _wgslsmith_f_op_f32(min(-262f, _wgslsmith_f_op_f32(trunc(591f))))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-180f - _wgslsmith_div_f32(1078f, 1000f)), _wgslsmith_f_op_f32(abs(-1401f)), all(vec3<bool>(true, true, true)))))));
    let var_3 = firstLeadingBit(~_wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.a, u_input.a.x, u_input.a.x), vec3<u32>(var_1.a, 58660u, 1u)) ^ select(firstTrailingBit(vec3<u32>(1u, 20526u, 1u)), vec3<u32>(0u, ~u_input.a.x, 32594u), true));
    var_2 = 1f;
    let var_4 = var_1;
    var_0 = var_4;
    var var_5 = func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x & var_4.b.x, -(~(-37336i)), i32(-1i) * -2695i, abs(~10737i)), -select(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_4.b.x, var_1.b.x, var_0.b.x), vec4<i32>(-2147483647i, 1i, -36099i, var_1.b.x)), reverseBits(vec4<i32>(2147483647i, -28766i, -2990i, var_4.b.x)), vec4<bool>(true, false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(667f * -1634f))))), var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(191f, 539f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-711f, -1000f) * vec2<f32>(-1305f, 375f)))))), 1u, _wgslsmith_mod_u32(var_0.c | ~20638u, ~_wgslsmith_mult_u32(select(u_input.a.x, 29725u, true), var_4.c)));
}

