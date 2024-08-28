struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: u32 = 75158u;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, 14910u, vec2<f32>(-626f, 314f), vec3<f32>(-1224f, -579f, 347f)), Struct_1(true, 20828u, vec2<f32>(1162f, -1964f), vec3<f32>(1315f, 331f, -786f)), Struct_1(false, 78343u, vec2<f32>(319f, 231f), vec3<f32>(275f, 950f, -194f)), Struct_1(false, 15021u, vec2<f32>(404f, 1176f), vec3<f32>(-1000f, -1571f, 686f)), Struct_1(false, 34484u, vec2<f32>(1312f, 338f), vec3<f32>(-1483f, -1893f, -1361f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 23>();
    var var_0 = vec4<bool>(false, global2.x, !global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1073f, _wgslsmith_f_op_f32(trunc(1216f)), any(vec4<bool>(false, false, global2.x, global2.x)))))) == _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(-2131f, _wgslsmith_f_op_f32(round(-1000f))))));
    var var_1 = select(firstLeadingBit(1i), ~u_input.b.x, any(select(!vec2<bool>(global2.x, var_0.x), global2.zy, select(vec2<bool>(true, false), var_0.xz, var_0.ww)))) >> (((_wgslsmith_add_u32(u_input.a, u_input.a) & ~0u) >> (u_input.a % 32u)) % 32u);
    global2 = select(select(select(!(!vec3<bool>(false, var_0.x, global2.x)), !(!vec3<bool>(var_0.x, var_0.x, true)), var_0.x), select(vec3<bool>(true, true, true), select(select(vec3<bool>(global2.x, false, true), var_0.wyz, vec3<bool>(false, false, true)), var_0.zyy, !global2.x), !select(var_0.wxy, var_0.wwy, vec3<bool>(true, false, var_0.x))), !global2.x), !var_0.xxz, vec3<bool>(any(select(vec4<bool>(var_0.x, true, global2.x, global2.x), vec4<bool>(var_0.x, true, var_0.x, false), false)), global2.x | !var_0.x, var_0.x));
    let var_2 = ~_wgslsmith_sub_u32(~abs(4294967295u), ~(~31415u) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 37135u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 37444u), vec3<u32>(u_input.a, u_input.a, 42141u))));
    return var_2;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    global1 = ~546u;
    let var_0 = Struct_2(Struct_1(true, abs(func_3()), arg_0.c, vec3<f32>(arg_1.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1204f * arg_1.a.c.x)), -641f)), arg_1.b, arg_1.c, select(!arg_1.d, vec3<bool>(true, all(!vec4<bool>(global2.x, global2.x, false, true)), global2.x), !arg_1.d.x));
    let var_1 = vec4<bool>(true, arg_0.a || false, true, true);
    let var_2 = Struct_1(true, ~_wgslsmith_mod_u32(52981u, ~(~86982u)), vec2<f32>(677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.d.x + arg_2)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.d) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x + var_0.a.d.x), _wgslsmith_f_op_f32(trunc(415f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.a.d.x, -697f)), 1129f))))));
    return Struct_2(Struct_1(true, 64096u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.d.xz - var_2.d.yy))), var_0.a.d), vec2<u32>(abs(4294967295u), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.b, arg_1.b.x, 131733u), vec4<u32>(arg_0.b, 1u, u_input.a, arg_0.b)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_0.b.x, arg_0.b, 41464u)), ~vec3<u32>(arg_1.a.b, u_input.a, var_2.b)))), Struct_1(true, _wgslsmith_mod_u32(~u_input.a, _wgslsmith_sub_u32(~79773u, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(arg_0.c))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_2.d * vec3<f32>(var_0.a.c.x, 861f, arg_0.c.x)), arg_0.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -791f, arg_0.d.x) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-787f, var_0.a.c.x, var_2.d.x)))))), !select(!(!var_0.d), var_0.d, var_0.d));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    let var_0 = func_2(Struct_1(!arg_1.c.a, 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-657f, arg_0.x) * arg_0.zz)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_1.a.d.x) * _wgslsmith_f_op_f32(f32(-1f) * -2046f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1547f))), arg_0.x)), arg_1, _wgslsmith_f_op_f32(step(-1350f, -792f)));
    let var_1 = func_2(func_2(func_2(Struct_1(true, 4294967295u, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c.d.x, var_0.c.c.x), arg_1.c.d.yz), arg_1.a.d), Struct_2(Struct_1(global2.x, 27880u, vec2<f32>(var_0.a.d.x, arg_1.a.d.x), vec3<f32>(1215f, var_0.a.c.x, 520f)), vec2<u32>(var_0.b.x, 126725u), Struct_1(arg_1.a.a, 33633u, vec2<f32>(arg_0.x, 427f), vec3<f32>(arg_1.a.c.x, arg_0.x, var_0.a.d.x)), vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1927f)))).a, Struct_2(var_0.a, arg_1.b, global0[_wgslsmith_index_u32(abs(u_input.a), 23u)], vec3<bool>(false, !var_0.a.a, false)), 369f).a, func_2(Struct_1(true || !var_0.d.x, var_0.c.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.d.x, 1563f)), arg_0), func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(89220u, u_input.a, 79203u, 0u), vec4<u32>(arg_1.b.x, 1u, 27215u, var_0.b.x)), 5u)], func_2(Struct_1(false, 1u, vec2<f32>(arg_0.x, 1753f), var_0.a.d), func_2(Struct_1(true, var_0.a.b, arg_0.yy, var_0.c.d), var_0, var_0.a.c.x), _wgslsmith_f_op_f32(arg_0.x + var_0.a.c.x)), -168f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1840f, 143f, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -380f))))), -714f).c;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-765f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.c.d.x)))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(573f + arg_0.x) * _wgslsmith_f_op_f32(1567f + 1000f))))));
    global1 = ~0u;
    global1 = _wgslsmith_div_u32(select(~u_input.a, var_1.b, true), _wgslsmith_sub_u32(u_input.a, ~func_2(func_2(Struct_1(true, 113791u, arg_1.a.d.yx, arg_0), arg_1, var_2.x).c, Struct_2(var_1, arg_1.b, global0[_wgslsmith_index_u32(var_0.b.x, 23u)], var_0.d), -973f).b.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(315f + -241f) * 677f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.a, 5u)];
    let var_1 = vec2<i32>(-10489i, 13591i);
    var var_2 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.b, 0u), 5u)], abs(~(select(vec2<u32>(u_input.a, 28240u), vec2<u32>(var_0.b, 66125u), true) ^ abs(vec2<u32>(u_input.a, var_0.b)))), Struct_1(global2.x, ~var_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x + var_0.c.x), _wgslsmith_f_op_f32(func_1(var_0.d, Struct_2(Struct_1(false, var_0.b, vec2<f32>(-223f, 475f), vec3<f32>(var_0.c.x, var_0.c.x, var_0.d.x)), vec2<u32>(1u, 46550u), Struct_1(true, var_0.b, var_0.d.zx, var_0.d), vec3<bool>(true, false, true))))) + vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 164f, 186f) * vec3<f32>(-460f, -904f, 117f)))))), vec3<bool>(true, global2.x, true));
    global2 = vec3<bool>(var_0.a & all(func_2(func_2(global0[_wgslsmith_index_u32(var_0.b, 23u)], Struct_2(global0[_wgslsmith_index_u32(1u, 23u)], vec2<u32>(var_0.b, var_0.b), var_2.a, var_2.d), var_0.d.x).c, func_2(Struct_1(var_0.a, 23376u, vec2<f32>(var_0.c.x, -105f), vec3<f32>(var_2.c.c.x, var_0.c.x, -928f)), Struct_2(var_2.c, var_2.b, global0[_wgslsmith_index_u32(0u, 23u)], vec3<bool>(true, global2.x, var_0.a)), var_2.a.c.x), -1823f).d), false, !(all(vec2<bool>(false, var_0.a)) == all(var_2.d.xz)) && !func_2(Struct_1(false, 0u, var_2.c.d.xx, var_0.d), Struct_2(Struct_1(global2.x, 4294967295u, var_0.c, var_2.c.d), vec2<u32>(1u, 0u), Struct_1(var_0.a, 0u, var_2.a.c, var_0.d), vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -820f)).c.a);
    var_2 = Struct_2(Struct_1(true, var_2.a.b, var_0.c, var_2.a.d), (firstLeadingBit(~var_2.b) ^ abs(~var_2.b)) ^ vec2<u32>(var_2.a.b, max(var_0.b << (u_input.a % 32u), ~11228u)), func_2(Struct_1(!var_2.c.a, 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-518f, 864f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-429f, -441f), vec2<f32>(1338f, var_0.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(-257f * 1289f), -292f, 570f)), Struct_2(func_2(func_2(global3[_wgslsmith_index_u32(46984u, 5u)], Struct_2(Struct_1(false, 61125u, vec2<f32>(-391f, var_2.c.c.x), var_0.d), vec2<u32>(var_0.b, 20461u), global3[_wgslsmith_index_u32(4294967295u, 5u)], var_2.d), -327f).c, func_2(var_2.c, Struct_2(Struct_1(true, var_2.c.b, var_0.d.xz, var_2.c.d), var_2.b, global0[_wgslsmith_index_u32(0u, 23u)], vec3<bool>(var_0.a, var_0.a, var_2.c.a)), 930f), _wgslsmith_f_op_f32(f32(-1f) * -1100f)).c, vec2<u32>(0u, u_input.a), var_2.a, var_2.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f + var_0.d.x))))).a, select(!func_2(global0[_wgslsmith_index_u32(54945u & var_0.b, 23u)], Struct_2(Struct_1(true, 0u, vec2<f32>(var_0.d.x, -480f), vec3<f32>(var_2.c.c.x, -451f, -697f)), vec2<u32>(21897u, u_input.a), var_2.c, vec3<bool>(false, false, var_0.a)), _wgslsmith_f_op_f32(145f + var_2.a.c.x)).d, vec3<bool>(all(!vec4<bool>(var_2.a.a, false, var_2.a.a, var_0.a)), var_0.a, var_0.a), all(vec2<bool>(any(vec3<bool>(true, var_0.a, var_0.a)), !var_2.d.x))));
    var var_3 = Struct_1(_wgslsmith_sub_u32(abs(35426u) >> (0u % 32u), _wgslsmith_mod_u32(~u_input.a, u_input.a)) < _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 29646u, 0u), ~vec3<u32>(u_input.a, 0u, 4294967295u)), reverseBits(~vec3<u32>(1u, var_0.b, u_input.a))), func_2(global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(6642u >> (var_0.b % 32u), 1u), func_2(Struct_1(var_0.a, 1u, var_0.c, var_2.a.d), func_2(Struct_1(var_0.a, 40987u, var_2.c.d.yx, var_0.d), Struct_2(var_2.c, vec2<u32>(var_0.b, var_2.b.x), global0[_wgslsmith_index_u32(u_input.a, 23u)], var_2.d), 246f), 1712f).c.b, var_2.c.a), 23u)], func_2(func_2(Struct_1(var_0.a, 1u, vec2<f32>(var_0.d.x, var_2.a.d.x), var_2.c.d), func_2(Struct_1(true, var_2.b.x, vec2<f32>(var_0.d.x, 1478f), vec3<f32>(505f, -1279f, var_0.d.x)), Struct_2(Struct_1(global2.x, 45392u, var_2.c.c, vec3<f32>(-379f, var_2.a.d.x, -1000f)), var_2.b, Struct_1(false, var_2.c.b, vec2<f32>(var_0.d.x, 2151f), var_0.d), var_2.d), -555f), _wgslsmith_f_op_f32(abs(-2014f))).a, func_2(global0[_wgslsmith_index_u32(u_input.a & var_2.a.b, 23u)], Struct_2(global0[_wgslsmith_index_u32(var_0.b, 23u)], vec2<u32>(0u, var_0.b), var_2.c, var_2.d), var_2.c.d.x), _wgslsmith_f_op_f32(round(var_0.d.x))), 115f).a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(var_2.c.d.x + _wgslsmith_f_op_f32(func_1(var_0.d, Struct_2(Struct_1(var_0.a, var_2.c.b, var_0.c, var_2.c.d), var_2.b, var_2.a, vec3<bool>(global2.x, true, false))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_2.a.c.x, var_0.c.x, var_0.a)), -170f, _wgslsmith_f_op_f32(-1042f - _wgslsmith_f_op_f32(1477f * var_0.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(121261i, _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-u_input.b.x, 7181i, _wgslsmith_clamp_i32(-2147483647i, u_input.b.x, var_1.x))), vec3<i32>(u_input.b.x, max(_wgslsmith_clamp_i32(-2147483647i, 1i, 2147483647i), -34233i), abs(-1i))));
}

