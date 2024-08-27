struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 65395i, 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true)), (~vec4<i32>(global0.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (countOneBits(vec4<u32>(14908u, u_input.a, 64264u, 1u)) % vec4<u32>(32u))) << (~(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), vec2<u32>(1u | u_input.a, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(822f + -239f) - -1000f), -751f, -622f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-683f, 756f) * -813f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1266f, -453f)), 390f))));
    global0 = firstLeadingBit(countOneBits(var_0.a.b.zyz));
    var var_1 = ~(~(u_input.a >> (_wgslsmith_add_u32(u_input.a, ~u_input.a) % 32u)));
    let var_2 = var_0.a;
    let var_3 = var_0.a.b;
    return firstLeadingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.b.x, -2147483647i >> (var_0.b.x % 32u), ~var_0.a.b.x, 2147483647i)), var_3));
}

fn func_2() -> vec4<bool> {
    global0 = ~select(max(u_input.b, u_input.b), firstTrailingBit(abs(u_input.b >> (vec3<u32>(40950u, u_input.a, u_input.a) % vec3<u32>(32u)))), true);
    var var_0 = Struct_1(~abs(min(global0.x, u_input.b.x)) < 0i, _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(-10730i, u_input.b.x, global0.x, u_input.b.x)) | ~firstTrailingBit(vec4<i32>(-13090i, global0.x, global0.x, global0.x)), vec4<i32>(~_wgslsmith_mod_i32(global0.x, global0.x), -2147483647i, (i32(-1i) * -22084i) | _wgslsmith_mod_i32(1i, global0.x), -50437i), func_3()));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-602f)), _wgslsmith_div_f32(193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f) * _wgslsmith_f_op_f32(sign(2464f))))) * vec2<f32>(-839f, _wgslsmith_f_op_f32(-871f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f)))));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(27892u, 1u)), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), ~8229u), ~(vec4<u32>(u_input.a, u_input.a, u_input.a, 28987u) << (vec4<u32>(0u, u_input.a, u_input.a, 33390u) % vec4<u32>(32u))), ~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(74563u, 1u, u_input.a, u_input.a) % vec4<u32>(32u)))), reverseBits(~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 15504u, 48016u) % vec4<u32>(32u))))), u_input.a, ~56021u);
    let var_3 = Struct_2(Struct_1(var_0.a, var_0.b), ~vec2<u32>(var_2.x, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, 148f, -159f)))))));
    return vec4<bool>(var_3.a.a, false, var_3.a.a, !var_0.a & all(vec4<bool>(all(vec3<bool>(var_0.a, false, true)), var_0.a, any(vec2<bool>(false, true)), var_0.a)));
}

fn func_1() -> Struct_2 {
    let var_0 = -407f;
    global0 = vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x);
    let var_1 = select(_wgslsmith_mult_vec4_u32(abs(max(vec4<u32>(9932u, 14193u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))), vec4<u32>(u_input.a, u_input.a, 1061u, 4294967295u)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 29745u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), vec4<u32>(11500u, 28780u, 0u, u_input.a)), vec4<u32>(34053u, _wgslsmith_mod_u32(21168u, 1u), u_input.a << (u_input.a % 32u), 0u)) ^ ~(~(~vec4<u32>(u_input.a, 26729u, u_input.a, 4294967295u))), func_2());
    return Struct_2(Struct_1(true, select(~vec4<i32>(2147483647i, u_input.b.x, global0.x, global0.x), vec4<i32>(_wgslsmith_div_i32(-1i, global0.x), global0.x >> (1u % 32u), global0.x, _wgslsmith_sub_i32(-41149i, u_input.b.x)), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, func_2().x, true))), countOneBits(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 1u)), var_1.yx)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1260f, var_0, 1420f) - vec3<f32>(var_0, -1073f, var_0)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-708f, var_0, -1546f), vec3<f32>(var_0, -629f, 1000f), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(firstLeadingBit(u_input.b));
    var var_0 = func_1();
    var var_1 = _wgslsmith_div_u32(1u, 45114u);
    var var_2 = abs(vec2<i32>(u_input.b.x, 0i));
    global0 = vec3<i32>(-1i) * -(~(~_wgslsmith_div_vec3_i32(u_input.b, var_0.a.b.wxx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.c.yz + _wgslsmith_f_op_vec2_f32(-var_0.c.yy)), ~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 14500u), vec2<u32>(28595u, 4294967295u))));
}

