struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29>;

var<private> global1: array<Struct_5, 30>;

var<private> global2: Struct_4;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = array<Struct_5, 30>();
    var var_0 = !select(!vec4<bool>(true, global2.c, any(vec4<bool>(global2.c, global2.c, global2.c, global2.c)), !global2.c), !vec4<bool>(arg_0.b < arg_0.b, all(vec4<bool>(global2.c, global2.c, true, global2.c)), all(vec4<bool>(global2.c, true, global2.c, true)), true), any(vec3<bool>(all(global0[_wgslsmith_index_u32(4294967295u, 29u)]), !global2.c, global2.c & true)));
    global1 = array<Struct_5, 30>();
    var_0 = !select(select(!select(vec4<bool>(var_0.x, global2.c, false, global2.c), vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(false, false, global2.c, var_0.x), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(global2.c, var_0.x, global2.c, var_0.x), vec4<bool>(false, false, false, var_0.x)), select(vec4<bool>(global2.c, true, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), global2.c)), all(vec2<bool>(global2.c, var_0.x))), !vec4<bool>(any(vec2<bool>(true, false)), true, true, arg_0.a.a <= -1163f), !select(select(vec4<bool>(global2.c, global2.c, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), true), select(vec4<bool>(global2.c, false, global2.c, false), vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(global2.c, var_0.x, false, global2.c)), any(vec3<bool>(global2.c, true, var_0.x))));
    global1 = array<Struct_5, 30>();
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    global2 = Struct_4(i32(-1i) * -1i, 2147483647i, false);
    global2 = Struct_4(_wgslsmith_add_i32(-36292i, _wgslsmith_dot_vec2_i32((arg_1.b.zx ^ vec2<i32>(u_input.a, 2147483647i)) & -arg_1.b.xx, _wgslsmith_mod_vec2_i32(firstLeadingBit(arg_1.b.zy), vec2<i32>(2147483647i, u_input.a)))), -u_input.a, any(select(vec3<bool>(func_3(Struct_2(arg_1, 25045u)), false == global2.c, true), !global0[_wgslsmith_index_u32(firstTrailingBit(49065u), 29u)], vec3<bool>(any(vec3<bool>(global2.c, true, global2.c)), false, true))));
    var var_0 = arg_1;
    let var_1 = vec4<i32>(-arg_1.b.x << (firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), max(vec2<u32>(1u, 4294967295u), vec2<u32>(72596u, 0u)))) % 32u), abs(-firstTrailingBit(~0i)), u_input.a, firstLeadingBit(u_input.a));
    var_0 = Struct_1(-277f, vec3<i32>(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-43124i, var_1.x, -32416i), vec3<i32>(2147483647i, u_input.a, arg_1.b.x)), _wgslsmith_sub_i32(4629i, -var_1.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, arg_1.b.x), i32(-1i) * -13250i)), arg_1.b.x, 1i));
    return abs(var_0.b.x ^ _wgslsmith_add_i32(-1i, ~select(arg_1.b.x, 2147483647i, global2.c)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_5, 30>();
    return arg_2;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    return func_4(_wgslsmith_f_op_vec3_f32(-arg_0), vec3<bool>(global2.b != 22407i, global2.c, select(global2.c, global2.c, true | all(vec2<bool>(global2.c, true)))), Struct_1(arg_0.x, vec3<i32>(i32(-1i) * -1308i, -global2.a, func_2(vec4<f32>(arg_0.x, -1594f, -337f, 757f), Struct_1(arg_0.x, vec3<i32>(-1i, 256i, global2.a)))) & vec3<i32>(select(1i, -48517i, true), -u_input.a, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 29>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -686f)));
    let var_1 = true;
    let var_2 = abs(0u);
    var var_3 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-625f, 424f, -1377f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-352f, -245f, 244f))))))), ~28150u);
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.a, 1000f, var_3.a.a, var_3.a.a), vec4<f32>(984f, 525f, var_3.a.a, var_3.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.a, -1000f, var_3.a.a, var_3.a.a)), true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.a, var_3.a.a, var_3.a.a, -156f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(408f, var_3.a.a, var_3.a.a, -460f) - vec4<f32>(915f, -175f, var_3.a.a, -229f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_3.a.a - var_3.a.a), _wgslsmith_f_op_f32(647f + -1000f), _wgslsmith_f_op_f32(var_3.a.a * -1528f), _wgslsmith_f_op_f32(-1067f * var_3.a.a))))));
    var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_1(vec3<f32>(734f, 1000f, var_3.a.a)).a, _wgslsmith_f_op_f32(ceil(-1000f)), -1349f, -433f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-558f, -1230f, var_4.x, 1000f) * vec4<f32>(var_4.x, -588f, -862f, 949f))))) * vec4<f32>(var_4.x, _wgslsmith_f_op_f32(trunc(var_4.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(select(var_3.a.a, var_3.a.a, true)), true)), _wgslsmith_f_op_f32(1364f - 984f)), var_3.a.a));
    var var_5 = 121f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(2397f + _wgslsmith_f_op_f32(ceil(1000f))), 603f))), min(0i, -(~(i32(-1i) * -22844i))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1692f, -1122f, 1000f, var_4.x))))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 1u), abs(vec2<u32>(var_3.b, 13431u))), vec2<u32>(0u, 30351u) ^ firstLeadingBit(vec2<u32>(var_3.b, 1038u))), 4294967295u);
}

