struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    let var_0 = ~(-max(-33281i, 0i) & (20565i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 16417i, -1i), vec3<i32>(-2147483647i, -22359i, 2147483647i)))) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-27193i, 44896i), select(2180i, -2840i, false), -55104i)));
    let var_1 = Struct_2(Struct_1(arg_0.x, vec2<i32>(~(-var_0), ~(var_0 ^ var_0)), vec3<i32>(-_wgslsmith_clamp_i32(var_0, var_0, -7920i), ~(i32(-1i) * -2147483647i), -15194i)), Struct_1(4294967295u, vec2<i32>(var_0, max(-14017i, -1i)), ~abs(vec3<i32>(var_0, var_0, var_0) >> (vec3<u32>(arg_0.x, u_input.a.x, arg_0.x) % vec3<u32>(32u)))), Struct_1(1u, vec2<i32>(~var_0, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-14246i, var_0, -20743i, 2147483647i)), vec4<i32>(var_0, 1i, 0i, 14304i) << (vec4<u32>(arg_0.x, 22199u, 133128u, 10158u) % vec4<u32>(32u)))), firstLeadingBit(~countOneBits(vec3<i32>(var_0, var_0, var_0)))), firstTrailingBit(_wgslsmith_sub_vec4_u32(~u_input.b, vec4<u32>(u_input.a.x, 66271u, 69639u, u_input.a.x)) & (vec4<u32>(98143u, arg_0.x, 3797u, u_input.a.x) | ~vec4<u32>(arg_0.x, 13676u, 1u, u_input.a.x))), u_input.a);
    global0 = array<vec3<f32>, 32>();
    return _wgslsmith_div_i32(firstLeadingBit(var_1.a.b.x ^ _wgslsmith_sub_i32(~var_0, 1i)), abs(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_1.c.c, vec3<i32>(var_1.c.c.x, 93184i, 8668i)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 4294967295u), u_input.a) % 32u), var_1.b.c.x)));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_3 {
    var var_0 = select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, select(any(vec4<bool>(true, arg_0, arg_0, false)), any(vec4<bool>(false, arg_0, true, arg_0)), arg_0)), !(!vec3<bool>(arg_0, false, false))), !(!(!select(vec3<bool>(true, true, arg_0), vec3<bool>(false, arg_0, arg_0), arg_0))), vec3<bool>(true, false, !arg_0));
    var var_1 = u_input.b.x;
    let var_2 = false;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f * -483f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1899f) * vec2<f32>(251f, -1132f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2199f, -541f)), var_0.yy))))), vec2<f32>(1f, 1f));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), var_3.x, _wgslsmith_f_op_f32(step(371f, var_3.x)), var_3.x);
    return Struct_3(select(select(var_0.xz, select(vec2<bool>(true, false), select(var_0.xz, vec2<bool>(true, false), vec2<bool>(false, arg_0)), select(false, var_2, var_2)), all(vec3<bool>(false, false, var_0.x))), !(!var_0.yy), vec2<bool>(arg_0, arg_0)), -vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, -1i, -46252i, -1489i)), vec4<i32>(48541i, 51930i, 22282i, 2147483647i)), _wgslsmith_mod_i32(select(48497i, 2147483647i, var_2), ~17230i)), Struct_1(u_input.a.x, -vec2<i32>(func_3(u_input.b.zyy), 0i), vec3<i32>(-_wgslsmith_clamp_i32(-2147483647i, -1i, -15717i), ~(~1i), ~(-1i))));
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = func_2(arg_0.a.x, ~(max(_wgslsmith_div_u32(arg_0.c.a, 7899u), ~23234u) ^ 1u));
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    var var_1 = 33755u;
    return false == !(!arg_0.a.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec3<f32>) -> Struct_3 {
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    var var_0 = func_2(true, 4294967295u >> (reverseBits(_wgslsmith_dot_vec3_u32(arg_1, _wgslsmith_mod_vec3_u32(vec3<u32>(34923u, 0u, 1u), vec3<u32>(arg_0.c.a, u_input.a.x, arg_0.c.a)))) % 32u));
    let var_1 = -262f;
    var_0 = func_2(var_0.a.x, ~firstLeadingBit(1957u));
    return arg_0;
}

