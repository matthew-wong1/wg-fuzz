struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(-1i, true, Struct_1(17584i, vec2<i32>(-4473i, -1i)), vec4<bool>(false, false, false, true), Struct_1(-19496i, vec2<i32>(-67535i, -31252i))), Struct_2(-68839i, false, Struct_1(-41959i, vec2<i32>(-1i, 2147483647i)), vec4<bool>(false, false, true, false), Struct_1(-1i, vec2<i32>(-23042i, i32(-2147483648)))), Struct_2(2147483647i, false, Struct_1(0i, vec2<i32>(2147483647i, -51707i)), vec4<bool>(true, false, true, false), Struct_1(-1i, vec2<i32>(-1i, -17258i))), Struct_2(-48453i, true, Struct_1(-1108i, vec2<i32>(1i, -18700i)), vec4<bool>(true, false, false, false), Struct_1(i32(-2147483648), vec2<i32>(41800i, 0i))), Struct_2(0i, false, Struct_1(1i, vec2<i32>(i32(-2147483648), 58631i)), vec4<bool>(true, false, true, false), Struct_1(2147483647i, vec2<i32>(23327i, 2147483647i))), Struct_2(2147483647i, true, Struct_1(61596i, vec2<i32>(26754i, 7872i)), vec4<bool>(false, true, false, true), Struct_1(-12132i, vec2<i32>(-38118i, 36869i))), Struct_2(-65864i, true, Struct_1(15294i, vec2<i32>(i32(-2147483648), i32(-2147483648))), vec4<bool>(true, true, false, true), Struct_1(-10699i, vec2<i32>(0i, -14806i))), Struct_2(1i, true, Struct_1(-6766i, vec2<i32>(-1i, 2147483647i)), vec4<bool>(true, true, false, false), Struct_1(7163i, vec2<i32>(55536i, 2147483647i))), Struct_2(i32(-2147483648), false, Struct_1(i32(-2147483648), vec2<i32>(i32(-2147483648), 84513i)), vec4<bool>(false, true, true, false), Struct_1(2147483647i, vec2<i32>(22274i, 2147483647i))), Struct_2(i32(-2147483648), true, Struct_1(-36668i, vec2<i32>(-26363i, -1i)), vec4<bool>(false, false, true, false), Struct_1(-1i, vec2<i32>(i32(-2147483648), 3611i))));

var<private> global1: array<i32, 16>;

var<private> global2: array<i32, 10>;

var<private> global3: array<f32, 15> = array<f32, 15>(550f, 973f, 1470f, 634f, -1139f, 1321f, 1398f, 261f, -2038f, 794f, -197f, -990f, 2175f, -1178f, 590f);

