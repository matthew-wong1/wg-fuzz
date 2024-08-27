struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(2611f, -253f, -600f, -645f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = max(vec2<i32>(1i, 1i), reverseBits(_wgslsmith_mod_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-26218i, 2147483647i), vec2<i32>(60524i, 0i)), vec2<i32>(1i, _wgslsmith_div_i32(-2147483647i, 7626i)))));
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1014f, global0.x, -1590f, global0.x) + vec4<f32>(global0.x, 361f, global0.x, 209f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 612f, -1299f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 397f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1140f, -724f, global0.x, -1226f))))))));
    let var_1 = _wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.x | -15924i, var_0.x, var_0.x), vec4<i32>(var_0.x, _wgslsmith_dot_vec2_i32(var_0, var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(13317i, 0i, -19534i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -14411i, var_0.x), vec3<i32>(var_0.x, var_0.x, -2147483647i))), select(countOneBits(vec4<i32>(var_0.x, -1i, 2147483647i, var_0.x)), vec4<i32>(var_0.x, -15367i, var_0.x, var_0.x), true)), ~reverseBits(~vec4<i32>(-15522i, var_0.x, 18267i, var_0.x)));
    return false;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(vec3<bool>(true, true, true), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 38134u, 4605u), u_input.a), any(vec3<bool>(any(vec2<bool>(false, true)), true, func_3())), ~u_input.a);
    var var_1 = vec2<i32>((-(~0i) << ((u_input.a.x << (select(50270u, var_0.d.x, false) % 32u)) % 32u)) ^ ~firstLeadingBit(-31043i), max(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -6609i, 2147483647i, 11735i), ~(~vec4<i32>(-26772i, 31110i, 1i, -36690i))), -2147483647i));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)), global0.x)))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(-351f)), _wgslsmith_f_op_f32(406f + -418f), -1000f, _wgslsmith_f_op_f32(max(-1000f, var_2.a))), vec4<f32>(var_2.a, _wgslsmith_f_op_f32(round(158f)), _wgslsmith_f_op_f32(-global0.x), global0.x), select(select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), true), select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.c), vec4<bool>(false, true, var_0.c, false), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.c)), select(vec4<bool>(var_0.c, false, var_0.c, var_0.a.x), vec4<bool>(false, true, var_0.a.x, var_0.c), vec4<bool>(var_0.a.x, true, var_0.c, var_0.c))))) * vec4<f32>(1252f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1852f * var_2.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global0.x, 919f)))), var_2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(456f, 773f, 1000f, global0.x), vec4<f32>(306f, -285f, 1444f, var_2.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-401f, global0.x, -1214f, var_2.a)))))));
    let var_3 = var_2.a;
    return Struct_2(Struct_1((vec3<u32>(u_input.a.x, 54350u, 1u) | select(u_input.a, u_input.a, var_0.a.x)) >> (_wgslsmith_mod_vec3_u32(var_0.d, vec3<u32>(11449u, u_input.b, u_input.a.x) ^ vec3<u32>(u_input.b, var_0.b.x, u_input.a.x)) % vec3<u32>(32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(7601u, 0u, 0u), vec3<u32>(22412u, u_input.b, 36329u)), _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, -11125i), -1i), max(vec2<i32>(var_1.x, var_1.x) | -vec2<i32>(80514i, var_1.x), -max(vec2<i32>(-8728i, 0i), vec2<i32>(var_1.x, -50279i))), !(!all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.c)))), !(!vec4<bool>(true, !var_0.a.x, !var_0.c, false)), Struct_1(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(27001u | var_0.d.x, 33123u, 1u)), _wgslsmith_mod_u32(~(~15886u), var_0.b.x), _wgslsmith_add_i32(firstLeadingBit(-11613i >> (u_input.b % 32u)), _wgslsmith_clamp_i32(var_1.x, var_1.x, -1i >> (u_input.b % 32u))), vec2<i32>(countOneBits(var_1.x), i32(-1i) * -var_1.x), true));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    let var_1 = reverseBits(vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(4294967295u, u_input.b, var_0.c.a.x), var_0.a.a.x), 1u));
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(403f)), -282f, _wgslsmith_f_op_f32(-758f * global0.x), _wgslsmith_f_op_f32(f32(-1f) * -163f)))));
    let var_2 = firstTrailingBit(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-28979i, var_0.a.c) ^ vec2<i32>(_wgslsmith_mod_i32(-2147483647i, var_0.a.c), -1i), var_0.c.d, min(abs(~vec2<i32>(-15750i, -2147483647i)), func_2().a.d)));
    let var_3 = Struct_4(!(!vec3<bool>(any(vec2<bool>(true, false)), false, !var_0.a.e)), u_input.a, false, ~(~((vec3<u32>(26692u, 4294967295u, 102020u) & u_input.a) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.b, 15243u, 93572u), var_0.c.a) % vec3<u32>(32u)))));
    return ~44803u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(vec3<u32>(func_1(), u_input.a.x, ~0u) ^ ~(~u_input.a), 4294967295u, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 30314i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 13296i), vec3<i32>(2147483647i, -1i, -8424i), vec3<i32>(-6064i, -2147483647i, -24471i))), _wgslsmith_div_vec2_i32(func_2().c.d, vec2<i32>(func_2().a.c, -2678i)), true), func_2().a, global0.x);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(168f, var_0.c, global0.x, var_0.c))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 1000f, global0.x, -492f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2652f, -106f, global0.x, -429f), vec4<f32>(274f, global0.x, 677f, global0.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 321f, 854f, 1359f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 1235f, global0.x, var_0.c))), !vec4<bool>(false, var_0.b.e, var_0.b.e, true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(644f, 2124f, 865f, -510f), vec4<f32>(global0.x, 1233f, -1558f, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c, var_0.c, var_0.c, -524f)))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -314f)) + var_0.c))), -1650f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 1279f)));
    var var_1 = max(1u, firstTrailingBit(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~_wgslsmith_sub_i32(1i, var_0.a.d.x), (76741u | _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, u_input.b, u_input.b))) >> (u_input.b % 32u), ~u_input.a.zx);
}

