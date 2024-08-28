struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(1u, 5803u, 39112u), vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 1u, 17696u), vec3<u32>(1u, 0u, 17360u), vec3<u32>(0u, 57752u, 12939u), vec3<u32>(0u, 31184u, 82336u), vec3<u32>(16462u, 0u, 1u), vec3<u32>(71455u, 0u, 16884u), vec3<u32>(0u, 4294967295u, 48911u), vec3<u32>(11466u, 24116u, 1u), vec3<u32>(0u, 46215u, 1u), vec3<u32>(18471u, 1u, 26395u), vec3<u32>(0u, 0u, 37917u), vec3<u32>(3890u, 4294967295u, 26954u), vec3<u32>(6853u, 6604u, 21125u), vec3<u32>(78571u, 0u, 71444u), vec3<u32>(22788u, 0u, 73449u), vec3<u32>(4294967295u, 4294967295u, 9486u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(43308u, 86668u, 0u), vec3<u32>(4294967295u, 57863u, 11655u), vec3<u32>(12855u, 44980u, 1u), vec3<u32>(1u, 4294967295u, 2966u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global2 = array<vec3<u32>, 24>();
    let var_0 = ~abs(~u_input.a.zy);
    var var_1 = ~(~(~(~(~vec4<u32>(u_input.b, var_0.x, 4294967295u, 51248u)))));
    global2 = array<vec3<u32>, 24>();
    let var_2 = global0[_wgslsmith_index_u32(68094u, 6u)];
    return global0[_wgslsmith_index_u32(max(var_1.x, 0u), 6u)];
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> vec2<bool> {
    global2 = array<vec3<u32>, 24>();
    let var_0 = Struct_1(firstTrailingBit(select(vec3<i32>(~0i, ~4442i, reverseBits(arg_2.b)), -vec3<i32>(-2147483647i, arg_2.a.x, arg_2.b) << (select(vec3<u32>(u_input.a.x, u_input.c, arg_1.x), global2[_wgslsmith_index_u32(65125u, 24u)], false) % vec3<u32>(32u)), select(vec3<bool>(false, arg_2.c.x, false), !vec3<bool>(arg_2.c.x, false, arg_2.c.x), select(vec3<bool>(arg_2.c.x, true, false), vec3<bool>(arg_2.c.x, false, arg_2.c.x), vec3<bool>(false, arg_2.c.x, true))))), _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(42520i, arg_2.a.x, arg_2.b, 1i) << (vec4<u32>(arg_0.x, arg_0.x, arg_1.x, u_input.b) % vec4<u32>(32u))), -reverseBits(vec4<i32>(arg_2.b, arg_2.b, arg_2.b, -1i))), !select(!arg_2.c, arg_2.c, select(vec2<bool>(arg_2.c.x, arg_2.c.x), !arg_2.c, func_2(true).c)));
    var var_1 = func_2(true);
    var var_2 = Struct_1(-(arg_2.a & var_1.a), 32470i, vec2<bool>(var_0.c.x, all(select(select(arg_2.c, vec2<bool>(false, var_0.c.x), vec2<bool>(var_0.c.x, false)), select(arg_2.c, vec2<bool>(var_1.c.x, var_1.c.x), arg_2.c), !var_1.c))));
    let var_3 = Struct_1(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(firstLeadingBit(var_0.b), reverseBits(0i), _wgslsmith_div_i32(var_2.a.x, var_1.b)), 0i), _wgslsmith_dot_vec2_i32(var_2.a.zx, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, var_1.a.x), max(var_2.a.xz, var_2.a.zx), arg_2.a.yy)), var_1.a.x), -31817i, select(arg_2.c, !var_2.c, !var_1.c));
    return vec2<bool>(true, all(!select(vec4<bool>(arg_2.c.x, var_1.c.x, false, var_3.c.x), select(vec4<bool>(var_1.c.x, var_2.c.x, var_3.c.x, var_1.c.x), vec4<bool>(var_0.c.x, true, true, var_0.c.x), vec4<bool>(false, true, arg_2.c.x, var_3.c.x)), false)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = Struct_1(countOneBits(vec3<i32>(1i, ~firstLeadingBit(2147483647i), arg_0.b)), arg_1, vec2<bool>(true || arg_0.c.x, false));
    var var_1 = global0[_wgslsmith_index_u32(45039u, 6u)];
    let var_2 = true;
    var var_3 = Struct_1(arg_0.a, arg_1, !select(vec2<bool>(true, any(vec4<bool>(false, false, false, var_1.c.x))), func_3(~vec2<u32>(1u, arg_2), ~u_input.a.zy, func_2(true)), all(vec3<bool>(true, true, var_2))));
    global1 = array<Struct_1, 8>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-599f, -438f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-991f, -885f) * _wgslsmith_f_op_f32(trunc(1871f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 8>();
    let var_0 = true;
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1808f, 252f, -404f) * vec3<f32>(548f, 412f, -401f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-943f, -682f, 477f), vec3<f32>(499f, 853f, 849f), var_0)))) - vec3<f32>(_wgslsmith_div_f32(1571f, 246f), -349f, _wgslsmith_f_op_f32(min(-2369f, -633f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1196f, 1434f, -459f), vec3<f32>(-118f, 476f, -373f), var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(429f, -498f, 1170f) * vec3<f32>(579f, 111f, -443f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(768f, -1180f, -1154f)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1238f, _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(~(~4294967295u), 6u)], _wgslsmith_dot_vec4_i32(~vec4<i32>(-53359i, -1i, 1i, -2147483647i), vec4<i32>(-1i, -6503i, -2147483647i, -1i)), u_input.b)), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, u_input.a.yz, vec4<i32>(~1i, ~(i32(-1i) * -17525i) | _wgslsmith_clamp_i32(-37787i, i32(-1i) * -1i, 1i), 15695i, i32(-1i) * -44543i));
}

