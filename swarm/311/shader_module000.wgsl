struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(4294967295u, 4294967295u, 1u, 4294967295u, 34597u, 50350u, 59371u, 4294967295u, 1u, 100334u, 57371u, 58296u, 38925u, 31970u, 0u, 4294967295u, 0u, 4294967295u, 4294967295u, 1u, 1u, 1u, 57884u, 31624u, 78841u, 93474u, 4755u, 1u, 4294967295u, 23990u, 7244u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.e;
    global0 = array<u32, 31>();
    var_0 = Struct_1(true, vec4<i32>(var_0.b.x, _wgslsmith_mod_i32(arg_2.x, (var_0.b.x | 2147483647i) | ~(-2147483647i)), -var_0.b.x, -(arg_3.e.b.x | 7148i) >> (~_wgslsmith_mod_u32(var_0.c, arg_3.e.c) % 32u)), ~12049u);
    let var_1 = Struct_2(true && arg_1.a, arg_0, vec2<u32>(arg_1.c >> (((1u >> (arg_1.c % 32u)) << (arg_1.c % 32u)) % 32u), arg_1.c), vec4<u32>(~_wgslsmith_sub_u32(1u, firstLeadingBit(4294967295u)), 28434u, ~_wgslsmith_dot_vec3_u32(arg_3.d.yyz, _wgslsmith_mult_vec3_u32(arg_3.d.yxw, vec3<u32>(150u, 15832u, 16540u))), _wgslsmith_sub_u32(var_0.c, 21427u)), Struct_1(true, arg_1.b, ~(~select(arg_1.c, 4294967295u, false))));
    global0 = array<u32, 31>();
    return i32(-1i) * -56045i;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> i32 {
    let var_0 = arg_1.c;
    let var_1 = ~(~firstTrailingBit(arg_1.c));
    return 79242i & firstTrailingBit(max(arg_0.e.b.x, min(arg_1.b.x, arg_0.e.b.x | 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = vec4<i32>(-1i, -4958i, func_4(arg_0, Struct_1(arg_0.e.a, vec4<i32>(arg_0.e.b.x, func_3(1060f, Struct_1(false, arg_0.e.b, 34353u), vec2<i32>(-3227i, -49049i), Struct_2(false, 1110f, u_input.a, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 29786u, arg_0.e.c, 4294967295u), arg_0.e)), 1i, firstTrailingBit(-62148i)), ~(~1u)), !(!(!vec4<bool>(arg_0.a, false, arg_0.a, true)))), 28270i);
    let var_1 = arg_0.d.x;
    global0 = array<u32, 31>();
    var var_2 = Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b))))), abs(select(max(vec2<u32>(30987u, 24150u), ~vec2<u32>(19727u, var_1)), vec2<u32>(~1u, _wgslsmith_mult_u32(2183u, 0u)), vec2<bool>(arg_0.e.a & false, arg_0.b < 1072f))), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(var_1, ~u_input.a.x, ~global0[_wgslsmith_index_u32(0u, 31u)], var_1)), reverseBits(arg_0.d)), Struct_1((true | arg_0.e.a) || arg_0.a, vec4<i32>(12780i, _wgslsmith_add_i32(min(-1i, var_0.x), _wgslsmith_add_i32(0i, arg_1)), arg_1, ~22567i | arg_1), ~u_input.a.x));
    var var_3 = all(select(!(!vec3<bool>(false, false, arg_0.e.a)), vec3<bool>(all(vec3<bool>(arg_0.a, arg_0.e.a, true)), arg_0.e.a, false), !(_wgslsmith_f_op_f32(var_2.b * arg_0.b) <= _wgslsmith_f_op_f32(-970f + 1582f))));
    return _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-997f))) * arg_0.b)) >= 159f;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = arg_0;
    var var_1 = select(!select(select(vec4<bool>(var_0.a, false, arg_0.a, true), select(vec4<bool>(var_0.e.a, arg_0.e.a, false, true), vec4<bool>(var_0.a, var_0.e.a, false, arg_0.e.a), var_0.a), 2147483647i != arg_1.x), vec4<bool>(all(vec2<bool>(var_0.e.a, true)), any(vec2<bool>(var_0.a, true)), any(vec4<bool>(arg_0.e.a, var_0.a, false, false)), arg_0.e.a | true), any(vec2<bool>(false, arg_0.e.a)) | true), !select(!vec4<bool>(true, var_0.a, true, false), vec4<bool>(false, any(vec2<bool>(var_0.e.a, var_0.a)), false, true), select(arg_0.a, true, 60260i > arg_1.x)), true);
    let var_2 = vec2<bool>(true | var_1.x, any(!vec3<bool>(var_0.e.a == var_0.a, func_2(arg_0, var_0.e.b.x), false | var_1.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_2.zy - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 1313f)) - arg_2.zz), arg_2.xy)))));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(692f, 1f, arg_0.e.a))))));
    return ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 31>();
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(8922u, _wgslsmith_mult_u32(u_input.b, ~1u) << (u_input.b % 32u), _wgslsmith_div_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(25357u, 31u)], 47100u), ~func_1(Struct_2(false, 1000f, vec2<u32>(u_input.a.x, 1u), vec4<u32>(global0[_wgslsmith_index_u32(62166u, 31u)], 1u, global0[_wgslsmith_index_u32(1u, 31u)], 4294967295u), Struct_1(false, vec4<i32>(-2147483647i, 9945i, 2147483647i, -2147483647i), 0u)), vec2<i32>(-39202i, -2147483647i), vec3<f32>(-1444f, -481f, 863f))), 2977u), countOneBits(min(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(6742u, 31u)]), vec4<u32>(u_input.b, 1u, 4294967295u, 21682u) << (vec4<u32>(global0[_wgslsmith_index_u32(0u, 31u)], 4380u, 42847u, global0[_wgslsmith_index_u32(44669u, 31u)]) % vec4<u32>(32u))) & ~reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(1u, 31u)], 137110u, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 31u)]))));
    global0 = array<u32, 31>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-891f - -1113f) - _wgslsmith_f_op_f32(-668f * -155f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(756f + 1f)))))));
    let var_2 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(588f, _wgslsmith_div_f32(-1689f, -2234f), false)))) * 735f), vec2<u32>(abs(~var_0.x), ~(var_0.x | u_input.b) ^ 1u), _wgslsmith_clamp_vec4_u32(countOneBits(abs(var_0)), vec4<u32>(0u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 31u)], 14314u), max(var_0.x, var_0.x), global0[_wgslsmith_index_u32(var_0.x, 31u)]), ~vec4<u32>(59048u, 4297u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 4294967295u)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(var_0, var_0 & var_0), abs(max(vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(109994u, 31u)]), var_0))), Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec4<i32>(1i, 1i, 1i, 1i) | firstTrailingBit(vec4<i32>(-23641i, -1i, 36920i, -32689i) << (vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)]) % vec4<u32>(32u))), var_0.x));
    let var_3 = var_2.e;
    var var_4 = Struct_1(var_3.a, _wgslsmith_clamp_vec4_i32(var_2.e.b, var_2.e.b, ~vec4<i32>(2147483647i, -50118i, 2147483647i, var_2.e.b.x)) | vec4<i32>(-14475i, -var_2.e.b.x, select(0i, -19399i, false) | var_2.e.b.x, -2147483647i), 185795u);
    var var_5 = Struct_1(var_3.a, var_4.b, abs(74792u ^ select(18523u, ~var_2.e.c, all(vec4<bool>(false, var_3.a, true, false)))));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_6), _wgslsmith_f_op_f32(trunc(678f)), -723f))));
}

