struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> global2: array<u32, 3>;

var<private> global3: array<i32, 4> = array<i32, 4>(-42095i, 25007i, -24042i, 1i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: f32) -> vec3<bool> {
    global1 = Struct_1(global1.a, !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global1.a)))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(445f, arg_3) * _wgslsmith_f_op_f32(abs(-426f)))), all(vec2<bool>(all(vec4<bool>(true, true, true, true)), false)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1798f) * arg_3), -687f, _wgslsmith_f_op_f32(round(-875f)), _wgslsmith_f_op_f32(-global1.a)))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(global1.a, _wgslsmith_f_op_f32(abs(2422f)))), 1049f != global1.a, (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(38626u, u_input.e, 1u), vec3<u32>(u_input.e, 0u, arg_1)), vec3<u32>(12080u, arg_2, 0u)), 4u)] > ~u_input.a.x) || false, global1.d);
    let var_1 = Struct_1(-395f, all(select(select(select(vec2<bool>(true, var_0.c), vec2<bool>(global1.b, global1.c), vec2<bool>(var_0.b, global1.b)), !vec2<bool>(global1.b, var_0.c), true), vec2<bool>(true, true), vec2<bool>(true, true))), false, vec4<f32>(146f, _wgslsmith_div_f32(global1.a, -1622f), global1.a, global1.a));
    return select(vec3<bool>(all(select(select(vec4<bool>(true, var_0.b, true, global1.c), vec4<bool>(false, true, var_1.c, var_0.c), var_0.c), select(vec4<bool>(true, var_1.b, var_0.c, var_0.b), vec4<bool>(true, var_0.c, true, var_0.b), vec4<bool>(var_1.b, var_1.b, true, true)), vec4<bool>(global1.b, global1.b, false, true))), var_1.c, ~(7433i ^ arg_0) < (i32(-1i) * -arg_0)), !vec3<bool>(var_0.b, -6312i > (2147483647i << (arg_2 % 32u)), true), all(vec2<bool>(var_1.b, false)));
}

