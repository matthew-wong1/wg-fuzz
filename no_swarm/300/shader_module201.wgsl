struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = vec2<u32>(44309u, ~(u_input.d.x & firstTrailingBit(~u_input.d.x)));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_2 = Struct_3(arg_0.a);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -908f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f + 1000f)) + var_1), -371f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, arg_0.b.x)) + _wgslsmith_f_op_f32(trunc(var_1)))), arg_0.b.x, true)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_3.zx))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(var_3.x + var_1))))));
    return !vec4<bool>(true, arg_0.d.b.x, _wgslsmith_f_op_f32(ceil(var_1)) >= _wgslsmith_f_op_f32(-1038f - _wgslsmith_f_op_f32(sign(1442f))), arg_0.a.b.x);
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = select(func_3(Struct_2(arg_0.a, arg_0.c.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.c))), arg_0.a)), vec4<bool>(!any(func_3(Struct_2(Struct_1(2147483647i, vec3<bool>(arg_0.a.b.x, true, true)), vec2<f32>(arg_0.b.x, 1150f), vec4<f32>(839f, -842f, -449f, arg_0.b.x), arg_0.a)).yzx), !(_wgslsmith_f_op_f32(exp2(arg_0.c.x)) != _wgslsmith_f_op_f32(exp2(arg_0.c.x))), arg_0.d.b.x, false), !(!select(!vec4<bool>(true, arg_0.a.b.x, false, false), func_3(Struct_2(Struct_1(-2147483647i, vec3<bool>(true, arg_0.a.b.x, true)), arg_0.c.wz, arg_0.c, arg_0.d)), true)));
    var var_1 = arg_0.a;
    return vec3<bool>(var_1.b.x, !any(vec4<bool>(true, func_3(arg_0).x, var_0.x, !var_0.x)), any(var_0));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = ~countOneBits(u_input.c.x);
    let var_1 = all(vec2<bool>(arg_1.x, func_2(Struct_2(Struct_1(-1i, arg_1), _wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1546f, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, -463f, arg_0.x)), Struct_1(u_input.a.x, vec3<bool>(arg_1.x, false, false)))).x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 856f, -698f, -1000f)))))));
    var var_3 = Struct_3(Struct_1(u_input.a.x, func_2(Struct_2(Struct_1(u_input.e.x, vec3<bool>(arg_1.x, false, var_1)), arg_0, _wgslsmith_div_vec4_f32(var_2, vec4<f32>(var_2.x, 1000f, -458f, 177f)), Struct_1(u_input.b.x, arg_1)))));
    let var_4 = var_3.a;
    return Struct_2(var_3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(step(var_2.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1531f, -210f, -407f, -315f)), vec4<f32>(var_2.x, -905f, arg_0.x, 1000f), !var_1))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 710f, -164f, var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2, vec4<f32>(arg_0.x, 1686f, 813f, arg_0.x), true)))), arg_1.x)), Struct_1(var_4.a, var_3.a.b));
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1737f, arg_0.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1166f, 768f) * arg_0)))))), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), func_2(Struct_2(Struct_1(0i, vec3<bool>(true, true, true)), arg_0, vec4<f32>(arg_0.x, 118f, -434f, -2207f), Struct_1(u_input.a.x, vec3<bool>(true, true, true))))), vec3<bool>(u_input.d.x != 4294967295u, true, false), arg_0.x == arg_0.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_0 * var_0.b);
    let var_2 = var_0.c.x;
    var var_3 = true;
    var_1 = _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f - arg_0.x))), _wgslsmith_f_op_f32(min(-610f, -1000f))));
    return _wgslsmith_div_vec3_u32(min(~_wgslsmith_add_vec3_u32(vec3<u32>(211u, u_input.d.x, 74282u), vec3<u32>(u_input.d.x, 25347u, 51298u)) & _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, 1u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), reverseBits(~vec3<u32>(21373u, u_input.d.x, u_input.d.x)) | firstTrailingBit(vec3<u32>(18261u, u_input.c.x, 4294967295u) >> (vec3<u32>(u_input.d.x, 3296u, u_input.d.x) % vec3<u32>(32u)))), vec3<u32>(1u, u_input.c.x, ~(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-24752i, u_input.a.x);
    let var_1 = -(reverseBits(u_input.a.wyw) | -(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 9576i, -45069i), u_input.a.zwx) << (func_1(vec2<f32>(1607f, 342f)) % vec3<u32>(32u))));
    var var_2 = ~(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.d.x, u_input.c.x), vec4<u32>(u_input.d.x, 31750u, u_input.d.x, 37263u)), ~4294967295u, u_input.d.x, max(4294967295u, 4294967295u))));
    var_2 = vec4<u32>(var_2.x, ~38800u, 17202u, _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 4294967295u, 1u), vec3<u32>(u_input.d.x, 0u, 42311u)))), u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-120f))), 1f));
}

