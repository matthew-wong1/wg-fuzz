struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: i32 = 11001i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) - _wgslsmith_div_f32(arg_0, -877f));
    let var_1 = arg_1;
    global1 = ~(i32(-1i) * -(~_wgslsmith_mult_i32(u_input.a, -17057i)));
    var var_2 = var_1;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(979f + 973f), 853f, arg_0, 597f))), 1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(933f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1263f, 1000f)))), _wgslsmith_f_op_f32(select(var_2.e, 1f, true)))), var_0, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - var_0)))));
    return abs(_wgslsmith_div_u32(min(9475u, ~1u), var_3.b << (var_3.b % 32u)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_0.a, _wgslsmith_div_u32(u_input.d.x, 19010u), _wgslsmith_f_op_f32(1057f + arg_0.e), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f)));
    var_0 = arg_0;
    var var_1 = ~(~vec4<u32>(abs(var_0.b), ~34340u, 2818u, func_3(var_0.c, global0[_wgslsmith_index_u32(49017u, 12u)])) & vec4<u32>(48060u, ~_wgslsmith_mult_u32(46543u, 1u), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d.x, 17504u), 1u), arg_0.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(-589f, -408f, arg_0.e, var_0.d)))))) * _wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, -754f, arg_0.c, var_0.c)) + vec4<f32>(var_0.c, _wgslsmith_f_op_f32(var_0.d + arg_0.c), var_0.c, -246f)), !vec4<bool>(false, any(vec4<bool>(true, false, false, false)), false, false))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1414f))))), _wgslsmith_f_op_vec4_f32(-var_2), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.e)))), 768f, 1190f);
    return i32(-1i) * -abs(37766i ^ _wgslsmith_mod_i32(u_input.e, 0i));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = true;
    global1 = _wgslsmith_mod_i32(i32(-1i) * -func_2(Struct_1(vec4<f32>(-217f, arg_1.x, arg_1.x, 360f), u_input.d.x, arg_1.x, -260f, arg_1.x)), 23361i);
    global1 = 0i ^ arg_2.x;
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    return ~_wgslsmith_add_i32(_wgslsmith_mult_i32(countOneBits(-u_input.c), -35245i), firstTrailingBit(0i));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = 1i;
    let var_1 = global0[_wgslsmith_index_u32(~0u, 12u)];
    var var_2 = ~(~u_input.d.xz);
    global0 = array<Struct_1, 12>();
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, countOneBits(4294967295u), 40203u, 1u), vec4<u32>(~max(var_1.b | 0u, ~u_input.d.x), var_2.x, ~(~var_2.x), 28219u)), 12u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1061f)) - _wgslsmith_f_op_f32(sign(657f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.c + 541f))), _wgslsmith_f_op_f32(arg_0 * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f * 1306f))) - vec4<f32>(_wgslsmith_f_op_f32(sign(1369f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.x, 1089f)), var_1.d, -179f)), 87180u ^ _wgslsmith_mult_u32(firstLeadingBit(~var_1.b), ~var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1497f), _wgslsmith_f_op_f32(ceil(var_3.c)))))), _wgslsmith_f_op_f32(max(var_1.e, arg_0)), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(1u, 12u)];
    let var_1 = func_4(_wgslsmith_f_op_f32(var_0.a.x - 793f), select(-select(vec3<i32>(u_input.b.x, u_input.e, -2147483647i), vec3<i32>(2147483647i, u_input.a, -16082i), false), -vec3<i32>(-2147483647i ^ u_input.b.x, 9286i, func_1(vec4<u32>(4294967295u, 66285u, u_input.d.x, 1u), vec3<f32>(1636f, var_0.d, var_0.e), vec4<i32>(u_input.b.x, 2147483647i, -20381i, 21057i))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), all(vec4<bool>(true, false, false, true)))));
    global1 = _wgslsmith_sub_i32(1i, 16027i);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(193f, var_1.c, var_1.a.x, 1188f)) - vec4<f32>(-1000f, -215f, 884f, var_0.e)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -377f, _wgslsmith_f_op_f32(min(var_1.c, -226f)), _wgslsmith_div_f32(var_1.c, var_0.d)))) + var_1.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a.x, -1000f, -409f)))), vec4<f32>(_wgslsmith_f_op_f32(-588f - _wgslsmith_f_op_f32(f32(-1f) * -370f)), -1353f, 1f, -1145f))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), false | all(vec3<bool>(false, true, true)), false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), false)));
    global1 = -(_wgslsmith_mod_i32(3636i, 1i) | (1i & -_wgslsmith_mod_i32(u_input.e, -3847i)));
    global0 = array<Struct_1, 12>();
    let var_3 = -868f;
    var var_4 = -(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, func_1(vec4<u32>(var_1.b, u_input.d.x, 23930u, u_input.d.x), vec3<f32>(var_3, 1691f, 1727f), vec4<i32>(-37175i, u_input.c, u_input.c, 1i)), -u_input.a, 16397i), vec4<i32>(-u_input.b.x, countOneBits(u_input.b.x), ~u_input.b.x, -10197i << (0u % 32u))) | _wgslsmith_mult_vec4_i32((vec4<i32>(u_input.c, u_input.e, 29367i, u_input.c) >> (vec4<u32>(8219u, u_input.d.x, 42535u, 4294967295u) % vec4<u32>(32u))) << (min(vec4<u32>(var_1.b, 0u, 49358u, var_1.b), vec4<u32>(18885u, 22376u, var_1.b, 10247u)) % vec4<u32>(32u)), select(abs(vec4<i32>(u_input.e, u_input.e, u_input.b.x, u_input.e)), vec4<i32>(14755i, u_input.b.x, u_input.a, -1398i), false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, ~2147483647i & var_4.x, firstTrailingBit(u_input.d), u_input.c);
}

