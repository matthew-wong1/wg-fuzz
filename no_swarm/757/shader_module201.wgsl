struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4) -> vec4<i32> {
    let var_0 = vec2<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !(!any(vec2<bool>(false, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-398f, -224f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(378f, 158f), vec2<f32>(-150f, 1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(300f, -1415f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 1395f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(645f, 1015f) - vec2<f32>(1966f, 632f))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1710f + -484f) + _wgslsmith_f_op_f32(ceil(-161f))), _wgslsmith_f_op_f32(f32(-1f) * -1634f))));
    let var_2 = !var_0.x;
    let var_3 = u_input.a;
    var var_4 = !select(select(var_0, var_0, select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_2), true)), var_0, var_0);
    return vec4<i32>(_wgslsmith_dot_vec3_i32((u_input.a.zxx >> (arg_0.a.wwz % vec3<u32>(32u))) & (vec3<i32>(var_3.x, var_3.x, -33120i) << (arg_0.a.zyz % vec3<u32>(32u))), u_input.a.zzw), var_3.x, var_3.x, _wgslsmith_add_i32(firstTrailingBit(-32357i) | 49216i, var_3.x)) << (arg_0.a % vec4<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> vec3<f32> {
    global0 = 1u;
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32((vec4<u32>(1u, 7182u, u_input.c, 2086u) & vec4<u32>(1u, u_input.c, u_input.c, 18819u)) << ((select(vec4<u32>(0u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 4294967295u), arg_1) << (select(vec4<u32>(u_input.c, 0u, 22340u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 10924u), vec4<bool>(arg_0, arg_1, true, arg_1)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~vec4<u32>(4294967295u, 8611u, u_input.c, u_input.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(3847u, 73472u, u_input.c, u_input.c), vec4<u32>(u_input.c, 32692u, 1u, u_input.c)) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32((~vec4<u32>(u_input.c, u_input.c, 39342u, 37051u) ^ ~vec4<u32>(u_input.c, 1u, 6643u, u_input.c)) << (_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(40123u, 20457u, u_input.c, 0u), vec4<u32>(9762u, u_input.c, u_input.c, u_input.c)), ~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)) % vec4<u32>(32u)), vec4<u32>(u_input.c, _wgslsmith_mod_u32(u_input.c, ~1527u), ~1u, 0u)));
    var var_1 = Struct_3(Struct_1(~(~(~var_0.wy)), -u_input.b.x, ~max(~vec3<u32>(u_input.c, 52194u, 1u), select(vec3<u32>(u_input.c, 1u, u_input.c), var_0.xzw, vec3<bool>(true, false, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(373f - -484f))), vec4<i32>(arg_2.x & u_input.e, 1i, abs(i32(-1i) * -2147483647i), -2598i)));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_1.a.b, 0i, select(_wgslsmith_div_i32(arg_2.x, -1i), 9171i, true)), 52694i, 23748i, _wgslsmith_sub_i32(u_input.e, _wgslsmith_clamp_i32(firstLeadingBit(arg_2.x), 1i, u_input.b.x << (15582u % 32u)))), _wgslsmith_add_vec4_i32(u_input.a, max(func_3(Struct_4(var_0)), vec4<i32>(-1i, -1i, _wgslsmith_div_i32(arg_2.x, arg_2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(75923i, 11393i), vec2<i32>(-1777i, -34246i))))));
    global0 = var_1.a.a.x & ~_wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_1.a.c.x, u_input.c), _wgslsmith_mult_vec3_u32(var_1.a.c, var_1.a.c)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.d, 651f, -1639f), vec3<f32>(var_1.a.d, 407f, var_1.a.d), vec3<bool>(false, arg_0, false))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a.d, 416f, -202f)))))));
}

fn func_1() -> vec4<i32> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(all(vec3<bool>(false, false, true)) && true, !any(!vec2<bool>(var_0, true)), select(~(u_input.a.yyx ^ vec3<i32>(50488i, 2688i, u_input.b.x)), (vec3<i32>(u_input.d, 0i, 0i) >> (vec3<u32>(1u, u_input.c, 32552u) % vec3<u32>(32u))) >> (vec3<u32>(0u, u_input.c, 1u) % vec3<u32>(32u)), var_0))));
    var var_2 = -2147483647i;
    global0 = ~min(~(~0u), 77306u);
    var var_3 = _wgslsmith_f_op_vec3_f32(func_2(true, any(vec2<bool>(any(vec3<bool>(true, true, var_0)) & true, !all(vec3<bool>(var_0, true, var_0)))), _wgslsmith_div_vec3_i32(vec3<i32>(~(-u_input.e), _wgslsmith_add_i32(1i, -43208i), u_input.e), u_input.a.ywz))).x;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(u_input.a, select(select(vec4<i32>(u_input.d, 2147483647i, u_input.a.x, 0i), u_input.a, vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_i32(func_1(), vec4<i32>(-1i, u_input.b.x, u_input.d, -28548i) << (vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u) % vec4<u32>(32u))), vec4<bool>(all(vec2<bool>(true, false)), true, true, true)));
    let var_1 = Struct_2(vec2<bool>((_wgslsmith_mult_u32(41867u, 15902u) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec4<u32>(1u, u_input.c, 0u, 4294967295u))) >= 61709u, (countOneBits(0u) >> (u_input.c % 32u)) != 43545u));
    let var_2 = vec2<bool>(var_1.a.x, true);
    global0 = u_input.c;
    let var_3 = ~(~reverseBits((vec3<u32>(22596u, 28082u, u_input.c) | vec3<u32>(1u, 19364u, 91533u)) << (abs(vec3<u32>(17691u, u_input.c, 1u)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wwx, _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, 19284i, u_input.a.x, var_0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, 0i, -2147483647i) >> (~vec4<u32>(var_3.x, u_input.c, var_3.x, u_input.c) % vec4<u32>(32u)), ~reverseBits(vec4<i32>(1i, 0i, var_0.x, u_input.d))), vec4<i32>(i32(-1i) * -25613i, ~var_0.x, _wgslsmith_sub_i32(countOneBits(5538i), firstTrailingBit(var_0.x)), -17008i)), vec2<i32>(u_input.b.x, -1i));
}

