struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(62611u, 0u, 1u);

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = vec3<u32>(4294967295u, u_input.c.x, ~firstLeadingBit(4294967295u));
    let var_0 = Struct_1(global0.x != (_wgslsmith_mod_u32(global0.x, global0.x << (u_input.a % 32u)) >> (global0.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1778f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(trunc(1205f)))), -636f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(712f, -762f, false)) * _wgslsmith_f_op_f32(step(878f, -291f)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2886f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(498f, -1662f))))))));
    global1 = 8092u;
    var var_1 = u_input.c.wx;
    global1 = 18395u;
    return _wgslsmith_f_op_f32(1180f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1613f)), -254f));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<f32>) -> bool {
    let var_0 = !select(vec2<bool>(true, _wgslsmith_f_op_f32(arg_1 - arg_2.x) < arg_2.x), vec2<bool>(arg_1 != _wgslsmith_f_op_f32(sign(-1312f)), _wgslsmith_f_op_f32(-arg_2.x) >= _wgslsmith_f_op_f32(abs(arg_2.x))), !(_wgslsmith_f_op_f32(max(-505f, 284f)) >= _wgslsmith_f_op_f32(-arg_1)));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-1f)), -1000f, var_1.x, arg_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(862f + 220f), _wgslsmith_f_op_f32(select(arg_1, 2248f, var_0.x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(arg_1, 288f))))) * vec4<f32>(-533f, 1000f, 1000f, arg_2.x)));
    global0 = arg_0.www;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1050f, var_2.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * -1218f), _wgslsmith_f_op_f32(f32(-1f) * -658f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1449f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(trunc(-1104f)))), _wgslsmith_f_op_f32(sign(var_2.x))));
    return false || (var_2.x > _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(253f, -1344f)))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = true;
    global1 = 1187u;
    var var_1 = -vec2<i32>(1i, -34531i);
    let var_2 = Struct_1(func_2(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 684u, 4294967295u, u_input.c.x), u_input.c) >> ((vec4<u32>(u_input.d, 4294967295u, 18557u, u_input.a) | u_input.c) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.b.x) * _wgslsmith_f_op_f32(step(116f, arg_0.b.x))) - _wgslsmith_f_op_f32(abs(arg_0.c.x))), arg_0.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x - -616f), arg_0.c.x), _wgslsmith_f_op_f32(func_3())))), vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), 765f));
    global1 = u_input.d;
    return !vec2<bool>(var_2.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~firstTrailingBit(~vec3<i32>(u_input.b, 6745i, u_input.b) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(1i, u_input.b, u_input.b))));
    global0 = u_input.c.yyz;
    var var_1 = _wgslsmith_f_op_f32(2435f - _wgslsmith_f_op_f32(abs(643f)));
    var_1 = _wgslsmith_f_op_f32(2327f * -1000f);
    let var_2 = select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), select(!select(vec2<bool>(true, true), func_1(Struct_1(false, vec3<f32>(1905f, 1000f, -271f), vec2<f32>(1553f, -936f))), true), func_1(Struct_1(true, vec3<f32>(-2159f, -954f, -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(1524f, -1000f), vec2<f32>(-860f, -986f)))), select(func_1(Struct_1(true, vec3<f32>(-2136f, 974f, 498f), vec2<f32>(-707f, 882f))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), u_input.b < u_input.b), vec2<bool>(any(vec2<bool>(true, false)), true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), vec2<f32>(1f, _wgslsmith_f_op_f32(-1878f - -234f)))), vec4<u32>(max(global0.x, global0.x), ~max(global0.x, global0.x), u_input.a & countOneBits(4294967295u), 0u) | select(u_input.c, _wgslsmith_mult_vec4_u32(u_input.c, ~vec4<u32>(0u, global0.x, u_input.c.x, u_input.a)), any(select(var_2, var_2, var_2))), u_input.c);
}

