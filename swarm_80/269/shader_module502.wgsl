struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, vec3<i32>(i32(-2147483648), 2147483647i, -1i), 57541u, 87099u, 2147483647i);

var<private> global1: vec3<i32>;

var<private> global2: vec3<f32>;

var<private> global3: array<f32, 18>;

var<private> global4: array<bool, 28> = array<bool, 28>(false, true, true, true, true, true, true, true, true, true, true, true, false, false, false, true, false, true, true, true, true, false, true, true, false, true, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>, arg_3: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_div_i32(~_wgslsmith_sub_i32(global0.e, _wgslsmith_dot_vec4_i32(vec4<i32>(-21756i, 1i, arg_0.b.x, -4549i), vec4<i32>(arg_0.e, global0.e, 0i, arg_1))), global1.x) >> (_wgslsmith_sub_u32(~(~(~u_input.b.x)), 0u) % 32u);
    global0 = Struct_3(arg_0.a, arg_0.b, global0.c, _wgslsmith_sub_u32(1u, 0u), arg_1);
    global0 = arg_0;
    global4 = array<bool, 28>();
    global0 = arg_0;
    return global4[_wgslsmith_index_u32(~1u, 28u)] || arg_0.a;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5) -> f32 {
    let var_0 = vec2<bool>(global3[_wgslsmith_index_u32(21946u, 18u)] != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(34883u, 18u)] - -1023f)))), all(select(select(!vec3<bool>(true, false, global4[_wgslsmith_index_u32(0u, 28u)]), !vec3<bool>(true, arg_0.a, false), vec3<bool>(global0.a, true, false)), vec3<bool>(arg_0.a, false, true), vec3<bool>(true, func_3(arg_0, global0.b.x, u_input.b, vec2<u32>(1u, arg_0.c)), arg_0.a))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec2_u32(~u_input.a, reverseBits(vec2<u32>(arg_0.d, max(19748u, 17438u))));
    var_2 = 248u;
    global0 = arg_0;
    return _wgslsmith_f_op_f32(ceil(-337f));
}

fn func_1(arg_0: bool) -> Struct_5 {
    var var_0 = ~(~_wgslsmith_add_vec3_i32(global0.b, vec3<i32>(-192i, 0i, -global1.x)));
    global3 = array<f32, 18>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-784f))))), _wgslsmith_f_op_f32(func_2(Struct_3(select(global0.a, global0.a, !arg_0), global0.b, u_input.b.x, u_input.a.x, var_0.x ^ global1.x), Struct_5(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(37965u, 18u)], -1882f, global3[_wgslsmith_index_u32(61235u, 18u)], global2.x)))), -21895i))), -838f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))))));
    let var_2 = vec3<f32>(-2024f, _wgslsmith_f_op_f32(func_2(Struct_3(true, vec3<i32>(i32(-1i) * -45982i, 2147483647i, firstTrailingBit(global1.x)), firstLeadingBit(128307u), firstLeadingBit(~4294967295u), firstTrailingBit(min(-1i, 50345i))), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -841f, -523f, global3[_wgslsmith_index_u32(u_input.a.x, 18u)]) + vec4<f32>(774f, 1490f, -125f, var_1.x))), -4677i))), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(4294967295u << (global0.d % 32u)), _wgslsmith_mult_u32(0u << (u_input.a.x % 32u), 4294967295u)), 18u)])));
    global4 = array<bool, 28>();
    return Struct_5(var_1, countOneBits(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(global1.x, global1.x)), vec2<i32>(-1i, 296i))));
}

fn func_4(arg_0: Struct_5) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1392f + -139f)), 722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) + _wgslsmith_f_op_f32(abs(-435f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1348f, global2.x, 218f, -259f)))), _wgslsmith_f_op_vec4_f32(func_4(func_1(false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(717f, global3[_wgslsmith_index_u32(108223u, 18u)], 1521f, global3[_wgslsmith_index_u32(8045u, 18u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1682f, 1114f, global3[_wgslsmith_index_u32(35940u, 18u)], global2.x), vec4<f32>(global3[_wgslsmith_index_u32(11904u, 18u)], global2.x, -600f, -234f), true)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 554f, global3[_wgslsmith_index_u32(0u, 18u)], -809f), vec4<f32>(global3[_wgslsmith_index_u32(global0.d, 18u)], -750f, global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1574f, global3[_wgslsmith_index_u32(4294967295u, 18u)], -1249f, 1506f))))))))));
    global2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-599f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(61019u, 18u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 18u)] - global3[_wgslsmith_index_u32(22604u, 18u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(91019u, 18u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(false, global0.b, global0.d, u_input.a.x, -3325i), func_1(global4[_wgslsmith_index_u32(113913u, 28u)]))) - global3[_wgslsmith_index_u32(~select(25896u, u_input.b.x, global4[_wgslsmith_index_u32(49118u, 28u)]), 18u)]))));
    let var_1 = vec2<u32>(_wgslsmith_div_u32(~(~46582u), 20480u >> (select(firstTrailingBit(u_input.a.x), ~global0.d, false) % 32u)), 1u);
    let var_2 = Struct_3(!(true && global0.a), global0.b & global0.b, firstLeadingBit(global0.c), ~25933u, 0i);
    var var_3 = Struct_3(false, var_2.b, _wgslsmith_mod_u32(1u, 1u), reverseBits(4294967295u), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.e, global0.e, -2147483647i, 12526i), ~vec4<i32>(-2147483647i, 20284i, 2147483647i, -2147483647i), select(vec4<bool>(var_2.a, true, global4[_wgslsmith_index_u32(64657u, 28u)], global4[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec4<bool>(var_2.a, global0.a, var_2.a, var_2.a), global4[_wgslsmith_index_u32(u_input.b.x, 28u)])), vec4<i32>(-1i ^ global0.b.x, ~global0.e, 21542i, -global1.x)));
    global3 = array<f32, 18>();
    var var_4 = vec4<bool>(any(vec2<bool>(true, true)), !((var_3.e < -var_3.e) || true), any(vec3<bool>(!(!global4[_wgslsmith_index_u32(4294967295u, 28u)]), !global0.a, !select(var_2.a, var_2.a, var_3.a))), false);
    global2 = var_0.zzw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -1319f) * _wgslsmith_f_op_f32(-var_0.x)), -1126f), _wgslsmith_f_op_vec4_f32(func_4(func_1(!global4[_wgslsmith_index_u32(4294967295u, 28u)]))))), _wgslsmith_dot_vec4_u32(~(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(48145u, global0.d, var_1.x, u_input.a.x)) ^ vec4<u32>(0u, var_1.x, global0.c, var_2.d)), u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, _wgslsmith_f_op_f32(635f * -660f), _wgslsmith_f_op_f32(f32(-1f) * -2275f))))), vec3<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - global3[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_f32(floor(global2.x)))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(var_2.c, var_2.c, select(var_4.x, global0.a, false)), 18u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_div_f32(-376f, _wgslsmith_f_op_f32(-global2.x)))));
}

