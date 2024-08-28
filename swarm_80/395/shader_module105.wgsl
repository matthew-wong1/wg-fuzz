struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18>;

var<private> global1: array<Struct_3, 29>;

var<private> global2: Struct_3 = Struct_3(false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> u32 {
    global0 = array<vec4<u32>, 18>();
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, firstTrailingBit(~8643u)), ~max(min(4294967295u, 41331u), abs(17730u)), reverseBits(1u)) | vec3<u32>(4294967295u, 49589u, 10551u);
    global0 = array<vec4<u32>, 18>();
    global2 = global1[_wgslsmith_index_u32(var_0.x, 29u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.yzw, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * _wgslsmith_f_op_f32(565f + 584f)), arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, -165f, -1710f)))))))));
    return var_0.x;
}

fn func_2(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = vec2<u32>(~_wgslsmith_div_u32(func_3(vec4<f32>(-425f, 955f, -1642f, -123f), vec3<i32>(arg_0.x, arg_0.x, -65455i)), 70599u) | 0u, _wgslsmith_add_u32(~min(_wgslsmith_clamp_u32(62969u, 1u, 0u), abs(11163u)), select(1u, reverseBits(1u), false)));
    global2 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(var_0.x, var_0.x ^ 1u) ^ ~var_0.x), 29u)];
    return vec3<bool>(!any(select(vec4<bool>(false, false, global2.a, global2.a), vec4<bool>(true, global2.a, false, global2.a), vec4<bool>(global2.a, false, false, true))) | !any(select(vec3<bool>(global2.a, true, true), vec3<bool>(true, false, false), global2.a)), select(!all(vec2<bool>(true, global2.a)), false, global2.a), !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(299f + -900f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_2) -> vec2<bool> {
    global0 = array<vec4<u32>, 18>();
    let var_0 = 189f;
    var var_1 = arg_2.a;
    var var_2 = Struct_2(select(select(!(!arg_2.a), !(!vec3<bool>(true, arg_0.a, true)), arg_2.a), arg_2.a, !global2.a && !all(vec4<bool>(false, false, arg_2.a.x, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(223f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(-arg_2.b), func_2(vec2<i32>(u_input.a.x, 0i)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1117f, 1579f, -562f)))))));
    let var_3 = true;
    return !vec2<bool>(true, var_3);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(22777u, 261u, 70817u), firstLeadingBit(vec3<u32>(22135u, 71652u, 19307u)))), ~abs(1u)), vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 60785u)), ~vec2<u32>(1u, 1u)), _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(28981u, 1u)), 0u), 1u, ~1u), arg_2, global0[_wgslsmith_index_u32(46889u, 18u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2)), arg_2, _wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -938f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-689f, arg_2, -1000f, -1469f), vec4<f32>(arg_2, -1000f, arg_2, arg_2))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(Struct_3(global2.a), select(select(select(func_1(global1[_wgslsmith_index_u32(19400u, 29u)], u_input.a, Struct_2(vec3<bool>(true, true, false), vec3<f32>(508f, 132f, 1802f))), vec2<bool>(true, true), vec2<bool>(true, true)), select(func_1(Struct_3(global2.a), u_input.a, Struct_2(vec3<bool>(global2.a, global2.a, global2.a), vec3<f32>(-1506f, 542f, 791f))), vec2<bool>(false, true), !vec2<bool>(true, global2.a)), vec2<bool>(false || global2.a, true)), func_1(Struct_3(all(vec3<bool>(global2.a, global2.a, false))), ~vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(!vec3<bool>(global2.a, global2.a, global2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1052f, 880f, 513f) + vec3<f32>(268f, -1368f, 251f)))), !select(vec2<bool>(false, global2.a), vec2<bool>(false, true), !vec2<bool>(true, global2.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(904f - -886f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -329f), _wgslsmith_f_op_f32(f32(-1f) * -300f))), -128f)));
    let var_0 = -1531f;
    let var_1 = select(~(~(~vec3<u32>(970u, 0u, 38065u))), vec3<u32>(~countOneBits(28225u >> (1u % 32u)), 5831u, 1u), vec3<bool>(!all(vec3<bool>(global2.a, true, true)), global2.a, true));
    var var_2 = true;
    var var_3 = Struct_2(!vec3<bool>(!global2.a, !(!global2.a), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1933f, 1000f, var_0))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 108f, var_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-546f, 1177f, 457f) - vec3<f32>(-214f, var_0, 1800f)))))));
    global1 = array<Struct_3, 29>();
    let var_4 = Struct_2(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, any(vec4<bool>(true, var_3.a.x, true, true))), vec3<bool>(true, var_3.a.x || global2.a, var_1.x < 4294967295u)), select(!select(var_3.a, var_3.a, vec3<bool>(global2.a, global2.a, var_3.a.x)), vec3<bool>(!global2.a, var_3.a.x | var_3.a.x, var_3.a.x), select(select(vec3<bool>(var_3.a.x, true, global2.a), vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x), vec3<bool>(false, var_3.a.x, false)), var_3.a, var_3.a.x != true)), var_3.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, 627f, var_3.b.x)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_3.b)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_3.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1332f, var_0, -167f, var_0) + vec4<f32>(var_4.b.x, var_0, var_3.b.x, -1781f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, 1000f, var_4.b.x, 139f) + vec4<f32>(var_3.b.x, var_0, -1045f, 1577f))))), global0[_wgslsmith_index_u32(abs(var_1.x), 18u)] & countOneBits(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(1u, 18u)] >> (vec4<u32>(101662u, var_1.x, 60512u, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 26618u, var_1.x, 36435u), vec4<u32>(1u, var_1.x, var_1.x, var_1.x)))), _wgslsmith_sub_u32(reverseBits(~abs(var_1.x)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_1.x, 0u), var_1.x, firstLeadingBit(var_1.x) ^ 4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-821f, var_0))), -1028f, _wgslsmith_f_op_f32(abs(var_0)), var_0)), min(abs(max(min(vec4<i32>(u_input.a.x, -2387i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 7560i, -45266i, 2147483647i)), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -19400i)))), firstLeadingBit(~vec4<i32>(23706i, -2147483647i, 1i, -2147483647i)) | ~(~vec4<i32>(0i, 2147483647i, u_input.a.x, -2147483647i))));
}

