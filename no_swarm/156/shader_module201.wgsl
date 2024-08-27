struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec4<i32>, 21>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> vec2<u32> {
    global1 = array<vec4<i32>, 21>();
    global1 = array<vec4<i32>, 21>();
    global3 = array<vec4<bool>, 24>();
    global2 = vec2<i32>(-2147483647i, 1i);
    let var_0 = -320f;
    return vec2<u32>(min(u_input.b, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, u_input.b)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 26607u), vec2<u32>(80854u, u_input.b))))), _wgslsmith_mult_u32(37231u, u_input.b));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> vec2<f32> {
    global3 = array<vec4<bool>, 24>();
    var var_0 = Struct_2(1i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-542f, 851f, 1814f, -1590f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-298f, 1253f, 1000f, 1014f)))), _wgslsmith_f_op_f32(-1f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(-666f, 867f, -558f, -1000f)) - vec4<f32>(1f, 1f, 1f, 1f)), -431f));
    global3 = array<vec4<bool>, 24>();
    var var_1 = select(false, true, all(select(vec3<bool>(any(global3[_wgslsmith_index_u32(arg_0, 24u)]), true, select(true, false, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), true), false)));
    global1 = array<vec4<i32>, 21>();
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1586f, var_0.c.b)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_2(~1u & _wgslsmith_mod_u32(u_input.b, 27949u), max(~vec2<u32>(0u, u_input.b), ~vec2<u32>(u_input.b, 4294967295u)))).x, -1000f)));
    var var_1 = reverseBits(abs(u_input.a.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, 866f, -319f), vec4<f32>(301f, -1371f, 1000f, var_0), global3[_wgslsmith_index_u32(56653u, 24u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -939f, 1000f))) * vec4<f32>(-115f, _wgslsmith_f_op_f32(ceil(-783f)), 895f, _wgslsmith_f_op_f32(floor(var_0)))), vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(66736u, vec2<u32>(u_input.b, 1u))).x * _wgslsmith_f_op_f32(max(1084f, 399f)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))), 315f);
    let var_3 = vec2<i32>(-global2.x, u_input.a.x) & firstLeadingBit(u_input.a.xy);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, var_0, var_2.b, var_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(751f, 327f, -119f, var_0)))), vec4<f32>(902f, -871f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(598f - var_2.b) + _wgslsmith_f_op_f32(exp2(var_0))), var_0)));
    return any(select(vec4<bool>(false, true, !(var_0 < var_0), false), vec4<bool>(true, _wgslsmith_f_op_f32(trunc(var_0)) > _wgslsmith_f_op_f32(exp2(var_4.x)), true, -2008f >= _wgslsmith_f_op_f32(round(var_2.b))), select(select(vec4<bool>(true, false, false, true), global3[_wgslsmith_index_u32(32555u, 24u)], all(vec2<bool>(false, false))), vec4<bool>(true, true, any(vec3<bool>(false, false, true)), any(global3[_wgslsmith_index_u32(u_input.b, 24u)])), vec4<bool>(any(vec2<bool>(false, false)), true, select(true, false, false), any(global3[_wgslsmith_index_u32(u_input.b, 24u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1619f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2181f) + _wgslsmith_f_op_f32(2553f - 825f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1806f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f)))));
    let var_1 = true;
    global0 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(4294967295u, func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, -450f, -847f, -1000f)), _wgslsmith_f_op_f32(-1526f - 314f)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(global2.x, u_input.a.x, -21378i)), reverseBits(u_input.a)), select(-2147483647i, 1529i, true) & global2.x))));
    global2 = ~vec2<i32>(global2.x, _wgslsmith_add_i32(i32(-1i) * -18771i, reverseBits(global2.x)));
    let var_3 = vec4<bool>(!var_1, var_1, !(true || all(vec2<bool>(var_1, var_1))), func_3());
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1353f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-643f, var_2.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.x, var_2.x)))))));
    let var_5 = 1u;
    var var_6 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-global2.x, -(~_wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(u_input.b, 21u)]), ~global1[_wgslsmith_index_u32(4294967295u, 21u)])), vec4<u32>(var_5, 1u, 4294967295u << (u_input.b % 32u), 73752u), var_4.zy, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, var_5)));
}

