struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1707f))), _wgslsmith_f_op_f32(round(-832f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(-916f - -1663f), all(vec2<bool>(true, true))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, 1000f, -967f, 541f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1233f, -870f, 1324f, -515f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(786f, -125f, -1144f, -1085f)), true))))), arg_0.a, Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-347f, 1521f, -953f))))), all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false))), true, -_wgslsmith_mod_vec3_i32(arg_0.b, -vec3<i32>(arg_0.b.x, arg_0.b.x, u_input.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-997f + 163f) + _wgslsmith_f_op_f32(f32(-1f) * -163f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-333f, 2583f)))), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)))));
    let var_1 = var_0.c;
    global0 = 36607u << (~u_input.a % 32u);
    global0 = ~(~_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(arg_0.c, vec2<u32>(var_0.b, arg_0.a)), var_0.b));
    global0 = 1u;
    return ~select(select(vec4<u32>(~8504u, 1u >> (1u % 32u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.b), 2u)], ~74908u), firstTrailingBit(u_input.d), vec4<bool>(any(vec4<bool>(false, true, var_0.c.b, var_1.c)), true, true, false || var_1.b)), firstTrailingBit(u_input.d), any(select(select(vec4<bool>(var_1.c, var_0.c.b, true, var_0.c.b), vec4<bool>(var_0.c.c, var_1.c, var_1.b, var_1.c), var_0.c.b), vec4<bool>(true, true, true, true), var_0.c.b)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = countOneBits(4294967295u);
    let var_0 = vec4<f32>(945f, 579f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1621f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1576f, -1420f))) - _wgslsmith_f_op_f32(-1f)));
    var var_1 = u_input.d;
    var var_2 = all(select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), true), vec2<bool>(true, true), true & (5119u > global1[_wgslsmith_index_u32(u_input.b, 2u)])), !vec2<bool>(748f < var_0.x, true)));
    var var_3 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(1047f, 2285f), _wgslsmith_div_f32(var_0.x, 641f), var_0.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f)))))), _wgslsmith_dot_vec4_u32(firstLeadingBit(max(vec4<u32>(global1[_wgslsmith_index_u32(42957u, 2u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], var_1.x), vec4<u32>(1u, 4294967295u, var_1.x, global1[_wgslsmith_index_u32(108172u, 2u)]))), func_3(Struct_1(var_1.x, vec3<i32>(2147483647i, 21891i, -55551i), vec2<u32>(global1[_wgslsmith_index_u32(1u, 2u)], u_input.a)))), Struct_3(_wgslsmith_f_op_vec3_f32(var_0.yyw - var_0.www), false, !any(vec2<bool>(false, true)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-6482i, 1i, 2147483647i), vec3<i32>(arg_0, u_input.c, 27443i), vec3<i32>(-34567i, u_input.c, -1i)), min(vec3<i32>(2147483647i, arg_0, u_input.c), vec3<i32>(-2147483647i, u_input.c, -24618i)), u_input.c <= arg_0)), _wgslsmith_f_op_f32(min(-424f, -441f))));
    return Struct_1(~_wgslsmith_add_u32(27349u, global1[_wgslsmith_index_u32(74431u, 2u)]), vec3<i32>(-max(_wgslsmith_mod_i32(var_3.a.c.d.x, u_input.c), var_3.a.c.d.x | 1i), 868i, 2966i), var_1.zy << (_wgslsmith_add_vec2_u32(func_3(Struct_1(var_3.a.b, vec3<i32>(u_input.c, var_3.a.c.d.x, -1i), u_input.d.zy)).wy, _wgslsmith_add_vec2_u32(select(vec2<u32>(var_1.x, 1u), var_1.wx, vec2<bool>(var_3.a.c.b, var_3.a.c.b)), firstLeadingBit(vec2<u32>(1u, u_input.b)))) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-970f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + -798f))))));
    global0 = 9021u;
    global0 = abs(u_input.d.x);
    var var_1 = Struct_2(0i, func_2(~u_input.c));
    let var_2 = 7868i;
    return var_1.b.b.zy;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    global0 = ~arg_1;
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(881f, -908f, -627f)))))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), select(false, true, false) && true)), true, select(vec3<i32>(firstLeadingBit(u_input.c), 48005i, _wgslsmith_dot_vec3_i32(vec3<i32>(28745i, 2147483647i, 30314i), vec3<i32>(9701i, u_input.c, u_input.c))), firstLeadingBit(~vec3<i32>(u_input.c, 0i, u_input.c)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))) >> ((select(countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 56976u, 4294967295u)), vec3<u32>(arg_1, u_input.b, 4294967295u), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))) >> (~vec3<u32>(arg_1, arg_1, 27026u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global0 = ~(~38817u);
    global1 = array<u32, 2>();
    global0 = ~arg_1 & u_input.d.x;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(435f, -1999f, -1037f, 1217f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2013f, -135f, -1000f, 1185f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 252f, -300f, -1000f), vec4<f32>(1182f, 392f, -1771f, -1372f))), true))), vec4<f32>(-1559f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-674f - 1542f)) * _wgslsmith_f_op_f32(-356f + -173f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -3316f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1686f, -702f)) - 795f)))));
    var var_1 = Struct_2(-2147483647i, Struct_1(func_4(func_1(u_input.d.xzy), _wgslsmith_mod_u32(u_input.b, 4294967295u)) >> (~2357u % 32u), vec3<i32>(-25343i, reverseBits(u_input.c ^ -2147483647i), reverseBits(~(-24043i))), u_input.d.zy));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(var_1.b.a >> (global1[_wgslsmith_index_u32(29594u, 2u)] % 32u)), func_3(Struct_1(18160u, var_1.b.b, vec2<u32>(var_1.b.c.x, var_1.b.c.x))).x, 4294967295u, min(77625u << (var_1.b.a % 32u), 1u | var_1.b.a)), _wgslsmith_clamp_i32(-1i, -(i32(-1i) * -u_input.c), u_input.c), global1[_wgslsmith_index_u32(abs(select(firstTrailingBit(firstTrailingBit(4294967295u)), ~1u, _wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(-106f * 224f))), 2u)], _wgslsmith_mod_u32(71833u, 42317u));
}

