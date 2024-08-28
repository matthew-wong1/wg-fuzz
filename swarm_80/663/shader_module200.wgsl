struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: array<bool, 25> = array<bool, 25>(true, true, true, false, false, true, false, true, true, false, true, true, true, false, false, true, true, false, true, true, false, false, false, true, false);

var<private> global2: array<bool, 32> = array<bool, 32>(false, false, false, true, true, false, true, false, true, true, false, false, true, false, true, true, false, true, true, true, false, false, false, true, false, true, false, false, false, true, true, true);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = -472f;
    let var_1 = Struct_3(select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57758u, 6u)], 32u)], true), true), select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 32u)], true), vec3<bool>(global1[_wgslsmith_index_u32(38313u, 25u)], false, global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 25u)], false, true)), true), vec3<bool>(arg_2.b != -1000f, !global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2920u, 6u)], 6u)], 32u)], all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(14006u, 25u)], false))), u_input.b > ~27735u), vec3<bool>(true, true, true), all(select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 25u)], false, true), select(vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 32u)]), vec3<bool>(false, false, false)), arg_2.a.x >= -1000f))), select(select(select(!vec4<bool>(true, arg_1, true, global1[_wgslsmith_index_u32(1u, 25u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 25u)], false, global2[_wgslsmith_index_u32(43682u, 32u)], false), all(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 25u)], true, global1[_wgslsmith_index_u32(32796u, 25u)]))), vec4<bool>(arg_1, global1[_wgslsmith_index_u32(55664u, 25u)], !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 25u)], any(vec4<bool>(true, arg_1, false, arg_1))), !all(vec2<bool>(global2[_wgslsmith_index_u32(108046u, 32u)], false))), select(!vec4<bool>(arg_1, false, global1[_wgslsmith_index_u32(47952u, 25u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(78915u, 25u)]), !vec4<bool>(arg_1, global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(611f)) * _wgslsmith_f_op_f32(-arg_2.a.x)) >= 679f), Struct_2(~vec4<i32>(arg_0.x | 0i, _wgslsmith_dot_vec2_i32(arg_0.xx, vec2<i32>(arg_0.x, arg_0.x)), 1i, select(-1i, 2147483647i, false)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1858f), -380f)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(trunc(-367f))))));
    return !(!vec2<bool>(all(vec4<bool>(false, var_1.b.x, arg_1, true)), true));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(-1i, select(1i, ~(-19948i), false & global1[_wgslsmith_index_u32(41119u, 25u)]), -1i, -2147483647i));
    var var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(arg_1.x)), arg_1.x);
    global1 = array<bool, 25>();
    let var_2 = select(select(!(!func_3(vec3<i32>(-2147483647i, 13397i, -2147483647i), global1[_wgslsmith_index_u32(u_input.b, 25u)], Struct_4(vec3<f32>(-211f, 452f, -2135f), 381f))), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 25u)] & global2[_wgslsmith_index_u32(10648u, 32u)], true), func_3(select(vec3<i32>(1i, 1i, 1i), vec3<i32>(-55512i, -2147483647i, 71753i) >> (vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 6u)], 1u) % vec3<u32>(32u)), false), select(!global1[_wgslsmith_index_u32(2288u, 25u)], any(vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 32u)], false, global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(75966u, 25u)])), true), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, 1281f, arg_1.x)), _wgslsmith_f_op_f32(round(var_1.x))))), !select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(25554u, 25u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(61635u, 25u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 32u)], true), false), 6562u >= u_input.a), !(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 32u)], false)), select(global1[_wgslsmith_index_u32(4294967295u, 25u)], all(vec3<bool>(true, false, global2[_wgslsmith_index_u32(70038u, 32u)])), !global1[_wgslsmith_index_u32(u_input.a, 25u)])), select(vec2<bool>(true, true), vec2<bool>(false, !(!global2[_wgslsmith_index_u32(24524u, 32u)])), select(vec2<bool>(arg_1.x > arg_1.x, arg_0 <= 4294967295u), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 32u)], true), vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 32u)], global1[_wgslsmith_index_u32(62111u, 25u)])), !global1[_wgslsmith_index_u32(4211u, 25u)]))));
    let var_3 = true;
    return Struct_1(arg_1);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_3 {
    global0 = array<u32, 6>();
    let var_0 = Struct_2(vec4<i32>(arg_2.a.x, 38848i, (arg_2.a.x ^ ~1i) >> (~firstLeadingBit(arg_0) % 32u), -33298i), func_2(4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-843f)), arg_2.b.a.x))), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.c.a.x + arg_2.b.a.x), arg_2.c.a.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.a.x, 141f)))))));
    global0 = array<u32, 6>();
    let var_1 = Struct_4(vec3<f32>(arg_2.c.a.x, -619f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.b.a.x * -353f)))), 718f);
    return Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 6u)], 25u)], !(!arg_3.x), arg_3.x), vec4<bool>(all(vec2<bool>(true, func_3(var_0.a.zxw, global2[_wgslsmith_index_u32(15749u, 32u)], var_1).x)), arg_3.x, false & global1[_wgslsmith_index_u32(4294967295u, 25u)], all(!vec2<bool>(true, global2[_wgslsmith_index_u32(80023u, 32u)]))), Struct_2(vec4<i32>(arg_2.a.x, _wgslsmith_clamp_i32(var_0.a.x, arg_2.a.x, arg_2.a.x) ^ -1i, countOneBits(var_0.a.x), var_0.a.x), var_0.c, func_2(1u, var_1.a.yx)));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_3 {
    return func_4(u_input.a, _wgslsmith_mod_u32(1u, u_input.b), Struct_2(-min(vec4<i32>(-2147483647i, 9745i, 0i, 1i) << (vec4<u32>(4294967295u, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20766u, 6u)], 6u)], 96881u) % vec4<u32>(32u)), vec4<i32>(36787i, -26779i, -1i, -13849i)), func_2(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12494u, 6u)], 6u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)] % 32u)), vec2<f32>(arg_2.a.x, arg_0.a.x)), func_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 6u)], 0u), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 6u)], 4294967295u)), arg_0.a.xx)), !(!vec2<bool>(all(vec4<bool>(true, true, true, false)), false)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    var var_0 = vec3<bool>(func_4(~firstTrailingBit(5420u), ~(~7853u), Struct_2(arg_1.c.a, func_4(70250u, 4294967295u, Struct_2(vec4<i32>(1i, 2147483647i, arg_1.c.a.x, arg_1.c.a.x), arg_1.c.c, arg_1.c.c), vec2<bool>(global1[_wgslsmith_index_u32(4782u, 25u)], global1[_wgslsmith_index_u32(7219u, 25u)])).c.b, arg_1.c.c), vec2<bool>(true, true)).a.x | true, true, !arg_1.a.x);
    let var_1 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(global0[_wgslsmith_index_u32(29019u, 6u)], 1u, 4294967295u, 0u), vec4<u32>(78648u, 1u, global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 32u)], false, false, true)), vec4<u32>(20915u, 0u, 16790u, u_input.a) >> (vec4<u32>(22746u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22344u, 6u)], 6u)], 0u) % vec4<u32>(32u))), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 6u)], 6u)], 6u)], 31263u, 25996u, 34902u) << ((vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) | vec4<u32>(1u, 17258u, u_input.a, 0u)) % vec4<u32>(32u))), 1u);
    return -462f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-362f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1657f - -378f), _wgslsmith_f_op_f32(f32(-1f) * -706f), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 6u)]), 6u)], 32u)])), -133f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(318f, 712f, -637f)), func_1(Struct_4(vec3<f32>(1000f, -672f, -241f), 803f), vec3<f32>(-837f, -331f, 577f), Struct_1(vec2<f32>(-784f, 1386f))))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_5(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_0, -1435f))), func_2(u_input.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, -1000f), vec2<f32>(964f, var_0)))).a.x, _wgslsmith_div_f32(var_0, var_0)), Struct_3(!(!vec3<bool>(global1[_wgslsmith_index_u32(72220u, 25u)], true, false)), !select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(u_input.b, 25u)], true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(13498u, 32u)]), false), func_4(~4294967295u, global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 6u)]), 6u)], func_4(global0[_wgslsmith_index_u32(u_input.b, 6u)], u_input.a, Struct_2(vec4<i32>(-1i, -1i, -38593i, -73046i), Struct_1(vec2<f32>(247f, 900f)), Struct_1(vec2<f32>(var_0, 493f))), vec2<bool>(true, true)).c, !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 25u)])).c))), -1450f, -440f);
    let var_2 = func_1(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(657f, var_0, var_0), vec3<f32>(var_1.x, 1377f, -767f), vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 32u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)]))))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, -747f, _wgslsmith_f_op_f32(min(func_2(43287u, var_1.zz).a.x, -770f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-989f, var_0, 1082f)) + _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, -1310f, 123f))))))), func_4(min(select(global0[_wgslsmith_index_u32(67659u, 6u)], global0[_wgslsmith_index_u32(27465u, 6u)], global2[_wgslsmith_index_u32(u_input.b, 32u)]), u_input.a) << (global0[_wgslsmith_index_u32(120331u, 6u)] % 32u), select(abs(18702u), abs(53875u), true) >> (global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(4026u, u_input.a)), 6u)] % 32u), Struct_2(vec4<i32>(1i, 1i, 1i, 1i), func_4(~46103u, 0u, Struct_2(vec4<i32>(1i, 1157i, 0i, 0i), Struct_1(var_1.xx), Struct_1(var_1.zz)), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 32u)])).c.c, Struct_1(func_1(Struct_4(vec3<f32>(1000f, var_0, var_1.x), var_1.x), vec3<f32>(316f, -1481f, var_0), Struct_1(var_1.xy)).c.c.a)), vec2<bool>(any(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 25u)], false, global1[_wgslsmith_index_u32(u_input.b, 25u)]))), !(!global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9221u, 6u)], 25u)]))).c.c).b.x;
    var var_3 = Struct_2(vec4<i32>(firstLeadingBit(-24832i), func_1(Struct_4(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-120f, var_1.x, 1000f))), -293f), vec3<f32>(1291f, _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(var_1.x * var_1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.xx))).c.a.x, min(func_1(Struct_4(vec3<f32>(var_1.x, var_1.x, 436f), -542f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1548f, var_1.x, -154f), vec3<f32>(-775f, var_1.x, 604f))), Struct_1(var_1.yy)).c.a.x, countOneBits(-1i)), -max(1i, min(30749i, 19903i))), func_1(Struct_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(874f, -112f, 178f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2137f, 1996f), var_0))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_1.x, 221f))))), func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1733u, u_input.a, u_input.a), vec4<u32>(u_input.a, 58366u, global0[_wgslsmith_index_u32(46175u, 6u)], u_input.a)), _wgslsmith_mult_u32(1u, u_input.b)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-296f, -1164f), var_1.zx, vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 32u)], var_2))))))).c.b, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_0)) + _wgslsmith_f_op_vec2_f32(var_1.xz + var_1.zx)), _wgslsmith_f_op_vec2_f32(var_1.zz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 627f))))));
    var var_4 = _wgslsmith_f_op_f32(func_2(reverseBits(4294967295u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1634f + -1180f) * _wgslsmith_f_op_f32(f32(-1f) * -306f)), var_0)).a.x * var_3.b.a.x);
    var_4 = var_0;
    global0 = array<u32, 6>();
    let var_5 = vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~abs(_wgslsmith_add_u32(0u, u_input.a)), u_input.a), 32u)], false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -406f, -257f) + vec3<f32>(136f, -673f, var_3.b.a.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(885f, var_3.b.a.x, var_0), vec3<f32>(var_1.x, -1000f, 744f))))), abs(-_wgslsmith_div_vec4_i32(func_4(global0[_wgslsmith_index_u32(4294967295u, 6u)], 1u, Struct_2(vec4<i32>(var_3.a.x, -6061i, -60618i, 1720i), Struct_1(var_3.c.a), Struct_1(vec2<f32>(var_0, -1450f))), var_5).c.a, select(vec4<i32>(var_3.a.x, var_3.a.x, -53092i, 2147483647i), vec4<i32>(var_3.a.x, 11822i, -13396i, -76195i), false))));
}

