struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-952f, -1048f, 188f, 629f, -1000f, 2599f, 334f, -864f, -1000f, -999f, 111f, -547f, 1903f, 1223f, -733f, -333f, -961f, 782f);

var<private> global1: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(20871u, 4294967295u), vec2<u32>(44843u, 4294967295u), vec2<u32>(1077u, 21777u), vec2<u32>(63002u, 4294967295u), vec2<u32>(64582u, 33679u), vec2<u32>(1u, 28157u), vec2<u32>(12639u, 19149u), vec2<u32>(6688u, 1u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-11794i), _wgslsmith_dot_vec4_i32(vec4<i32>(20467i, -2147483647i, 17970i, u_input.a), vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), abs(vec2<i32>(-1i, u_input.a))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, 7347u), 8u)], all(!(!vec2<bool>(false, arg_0.c))) & arg_0.c);
    let var_1 = -(~min(-select(vec2<i32>(37853i, -21654i), vec2<i32>(arg_0.a, u_input.a), vec2<bool>(var_0.c, arg_0.c)), _wgslsmith_div_vec2_i32(select(vec2<i32>(var_0.a, var_0.a), vec2<i32>(u_input.a, 1i), vec2<bool>(arg_0.c, false)), abs(vec2<i32>(72025i, var_0.a)))));
    var_0 = arg_0;
    global0 = array<f32, 18>();
    let var_2 = abs(abs(select(vec3<u32>(45600u, arg_0.b.x, 49080u), vec3<u32>(2415u, arg_0.b.x, 1u), arg_0.c)) << (_wgslsmith_div_vec3_u32(vec3<u32>(134181u, var_0.b.x, 4294967295u), vec3<u32>(arg_0.b.x, 1u, 1u)) % vec3<u32>(32u))) | (abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 14565u, 7375u), vec3<u32>(11630u, var_0.b.x, 61116u), vec3<u32>(arg_0.b.x, u_input.b, 24389u))) | ~(~(vec3<u32>(2421u, arg_0.b.x, arg_0.b.x) | vec3<u32>(54507u, 7868u, var_0.b.x))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 18u)], -839f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> i32 {
    var var_0 = Struct_1(-4296i, arg_0.b & vec2<u32>(arg_0.b.x, ~(~22891u)), all(!(!select(vec2<bool>(arg_0.c, true), vec2<bool>(false, true), true))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 792f)) + _wgslsmith_f_op_f32(-arg_1.x));
    let var_2 = ~var_0.b.x;
    var var_3 = arg_0.a;
    var_0 = Struct_1(arg_0.a, vec2<u32>(_wgslsmith_mult_u32(~(~u_input.b), 1u), 33227u), !(!var_0.c));
    return _wgslsmith_mod_i32(-arg_0.a, -60869i);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = array<f32, 18>();
    var var_0 = -555f;
    var var_1 = vec3<i32>(func_4(Struct_1(arg_0.a, ~(~vec2<u32>(arg_0.b.x, 90831u)), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(func_3(arg_0)), ~(~u_input.a << (~0u % 32u))), 24785i, reverseBits(arg_0.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1446f, global0[_wgslsmith_index_u32(4294967295u, 18u)], -1525f, 628f), vec4<f32>(global0[_wgslsmith_index_u32(6544u, 18u)], 777f, 822f, global0[_wgslsmith_index_u32(u_input.b, 18u)])))))))));
    var var_3 = ~(-abs(~var_1.xy) << ((_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 55175u), ~arg_0.b) & select(vec2<u32>(0u, arg_0.b.x), ~arg_0.b, arg_0.c)) % vec2<u32>(32u)));
    return arg_0.c;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = !func_2(arg_2, _wgslsmith_clamp_i32(arg_2.a >> (u_input.b % 32u), -1i, ~(-37376i))) || !(!all(select(vec2<bool>(false, arg_2.c), vec2<bool>(true, arg_2.c), arg_2.c)));
    let var_1 = _wgslsmith_clamp_i32(20325i, u_input.a, u_input.a);
    var var_2 = any(select(!(!select(vec4<bool>(false, arg_2.c, true, arg_2.c), vec4<bool>(true, false, true, arg_2.c), vec4<bool>(arg_2.c, arg_2.c, arg_2.c, true))), vec4<bool>(_wgslsmith_f_op_f32(max(arg_1.x, 1129f)) == arg_0, true, true, arg_2.c), arg_2.c));
    var_2 = arg_2.c;
    var var_3 = _wgslsmith_add_i32(firstLeadingBit(abs(11544i)), 35521i << (_wgslsmith_clamp_u32(~(4294967295u & u_input.b), arg_2.b.x, u_input.b) % 32u));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(1478u, u_input.b | ~_wgslsmith_div_u32(0u, 1u), ~abs(4347u)), vec3<u32>(4294967295u, 80872u, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, arg_2.b.x), vec3<u32>(u_input.b, arg_2.b.x, 1u)), max(vec3<u32>(u_input.b, 29934u, 12714u), ~vec3<u32>(1u, arg_2.b.x, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 18>();
    var var_0 = _wgslsmith_dot_vec3_u32(select((select(vec3<u32>(u_input.b, 4294967295u, 29564u), vec3<u32>(43504u, u_input.b, u_input.b), true) ^ countOneBits(vec3<u32>(14888u, 45189u, u_input.b))) >> (select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(110115u, u_input.b, u_input.b), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_sub_u32(u_input.b, 63539u) << (reverseBits(11796u) % 32u), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b, 0u), func_1(global0[_wgslsmith_index_u32(34522u, 18u)], vec3<f32>(global0[_wgslsmith_index_u32(39750u, 18u)], -784f, -431f), Struct_1(13428i, global1[_wgslsmith_index_u32(u_input.b, 8u)], true))), _wgslsmith_mult_u32(u_input.b, ~u_input.b)), (_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 18u)])) != global0[_wgslsmith_index_u32(1u, 18u)]) || false), vec3<u32>(firstTrailingBit(~max(u_input.b, u_input.b)), u_input.b, 26616u));
    var var_1 = Struct_1(countOneBits(u_input.a), vec2<u32>(_wgslsmith_mod_u32(2851u, abs(u_input.b) >> (u_input.b % 32u)), ~abs(_wgslsmith_add_u32(25315u, u_input.b))), all(vec4<bool>(false, false, true, true)));
    global0 = array<f32, 18>();
    let var_2 = Struct_1(select(u_input.a, -((u_input.a << (90580u % 32u)) >> (u_input.b % 32u)), !((-612f >= global0[_wgslsmith_index_u32(95592u, 18u)]) && func_2(Struct_1(3191i, var_1.b, var_1.c), 34298i))), (abs(vec2<u32>(u_input.b, 18523u) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(6766u, ~var_1.b.x) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(~select(vec2<u32>(var_1.b.x, 4212u), var_1.b, vec2<bool>(true, true)), select(abs(global1[_wgslsmith_index_u32(1u, 8u)]), ~vec2<u32>(13996u, var_1.b.x), select(vec2<bool>(var_1.c, false), vec2<bool>(false, true), false))) % vec2<u32>(32u)), !(!(!var_1.c)));
    let var_3 = vec3<bool>(any(vec4<bool>(false, false || !var_1.c, var_2.c, var_1.c)), all(select(select(select(vec4<bool>(false, var_1.c, false, false), vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c), var_1.c), vec4<bool>(true, true, true, true), false), select(!vec4<bool>(var_2.c, var_1.c, var_2.c, var_1.c), vec4<bool>(var_2.c, false, true, var_2.c), !vec4<bool>(var_2.c, false, false, var_1.c)), var_2.c)), u_input.b > var_2.b.x);
    var_1 = var_2;
    let var_4 = _wgslsmith_mod_i32(u_input.a, 2752i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(~88694u, ~u_input.b >> (_wgslsmith_div_u32(0u, u_input.b) % 32u)), abs(var_1.b.x)), ~var_2.b, firstTrailingBit(-vec3<i32>(var_1.a, -1i, 40278i) | abs(vec3<i32>(var_2.a, var_2.a, var_4))) & -vec3<i32>(~29816i, 1i, 11501i), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), 0i), firstTrailingBit(var_1.a));
}

