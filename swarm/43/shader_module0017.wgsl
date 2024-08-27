struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: u32, arg_3: f32) -> bool {
    var var_0 = Struct_3(reverseBits(reverseBits(vec4<u32>(1u, 1u, 29897u, u_input.b) >> ((vec4<u32>(arg_2, u_input.b, arg_2, u_input.b) >> (vec4<u32>(arg_2, 47217u, arg_2, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)))), 18542i, !(!select(arg_3 <= 1306f, u_input.c.x >= u_input.c.x, true)));
    var var_1 = _wgslsmith_clamp_vec4_i32(min(vec4<i32>(select(-1i, -14999i, var_0.c), 0i, -4277i, ~u_input.c.x), ~u_input.c), vec4<i32>(-1i, var_0.b, -1i, (arg_1 >> (u_input.b % 32u)) | (u_input.c.x | u_input.a)), vec4<i32>(-15774i, countOneBits(arg_1), _wgslsmith_dot_vec2_i32(u_input.c.ww & u_input.c.zw, vec2<i32>(0i, 1i)), 1i)) >> (max(vec4<u32>(32658u, max(~arg_2, 76579u), ~_wgslsmith_mod_u32(arg_2, 58169u), firstTrailingBit(arg_2 >> (1u % 32u))), ~max(vec4<u32>(0u, 134911u, 1u, 22495u), var_0.a)) % vec4<u32>(32u));
    var_0 = Struct_3(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(select(~var_0.a, ~var_0.a, var_0.c), ~(~var_0.a)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.b, u_input.b, var_0.a.x)), ~abs(var_0.a))), arg_1, true);
    let var_2 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_1, 2147483647i), -2147483647i, -7286i | var_0.b, u_input.c.x), u_input.c, reverseBits(-vec4<i32>(-39296i, -45230i, u_input.a, arg_1))), vec4<i32>((-var_1.x | (-26742i >> (var_0.a.x % 32u))) ^ abs(reverseBits(u_input.c.x)), 1i, -2704i, -_wgslsmith_mult_i32(2147483647i, var_1.x) ^ -16217i), _wgslsmith_sub_vec4_i32(~u_input.c, -u_input.c >> (var_0.a % vec4<u32>(32u))));
    let var_3 = Struct_1(vec2<u32>(27150u, min(_wgslsmith_mult_u32(u_input.b, u_input.b), firstLeadingBit(6370u)) | 1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_3)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_3)), _wgslsmith_f_op_f32(-arg_3))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496f * -651f))), _wgslsmith_div_i32(min(max(2147483647i, min(1i, -17470i)), abs(_wgslsmith_sub_i32(-1i, -2147483647i))), var_1.x), !vec3<bool>(true, select(var_0.c != var_0.c, var_0.c, any(vec3<bool>(arg_0.x, false, false))), any(!arg_0)));
    return var_3.e.x;
}

fn func_2() -> f32 {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = !(!(!select(!vec3<bool>(var_0.x, true, false), vec3<bool>(false, false, false), func_3(var_0.zz, 0i, u_input.b, -883f))));
    var_0 = select(vec3<bool>(any(vec4<bool>(true, u_input.a <= u_input.a, select(var_1.x, true, var_0.x), u_input.b != 108979u)), true, false), !var_1, !vec3<bool>(true, true, var_1.x));
    let var_2 = Struct_3(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, 0u), ~vec4<u32>(u_input.b, u_input.b, 30432u, 0u))), _wgslsmith_dot_vec3_i32(max(-vec3<i32>(u_input.a, -15277i, 26497i), u_input.c.yzw), u_input.c.yyy), any(vec4<bool>(false, var_0.x, any(select(var_1.zy, vec2<bool>(var_1.x, false), var_0.zz)), false)));
    let var_3 = Struct_2(u_input.c.xxy);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-268f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-523f, 271f), -851f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-193f + 395f))))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    return Struct_3(~_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(34150u, 4294967295u, 4032u, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, 0u)), countOneBits(~vec4<u32>(7519u, 4294967295u, 3164u, 36243u))), ~arg_0.x, -640f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-146f, 367f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a | u_input.c.x, abs(1i), 11463i), u_input.c.yxy));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, u_input.b >> (0u % 32u)), ~vec2<u32>(u_input.b, 34345u) ^ (vec2<u32>(u_input.b, 65990u) | vec2<u32>(17241u, u_input.b))), vec2<u32>(~firstTrailingBit(4294967295u), 4294967295u)), countOneBits(~(~u_input.b)), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.b), abs(vec2<u32>(u_input.b, 56458u))), vec2<u32>(~1u, countOneBits(u_input.b))));
    let var_2 = abs(0i) <= u_input.a;
    var var_3 = var_2;
    let var_4 = func_1(select(var_0.a, firstTrailingBit(_wgslsmith_clamp_vec3_i32(u_input.c.wyw, u_input.c.wzz, u_input.c.xww & vec3<i32>(var_0.a.x, u_input.a, 2147483647i))), true));
    var_3 = all(vec4<bool>((_wgslsmith_f_op_f32(-610f + 1833f) < _wgslsmith_f_op_f32(func_2())) | (~var_0.a.x < u_input.c.x), !var_2, var_2, true != any(select(vec3<bool>(var_2, false, false), vec3<bool>(var_2, true, true), vec3<bool>(var_2, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer((~(~1u) | var_4.a.x) & ~u_input.b, vec4<u32>(~firstLeadingBit(1u), min(17324u, 1799u), u_input.b & func_1(var_0.a).a.x, var_4.a.x), abs(((-2147483647i << (u_input.b % 32u)) << (~4294967295u % 32u)) & _wgslsmith_add_i32(-59009i, -u_input.c.x)));
}

