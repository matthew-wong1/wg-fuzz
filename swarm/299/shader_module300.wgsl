struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    let var_0 = u_input.a;
    return _wgslsmith_f_op_f32(abs(arg_2.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = !(!(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, -1136f) * -1000f) >= arg_2));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1094f, arg_1.b) * _wgslsmith_f_op_f32(f32(-1f) * -803f)));
}

fn func_2() -> vec2<f32> {
    var var_0 = vec3<bool>(~u_input.a < 15372u, true | (_wgslsmith_f_op_f32(-658f * 498f) >= _wgslsmith_f_op_f32(func_4(Struct_1(-1325f, 1019f), Struct_1(-147f, 833f), _wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(false, false, false, true), Struct_1(-806f, -524f)), Struct_1(384f, 1647f), Struct_1(860f, 1057f), vec2<f32>(-258f, 699f)))))), true & !(countOneBits(u_input.a) >= select(0u, u_input.a, true)));
    var var_1 = false & !any(!(!vec4<bool>(var_0.x, var_0.x, true, true)));
    let var_2 = Struct_2(vec4<bool>(!var_0.x, var_0.x, !var_0.x, all(select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), false), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x)))), Struct_1(-1026f, 1515f));
    let var_3 = var_2;
    var_1 = true;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(510f, var_2.b.b));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = Struct_2(select(!vec4<bool>(true, 1927u != u_input.a, false, false), select(!arg_2.a, vec4<bool>(true, arg_2.a.x && arg_2.a.x, true, all(vec3<bool>(false, arg_2.a.x, true))), !vec4<bool>(arg_3, false, false, arg_3)), true), arg_2.b);
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(~u_input.b.x), select(-u_input.c.x, _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, u_input.d.x), var_0.a.x), 2147483647i), max(vec3<i32>(_wgslsmith_clamp_i32(0i, 0i, 17068i), -48538i, u_input.b.x), ~vec3<i32>(-30772i, 8352i, u_input.d.x))));
    var var_2 = -339f;
    let var_3 = ~vec3<u32>(_wgslsmith_clamp_u32(abs(~u_input.a), u_input.a, firstLeadingBit(14538u)), 86430u, u_input.a);
    var_2 = arg_0.x;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(ceil(-403f))))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 138f, 885f) + vec3<f32>(285f, -643f, -159f)), Struct_2(vec4<bool>(true, true, false, true), Struct_1(228f, 2876f)), any(vec2<bool>(false, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(617f, 1468f), Struct_1(-134f, -419f), 750f)) - _wgslsmith_f_op_f32(472f + -128f)))), 1270f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1022f), _wgslsmith_f_op_f32(var_0.x * var_0.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(889f, -1266f) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
    return Struct_1(439f, _wgslsmith_f_op_f32(f32(-1f) * -295f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(func_1().b, _wgslsmith_f_op_f32(f32(-1f) * -1314f), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f + var_0.b) + _wgslsmith_f_op_f32(select(var_0.b, var_0.b, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1183f, var_0.b, -2345f, var_0.a))) - vec4<f32>(-151f, -1162f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b)))));
    var var_2 = vec4<u32>(u_input.a, ~0u, ~_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 23280u))), ~(vec2<u32>(1u, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), 9490u);
    let var_3 = var_0.a;
    let var_4 = _wgslsmith_f_op_f32(-var_3);
    var var_5 = u_input.c.x;
    var_2 = ~(~vec4<u32>(~(~28941u), var_2.x, 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(36267u, 1u, var_2.x, 4294967295u), countOneBits(vec4<u32>(4294967295u, 0u, 0u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1994f, -2596f, var_4))))));
}

