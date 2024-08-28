struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = max(u_input.a.ww, ~(~(u_input.a.yz << (countOneBits(vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f))), _wgslsmith_f_op_f32(-2084f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(508f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-335f, 1156f)) - -658f)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -465f, _wgslsmith_f_op_f32(-137f * _wgslsmith_f_op_f32(func_3()))), vec3<f32>(-688f, -744f, -578f), 1257f, vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), !(u_input.a.x <= u_input.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, -1235f)) * -302f)));
    let var_1 = var_0.d.x;
    let var_2 = ~firstLeadingBit(vec3<i32>(~1i, i32(-1i) * -1i, i32(-1i) * -2147483647i));
    var var_3 = 4294967295u;
    var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~(~(~u_input.a.x)), _wgslsmith_add_u32(abs(~13684u), ~u_input.a.x), 45818u), ~(~countOneBits(vec4<u32>(u_input.a.x, 6624u, u_input.a.x, u_input.a.x) << (u_input.a % vec4<u32>(32u)))));
    return ~(~firstTrailingBit(41446u)) ^ ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.a.yyw));
}

fn func_1() -> Struct_1 {
    let var_0 = i32(-1i) * -2147483647i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_u32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1078f, 271f, -1323f, -1000f)), -909f), _wgslsmith_clamp_u32(15976u, u_input.a.x & 0u, ~4294967295u)), _wgslsmith_f_op_f32(-117f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1518f))))), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(func_3())), Struct_1(_wgslsmith_div_u32(~51499u, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1007f)) + 1000f))));
    var var_2 = Struct_1(u_input.a.x, var_1.b.b);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) - 500f))), _wgslsmith_f_op_f32(ceil(var_1.c.b)), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(687f + 444f))) * 1f), -517f)));
    var_2 = Struct_1(var_2.a, 823f);
    return Struct_1(4294967295u, var_1.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 134f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-831f * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -520f)))) + _wgslsmith_f_op_f32(abs(-227f)));
    let var_1 = ~(-11176i);
    var var_2 = u_input.a.yyy;
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, _wgslsmith_f_op_f32(trunc(1634f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.b)), -336f)), _wgslsmith_sub_i32(min(_wgslsmith_div_i32(var_1, -10635i), var_1) << (var_3.a % 32u), var_1));
}

