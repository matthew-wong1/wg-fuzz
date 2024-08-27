struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: array<u32, 27> = array<u32, 27>(85369u, 4294967295u, 64787u, 4294967295u, 4294967295u, 121627u, 4294967295u, 61521u, 1u, 4294967295u, 17637u, 1u, 77842u, 0u, 86347u, 31285u, 40255u, 26432u, 4183u, 27071u, 1u, 4294967295u, 29525u, 42125u, 4294967295u, 19650u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec3<f32> {
    var var_0 = vec2<u32>(global2[_wgslsmith_index_u32(7954u, 27u)], u_input.a);
    var_0 = global0[_wgslsmith_index_u32(0u, 4u)];
    var var_1 = -vec3<i32>(-18312i, firstLeadingBit(arg_1 | ~u_input.d), ~(~(arg_1 >> (global2[_wgslsmith_index_u32(u_input.a, 27u)] % 32u))));
    var var_2 = Struct_1(1u, ~(select(4294967295u, u_input.a, global1.x || global1.x) >> ((41698u ^ u_input.a) % 32u)), any(vec2<bool>(global1.x, false)), 1946f);
    var var_3 = all(!vec3<bool>(var_2.c, !all(vec3<bool>(false, true, var_2.c)), var_2.c));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-779f, var_2.d, _wgslsmith_f_op_f32(sign(1103f))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: i32) -> vec2<u32> {
    var var_0 = Struct_1(23821u, u_input.a, global1.x == (false & all(global1.zyy)), 204f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(abs(492f))) + _wgslsmith_f_op_f32(ceil(246f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(-arg_1, -arg_1.x))), vec3<f32>(var_0.d, var_0.d, -633f)));
    var var_3 = Struct_1(4294967295u, 71060u, false, 1996f);
    return global0[_wgslsmith_index_u32(~var_0.a, 4u)];
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = min(vec2<u32>(~u_input.c.x, ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), 27u)], 27u)])), ~func_2(57032u, ~vec3<i32>(2147483647i, -8178i, u_input.d), arg_0));
    global1 = !select(!(!select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x))), !(!(!vec4<bool>(global1.x, false, global1.x, global1.x))), !global1.x && global1.x);
    var_0 = vec2<u32>(~0u, firstTrailingBit(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(7415u, 5756u, var_0.x), u_input.c))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-891f, -237f, 619f, -606f) - vec4<f32>(-1126f, 387f, -564f, 238f))))) + vec4<f32>(-568f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(517f, -405f)) + 1f), _wgslsmith_f_op_f32(-490f - -1469f), 1f)));
    var_0 = firstLeadingBit(~(~firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 4u)] >> (global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 4u)] % vec2<u32>(32u)))));
    return Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~u_input.a)), 1u), 27u)], ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.c.x, 39510u, 0u), vec4<u32>(var_0.x, u_input.a, var_0.x, u_input.a)) ^ ~(~27018u)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_add_i32(40530i, ~(-17757i)));
    var var_1 = vec2<bool>(var_0.c, false);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -1804f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d))), -133f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(745f, var_0.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d))), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f) * -1420f)))));
    global2 = array<u32, 27>();
    let var_3 = u_input.d;
    let var_4 = Struct_1(~(~4294967295u), ~_wgslsmith_add_u32(~43813u, min(89668u, u_input.a) & 31841u), select(1i, min(-23799i, -35744i) & (1i ^ u_input.d), any(vec4<bool>(true, global1.x, var_1.x, global1.x)) || (false && var_0.c)) <= 8883i, 1f);
    var var_5 = func_1(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_div_u32(1u, 4294967295u), countOneBits(4294967295u), 1u) >> (vec3<u32>(func_1(_wgslsmith_clamp_i32(var_3, var_3, u_input.b.x)).b, _wgslsmith_clamp_u32(var_5.a, 0u | global2[_wgslsmith_index_u32(74502u, 27u)], func_1(var_3).b), ~(~1u)) % vec3<u32>(32u)), var_2.zwz, vec2<f32>(var_4.d, -1167f), ~vec2<i32>(0i, -(i32(-1i) * -1i)));
}

