struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(20909i, -46820i, 19802i), vec3<i32>(2147483647i, 15446i, -1i), vec3<i32>(19525i, 2147483647i, -1i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-1632i, i32(-2147483648), -39177i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-1i, 30543i, 1i), vec3<i32>(-2297i, 2147483647i, 2147483647i), vec3<i32>(1i, -13645i, 0i), vec3<i32>(33103i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 20341i, 0i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(-25605i, i32(-2147483648), 53760i), vec3<i32>(-29146i, i32(-2147483648), 1i), vec3<i32>(-8089i, 0i, -233i));

var<private> global2: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>) -> bool {
    global2 = true;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1i);
    global0 = array<Struct_1, 4>();
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(~u_input.b) << (_wgslsmith_mod_u32(1u, 19031u >> (u_input.b % 32u)) % 32u), 4u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_2.x), var_1.b);
    return select(false, !(_wgslsmith_div_f32(var_2.a, arg_2.x) < _wgslsmith_f_op_f32(f32(-1f) * -1808f)), _wgslsmith_f_op_f32(ceil(-140f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) * -184f)) != arg_1.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1400f * arg_1.a), arg_0.x);
    global0 = array<Struct_1, 4>();
    var var_1 = vec3<bool>(any(vec4<bool>(func_3(arg_1, vec2<bool>(false, true), vec2<f32>(751f, arg_1.a)) | false, _wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, true)) == _wgslsmith_f_op_f32(f32(-1f) * -1460f), true || all(vec3<bool>(true, true, true)), !any(vec4<bool>(false, false, true, false)))), false, !(u_input.b <= ~_wgslsmith_sub_u32(0u, u_input.b)));
    var var_2 = vec2<f32>(arg_1.a, -1961f);
    let var_3 = global0[_wgslsmith_index_u32(abs(u_input.b), 4u)];
    return var_1.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = all(vec4<bool>(true, !func_2(vec2<i32>(26484i, 2147483647i), arg_1), true, !all(vec2<bool>(true, false)))) && select(any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true)), all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), select(false, !(arg_0 != 4294967295u), true));
    var var_1 = var_0;
    global1 = array<vec3<i32>, 15>();
    var var_2 = func_3(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a))))), 0i), select(select(select(vec2<bool>(var_0, var_0), !vec2<bool>(true, var_0), all(vec4<bool>(var_0, false, false, var_0))), !(!vec2<bool>(var_0, var_0)), true), !select(vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0), any(vec2<bool>(var_0, var_0))), !(true && any(vec3<bool>(false, false, var_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1963f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(534f * arg_1.a)))));
    global1 = array<vec3<i32>, 15>();
    return vec3<bool>(true, func_2(-(-vec2<i32>(-80549i, arg_1.b) >> (vec2<u32>(61632u, 2676u) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 4u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-392f, _wgslsmith_f_op_f32(abs(-2045f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, all(!select(func_1(u_input.b, Struct_1(-1000f, u_input.c)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = max(vec2<u32>(u_input.b, u_input.b), max(vec2<u32>(23538u, 13956u), ~firstLeadingBit(reverseBits(vec2<u32>(u_input.b, u_input.b)))));
    var var_2 = var_0.x;
    let var_3 = vec3<f32>(392f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-613f, _wgslsmith_f_op_f32(f32(-1f) * -2053f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1538f - 1878f) + -411f))), -522f), _wgslsmith_f_op_f32(floor(1f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 1534f, 447f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, -1174f, -1299f, var_3.x), vec4<f32>(-1254f, -480f, -1397f, -1000f)))))));
    var var_5 = ~countOneBits(var_1.x);
    var var_6 = global0[_wgslsmith_index_u32(~(~7870u), 4u)];
    global1 = array<vec3<i32>, 15>();
    var var_7 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

