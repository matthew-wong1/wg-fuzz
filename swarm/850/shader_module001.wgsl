struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.a, _wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 3689u, u_input.a), vec3<u32>(1u, 1u, arg_3)), vec3<u32>(4294967295u, 0u, arg_3) >> (vec3<u32>(38967u, arg_3, 21658u) % vec3<u32>(32u)), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, false, true), vec3<bool>(true, false, arg_0.x))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_1.a, arg_1.a), vec3<u32>(u_input.a, u_input.a, arg_3)))), _wgslsmith_div_vec3_u32(vec3<u32>(52711u ^ u_input.a, firstTrailingBit(abs(48672u)), arg_3), vec3<u32>(u_input.a, 19754u, 1u)));
    let var_1 = vec2<bool>(false, false);
    let var_2 = 5839u;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(875f, -1112f, -147f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(960f, -114f, -1445f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-245f, 1000f, 1074f) + vec3<f32>(1541f, 1686f, -118f))))), vec3<f32>(_wgslsmith_f_op_f32(select(265f, _wgslsmith_div_f32(426f, -134f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1028f + -1523f) * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1107f)), select(!(!vec3<bool>(true, var_1.x, var_1.x)), vec3<bool>(true, true, true), any(!vec3<bool>(arg_0.x, var_1.x, true))))));
    let var_4 = -418f;
    return abs(vec3<i32>(arg_2.x, arg_2.x, 1i));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> i32 {
    var var_0 = Struct_1(1u);
    let var_1 = func_3(vec2<bool>(true, true), Struct_1(arg_1.x), firstTrailingBit(-(~vec4<i32>(-2768i, 1i, 2147483647i, 28823i))), _wgslsmith_sub_u32(u_input.a, 132194u));
    var_0 = Struct_1(4294967295u);
    var var_2 = Struct_1(~u_input.a);
    var var_3 = _wgslsmith_add_vec3_i32(-var_1, ~(~vec3<i32>(62866i, var_1.x, var_1.x)) << (select(select(arg_1, ~vec3<u32>(28715u, 1u, arg_1.x), vec3<bool>(false, true, true)), ~arg_1, vec3<bool>(arg_0 != 814f, any(vec4<bool>(false, false, false, false)), any(vec3<bool>(true, false, true)))) % vec3<u32>(32u)));
    return var_3.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1631f - _wgslsmith_f_op_f32(abs(1674f)))), min(~_wgslsmith_div_vec3_u32(vec3<u32>(51976u, 25780u, 55722u), vec3<u32>(1u, arg_0.a, u_input.a)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(30583u, u_input.a, 4924u), vec3<u32>(4294967295u, arg_0.a, u_input.a)), ~vec3<u32>(arg_0.a, u_input.a, 0u)))) << (arg_0.a % 32u);
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, max(select(69987i, ~2147483647i, true), 2147483647i), ~_wgslsmith_clamp_i32(0i << (arg_0.a % 32u), func_2(-923f, vec3<u32>(u_input.a, u_input.a, 4294967295u)), func_2(1448f, vec3<u32>(u_input.a, arg_0.a, arg_0.a)))), (vec3<i32>(-1i) * -vec3<i32>(1i, -1i, -52970i)) >> (firstLeadingBit(~vec3<u32>(u_input.a, 5108u, 42681u) >> (countOneBits(vec3<u32>(4294967295u, arg_0.a, 28256u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2053f)), -1775f), -2105f, 289f, -1015f))));
    return Struct_1(countOneBits(~69637u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~arg_2.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(-1556f * -756f)), -1000f))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 225f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(566f)) + _wgslsmith_f_op_f32(-1188f + -1224f)))));
    let var_2 = Struct_1(abs(max(~29808u, 1u)) | (select(_wgslsmith_sub_u32(arg_1.a, 16419u), arg_1.a, true) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, arg_0.a, 4294967295u, 11147u), vec4<u32>(1u, 0u, 1u, var_0) & vec4<u32>(4294967295u, 45201u, 7286u, 30496u)) % 32u)));
    let var_3 = 1i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_1(_wgslsmith_clamp_u32(26829u, firstLeadingBit(31841u), 51184u))), Struct_1(4294967295u), Struct_1(~(~u_input.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1343f, 861f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-790f)))), _wgslsmith_f_op_f32(ceil(1f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(842f))), _wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-462f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1168f, 626f, 212f) * vec3<f32>(1319f, -523f, 768f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -850f, 478f)))) * vec3<f32>(-1648f, -824f, _wgslsmith_f_op_f32(830f - 698f)))));
    var var_2 = !all(vec3<bool>(true, true, true));
    var var_3 = false;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-933f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-186f, var_1.x) - _wgslsmith_f_op_f32(var_1.x - -1208f)))), _wgslsmith_f_op_f32(abs(var_1.x)), -745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var_2 = any(select(select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), vec4<bool>(true, select(true, true, false), any(vec3<bool>(true, true, true)), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), min(var_0.a, 7503u) != u_input.a), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_5 = select(any(!vec4<bool>(all(vec2<bool>(true, false)), true, false, true)), !any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), var_0.a < 36046u);
    var_5 = !(!(!all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(-510f, _wgslsmith_f_op_vec3_f32(exp2(var_4.wwy)));
}

