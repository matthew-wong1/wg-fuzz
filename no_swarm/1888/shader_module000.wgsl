struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-965f, 579f), vec2<f32>(-338f, -883f), vec2<f32>(-752f, 1319f), vec2<f32>(587f, -320f), vec2<f32>(104f, 448f), vec2<f32>(-711f, 256f), vec2<f32>(-408f, -1285f), vec2<f32>(1081f, -1481f), vec2<f32>(1610f, -756f), vec2<f32>(612f, 1184f), vec2<f32>(697f, 521f));

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec4<i32> {
    return global1.b;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global2 = array<vec2<bool>, 6>();
    global0 = array<vec2<f32>, 11>();
    global2 = array<vec2<bool>, 6>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    let var_1 = 1i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2051f), _wgslsmith_f_op_f32(select(global1.a.x, 455f, all(!(!vec4<bool>(true, false, arg_0.a, false))))));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(any(vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(round(global1.a)), vec4<i32>(u_input.a, 2147483647i, 0i, global1.b.x) | vec4<i32>(u_input.a, global1.b.x, -2147483647i, -1i)))), global1.a.x));
    var var_1 = Struct_2(false, vec4<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), true)), true, true, !any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)))));
    var var_2 = -845f;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(func_3(Struct_2(var_1.a, var_1.b), Struct_1(global1.a, vec4<i32>(1i, u_input.a, global1.b.x, 40774i)))), -304f, _wgslsmith_f_op_f32(f32(-1f) * -1138f)), vec4<f32>(_wgslsmith_f_op_f32(1000f - -900f), _wgslsmith_f_op_f32(var_0.x + global1.a.x), global1.a.x, _wgslsmith_f_op_f32(1049f * global1.a.x)), !select(var_1.b, vec4<bool>(var_1.b.x, false, var_1.b.x, true), var_1.b)))), (vec4<i32>(global1.b.x, global1.b.x, u_input.a ^ u_input.a, global1.b.x) >> (~firstLeadingBit(vec4<u32>(arg_0, arg_0, arg_0, arg_0)) % vec4<u32>(32u))) | firstLeadingBit(global1.b));
    let var_4 = Struct_1(vec4<f32>(var_3.a.x, -1376f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1350f - 1286f) * 414f))), _wgslsmith_f_op_f32(1220f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.x, var_0.x, true))))), global1.b);
    return select(!(!var_1.b), vec4<bool>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-161f, global1.a.x)) > -787f, true || (true && var_1.a), true), select(!(!select(var_1.b, var_1.b, vec4<bool>(true, var_1.a, false, var_1.a))), vec4<bool>(arg_0 == 1u, var_1.b.x, any(vec3<bool>(var_1.a, true, var_1.a)), !any(var_1.b)), select(vec4<bool>(118856u <= arg_0, true, !var_1.b.x, true), select(!vec4<bool>(var_1.a, false, true, var_1.a), vec4<bool>(true, false, false, var_1.a), vec4<bool>(true, false, var_1.b.x, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -((vec4<i32>(1i, 1i, 25423i, _wgslsmith_sub_i32(global1.b.x, 0i)) & _wgslsmith_sub_vec4_i32(-vec4<i32>(2139i, global1.b.x, u_input.a, -1i), -vec4<i32>(27135i, u_input.a, global1.b.x, -53652i))) ^ firstTrailingBit(max(vec4<i32>(u_input.a, global1.b.x, 5073i, 29854i) << (vec4<u32>(4294967295u, 3285u, 0u, 1u) % vec4<u32>(32u)), vec4<i32>(0i, -55121i, -1i, -1070i) & vec4<i32>(u_input.a, -2147483647i, global1.b.x, u_input.a))));
    global0 = array<vec2<f32>, 11>();
    global2 = array<vec2<bool>, 6>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(floor(1689f)), func_1(Struct_2(all(vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, all(vec3<bool>(false, true, true)))), 621f));
    let var_2 = Struct_2(!any(vec3<bool>(true, true, all(vec4<bool>(true, true, true, true)))), select(!vec4<bool>(any(global2[_wgslsmith_index_u32(63470u, 6u)]), true, true, true), func_2(33248u), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), func_2(0u), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, false, true)), true, all(vec4<bool>(false, true, false, false))))));
    var_0 = select(global1.b, global1.b, all(select(select(vec3<bool>(true, var_2.b.x, false), var_2.b.yzy, !vec3<bool>(false, var_2.a, false)), !vec3<bool>(var_2.a, var_2.a, false), func_2(1u).zxx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 6393u, 1u, 1u), vec4<u32>(5352u, 0u, 42991u, 4294967295u), true) << (select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(false, var_2.a, false, var_2.a)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(24876u, 6732u, 29481u, 60040u), _wgslsmith_clamp_vec4_u32(vec4<u32>(11105u, 73175u, 2600u, 4294967295u), vec4<u32>(4294967295u, 0u, 39804u, 0u), vec4<u32>(36496u, 1u, 10160u, 4294967295u)), !var_2.b), vec4<u32>(0u, abs(21259u), ~1u, 1u), max(firstTrailingBit(vec4<u32>(1u, 46362u, 6144u, 13951u)), countOneBits(vec4<u32>(67244u, 28247u, 29812u, 25846u))))));
}

