struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(434f, 160f, -1000f), vec3<f32>(-857f, 222f, -909f), vec3<f32>(1715f, -708f, -511f), vec3<f32>(-102f, -1182f, 445f), vec3<f32>(-567f, 1205f, -1000f), vec3<f32>(2105f, -1000f, 379f), vec3<f32>(1296f, -891f, -324f), vec3<f32>(-693f, -787f, 1000f), vec3<f32>(1000f, -711f, -1000f), vec3<f32>(823f, 699f, -236f), vec3<f32>(-1000f, 743f, -716f), vec3<f32>(-108f, 406f, 1434f), vec3<f32>(1191f, 449f, 172f), vec3<f32>(-1022f, 258f, 130f), vec3<f32>(346f, 1227f, -425f), vec3<f32>(-772f, 1314f, -604f), vec3<f32>(-1619f, 1033f, 1185f), vec3<f32>(181f, 1344f, 731f), vec3<f32>(-2127f, 1000f, 1000f), vec3<f32>(-739f, 1284f, 971f), vec3<f32>(-1725f, -1161f, -1768f), vec3<f32>(-371f, -598f, 1233f), vec3<f32>(870f, 603f, 624f));

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(1i, vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true))), Struct_2(Struct_1(-34113i, vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))), Struct_2(Struct_1(51024i, vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), Struct_2(Struct_1(2147483647i, vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), Struct_2(Struct_1(i32(-2147483648), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), Struct_2(Struct_1(27487i, vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true))), Struct_2(Struct_1(11105i, vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))), Struct_2(Struct_1(57769i, vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), Struct_2(Struct_1(4350i, vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), Struct_2(Struct_1(13241i, vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), Struct_2(Struct_1(-1i, vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false))), Struct_2(Struct_1(1i, vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), Struct_2(Struct_1(62338i, vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), Struct_2(Struct_1(2147483647i, vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true))), Struct_2(Struct_1(2147483647i, vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(2147483647i, vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))), Struct_2(Struct_1(-14462i, vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), Struct_2(Struct_1(2147483647i, vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), Struct_2(Struct_1(12548i, vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true))), Struct_2(Struct_1(-24865i, vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))));

var<private> global2: array<Struct_1, 1>;

var<private> global3: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(arg_2);
    global0 = array<vec3<f32>, 23>();
    var var_1 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(1u, 42363u))), 20u)];
    let var_2 = var_0.a.c.zzy;
    global1 = array<Struct_2, 20>();
    return min(-2147483647i | (1i ^ ~(arg_0.a & -2147483647i)), 0i);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_1((~firstTrailingBit(-6629i) ^ u_input.b) & abs(~(u_input.b << (1941u % 32u))), !vec4<bool>(false, true, _wgslsmith_f_op_f32(arg_0.x * arg_0.x) > 1000f, true), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_div_f32(797f, 248f), _wgslsmith_f_op_f32(-arg_0.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) - arg_0.x), true, -1222f >= arg_0.x, true));
    global1 = array<Struct_2, 20>();
    global0 = array<vec3<f32>, 23>();
    var var_1 = Struct_2(Struct_1(func_3(Struct_1(_wgslsmith_mult_i32(0i, 2147483647i), vec4<bool>(true, var_0.b.x, true, true), !var_0.c), false, Struct_1(0i, vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), !var_0.b)), vec4<bool>(-815f <= arg_0.x, var_0.b.x, true, var_0.c.x), select(var_0.b, vec4<bool>(true, arg_1 == 18152u, !var_0.b.x, false), true)));
    let var_2 = var_1.a.b.yw;
    return select(vec2<bool>(all(var_1.a.b.xyx), arg_0.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) - 663f)), !(!var_0.c.xz), var_1.a.b.zw);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_2 {
    global3 = _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(~select(~vec2<u32>(8404u, 1u), ~vec2<u32>(4294967295u, 1u), func_2(vec2<f32>(-225f, -1049f), 24426u)), ~vec2<u32>(~26310u, 4294967295u)));
    var var_0 = reverseBits(~(-max(~25286i, _wgslsmith_mult_i32(u_input.a.x, 1i))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = Struct_1(~u_input.b, select(!vec4<bool>(true, arg_1.x, false, arg_1.x), select(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), !select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, false)), true), arg_1.x), !(!vec4<bool>(arg_1.x || arg_1.x, arg_1.x, true, u_input.a.x < 64596i)));
    var var_3 = true;
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, ~4294967295u), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = abs(abs(select(countOneBits(vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), vec4<u32>(0u, 1u, 17390u, 17898u), !vec4<bool>(true, false, true, var_0))) << (vec4<u32>(_wgslsmith_div_u32(~25821u, _wgslsmith_div_u32(4294967295u, 4294967295u)), ~_wgslsmith_mult_u32(1u, 20290u), ~4294967295u, 1u) % vec4<u32>(32u)));
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(0u, 23u)])), !select(!vec2<bool>(var_0, true), vec2<bool>(all(vec2<bool>(var_0, false)), true), false));
    global2 = array<Struct_1, 1>();
    let var_3 = !(!vec3<bool>(var_2.a.b.x, func_1(vec3<f32>(221f, 2096f, -1650f), var_2.a.c.xw).a.c.x, var_2.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1008f, 152f) + vec2<f32>(-1495f, -1045f))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-865f, 811f), vec2<f32>(-277f, -1315f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -547f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-413f, 977f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(897f, -1035f)))))));
}

