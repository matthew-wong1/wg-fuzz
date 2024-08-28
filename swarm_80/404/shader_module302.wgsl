struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-62676i, -1i, 19312i, -1i), vec4<i32>(-44346i, 1i, -1i, -58046i), vec4<i32>(-9023i, i32(-2147483648), 2147483647i, -1i), vec4<i32>(1i, 0i, -60287i, i32(-2147483648)), vec4<i32>(1i, 2182i, 21263i, -45559i), vec4<i32>(-58038i, i32(-2147483648), 0i, 1i), vec4<i32>(i32(-2147483648), 0i, 14764i, -14070i), vec4<i32>(-2147i, 2147483647i, -1i, -41768i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 1i), vec4<i32>(1i, 1i, i32(-2147483648), 27881i), vec4<i32>(2147483647i, 1i, -1i, -7014i), vec4<i32>(0i, 56952i, 1i, 68543i), vec4<i32>(2147483647i, 0i, i32(-2147483648), 0i), vec4<i32>(42068i, -1i, -759i, 0i), vec4<i32>(54903i, 2647i, 10257i, -27122i), vec4<i32>(10278i, -1i, 20268i, 2147483647i), vec4<i32>(-31004i, -42137i, -1i, i32(-2147483648)), vec4<i32>(1i, 15967i, 31866i, -12224i), vec4<i32>(i32(-2147483648), 1451i, -17411i, i32(-2147483648)), vec4<i32>(31154i, 0i, i32(-2147483648), 0i), vec4<i32>(0i, 20413i, 57295i, 26070i), vec4<i32>(0i, 39700i, 33570i, 9606i), vec4<i32>(24631i, i32(-2147483648), 35056i, i32(-2147483648)), vec4<i32>(-43837i, i32(-2147483648), 31881i, 0i), vec4<i32>(0i, -20694i, 1i, 1i), vec4<i32>(i32(-2147483648), 0i, 1i, 1239i), vec4<i32>(9028i, 66199i, 874i, 10041i), vec4<i32>(i32(-2147483648), 6320i, -21099i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 2147483647i, -1026i), vec4<i32>(2147483647i, 14423i, -44194i, 2147483647i), vec4<i32>(1i, 0i, 0i, 10053i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    global2 = array<vec4<i32>, 31>();
    var var_0 = any(select(vec3<bool>(1u > u_input.d, true, true), select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), !(firstTrailingBit(1u) != u_input.a)));
    global2 = array<vec4<i32>, 31>();
    let var_1 = (13507i >> (countOneBits(~(0u << (u_input.c.x % 32u))) % 32u)) == u_input.b.x;
    let var_2 = -(~(-vec3<i32>(u_input.b.x, 2147483647i, 3904i)) << (abs(~vec3<u32>(u_input.a, arg_0, arg_0)) % vec3<u32>(32u)));
    return var_1;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(all(arg_0.zy), true);
    var var_1 = vec2<bool>(true, u_input.d != ~u_input.d);
    global2 = array<vec4<i32>, 31>();
    let var_2 = ~(-1i);
    var var_3 = _wgslsmith_clamp_u32(u_input.a, select(abs(u_input.c.x), ~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.d, 21u)] | u_input.c, _wgslsmith_div_vec2_u32(u_input.c, global0[_wgslsmith_index_u32(u_input.d, 21u)])), true & all(vec3<bool>(false, arg_0.x, true))), max(u_input.a, ~_wgslsmith_add_u32(u_input.a, reverseBits(4294967295u))));
    return vec2<bool>(true, func_3(u_input.d, arg_1) || var_1.x);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = select(arg_1, select(arg_1, !vec2<bool>(arg_1.x, true || arg_1.x), arg_1), false);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 822f) * _wgslsmith_f_op_vec2_f32(-arg_2.a)), _wgslsmith_f_op_vec2_f32(arg_2.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1218f, 1425f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(arg_2.a)), _wgslsmith_f_op_vec2_f32(arg_2.a - arg_2.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(arg_2.a))))))));
    let var_2 = 11608u;
    var var_3 = vec4<i32>(u_input.b.x, -firstTrailingBit(0i), i32(-1i) * -1i, abs(-17255i));
    var_0 = select(arg_1, vec2<bool>(!(_wgslsmith_mod_i32(-20154i, var_3.x) <= u_input.b.x), var_0.x), arg_1);
    return arg_2;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1293f, -560f) * vec2<f32>(1573f, 769f)))))));
    let var_1 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.a.x)))), func_2(vec3<bool>(true, true, true), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.a))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))), -618f);
    let var_2 = 0u;
    var var_3 = u_input.b.x;
    var_3 = ~reverseBits(-37581i);
    return StorageBuffer(~(~reverseBits(67638u)), reverseBits(vec4<i32>(-43389i, ~(-2147483647i) ^ firstLeadingBit(u_input.b.x), firstLeadingBit(6622i), ~48264i)), _wgslsmith_div_i32(-1i, -25011i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 31>();
    let x = u_input.a;
    s_output = func_1();
}

