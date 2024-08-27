struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(0u), 62009i, vec2<f32>(-946f, -874f), Struct_1(19323u), vec2<bool>(false, false)), Struct_2(Struct_1(16765u), -9635i, vec2<f32>(383f, 235f), Struct_1(26752u), vec2<bool>(false, false)), -2022i);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(4294967295u), Struct_1(15512u), Struct_1(6219u), Struct_1(18160u), Struct_1(14909u), Struct_1(66011u), Struct_1(4294967295u), Struct_1(1u), Struct_1(0u));

var<private> global2: f32 = 924f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>) -> i32 {
    return global0.b.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    let var_0 = global0.a.d.a << (45725u % 32u);
    let var_1 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 9u)], global0.b.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-394f, global0.b.c.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b.c.x, -528f))))))), arg_0, global0.b.e), global0.b, ~global0.b.b);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-141f, 927f))) + 988f)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(598f * -1604f)) + global0.b.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.c.x))))));
    let var_3 = func_3(arg_1.yxx, _wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -32987i, 5965i), vec3<i32>(-30018i, global0.c, -279i), vec3<i32>(-70076i, global0.a.b, -42777i)), countOneBits(vec3<i32>(-23115i, -1i, global0.a.b)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.a.b, global0.c, global0.b.b), min(vec3<i32>(2147483647i, u_input.a.x, var_1.b.b), vec3<i32>(78170i, var_1.a.b, -17916i)), -vec3<i32>(33373i, global0.b.b, u_input.a.x)), _wgslsmith_sub_vec3_i32(-vec3<i32>(global0.b.b, u_input.a.x, -2147483647i), vec3<i32>(var_1.c, u_input.a.x, var_1.c)), -_wgslsmith_mult_vec3_i32(vec3<i32>(-8151i, 11408i, 31685i), vec3<i32>(u_input.a.x, -1i, u_input.a.x)))));
    return max(1u | ~global0.b.a.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(~68484u, 1u >> (arg_1.x % 32u)), _wgslsmith_sub_u32(abs(arg_0.a), var_0)));
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_1(~4294967295u);
    let var_1 = global0.b.a;
    global2 = global0.a.c.x;
    var var_2 = func_2(Struct_1(~0u), vec4<u32>(41878u, max(~1u, _wgslsmith_mod_u32(global0.b.d.a, 1u)), global0.a.a.a, global0.a.d.a));
    let var_3 = Struct_3(global0.a, Struct_2(global0.b.d, abs(-_wgslsmith_mod_i32(u_input.a.x, 3441i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-615f, global0.a.c.x)))), global0.b.d, global0.a.e), -(abs(-2147483647i) & -_wgslsmith_mult_i32(31738i, global0.a.b)));
    return vec3<i32>(abs(~(-13251i)) >> (1u % 32u), -1i, _wgslsmith_dot_vec3_i32(-(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(40267i, u_input.a.x, 50568i)) ^ ~vec3<i32>(-51856i, global0.a.b, var_3.b.b)), vec3<i32>(~2147483647i, countOneBits(1i), _wgslsmith_add_i32(_wgslsmith_mod_i32(64738i, global0.a.b), -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~1i, min(1i, global0.a.b) | u_input.a.x, _wgslsmith_div_i32(reverseBits(firstTrailingBit(global0.c)), -18605i >> (global0.a.a.a % 32u)));
    var var_1 = u_input.a;
    let var_2 = -select(func_1() ^ ~(vec3<i32>(9247i, 1i, global0.a.b) ^ vec3<i32>(u_input.a.x, u_input.a.x, 10679i)), _wgslsmith_div_vec3_i32(select(vec3<i32>(-2147483647i, -28106i, 17753i), vec3<i32>(3264i, u_input.a.x, var_0.x), global0.b.e.x), vec3<i32>(-2147483647i, global0.b.b, -19773i)) << (vec3<u32>(_wgslsmith_clamp_u32(global0.b.d.a, global0.a.d.a, global0.a.a.a), func_2(Struct_1(5250u), vec4<u32>(6315u, global0.a.a.a, 20846u, 0u)), _wgslsmith_add_u32(global0.a.a.a, global0.a.d.a)) % vec3<u32>(32u)), vec3<bool>(true, false, _wgslsmith_sub_u32(global0.a.a.a, 18206u) != 42546u));
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.a.c.x)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-363f, global0.b.c.x)), -615f)) * global0.b.c.x))));
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(23008u, global0.a.a.a), 24257u, _wgslsmith_clamp_u32(global0.b.a.a, 1u, global0.b.a.a), ~global0.a.d.a), ~abs(vec4<u32>(4294967295u, global0.a.d.a, 51906u, global0.a.d.a))) << (global0.a.a.a % 32u));
    let var_4 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, var_3.a), ~firstLeadingBit(~4294967295u), var_3.a));
    global0 = Struct_3(global0.b, global0.a, _wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(var_2, vec3<i32>(var_1.x, var_2.x, global0.b.b)), ~_wgslsmith_add_i32(global0.a.b, 2147483647i), _wgslsmith_div_i32(-var_2.x, func_1().x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(_wgslsmith_sub_u32(~var_3.a, _wgslsmith_sub_u32(4294967295u, 4294967295u)), _wgslsmith_sub_u32(var_3.a, ~4294967295u)), ~min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(65561u, var_3.a), vec2<u32>(var_4.a, var_4.a)))));
}

