struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(37726u, 89648u, 4294967295u, 0u), false, 66029i, 1i), Struct_1(vec4<u32>(1u, 28158u, 0u, 4294967295u), false, i32(-2147483648), -4441i), Struct_1(vec4<u32>(1u, 0u, 25110u, 1773u), false, 2147483647i, -8557i), Struct_1(vec4<u32>(4294967295u, 29060u, 1u, 4294967295u), true, -8201i, 29024i), Struct_1(vec4<u32>(21962u, 1u, 4294967295u, 61095u), false, -1i, 24822i), Struct_1(vec4<u32>(62317u, 4294967295u, 4294967295u, 0u), false, 1i, i32(-2147483648)), Struct_1(vec4<u32>(31726u, 4294967295u, 5251u, 98794u), true, i32(-2147483648), 0i), Struct_1(vec4<u32>(35449u, 4294967295u, 4294967295u, 25884u), true, 54317i, -5098i), Struct_1(vec4<u32>(58810u, 36389u, 6742u, 13971u), true, -6127i, -70861i), Struct_1(vec4<u32>(0u, 1u, 24881u, 1u), true, 1i, 2147483647i), Struct_1(vec4<u32>(1u, 95864u, 67519u, 0u), true, 2147483647i, 0i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_1(~(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 9714u, arg_2.x), arg_0.a))), all(!(!(!vec2<bool>(false, arg_0.b)))), -69548i, u_input.a.x);
    var_0 = global0[_wgslsmith_index_u32(var_0.a.x, 11u)];
    return min(~var_0.a.x, _wgslsmith_add_u32(~max(~37973u, 10148u), _wgslsmith_mult_u32(firstLeadingBit(~44861u), arg_0.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    global0 = array<Struct_1, 11>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1845f));
    global0 = array<Struct_1, 11>();
    var var_1 = ~vec2<u32>(func_3(Struct_1(arg_1.a, true, 0i, _wgslsmith_mult_i32(19524i, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + var_0)), arg_0.a.zxx), arg_1.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 340f, 107f) - vec4<f32>(arg_2.x, 483f, 938f, -122f)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, _wgslsmith_f_op_f32(sign(1728f)), 1000f))) * vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(var_0 * var_0), -754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) - _wgslsmith_f_op_f32(397f - -1849f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, -1000f, 1000f, 231f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_2.x, arg_2.x, -1229f)), vec4<bool>(false, arg_1.b, true, arg_1.b))), vec4<f32>(-601f, 1069f, _wgslsmith_f_op_f32(arg_2.x + var_0), var_0), _wgslsmith_f_op_f32(f32(-1f) * -550f) != _wgslsmith_f_op_f32(trunc(-787f))))), select(!(!(!vec4<bool>(arg_1.b, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.b, true, true, all(vec2<bool>(false, arg_0.b))), !(!vec4<bool>(arg_0.b, arg_1.b, true, true))), vec4<bool>(!arg_0.b, var_0 >= arg_2.x, any(vec3<bool>(true, true, false)) && (arg_1.b && arg_0.b), !(!arg_1.b)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1954f, var_0, arg_1.b)));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 11>();
    var var_0 = countOneBits(28682i);
    global0 = array<Struct_1, 11>();
    var var_1 = 24627i;
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1178f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-490f, -614f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(1u, 0u, 1u, 37427u), false, 0i, 35491i), global0[_wgslsmith_index_u32(0u, 11u)], vec2<f32>(-1000f, 1592f))))) - _wgslsmith_f_op_f32(min(-1186f, _wgslsmith_f_op_f32(trunc(-145f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-526f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-843f, -306f) * 742f))));
    return 1112f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(max(484f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-324f + 438f), _wgslsmith_div_f32(-852f, -1262f))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 132f) * -645f), _wgslsmith_f_op_f32(select(-610f, -1999f, false))), _wgslsmith_f_op_f32(-688f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f)))));
    var var_1 = select(!select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(any(vec4<bool>(true, false, false, false)), true), u_input.a.x <= u_input.a.x), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), !vec2<bool>(false, true & any(vec3<bool>(true, false, false))));
    var var_2 = Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~0u, 1u, select(~50137u, firstTrailingBit(0u), all(vec4<bool>(false, var_1.x, false, var_1.x))), min(101319u, 0u))), all(select(!select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), select(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x)), select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x)), vec4<bool>(true, true, var_1.x, true)), var_1.x)), -35392i, u_input.a.x << (2723u % 32u));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~var_2.a.x, ~_wgslsmith_sub_u32(var_2.a.x, 0u)) << ((func_3(Struct_1(var_2.a, true, 24553i, 0i), _wgslsmith_f_op_f32(trunc(1653f)), vec3<u32>(var_2.a.x, 1u, var_2.a.x)) << (var_2.a.x % 32u)) % 32u), _wgslsmith_clamp_u32(min(var_2.a.x, abs(var_2.a.x & 1u)), 59182u, 1u), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1022f))))));
}

