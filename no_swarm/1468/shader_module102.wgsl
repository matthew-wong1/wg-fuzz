struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec3<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(select(vec4<i32>(0i, u_input.a.x, u_input.a.x, 2147483647i), u_input.a, false), vec4<i32>(2147483647i, u_input.a.x, -1i, -43624i)), max(-(u_input.a << (vec4<u32>(23082u, 4294967295u, 1u, 1u) % vec4<u32>(32u))), countOneBits(-u_input.a))), u_input.a.x, all(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(all(vec4<bool>(true, false, false, true)), select(false, true, false), true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))), ~_wgslsmith_clamp_vec2_u32(firstTrailingBit(~vec2<u32>(1u, 31691u)), select(firstTrailingBit(vec2<u32>(1u, 54265u)), ~vec2<u32>(4294967295u, 38374u), any(vec4<bool>(true, false, false, false))), vec2<u32>(~18493u, countOneBits(4294967295u))));
    var var_1 = Struct_4(~_wgslsmith_add_vec4_u32(~vec4<u32>(8546u, 4294967295u, var_0.d.x, var_0.d.x), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_0.d.x, var_0.d.x, var_0.d.x, 21581u), vec4<u32>(var_0.d.x, 19504u, 0u, 364u), false), ~vec4<u32>(var_0.d.x, var_0.d.x, 32702u, 4294967295u), max(vec4<u32>(12208u, 4294967295u, 45636u, 32591u), vec4<u32>(var_0.d.x, 1u, var_0.d.x, var_0.d.x)))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -699f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2279f * -268f))))))), 612f));
    var_0 = Struct_1(_wgslsmith_clamp_i32(0i | ~abs(var_0.b), _wgslsmith_mod_i32(var_0.b, ~var_0.a), -2147483647i), ~_wgslsmith_mult_i32(5942i, -var_0.a), !any(!select(vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, var_0.c))), ~var_0.d);
    var var_3 = Struct_1(-11381i, (_wgslsmith_sub_i32(1i, 0i) ^ ~_wgslsmith_mod_i32(5174i, var_0.a)) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(var_1.a.x ^ var_0.d.x, 0u), 11835u) % 32u), all(select(select(select(vec3<bool>(true, false, var_0.c), vec3<bool>(var_0.c, false, false), vec3<bool>(var_0.c, false, true)), vec3<bool>(var_0.c, true, var_0.c), !vec3<bool>(true, true, var_0.c)), vec3<bool>(all(vec4<bool>(var_0.c, var_0.c, var_0.c, false)), var_0.c, var_0.c || var_0.c), vec3<bool>(var_0.c, true, u_input.a.x >= var_0.b))), ~reverseBits(_wgslsmith_mod_vec2_u32(var_0.d, var_1.a.yw) >> ((vec2<u32>(69592u, var_0.d.x) >> (var_1.a.zx % vec2<u32>(32u))) % vec2<u32>(32u))));
    return -1i;
}

fn func_2() -> vec4<u32> {
    let var_0 = 4294967295u;
    var var_1 = Struct_1(u_input.a.x, ~func_3(), all(select(vec3<bool>(true, true, 77179u < var_0), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), vec3<bool>(true, true, false))), ~firstTrailingBit(vec2<u32>(32612u, var_0) << (firstLeadingBit(vec2<u32>(83906u, var_0)) % vec2<u32>(32u))));
    var_1 = Struct_1(-var_1.a & _wgslsmith_dot_vec2_i32(-max(u_input.a.zx, vec2<i32>(u_input.a.x, 27894i)), -(u_input.a.zw ^ vec2<i32>(var_1.a, var_1.a))), u_input.a.x, any(vec3<bool>(false, true, -652f < _wgslsmith_f_op_f32(ceil(-820f)))), var_1.d);
    var var_2 = vec4<bool>(true, var_1.c, ~(i32(-1i) * -var_1.b) >= (u_input.a.x << (~0u % 32u)), false);
    let var_3 = Struct_2(select(select(vec3<bool>(var_1.c, var_1.c, !var_1.c), !select(var_2.wzw, vec3<bool>(var_2.x, true, false), var_2.xyz), any(select(vec3<bool>(var_1.c, true, var_1.c), var_2.wyy, var_2.x))), var_2.wyx, select(var_2.yzw, select(var_2.ywz, var_2.xyy, true), !select(var_2.yyx, var_2.yyw, true))), var_1.d.x, !var_2.xxx, !var_2.wxz, _wgslsmith_div_f32(-2225f, -273f));
    return max(_wgslsmith_add_vec4_u32(select(vec4<u32>(~var_0, 4294967295u, reverseBits(var_3.b), select(var_3.b, var_1.d.x, var_2.x)), max(abs(vec4<u32>(var_0, 86461u, 69092u, 72759u)), vec4<u32>(var_3.b, 61185u, var_1.d.x, 0u)), select(select(vec4<bool>(var_1.c, false, var_3.d.x, true), vec4<bool>(false, true, var_1.c, var_1.c), var_3.c.x), vec4<bool>(true, var_1.c, true, false), var_1.c)), ~select(min(vec4<u32>(26257u, 1u, 1u, var_3.b), vec4<u32>(0u, 14906u, 38964u, var_1.d.x)), countOneBits(vec4<u32>(17764u, var_1.d.x, var_1.d.x, var_1.d.x)), var_3.d.x)), ~_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(var_1.d.x, var_0, 48772u, var_0), vec4<u32>(0u, 0u, 4294967295u, var_1.d.x), vec4<bool>(var_1.c, true, false, false)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(48986u, var_3.b, 140310u, var_0), vec4<u32>(var_0, var_3.b, var_0, var_3.b)), vec4<u32>(var_1.d.x, var_1.d.x, var_1.d.x, var_0)), vec4<u32>(min(1469u, 1u), ~var_1.d.x, var_1.d.x, 29529u | var_1.d.x)));
}

fn func_1(arg_0: f32, arg_1: u32) -> StorageBuffer {
    let var_0 = arg_1;
    var var_1 = Struct_4(~max(select(vec4<u32>(arg_1, 90920u, 1u, var_0) ^ vec4<u32>(var_0, var_0, arg_1, 4294967295u), func_2(), any(vec3<bool>(true, true, false))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_1, 0u, arg_1, arg_1)), countOneBits(vec4<u32>(var_0, 4294967295u, var_0, var_0)))));
    var_1 = Struct_4(vec4<u32>(var_1.a.x, 19861u, 35543u >> (countOneBits(105626u) % 32u), ~(var_1.a.x & var_1.a.x)));
    let var_2 = _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-1i) * -(~u_input.a.xz)), u_input.a.zy);
    var_1 = Struct_4(~vec4<u32>(0u, 4294967295u, ~arg_1, 0u));
    return StorageBuffer(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(497f + -686f) - _wgslsmith_f_op_f32(f32(-1f) * -279f)), -906f)), _wgslsmith_mod_i32(var_2.x, _wgslsmith_sub_i32(reverseBits(_wgslsmith_add_i32(53125i, u_input.a.x)), -53247i)), var_1.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(22202u >> (abs(1u) % 32u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-317f, -1449f)) * _wgslsmith_f_op_f32(2306f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2319f, 215f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) + _wgslsmith_div_f32(930f, 715f)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)) + 1867f));
    var_1 = 2348f;
    let var_2 = -1i <= u_input.a.x;
    let x = u_input.a;
    s_output = func_1(-309f, 1u);
}

