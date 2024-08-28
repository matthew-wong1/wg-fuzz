struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 1u, 47917u), -596f, vec2<i32>(-1i, 70262i), 4294967295u);

var<private> global2: array<bool, 31>;

var<private> global3: array<f32, 4>;

var<private> global4: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(2147483647i, -2621i), vec2<i32>(5901i, -4855i), vec2<i32>(4387i, -1i), vec2<i32>(24084i, -25524i), vec2<i32>(4040i, i32(-2147483648)), vec2<i32>(1420i, i32(-2147483648)), vec2<i32>(-10116i, -35950i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-6468i, 22837i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-11436i, 2147483647i), vec2<i32>(35953i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(7731i, 7749i), vec2<i32>(5143i, -1i), vec2<i32>(15182i, -34050i), vec2<i32>(2147483647i, 7453i), vec2<i32>(0i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(55076i, i32(-2147483648)), vec2<i32>(0i, 4344i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-35525i, 0i), vec2<i32>(-2763i, 2147483647i), vec2<i32>(33063i, -1i), vec2<i32>(i32(-2147483648), -14517i), vec2<i32>(-16698i, 1i), vec2<i32>(4678i, -1i), vec2<i32>(-21190i, 2147483647i), vec2<i32>(5222i, -1i), vec2<i32>(71708i, -43032i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<bool> {
    return select(select(select(select(!vec4<bool>(global2[_wgslsmith_index_u32(31795u, 31u)], true, global2[_wgslsmith_index_u32(arg_1.b.x, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(49301u, 31u)], false, global2[_wgslsmith_index_u32(arg_1.b.x, 31u)], global2[_wgslsmith_index_u32(arg_1.a.d, 31u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b.x, 31u)], true, global2[_wgslsmith_index_u32(55518u, 31u)], true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 31u)], true, false, global2[_wgslsmith_index_u32(global1.a.x, 31u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(15920u, 31u)], true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(0u, 31u)], true), true)), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], true), !global2[_wgslsmith_index_u32(reverseBits(global1.a.x), 31u)]), vec4<bool>(arg_1.a.a.x <= 4294967295u, global1.a.x >= (0u & global1.d), all(select(vec4<bool>(global2[_wgslsmith_index_u32(66452u, 31u)], global2[_wgslsmith_index_u32(47676u, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 31u)], false, true), true)), !global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.x, 37412u), 31u)], false || global2[_wgslsmith_index_u32(14014u, 31u)], global2[_wgslsmith_index_u32(~u_input.a.x, 31u)], any(vec2<bool>(global2[_wgslsmith_index_u32(1841u, 31u)], false))), !vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 31u)], false, global2[_wgslsmith_index_u32(73092u, 31u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], true), select(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b.x, 31u)], true, global2[_wgslsmith_index_u32(global1.a.x, 31u)], global2[_wgslsmith_index_u32(9294u, 31u)]), vec4<bool>(global2[_wgslsmith_index_u32(92754u, 31u)], false, global2[_wgslsmith_index_u32(arg_1.b.x, 31u)], global2[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 31u)], true, global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(arg_1.a.a.x, 31u)])), select(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.a.d, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(global1.d, 31u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 31u)], true, global2[_wgslsmith_index_u32(global1.d, 31u)], global2[_wgslsmith_index_u32(8668u, 31u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(arg_1.a.a.x, 31u)], true))))), select(select(vec4<bool>(!global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(997u, 31u)] && false, 1u < arg_1.a.d, global2[_wgslsmith_index_u32(~77364u, 31u)]), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 31u)], true, false, global2[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(false, all(vec3<bool>(global2[_wgslsmith_index_u32(20431u, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)], false)), false, false || global2[_wgslsmith_index_u32(35063u, 31u)])), vec4<bool>(all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(global1.d, 31u)])), false, global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(countOneBits(arg_1.a.a.x), 31u)]), global2[_wgslsmith_index_u32(4306u, 31u)]), select(!vec4<bool>(true, all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)])), true, global2[_wgslsmith_index_u32(0u, 31u)]), select(!(!vec4<bool>(global2[_wgslsmith_index_u32(26840u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)])), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.a.a.x | u_input.a.x, 31u)], global2[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(0u, 4u)] <= 643f), all(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]))), _wgslsmith_div_f32(1206f, 375f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1010f + arg_1.a.b) + _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(57424u, 4u)])))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = !select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 31u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 31u)], true, false, true), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 31u)], false, global2[_wgslsmith_index_u32(3223u, 31u)], false)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(64723u, 31u)], global2[_wgslsmith_index_u32(global1.d, 31u)], global2[_wgslsmith_index_u32(4778u, 31u)]), select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1.d, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(global1.a.x, 31u)], false, global2[_wgslsmith_index_u32(arg_0, 31u)]), global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), any(vec3<bool>(global2[_wgslsmith_index_u32(7000u, 31u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]))), vec4<bool>(true, true, true, true)), vec4<bool>(global2[_wgslsmith_index_u32(~arg_0 << (arg_0 % 32u), 31u)], all(func_3(vec4<i32>(global1.c.x, 1i, 2147483647i, global1.c.x), Struct_2(Struct_1(vec3<u32>(global1.d, global1.a.x, 39060u), 1271f, vec2<i32>(0i, -45273i), global1.d), u_input.a.zx))), true, true), false);
    var var_1 = Struct_3(Struct_2(Struct_1(~vec3<u32>(44815u, 4294967295u, u_input.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(968f - global0[_wgslsmith_index_u32(u_input.a.x, 20u)]))), vec2<i32>(global1.c.x, -2147483647i), ~_wgslsmith_div_u32(197u, 35115u)), global1.a.yy | global1.a.zy), Struct_2(Struct_1(~global1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(26322u, 4u)])))), ~(~vec2<i32>(global1.c.x, 54796i)), 1u), ~(~vec2<u32>(u_input.a.x, u_input.a.x) << (~vec2<u32>(global1.d, 57987u) % vec2<u32>(32u)))));
    let var_2 = Struct_3(Struct_2(Struct_1(firstLeadingBit(~vec3<u32>(0u, arg_0, 0u)), global3[_wgslsmith_index_u32(reverseBits(1u), 4u)], ~global1.c, arg_0), ~vec2<u32>(~4294967295u, var_1.a.a.a.x)), Struct_2(Struct_1(~vec3<u32>(global1.a.x, arg_0, 36584u), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, ~116549u, abs(u_input.a.x)), 4u)], abs(vec2<i32>(global1.c.x, var_1.b.a.c.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.d, 1u), global1.a.zx)), firstLeadingBit(max(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 12050u), u_input.a.yy), var_1.b.a.a.yx))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(419f, global3[_wgslsmith_index_u32(arg_0, 4u)], var_2.a.a.b) - vec3<f32>(global1.b, 338f, global3[_wgslsmith_index_u32(var_1.a.b.x, 4u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.b, 555f, 126f) - vec3<f32>(489f, var_1.b.a.b, 231f))) - vec3<f32>(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(var_2.a.b.x, 4u)], global0[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_div_f32(-1480f, 1194f), _wgslsmith_f_op_f32(f32(-1f) * -880f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(var_1.a.b.x, 4u)], global3[_wgslsmith_index_u32(var_2.b.a.d, 4u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a.b, -242f, global1.b))))), var_0.xwx)));
    var_0 = vec4<bool>(all(!var_0.wzy), any(!(!var_0.zw)), var_0.x | true, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]);
    return Struct_2(var_1.b.a, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.a.a.d, select(global1.d, global1.a.x, global2[_wgslsmith_index_u32(var_1.b.a.d, 31u)])), max(~u_input.a.xx, vec2<u32>(4294967295u, u_input.a.x) ^ vec2<u32>(arg_0, global1.d))), _wgslsmith_sub_vec2_u32(vec2<u32>(62710u, ~21804u), vec2<u32>(arg_0, abs(0u)))));
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(select(_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(1u, 31u)], global1.c) & -global1.c.x, -_wgslsmith_clamp_i32(1i, arg_0.a.c.x, global1.c.x), select(global2[_wgslsmith_index_u32(global1.d, 31u)], global1.c.x > global1.c.x, !global2[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-20038i), arg_0.a.c.x & arg_0.a.c.x), vec2<i32>(30733i, ~arg_0.a.c.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(10841i, -func_2(u_input.a.x).a.c.x), vec2<i32>(0i << (global1.a.x % 32u), firstLeadingBit(arg_0.a.c.x)) >> (reverseBits(u_input.a.yy) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(-62515i, -74866i << (global1.d % 32u)), ~vec2<i32>(32613i, abs(global1.c.x | 1i)));
    var_1 = ~(vec2<i32>(12429i, global1.c.x) & _wgslsmith_mod_vec2_i32(-reverseBits(arg_0.a.c), ~(-vec2<i32>(0i, 33137i))));
    return global1.a.x;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global3 = array<f32, 4>();
    let var_0 = 1000f;
    global3 = array<f32, 4>();
    var var_1 = 4294967295u;
    var var_2 = global4[_wgslsmith_index_u32(~func_4(func_2(~global1.a.x)), 31u)];
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    var var_0 = vec3<i32>(-2894i, global1.c.x, _wgslsmith_mult_i32(max(-1i & global1.c.x, arg_0.c.x), 1i ^ global1.c.x));
    let var_1 = _wgslsmith_mult_u32(global1.a.x, select(abs(func_1(Struct_2(Struct_1(arg_0.a, global1.b, vec2<i32>(0i, -9951i), 481u), arg_0.a.xx)).a.x & (50948u << (global1.d % 32u))), func_4(Struct_2(func_1(Struct_2(arg_0, vec2<u32>(37443u, arg_0.a.x))), global1.a.yx)), !global2[_wgslsmith_index_u32(~(~38859u), 31u)]));
    var var_2 = arg_0;
    var var_3 = Struct_1(~func_2(86860u).a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1812f)))), global1.c, ~(firstTrailingBit(var_2.a.x) & ~(22700u << (var_2.d % 32u))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b))))), -205f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-632f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)] - -1220f)))));
    return StorageBuffer(6801u, 1u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(185f, _wgslsmith_f_op_f32(-global1.b))))), vec3<u32>(select(select(arg_0.a.x, var_2.d, true), 49307u, select(false, global2[_wgslsmith_index_u32(global1.a.x, 31u)], false)), var_3.d, ~99755u) << (vec3<u32>(61934u, 6164u, _wgslsmith_mod_u32(0u, arg_0.a.x)) % vec3<u32>(32u)), var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(Struct_2(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, global1.a.x) << (vec3<u32>(95839u, u_input.a.x, 29553u) % vec3<u32>(32u)), 109f, abs(global1.c), 678u), (vec2<u32>(u_input.a.x, 0u) >> (vec2<u32>(8891u, 0u) % vec2<u32>(32u))) ^ vec2<u32>(global1.a.x, u_input.a.x))), global1.b);
}

