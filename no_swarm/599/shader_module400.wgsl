struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<f32, 27> = array<f32, 27>(-1164f, 765f, -113f, 873f, 2393f, -1000f, -620f, 837f, 263f, 2882f, -1000f, -2316f, 1829f, 2167f, 542f, 167f, -1000f, 1000f, -1000f, -236f, 1286f, 1741f, 281f, 343f, -187f, 1406f, -1371f);

var<private> global2: array<i32, 29>;

var<private> global3: array<bool, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec2<i32> {
    var var_0 = select(vec4<bool>(!(!(global3[_wgslsmith_index_u32(arg_1.x, 15u)] | false)), all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], true, global3[_wgslsmith_index_u32(arg_1.x, 15u)], !global3[_wgslsmith_index_u32(1u, 15u)])), false, select(_wgslsmith_f_op_f32(1974f * 510f) >= global1[_wgslsmith_index_u32(~arg_1.x, 27u)], global3[_wgslsmith_index_u32(arg_1.x, 15u)] && true, true)), vec4<bool>((any(vec4<bool>(global3[_wgslsmith_index_u32(arg_1.x, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)], false, false)) & select(global3[_wgslsmith_index_u32(4294967295u, 15u)], false, false)) && all(!vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(0u, 15u)])), u_input.a.x <= countOneBits(1u), true, false), select(!(!(!vec4<bool>(global3[_wgslsmith_index_u32(90354u, 15u)], false, false, global3[_wgslsmith_index_u32(4294967295u, 15u)]))), !(!vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(62142u, 15u)])), select(true, any(select(vec2<bool>(global3[_wgslsmith_index_u32(arg_1.x, 15u)], true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)]), false)), true)));
    global3 = array<bool, 15>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x, 6923u), 27u)], 138f), vec2<f32>(-2403f, global1[_wgslsmith_index_u32(1u, 27u)]))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(arg_1.x, 27u)], -484f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-387f, global1[_wgslsmith_index_u32(arg_1.x, 27u)]) - vec2<f32>(global1[_wgslsmith_index_u32(65420u, 27u)], -594f))))));
    var var_2 = select(!vec4<bool>(true, select(!global3[_wgslsmith_index_u32(4294967295u, 15u)], true, true), !all(vec3<bool>(var_0.x, true, false)), !(!global3[_wgslsmith_index_u32(arg_1.x, 15u)])), vec4<bool>(all(vec4<bool>(var_0.x, !global3[_wgslsmith_index_u32(u_input.a.x, 15u)], u_input.a.x == u_input.a.x, true)), !select(global3[_wgslsmith_index_u32(1u, 15u)] | false, true, true), !(!(0i <= global2[_wgslsmith_index_u32(arg_1.x, 29u)])), !select(all(var_0.xzy), true, true)), select(arg_0.a, arg_0.a, all(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)], true)) && (false == global3[_wgslsmith_index_u32(1u, 15u)])) >= firstTrailingBit(1i));
    global3 = array<bool, 15>();
    return vec2<i32>(-34049i, max(_wgslsmith_mult_i32(-1i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), 29u)]), firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u << (arg_1.x % 32u), 29u)]))) >> (u_input.a % vec2<u32>(32u));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = vec3<u32>(u_input.a.x, ~abs(u_input.a.x), u_input.a.x);
    let var_1 = Struct_2(firstTrailingBit(_wgslsmith_mod_i32(~countOneBits(4325i), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(14415u, _wgslsmith_div_u32(var_0.x, 0u)), 29u)])));
    global0 = ~(~_wgslsmith_div_u32(~u_input.a.x, 4294967295u)) ^ var_0.x;
    var var_2 = 1204f;
    let var_3 = Struct_3(Struct_1(~func_3(Struct_2(1i), ~vec3<u32>(0u, 20448u, var_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(443f, -1518f) * vec2<f32>(arg_0, 412f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(-1000f * 1000f), _wgslsmith_f_op_f32(floor(-326f)))), global1[_wgslsmith_index_u32(~4294967295u, 27u)]), firstTrailingBit(countOneBits(vec4<i32>(9853i, var_1.a, -18211i, -20435i) << (vec4<u32>(u_input.a.x, 21503u, 1u, 18027u) % vec4<u32>(32u)))) & _wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(select(u_input.a.x, 16194u, true), 29u)], -2147483647i, 24187i ^ var_1.a, firstTrailingBit(69819i)), vec4<i32>(-var_1.a, -global2[_wgslsmith_index_u32(1u, 29u)], -16217i, 12520i ^ global2[_wgslsmith_index_u32(var_0.x, 29u)])), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(16098u, 0u, var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<u32>(63711u, var_0.x, 0u)))), global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~var_0.x >> (var_0.x % 32u), ~(~0u)), 15u)]);
    return Struct_2(_wgslsmith_add_i32(33040i, i32(-1i) * -(~(-21913i))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    global0 = u_input.a.x;
    let var_0 = Struct_2(~(~0i));
    var var_1 = vec4<f32>(arg_2.c, arg_2.c, _wgslsmith_f_op_f32(ceil(arg_2.c)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(12061u), 27u)]));
    var var_2 = arg_2.a;
    var var_3 = abs(countOneBits(~(~(-vec3<i32>(var_0.a, var_2.x, -2147483647i)))));
    return arg_1.yx;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    global1 = array<f32, 27>();
    var var_0 = 5476u;
    var var_1 = vec2<i32>(_wgslsmith_div_i32(-2147483647i, global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(69206u, 103084u)), 29u)]), abs(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(31601u & ~u_input.a.x, 29u)], global2[_wgslsmith_index_u32(~u_input.a.x, 29u)])));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1139f))));
    let var_3 = all(func_4(func_2(var_2), !select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], true), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], true, global3[_wgslsmith_index_u32(1u, 15u)], false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], true, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(104132u, 15u)], global3[_wgslsmith_index_u32(7428u, 15u)], global3[_wgslsmith_index_u32(1u, 15u)])), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(5569u, 1u), 15u)]), arg_0, Struct_2(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, global2[_wgslsmith_index_u32(0u, 29u)], arg_0.a.x), vec3<i32>(arg_0.a.x, arg_0.a.x, -2147483647i)))));
    return abs(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 36304u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) & ~reverseBits(vec3<u32>(u_input.a.x, 0u, 2594u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec2<i32>(0i, -(~global2[_wgslsmith_index_u32(65117u, 29u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]), vec2<f32>(global1[_wgslsmith_index_u32(14987u, 27u)], global1[_wgslsmith_index_u32(46850u, 27u)]), global3[_wgslsmith_index_u32(u_input.a.x, 15u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-468f, -419f) * vec2<f32>(-929f, global1[_wgslsmith_index_u32(u_input.a.x, 27u)])))), global1[_wgslsmith_index_u32(40407u, 27u)]));
    var var_1 = 2147483647i;
    var var_2 = Struct_3(Struct_1(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 1i), vec2<i32>(global2[_wgslsmith_index_u32(var_0.x, 29u)], -1270i)), vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) + global1[_wgslsmith_index_u32(52677u, 27u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 27u)])))), reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u & var_0.x, 29u)], i32(-1i) * -1i, global2[_wgslsmith_index_u32(var_0.x | var_0.x, 29u)], global2[_wgslsmith_index_u32(firstTrailingBit(0u), 29u)])) >> (vec4<u32>(1u, u_input.a.x, ~1u, abs(~var_0.x)) % vec4<u32>(32u)), firstTrailingBit(min(~(~var_0.x), var_0.x)), false);
    var var_3 = vec3<u32>(1u, 21302u, u_input.a.x);
    var var_4 = var_2.a;
    let var_5 = var_2.d;
    var_3 = var_0;
    let var_6 = 64035u & abs((max(var_2.c, var_3.x) << (29107u % 32u)) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12290u, 4294967295u, var_2.c, u_input.a.x), vec4<u32>(5285u, 1u, var_3.x, var_0.x)), 42510u) % 32u));
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, 2159f, vec4<f32>(_wgslsmith_f_op_f32(var_2.a.c - _wgslsmith_div_f32(var_4.b.x, var_4.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1910f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_3.x, 27u)] - var_4.c)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c))));
}

