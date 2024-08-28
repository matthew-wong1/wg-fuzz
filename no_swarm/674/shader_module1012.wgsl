struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(11173i, i32(-2147483648), vec4<bool>(true, false, true, true), true), Struct_2(44576i, 2147483647i, vec4<bool>(false, true, true, false), true), Struct_2(-1i, 1i, vec4<bool>(true, false, true, true), true), Struct_2(20698i, 16798i, vec4<bool>(false, false, false, false), true), Struct_2(25024i, 31402i, vec4<bool>(false, true, false, false), true), Struct_2(-12428i, -1i, vec4<bool>(true, false, false, true), true), Struct_2(-1i, 1i, vec4<bool>(true, false, false, true), false), Struct_2(-27070i, -13785i, vec4<bool>(true, false, true, false), false), Struct_2(2147483647i, 2147483647i, vec4<bool>(false, false, true, false), true), Struct_2(12153i, 1i, vec4<bool>(true, false, true, true), false), Struct_2(14631i, 51911i, vec4<bool>(true, true, false, false), false), Struct_2(-25612i, -45260i, vec4<bool>(true, false, false, false), true), Struct_2(-26613i, 2147483647i, vec4<bool>(false, false, false, false), false), Struct_2(-25750i, 49199i, vec4<bool>(false, false, true, true), false), Struct_2(0i, 2147483647i, vec4<bool>(true, false, true, false), false), Struct_2(i32(-2147483648), 2147483647i, vec4<bool>(true, false, true, true), false), Struct_2(i32(-2147483648), -13598i, vec4<bool>(true, true, true, false), false), Struct_2(i32(-2147483648), -25692i, vec4<bool>(false, true, true, true), false), Struct_2(6671i, i32(-2147483648), vec4<bool>(false, false, false, true), true), Struct_2(-13208i, i32(-2147483648), vec4<bool>(true, true, false, false), false), Struct_2(-29984i, -1i, vec4<bool>(true, true, false, true), true), Struct_2(1i, 0i, vec4<bool>(false, true, true, false), true), Struct_2(1i, -50454i, vec4<bool>(false, false, true, false), true), Struct_2(2147483647i, -21475i, vec4<bool>(true, true, true, false), false), Struct_2(0i, -81521i, vec4<bool>(false, false, false, false), false), Struct_2(2147483647i, 1i, vec4<bool>(false, true, true, false), true));

var<private> global1: array<Struct_1, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    var var_0 = 28423i;
    global1 = array<Struct_1, 32>();
    let var_1 = arg_0.b.x;
    var var_2 = arg_0;
    let var_3 = -1772f;
    return !select(vec3<bool>(true, (1u ^ u_input.b.x) <= firstLeadingBit(54041u), firstTrailingBit(var_2.c.x) < (arg_0.c.x << (var_2.c.x % 32u))), !vec3<bool>(arg_1, !arg_1, arg_1), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    let var_0 = global0[_wgslsmith_index_u32(4294967295u << (u_input.b.x % 32u), 26u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-256f, -1261f, 2260f, 1055f), vec4<f32>(-3042f, -1153f, 2723f, -578f), var_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2061f, 1228f, -1504f, -770f) - vec4<f32>(-1316f, -162f, 1011f, 114f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1884f, 528f, -494f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-590f)), _wgslsmith_div_f32(1082f, -753f), _wgslsmith_f_op_f32(sign(116f)), _wgslsmith_f_op_f32(-1665f + -359f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(939f, -1462f, -1474f, 1144f)))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1294f, -325f, -1039f, 623f) + vec4<f32>(-779f, 1472f, -2021f, -373f)), vec4<f32>(-1884f, -1048f, -1955f, 184f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -322f), -1080f, -575f, _wgslsmith_f_op_f32(107f + 786f))))));
    var var_2 = func_1(Struct_1(1684f, _wgslsmith_add_vec3_i32(~(-u_input.d), vec3<i32>(u_input.c.x, firstTrailingBit(2147483647i), 2147483647i & var_0.b)), firstLeadingBit(~(~vec4<u32>(u_input.a.x, 20999u, 13223u, u_input.a.x)))), u_input.a.x == u_input.a.x);
    var_2 = vec3<bool>((-491f >= _wgslsmith_f_op_f32(-var_1.x)) | true, any(!(!select(vec3<bool>(false, false, false), var_0.c.wxx, var_0.c.x))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(498f);
}

