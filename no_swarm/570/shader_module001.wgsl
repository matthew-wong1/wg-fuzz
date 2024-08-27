struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 23> = array<bool, 23>(true, false, true, true, true, true, true, false, true, true, false, false, false, true, false, false, false, true, true, true, true, true, false);

var<private> global3: array<bool, 31>;

var<private> global4: vec3<i32> = vec3<i32>(-5410i, 25289i, 2147483647i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    global4 = vec3<i32>(~arg_2.a, ~((arg_2.a ^ (arg_2.a & 69570i)) & arg_2.a), ~(-1i));
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.d.wz);
    global0 = array<vec2<u32>, 25>();
    let var_1 = !arg_1.c.yy;
    var var_2 = 9067i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1889f)) - _wgslsmith_f_op_f32(-1619f - arg_0.d.x));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = vec4<bool>(global2[_wgslsmith_index_u32(3237u << (min(42535u, arg_2) % 32u), 23u)], false, true, all(!vec4<bool>(!global2[_wgslsmith_index_u32(53125u, 23u)], false, global3[_wgslsmith_index_u32(arg_2, 31u)] && arg_3, false)));
    var var_1 = vec2<bool>(false, all(select(select(vec3<bool>(var_0.x, global3[_wgslsmith_index_u32(4217u, 31u)], false), vec3<bool>(true, arg_1, true), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 23u)], false)), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 31u)], true), select(global1.c, var_0.yyy, var_0.wzy))) & true);
    let var_2 = _wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(5368i, vec3<f32>(global1.d.x, global1.b.x, global1.b.x), vec3<bool>(false, arg_3, true), global1.d), Struct_1(global4.x, vec3<f32>(global1.b.x, 1000f, global1.b.x), vec3<bool>(true, false, arg_0), vec4<f32>(1437f, global1.b.x, 1032f, global1.b.x)), Struct_1(-2147483647i, global1.b, vec3<bool>(false, true, global3[_wgslsmith_index_u32(arg_2, 31u)]), vec4<f32>(2352f, global1.d.x, 814f, global1.b.x)), vec4<u32>(95192u, 62271u, u_input.a, u_input.e)))) + _wgslsmith_f_op_f32(-global1.d.x)), !((11909u >> (abs(u_input.e) % 32u)) < min(arg_2, _wgslsmith_mult_u32(10249u, arg_2)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1302f, -898f));
    global1 = Struct_1(-47639i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_3.x, global1.d.x) + global1.d.yyy))), vec3<f32>(var_2, _wgslsmith_f_op_f32(trunc(global1.d.x)), var_2), vec3<bool>(true, var_3.x > 594f, global1.c.x))), _wgslsmith_f_op_vec3_f32(max(global1.d.xxy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1999f, -483f, -1457f) + vec3<f32>(1000f, -411f, var_2)) * vec3<f32>(var_3.x, -544f, global1.b.x)))))), select(vec3<bool>(any(vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 31u)])), global3[_wgslsmith_index_u32(15402u, 31u)], arg_1), global1.c, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-182f, -551f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-623f)), _wgslsmith_f_op_f32(sign(global1.b.x)))), -143f)));
    return Struct_1(0i, vec3<f32>(_wgslsmith_f_op_f32(round(303f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_3.x)), global1.d.x))), _wgslsmith_f_op_f32(-838f + -323f)), !(!var_0.zzw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - -1979f)), _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(649f * global1.b.x)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    global3 = array<bool, 31>();
    global3 = array<bool, 31>();
    let var_0 = vec2<bool>(any(vec4<bool>(func_2(false, true, 1u, true).c.x, true, any(global1.c), false)) || false, !(_wgslsmith_sub_u32(select(1u, 24263u, false), ~u_input.e) > 7004u));
    let var_1 = arg_0;
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1902f), 1887f)), select(vec3<bool>(!(u_input.e >= 0u), true, any(!vec4<bool>(true, var_0.x, false, global3[_wgslsmith_index_u32(u_input.e, 31u)]))), vec3<bool>(arg_3.c.x, true || !arg_3.c.x, !any(vec4<bool>(false, false, true, false))), arg_3.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.d - vec4<f32>(arg_1.d.x, -426f, -1000f, arg_1.d.x)) + arg_1.d)), arg_1.d, true)));
    return !func_2(global3[_wgslsmith_index_u32(max(~u_input.a, _wgslsmith_clamp_u32(~11901u, _wgslsmith_clamp_u32(1u, u_input.a, 1u), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)]))), 31u)], false, ~(~1u), any(func_2(global1.c.x, false, ~4294967295u, !arg_1.c.x).c.xy)).c;
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_3.b.yx)));
    global1 = Struct_1(11735i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.d.zwy)), arg_3.c, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-216f, _wgslsmith_div_f32(397f, 432f), any(vec2<bool>(false, global2[_wgslsmith_index_u32(26684u, 23u)])))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(f32(-1f) * -783f), 1705f));
    global3 = array<bool, 31>();
    let var_1 = func_2(all(vec4<bool>(true, true, true, !global1.c.x || arg_3.c.x)), arg_3.c.x, 1u, !(!(!(global3[_wgslsmith_index_u32(103884u, 31u)] | false))));
    let var_2 = ~(~14828u);
    return var_1;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    global4 = ~(u_input.c.xyz ^ u_input.c.xwx);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d.xzz * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.d.yzx, global1.b, arg_2.yzy))), vec3<f32>(-279f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(global1.d.x - arg_1))))) * vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0)), arg_1, 838f));
    global0 = array<vec2<u32>, 25>();
    let var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f))), vec4<u32>(firstLeadingBit(~_wgslsmith_mult_u32(1u, 4294967295u)), 0u, _wgslsmith_dot_vec2_u32((vec2<u32>(u_input.e, u_input.e) | global0[_wgslsmith_index_u32(u_input.a, 25u)]) << (vec2<u32>(0u, u_input.e) % vec2<u32>(32u)), ~select(global0[_wgslsmith_index_u32(u_input.e, 25u)], global0[_wgslsmith_index_u32(u_input.e, 25u)], true)), firstLeadingBit(33057u)), vec3<f32>(var_0.x, 785f, 469f), Struct_1(-u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, 590f, var_0.x)) + global1.d.yyy)), select(func_4(~2147483647i, func_2(global2[_wgslsmith_index_u32(6596u, 23u)], true, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 31u)]), 0i, Struct_1(u_input.c.x, global1.b, global1.c, vec4<f32>(arg_0, 1242f, 1000f, -347f))), vec3<bool>(global2[_wgslsmith_index_u32(min(4294967295u, u_input.e), 23u)], any(global1.c), !global3[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_f_op_f32(var_0.x * 688f) <= _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global1.d))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 481f, -1000f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1765f, var_0.x, -1642f)))))));
    var var_2 = var_1;
    return abs(4294967295u) | _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~global0[_wgslsmith_index_u32(8881u, 25u)], vec2<u32>(1u, 44490u) & vec2<u32>(u_input.e, u_input.a), vec2<u32>(62170u, 47596u)), ~global0[_wgslsmith_index_u32(select(u_input.e, u_input.a, false), 25u)]), select(1u, ~(~0u), func_4(abs(-2147483647i), func_2(var_2.c.x, var_1.c.x, 1u, var_2.c.x), countOneBits(global1.a), var_1).x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 31>();
    var var_0 = vec4<u32>(max(_wgslsmith_sub_u32(func_1(_wgslsmith_f_op_f32(global1.d.x * 1650f), _wgslsmith_div_f32(591f, global1.b.x), vec4<bool>(true, true, true, true)), 73908u), abs(18104u)), _wgslsmith_mult_u32(10089u, u_input.a), u_input.e, ~(max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e), global0[_wgslsmith_index_u32(28857u, 25u)])) >> (u_input.a % 32u)));
    global2 = array<bool, 23>();
    var_0 = ~vec4<u32>(0u, 3331u, ~(~reverseBits(4294967295u)), var_0.x);
    let var_1 = _wgslsmith_div_vec2_u32(~vec2<u32>(var_0.x, min(~4294967295u, select(1u, 0u, false))), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(17112u, 4294967295u)), vec2<u32>(~u_input.a, 0u)) >> (~(~vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)));
    global4 = u_input.d;
    global0 = array<vec2<u32>, 25>();
    let var_2 = Struct_1(~abs(-(~15541i)), vec3<f32>(-228f, _wgslsmith_f_op_f32(f32(-1f) * -1456f), global1.d.x), vec3<bool>(!(!(global1.b.x != global1.b.x)), func_5(_wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_mult_vec4_u32(select(vec4<u32>(var_1.x, var_0.x, var_1.x, 0u), vec4<u32>(1u, var_1.x, 0u, 4294967295u), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 31u)], global2[_wgslsmith_index_u32(var_0.x, 23u)], global3[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)])), reverseBits(vec4<u32>(30674u, 18682u, 45048u, 53290u))), global1.b, func_5(_wgslsmith_f_op_f32(global1.d.x * global1.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 11672u, var_1.x, 4294967295u), vec4<u32>(1u, 1u, 7750u, var_0.x)), global1.d.zxz, Struct_1(12026i, global1.d.wzw, global1.c, global1.d))).c.x, !(_wgslsmith_f_op_f32(max(global1.b.x, -840f)) > _wgslsmith_f_op_f32(-570f * 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.d + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -394f, 1332f, global1.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2397f))), -1510f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.d.x * 1023f))), _wgslsmith_f_op_f32(1000f * var_2.b.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(19202u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 9518u, var_1.x, var_1.x) | vec4<u32>(var_1.x, var_1.x, 1u, var_1.x), ~vec4<u32>(var_1.x, 0u, u_input.e, var_0.x)), var_0.x, firstLeadingBit(_wgslsmith_mult_u32(27512u, 1u))), max(~select(vec4<u32>(93727u, var_1.x, 5792u, 4294967295u), vec4<u32>(var_0.x, 4294967295u, var_0.x, u_input.a), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 23u)], var_2.c.x, true, true)), vec4<u32>(func_1(-662f, 1112f, vec4<bool>(true, global1.c.x, var_2.c.x, true)), 10175u, 66386u, reverseBits(61698u)))), min(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), select(~vec4<i32>(-1i, u_input.d.x, global4.x, var_2.a) >> (vec4<u32>(50615u, 6329u, u_input.e, 13172u) % vec4<u32>(32u)), vec4<i32>(global4.x | 24961i, 6843i, global1.a, 38147i), false)), reverseBits(_wgslsmith_clamp_u32(~u_input.e, ~(12954u & var_0.x), max(var_0.x, min(var_0.x, var_0.x)))), var_2.d);
}

