struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, 38959u, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i));

var<private> global1: vec4<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_1(firstTrailingBit(global0.c.x) << (~reverseBits(~arg_0.x) % 32u), ~_wgslsmith_div_u32(~arg_0.x, _wgslsmith_mod_u32(0u, ~global0.b)), vec3<i32>(global0.a, _wgslsmith_mult_i32(_wgslsmith_div_i32(~1i, firstLeadingBit(30467i)), ~(-global0.a)), -2147483647i));
    var var_1 = var_0;
    return vec4<u32>(abs(var_1.b), min(~1u, firstLeadingBit(1u)) | arg_0.x, var_1.b, 4294967295u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(71057i, ~_wgslsmith_dot_vec3_u32(global1.wzz, global1.yxy), _wgslsmith_div_vec3_i32(vec3<i32>(0i, global0.a, -global0.a), reverseBits(vec3<i32>(-global0.c.x, _wgslsmith_mult_i32(global0.a, global0.c.x), abs(1i)))));
    global0 = var_0;
    var var_1 = true;
    let var_2 = abs(reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(33744u, 4294967295u, 32235u, 1u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.b)), _wgslsmith_add_vec4_u32(vec4<u32>(37949u, global1.x, 28557u, 20673u), func_3(vec4<u32>(global1.x, 1u, 4294967295u, var_0.b), -1978f)))));
    let var_3 = Struct_1(global0.a, ~(~func_3(var_2, _wgslsmith_f_op_f32(min(-349f, 1043f))).x), ~select(abs(firstLeadingBit(vec3<i32>(global0.a, var_0.c.x, var_0.c.x))), var_0.c, abs(0i) != var_0.a));
    return var_0;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    global0 = func_2();
    var var_0 = true;
    var var_1 = !(!vec4<bool>(1i > _wgslsmith_add_i32(arg_0.c.x, global0.a), select(true, any(vec3<bool>(true, false, false)), any(vec4<bool>(true, false, false, false))), all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))));
    var var_2 = select(vec4<bool>(any(select(!vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, true, false), true)), all(var_1.zxy) || false, all(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x), !select(vec4<bool>(!var_1.x, true, true, var_1.x), select(!vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, false, false, true), var_1.x)), !(!vec4<bool>(var_1.x, false, true, false))), all(vec2<bool>(true, all(!vec4<bool>(false, true, var_1.x, false)))));
    global0 = func_2();
    return vec3<u32>(4294967295u, global1.x, 4294967295u) ^ vec3<u32>(1u, func_2().b, ~min(global1.x, 4294967295u) & ~global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~global0.c.x, 0u, -vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(reverseBits(global0.a), global0.a ^ global0.c.x), global0.a));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1091f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(727f + -1459f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(696f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1470f, 1464f) - _wgslsmith_f_op_f32(min(1345f, 255f)))))), -1073f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), -952f);
    var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1968f, _wgslsmith_f_op_f32(abs(var_1.x)), any(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - 115f)), _wgslsmith_f_op_f32(601f * _wgslsmith_f_op_f32(1906f - _wgslsmith_f_op_f32(max(-408f, var_1.x)))))));
    let var_2 = _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(func_1(Struct_1(global0.a, 4947u, var_0.c)), ~vec3<u32>(1077u, global1.x, 1u))) & ~(~global1.zyy), vec3<u32>(_wgslsmith_sub_u32(32708u, ~min(global1.x, global0.b)), u_input.a, ~global1.x));
    global1 = vec4<u32>(47780u, abs(_wgslsmith_dot_vec2_u32(~abs(global1.xz), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.b), global1.ww >> (vec2<u32>(u_input.a, var_0.b) % vec2<u32>(32u))))), 4294967295u, global1.x);
    var var_3 = func_2();
    var var_4 = !select(vec4<bool>(any(vec4<bool>(false, true, false, false)) || any(vec2<bool>(false, true)), false, any(vec2<bool>(true, true)), select(any(vec3<bool>(true, true, false)), true, true)), vec4<bool>(true, true, true, true), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(-vec2<i32>(-2147483647i, var_0.c.x))) & ~vec2<i32>(-7962i, ~global0.a), global0.c.x, ~(global1.x & (var_2 & 28172u)) & _wgslsmith_mod_u32(var_3.b, ~abs(41064u)));
}

