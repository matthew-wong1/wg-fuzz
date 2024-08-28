struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
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

var<private> global0: array<Struct_3, 26>;

var<private> global1: bool = true;

var<private> global2: array<u32, 5> = array<u32, 5>(44164u, 1084u, 0u, 16059u, 4294967295u);

var<private> global3: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(1i, 58994i), vec2<i32>(i32(-2147483648), -5859i), vec2<i32>(7810i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 15618i), vec2<i32>(-1i, -1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec3<f32> {
    global1 = all(select(vec4<bool>(true, true, any(vec2<bool>(false, false)) || true, true), vec4<bool>(true, true, false, true), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))));
    let var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245f - -1407f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-825f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1023f, 520f), 1000f, all(vec4<bool>(true, true, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - -2045f)))), _wgslsmith_f_op_f32(f32(-1f) * -1921f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1167f + 634f)) + -817f), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(1569f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(440f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(591f)))), -1700f, _wgslsmith_div_f32(-1124f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1961f - 775f), _wgslsmith_f_op_f32(ceil(-108f)), arg_0 == arg_0)))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-509f, -1066f, -1790f)))), vec3<f32>(-376f, _wgslsmith_f_op_f32(f32(-1f) * -855f), -973f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1027f - -1060f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global3 = array<vec2<i32>, 6>();
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1620f, var_0.c.b, 1273f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, 2164f, var_0.a.a.x)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(var_0.d.a)))))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global2 = array<u32, 5>();
    let var_0 = Struct_3(abs(u_input.a));
    let var_1 = Struct_3(u_input.a);
    global2 = array<u32, 5>();
    let var_2 = vec2<bool>(abs(19316u ^ _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u, 5u)], 4294967295u)) >= u_input.b.x, arg_0);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(393f)))), _wgslsmith_f_op_f32(f32(-1f) * -436f)), -836f, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-346f, 322f, -1077f), vec3<f32>(-768f, 1360f, 151f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-3598f, -1549f, -796f))) * _wgslsmith_f_op_vec3_f32(func_3(-15198i))), 249f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-272f)), -1882f)), -347f, !arg_0 || any(vec3<bool>(false, true, true))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-481f, -853f, -349f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 905f, -2110f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(376f, 279f, -316f))))), _wgslsmith_f_op_f32(ceil(-729f)), 862f));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<f32>) -> bool {
    let var_0 = func_2(any(vec3<bool>(abs(18193u) <= _wgslsmith_mult_u32(1u, u_input.b.x), false, true)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2439f, -164f))));
    global3 = array<vec2<i32>, 6>();
    global3 = array<vec2<i32>, 6>();
    return !any(vec3<bool>(false, false, false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 26>();
    global1 = any(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, all(vec3<bool>(false, false, false)), true), !vec4<bool>(true, true, func_1(Struct_1(vec3<f32>(1039f, -2031f, 1000f), 506f, 832f), 10915u, vec4<u32>(68104u, u_input.b.x, 16269u, global2[_wgslsmith_index_u32(0u, 5u)]), vec3<f32>(-566f, 320f, 1217f)), true), all(vec3<bool>(false, any(vec4<bool>(true, false, false, true)), false))));
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-307f, 886f, -574f, 1276f))))))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec3_f32(func_3(u_input.a.x)).x);
    var_1 = var_0.x;
    let var_2 = Struct_1(var_0.yzx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(728f - 143f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), 686f)));
    var var_3 = !select(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(true, false, true, true)), any(vec3<bool>(true, false, true)), any(vec4<bool>(true, false, true, true)), 1315f == var_0.x), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 5u)] <= global2[_wgslsmith_index_u32(61009u, 5u)], true, true)), vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-340f, var_2.a.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_2.b))) - vec3<f32>(var_2.b, 927f, -277f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, -453f, -384f) - _wgslsmith_f_op_vec3_f32(-var_2.a))), var_2.a, false)));
}