fn func_2() -> Struct_1 {
    let var_0 = select(func_3(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~4294967295u, 3u)], 4u)], 1u, ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.d, 3u)], _wgslsmith_mod_u32(u_input.b, 0u)), global1.a), select(select(!select(vec3<bool>(false, false, global1.c), vec3<bool>(global1.c, global1.b, global1.c), true), func_3(1i, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, 80954u), 3u)], 78543u, _wgslsmith_f_op_f32(select(-220f, global1.a, global1.b))), false), func_3(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, global3[_wgslsmith_index_u32(42044u, 4u)], -381i), global3[_wgslsmith_index_u32(24115u, 4u)] ^ 52593i), _wgslsmith_clamp_u32(~65052u, ~global2[_wgslsmith_index_u32(0u, 3u)], ~global2[_wgslsmith_index_u32(u_input.e, 3u)]), countOneBits(~0u), 1141f), !(!(!vec3<bool>(global1.b, global1.b, global1.c)))), select(vec3<bool>(true, global1.c, global1.c), !select(vec3<bool>(false, false, true), vec3<bool>(false, global1.b, true), !global1.c), vec3<bool>(true == all(vec3<bool>(true, true, global1.b)), !(false || global1.b), !(!global1.b))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(796f * global1.d.x), global1.b, global1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.d * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.d + vec4<f32>(-219f, -647f, global1.d.x, -1419f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, global1.a, 893f, global1.d.x) + global1.d) * vec4<f32>(global1.d.x, global1.a, global1.a, 699f)))));
    var var_2 = vec2<bool>(!var_0.x, false);
    global1 = Struct_1(var_1.a, !(!(true && global1.b)), _wgslsmith_mod_i32(abs(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1478u, global2[_wgslsmith_index_u32(67194u, 3u)]), 4u)]), -56876i) >= -_wgslsmith_dot_vec2_i32(u_input.a, ~vec2<i32>(0i, u_input.a.x)), vec4<f32>(-292f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1308f)) + 202f), _wgslsmith_f_op_f32(578f * _wgslsmith_f_op_f32(-var_1.d.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_div_f32(-1000f, -1000f))) + 1354f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), !(!(_wgslsmith_div_f32(var_1.a, 1000f) >= -564f)), var_0.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(var_1.d)), global1.d)));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1.d;
    global1 = func_2();
    var var_1 = arg_1;
    var var_2 = 4294967295u;
    var_1 = arg_1;
    return _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(global2[_wgslsmith_index_u32(0u, 3u)], 4294967295u, u_input.b) | vec3<u32>(0u, 35092u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.d, 3u)], u_input.c, u_input.d) << (vec3<u32>(1u, 12180u, global2[_wgslsmith_index_u32(u_input.c, 3u)]) % vec3<u32>(32u))), ~(~min(vec3<u32>(u_input.b, 37013u, 52858u), vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20776u, 3u)], 3u)], 4294967295u)))), 3u)], ~2247u);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec2<bool> {
    global3 = array<i32, 4>();
    var var_0 = _wgslsmith_div_u32(~1u, u_input.b);
    var var_1 = !select(select(select(select(vec4<bool>(false, global1.b, global1.b, global1.c), vec4<bool>(true, true, true, global1.c), false), select(vec4<bool>(false, global1.b, true, global1.c), vec4<bool>(global1.c, false, global1.b, global1.c), vec4<bool>(global1.b, true, global1.b, true)), vec4<bool>(true, global1.b, true, true)), vec4<bool>(true, global1.b, true, global1.b), true), select(!select(vec4<bool>(global1.b, global1.c, global1.c, global1.b), vec4<bool>(global1.b, global1.c, false, true), true), select(!vec4<bool>(global1.b, false, global1.b, global1.c), select(vec4<bool>(true, false, global1.c, global1.c), vec4<bool>(true, global1.b, false, global1.c), vec4<bool>(global1.b, false, false, global1.c)), false | global1.b), true), !any(select(vec4<bool>(false, false, global1.c, true), vec4<bool>(true, global1.c, false, true), global1.c)));
    var var_2 = _wgslsmith_f_op_f32(step(-1143f, _wgslsmith_f_op_f32(f32(-1f) * -581f)));
    global0 = true;
    return !func_3(min(~global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 4u)], -1i) | -49783i, ~u_input.b, global2[_wgslsmith_index_u32(abs(~abs(arg_0)), 3u)], -1313f).xz;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.d.xz)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(420f)))), global1.a)));
    let var_1 = any(func_5(func_4(-1099f, func_2()), 1i, var_0, ~(-vec2<i32>(0i, 0i)))) & !(!(u_input.a.x >= 2147483647i));
    let var_2 = select(countOneBits(vec2<u32>(60486u, 4294967295u << (0u % 32u)) >> (vec2<u32>(0u, u_input.d) % vec2<u32>(32u))), select(vec2<u32>(global2[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(57983u, 3u)] | 4294967295u), 3u)], abs(35785u)), abs(~vec2<u32>(69418u, 0u)) | max(abs(vec2<u32>(arg_0, global2[_wgslsmith_index_u32(arg_0, 3u)])), abs(vec2<u32>(1u, 46668u))), !(!select(vec2<bool>(false, global1.c), vec2<bool>(true, var_1), var_1))), select(select(func_3(_wgslsmith_sub_i32(-7979i, global3[_wgslsmith_index_u32(43573u, 4u)]), firstLeadingBit(arg_0), abs(global2[_wgslsmith_index_u32(arg_0, 3u)]), -1000f).xz, vec2<bool>(true, any(vec3<bool>(var_1, true, false))), var_1), func_5(36656u, u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.d.yw, var_0)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(19044i, -29787i), vec2<i32>(global3[_wgslsmith_index_u32(arg_0, 4u)], -50508i), vec2<bool>(var_1, var_1)), vec2<i32>(-346i, -6216i) | u_input.a)), select(vec2<bool>(var_1, !global1.b), vec2<bool>(true, !global1.b), func_3(1i, firstLeadingBit(65654u), 1u, _wgslsmith_f_op_f32(global1.d.x + global1.a)).x)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1188f, global1.d.x)));
    let var_4 = reverseBits(abs(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, var_2.x, 4294967295u), vec3<u32>(arg_0, 31226u, 0u))), (vec3<u32>(arg_0, 21242u, 4294967295u) ^ vec3<u32>(37553u, var_2.x, var_2.x)) | countOneBits(vec3<u32>(71200u, u_input.b, arg_0)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + _wgslsmith_f_op_f32(ceil(global1.a))) + var_0.x)), !(global1.b & (var_2.x < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, var_4.x, var_2.x), vec4<u32>(var_4.x, u_input.d, arg_0, var_4.x)))), select((func_2().c != all(vec3<bool>(global1.c, true, false))) & false, var_1, false), _wgslsmith_f_op_vec4_f32(global1.d - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.a, 1203f, false)), 1000f), -863f, func_2().a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * -1000f))));
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    return Struct_1(arg_0.d.x, true, arg_0.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a + arg_0.a))), _wgslsmith_f_op_f32(min(arg_0.d.x, arg_0.a)), arg_0.a, arg_0.d.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, global1.d.x, 162f, -1000f) + vec4<f32>(arg_0.d.x, arg_0.d.x, 1000f, arg_0.a)) + func_1(arg_1).d))), vec4<bool>(true, func_1(~u_input.c).b, true, global1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 3>();
    var var_0 = func_6(func_1(global2[_wgslsmith_index_u32(select(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(~0u, 3u)], u_input.e), 7382u, true), 3u)]), 31044u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 1f)), var_0.c, global1.b, vec4<f32>(1000f, func_6(func_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 3u)], 3u)], 3u)], 3u)] >> (1u % 32u)), ~firstTrailingBit(60439u)).d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(959f, global1.a))) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1175f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))))));
    var var_2 = func_1(~49585u);
    var var_3 = !func_6(func_6(Struct_1(var_1.a, true, var_2.c, var_2.d), u_input.e), ~global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)]), 3u)]).b && (global1.c & (func_6(func_2(), reverseBits(global2[_wgslsmith_index_u32(u_input.c, 3u)])).b || all(select(vec4<bool>(false, global1.c, var_0.c, var_0.c), vec4<bool>(false, global1.b, var_2.b, false), global1.c))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, var_0.a)), vec2<f32>(var_0.d.x, 1326f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(min(global1.a, var_2.a))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), 537f)));
    global3 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(194f + _wgslsmith_f_op_f32(select(896f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), 1f)), !all(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_f_op_f32(var_4.x - var_2.d.x)) - global1.d.x))), _wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-204f, func_2().a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.x), 585f))))));
}

