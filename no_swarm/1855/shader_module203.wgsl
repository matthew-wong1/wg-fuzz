struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(1u, 59355u, 4514u, 91560u, 3209u, 4294967295u, 69057u, 4294967295u, 1u, 50361u, 75931u, 15950u, 4294967295u, 39532u);

var<private> global1: i32;

var<private> global2: array<i32, 5>;

var<private> global3: array<bool, 12>;

var<private> global4: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(1i, 39175i, -2740i), vec3<i32>(1i, 32484i, i32(-2147483648)), vec3<i32>(1i, 1957i, i32(-2147483648)), vec3<i32>(29958i, -14777i, -10654i), vec3<i32>(-24204i, -7371i, -11331i), vec3<i32>(31605i, i32(-2147483648), -1i), vec3<i32>(0i, 0i, 5162i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec2<bool> {
    global4 = array<vec3<i32>, 7>();
    let var_0 = Struct_1(global4[_wgslsmith_index_u32(abs(u_input.b), 7u)], !select(!vec4<bool>(global3[_wgslsmith_index_u32(24251u, 12u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 12u)], global3[_wgslsmith_index_u32(32366u, 12u)], arg_0), !vec4<bool>(true, false, false, arg_0), select(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)], true, false), select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, arg_0, false, false), false), select(vec4<bool>(false, false, arg_0, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 1u, ~1u ^ _wgslsmith_sub_u32(u_input.b, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(75u, 14u)], 1u))), 14u)], 12u)], vec2<bool>(!(!(!arg_0)), arg_0), _wgslsmith_div_f32(162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(823f))))));
    var var_1 = global3[_wgslsmith_index_u32(~27894u, 12u)];
    let var_2 = !var_0.b.yw;
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(1340f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.e, _wgslsmith_div_f32(908f, -2319f))), -1563f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, _wgslsmith_f_op_f32(-2124f + _wgslsmith_div_f32(var_0.e, var_0.e))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.e, -1012f))), _wgslsmith_div_vec2_f32(vec2<f32>(1174f, var_0.e), vec2<f32>(137f, var_0.e)))) - vec2<f32>(var_0.e, 1415f))));
    return vec2<bool>(true, all(select(vec3<bool>(false, var_0.e > var_3.x, u_input.a > 2147483647i), var_0.b.xxx, false)));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = u_input.b;
    let var_1 = -1253f;
    global0 = array<u32, 14>();
    global2 = array<i32, 5>();
    var var_2 = Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(85958u, 5u)], 78188i, ~(~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 5u)] >> (arg_0.x % 32u))), !vec4<bool>(any(select(vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 12u)], global3[_wgslsmith_index_u32(77026u, 12u)], false, true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 12u)], false, true, global3[_wgslsmith_index_u32(arg_0.x, 12u)]), false)), all(vec4<bool>(false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 14u)], 12u)], false, true)), !(global3[_wgslsmith_index_u32(arg_0.x, 12u)] & false), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~0u), 14u)], 12u)]), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(26568u, 14u)], ~(~_wgslsmith_div_u32(arg_0.x, 6020u))), 14u)], 12u)], select(!select(select(vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 12u)], true), vec2<bool>(true, false), vec2<bool>(true, global3[_wgslsmith_index_u32(arg_0.x, 12u)])), select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 12u)], true), vec2<bool>(global3[_wgslsmith_index_u32(4861u, 12u)], true), vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 12u)], false)), true), select(vec2<bool>(true, true), vec2<bool>(true, false), all(!vec2<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 14u)], 12u)], global3[_wgslsmith_index_u32(109030u, 12u)]))), vec2<bool>(any(func_3(false)), arg_0.x < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 14u)], 14u)], 14u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1745f + var_1))) - -608f));
    return Struct_1(vec3<i32>(15906i, ~abs(u_input.a), ~abs(-59337i)) << (vec3<u32>(~(~arg_0.x), _wgslsmith_add_u32(u_input.b, u_input.b), u_input.b) % vec3<u32>(32u)), vec4<bool>(global3[_wgslsmith_index_u32(59036u, 12u)], false, all(var_2.b), false), global3[_wgslsmith_index_u32(24135u, 12u)], var_2.b.yw, var_2.e);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(vec2<bool>(any(vec2<bool>(false, false)) | (_wgslsmith_f_op_f32(sign(arg_1.e)) < _wgslsmith_f_op_f32(-arg_3.e)), !any(arg_3.b.wyy)));
    global0 = array<u32, 14>();
    var var_1 = ~0u;
    let var_2 = arg_3.a;
    let var_3 = func_2(~_wgslsmith_add_vec4_u32((vec4<u32>(global0[_wgslsmith_index_u32(50360u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], 1u, 160u) | vec4<u32>(global0[_wgslsmith_index_u32(13799u, 14u)], 1u, global0[_wgslsmith_index_u32(1u, 14u)], u_input.b)) << (vec4<u32>(1u, 99773u, 16326u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60099u, 14u)], 14u)]) % vec4<u32>(32u)), reverseBits(vec4<u32>(79391u, u_input.b, 11221u, 1u)) ^ vec4<u32>(34341u, u_input.b, 115582u, u_input.b)), arg_3.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, -119f, _wgslsmith_f_op_f32(1f + arg_2.e))));
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, _wgslsmith_clamp_u32(~16968u, ~u_input.b, abs(u_input.b)) & abs(max(82618u, 1u))), ~abs(abs(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true, any(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)], false, true)), any(select(select(vec4<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83216u, 14u)], 14u)], 12u)], true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52861u, 14u)], 12u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 12u)]), vec4<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81647u, 14u)], 12u)], global3[_wgslsmith_index_u32(0u, 12u)], true, false), false), !vec4<bool>(false, false, global3[_wgslsmith_index_u32(1u, 12u)], true), true)), !((global0[_wgslsmith_index_u32(4294967295u, 14u)] <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65613u, 14u)], 14u)]) && global3[_wgslsmith_index_u32(func_1(vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(93200u, 5u)], 10280i, 1346i), vec4<bool>(global3[_wgslsmith_index_u32(56099u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(8637u, 12u)], false), global3[_wgslsmith_index_u32(0u, 12u)], vec2<bool>(global3[_wgslsmith_index_u32(40991u, 12u)], true), 1286f), Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 5u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 5u)], 50361i), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)]), false, vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 12u)]), -814f), Struct_1(vec3<i32>(0i, -14494i, -2147483647i), vec4<bool>(true, false, true, false), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], 12u)], vec2<bool>(false, global3[_wgslsmith_index_u32(17417u, 12u)]), -1103f)), 12u)]));
    var var_1 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(639f)))))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1991f + _wgslsmith_f_op_f32(f32(-1f) * -1089f)))));
    var var_2 = Struct_2(var_0.yw);
    var var_3 = Struct_2(vec2<bool>(false, func_3(global3[_wgslsmith_index_u32(u_input.b, 12u)]).x));
    let var_4 = Struct_1(global4[_wgslsmith_index_u32(~(~u_input.b), 7u)], vec4<bool>(true, !(!any(var_0.zzx)), var_3.a.x, global3[_wgslsmith_index_u32(0u, 12u)]), true, !(!(!var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(928f * -370f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2185f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global2 = array<i32, 5>();
    let var_5 = func_2(max(~(~reverseBits(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], 53166u, 4294967295u))), ~(~vec4<u32>(1u, 48559u, global0[_wgslsmith_index_u32(1u, 14u)], 0u))), ~firstTrailingBit(~(i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.e, var_4.e, -193f), vec3<f32>(var_4.e, 996f, var_4.e))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.e, var_4.e, 906f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.e, var_4.e, var_4.e), vec3<f32>(var_4.e, var_4.e, -1128f), var_3.a.x)) + vec3<f32>(-429f, var_4.e, var_4.e))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(453f, var_4.e)), var_4.e, 1440f)), !any(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 12u)], false, false)))));
    let var_6 = Struct_2(select(select(func_3(false && var_2.a.x), vec2<bool>(any(var_5.b.wyz), true), false), vec2<bool>(select(global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 12u)], true, var_5.a.x > u_input.a), var_0.x), vec2<bool>(!all(vec4<bool>(var_2.a.x, true, var_0.x, var_0.x)), select(true, var_3.a.x, false) && !var_0.x)));
    var var_7 = select(any(select(vec4<bool>(var_4.d.x, true, false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 12u)]), vec4<bool>(var_5.b.x, var_6.a.x, false, var_0.x), func_2(vec4<u32>(25017u, global0[_wgslsmith_index_u32(0u, 14u)], 0u, u_input.b), 1i, vec3<f32>(var_5.e, var_4.e, var_5.e)).b)), var_6.a.x, !select(any(var_4.b.ww), !var_3.a.x, !var_6.a.x)) || var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(18331u, u_input.b), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(33285u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)]), vec2<u32>(2475u, 32601u))), select(select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29165u, 14u)], 14u)], 9646u), vec2<u32>(22417u, 1u), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54410u, 14u)], 12u)]), vec2<u32>(52991u, 36647u), var_4.d), !(!var_6.a.x)));
}

