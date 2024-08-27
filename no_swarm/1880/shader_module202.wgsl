struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    let var_0 = -1524f;
    let var_1 = select(!(!select(select(vec3<bool>(arg_0.c, false, false), vec3<bool>(false, true, arg_2), true), select(vec3<bool>(true, arg_0.c, true), vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_0.c, true, arg_0.b)), !vec3<bool>(false, arg_2, true))), select(select(!select(vec3<bool>(arg_0.c, false, false), vec3<bool>(false, false, false), arg_2), vec3<bool>(false, true, arg_2), true), vec3<bool>(all(select(vec3<bool>(false, arg_2, arg_0.c), vec3<bool>(true, true, arg_0.c), vec3<bool>(arg_2, false, arg_0.c))), arg_2, all(vec3<bool>(true, true, true))), any(!select(vec3<bool>(arg_0.c, arg_2, true), vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_0.b, arg_0.c, false)))), any(vec3<bool>(false, true, select(arg_2, arg_0.b, arg_0.c))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -418f);
    let var_3 = arg_0.a;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -227f);
    return var_0;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2.c, u_input.b, true)) + _wgslsmith_f_op_f32(func_3(arg_2.c, reverseBits(vec2<i32>(u_input.a, 1i)), all(vec4<bool>(arg_2.a.b, false, false, false))))))));
    var var_1 = Struct_3(~arg_2.d.x, arg_2.c.a, !vec4<bool>(true, arg_2.a.b, all(vec3<bool>(arg_2.a.b, arg_2.c.b, true)), (arg_2.d.x >> (1u % 32u)) >= (arg_2.d.x & arg_2.d.x)));
    global0 = ~(~(-10821i) ^ _wgslsmith_dot_vec2_i32(u_input.b, select(~vec2<i32>(u_input.b.x, arg_0), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, u_input.a), u_input.b), any(vec4<bool>(false, var_1.c.x, false, true)))));
    let var_2 = 0i;
    var var_3 = vec2<bool>(_wgslsmith_f_op_f32(1000f - 192f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-621f, -880f)) - _wgslsmith_f_op_f32(floor(742f)))), var_1.c.x | false);
    return _wgslsmith_mult_i32(_wgslsmith_mod_i32(-76668i, 13932i), -12974i);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> vec2<i32> {
    var var_0 = -_wgslsmith_div_vec3_i32(vec3<i32>(-29414i, arg_0.x, select(~(-2147483647i), arg_0.x, false)), vec3<i32>(-1i, func_2(min(0i, -33907i), _wgslsmith_add_i32(u_input.b.x, 13417i), Struct_4(Struct_2(Struct_1(arg_0.x), true, true), Struct_1(u_input.b.x), Struct_2(Struct_1(-2147483647i), true, false), vec2<u32>(1u, 1u))), -25914i));
    let var_1 = reverseBits(~max(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, -19118i, u_input.b.x)), vec3<i32>(var_0.x, arg_1, arg_0.x)), ~vec3<i32>(var_0.x, arg_0.x, 2147483647i)));
    var_0 = select(~(~(~(~vec3<i32>(2147483647i, var_0.x, -1i)))), abs(max(var_1, -firstTrailingBit(var_1))), select(vec3<bool>(true, false, all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true), any(vec2<bool>(false, false))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    var var_2 = -320f;
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(-1877f, 2467f)))))));
    return ~(~(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(6714i, -1i)), countOneBits(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(0u);
    global0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.b), -_wgslsmith_mod_vec2_i32(u_input.b, func_1(vec2<i32>(u_input.a, u_input.a), -1243i) & vec2<i32>(2618i, -45761i)));
    global0 = 29755i;
    var var_1 = Struct_1(u_input.a);
    let var_2 = vec3<u32>(14639u, ~1u, ~(~var_0));
    var var_3 = 33558u;
    var var_4 = Struct_1(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, u_input.a), u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1317f) - -815f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1238f)))))), ~max(~(~vec4<u32>(62688u, var_0, 4294967295u, 4294967295u)), (vec4<u32>(var_0, 23655u, var_0, var_0) | vec4<u32>(27980u, var_2.x, var_0, var_0)) & vec4<u32>(2410u, var_2.x, var_0, 4294967295u)));
}

