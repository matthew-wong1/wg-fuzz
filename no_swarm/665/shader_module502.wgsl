struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> bool {
    let var_0 = any(select(select(vec3<bool>(false, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)), !vec3<bool>(all(vec2<bool>(true, false)), true, any(vec4<bool>(true, true, true, true))), !any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))));
    var var_1 = _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_2.x));
    let var_2 = !((~2147483647i ^ _wgslsmith_sub_i32(arg_3.x, _wgslsmith_sub_i32(arg_3.x, arg_3.x))) < _wgslsmith_mod_i32(-42563i | ~arg_3.x, arg_3.x));
    let var_3 = arg_2.wzw;
    var var_4 = _wgslsmith_mult_u32(u_input.a.x, 4294967295u);
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_div_vec3_i32(arg_1.c, max(arg_1.c, -vec3<i32>(arg_1.c.x, arg_1.c.x, 2147483647i))), arg_1, Struct_2(true && !(false & arg_0.c), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, ~0u), ~(~arg_2)), vec3<i32>(-50479i, ~(-arg_1.c.x), 15064i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x + arg_1.d.a.x), arg_0.a.x, -1343f, arg_1.e.a.x), vec2<u32>(~33798u, 90131u), func_3(arg_2 & vec3<u32>(26324u, 29477u, 3983u), 11562u, vec4<f32>(-1000f, arg_1.e.d, arg_0.a.x, arg_1.d.a.x), vec3<i32>(arg_1.c.x, arg_1.c.x, 26977i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.d * 667f))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-157f, arg_0.a.x, arg_1.e.d, 427f)), ~vec2<u32>(u_input.a.x, arg_2.x), any(select(vec4<bool>(arg_0.c, false, arg_1.d.c, false), vec4<bool>(false, arg_1.a, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, true, arg_0.c, false))), 744f)), arg_0.c, func_3(arg_2 | select(min(arg_2, arg_1.b), reverseBits(vec3<u32>(0u, arg_2.x, 5821u)), select(vec3<bool>(arg_0.c, arg_1.d.c, arg_0.c), vec3<bool>(true, arg_0.c, arg_1.a), arg_1.d.c)), firstLeadingBit(1u), _wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d.a * arg_0.a))), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(arg_1.c.x), i32(-1i) * -388i, firstLeadingBit(arg_1.c.x)), min(vec3<i32>(arg_1.c.x, -10654i, arg_1.c.x), -vec3<i32>(-6830i, arg_1.c.x, arg_1.c.x)), arg_1.c)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.e.d, -799f))), arg_1.d.a.x) - arg_1.d.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.d * _wgslsmith_f_op_f32(sign(var_0.b.d.a.x)))), 236f)));
    return Struct_2(!func_3((vec3<u32>(arg_2.x, 17595u, var_0.b.d.b.x) & arg_1.b) & ~arg_2, 0u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, arg_0.d, 3174f, arg_0.a.x))), -abs(vec3<i32>(var_0.b.c.x, 58074i, 6470i))), ~vec3<u32>(_wgslsmith_mult_u32(~1u, ~var_0.b.b.x), arg_0.b.x, u_input.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(~firstTrailingBit(13317i), -2147483647i, -2147483647i), vec3<i32>(abs(-1307i), ~1i, -65130i)), var_0.b.e, Struct_1(arg_0.a, vec2<u32>(arg_0.b.x, ~arg_2.x), false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> u32 {
    var var_0 = 0u;
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_0.b.d.b.x, _wgslsmith_div_u32(1u, firstLeadingBit(0u))), 3792u), ~(~(~_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(1u, 0u)))));
    let var_1 = Struct_2(all(vec4<bool>(true, arg_0.c.a, arg_0.c.e.c, true)) && all(!vec4<bool>(true, true, arg_2.d, false)), vec3<u32>(_wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(43037u, 0u, arg_0.b.d.b.x, 30623u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.d.b.x, arg_2.b.e.b.x, arg_2.b.b.x, arg_2.b.e.b.x), vec4<u32>(arg_2.b.d.b.x, arg_1, arg_1, 89678u)), all(vec3<bool>(arg_2.d, true, false))), countOneBits(~vec4<u32>(4294967295u, 73698u, arg_1, arg_2.c.b.x))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1, 24730u, 96269u, arg_2.b.e.b.x), ~vec4<u32>(arg_1, u_input.a.x, 14885u, 0u), arg_0.c.a), vec4<u32>(~0u, _wgslsmith_mult_u32(4294967295u, arg_0.b.d.b.x), 4294967295u, u_input.a.x)), arg_0.b.d.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(1i, reverseBits(arg_0.a.x << (4294967295u % 32u)), _wgslsmith_add_i32(arg_0.b.c.x, -2147483647i) | arg_0.c.c.x), arg_0.a), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, arg_0.c.d.d, -935f, arg_2.c.e.a.x) * vec4<f32>(arg_2.b.e.d, 1419f, -868f, 488f)))), ~firstLeadingBit(vec2<u32>(u_input.a.x, 1u)), ~(-5442i) > arg_0.c.c.x, arg_0.c.e.d), func_2(Struct_1(vec4<f32>(arg_2.b.d.a.x, arg_2.c.d.d, arg_0.c.e.a.x, 133f), abs(vec2<u32>(0u, arg_2.c.d.b.x)), any(vec2<bool>(false, arg_2.d)), _wgslsmith_f_op_f32(478f + -1717f)), Struct_2(arg_2.c.e.c, ~arg_2.b.b, arg_2.c.c, Struct_1(vec4<f32>(arg_0.b.e.a.x, 768f, arg_0.b.e.a.x, -304f), vec2<u32>(98995u, u_input.a.x), false, arg_2.b.d.a.x), func_2(arg_0.b.e, Struct_2(false, vec3<u32>(4294967295u, arg_1, 20646u), vec3<i32>(-2147483647i, arg_2.a.x, 15050i), Struct_1(arg_2.b.e.a, vec2<u32>(u_input.a.x, arg_2.c.b.x), arg_2.c.a, -1000f), arg_0.b.d), arg_2.b.b).e), arg_2.c.b), _wgslsmith_mult_vec3_u32(select(arg_0.c.b, vec3<u32>(u_input.a.x, 1u, 42029u), select(vec3<bool>(false, false, arg_2.b.a), vec3<bool>(false, false, true), arg_2.d)), ~(~vec3<u32>(arg_2.b.d.b.x, 6779u, u_input.a.x)))).e, Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-662f, arg_0.b.d.d, -877f, -127f))), arg_2.c.d.a)))), reverseBits(u_input.a), all(!select(vec3<bool>(true, false, false), vec3<bool>(arg_2.d, arg_2.c.e.c, arg_2.d), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1327f + -292f))));
    var var_2 = vec3<f32>(var_1.e.d, -637f, -1235f);
    var_0 = 4294967295u;
    return 40886u;
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = 1u == firstTrailingBit(30283u);
    var var_1 = ~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.a, firstTrailingBit(u_input.a)), ~abs(vec2<u32>(0u, arg_0.c.e.b.x))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, arg_0.b.e.b.x), u_input.a, u_input.a) ^ ~abs(arg_0.b.e.b));
    var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(func_4(Struct_3(vec3<i32>(arg_0.b.c.x, -1i, arg_0.a.x) << (vec3<u32>(arg_0.b.d.b.x, var_1.x, 15401u) % vec3<u32>(32u)), func_2(Struct_1(vec4<f32>(-245f, arg_0.c.d.d, arg_0.c.d.a.x, arg_0.c.e.d), vec2<u32>(u_input.a.x, var_1.x), arg_0.d, arg_0.c.e.d), Struct_2(true, vec3<u32>(arg_0.c.b.x, arg_0.c.b.x, 0u), arg_0.b.c, Struct_1(vec4<f32>(591f, arg_0.b.e.d, arg_0.b.d.d, arg_0.b.e.a.x), vec2<u32>(57663u, u_input.a.x), arg_0.c.a, arg_0.c.d.a.x), arg_0.c.d), arg_0.b.b), func_2(arg_0.c.d, arg_0.c, arg_0.b.b), true, true), ~0u, Struct_3(~arg_0.a, Struct_2(var_0, arg_0.c.b, vec3<i32>(arg_0.a.x, -19286i, 0i), Struct_1(vec4<f32>(-940f, arg_0.b.d.a.x, arg_0.c.e.d, 511f), vec2<u32>(u_input.a.x, arg_0.b.d.b.x), var_0, arg_0.c.d.a.x), arg_0.b.d), func_2(arg_0.c.e, arg_0.c, vec3<u32>(arg_0.b.b.x, u_input.a.x, 0u)), any(vec4<bool>(false, true, false, var_0)), !arg_0.c.e.c)), _wgslsmith_sub_u32(~2207u, 0u) & var_1.x), arg_0.b.e.b);
    var var_2 = ~(~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, 5689i), arg_0.c.c.xx), arg_0.b.c.x));
    var_1 = vec2<u32>(3288u, ~u_input.a.x);
    return (_wgslsmith_add_u32(func_2(arg_0.b.d, Struct_2(true, vec3<u32>(var_1.x, u_input.a.x, 44951u), arg_0.c.c, Struct_1(arg_0.c.e.a, u_input.a, arg_0.c.d.c, arg_0.b.d.d), arg_0.c.e), arg_0.b.b).e.b.x, 0u) << (26464u % 32u)) & ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~51607u, ~_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, 39158u)), 1u, _wgslsmith_dot_vec2_u32(u_input.a & u_input.a, vec2<u32>(u_input.a.x, 1u))), u_input.a.x);
    var_0 = vec3<u32>(min(~(~9619u), var_0.x) ^ firstTrailingBit(~0u), ~(~(~max(0u, var_0.x))), 6034u);
    var_0 = firstLeadingBit(vec3<u32>(53268u, 1u, ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_0.x, 4294967295u))) >> ((vec3<u32>(0u, 21557u, u_input.a.x) & vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(18029u, u_input.a.x), u_input.a), ~var_0.x, func_1(Struct_3(vec3<i32>(19624i, -1i, 1i), Struct_2(false, vec3<u32>(var_0.x, 14655u, var_0.x), vec3<i32>(-52362i, 1i, 9752i), Struct_1(vec4<f32>(769f, -1139f, -484f, -940f), vec2<u32>(29232u, 21539u), true, -905f), Struct_1(vec4<f32>(-204f, 236f, 1000f, -1000f), vec2<u32>(1u, u_input.a.x), false, 836f)), Struct_2(true, vec3<u32>(55525u, var_0.x, var_0.x), vec3<i32>(13203i, 1i, 17689i), Struct_1(vec4<f32>(-1268f, 561f, 1120f, 1438f), u_input.a, false, 491f), Struct_1(vec4<f32>(-743f, -706f, 1000f, 429f), vec2<u32>(u_input.a.x, 4294967295u), false, 1247f)), false, true)))) % vec3<u32>(32u)));
    let var_1 = 2147483647i;
    var_0 = vec3<u32>(23077u, ~1855u << (0u % 32u), _wgslsmith_clamp_u32(var_0.x, 42548u, ~func_4(Struct_3(vec3<i32>(16664i, 1i, -8857i), Struct_2(false, vec3<u32>(104954u, 1u, var_0.x), vec3<i32>(2147483647i, var_1, 1383i), Struct_1(vec4<f32>(744f, 2336f, -2627f, -243f), u_input.a, false, -217f), Struct_1(vec4<f32>(1008f, 1000f, 869f, -1141f), u_input.a, true, -350f)), Struct_2(true, vec3<u32>(var_0.x, 1000u, 51451u), vec3<i32>(var_1, -46739i, var_1), Struct_1(vec4<f32>(1546f, -941f, -1677f, 1000f), u_input.a, false, -1587f), Struct_1(vec4<f32>(602f, -1000f, 492f, 237f), vec2<u32>(1u, var_0.x), true, -1245f)), true, true), max(62936u, var_0.x), Struct_3(vec3<i32>(var_1, -2147483647i, var_1), Struct_2(false, vec3<u32>(u_input.a.x, u_input.a.x, var_0.x), vec3<i32>(var_1, var_1, -1i), Struct_1(vec4<f32>(-525f, 592f, -1434f, -1418f), vec2<u32>(7384u, 25735u), false, -160f), Struct_1(vec4<f32>(1361f, 396f, 1152f, -759f), var_0.zz, false, -500f)), Struct_2(false, vec3<u32>(1u, u_input.a.x, var_0.x), vec3<i32>(42977i, 1i, var_1), Struct_1(vec4<f32>(-1541f, -155f, 249f, 383f), vec2<u32>(4294967295u, u_input.a.x), true, 206f), Struct_1(vec4<f32>(-477f, -1000f, -328f, -1094f), var_0.zy, false, 963f)), true, false))));
    var_0 = vec3<u32>(u_input.a.x, firstTrailingBit(~func_1(Struct_3(vec3<i32>(var_1, -2147483647i, var_1), Struct_2(false, vec3<u32>(var_0.x, 4491u, u_input.a.x), vec3<i32>(var_1, var_1, -1339i), Struct_1(vec4<f32>(512f, 140f, 613f, -662f), vec2<u32>(5279u, u_input.a.x), false, 1411f), Struct_1(vec4<f32>(-2176f, 242f, 1071f, 1312f), vec2<u32>(u_input.a.x, 87101u), false, -118f)), Struct_2(false, vec3<u32>(u_input.a.x, 4294967295u, 1u), vec3<i32>(-7977i, -4756i, -6590i), Struct_1(vec4<f32>(300f, 437f, -1820f, 214f), var_0.xy, false, 173f), Struct_1(vec4<f32>(514f, -1000f, 623f, 189f), u_input.a, true, 500f)), true, true))), u_input.a.x);
    var_0 = ~firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(~24072u, _wgslsmith_div_u32(1u, 17834u)), max(min(69512u, 33774u), ~1u), 81242u));
    var_0 = ~(~(~(~vec3<u32>(0u, 4294967295u, 0u))) >> (vec3<u32>(~(~0u), ~reverseBits(3005u), var_0.x) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(abs(-1030i), 1i) >> (vec2<u32>(1u, func_4(Struct_3(vec3<i32>(-9329i, var_1, -54373i), Struct_2(false, vec3<u32>(var_0.x, u_input.a.x, var_0.x), vec3<i32>(var_1, 4108i, var_1), Struct_1(vec4<f32>(-1404f, 1759f, -1911f, 308f), var_0.xz, true, -614f), Struct_1(vec4<f32>(224f, 876f, 338f, -1692f), vec2<u32>(var_0.x, var_0.x), true, -520f)), Struct_2(false, vec3<u32>(4294967295u, var_0.x, u_input.a.x), vec3<i32>(var_1, var_1, -1i), Struct_1(vec4<f32>(342f, 289f, 1030f, -984f), vec2<u32>(1u, 7127u), true, -627f), Struct_1(vec4<f32>(-116f, -201f, 183f, 852f), u_input.a, true, 681f)), false, false), var_0.x, Struct_3(vec3<i32>(0i, var_1, -26160i), Struct_2(false, vec3<u32>(36514u, u_input.a.x, var_0.x), vec3<i32>(-2147483647i, 29572i, 17074i), Struct_1(vec4<f32>(1195f, -159f, 1483f, -174f), vec2<u32>(u_input.a.x, var_0.x), false, 1385f), Struct_1(vec4<f32>(-682f, 968f, 2031f, 1945f), u_input.a, false, 2641f)), Struct_2(true, vec3<u32>(34291u, 1u, 1u), vec3<i32>(var_1, 2147483647i, 0i), Struct_1(vec4<f32>(-552f, -1000f, -2304f, -1245f), vec2<u32>(var_0.x, 0u), true, 1037f), Struct_1(vec4<f32>(930f, -101f, 1380f, 273f), var_0.zx, true, -1216f)), false, false))) % vec2<u32>(32u)), vec2<i32>(0i, 33444i) & select(select(vec2<i32>(-62763i, var_1), vec2<i32>(-48453i, var_1), vec2<bool>(true, true)), abs(vec2<i32>(1i, 15456i)), true)) >> (abs(vec2<u32>(abs(0u >> (var_0.x % 32u)), 7059u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~(~(48957u & u_input.a.x)), ~var_0.x, 95657u), vec4<u32>(36785u, ~(~1u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, 0u), vec3<u32>(45909u, 0u, u_input.a.x))), 44149u, u_input.a.x), abs(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a)), -112f, -665f);
}

