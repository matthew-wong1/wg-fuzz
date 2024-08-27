struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec2<f32>(624f, -289f)), Struct_2(vec2<f32>(-1432f, 1452f)), Struct_2(vec2<f32>(1415f, -203f)), Struct_2(vec2<f32>(496f, -681f)), Struct_2(vec2<f32>(-1171f, -1097f)), Struct_2(vec2<f32>(504f, 107f)), Struct_2(vec2<f32>(209f, -1813f)), Struct_2(vec2<f32>(-347f, 424f)), Struct_2(vec2<f32>(-1000f, -550f)), Struct_2(vec2<f32>(-399f, 460f)), Struct_2(vec2<f32>(-1000f, -713f)), Struct_2(vec2<f32>(847f, -989f)), Struct_2(vec2<f32>(-1674f, 1104f)), Struct_2(vec2<f32>(223f, -924f)), Struct_2(vec2<f32>(435f, -299f)), Struct_2(vec2<f32>(-1000f, -916f)), Struct_2(vec2<f32>(513f, 441f)), Struct_2(vec2<f32>(-1000f, 187f)), Struct_2(vec2<f32>(-129f, 149f)), Struct_2(vec2<f32>(-1000f, 347f)), Struct_2(vec2<f32>(-531f, -1000f)), Struct_2(vec2<f32>(-678f, -194f)), Struct_2(vec2<f32>(-970f, 1000f)), Struct_2(vec2<f32>(-526f, -1482f)), Struct_2(vec2<f32>(-182f, 221f)), Struct_2(vec2<f32>(509f, -463f)), Struct_2(vec2<f32>(1188f, 720f)), Struct_2(vec2<f32>(-1806f, 1000f)), Struct_2(vec2<f32>(-1077f, 1133f)), Struct_2(vec2<f32>(-346f, 216f)), Struct_2(vec2<f32>(1702f, -428f)));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -818f);
    global0 = array<Struct_2, 31>();
    var var_1 = !global1.yy;
    var_1 = !global1.ww;
    var_0 = -325f;
    return vec4<i32>(~1i, max(0i, u_input.b), u_input.c >> (u_input.d % 32u), -u_input.c);
}

fn func_1() -> f32 {
    var var_0 = ~func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f))));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = Struct_4(select(select(select(select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, false, true, arg_0.x), arg_0.x), select(vec4<bool>(true, true, false, global1.x), vec4<bool>(arg_0.x, true, arg_0.x, global1.x), vec4<bool>(false, true, arg_0.x, arg_0.x)), select(vec4<bool>(true, false, global1.x, false), vec4<bool>(arg_0.x, true, global1.x, false), arg_0.x)), vec4<bool>(true, true, true, true), !(false || arg_0.x)), select(vec4<bool>(arg_0.x, all(vec4<bool>(arg_0.x, false, true, arg_0.x)), any(global1.yx), arg_0.x | false), !(!vec4<bool>(false, true, global1.x, true)), select(vec4<bool>(false, global1.x, global1.x, false), !vec4<bool>(true, arg_0.x, global1.x, true), global1.x)), _wgslsmith_mult_i32(u_input.a & u_input.b, u_input.c) != ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.c, u_input.a))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, _wgslsmith_div_u32(_wgslsmith_mult_u32(~53508u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 10457u), vec3<u32>(4294967295u, u_input.d, u_input.d))), ~42066u ^ firstLeadingBit(u_input.d))), 31u)]);
    var var_1 = 15184i;
    global0 = array<Struct_2, 31>();
    let var_2 = u_input.c;
    var var_3 = max(~min(~vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(~vec4<u32>(u_input.d, u_input.d, u_input.d, 52968u))), _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) | vec4<u32>(1u, 1u, u_input.d, 1u), ~vec4<u32>(u_input.d, 42457u, 45035u, u_input.d)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.d), 1u), ~_wgslsmith_mod_u32(4294967295u, 41602u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, 13933u), vec4<u32>(u_input.d, 30824u, 1u, u_input.d))) >> (firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.d, 17129u, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 100926u))) % vec4<u32>(32u))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-476f))))), var_0.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false | global1.x, global1.x, u_input.b == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-22091i, u_input.a, 0i, -86116i), vec4<i32>(15683i, -1i, 2147483647i, 2147483647i)), u_input.b)));
    global1 = vec4<bool>(true, false, all(vec3<bool>(!(!var_0.x), global1.x, all(vec3<bool>(global1.x, false, false)))), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-476f, -1817f, -1431f) * vec3<f32>(-1000f, 322f, 1128f)), vec3<f32>(-397f, _wgslsmith_f_op_f32(floor(2373f)), _wgslsmith_f_op_f32(f32(-1f) * -1149f)))) + vec3<f32>(_wgslsmith_div_f32(-189f, _wgslsmith_f_op_f32(-165f + -406f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(103f)) * -1776f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(731f, 996f))))), vec3<f32>(_wgslsmith_f_op_f32(func_1()), 330f, 1177f)));
    global1 = vec4<bool>(global1.x, any(!select(!vec4<bool>(true, var_0.x, true, true), vec4<bool>(true, false, global1.x, true), vec4<bool>(global1.x, global1.x, true, false))), var_1.x >= var_1.x, any(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x))));
    let var_2 = abs(~(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 38108u, 1u, 14191u), vec4<u32>(82442u, u_input.d, 16708u, 1u)), vec4<u32>(13036u, 4294967295u, u_input.d, 0u) << (vec4<u32>(u_input.d, 0u, u_input.d, u_input.d) % vec4<u32>(32u)))));
    let var_3 = ~firstTrailingBit(~firstLeadingBit(u_input.d)) << (var_2.x % 32u);
    global0 = array<Struct_2, 31>();
    let var_4 = var_2;
    global0 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(-752f)), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-469f)) - _wgslsmith_f_op_f32(var_1.x * -532f)), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, _wgslsmith_f_op_f32(step(483f, 167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-460f * var_1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -430f, 540f, var_1.x), vec4<f32>(2153f, 523f, var_1.x, var_1.x))) + vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x, _wgslsmith_f_op_f32(func_3(vec3<bool>(var_0.x, false, global1.x))), _wgslsmith_f_op_f32(select(var_1.x, 476f, false)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, _wgslsmith_f_op_f32(-1543f + var_1.x), 1143f, 181f)))), -_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, 9896i, 0i, 17962i), ~(-vec4<i32>(0i, u_input.a, -12508i, u_input.a)), -vec4<i32>(1i, u_input.b, u_input.b, u_input.c)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1354f, -345f), vec2<f32>(var_1.x, 1324f)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, -109f)))), _wgslsmith_f_op_vec2_f32(-var_1.xy))));
}

