struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(257f, 1165f, 260f, 1108f, -1267f, 1000f, -569f, -322f, -1228f, 559f, 2274f, -1107f, 788f, -691f, 1117f, -1700f, 377f, 451f, 2271f, 487f, -218f, 1000f, -558f);

var<private> global1: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(1168u, 4294967295u, 0u, 8512u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(1314u, 4294967295u, 0u, 43060u), vec4<u32>(0u, 23887u, 1u, 1u), vec4<u32>(24927u, 1u, 50748u, 47525u), vec4<u32>(13378u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 785u, 91618u), vec4<u32>(1u, 1u, 1u, 45251u), vec4<u32>(22833u, 8495u, 34713u, 4294967295u), vec4<u32>(1u, 4294967295u, 50315u, 1u), vec4<u32>(2801u, 0u, 43186u, 41107u), vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(0u, 56537u, 82326u, 4294967295u), vec4<u32>(47341u, 16303u, 81781u, 1u));

var<private> global2: i32 = -25164i;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<f32>(-933f, -1009f, -550f, -395f), vec2<i32>(-49539i, i32(-2147483648)), false), Struct_1(vec4<f32>(310f, -1000f, -777f, -1304f), vec2<i32>(-9099i, 1i), true));

var<private> global4: array<bool, 31>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b.a - vec4<f32>(671f, 575f, 1000f, global3.b.a.x)), vec4<f32>(-208f, -1000f, _wgslsmith_f_op_f32(2323f * -610f), _wgslsmith_div_f32(global3.a.a.x, global3.b.a.x))), select(arg_0.a.b, global3.b.b, select(!vec2<bool>(global3.b.c, false), vec2<bool>(true, true), vec2<bool>(global3.b.c, true))), u_input.a <= (select(4294967295u, u_input.a, global4[_wgslsmith_index_u32(u_input.a, 31u)]) ^ _wgslsmith_sub_u32(u_input.a, 4294967295u))), Struct_1(global3.a.a, vec2<i32>(_wgslsmith_add_i32(arg_0.a.b.x, global3.a.b.x), 13353i) | select(_wgslsmith_mult_vec2_i32(arg_0.a.b, vec2<i32>(arg_0.a.b.x, 1i)), vec2<i32>(-2147483647i, -1i) | vec2<i32>(-4149i, arg_0.a.b.x), true), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~29301u, 32451u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), ~u_input.a)), 31u)]));
    let var_1 = true;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-var_0.b.a.x);
    return var_0.a;
}

