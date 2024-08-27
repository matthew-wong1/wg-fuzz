struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: array<vec4<u32>, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1998f));
    let var_1 = Struct_4(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-var_0)), any(arg_0.a.zz));
    global0 = array<Struct_2, 7>();
    var var_2 = arg_0.a;
    let var_3 = u_input.b;
    return _wgslsmith_f_op_f32(-var_1.a.a.e.x);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = Struct_1(select(vec3<bool>(true, arg_2.a, !(!arg_0.x)), arg_0, arg_0));
    return false;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1758f) + arg_2.a.a.e.x));
    var var_1 = arg_2.a;
    var var_2 = vec4<bool>(!all(arg_1), false, any(select(!select(arg_1.yz, arg_1.yz, arg_2.c), select(arg_1.xx, arg_1.yx, vec2<bool>(false, false)), var_1.a.a)), arg_2.a.a.a);
    var_1 = Struct_3(Struct_2(var_1.a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.e)), arg_2.a.a.e), 1u, 19624u, vec2<f32>(_wgslsmith_f_op_f32(floor(-574f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(862f - 166f) - _wgslsmith_f_op_f32(117f * -147f)))));
    var var_3 = firstLeadingBit(abs(vec4<u32>(_wgslsmith_div_u32(var_1.a.c, 4294967295u) ^ _wgslsmith_dot_vec2_u32(u_input.e.yz, u_input.c.yx), 86985u, reverseBits(_wgslsmith_sub_u32(4294967295u, arg_2.a.a.c)), 1u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = u_input.b.x;
    var var_1 = Struct_2(true && arg_2.a.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -612f), arg_0.x))), arg_0.x), firstLeadingBit(reverseBits(select(20982u, 1u, true)) & ~11293u), ~u_input.e.x, vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(func_2(Struct_1(!vec3<bool>(false, arg_2.a.x, arg_2.a.x)), vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), -1098f)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_1.e.x, select(!vec3<bool>(var_1.a, true, false), vec3<bool>(func_3(vec3<bool>(true, false, arg_2.a.x), -1786f, global0[_wgslsmith_index_u32(44051u, 7u)]), true, true), !arg_2.a.x), Struct_4(Struct_3(Struct_2(var_1.a, vec2<f32>(var_1.e.x, var_1.e.x), var_1.d, arg_1.x, vec2<f32>(-999f, 381f))), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(1325f * -2477f)), !(arg_2.a.x | true)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(f32(-1f) * -267f)))))));
    global0 = array<Struct_2, 7>();
    var_1 = Struct_2(select(true, false | var_1.a, true), arg_0.yy, arg_1.x, ~var_1.d, arg_0.xz);
    return Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.yyx, max((arg_1.wxw >> (arg_1.zxy % vec3<u32>(32u))) << (vec3<u32>(56904u, 4294967295u, u_input.a) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(arg_1.x, 14493u), 1u, ~var_1.d))), 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 3>();
    var var_0 = Struct_1(vec3<bool>(true, select(true, all(vec4<bool>(true, false, true, false)), true), any(vec3<bool>(select(true, true, true), false, true))));
    global1 = array<vec4<u32>, 3>();
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(669f, 341f, 402f, -3093f) - vec4<f32>(136f, -839f, 703f, -195f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-308f, 381f, -1424f, -648f) - vec4<f32>(211f, 771f, 128f, 547f)))), vec4<bool>(true, false, any(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), true))))), vec4<u32>(~reverseBits(49316u), 1542u, u_input.e.x, ~(firstLeadingBit(u_input.e.x) >> (40980u % 32u))), Struct_1(select(vec3<bool>(var_0.a.x, true, all(vec2<bool>(var_0.a.x, var_0.a.x))), select(select(var_0.a, vec3<bool>(false, true, var_0.a.x), var_0.a), var_0.a, var_0.a), true | (u_input.b.x < u_input.b.x))));
    let var_2 = vec4<bool>(any(!var_0.a), any(vec2<bool>(var_1.a.c > var_1.a.c, !var_1.a.a)) || select(!var_1.a.a, true, var_0.a.x), all(select(vec2<bool>(var_1.a.a, -1000f < var_1.a.e.x), !select(var_0.a.yx, vec2<bool>(var_0.a.x, false), var_1.a.a), var_0.a.xx)), u_input.a <= abs(func_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1412f, 1678f, var_1.a.b.x, var_1.a.e.x), vec4<f32>(-1648f, 1983f, 1000f, var_1.a.e.x))), select(global1[_wgslsmith_index_u32(50861u, 3u)], vec4<u32>(var_1.a.c, var_1.a.d, var_1.a.d, u_input.a), var_0.a.x), Struct_1(vec3<bool>(true, true, var_0.a.x))).a.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(u_input.b.zw, ~vec2<i32>(i32(-1i) * -48407i, -13729i)), 2147483647i, func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, var_1.a.e.x, 1210f, 172f)))), vec4<u32>(92343u, (var_1.a.c & 4294967295u) ^ var_1.a.c, _wgslsmith_div_u32(var_1.a.d, var_1.a.c), ~var_1.a.c), Struct_1(select(var_0.a, !var_2.zwx, vec3<bool>(var_0.a.x, var_1.a.a, true)))).a.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b.x, var_1.a.e.x, var_1.a.e.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.b.x, var_1.a.e.x, 709f) + vec3<f32>(-719f, var_1.a.e.x, var_1.a.e.x))))));
}

