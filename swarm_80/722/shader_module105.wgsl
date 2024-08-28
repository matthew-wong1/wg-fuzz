struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 1>;

var<private> global2: array<vec4<f32>, 10>;

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    global2 = array<vec4<f32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(1314f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -467f)))) + _wgslsmith_f_op_f32(select(185f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1448f, 650f)))), firstLeadingBit(-45153i) <= _wgslsmith_add_i32(-2147483647i, arg_0)))));
    var var_1 = Struct_1(~u_input.c.x, global0.b);
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(~global0.b.x), ~(~(~arg_1)), countOneBits(1u), global0.a), countOneBits(~(~(~vec4<u32>(0u, 106487u, global0.a, 23226u))))), 13u)];
    let var_2 = !(!select(true, all(vec2<bool>(false, true)), true) != any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return 24966u;
}

fn func_2() -> bool {
    var var_0 = vec3<bool>(true, false, true);
    global1 = array<vec4<i32>, 1>();
    var var_1 = global3[_wgslsmith_index_u32(func_3(-1i, ~(~(~(~17107u)))), 13u)];
    var var_2 = !all(select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), var_0.x || true), !(!vec3<bool>(true, var_0.x, var_0.x)), vec3<bool>(!var_0.x, 11216u <= u_input.d.x, var_0.x)));
    let var_3 = !var_0.x;
    return var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(984f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(762f - -1222f))) + _wgslsmith_f_op_f32(-141f + -1039f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -431f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(542f, 790f))))), -521f));
    var var_1 = vec3<f32>(361f, var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - -1145f), var_0));
    var var_2 = !(!select(false, 4294967295u == arg_0.b.x, false) || (all(vec4<bool>(true, true, true, true)) | false));
    var var_3 = Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, false, false)), true), true), vec3<bool>(func_2(), true, !(-559f >= var_0)), true), _wgslsmith_f_op_f32(var_0 * -1708f) < var_0, global3[_wgslsmith_index_u32(1u, 13u)], 0u);
    var var_4 = Struct_2(select(var_3.a, var_3.a, false), _wgslsmith_div_f32(-1744f, _wgslsmith_f_op_f32(floor(var_0))) < _wgslsmith_f_op_f32(-var_0), Struct_1(var_3.d, _wgslsmith_mult_vec3_u32(~abs(u_input.d.zxx), ~(~u_input.d.zwy))), (36040u | firstTrailingBit(_wgslsmith_sub_u32(global0.b.x, global0.b.x))) | _wgslsmith_dot_vec4_u32(vec4<u32>(48688u, firstTrailingBit(0u), _wgslsmith_div_u32(1u, arg_2.x), ~global0.b.x), ~_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, u_input.d)));
    return var_4.a.x;
}

fn func_4(arg_0: bool, arg_1: bool) -> vec3<bool> {
    global1 = array<vec4<i32>, 1>();
    global0 = global3[_wgslsmith_index_u32(0u, 13u)];
    global3 = array<Struct_1, 13>();
    var var_0 = 753f;
    var var_1 = countOneBits(-vec4<i32>(min(u_input.a.x >> (4294967295u % 32u), abs(2147483647i)), reverseBits(u_input.a.x), reverseBits(~u_input.b), _wgslsmith_mod_i32(1i, u_input.b)));
    return select(!select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(arg_1, arg_0, arg_1, false)), !arg_1, all(vec2<bool>(true, true))), select(select(vec3<bool>(arg_0, false, false), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_0, true, true)), !vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(false, arg_1, arg_0))), !select(vec3<bool>(true, func_1(Struct_1(u_input.c.x, vec3<u32>(u_input.d.x, 44812u, global0.a)), var_1.x, u_input.c), true), !vec3<bool>(true, false, arg_0), select(!vec3<bool>(arg_0, arg_0, true), !vec3<bool>(false, arg_1, arg_1), true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 1>();
    var var_0 = Struct_2(select(select(func_4(func_1(Struct_1(34921u, vec3<u32>(global0.b.x, global0.a, 4294967295u)), u_input.a.x, vec2<u32>(24561u, u_input.d.x)), true), func_4(true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), false)), select(func_4(true, true), func_4(true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec3<bool>(all(vec3<bool>(false, false, false)), true, all(vec3<bool>(true, false, true)) && true)), false, Struct_1(_wgslsmith_dot_vec3_u32(u_input.d.zxw, global0.b), vec3<u32>(global0.a, u_input.c.x, u_input.c.x)), 20696u);
    let var_1 = var_0.a.xy;
    let var_2 = Struct_1(4294967295u, u_input.d.xxy);
    let var_3 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b.x, 26065u, u_input.d.x), var_0.c.b), var_0.c.b))), 13u)];
    var var_4 = global3[_wgslsmith_index_u32(~(~reverseBits(abs(_wgslsmith_add_u32(u_input.d.x, u_input.c.x)))), 13u)];
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(-1193f + 2759f), _wgslsmith_f_op_f32(-925f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1025f * 1675f)) + _wgslsmith_f_op_f32(f32(-1f) * -776f))), _wgslsmith_f_op_f32(abs(1234f)));
    let var_6 = Struct_2(func_4(func_1(Struct_1(var_0.d, vec3<u32>(u_input.c.x, global0.a, 12682u)), u_input.b, countOneBits(_wgslsmith_mult_vec2_u32(u_input.c, var_2.b.xx))), true), true, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.b.x, firstTrailingBit(~firstTrailingBit(4294967295u))), 13u)], ~max(~var_4.a, 86029u));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

