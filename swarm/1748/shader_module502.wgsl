struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(4294967295u, 1u, 28713u), vec4<u32>(0u, 59340u, 0u, 67263u), vec2<bool>(true, true)), Struct_1(vec3<u32>(4294967295u, 0u, 77523u), vec4<u32>(0u, 1u, 49218u, 70450u), vec2<bool>(false, true)), Struct_1(vec3<u32>(63401u, 31924u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 13868u, 6642u), vec2<bool>(true, false)), Struct_1(vec3<u32>(4294967295u, 1809u, 11994u), vec4<u32>(0u, 27550u, 8193u, 15659u), vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 4294967295u, 85607u), vec4<u32>(88953u, 19858u, 1u, 58524u), vec2<bool>(false, false)), Struct_1(vec3<u32>(17918u, 34502u, 26115u), vec4<u32>(0u, 0u, 0u, 62472u), vec2<bool>(false, false)), Struct_1(vec3<u32>(0u, 18634u, 25747u), vec4<u32>(0u, 4294967295u, 17088u, 29360u), vec2<bool>(false, true)), Struct_1(vec3<u32>(31844u, 1u, 68203u), vec4<u32>(0u, 65674u, 67404u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec3<u32>(11632u, 4294967295u, 0u), vec4<u32>(0u, 0u, 5342u, 1u), vec2<bool>(true, true)), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 5442u, 0u), vec2<bool>(true, false)), Struct_1(vec3<u32>(56684u, 16365u, 0u), vec4<u32>(1u, 0u, 13380u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec3<u32>(55062u, 0u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec2<bool>(true, true)));

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(126733u, 4028u, 1u), vec4<u32>(4294967295u, 0u, 51645u, 24927u), vec2<bool>(true, false)), Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec4<u32>(59752u, 4294967295u, 0u, 0u), vec2<bool>(true, false)), Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec4<u32>(4294967295u, 39353u, 61204u, 0u), vec2<bool>(false, true)), Struct_1(vec3<u32>(35394u, 29720u, 0u), vec4<u32>(1u, 0u, 43839u, 58913u), vec2<bool>(false, false)), Struct_1(vec3<u32>(8149u, 52784u, 0u), vec4<u32>(66464u, 46747u, 1u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec3<u32>(0u, 15330u, 20117u), vec4<u32>(4294967295u, 48393u, 35657u, 0u), vec2<bool>(true, false)), Struct_1(vec3<u32>(1u, 4294967295u, 30152u), vec4<u32>(0u, 8306u, 17114u, 57265u), vec2<bool>(false, true)), Struct_1(vec3<u32>(1716u, 45914u, 3727u), vec4<u32>(73507u, 4294967295u, 13118u, 34808u), vec2<bool>(true, true)), Struct_1(vec3<u32>(2426u, 0u, 39673u), vec4<u32>(6472u, 4294967295u, 13820u, 1u), vec2<bool>(true, false)), Struct_1(vec3<u32>(0u, 43867u, 1u), vec4<u32>(30056u, 2209u, 4294967295u, 0u), vec2<bool>(true, true)), Struct_1(vec3<u32>(1172u, 65134u, 4294967295u), vec4<u32>(102733u, 0u, 31465u, 4099u), vec2<bool>(false, false)));

var<private> global2: Struct_2 = Struct_2(vec4<bool>(false, false, true, true), vec2<bool>(false, false), Struct_1(vec3<u32>(0u, 20919u, 44815u), vec4<u32>(12493u, 0u, 0u, 102153u), vec2<bool>(false, false)));

