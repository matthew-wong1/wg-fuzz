struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), -1130f, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), 2781u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    var var_0 = u_input.a.x;
    return u_input.a;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(global0.a, global0.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, abs(global0.c.x), firstTrailingBit(global0.c.x)) ^ (reverseBits(global0.c) & global0.c), _wgslsmith_sub_vec3_i32(global0.c, ~vec3<i32>(-28645i, 2147483647i, 1i)) >> (select(func_3(), u_input.a & vec3<u32>(global0.d, 4294967295u, 0u), select(global0.a.x, global0.a.x, global0.a.x)) % vec3<u32>(32u)), max(vec3<i32>(~(-2147483647i), global0.c.x, -global0.c.x), _wgslsmith_mod_vec3_i32(global0.c, -vec3<i32>(19894i, -2147483647i, global0.c.x)))), 8142u);
    var_0 = Struct_1(var_0.a, 1000f, vec3<i32>(1i, -1i, firstTrailingBit(i32(-1i) * -9946i)), _wgslsmith_mod_u32(select(_wgslsmith_sub_u32(4294967295u, u_input.a.x), u_input.a.x, all(var_0.a.wxx)), _wgslsmith_div_u32(countOneBits(global0.d), _wgslsmith_sub_u32(global0.d, var_0.d))) & global0.d);
    let var_1 = Struct_1(vec4<bool>(all(select(!global0.a.wyx, vec3<bool>(false, false, global0.a.x), var_0.a.yzw)), !(!(var_0.a.x | global0.a.x)), select(any(global0.a.wzw), !(var_0.d < global0.d), !global0.a.x), select(any(vec4<bool>(global0.a.x, global0.a.x, false, false)), var_0.a.x, true)), _wgslsmith_f_op_f32(round(var_0.b)), global0.c, _wgslsmith_sub_u32(u_input.a.x, 4066u));
    let var_2 = all(vec3<bool>(global0.a.x, any(vec4<bool>(false, true, !var_0.a.x, !var_1.a.x)), false));
    var var_3 = -select(vec2<i32>(var_0.c.x, -var_0.c.x), max(firstLeadingBit(var_1.c.xz), var_1.c.zx), var_0.a.yx) << (~vec2<u32>(~u_input.a.x, 1u ^ u_input.a.x) % vec2<u32>(32u));
    return var_1.a;
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(select(!func_2(), vec4<bool>(global0.a.x, true, any(global0.a.xw), !(!global0.a.x)), vec4<bool>(all(!global0.a.xz), !global0.a.x, !all(vec4<bool>(global0.a.x, global0.a.x, false, false)), global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(1897f - 1249f)), global0.b)), _wgslsmith_mod_vec3_i32(global0.c, vec3<i32>(~(-13756i), global0.c.x, global0.c.x)), _wgslsmith_div_u32(global0.d, firstTrailingBit(abs(14839u))) | 1u);
    global0 = Struct_1(vec4<bool>(true, any(vec2<bool>(global0.a.x, global0.a.x)) | global0.a.x, !((i32(-1i) * -30576i) == _wgslsmith_clamp_i32(global0.c.x, -20329i, global0.c.x)), false), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0.b)), global0.b)), _wgslsmith_mult_vec3_i32(-reverseBits(countOneBits(global0.c)), vec3<i32>(49770i, abs(global0.c.x), _wgslsmith_mult_i32(global0.c.x, global0.c.x)) ^ max(~global0.c, global0.c)), _wgslsmith_mod_u32(abs(57997u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(832u, global0.d, 4294967295u, global0.d)), ~vec4<u32>(69026u, global0.d, global0.d, global0.d)), _wgslsmith_sub_u32(4294967295u, 1u))));
    return Struct_1(select(!global0.a, vec4<bool>(any(vec4<bool>(true, true, global0.a.x, global0.a.x)), true, true, global0.a.x), all(select(select(global0.a, vec4<bool>(global0.a.x, global0.a.x, true, false), global0.a), global0.a, all(vec3<bool>(false, false, global0.a.x))))), global0.b, global0.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(7692u, global0.d) << (vec2<u32>(~41487u, 1u) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(u_input.a.zy, u_input.a.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global0.b + 269f);
    global0 = func_1();
    global0 = Struct_1(!func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1072f)), reverseBits(vec3<i32>(47755i ^ _wgslsmith_dot_vec3_i32(global0.c, global0.c), _wgslsmith_div_i32(global0.c.x, global0.c.x), 27366i)), u_input.a.x);
    global0 = Struct_1(func_1().a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_div_f32(1f, global0.b))), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(global0.c, global0.c) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(2166i, 2147483647i, global0.c.x), vec3<i32>(global0.c.x, global0.c.x, global0.c.x), vec3<i32>(global0.c.x, global0.c.x, global0.c.x)), global0.c), _wgslsmith_mod_vec3_i32(-global0.c, -global0.c) | -_wgslsmith_div_vec3_i32(global0.c, vec3<i32>(global0.c.x, 0i, global0.c.x))), ~0u >> (_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), 1u | ~u_input.a.x) % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-769f, 295f, 2303f, var_0) * vec4<f32>(global0.b, global0.b, global0.b, 1157f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 1000f, 985f, -1575f), vec4<f32>(234f, -1011f, global0.b, -2218f))), vec4<f32>(1594f, global0.b, var_0, global0.b))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(2667f, global0.b, var_0, var_0) + vec4<f32>(-495f, 628f, 1378f, 1088f)))), !vec4<bool>(global0.a.x, false, global0.a.x, false))))));
    var var_2 = select(u_input.a, min(func_3(), ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, global0.d), u_input.a), u_input.a | vec3<u32>(u_input.a.x, 4294967295u, global0.d))), global0.a.yxy);
    var var_3 = func_1().a.x;
    let var_4 = abs(_wgslsmith_div_vec3_i32(func_1().c, ~(~(vec3<i32>(-2147483647i, 1i, 2147483647i) | vec3<i32>(global0.c.x, global0.c.x, global0.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u, 1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(230f, var_0, 1870f) + vec3<f32>(-370f, -398f, -1625f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-367f, -1712f, global0.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.b, -809f, global0.b), vec3<f32>(global0.b, var_1.x, -1190f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wzy)))), global0.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(991f, global0.b, var_0, 1000f)) + vec4<f32>(699f, var_1.x, global0.b, 700f))))));
}

