struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7>;

var<private> global1: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_2(37702u, Struct_1(true, vec3<f32>(1435f, -740f, -103f), vec4<u32>(93589u, 46721u, 628u, 2172u), 1234f, vec2<bool>(false, false)), Struct_1(true, vec3<f32>(906f, 702f, 980f), vec4<u32>(4294967295u, 17168u, 0u, 0u), -1345f, vec2<bool>(true, false)), Struct_1(true, vec3<f32>(-460f, 593f, 2780f), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), 363f, vec2<bool>(true, false))), vec4<i32>(-13502i, 58569i, i32(-2147483648), i32(-2147483648)), true, false), Struct_4(Struct_2(1u, Struct_1(false, vec3<f32>(411f, 1189f, -158f), vec4<u32>(1u, 1u, 9929u, 1058u), -153f, vec2<bool>(false, true)), Struct_1(true, vec3<f32>(-212f, 218f, 313f), vec4<u32>(1u, 37844u, 1u, 20326u), -151f, vec2<bool>(true, true)), Struct_1(true, vec3<f32>(929f, -690f, 1081f), vec4<u32>(4443u, 1u, 4294967295u, 4294967295u), 408f, vec2<bool>(true, true))), vec4<i32>(-24586i, -1i, 92035i, i32(-2147483648)), true, false), Struct_4(Struct_2(0u, Struct_1(false, vec3<f32>(-989f, 857f, -641f), vec4<u32>(4294967295u, 4294967295u, 38125u, 18205u), 1209f, vec2<bool>(false, true)), Struct_1(false, vec3<f32>(-1000f, 296f, 578f), vec4<u32>(0u, 0u, 4294967295u, 0u), -1760f, vec2<bool>(true, true)), Struct_1(false, vec3<f32>(169f, -590f, -577f), vec4<u32>(882u, 5229u, 68245u, 4294967295u), -1075f, vec2<bool>(true, false))), vec4<i32>(11634i, 36916i, i32(-2147483648), -30226i), false, true), Struct_4(Struct_2(4294967295u, Struct_1(true, vec3<f32>(1332f, 273f, -1323f), vec4<u32>(7497u, 6057u, 18099u, 110324u), 703f, vec2<bool>(true, false)), Struct_1(true, vec3<f32>(-2365f, -341f, -695f), vec4<u32>(3909u, 4294967295u, 89561u, 1u), 332f, vec2<bool>(false, false)), Struct_1(false, vec3<f32>(1493f, 1000f, -129f), vec4<u32>(1u, 1u, 0u, 18693u), -216f, vec2<bool>(true, false))), vec4<i32>(2147483647i, 0i, 41876i, 0i), true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_1(arg_0.d.c.x <= ~u_input.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_0.b.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-339f, 659f, arg_1.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.d.b, vec3<f32>(arg_1.x, arg_0.d.b.x, 435f)), arg_0.b.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.c.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1064f, 513f, 1183f))), false)))))), arg_0.c.c, arg_0.c.d, vec2<bool>(true, arg_0.d.e.x));
    return !select(!select(select(vec4<bool>(arg_0.d.e.x, false, true, true), vec4<bool>(var_0.e.x, false, false, arg_0.c.e.x), true), !vec4<bool>(var_0.e.x, false, var_0.e.x, var_0.a), var_0.e.x), !(!(!vec4<bool>(arg_0.b.a, true, arg_0.b.e.x, false))), any(!select(vec3<bool>(false, var_0.a, false), vec3<bool>(false, arg_0.d.a, true), vec3<bool>(true, var_0.e.x, true))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1441f, -803f));
    var var_1 = global1[_wgslsmith_index_u32(~(~(0u | u_input.a)) & ~u_input.a, 4u)];
    let var_2 = !(!func_3(Struct_2(20988u, var_1.a.c, var_1.a.c, Struct_1(var_1.c, var_1.a.d.b, vec4<u32>(0u, var_1.a.b.c.x, 26138u, u_input.b), -777f, var_1.a.b.e)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1889f), _wgslsmith_f_op_f32(step(-1515f, -1134f))), 2147483647i));
    var_1 = Struct_4(var_1.a, ~(~var_1.b) << (var_1.a.c.c % vec4<u32>(32u)), firstLeadingBit(39441u) == var_1.a.d.c.x, any(vec2<bool>(!(var_1.a.b.b.x > 283f), !all(vec4<bool>(var_1.a.d.a, true, var_2.x, true)))));
    global1 = array<Struct_4, 4>();
    return _wgslsmith_mult_u32(~(~61562u), 0u);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec2<i32> {
    let var_0 = reverseBits(-max(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.c.x, 0i), vec4<i32>(u_input.c.x, -1i, 0i, u_input.c.x)), vec4<i32>(u_input.c.x, u_input.c.x, ~(-1i), i32(-1i) * -6978i)));
    let var_1 = i32(-1i) * -19160i;
    var var_2 = max(var_1, _wgslsmith_mod_i32(-38822i, u_input.c.x) >> (abs(countOneBits(4294967295u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.b, 70311u, u_input.a), vec4<u32>(arg_1.x, arg_0.b, arg_2.x, 92289u)) % 32u)) % 32u));
    let var_3 = Struct_4(Struct_2(func_2(), Struct_1(func_3(Struct_2(1095u, Struct_1(true, vec3<f32>(1164f, 1040f, -708f), vec4<u32>(29375u, arg_2.x, 4294967295u, 4294967295u), 766f, vec2<bool>(false, true)), Struct_1(false, vec3<f32>(780f, 185f, 189f), vec4<u32>(4294967295u, u_input.b, 59769u, 19154u), -1153f, vec2<bool>(true, false)), Struct_1(false, vec3<f32>(-1062f, -1372f, -1000f), arg_2, -637f, vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(917f, 2018f) - vec2<f32>(461f, 1000f)), u_input.c.x).x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1856f, -2342f, 661f), vec3<f32>(-823f, 1222f, -110f), false)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(357f, 1000f, -495f)))), arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -783f))), vec2<bool>(all(vec3<bool>(false, false, false)), true)), Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-108f, -124f, 536f))), vec4<u32>(56607u | arg_1.x, 1u, firstTrailingBit(1u), ~78883u), 833f, vec2<bool>(true, true)), Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(599f, -2364f, -1000f)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1.x, arg_1.x, u_input.d), ~vec4<u32>(arg_0.b, 68589u, 0u, 1u)), 1176f, func_3(Struct_2(4294967295u, Struct_1(true, vec3<f32>(-481f, 355f, -1156f), vec4<u32>(arg_0.b, 9432u, 4294967295u, 1u), -491f, vec2<bool>(true, true)), Struct_1(false, vec3<f32>(376f, -997f, -488f), vec4<u32>(23934u, 0u, arg_0.b, arg_1.x), -353f, vec2<bool>(false, true)), Struct_1(true, vec3<f32>(-1000f, 1000f, -894f), arg_2, 860f, vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(713f, 1000f)), var_1).zw)), var_0, !all(vec4<bool>(any(vec4<bool>(false, true, false, true)), all(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, true, true)), true)), false);
    let var_4 = Struct_2(firstTrailingBit(41139u), Struct_1(var_3.a.d.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a.c.b) - vec3<f32>(-1138f, _wgslsmith_f_op_f32(895f + 1000f), _wgslsmith_f_op_f32(step(-716f, var_3.a.d.b.x)))), vec4<u32>(u_input.b, select(arg_1.x | arg_1.x, _wgslsmith_sub_u32(u_input.d, 5562u), !var_3.d), countOneBits(u_input.b), 65543u), var_3.a.c.d, !var_3.a.c.e), Struct_1(!all(vec4<bool>(var_3.c, var_3.c, var_3.d, var_3.c)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_3.a.d.b))), ~(~vec4<u32>(var_3.a.a, arg_1.x, 0u, 85910u)), var_3.a.c.d, vec2<bool>(true, true)), var_3.a.c);
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<Struct_4, 4>();
    let var_1 = _wgslsmith_mod_u32(u_input.a, 25125u);
    global0 = array<vec2<i32>, 7>();
    global1 = array<Struct_4, 4>();
    global0 = array<vec2<i32>, 7>();
    var var_2 = (vec2<i32>(-1i) * -func_1(Struct_3(103450u, 7337u), ~vec2<u32>(u_input.b, u_input.a), ~vec4<u32>(u_input.d, var_1, 4294967295u, var_1))) << (_wgslsmith_sub_vec2_u32(abs(reverseBits(abs(vec2<u32>(u_input.d, 34891u)))), ~vec2<u32>(79692u, _wgslsmith_mult_u32(u_input.d, u_input.d))) % vec2<u32>(32u));
    let var_3 = min(~(countOneBits(vec4<i32>(var_2.x, var_2.x, u_input.c.x, 2147483647i)) ^ ((vec4<i32>(-1i, 21819i, u_input.c.x, -60850i) << (vec4<u32>(112901u, var_1, 0u, u_input.b) % vec4<u32>(32u))) >> (~vec4<u32>(48926u, var_1, 44327u, u_input.b) % vec4<u32>(32u)))), vec4<i32>(select(-35830i, 1i, any(!vec4<bool>(var_0, var_0, false, true))), 1i, -u_input.c.x, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(17349u, var_1, 0u), vec3<u32>(32020u, 0u, 0u) & vec3<u32>(9506u, 39358u, var_1), vec3<bool>(true, true, true)), firstLeadingBit(~vec3<u32>(u_input.d, 74981u, var_1))), select(firstTrailingBit(vec3<u32>(0u, var_1, 49274u)), select(vec3<u32>(49431u, 4294967295u, var_1) & vec3<u32>(0u, u_input.b, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(30451u, u_input.a, 4294967295u), vec3<u32>(var_1, 872u, 51148u)), vec3<bool>(true, true, true)), var_0)));
}

