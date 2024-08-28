struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
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

var<private> global0: array<i32, 13> = array<i32, 13>(13302i, 35163i, -24008i, -13571i, 2147483647i, -5249i, -15756i, 20101i, -22902i, i32(-2147483648), 1i, 2147483647i, 0i);

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-831f, -836f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2109f, -1179f))))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1703f), _wgslsmith_f_op_f32(-434f + -214f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(458f, -1577f)))))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(max(-1978f, var_0.x))), var_0.x))), _wgslsmith_f_op_f32(-362f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), all(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_1, 1047f)), _wgslsmith_f_op_f32(exp2(var_0.x)))))), vec2<bool>(any(vec2<bool>(true, all(vec2<bool>(false, false)))), true));
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    return select(select(!select(var_2.b, !vec2<bool>(var_2.b.x, var_2.b.x), false), vec2<bool>(all(!vec2<bool>(true, var_2.b.x)), all(var_2.b)), all(vec2<bool>(!var_2.b.x, true))), vec2<bool>(all(vec4<bool>(false, true, any(vec3<bool>(false, var_2.b.x, true)), var_2.b.x)), true), var_2.b.x);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1473f) - -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-908f, 1393f)), -509f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)), _wgslsmith_f_op_f32(f32(-1f) * -1564f))), !func_3(~(~vec3<u32>(47421u, 4294967295u, u_input.d.x))));
    let var_1 = _wgslsmith_f_op_f32(floor(var_0.a.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f));
    var var_2 = ~vec4<u32>(10405u, max(~abs(1u), u_input.c.x), _wgslsmith_add_u32(abs(1u), firstTrailingBit(u_input.d.x)), countOneBits(~min(5802u, 43660u)));
    var_2 = select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, 0u, var_2.x >> (u_input.d.x % 32u), ~u_input.c.x), vec4<u32>(~firstLeadingBit(17243u), ~(var_2.x ^ u_input.d.x), max(~13026u, 1u), 4294967295u)), vec4<u32>(u_input.d.x, u_input.d.x >> (var_2.x % 32u), ~1u, 52618u), select(!select(vec4<bool>(false, true, false, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), select(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(false, false, var_0.b.x, true), var_0.b.x)), !select(select(vec4<bool>(true, var_0.b.x, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), vec4<bool>(false, var_0.b.x, false, var_0.b.x), var_0.b.x), select(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), vec4<bool>(true, false, true, false), vec4<bool>(false, var_0.b.x, false, var_0.b.x))), vec4<bool>(any(!var_0.b), !all(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x)), false, !var_0.b.x & select(true, true, var_0.b.x))));
    return var_0.a.x;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(func_2());
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_0 = _wgslsmith_f_op_f32(min(1000f, -155f));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1356f)), arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(244f, _wgslsmith_f_op_f32(func_2())))));
    var var_0 = select(!(!(!vec4<bool>(arg_1, arg_0.b.x, arg_1, arg_0.b.x))), select(vec4<bool>(!arg_0.b.x & true, all(!vec4<bool>(arg_0.b.x, arg_1, true, arg_1)), arg_0.b.x, arg_0.b.x), !select(!vec4<bool>(arg_0.b.x, arg_1, arg_1, arg_1), select(vec4<bool>(true, true, false, arg_1), vec4<bool>(true, arg_1, true, arg_0.b.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(true, true, false, true), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x))), select(select(!vec4<bool>(arg_1, false, arg_1, arg_1), !vec4<bool>(true, arg_1, arg_1, false), select(vec4<bool>(true, false, arg_1, true), vec4<bool>(arg_0.b.x, arg_1, true, arg_1), false)), select(!vec4<bool>(false, false, arg_0.b.x, arg_1), !vec4<bool>(false, arg_1, true, arg_0.b.x), !vec4<bool>(true, true, false, arg_1)), arg_0.a.x <= 542f)), !(!(!(!vec4<bool>(arg_0.b.x, arg_1, arg_0.b.x, arg_1)))));
    var var_1 = 67955i;
    var var_2 = u_input.d.wyx;
    var var_3 = func_3(~vec3<u32>(var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(61982u, 44057u, var_2.x), _wgslsmith_div_vec3_u32(u_input.d.xwx, u_input.d.yyx)), 1u));
    return firstTrailingBit(select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(33658u, u_input.d.x, var_2.x), vec3<u32>(var_2.x, 0u, 4294967295u)), 91348u), _wgslsmith_sub_vec2_u32(u_input.c, ~vec2<u32>(4294967295u, u_input.c.x)), vec2<bool>(all(vec4<bool>(arg_0.b.x, arg_1, false, false)), false)) & ~abs(~vec2<u32>(var_2.x, 4613u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~u_input.d.x, reverseBits(19822u))), func_4(func_1(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f), _wgslsmith_f_op_f32(734f + -504f)))))));
    var var_2 = Struct_1(vec2<f32>(-479f, var_1), vec2<bool>(true, true));
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x + var_1)))), !var_2.b);
    var_2 = func_1(vec2<bool>(var_2.b.x, any(vec2<bool>(var_2.b.x, func_1(var_2.b).b.x))));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f), _wgslsmith_f_op_f32(var_1 + var_2.a.x)) - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-345f * var_1))) - _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(func_2())))), select(!var_2.b, var_2.b, vec2<bool>(false, true)));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(vec2<bool>(false, false)).a.x) - _wgslsmith_f_op_f32(var_3.a.x - var_2.a.x)));
}

