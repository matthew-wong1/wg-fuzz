struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(3556i, -1i, 36025i, 3431i), vec4<i32>(-1i, -1i, 7413i, 20515i), vec4<i32>(2147483647i, 28003i, 39842i, -14684i), vec4<i32>(2147483647i, -29119i, 2147483647i, 8772i), vec4<i32>(-18694i, 8492i, -59853i, 14280i), vec4<i32>(i32(-2147483648), -12755i, 9807i, i32(-2147483648)), vec4<i32>(15920i, -11398i, 0i, 2147483647i), vec4<i32>(30063i, 34983i, -38238i, 1i), vec4<i32>(53503i, 0i, 2147483647i, -5255i), vec4<i32>(17370i, i32(-2147483648), 22277i, -1i), vec4<i32>(-16649i, i32(-2147483648), i32(-2147483648), -10490i), vec4<i32>(0i, 46617i, 1i, i32(-2147483648)), vec4<i32>(22185i, 10514i, 2147483647i, 11410i), vec4<i32>(33423i, 2147483647i, 62007i, 88i), vec4<i32>(12600i, -3373i, -1i, 0i), vec4<i32>(-65811i, 62848i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 17221i, 10204i), vec4<i32>(21491i, -9075i, -41416i, -1i), vec4<i32>(38376i, 38564i, 3109i, -47168i), vec4<i32>(48208i, 10672i, i32(-2147483648), 21703i), vec4<i32>(0i, 1i, i32(-2147483648), 4288i), vec4<i32>(2147483647i, 15365i, 2147483647i, 0i), vec4<i32>(0i, 2968i, 0i, 24160i), vec4<i32>(38937i, -20583i, 1i, 9407i), vec4<i32>(2147483647i, i32(-2147483648), -41008i, -1i), vec4<i32>(-51162i, -1i, 0i, 44768i), vec4<i32>(i32(-2147483648), -1i, 0i, -59322i), vec4<i32>(4891i, -45955i, -39477i, i32(-2147483648)), vec4<i32>(0i, -5260i, 2147483647i, 72920i), vec4<i32>(2147483647i, 27084i, 1484i, -18314i), vec4<i32>(0i, 0i, -21100i, 47373i));

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: array<bool, 17> = array<bool, 17>(true, false, false, true, false, true, false, true, false, false, false, false, true, true, true, true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    global1 = array<vec4<i32>, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2757f, _wgslsmith_f_op_f32(-arg_0)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(max(global0[_wgslsmith_index_u32(countOneBits(1u), 6u)], abs(-select(global0[_wgslsmith_index_u32(127124u, 6u)], 0i, false))), vec4<bool>(false, true, any(select(select(global2.zz, global2.xz, true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 17u)], true), vec2<bool>(global2.x, false))), global2.x != global2.x));
    var var_1 = any(vec2<bool>(all(vec3<bool>(false, true, var_0.b.x)) & any(select(var_0.b, vec4<bool>(true, global3[_wgslsmith_index_u32(34622u, 17u)], false, var_0.b.x), vec4<bool>(true, global2.x, global2.x, true))), (false & !global3[_wgslsmith_index_u32(4294967295u, 17u)]) & any(vec2<bool>(var_0.b.x, true))));
    let var_2 = Struct_1(var_0.a, vec4<bool>(var_0.b.x, !(u_input.b.x > _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(0u, 6u)], u_input.b.x)), select(true, any(select(var_0.b.zx, vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 17u)]), var_0.b.x)), all(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 17u)], global3[_wgslsmith_index_u32(24383u, 17u)], false, false))), global2.x));
    let var_3 = u_input.c;
    var var_4 = !var_0.b.x;
    return _wgslsmith_div_f32(-391f, -294f);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-447f)) + _wgslsmith_f_op_f32(-arg_0.x)), Struct_1(_wgslsmith_mult_i32(u_input.b.x, 0i), select(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 17u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(13542u, 17u)], global2.x, true, global3[_wgslsmith_index_u32(13114u, 17u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_1.x, 17u)], global2.x, false))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -333f), Struct_1(u_input.b.x, vec4<bool>(true, global3[_wgslsmith_index_u32(arg_1.x, 17u)], true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-663f, arg_0.x)) * _wgslsmith_f_op_f32(func_3())))))));
    let var_1 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(-666f)));
    let var_2 = -vec3<i32>(reverseBits(2147483647i), -5864i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), -14563i), -firstLeadingBit(global0[_wgslsmith_index_u32(90896u, 6u)])));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(min(arg_0.x, 622f)))), _wgslsmith_f_op_f32(var_1.x * var_1.x));
    global3 = array<bool, 17>();
    return Struct_1(var_2.x, select(select(select(!vec4<bool>(global2.x, true, global3[_wgslsmith_index_u32(32766u, 17u)], global2.x), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(25203u, 17u)], global3[_wgslsmith_index_u32(arg_1.x, 17u)], false), !vec4<bool>(global2.x, global3[_wgslsmith_index_u32(arg_1.x, 17u)], true, global3[_wgslsmith_index_u32(arg_1.x, 17u)])), !vec4<bool>(global3[_wgslsmith_index_u32(arg_1.x, 17u)], global3[_wgslsmith_index_u32(arg_1.x, 17u)], false, false), !(true & global3[_wgslsmith_index_u32(19119u, 17u)])), vec4<bool>(true, any(select(vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 17u)]), global2.yy, global2.zx)), true, !any(vec3<bool>(global2.x, true, false))), arg_1.x >= u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global0 = array<i32, 6>();
    let var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -672f) - _wgslsmith_f_op_f32(1287f + _wgslsmith_f_op_f32(func_1(1262f, Struct_1(2147483647i, vec4<bool>(global2.x, global3[_wgslsmith_index_u32(35205u, 17u)], global2.x, false)))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(500f + -673f))))), firstLeadingBit(~(vec4<u32>(1439u, u_input.a.x, 1u, 4294967295u) ^ vec4<u32>(u_input.c, 15078u, 101789u, u_input.c)) ^ vec4<u32>(_wgslsmith_mod_u32(u_input.c, 0u), u_input.a.x, ~u_input.c, ~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(372f, 1360f)), _wgslsmith_f_op_f32(305f - -705f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1771f, var_1)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1445f, 1049f, global3[_wgslsmith_index_u32(u_input.c, 17u)])), _wgslsmith_f_op_f32(818f * -367f)), -1000f), all(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1379f, 1299f, 1267f, -1721f), vec4<f32>(519f, 519f, -571f, -963f), false)), vec4<u32>(u_input.c, u_input.a.x, 1u, u_input.a.x)).b.ww))), vec2<u32>(~_wgslsmith_clamp_u32(select(u_input.c, 42270u, var_1.b.x), u_input.c, firstLeadingBit(u_input.a.x)), reverseBits(u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1600f, 444f)) - -108f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(424f + -730f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1287f - 221f)))));
}

