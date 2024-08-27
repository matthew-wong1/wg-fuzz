struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(0i, -8101i), Struct_1(0i, 50047u, vec4<u32>(0u, 1u, 86927u, 37159u), 45484u), -5139i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: Struct_1) -> vec2<i32> {
    global0 = array<Struct_3, 18>();
    var var_0 = false;
    let var_1 = -arg_2.a.b.a;
    return global1.a;
}

fn func_2() -> vec4<u32> {
    let var_0 = ~global1.b.c.xww;
    global1 = Struct_2(select(-(func_3(vec2<bool>(true, true), global1.b.c, Struct_4(Struct_2(vec2<i32>(global1.a.x, 2147483647i), global1.b, global1.b.a), vec3<f32>(1432f, -131f, 463f)), Struct_1(16252i, 0u, global1.b.c, var_0.x)) & vec2<i32>(15618i, global1.c)), max(min(vec2<i32>(u_input.a, u_input.a), ~global1.a), vec2<i32>(637i, reverseBits(u_input.a))), any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_sub_i32(func_3(vec2<bool>(true, true), global1.b.c & vec4<u32>(67249u, global1.b.c.x, 49863u, u_input.d.x), Struct_4(Struct_2(vec2<i32>(-1i, u_input.a), Struct_1(13442i, u_input.c, vec4<u32>(4294967295u, 4300u, var_0.x, var_0.x), 0u), global1.b.a), vec3<f32>(-1345f, 2689f, -439f)), global1.b).x, -20531i), 39569u, global1.b.c, 0u ^ global1.b.b), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-21399i >> (global1.b.c.x % 32u), func_3(vec2<bool>(false, true), vec4<u32>(13038u, u_input.d.x, u_input.c, 4294967295u), Struct_4(Struct_2(vec2<i32>(global1.c, 47721i), Struct_1(u_input.a, var_0.x, vec4<u32>(u_input.b, u_input.c, 4294967295u, global1.b.d), var_0.x), -1i), vec3<f32>(-1880f, -930f, 1210f)), global1.b).x, _wgslsmith_clamp_i32(-1i, -1i, global1.b.a)), select(vec3<i32>(-12191i, global1.c, -89087i) | vec3<i32>(-2147483647i, u_input.a, global1.a.x), reverseBits(vec3<i32>(u_input.a, 1i, 2147483647i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    global0 = array<Struct_3, 18>();
    let var_1 = _wgslsmith_dot_vec3_i32(-vec3<i32>(global1.b.a, -max(39504i, 0i), -min(46091i, 0i)), -vec3<i32>(global1.a.x, global1.a.x, _wgslsmith_sub_i32(-2147483647i, u_input.a)));
    global0 = array<Struct_3, 18>();
    return vec4<u32>(27785u, ~global1.b.c.x, _wgslsmith_mult_u32(12447u, u_input.c), 76579u);
}

fn func_1() -> vec2<bool> {
    let var_0 = ~_wgslsmith_dot_vec4_u32(max(func_2(), global1.b.c), _wgslsmith_clamp_vec4_u32(global1.b.c >> (vec4<u32>(1u, 1u, 43695u, u_input.b) % vec4<u32>(32u)), abs(global1.b.c), ~global1.b.c)) << (1u % 32u);
    let var_1 = false;
    global0 = array<Struct_3, 18>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2492f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-805f + _wgslsmith_f_op_f32(select(-434f, 1170f, false)))))));
    var var_3 = vec3<i32>(min(_wgslsmith_sub_i32(6145i, global1.c) >> (select(~4294967295u, 0u, false | var_1) % 32u), -33038i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, countOneBits(u_input.a)), ~select(firstTrailingBit(vec4<i32>(u_input.a, -6957i, global1.a.x, 1i)), vec4<i32>(-2147483647i, global1.a.x, -11576i, 2147483647i) << (global1.b.c % vec4<u32>(32u)), !vec4<bool>(false, true, var_1, var_1))), i32(-1i) * -(~_wgslsmith_mod_i32(22840i, global1.c)));
    return vec2<bool>(select(_wgslsmith_add_u32(55949u, _wgslsmith_sub_u32(u_input.d.x, 1u)), ~min(47714u, var_0), false) > _wgslsmith_mult_u32(1u, ~(~u_input.d.x)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), any(vec2<bool>(true, true)), select(true, true, true) && (~2147483647i < (u_input.a | u_input.a))));
    var var_1 = !(!select(select(vec2<bool>(var_0, true), func_1(), var_0), !vec2<bool>(false, var_0), any(vec2<bool>(true, true))));
    global1 = Struct_2(vec2<i32>(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, u_input.a, -2147483647i), global1.b.a), ~global1.a.x), global1.b, -13929i);
    var var_2 = -477f;
    global0 = array<Struct_3, 18>();
    let var_3 = -1132f;
    let var_4 = Struct_1(0i, ~(~(~global1.b.d ^ 46922u)), vec4<u32>(select(~abs(25598u), u_input.b ^ ~20187u, true), global1.b.b, _wgslsmith_mult_u32(firstLeadingBit(~u_input.b), 0u), reverseBits(16880u)), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(349f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1276f, var_3), _wgslsmith_f_op_f32(-var_3), false)), _wgslsmith_f_op_f32(floor(769f))))));
}

