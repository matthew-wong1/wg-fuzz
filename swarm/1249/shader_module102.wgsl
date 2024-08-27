struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> vec3<u32> {
    let var_0 = Struct_2(~_wgslsmith_sub_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.a, 65448u, 34287u), vec4<u32>(0u, u_input.a, 4294967295u, u_input.b)), vec4<u32>(u_input.c, u_input.b, u_input.a, 1u), true), vec4<u32>(47200u, ~u_input.a, 57327u, u_input.c)));
    let var_1 = vec3<bool>(((_wgslsmith_clamp_u32(84025u, u_input.a, var_0.a.x) < reverseBits(u_input.c)) && (_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 6u)] + 2586f) >= global0[_wgslsmith_index_u32(~41780u, 6u)])) & (~_wgslsmith_mult_u32(1u, u_input.a) > select(_wgslsmith_sub_u32(45780u, 0u), var_0.a.x, true)), true, -521f <= global0[_wgslsmith_index_u32(~u_input.b ^ 0u, 6u)]);
    global0 = array<f32, 6>();
    let var_2 = Struct_1(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.b, 6u)], arg_1.x), u_input.b);
    var var_3 = Struct_2(~(~abs(max(vec4<u32>(u_input.b, 0u, var_2.b, u_input.c), var_0.a))));
    return vec3<u32>(~(~_wgslsmith_mod_u32(0u, var_3.a.x) & u_input.c), 16470u, 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_0.x, 6u)] - global0[_wgslsmith_index_u32(arg_0.x, 6u)]));
    var var_1 = Struct_2(select(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_0.x, 4294967295u, u_input.b), vec4<u32>(arg_0.x, u_input.c, arg_0.x, 44725u), vec4<u32>(0u, 21469u, 0u, arg_0.x)), countOneBits(vec4<u32>(0u, u_input.c, u_input.a, 0u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(76448u, arg_0.x, 0u, arg_0.x), vec4<u32>(arg_0.x, 4294967295u, u_input.c, 19931u))), ~(~vec4<u32>(86259u, arg_0.x, arg_0.x, u_input.b)), global0[_wgslsmith_index_u32(~arg_0.x, 6u)] >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(163f + 735f), -502f))));
    let var_2 = _wgslsmith_clamp_u32(countOneBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 0u, 0u)), vec3<u32>(0u, 31736u, 0u)) & _wgslsmith_mult_u32(1u, u_input.c)), arg_0.x, ~_wgslsmith_mod_u32(reverseBits(~u_input.b), var_1.a.x));
    let var_3 = arg_1;
    var var_4 = Struct_2(var_1.a ^ _wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, var_1.a.x, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 705u, u_input.b), true), ~(var_1.a >> (vec4<u32>(arg_0.x, var_2, 4294967295u, 12758u) % vec4<u32>(32u)))));
    return Struct_2(var_1.a);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<f32> {
    let var_0 = func_3(max(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(arg_0, arg_1, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 13426u, arg_0), vec3<u32>(48740u, 74482u, arg_1))) << (vec3<u32>(abs(arg_0), _wgslsmith_mod_u32(1u, u_input.a), 46469u) % vec3<u32>(32u)), ~reverseBits(func_2(arg_3, vec3<f32>(global0[_wgslsmith_index_u32(arg_2.b, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], arg_2.a)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(~36566u)), 6u)]), vec4<i32>(-31751i, ~(-1i), 1i, -86944i));
    let var_1 = arg_2;
    let var_2 = 1u;
    let var_3 = arg_3;
    var var_4 = var_0;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a, -535f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1597f), _wgslsmith_f_op_f32(select(arg_2.a, _wgslsmith_f_op_f32(floor(arg_2.a)), true))), vec2<bool>(false, any(vec3<bool>(true, true, true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-283f, 260f)))) * vec2<f32>(_wgslsmith_f_op_f32(select(arg_2.a, -512f, true)), 218f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1717f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(~min(u_input.a, u_input.c), 27335u, Struct_1(854f, 1u), -vec4<i32>(-70195i, u_input.d.x, u_input.d.x, -2147483647i))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 6u)] + -1581f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-806f, 215f), 355f))))));
    let var_1 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(max(73698u, 72344u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 105597u, u_input.b, u_input.a), abs(vec4<u32>(83683u, 55612u, 46776u, 49149u))), u_input.c, _wgslsmith_sub_u32(42948u, 1u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.c, 19668u, 802u), _wgslsmith_clamp_vec4_u32(vec4<u32>(33531u, 27385u, 14149u, u_input.c), vec4<u32>(u_input.c, 0u, 1834u, u_input.b), vec4<u32>(41120u, 4294967295u, u_input.c, u_input.c))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 76562u, u_input.c), min(vec4<u32>(7739u, 0u, u_input.b, 1u), vec4<u32>(1287u, u_input.b, 1u, 6537u)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -427f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_1.a.x, 6u)], -1000f) + vec2<f32>(global0[_wgslsmith_index_u32(29142u, 6u)], 1261f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(589f, var_0.x)) - vec2<f32>(-1000f, 227f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 6u)], -565f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(610f, -472f))))))));
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(u_input.a, countOneBits(~u_input.b))), 6u)];
    global0 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1621f * 748f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -705f), 1895f)), -400f, var_0.x), 129f, vec4<f32>(_wgslsmith_f_op_f32(max(-114f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 6u)] * var_0.x) + global0[_wgslsmith_index_u32(u_input.a, 6u)]))), -1636f, -1000f, _wgslsmith_f_op_f32(select(-1600f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1314f) - var_0.x), true))), _wgslsmith_f_op_f32(-var_0.x));
}

