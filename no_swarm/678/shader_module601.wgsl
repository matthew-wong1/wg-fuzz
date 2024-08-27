struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(174f, vec2<bool>(false, false), true), Struct_1(-148f, vec2<bool>(true, false), false), Struct_1(455f, vec2<bool>(false, false), true), Struct_1(737f, vec2<bool>(true, true), false), Struct_1(1037f, vec2<bool>(false, true), false), Struct_1(173f, vec2<bool>(true, false), false), Struct_1(1443f, vec2<bool>(true, false), true), Struct_1(1000f, vec2<bool>(true, false), false), Struct_1(481f, vec2<bool>(true, true), false), Struct_1(981f, vec2<bool>(true, false), true), Struct_1(1032f, vec2<bool>(false, true), false), Struct_1(-1018f, vec2<bool>(false, true), true), Struct_1(1565f, vec2<bool>(true, true), false), Struct_1(-464f, vec2<bool>(false, false), false), Struct_1(712f, vec2<bool>(true, true), true), Struct_1(553f, vec2<bool>(false, false), false), Struct_1(2147f, vec2<bool>(true, true), true), Struct_1(343f, vec2<bool>(false, true), true), Struct_1(-165f, vec2<bool>(false, true), false), Struct_1(-1107f, vec2<bool>(true, true), true), Struct_1(-800f, vec2<bool>(false, false), false), Struct_1(-1584f, vec2<bool>(false, false), true), Struct_1(1805f, vec2<bool>(false, false), true), Struct_1(501f, vec2<bool>(false, true), false), Struct_1(-601f, vec2<bool>(false, true), true));

var<private> global2: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = true;
    let var_1 = select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~1u), vec2<u32>(abs(abs(4294967295u)), ~1u)), 1u, all(select(!(!arg_0), !arg_0, false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(943f, -605f, 868f, -257f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(286f, 164f, 1676f, -1000f) + vec4<f32>(172f, -1675f, -1051f, -654f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(824f + 927f)), -509f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(829f))), -141f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(532f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_2.x, -129f)))) + -1190f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(1u, 25u)]);
    var var_1 = var_0;
    let var_2 = var_0;
    global2 = false;
    global2 = false;
    return ~abs(arg_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    global1 = array<Struct_1, 25>();
    global2 = (func_3(min(~vec4<u32>(4294967295u, 1u, 0u, 4294967295u), ~vec4<u32>(0u, 28026u, 4294967295u, 4043u)), global1[_wgslsmith_index_u32(11145u, 25u)]) & firstLeadingBit(1u)) != 4294967295u;
    var var_0 = arg_0.a;
    var var_1 = -674f;
    var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), arg_0.b, global0[_wgslsmith_index_u32(~1u, 14u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 8421u), vec2<u32>(1135u, 17713u)), abs(~25842u)), 33167u));
    global0 = array<bool, 14>();
    var var_1 = func_2(global1[_wgslsmith_index_u32(var_0, 25u)], ~countOneBits(_wgslsmith_div_i32(max(17254i, 1i), _wgslsmith_add_i32(21077i, 1i))), vec2<f32>(_wgslsmith_f_op_f32(398f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-875f, 286f)))), _wgslsmith_f_op_f32(func_1(select(!vec4<bool>(global0[_wgslsmith_index_u32(var_0, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], true, false), select(vec4<bool>(global0[_wgslsmith_index_u32(4771u, 14u)], global0[_wgslsmith_index_u32(var_0, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 14u)], true), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(var_0, 14u)])), select(true, global0[_wgslsmith_index_u32(var_0, 14u)], true))))));
    global0 = array<bool, 14>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.a.a), !var_1.a.b, !all(vec4<bool>(var_1.a.b.x, false, false, var_1.a.b.x)) & all(func_2(Struct_1(-160f, vec2<bool>(var_1.a.b.x, global0[_wgslsmith_index_u32(var_0, 14u)]), false), -9836i, vec2<f32>(var_1.a.a, -314f)).a.b)));
    global1 = array<Struct_1, 25>();
    var var_3 = vec2<bool>(false, !global0[_wgslsmith_index_u32(var_0, 14u)] && var_1.a.c);
    var var_4 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~76391u | var_0, _wgslsmith_add_u32(var_0, ~(~_wgslsmith_clamp_u32(18556u, 4294967295u, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.a, var_1.a.a, 1630f, -573f), vec4<f32>(-304f, -236f, var_1.a.a, 1000f), true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-139f, 1012f) - _wgslsmith_div_vec2_f32(vec2<f32>(288f, var_1.a.a), vec2<f32>(1000f, var_1.a.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1573f, -1000f) * vec2<f32>(116f, -941f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a.a, 2301f)))))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-466f, -852f, global0[_wgslsmith_index_u32(25430u, 14u)])), _wgslsmith_f_op_f32(round(var_2.a.a))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-638f, 458f), vec2<f32>(var_1.a.a, var_2.a.a)))))));
}

