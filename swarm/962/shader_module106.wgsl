struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 8>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> bool {
    return select(all(vec3<bool>(any(vec2<bool>(true, true)) && true, all(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false)))), all(vec2<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(false, true)))), true);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> bool {
    global0 = array<Struct_5, 8>();
    let var_0 = all(vec3<bool>(false, all(vec2<bool>(true, true)), func_3(arg_1, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-141f, 736f, 560f)), countOneBits(u_input.c)))));
    global0 = array<Struct_5, 8>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 1273f, _wgslsmith_f_op_f32(900f * 392f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(476f, -398f, -1926f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1878f, 2387f, -3408f) - vec3<f32>(1177f, -1548f, 1259f)))))), select(firstLeadingBit(select(u_input.c, u_input.c, var_0)) | ~(-vec4<i32>(0i, u_input.c.x, -21075i, u_input.c.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 44716i, -15949i, 2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i)) & _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, u_input.b, 8665i), vec4<i32>(u_input.c.x, 73i, -2147483647i, u_input.b)), u_input.c), !var_0));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2232f) - _wgslsmith_f_op_f32(-var_1.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x)))));
    return any(!select(!(!vec4<bool>(true, var_0, true, false)), !vec4<bool>(false, var_0, var_0, true), select(!vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, true, false, true), any(vec3<bool>(true, false, var_0)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: u32) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-366f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1018f, 1000f) * 1427f)))), !all(vec3<bool>(func_2(19918u, arg_0.zxz), true, true)));
    let var_1 = arg_0.zxz;
    var var_2 = Struct_2(var_0);
    let var_3 = true;
    var var_4 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), -1056f), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f * var_0.a) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.a - var_2.a.a), -1208f, all(vec3<bool>(true, true, true)))))), _wgslsmith_f_op_f32(-var_0.a));
    return vec2<bool>(true, !var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(func_1(vec4<u32>(u_input.d, ~(~0u), countOneBits(u_input.d), firstTrailingBit(4294967295u) >> (u_input.a.x % 32u)), _wgslsmith_add_vec2_u32(u_input.a, ~vec2<u32>(16259u, 30172u)), 0u));
    let var_1 = !(!(!(u_input.b <= u_input.c.x)));
    global0 = array<Struct_5, 8>();
    global0 = array<Struct_5, 8>();
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 8u)];
    global0 = array<Struct_5, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, ~(-31987i)) << (u_input.a % vec2<u32>(32u)), 0i);
}

