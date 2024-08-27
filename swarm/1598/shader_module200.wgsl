struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(i32(-2147483648), -9606i, 12607i), vec3<i32>(-2379i, -191i, -28303i), vec3<i32>(0i, i32(-2147483648), 11296i), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(13518i, -6623i, -19473i), vec3<i32>(i32(-2147483648), 38619i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(86749i, 2147483647i, 2147483647i), vec3<i32>(0i, -35023i, i32(-2147483648)), vec3<i32>(-46425i, 32668i, 47924i), vec3<i32>(2147483647i, -2467i, -893i), vec3<i32>(1i, 1i, 23967i), vec3<i32>(-1010i, -13736i, -12664i), vec3<i32>(17858i, 2147483647i, 2147483647i), vec3<i32>(-58620i, -1i, -12114i), vec3<i32>(-1i, i32(-2147483648), 357i), vec3<i32>(2147483647i, -16764i, 16809i), vec3<i32>(57490i, -28490i, i32(-2147483648)), vec3<i32>(21083i, -1i, 2147483647i), vec3<i32>(-60133i, -1i, 2147483647i), vec3<i32>(-39017i, 2147483647i, -38817i));

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -364f))), _wgslsmith_div_f32(2252f, -647f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-526f, 1684f), vec2<f32>(500f, -729f), select(global1.a, vec2<bool>(global1.a.x, true), vec2<bool>(global1.a.x, global1.a.x)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1625f, -739f))))))));
    global0 = array<vec3<i32>, 21>();
    return !select(global1.a, !global1.a, !(!select(global1.a, global1.a, global1.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.a, vec2<u32>(48093u, 0u));
    var var_1 = global1.b.x;
    var_0 = Struct_1(func_3(), ~(vec2<u32>(_wgslsmith_add_u32(u_input.e, 4294967295u), 0u) ^ firstTrailingBit(~global2[_wgslsmith_index_u32(4294967295u, 25u)])));
    var var_2 = Struct_1(vec2<bool>(global1.a.x, var_0.a.x), select(abs(abs(global1.b)), reverseBits(select(vec2<u32>(global1.b.x, var_0.b.x) & vec2<u32>(var_0.b.x, 28442u), vec2<u32>(var_0.b.x, 1u), true)), false));
    let var_3 = Struct_1(vec2<bool>((13063u == _wgslsmith_add_u32(var_0.b.x, 4294967295u)) & select(any(vec4<bool>(var_0.a.x, var_2.a.x, var_0.a.x, var_2.a.x)), all(var_2.a), any(var_0.a)), true), vec2<u32>(~44111u, _wgslsmith_div_u32(2529u, u_input.c)));
    return var_3;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = !(!(!vec4<bool>(arg_0.a.x, true, arg_0.a.x, all(vec2<bool>(false, arg_1.x)))));
    var var_1 = Struct_1(vec2<bool>(arg_1.x, true), arg_0.b);
    let var_2 = ~reverseBits(u_input.b ^ 1i);
    var var_3 = countOneBits(vec4<u32>(var_1.b.x ^ 0u, global1.b.x | 0u, global1.b.x, 162u));
    var var_4 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(select(global1.a, vec2<bool>(true, global1.a.x), !global1.a), global1.b), select(global1.a, global1.a, true), global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-598f, -409f) * vec2<f32>(518f, -1165f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1048f, -1365f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-534f, -566f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2259f, -127f), vec2<f32>(-1047f, -1196f))))))));
    var_0 = func_1(Struct_1(var_0.a, ~(~min(vec2<u32>(81004u, global1.b.x), vec2<u32>(1u, global1.b.x)))), var_0.a, select(global1.a, vec2<bool>(select(global1.a.x, true, all(vec2<bool>(false, false))), var_0.a.x), false), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1825f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-188f))))));
    var var_1 = 6666u;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-403f, -172f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) - _wgslsmith_f_op_f32(-1000f + -1017f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1840f, -1000f)) * vec2<f32>(-2115f, -175f))))));
    let var_3 = func_1(Struct_1(select(var_0.a, vec2<bool>(true, true), var_0.a), func_1(Struct_1(vec2<bool>(false, true), vec2<u32>(var_0.b.x, var_0.b.x)), global1.a, select(vec2<bool>(false, true), vec2<bool>(var_0.a.x, true), vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, var_2.x))))).b), !(!global1.a), func_3(), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1630f, var_2.x))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_3, var_3.a, !vec2<bool>(var_3.a.x, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-253f, -406f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1365f, 2077f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-791f, -664f))))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-574f, _wgslsmith_f_op_f32(1000f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1167f), var_2.x)))), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-594f, var_2.x), var_2.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-817f * var_2.x), 1094f)), var_2.x))));
}

