struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 13> = array<bool, 13>(true, true, true, true, false, true, false, true, true, true, false, false, false);

var<private> global2: i32;

var<private> global3: Struct_1;

var<private> global4: array<u32, 19> = array<u32, 19>(33134u, 0u, 93255u, 30846u, 0u, 1u, 63515u, 0u, 69640u, 4294967295u, 4294967295u, 1u, 0u, 4810u, 1u, 4294967295u, 4294967295u, 0u, 1u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = ~countOneBits(~arg_1.x);
    let var_1 = arg_2;
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1294u, 4294967295u, global3.a, 3910u), countOneBits(~firstLeadingBit(abs(vec4<u32>(u_input.a, 4294967295u, 1u, 13963u)))));
    var var_3 = Struct_1(~(1u << (1u % 32u)));
    var var_4 = Struct_1(1u);
    return 4294967295u;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, arg_2), vec2<f32>(-1000f, arg_2))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -806f), _wgslsmith_f_op_f32(f32(-1f) * -855f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, arg_2))))))));
    var var_1 = 22480i;
    var var_2 = arg_1;
    var_2 = arg_1;
    let var_3 = 0u;
    return !(!select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], false, global1[_wgslsmith_index_u32(var_3, 13u)], false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(9086u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(50867u, 13u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], true)), !vec4<bool>(false, global1[_wgslsmith_index_u32(var_3, 13u)], true, global1[_wgslsmith_index_u32(var_2.a, 13u)]), global1[_wgslsmith_index_u32(u_input.a, 13u)]));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = global3.a;
    var var_1 = vec4<bool>(arg_1, true, global1[_wgslsmith_index_u32(0u, 13u)], true);
    global3 = Struct_1(1u);
    global1 = array<bool, 13>();
    var_1 = func_4(select(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-22898i, -1i, -1i, 1i) << (vec4<u32>(31348u, 0u, 4294967295u, global4[_wgslsmith_index_u32(arg_0.a, 19u)]) % vec4<u32>(32u)), vec4<bool>(!arg_1, false, false, true)) ^ -(countOneBits(vec4<i32>(1i, -7439i, 1i, 1i)) ^ (vec4<i32>(-2147483647i, -1i, -8617i, 0i) << (vec4<u32>(0u, arg_0.a, u_input.a, 1u) % vec4<u32>(32u)))), Struct_1(func_3(1211f, reverseBits(vec3<i32>(7512i, 0i, -2147483647i)), arg_0)), 158f);
    return arg_0;
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(515f)))));
    let var_1 = false || (52261u <= global4[_wgslsmith_index_u32(5515u, 19u)]);
    var var_2 = vec2<i32>(-(~firstTrailingBit(-1063i)), _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, -1i, 2147483647i)), vec3<i32>(4845i, 36224i, -17749i)), -1i));
    var var_3 = func_2(Struct_1(~global3.a), false && global1[_wgslsmith_index_u32(~abs(54986u), 13u)]);
    global2 = firstLeadingBit(-var_2.x);
    return vec2<f32>(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-901f - _wgslsmith_f_op_f32(ceil(1f))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    global2 = -(~abs(-2147483647i));
    let var_0 = Struct_1(firstLeadingBit(1u));
    let var_1 = func_2(var_0, !func_4(~(-vec4<i32>(-42608i, 2147483647i, 70750i, 16897i)), func_2(func_2(Struct_1(var_0.a), false), true), arg_0.x).x);
    let var_2 = 23965u;
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(1i, ~select(0i, -2147483647i, false) >> (global3.a % 32u), min(reverseBits(0i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(32680i, -2147483647i), ~43009i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, max(-7637i, 1i)), firstLeadingBit(i32(-1i) * -9910i))), -vec4<i32>(~1i, 1i, countOneBits(1i), 51726i));
    return func_2(func_2(var_0, _wgslsmith_add_u32(func_3(arg_0.x, vec3<i32>(var_3.x, var_3.x, var_3.x), Struct_1(0u)), _wgslsmith_add_u32(0u, global4[_wgslsmith_index_u32(113174u, 19u)])) < _wgslsmith_dot_vec4_u32(vec4<u32>(68246u, 4294967295u, u_input.a, 0u), countOneBits(vec4<u32>(var_2, 42453u, 59124u, u_input.a)))), !arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1368f, -839f), vec2<f32>(842f, 1000f), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1060f, -562f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1007f, -252f) * vec2<f32>(-715f, -267f))))), all(!func_4(select(vec4<i32>(-1i, 9641i, 31461i, -2751i), vec4<i32>(-1i, -1i, -4888i, -3304i), vec4<bool>(false, false, true, false)), func_2(Struct_1(global4[_wgslsmith_index_u32(4294967295u, 19u)]), true), _wgslsmith_f_op_f32(step(-271f, 1000f))).xxw), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u << (~u_input.a % 32u), 13u)], false, true, true));
    global0 = -418f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -910f)))));
    global0 = (!(~global3.a >= 79623u) == any(vec2<bool>(global1[_wgslsmith_index_u32(abs(var_0.a), 13u)], global1[_wgslsmith_index_u32(max(1u, 1u), 13u)]))) || any(func_4(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, -1i, -2147483647i, -39805i)), select(vec4<i32>(2147483647i, -29381i, 22292i, -2147483647i), vec4<i32>(-1i, -2147483647i, 1i, 2147483647i), vec4<bool>(true, global1[_wgslsmith_index_u32(global3.a, 13u)], false, global1[_wgslsmith_index_u32(4294967295u, 13u)]))), Struct_1(~131964u), _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-349f, -1473f))).yy);
    var var_1 = !vec2<bool>((global1[_wgslsmith_index_u32(u_input.a, 13u)] | !global1[_wgslsmith_index_u32(4294967295u, 13u)]) || global1[_wgslsmith_index_u32(1u, 13u)], true);
    global0 = func_4(vec4<i32>(1i, 1i, 1i, 1i), Struct_1(var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f * 1799f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f + 406f))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(13646i, 3615i, -57050i, 0i), vec4<i32>(47245i, -11946i, 40099i, 81027i)), 1i) & -1i), ~(-1i) >> (reverseBits(~_wgslsmith_div_u32(u_input.a, global4[_wgslsmith_index_u32(u_input.a, 19u)])) % 32u), min(vec4<i32>(select(~1i, -2147483647i, true), ~reverseBits(26892i), -2147483647i, 1i), ~vec4<i32>(_wgslsmith_mult_i32(1979i, -40190i), ~(-34276i), 1i, -5321i)));
}

