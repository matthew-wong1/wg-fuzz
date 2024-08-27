struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<vec3<i32>, 30>;

var<private> global2: array<vec2<i32>, 13>;

var<private> global3: array<vec3<i32>, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    var var_0 = u_input.b.x;
    var var_1 = Struct_1(arg_0.x);
    var var_2 = arg_1.zy;
    var var_3 = Struct_3(Struct_2(firstLeadingBit(vec3<u32>(1u, u_input.b.x, 11656u) ^ select(u_input.b, u_input.b, false)), Struct_1(-16516i), Struct_1(arg_0.x), 105f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(116f, -772f, 506f, -633f)))))), true);
    var var_4 = Struct_3(Struct_2(~(~(~u_input.b)), var_3.a.b, var_3.a.b, _wgslsmith_f_op_f32(var_3.a.d - _wgslsmith_f_op_f32(sign(2348f))), _wgslsmith_f_op_vec4_f32(-var_3.a.e)), arg_1.x);
    return -24358i;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(36766u, 26u)], abs(-firstLeadingBit(func_3(vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 0i, 10851i), vec3<bool>(true, false, false), true))));
    let var_1 = vec2<bool>(any(select(vec2<bool>(false, any(vec4<bool>(true, true, true, true))), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), false);
    let var_2 = countOneBits(vec4<i32>(~global0[_wgslsmith_index_u32(select(min(45703u, 0u), ~22845u, false), 26u)], 49821i, -1i, 38455i));
    global2 = array<vec2<i32>, 13>();
    let var_3 = Struct_3(Struct_2((~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) | u_input.b) ^ vec3<u32>(0u ^ u_input.b.x, firstTrailingBit(30087u), 1u & u_input.b.x), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 26u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), 1000f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1156f)) + _wgslsmith_f_op_f32(-1120f + 1413f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(240f * 1000f)), -1441f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(826f)), _wgslsmith_div_f32(146f, -110f)))), true);
    return Struct_2(max(vec3<u32>(u_input.b.x, ~var_3.a.a.x, reverseBits(_wgslsmith_add_u32(u_input.b.x, var_3.a.a.x))), _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(u_input.b.x, 53276u, 0u), vec3<u32>(15251u, var_3.a.a.x, u_input.b.x), var_3.b), vec3<u32>(_wgslsmith_sub_u32(38585u, 11021u), ~0u, 1u), ~select(vec3<u32>(4294967295u, 56901u, 1u), var_3.a.a, vec3<bool>(var_1.x, false, var_3.b)))), var_3.a.b, Struct_1(_wgslsmith_clamp_i32(~(-u_input.d.x), u_input.a, -u_input.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1354f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_3.a.e.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.e.x - var_3.a.e.x) * _wgslsmith_f_op_f32(-var_3.a.d))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_3.a.d, 989f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.d - var_3.a.d))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_3.a.e), vec4<f32>(-771f, 289f, var_3.a.d, 2557f)))))));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global3 = array<vec3<i32>, 30>();
    var var_0 = ~1135u;
    var var_1 = 50139u;
    global3 = array<vec3<i32>, 30>();
    let var_2 = false;
    return func_2();
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_1.a.x, 13u)];
    var var_1 = global1[_wgslsmith_index_u32(arg_0, 30u)];
    var var_2 = u_input.d.x;
    var_1 = global1[_wgslsmith_index_u32(func_1(Struct_3(arg_1, arg_1.b.a != (33673i << ((arg_0 ^ 13620u) % 32u)))).a.x, 30u)];
    var var_3 = u_input.d.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.e.x), -599f)))));
}

fn func_5(arg_0: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0))));
    var var_1 = func_1(Struct_3(func_1(Struct_3(func_2(), all(vec3<bool>(false, false, true)))), true)).b;
    var var_2 = func_2();
    var var_3 = Struct_1(global0[_wgslsmith_index_u32(34381u, 26u)]);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(countOneBits(1u), func_2(), Struct_2(u_input.b, var_2.b, Struct_1(var_3.a), -1741f, vec4<f32>(1181f, arg_0, var_0, var_2.e.x)))) * _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -442f), 779f, -410f);
    return StorageBuffer(_wgslsmith_clamp_vec2_i32(-u_input.d, -vec2<i32>(_wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], vec3<i32>(var_3.a, var_2.b.a, var_3.a)), _wgslsmith_div_i32(1i, 11911i)), ~u_input.d), ~var_2.a.x, abs(vec2<u32>(var_2.a.x ^ u_input.b.x, ~u_input.b.x)) << (~abs(~var_2.a.yx) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-arg_0))))) - 284f), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(func_4(u_input.b.x, func_1(Struct_3(Struct_2(u_input.b, Struct_1(-2147483647i), Struct_1(0i), 354f, vec4<f32>(-1243f, 1273f, 1000f, -1000f)), true)), func_2())));
}

