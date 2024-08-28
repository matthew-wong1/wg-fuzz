struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(16808i), Struct_2(25339i), Struct_2(-13321i), Struct_2(12541i), Struct_2(-1i), Struct_2(14816i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(-2943i), Struct_2(16730i), Struct_2(-1i), Struct_2(-52164i), Struct_2(-1i), Struct_2(0i), Struct_2(11168i), Struct_2(2147483647i), Struct_2(-2177i), Struct_2(-1i), Struct_2(-1048i), Struct_2(i32(-2147483648)), Struct_2(-13310i), Struct_2(i32(-2147483648)), Struct_2(17749i), Struct_2(0i), Struct_2(19109i), Struct_2(52166i), Struct_2(-11510i), Struct_2(5955i), Struct_2(i32(-2147483648)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> bool {
    let var_0 = Struct_3(true, Struct_1(-148f, select(u_input.a, u_input.a ^ u_input.a, false), ~6985u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-530f, 937f) + _wgslsmith_f_op_f32(min(707f, 926f))))));
    global0 = array<Struct_2, 31>();
    var var_1 = Struct_3(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(10664i, var_0.b.b, 465i, var_0.b.b), vec4<i32>(var_0.b.b, var_0.b.b, -30779i, var_0.b.b)), firstLeadingBit(vec4<i32>(0i, -25649i, -65563i, var_0.b.b) >> (vec4<u32>(6206u, 1u, 0u, u_input.c.x) % vec4<u32>(32u)))) >= 0i, Struct_1(var_0.b.d, 20562i, var_0.b.c, -2837f));
    global0 = array<Struct_2, 31>();
    let var_2 = Struct_2(0i);
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = -_wgslsmith_clamp_vec4_i32(firstLeadingBit(~(vec4<i32>(21210i, u_input.a, 10148i, 0i) | vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a))), vec4<i32>(~14272i, ~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, 2147483647i), vec3<i32>(u_input.a, 0i, 2147483647i)), 10986i) >> (vec4<u32>(u_input.b.x, u_input.c.x, _wgslsmith_div_u32(4294967295u, 49752u), ~4294967295u) % vec4<u32>(32u)), ~vec4<i32>(select(-38541i, 18732i, false), u_input.a, 0i, -3314i));
    global0 = array<Struct_2, 31>();
    var_0 = vec4<i32>(var_0.x, -2633i >> (_wgslsmith_mod_u32(14041u, ~_wgslsmith_clamp_u32(u_input.c.x, 60310u, u_input.c.x)) % 32u), ~7074i, u_input.a);
    var var_1 = Struct_3(func_3(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(644f, -1592f), _wgslsmith_f_op_f32(f32(-1f) * -776f), true))), ~_wgslsmith_add_i32(var_0.x, -80039i), firstTrailingBit(u_input.b.x << (u_input.b.x % 32u)), 1f));
    let var_2 = _wgslsmith_f_op_f32(-1000f + -1458f);
    return Struct_1(_wgslsmith_f_op_f32(select(var_2, var_2, false)), -1i, 1u, var_2);
}

fn func_1() -> u32 {
    var var_0 = 14888i;
    let var_1 = vec2<i32>(u_input.a, u_input.a);
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, -1360f, -1000f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1274f, -501f, 869f))))));
    let var_4 = 4294967295u;
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    global0 = array<Struct_2, 31>();
    let var_0 = arg_1;
    var var_1 = var_0.b.c;
    var var_2 = arg_0;
    let var_3 = all(vec2<bool>(!((arg_3.b.b & arg_0.a) > _wgslsmith_clamp_i32(arg_1.b.b, 43841i, -2147483647i)), arg_3.a));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = u_input.a;
    var var_2 = 1u;
    var var_3 = func_4(global0[_wgslsmith_index_u32(func_1(), 31u)], Struct_3(select(func_3(), !any(vec3<bool>(true, true, false)), false), Struct_1(1097f, firstLeadingBit(1i), ~var_0, -145f)), Struct_2(countOneBits(1i >> (~var_0 % 32u))), Struct_3(u_input.a < _wgslsmith_add_i32(_wgslsmith_add_i32(-9541i, 2147483647i), _wgslsmith_add_i32(var_1, 69596i)), Struct_1(476f, _wgslsmith_div_i32(_wgslsmith_sub_i32(3934i, u_input.a), -2147483647i), 1u, _wgslsmith_f_op_f32(f32(-1f) * -528f))));
    global0 = array<Struct_2, 31>();
    var_3 = Struct_1(370f, _wgslsmith_sub_i32(2147483647i ^ (-14760i >> (~var_3.c % 32u)), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-2147483647i, u_input.a, 2547i) ^ vec3<i32>(1i, -2147483647i, u_input.a)), -_wgslsmith_add_vec3_i32(vec3<i32>(42446i, var_3.b, u_input.a), vec3<i32>(32387i, var_1, u_input.a)))), 74519u, 249f);
    var var_4 = ~(~abs(abs(var_0))) >= var_0;
    let var_5 = -(abs(vec3<i32>(_wgslsmith_mod_i32(u_input.a, var_1), abs(1416i), _wgslsmith_dot_vec2_i32(vec2<i32>(5010i, var_3.b), vec2<i32>(-1i, -1i)))) << (firstLeadingBit(vec3<u32>(7732u, 1u & u_input.b.x, 1u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-(-vec2<i32>(0i, -20702i) | vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 0i, -13776i), vec4<i32>(var_3.b, var_5.x, -1i, u_input.a)))));
}