fn func_1() -> Struct_3 {
    var var_0 = true;
    var var_1 = !select(select(vec3<bool>(true, false, true), vec3<bool>(u_input.b.x <= 121836u, true, false), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false);
    let var_2 = _wgslsmith_mult_vec4_i32(select(abs((vec4<i32>(1i, -53485i, 13260i, 15274i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 31082u, 80805u) % vec4<u32>(32u))) << (abs(u_input.b) % vec4<u32>(32u))), firstLeadingBit(select(~vec4<i32>(1i, 10031i, -1i, 1i), vec4<i32>(1i, -1002i, 27972i, 49359i), var_1.x)), !any(select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(-vec4<i32>(23659i, 15829i, 19840i, -17806i))) ^ select(abs(-vec4<i32>(0i, 1i, 1i, 0i)), ~(~vec4<i32>(1i, 16830i, 2147483647i, -37061i)), !var_1.x));
    global0 = array<vec3<f32>, 32>();
    let var_3 = _wgslsmith_clamp_i32(var_2.x | -3824i, 2147483647i, _wgslsmith_add_i32(select(~_wgslsmith_mult_i32(var_2.x, var_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 1i, var_2.x), _wgslsmith_clamp_vec3_i32(var_2.xwy, var_2.xzw, vec3<i32>(5228i, var_2.x, -2147483647i))), var_1.x), firstLeadingBit(~_wgslsmith_sub_i32(var_2.x, var_2.x))));
    return func_5(Struct_3(vec2<bool>(!(!var_1.x), func_4(func_2(var_1.x, 4294967295u))), ~vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3, var_2.x, -1i), var_2.wyz)), func_2(var_1.x, ~abs(29602u)).c), _wgslsmith_clamp_vec3_u32(u_input.b.zxx, ~(~vec3<u32>(u_input.b.x, 23453u, u_input.b.x) & vec3<u32>(0u, u_input.b.x, 65162u)), vec3<u32>(func_2(all(vec3<bool>(var_1.x, false, var_1.x)), 4294967295u).c.a, ~u_input.a.x, 1u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1501f), _wgslsmith_f_op_f32(abs(216f)), _wgslsmith_f_op_f32(ceil(-1014f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(575f * -1028f), _wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(min(547f, 261f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~(_wgslsmith_mult_i32(-1i, ~var_0.b.x) << (_wgslsmith_sub_u32(1u, var_0.c.a) % 32u));
    var var_2 = var_0.c;
    var var_3 = Struct_2(Struct_1(1u, firstLeadingBit(var_0.b), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(var_2.c, vec3<i32>(-39600i, var_0.b.x, -17056i)), vec3<i32>(var_0.b.x, 2147483647i, -14287i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_0.c.b.x, var_2.c.x, -1i), var_0.c.c))), Struct_1(u_input.a.x, _wgslsmith_mult_vec2_i32(var_2.c.zy, var_0.b | var_0.c.c.zx) | max(countOneBits(vec2<i32>(-40570i, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.c.x, 17105i), vec2<i32>(var_0.c.c.x, var_0.b.x), vec2<i32>(var_0.c.c.x, var_2.c.x))), -select(var_2.c, vec3<i32>(var_0.c.b.x, var_2.c.x, 1i), vec3<bool>(var_0.a.x, true, var_0.a.x)) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(90577u, 0u, u_input.b.x)) % vec3<u32>(32u))), Struct_1(0u, ~(~var_0.c.c.yz), func_2(func_2(35396i != var_2.b.x, 12712u).a.x, ~(~11304u)).c.c), ~vec4<u32>(_wgslsmith_div_u32(33431u, 75342u), 23926u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.a, 32857u, 4294967295u, 71281u), u_input.b)) ^ ~min(~u_input.b, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.a, u_input.b.x, 17636u, var_2.a), u_input.b)), _wgslsmith_div_vec3_u32(u_input.a, ~u_input.a));
    var var_4 = vec3<bool>(true, false, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(979f)), -1331f) * vec2<f32>(299f, _wgslsmith_f_op_f32(773f - -323f)))), ~(abs(vec2<u32>(var_0.c.a, u_input.b.x) << (vec2<u32>(var_2.a, 0u) % vec2<u32>(32u))) & vec2<u32>(var_2.a, ~u_input.b.x)), var_2.c.x, 0i);
}

