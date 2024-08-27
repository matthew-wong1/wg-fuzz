struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-504f, -394f);

var<private> global1: u32 = 1u;

var<private> global2: array<vec3<bool>, 13>;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, 0i), -3393i, false)), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, 0i), 13031i, false)), Struct_2(Struct_1(vec3<i32>(-14127i, 11965i, -50591i), -35346i, true)), Struct_2(Struct_1(vec3<i32>(-33751i, -21784i, -29439i), 29085i, false)), Struct_2(Struct_1(vec3<i32>(0i, 19000i, 0i), 14903i, true)));

var<private> global4: u32 = 0u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    return arg_2;
}

fn func_3() -> vec4<i32> {
    var var_0 = select(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(func_1(Struct_3(vec2<bool>(true, false), 9728u, true, u_input.c), -vec4<i32>(u_input.a.x, -23326i, u_input.b.x, 24519i), func_1(Struct_3(vec2<bool>(false, true), 52547u, false, 0u), vec4<i32>(-2147483647i, u_input.b.x, u_input.a.x, u_input.a.x), Struct_2(Struct_1(u_input.a, u_input.a.x, true)), global0.x), _wgslsmith_f_op_f32(-global0.x)).a.a.x, _wgslsmith_div_i32(countOneBits(u_input.a.x), -9511i), _wgslsmith_dot_vec3_i32(min(vec3<i32>(7664i, u_input.a.x, 24513i), u_input.a), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(7755i, 21250i, u_input.b.x)))), u_input.b.x, u_input.a.x), 1i, !(_wgslsmith_sub_u32(~u_input.c, 4294967295u & u_input.c) >= u_input.c));
    let var_1 = vec4<u32>(~max(~(4294967295u << (u_input.c % 32u)), firstLeadingBit(58409u)), max(~4294967295u, ~u_input.c << (_wgslsmith_div_u32(select(4294967295u, u_input.c, false), _wgslsmith_mod_u32(1u, u_input.c)) % 32u)), 1u, 4294967295u);
    global2 = array<vec3<bool>, 13>();
    let var_2 = false;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(329f, global0.x) - -405f)))), 407f);
    return vec4<i32>(~7500i, u_input.a.x, u_input.a.x, _wgslsmith_add_i32(abs(19001i) ^ u_input.a.x, u_input.a.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = vec4<i32>(-1i) * -max(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-104926i, -81141i, u_input.b.x, u_input.a.x), func_3(), select(vec4<i32>(arg_1.a.b, u_input.b.x, arg_1.a.b, u_input.a.x), vec4<i32>(arg_1.a.b, 19841i, 14145i, -2147483647i), vec4<bool>(false, true, true, false))), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, arg_1.a.b), vec4<i32>(37979i, -3115i, arg_1.a.a.x, -24608i)));
    let var_1 = Struct_3(vec2<bool>(select(true, func_1(Struct_3(vec2<bool>(arg_1.a.c, arg_1.a.c), 76170u, arg_1.a.c, 4294967295u), var_0, Struct_2(Struct_1(vec3<i32>(-357i, -2147483647i, 9733i), -15886i, false)), _wgslsmith_f_op_f32(f32(-1f) * -1499f)).a.c, all(select(vec2<bool>(true, arg_1.a.c), vec2<bool>(arg_1.a.c, true), vec2<bool>(false, arg_1.a.c)))), true), u_input.c, true, u_input.c);
    let var_2 = !(!select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_1.a.c, arg_1.a.c, var_1.a.x, arg_1.a.c), var_1.a.x), vec4<bool>(arg_1.a.c, var_1.a.x, true, true), vec4<bool>(true, true, arg_1.a.c, false)), vec4<bool>(var_1.a.x, any(vec4<bool>(var_1.c, true, arg_1.a.c, true)), !arg_1.a.c, arg_1.a.c & false), select(!vec4<bool>(var_1.c, true, var_1.a.x, false), vec4<bool>(var_1.a.x, var_1.c, arg_1.a.c, arg_1.a.c), any(vec4<bool>(true, true, true, true)))));
    let var_3 = vec2<bool>(false, ~arg_0.x <= ~8757u);
    global2 = array<vec3<bool>, 13>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-316f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true), select(false, true, any(global2[_wgslsmith_index_u32(u_input.c, 13u)]))), firstLeadingBit(8885u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(select(vec2<u32>(u_input.c, 49285u), vec2<u32>(0u, 8408u), vec2<bool>(false, true)), func_1(Struct_3(vec2<bool>(true, true), 4171u, true, 31024u), vec4<i32>(2147483647i, u_input.b.x, 0i, u_input.b.x), global3[_wgslsmith_index_u32(u_input.c, 5u)], 226f))), global0.x)), 0u);
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~u_input.a.zz & firstTrailingBit(vec2<i32>(-1i, 0i)), -u_input.a.yx >> ((vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<i32>(28841i, -_wgslsmith_sub_i32(-1i, -2147483647i))), func_3().zy);
    var var_2 = _wgslsmith_f_op_f32(-1215f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))) + global0.x));
    global1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(u_input.c, var_0.d, 1u)), ~vec3<u32>(u_input.c, 0u, 0u) ^ reverseBits(vec3<u32>(u_input.c, 29586u, var_0.b))), u_input.c, 1u) & _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(var_0.b, var_0.d, 27582u) << (vec3<u32>(78910u, u_input.c, 39312u) % vec3<u32>(32u)), ~vec3<u32>(1u, 4294967295u, 23197u), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, var_0.d), 13u)]), vec3<u32>(4294967295u, 0u, u_input.c)), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.b, var_0.d) ^ vec3<u32>(54866u, 33935u, var_0.d), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, 24086u), vec3<u32>(36637u, u_input.c, 4903u))));
    var var_3 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b.x, 0i), firstLeadingBit(-func_1(Struct_3(var_0.a, var_0.d, var_0.c, 11152u), vec4<i32>(var_1.x, var_1.x, 42967i, 1i), Struct_2(Struct_1(vec3<i32>(2147483647i, u_input.b.x, var_1.x), -1i, false)), 1000f).a.b)), func_3().x);
    var var_4 = !select(!vec4<bool>(var_0.c, var_0.a.x, true & var_0.c, true), select(select(select(vec4<bool>(true, var_0.a.x, true, var_0.c), vec4<bool>(var_0.c, true, var_0.c, false), vec4<bool>(true, var_0.c, true, false)), vec4<bool>(false, false, var_0.c, true), select(vec4<bool>(var_0.a.x, false, false, var_0.c), vec4<bool>(true, var_0.c, var_0.a.x, false), false)), !vec4<bool>(false, false, var_0.c, var_0.a.x), all(select(vec4<bool>(true, var_0.c, var_0.a.x, false), vec4<bool>(true, false, var_0.a.x, var_0.c), true))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, var_0.a.x, false, var_0.c), false)));
    global4 = 4294967295u;
    let var_5 = max(0u, ~(~reverseBits(~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mult_vec3_i32(select(u_input.a, vec3<i32>(-1i, -33950i, -6551i), var_4.x), countOneBits(u_input.a))), reverseBits(-min(var_1, reverseBits(vec2<i32>(1i, 54052i)))), 21786i, var_5);
}

