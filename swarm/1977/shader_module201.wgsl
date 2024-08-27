struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: vec4<f32> = vec4<f32>(-1000f, 2561f, -1000f, 1000f);

var<private> global2: i32 = 0i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = ~_wgslsmith_mult_u32(8252u, u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    global0 = !select(vec4<bool>(true, any(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, true, global0.x, global0.x), true)), global0.x, !global0.x), select(select(select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, false, false)), vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(false, global0.x, global0.x, false)), vec4<bool>(!global0.x, true, true, !global0.x), select(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x), false), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, false), false), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, global0.x, global0.x)))), !select(vec4<bool>(true, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, false, true, false), false));
    var var_2 = Struct_2(false, ~vec2<u32>(countOneBits(0u), _wgslsmith_mod_u32(1u, 704u)) & vec2<u32>(u_input.b.x ^ 6166u, ~17050u), false, _wgslsmith_f_op_f32(f32(-1f) * -595f));
    var_2 = Struct_2(all(vec4<bool>(any(vec3<bool>(true, false, false)), select(-1561f >= arg_0.x, var_2.a, any(global0.www)), any(vec3<bool>(var_2.a, true, false)), -2799f <= arg_0.x)), firstLeadingBit(~vec2<u32>(10199u, 33071u)), any(select(!select(vec4<bool>(false, var_2.c, var_2.c, var_2.a), vec4<bool>(true, global0.x, global0.x, global0.x), true), !vec4<bool>(var_2.c, false, var_2.c, var_2.a), !(!vec4<bool>(global0.x, false, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-301f - _wgslsmith_f_op_f32(f32(-1f) * -1016f)) * _wgslsmith_f_op_f32(round(global1.x))));
    return global0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> vec4<bool> {
    global0 = vec4<bool>(true, !any(vec3<bool>(true, true, select(global0.x, false, global0.x))), !(!(!global0.x | all(vec4<bool>(true, global0.x, false, global0.x)))), !(!(!(!global0.x))));
    global2 = u_input.a;
    let var_0 = u_input.b ^ ~select(u_input.b, vec2<u32>(1u, ~u_input.b.x), all(vec2<bool>(false, false)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(global1.x)));
    var var_2 = true;
    return select(!vec4<bool>(false, true, false, func_3(_wgslsmith_f_op_vec2_f32(max(global1.yz, global1.yx)))), !(!vec4<bool>(any(global0.xy), -41180i != arg_1, global0.x, all(global0.yxy))), -(~_wgslsmith_dot_vec3_i32(arg_0.wzw, vec3<i32>(2147483647i, arg_0.x, -36238i))) == -_wgslsmith_add_i32(reverseBits(u_input.a), -u_input.a));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, global1.x, arg_1.d), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(floor(-519f)), arg_1.d)));
    return select(vec4<bool>(all(!select(vec4<bool>(var_0, global0.x, true, global0.x), vec4<bool>(global0.x, false, true, global0.x), arg_0.x)), true, ~_wgslsmith_add_u32(u_input.b.x, 4294967295u) == 27946u, any(!vec3<bool>(true, arg_0.x, false))), !select(!vec4<bool>(true, var_0, global0.x, true), func_2(-vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), i32(-1i) * -2147483647i), false), firstTrailingBit(countOneBits(~14110i)) < (~u_input.a >> (abs(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)) % 32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32) -> StorageBuffer {
    var var_0 = select(select(func_2(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, arg_2, -2147483647i, arg_2), vec4<i32>(arg_2, arg_2, arg_2, arg_2))), select(1i, reverseBits(arg_2), func_1(arg_0.zwx, Struct_2(true, u_input.b, global0.x, global1.x)).x)), vec4<bool>(true, false, global0.x, false), global0.x), arg_0, arg_0);
    var var_1 = ~(~vec3<i32>(arg_2, ~min(-2147483647i, 33464i), 0i));
    return StorageBuffer(min(abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 13564u, u_input.b.x, 0u), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)))), _wgslsmith_mult_vec4_u32(vec4<u32>(~1u, ~u_input.b.x, countOneBits(1u), _wgslsmith_sub_u32(10557u, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 20860u))), -76332i, firstTrailingBit(~vec3<i32>(_wgslsmith_mod_i32(u_input.a, -2147483647i), var_1.x, arg_2 << (u_input.b.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = countOneBits(u_input.a | u_input.a);
    let x = u_input.a;
    s_output = func_4(select(select(!func_1(vec3<bool>(global0.x, true, true), Struct_2(global0.x, u_input.b, false, global1.x)), !select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, false, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x)), func_2(vec4<i32>(-1i, u_input.a, -9331i, -12450i), i32(-1i) * -2147483647i)), !vec4<bool>(u_input.a == u_input.a, true, global0.x, false), global0.x), Struct_1(_wgslsmith_f_op_f32(trunc(global1.x))), u_input.a);
}