var<private> global3: array<f32, 1> = array<f32, 1>(207f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<f32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_1 ^ u_input.a.x, 12u)];
    global1 = array<Struct_1, 11>();
    let var_1 = global1[_wgslsmith_index_u32(var_0.b.x, 11u)];
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), ~(4294967295u & _wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(1u, 1u, 65949u, var_1.a.x))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_1(~arg_2.a, reverseBits(arg_2.b << (global2.c.b % vec4<u32>(32u))), global2.a.yy);
    let var_1 = false;
    var var_2 = arg_3;
    var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(12238u, 1u), var_2.c.a.x & var_0.a.x), 1u)]) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(41044u, 1u)])) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.c.a.x, 1u)] + 760f), -1143f))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(global2.b, abs(vec2<i32>(u_input.b.x, -2147483647i)), global1[_wgslsmith_index_u32(func_2(u_input.b, global2.c.a.x, vec2<f32>(arg_1, arg_1)), 11u)], Struct_2(arg_0.a, vec2<bool>(false, arg_0.c.c.x), Struct_1(arg_0.c.b.xxx, vec4<u32>(global2.c.a.x, 37431u, global2.c.a.x, u_input.a.x), vec2<bool>(arg_2, arg_2))))))), _wgslsmith_f_op_f32(-arg_1))));
    global3 = array<f32, 1>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(119f))) - _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.a.x, 1u)]))) - _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = Struct_1(arg_0.c.b.wyz, _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_0.c.b.x, 5285u), 1u, _wgslsmith_dot_vec4_u32(global2.c.b, arg_0.c.b), max(1u, 11874u)) & (~global2.c.b >> (~global2.c.b % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(34913u, u_input.a.x, u_input.a.x, 0u), ~vec4<u32>(55142u, 4294967295u, 21922u, 1u))), arg_0.b);
    var var_3 = global0[_wgslsmith_index_u32(14940u, 12u)];
    return ~vec4<i32>(10855i, ~(-2147483647i), -(u_input.b.x >> (select(arg_0.c.a.x, u_input.a.x, false) % 32u)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.x;
    var var_1 = vec2<bool>(any(select(vec2<bool>(global2.b.x, global2.a.x), vec2<bool>(true, all(vec3<bool>(global2.c.c.x, false, false))), global2.c.c)), all(global2.c.c));
    var_1 = !global2.a.wy;
    var var_2 = global2.c;
    var var_3 = func_1(Struct_2(vec4<bool>(true, true, true, true), vec2<bool>(!(false == var_2.c.x), _wgslsmith_f_op_f32(abs(-964f)) == _wgslsmith_f_op_f32(trunc(-142f))), Struct_1(vec3<u32>(246u | u_input.a.x, 34071u, _wgslsmith_dot_vec4_u32(global2.c.b, global2.c.b)), var_2.b << (vec4<u32>(u_input.a.x, u_input.a.x, global2.c.a.x, 1u) % vec4<u32>(32u)), select(!var_2.c, !var_2.c, select(vec2<bool>(var_1.x, false), vec2<bool>(false, true), vec2<bool>(false, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-614f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.c.a.x, 1u)] - -1105f))) - -1218f), ~7404u <= _wgslsmith_mult_u32(u_input.a.x, ~36607u));
    var var_4 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(global2.c.a, vec3<u32>(4294967295u, ~var_2.a.x, 0u)), _wgslsmith_mult_vec3_u32(select(var_2.b.zyw, var_2.a, vec3<bool>(false, true, var_1.x)), select(global2.c.a, vec3<u32>(var_2.b.x, global2.c.a.x, global2.c.a.x), global2.a.xxx)) << (var_2.a % vec3<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec2_u32(~select(global2.c.a.xz, u_input.a, var_2.c), firstLeadingBit(vec2<u32>(global2.c.a.x, 18254u) >> (vec2<u32>(37599u, 36850u) % vec2<u32>(32u)))), ~_wgslsmith_add_u32(~var_2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, global2.c.b.x), u_input.a)), ~var_2.b.x, _wgslsmith_clamp_u32(countOneBits(~1u), ~global2.c.b.x, u_input.a.x)), vec2<bool>(all(global2.a), all(vec2<bool>(!var_1.x, select(var_1.x, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1792f, global3[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)]))) - vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_4.b.x, 1u)]), _wgslsmith_f_op_f32(-1167f - -837f), -1069f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 1u)] - 1124f)), global3[_wgslsmith_index_u32(29794u, 1u)], _wgslsmith_f_op_f32(423f + _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(var_4.a.x, 1u)])))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)], -2875f) * vec3<f32>(-1054f, 1000f, global3[_wgslsmith_index_u32(1u, 1u)]))))))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.c.a.x, 1u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1045f)))), vec3<u32>(~_wgslsmith_sub_u32(~34026u, reverseBits(global2.c.b.x)), u_input.a.x, countOneBits(global2.c.b.x ^ u_input.a.x) >> ((1u << (abs(var_4.a.x) % 32u)) % 32u)), -35010i);
}

