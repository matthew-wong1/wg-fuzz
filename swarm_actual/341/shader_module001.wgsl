struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(abs(71768u)), u_input.c.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2439f, 912f))), 1522f))), !select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, global0.x, true, global0.x)), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, false, global0.x, global0.x), true)), vec4<bool>(global0.x, select(false, false, false), u_input.c.x <= u_input.c.x, true), !(!vec4<bool>(true, false, false, global0.x))));
    let var_1 = firstTrailingBit(0i);
    global0 = vec4<bool>(global0.x, false, var_0.c.x > var_0.c.x, var_0.d.x);
    global0 = vec4<bool>(!(var_0.d.x || (select(true, true, true) | var_0.d.x)), !any(global0.xw) || any(vec3<bool>(true, global0.x, select(false, var_0.d.x, global0.x))), any(var_0.d.xz), abs(~reverseBits(-1i)) != firstTrailingBit(var_1));
    let var_2 = var_0.d;
    return reverseBits((_wgslsmith_add_u32(~0u, _wgslsmith_div_u32(var_0.b, 1091u)) ^ 6507u) & var_0.a.a);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = reverseBits(firstLeadingBit(~(~u_input.c)));
    let var_1 = true;
    global0 = arg_2;
    let var_2 = Struct_1(abs(func_3()));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, 1234f, 2204f, -178f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, -1398f, var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1012f)) * _wgslsmith_f_op_f32(2218f * arg_1)), -578f, _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_1), true)))));
    return Struct_2(var_2, select(21303u, ~0u, select(var_1, 1u < var_0.x, false) || (arg_1 > var_3.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.x, 1324f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1095f, var_3.x)))))), _wgslsmith_div_vec2_f32(var_3.ww, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 2379f))), true)), select(select(select(arg_2, select(arg_2, arg_2, var_1), vec4<bool>(true, true, true, true)), vec4<bool>(arg_2.x, !global0.x, true, !arg_2.x), !(!vec4<bool>(false, global0.x, global0.x, var_1))), arg_2, !arg_0));
}

fn func_4(arg_0: Struct_2) -> i32 {
    global0 = !func_2(true, arg_0.c.x, !select(!arg_0.d, select(arg_0.d, arg_0.d, global0.x), true)).d;
    let var_0 = vec3<u32>(5884u, select(38845u, ~(~u_input.c.x), arg_0.d.x), 1u);
    let var_1 = global0.x;
    global0 = arg_0.d;
    var var_2 = ~(-select(-vec3<i32>(0i, u_input.b, u_input.a), -abs(vec3<i32>(-16449i, 7781i, 1i)), !select(vec3<bool>(arg_0.d.x, global0.x, true), vec3<bool>(false, true, false), vec3<bool>(true, global0.x, arg_0.d.x))));
    return u_input.a;
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    let var_0 = vec3<i32>(-36470i, -23264i, func_4(func_2(global0.x, -334f, vec4<bool>(any(vec3<bool>(global0.x, true, global0.x)), any(vec3<bool>(global0.x, global0.x, true)), global0.x, any(vec4<bool>(global0.x, false, true, global0.x))))));
    var var_1 = u_input.c.zy;
    global0 = vec4<bool>(false, global0.x, ~(~arg_0.x << (1u % 32u)) > -43401i, var_1.x >= ~u_input.c.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2628f, -1173f, 1921f, 881f))), vec4<f32>(-109f, 1253f, -1130f, 2311f)))))));
    let var_3 = all(vec4<bool>(any(func_2(false, 192f, vec4<bool>(global0.x, global0.x, false, global0.x)).d.zy), false, true, false)) && any(global0.xzy);
    return _wgslsmith_f_op_f32(-var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.yz;
    var var_1 = _wgslsmith_f_op_f32(select(490f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), false != !all(select(vec2<bool>(global0.x, false), global0.xy, vec2<bool>(true, true)))));
    var_1 = 457f;
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(-firstLeadingBit(-vec4<i32>(-1i, 6i, 39583i, -36418i))))));
    global0 = select(select(!vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, !(!global0.x), any(!vec4<bool>(var_0.x, false, false, true)), true), select(vec4<bool>(!var_0.x, var_0.x, global0.x, true), vec4<bool>(true, false, !global0.x, var_0.x), select(func_2(var_0.x, -305f, vec4<bool>(true, true, true, global0.x)).d, vec4<bool>(false, var_0.x, false, true), !vec4<bool>(global0.x, global0.x, var_0.x, var_0.x)))), vec4<bool>(true, var_0.x, func_2(true, _wgslsmith_f_op_f32(round(1264f)), !vec4<bool>(var_0.x, true, false, false)).b == u_input.c.x, false), true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.b, u_input.b, u_input.a)) | _wgslsmith_mod_vec3_i32(select(vec3<i32>(15086i, u_input.b, -2147483647i), vec3<i32>(u_input.a, u_input.b, u_input.b), var_0.x), ~vec3<i32>(2147483647i, u_input.a, u_input.a))), vec2<i32>(36073i, firstTrailingBit(u_input.b)) | vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, 2147483647i), -vec2<i32>(-1i, u_input.a)), ~(-1i)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(-2147483647i, u_input.b)), 1i, ~(-15722i)), -5466i, u_input.a & 13867i, (i32(-1i) * -2147483647i) & u_input.b), 0u);
}