fn func_3(arg_0: Struct_2) -> Struct_2 {
    global4 = array<bool, 31>();
    let var_0 = select(!vec3<bool>(true && (u_input.a >= 14602u), any(select(vec3<bool>(global3.b.c, global3.b.c, true), vec3<bool>(true, global3.a.c, true), false)), true), !select(select(select(vec3<bool>(true, false, false), vec3<bool>(global4[_wgslsmith_index_u32(1u, 31u)], global3.b.c, global3.b.c), true), vec3<bool>(false, false, arg_0.a.c), !vec3<bool>(global4[_wgslsmith_index_u32(1u, 31u)], false, arg_0.a.c)), !select(vec3<bool>(false, global3.a.c, false), vec3<bool>(true, false, global4[_wgslsmith_index_u32(u_input.a, 31u)]), global4[_wgslsmith_index_u32(u_input.a, 31u)]), true), all(vec3<bool>(true, all(!vec4<bool>(false, true, global4[_wgslsmith_index_u32(0u, 31u)], false)), true)));
    let var_1 = all(var_0);
    global0 = array<f32, 23>();
    global4 = array<bool, 31>();
    return Struct_2(global3.b, func_2(Struct_3(func_2(Struct_3(Struct_1(global3.b.a, vec2<i32>(-2147483647i, 52888i), arg_0.b.c), arg_0.b.b.x)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, -41517i), 1i))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec3<f32>) -> vec4<f32> {
    global3 = func_3(Struct_2(func_2(arg_1), global3.a));
    let var_0 = vec3<u32>(~firstLeadingBit(u_input.a), 1u, 13798u);
    var var_1 = func_3(Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-694f * -150f), arg_2.x, 948f, _wgslsmith_f_op_f32(arg_0 + -1690f)), select(vec2<i32>(global3.b.b.x, arg_1.b) << (vec2<u32>(33032u, var_0.x) % vec2<u32>(32u)), vec2<i32>(global3.a.b.x, global3.b.b.x), global3.b.c), (global3.b.b.x > -2186i) == (global3.a.b.x <= global3.a.b.x)), func_3(Struct_2(global3.a, Struct_1(vec4<f32>(global3.b.a.x, -664f, arg_1.a.a.x, global0[_wgslsmith_index_u32(0u, 23u)]), vec2<i32>(-2147483647i, global3.a.b.x), arg_1.a.c))).b)).b;
    let var_2 = vec2<bool>(false, arg_1.a.c);
    var var_3 = func_3(func_3(func_3(func_3(func_3(Struct_2(global3.a, Struct_1(var_1.a, vec2<i32>(-14318i, arg_1.a.b.x), false)))))));
    return _wgslsmith_f_op_vec4_f32(var_3.a.a - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.b.a.x))), 193f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: vec3<bool>) -> vec4<bool> {
    let var_0 = global3.a.a.x > _wgslsmith_f_op_f32(abs(arg_1.a.a.x));
    let var_1 = Struct_3(func_3(Struct_2(arg_0, func_2(Struct_3(arg_0, 35108i)))).b, 2147483647i);
    let var_2 = Struct_2(Struct_1(arg_0.a, ~(-(~vec2<i32>(-72136i, -14226i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1425f, 341f, false))) >= 810f), Struct_1(arg_1.a.a, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 84438i), vec3<i32>(arg_1.b, 25560i, global3.b.b.x)) ^ global3.a.b.x, reverseBits(i32(-1i) * -11385i)), arg_1.a.c));
    var var_3 = _wgslsmith_div_vec2_i32(max(vec2<i32>(-1i) * -max(vec2<i32>(var_2.a.b.x, -69375i), global3.a.b), vec2<i32>(reverseBits(arg_0.b.x), min(1i, 2147483647i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), var_2.a.b)), var_2.a.b);
    let var_4 = func_3(func_3(func_3(func_3(Struct_2(Struct_1(vec4<f32>(-156f, -712f, 710f, arg_1.a.a.x), vec2<i32>(3415i, arg_1.a.b.x), true), var_2.a)))));
    return vec4<bool>(var_0, false && (abs(arg_2) <= 1u), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), 31u)] | false, func_3(func_3(Struct_2(Struct_1(vec4<f32>(792f, -1000f, global3.b.a.x, 1823f), vec2<i32>(arg_1.a.b.x, arg_0.b.x), false), func_2(Struct_3(var_4.b, var_1.b))))).b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b.b.x & _wgslsmith_mod_i32(global3.a.b.x, i32(-1i) * -47172i);
    var var_1 = vec3<i32>(_wgslsmith_clamp_i32(10385i, var_0, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -21441i), ~vec2<i32>(-2147483647i, 2147483647i)))), global3.b.b.x, firstTrailingBit(var_0));
    let var_2 = -248f;
    let var_3 = all(!func_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_1(var_2, Struct_3(Struct_1(vec4<f32>(-1000f, 158f, global3.a.a.x, global0[_wgslsmith_index_u32(0u, 23u)]), vec2<i32>(var_0, var_0), false), -1i), global3.a.a.wxw)), vec2<i32>(var_1.x, 2147483647i), true | global4[_wgslsmith_index_u32(u_input.a, 31u)]), Struct_3(global3.a, 46038i & global3.a.b.x), _wgslsmith_clamp_u32(~8998u, 54363u & u_input.a, ~u_input.a), select(select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 31u)], global3.b.c, false), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 31u)], true), false), vec3<bool>(global3.a.c, global4[_wgslsmith_index_u32(0u, 31u)], false), global3.b.c)));
    let var_4 = Struct_2(func_2(Struct_3(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], 645f, 664f), abs(vec2<i32>(64555i, 0i)), global4[_wgslsmith_index_u32(1u, 31u)]), -1i)), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(36860u, 23u)] - global3.b.a.x), 718f, _wgslsmith_f_op_f32(ceil(global3.b.a.x)), _wgslsmith_f_op_f32(-416f - -2196f)), global3.b.a)), -var_1.yy, global4[_wgslsmith_index_u32(select(~u_input.a, u_input.a, var_3), 31u)]));
    var var_5 = _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2 * 485f), _wgslsmith_f_op_f32(-var_2))) * global3.a.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 23u)] + -1078f), true)))), Struct_3(global3.b, -2147483647i), _wgslsmith_f_op_vec3_f32(global3.a.a.yxz * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2, 197f, var_2), var_4.b.a.wzx)), vec3<f32>(_wgslsmith_div_f32(345f, 1070f), _wgslsmith_f_op_f32(round(-337f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(15600u, 23u)]))))))).wzy;
    global4 = array<bool, 31>();
    let var_6 = ~(~(max(~vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(u_input.a, 62176u, 0u)) ^ ~min(vec3<u32>(0u, 69865u, u_input.a), vec3<u32>(4294967295u, u_input.a, 1u))));
    var var_7 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.b.a.x, var_5.x, -181f, -758f), global3.b.a, select(vec4<bool>(global4[_wgslsmith_index_u32(8406u, 31u)], true, false, var_4.a.c), vec4<bool>(var_4.b.c, true, var_3, global4[_wgslsmith_index_u32(var_6.x, 31u)]), vec4<bool>(true, true, var_3, false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a.x, var_4.b.a.x, -305f, -1366f)) - global3.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(var_6.x, 15u)] & ~(~vec4<u32>(0u, var_6.x, 4094u, var_6.x)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(0u, var_6.x | var_6.x, 37112u)), vec3<u32>(1u, min(~16796u, ~4294967295u), ~(~var_6.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(18479u, 0u, 25024u), u_input.a & ~4294967295u), ~var_6.xz));
}

