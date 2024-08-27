struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(30581u, 0u, 23488u, 1u, 0u, 106119u, 0u, 1u, 4294967295u, 13880u, 7236u);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(0u, 1u, 0u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec3<u32>(1u, 0u, 0u)), Struct_1(vec3<u32>(76013u, 4294967295u, 92805u)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<u32>(24214u, 37052u, 11674u)), Struct_1(vec3<u32>(32369u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 0u, 41354u)), Struct_1(vec3<u32>(9321u, 103903u, 52462u)), Struct_1(vec3<u32>(1u, 0u, 51865u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec3<u32>(35358u, 4294967295u, 1u)), Struct_1(vec3<u32>(38699u, 32135u, 10654u)), Struct_1(vec3<u32>(23900u, 0u, 3971u)), Struct_1(vec3<u32>(4294967295u, 0u, 58406u)), Struct_1(vec3<u32>(0u, 1u, 1u)), Struct_1(vec3<u32>(1u, 4294967295u, 67898u)), Struct_1(vec3<u32>(4294967295u, 5129u, 0u)), Struct_1(vec3<u32>(1u, 27815u, 47845u)), Struct_1(vec3<u32>(0u, 1u, 35892u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1u, 112772u)), Struct_1(vec3<u32>(1502u, 75615u, 1u)), Struct_1(vec3<u32>(11555u, 4294967295u, 80477u)), Struct_1(vec3<u32>(66631u, 1u, 2982u)));

var<private> global2: bool;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = vec2<u32>(~global0[_wgslsmith_index_u32(max(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), 1u), 11u)], 34079u) & vec2<u32>(_wgslsmith_mod_u32(8024u, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67318u, 11u)], 11u)])), 12489u);
    let var_1 = Struct_1(abs(_wgslsmith_div_vec3_u32(~select(vec3<u32>(var_0.x, 3723u, var_0.x), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(20178u, 11u)], 35606u), vec3<bool>(false, false, false)), ~(vec3<u32>(global0[_wgslsmith_index_u32(24812u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 17616u) << (vec3<u32>(54104u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 11u)], 11u)], 11u)], var_0.x) % vec3<u32>(32u))))));
    global2 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(348f, 435f) - vec2<f32>(arg_0, 128f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))));
    let var_3 = u_input.a;
    return vec4<bool>(true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, any(vec4<bool>(false, false, false, false)), all(vec3<bool>(false, true, false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))), true);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = select(vec4<bool>(!(!all(vec4<bool>(true, false, false, true))), true & all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), true, true), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), func_3(arg_0.x))), !select(func_3(_wgslsmith_f_op_f32(646f + arg_0.x)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))));
    global2 = var_0.x;
    var var_1 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31779u, 11u)], 11u)], 28u)];
    let var_2 = ~reverseBits(~vec3<i32>(~u_input.a.x, 1i, ~2147483647i));
    global2 = global0[_wgslsmith_index_u32(1u, 11u)] >= 9823u;
    return var_1.a.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec3<u32>(min(max(0u, ~global0[_wgslsmith_index_u32(0u, 11u)] ^ arg_1.a.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.a.x, 11u)], 11u)], _wgslsmith_mult_u32(0u, 27418u), abs(13418u)), vec3<u32>(arg_1.a.x, arg_1.a.x << (arg_1.a.x % 32u), arg_1.a.x << (52729u % 32u))), 11u)]), global0[_wgslsmith_index_u32(~12964u, 11u)], 4294967295u & global0[_wgslsmith_index_u32(_wgslsmith_div_u32(8576u, 1u), 11u)]);
    var var_1 = 4017i;
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, max(1u, _wgslsmith_add_u32(~arg_1.a.x, reverseBits(arg_1.a.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 0u, 41173u), vec3<u32>(62369u, 27835u, 4294967295u)), arg_1.a)), min(~(vec3<u32>(4236u, 4294967295u, 1u) | arg_1.a), select(arg_1.a, ~arg_1.a, select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))) | vec3<u32>(26968u, func_2(vec4<f32>(1357f, arg_0.x, -362f, 1404f)), countOneBits(arg_1.a.x))));
    global0 = array<u32, 11>();
    let var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-1000f, -285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(120f)), 1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1380f, -1538f, -566f, 2192f) - vec4<f32>(-511f, -1000f, 1000f, 1049f)), global1[_wgslsmith_index_u32(1u, 28u)])) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1965f + 183f), _wgslsmith_f_op_f32(round(-1174f))))), -584f);
    let var_1 = vec3<bool>(true == any(vec4<bool>(true, true, true, true)), (global0[_wgslsmith_index_u32(6571u, 11u)] | global0[_wgslsmith_index_u32(54469u, 11u)]) != func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-396f, var_0.x, var_0.x, -1000f), vec4<f32>(var_0.x, 2193f, -1615f, -1481f)))), all(vec3<bool>(true, true, true)));
    let var_2 = 1214f;
    let var_3 = Struct_1(countOneBits(min(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39452u, 11u)], 11u)], 11u)], global0[_wgslsmith_index_u32(9911u, 11u)]), ~vec3<u32>(1u, 55530u, global0[_wgslsmith_index_u32(0u, 11u)]))) ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(48357u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 127306u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 11u)], 1u, 42291u)));
    let var_4 = !var_1.zx;
    global1 = array<Struct_1, 28>();
    var var_5 = var_1.x;
    var var_6 = var_3;
    var var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(~1i), firstLeadingBit(-1i), u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1343f, 187f, var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, var_2)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -552f, 2306f, var_0.x)))))));
}