var<private> global4: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(1064f, Struct_1(7863i, vec2<i32>(-10711i, 1i))), Struct_4(-1034f, Struct_1(-20643i, vec2<i32>(41529i, 1i))), Struct_4(1076f, Struct_1(-14806i, vec2<i32>(33869i, -56679i))), Struct_4(-120f, Struct_1(2147483647i, vec2<i32>(1i, -43810i))), Struct_4(-532f, Struct_1(1i, vec2<i32>(-8597i, 9011i))), Struct_4(-1392f, Struct_1(14751i, vec2<i32>(-36068i, 1i))), Struct_4(912f, Struct_1(21987i, vec2<i32>(-21844i, 12435i))), Struct_4(1711f, Struct_1(31036i, vec2<i32>(12149i, 68617i))), Struct_4(118f, Struct_1(-23616i, vec2<i32>(-2013i, 0i))), Struct_4(-397f, Struct_1(10587i, vec2<i32>(34137i, -37909i))), Struct_4(1245f, Struct_1(0i, vec2<i32>(-45271i, -16940i))), Struct_4(-578f, Struct_1(-16314i, vec2<i32>(-21210i, -1i))), Struct_4(202f, Struct_1(2147483647i, vec2<i32>(-35685i, -1i))), Struct_4(-660f, Struct_1(-67621i, vec2<i32>(-61240i, 1i))), Struct_4(-947f, Struct_1(2147483647i, vec2<i32>(-23282i, 2147483647i))), Struct_4(1325f, Struct_1(53437i, vec2<i32>(21163i, 37079i))), Struct_4(-309f, Struct_1(-35827i, vec2<i32>(-6484i, 1i))), Struct_4(-101f, Struct_1(1i, vec2<i32>(-1i, 1i))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(max(_wgslsmith_clamp_i32(-global2[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 10u)], -1199i, global1[_wgslsmith_index_u32(~(u_input.a.x | u_input.a.x), 16u)]), -(~1i)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(26148i, -2147483647i), u_input.b, _wgslsmith_clamp_i32(u_input.b, 1i, u_input.b)), 0i), countOneBits(~(-57546i))));
    var var_1 = var_0;
    var var_2 = global4[_wgslsmith_index_u32(u_input.a.x, 18u)];
    var var_3 = Struct_3(~1u);
    return global3[_wgslsmith_index_u32(~(0u | var_3.a), 15u)];
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = 65601u;
    global3 = array<f32, 15>();
    var var_2 = abs(vec3<i32>(abs(u_input.b) & global2[_wgslsmith_index_u32(~14558u, 10u)], ~abs(u_input.b), -1i) >> (vec3<u32>(u_input.a.x, abs(26199u), ~40474u | (u_input.a.x >> (260u % 32u))) % vec3<u32>(32u)));
    var var_3 = -vec3<i32>(global1[_wgslsmith_index_u32(27113u, 16u)], firstTrailingBit(~firstLeadingBit(global1[_wgslsmith_index_u32(var_1, 16u)])), global1[_wgslsmith_index_u32(select(u_input.a.x, var_1, true) << (~var_1 % 32u), 16u)] & firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(30624u, 79406u), 10u)]));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(4294967295u, 15u)])), 490f)), Struct_1(~(-2147483647i), vec2<i32>(12510i, min(global2[_wgslsmith_index_u32(~var_1, 10u)], _wgslsmith_div_i32(1i, -1i)))));
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> vec2<i32> {
    global0 = array<Struct_2, 10>();
    var var_0 = Struct_3(~(~(~(u_input.a.x << (4294967295u % 32u)))));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(~1i, -10539i), select(~arg_0.b.b, (arg_0.b.b ^ (arg_0.b.b >> (u_input.a % vec2<u32>(32u)))) & vec2<i32>(_wgslsmith_mod_i32(-1i, u_input.b), global2[_wgslsmith_index_u32(abs(var_0.a), 10u)]), true));
    var var_2 = func_2();
    let var_3 = vec4<bool>(_wgslsmith_mod_i32(var_2.b.b.x, ~global1[_wgslsmith_index_u32(var_0.a, 16u)]) > _wgslsmith_add_i32(_wgslsmith_mult_i32(~38053i, ~(-1i)), arg_0.b.a), 672f > _wgslsmith_f_op_f32(trunc(-1326f)), !any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false))), true);
    return select(countOneBits(vec2<i32>(~1i, 47119i)), arg_0.b.b, var_3.x && var_3.x);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = ~1u;
    global3 = array<f32, 15>();
    var var_1 = !(true && arg_1.d.x);
    var var_2 = select(select(arg_1.d.xwx, select(arg_1.d.xyw, arg_1.d.www, arg_1.b), arg_1.b), select(arg_1.d.xzy, arg_1.d.xyx, arg_1.d.wwz), vec3<bool>(select(arg_0, ~1u, 2147483647i == global1[_wgslsmith_index_u32(0u, 16u)]) >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, 0u), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x)), false, !(arg_1.d.x && !arg_1.b)));
    let var_3 = 29991i;
    return Struct_1(_wgslsmith_div_i32(-(select(var_3, arg_2.x, var_2.x) << (~0u % 32u)), 2121i), -func_4(func_2(), func_2().b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_div_f32(-1406f, 658f), func_1(u_input.a.x, global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 10u)], vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(-55018i, -1i)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.b, u_input.b)), vec3<i32>(-1i, 1i, 2147483647i)))));
    global3 = array<f32, 15>();
    global3 = array<f32, 15>();
    let var_1 = 961u;
    var var_2 = Struct_2(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(10750u, 10u)], ~1i), any(vec4<bool>(true, true, true, true)), Struct_1(-2147483647i, -((var_0.b.b << (vec2<u32>(37873u, var_1) % vec2<u32>(32u))) & var_0.b.b)), vec4<bool>(269f != _wgslsmith_f_op_f32(-var_0.a), (true | (u_input.b < var_0.b.b.x)) || select(false, true, true), select(_wgslsmith_f_op_f32(func_3()) < 1000f, select(u_input.b == global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global3[_wgslsmith_index_u32(41155u, 15u)] > 910f, true), true), false), Struct_1(~global1[_wgslsmith_index_u32(0u, 16u)], select(vec2<i32>(-u_input.b, -var_0.b.b.x), vec2<i32>(min(global1[_wgslsmith_index_u32(29842u, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), ~1i), any(vec3<bool>(true, true, true)))));
    let var_3 = Struct_4(var_0.a, Struct_1(2147483647i >> (var_1 % 32u), vec2<i32>(2147483647i | _wgslsmith_mult_i32(var_2.c.a, var_2.a), -2147483647i)));
    let var_4 = vec3<bool>(var_2.b, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(608f, var_0.a), _wgslsmith_f_op_f32(ceil(605f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(13205u, 15u)], 317f), vec2<f32>(var_3.a, var_0.a), var_2.d.yy)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(743f, -1490f))), true))))));
}

