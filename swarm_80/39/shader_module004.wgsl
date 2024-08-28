struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

var<private> global1: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(vec3<bool>(true, true, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, true, false)));

var<private> global2: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(629f, -1000f)) + 1096f))));
    var var_1 = Struct_5(vec4<i32>(u_input.a.x, ~u_input.a.x, -9905i, _wgslsmith_div_i32(-1i, -(u_input.a.x << (1u % 32u)))), global1[_wgslsmith_index_u32(37089u, 31u)], arg_0, vec4<bool>(false, !any(vec2<bool>(true, true)), false, true));
    let var_2 = _wgslsmith_div_f32(-494f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1480f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), 1873f)));
    let var_3 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(11101u, var_1.c, 4294967295u), vec3<u32>(20134u, arg_0, arg_0))), countOneBits(firstLeadingBit(reverseBits(vec3<u32>(4294967295u, var_1.c, 0u)))), vec3<u32>(4294967295u, ~4294967295u, arg_0)));
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, var_2, -1000f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-294f, var_0, var_0), vec3<f32>(1000f, -578f, var_0)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-788f * var_2), 319f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(641f, 249f, -945f), vec3<f32>(-1780f, var_2, -1111f), vec3<bool>(var_1.d.x, true, true))))), select(!select(vec3<bool>(false, true, false), vec3<bool>(var_1.b.a.x, var_1.d.x, var_1.b.a.x), false), !vec3<bool>(true, false, var_1.b.a.x), var_1.b.a)))));
    return all(var_1.b.a.yx);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, _wgslsmith_f_op_f32(-377f * _wgslsmith_f_op_f32(f32(-1f) * -1052f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(428f, 690f)))))));
    let var_1 = func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 3863u, 0u, 4294967295u), vec4<u32>(0u, 0u, 1u, 43485u)), 107872u), vec3<u32>(1u, 1u, 1u)));
    let var_2 = Struct_3(firstTrailingBit(vec2<i32>(8970i ^ u_input.a.x, -43067i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    let var_3 = vec2<i32>(i32(-1i) * -2147483647i, countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(~0i, u_input.a.x ^ -4280i), -u_input.b)));
    global2 = all(select(select(select(select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(false, var_1, true, var_1), var_1), select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(true, true, false, var_1)), true), select(!vec4<bool>(var_1, var_1, true, false), select(vec4<bool>(var_1, true, var_1, true), vec4<bool>(false, var_1, false, true), var_1), !vec4<bool>(var_1, true, var_1, var_1)), vec4<bool>(var_1, true | var_1, !var_1, any(vec4<bool>(var_1, var_1, var_1, false)))), select(!select(vec4<bool>(false, true, false, var_1), vec4<bool>(true, true, var_1, var_1), vec4<bool>(var_1, var_1, true, var_1)), !vec4<bool>(false, var_1, true, false), vec4<bool>(all(vec2<bool>(var_1, true)), false, var_1, var_1)), select(select(select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(false, true, var_1, var_1), var_1), select(vec4<bool>(var_1, false, true, false), vec4<bool>(true, false, var_1, var_1), vec4<bool>(var_1, var_1, false, var_1)), select(vec4<bool>(false, true, false, var_1), vec4<bool>(false, false, false, var_1), true)), !select(vec4<bool>(var_1, var_1, true, false), vec4<bool>(var_1, false, var_1, var_1), false), select(vec4<bool>(var_1, var_1, var_1, var_1), !vec4<bool>(var_1, true, var_1, false), true))));
    return var_1;
}

fn func_1() -> u32 {
    global2 = all(vec3<bool>(true, !any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))), false));
    let var_0 = 632f;
    var var_1 = true || any(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)));
    var_1 = func_2();
    var var_2 = !(!(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true))));
    return countOneBits(9796u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = max(~2147483647i << ((func_1() ^ 1u) % 32u), 1i) >= (1i << (firstLeadingBit(~5375u) % 32u));
    global1 = array<Struct_4, 31>();
    global2 = !(true | (u_input.a.x > 0i));
    global1 = array<Struct_4, 31>();
    global0 = array<vec2<f32>, 30>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f * -341f)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(658f * -379f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1244f, -3218f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-890f, _wgslsmith_f_op_f32(round(1263f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -194f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1220f) - _wgslsmith_f_op_f32(round(-1331f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1000f * -973f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-181f, -265f))), _wgslsmith_f_op_f32(-1508f * _wgslsmith_f_op_f32(floor(2945f))), 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-456f, -1454f, -110f, 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(456f, 591f, 478f, 491f) - vec4<f32>(-328f, 210f, 1221f, 698f)), vec4<bool>(true, true, true, true)))))), ~_wgslsmith_sub_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(2361u, 2532u), vec2<u32>(9396u, 0u)), abs(vec2<u32>(16414u, 1u)), true), vec2<u32>(_wgslsmith_clamp_u32(23844u, 4294967295u, 0u), 1u)), i32(-1i) * -(~(-1i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1509f * _wgslsmith_f_op_f32(-586f - _wgslsmith_f_op_f32(-1412f - -1377f))))));
}

