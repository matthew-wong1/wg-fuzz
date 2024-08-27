struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(-417f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(509f, 668f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-421f * 1027f)))));
    var var_1 = abs(u_input.d.x);
    var_1 = 31326u << (u_input.a.x % 32u);
    let var_2 = Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xy), abs(vec2<u32>(u_input.d.x, u_input.d.x)))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true, -u_input.c.x);
    let var_3 = Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1477f + _wgslsmith_f_op_f32(f32(-1f) * -1149f)), -317f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-996f + -473f), -676f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-547f))) - _wgslsmith_f_op_f32(round(-392f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: f32) -> vec4<f32> {
    var var_0 = max(-u_input.c, -u_input.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)))));
    let var_2 = 65486u;
    var_1 = vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))) + -917f), 508f);
    let var_3 = ~arg_1.a;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3)), -340f), -671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-969f * var_1.x)), _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(463f, 691f, false)), 293f, _wgslsmith_f_op_f32(step(-227f, -1315f)), -1158f)))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-1129f - 235f))), Struct_1(0u), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 454f) + vec2<f32>(-203f, -145f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1573f)), _wgslsmith_f_op_f32(-250f * -128f)))), 1181f))));
    var var_1 = _wgslsmith_f_op_f32(425f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-651f + _wgslsmith_f_op_f32(var_0.x - var_0.x)))));
    let var_2 = any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), false), all(vec2<bool>(true, false)) & true), all(vec3<bool>(false, true, u_input.d.x > 4294967295u))));
    let var_3 = Struct_2(Struct_1(abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.d.zyw, vec3<u32>(u_input.d.x, 0u, u_input.d.x)), ~4294967295u))), !(!select(select(vec2<bool>(false, true), vec2<bool>(true, var_2), var_2), select(vec2<bool>(true, true), vec2<bool>(var_2, var_2), var_2), true)), all(select(select(vec3<bool>(false, var_2, var_2), vec3<bool>(true, true, true), var_2), vec3<bool>(!var_2, any(vec4<bool>(true, false, true, var_2)), u_input.d.x == 6715u), vec3<bool>(true, var_2 | true, false))), firstTrailingBit(_wgslsmith_div_i32(u_input.c.x, u_input.c.x)));
    let var_4 = !(!var_3.b.x);
    return var_0.x;
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1236f, 282f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-257f, 639f)))) - _wgslsmith_f_op_f32(func_2()))));
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1212f, var_0.a.x) - var_0.a), vec2<f32>(var_0.a.x, var_0.a.x), vec2<bool>(false, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(213f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(func_4(vec3<f32>(2071f, 1000f, var_0.b), Struct_1(86663u), Struct_4(var_0.a, var_0.a.x), var_0.a.x)).yx)))), _wgslsmith_f_op_f32(-var_0.a.x));
    let var_1 = Struct_1(~(~1u));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(var_0.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))) - var_0.b));
    var var_3 = Struct_4(var_2.a, var_2.b);
    return !vec4<bool>(u_input.b <= u_input.c.x, !(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.a), u_input.a.zx) == var_1.a), !(!any(vec4<bool>(true, true, false, false))), true | any(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), func_1(), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))));
    var_0 = !(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))) & false);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_sub_vec3_i32(-firstLeadingBit(firstLeadingBit(vec3<i32>(-5473i, -1i, u_input.b))), vec3<i32>(abs(-1i), u_input.b, abs(u_input.c.x) & 1i)));
}

