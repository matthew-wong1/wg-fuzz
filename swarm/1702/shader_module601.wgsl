struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(firstTrailingBit(~max(vec3<i32>(0i, 0i, 64666i), vec3<i32>(19141i, u_input.c.x, u_input.c.x))), abs(countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, -62649i) & vec3<i32>(u_input.c.x, 1i, -34655i)))), vec3<bool>(true, true, true), vec4<i32>(min(-2147483647i, _wgslsmith_add_i32(~u_input.c.x, ~u_input.c.x)), u_input.c.x, _wgslsmith_add_i32(u_input.c.x, 2147483647i & ~u_input.c.x), _wgslsmith_sub_i32(reverseBits(-2147483647i), -9541i << (~u_input.a.x % 32u))), ~vec2<u32>(select(51268u, 35702u, all(vec4<bool>(false, false, false, true))), 1u), countOneBits(u_input.c.x));
    var var_1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, max(firstTrailingBit(u_input.c.x), u_input.c.x ^ var_0.a)), -14508i), !var_0.b, vec4<i32>(-var_0.c.x, u_input.c.x & 43047i, ~u_input.c.x, u_input.c.x), u_input.a.zz, var_0.c.x);
    var var_2 = Struct_1(u_input.c.x, var_0.b, vec4<i32>(_wgslsmith_mult_i32(-1i, 72544i), var_0.a, _wgslsmith_mult_i32(~(var_0.e >> (u_input.a.x % 32u)), var_0.e), _wgslsmith_clamp_i32(15324i, ~var_1.e, ~2264i) >> (~2563u % 32u)), reverseBits(var_0.d << ((max(u_input.a.yy, vec2<u32>(37192u, var_0.d.x)) | abs(vec2<u32>(67036u, u_input.a.x))) % vec2<u32>(32u))), -23482i);
    var var_3 = -1173f;
    var var_4 = ~var_0.c.xzz;
    return _wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, 3794i), (~abs(var_0.c.x) ^ ~var_4.x) >> (~0u % 32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> vec3<i32> {
    let var_0 = arg_1;
    let var_1 = -vec2<i32>(5981i, ~arg_2);
    let var_2 = Struct_2(!(!select(!vec2<bool>(arg_1.d.b.x, var_0.d.b.x), arg_1.e.yy, select(vec2<bool>(arg_1.a.x, var_0.e.x), var_0.e.xx, var_0.a))), ~21212u, ~arg_1.c, arg_1.d, arg_1.e);
    var var_3 = var_2.d;
    let var_4 = vec2<i32>(var_2.d.a, _wgslsmith_mult_i32(var_3.e, 1i));
    return _wgslsmith_add_vec3_i32(vec3<i32>(var_3.c.x, -773i, var_4.x), vec3<i32>(func_3() | -var_1.x, ~_wgslsmith_sub_i32(var_0.d.e, u_input.c.x) ^ var_3.e, arg_1.d.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    var var_0 = Struct_2(vec2<bool>(max(func_2(arg_0.d.c.xzw, Struct_2(arg_2.b.zx, arg_2.d.x, vec3<u32>(8165u, 1u, 47029u), arg_2, vec3<bool>(arg_2.b.x, arg_0.d.b.x, true)), 15096i).x, 0i) > (firstLeadingBit(23670i) >> (1u % 32u)), min(u_input.c.x, arg_0.d.e) > (_wgslsmith_div_i32(-7755i, -21698i) | func_2(arg_0.d.c.xyx, Struct_2(arg_0.e.yx, 50769u, vec3<u32>(31937u, 39837u, arg_0.d.d.x), Struct_1(u_input.c.x, vec3<bool>(arg_0.a.x, arg_2.b.x, false), vec4<i32>(arg_1.x, arg_2.c.x, arg_0.d.c.x, -2147483647i), vec2<u32>(u_input.b, arg_2.d.x), arg_0.d.a), arg_0.d.b), u_input.c.x).x)), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 4294967295u), vec4<u32>(arg_2.d.x, arg_2.d.x, arg_0.b, u_input.b))), firstTrailingBit(~arg_0.b)), arg_2.d), arg_0.c, Struct_1(arg_0.d.e, select(!(!arg_2.b), vec3<bool>(true, arg_0.a.x, arg_2.b.x && arg_3), true), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, arg_1.x), abs(~(~vec2<u32>(10714u, 40059u))), u_input.c.x), arg_2.b);
    let var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = Struct_1(var_0.d.c.x, select(!arg_2.b, arg_2.b, all(select(select(arg_2.b, var_2.e, vec3<bool>(var_0.d.b.x, var_2.a.x, arg_3)), vec3<bool>(true, arg_2.b.x, var_1.d.b.x), var_0.d.b.x))), firstLeadingBit(-_wgslsmith_sub_vec4_i32(var_1.d.c, vec4<i32>(-42085i, -47668i, -25682i, 2147483647i) << (vec4<u32>(58425u, var_2.b, 20651u, var_0.d.d.x) % vec4<u32>(32u)))), vec2<u32>(u_input.b | select(1u, _wgslsmith_mod_u32(67295u, var_0.b), true), 40564u), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.c.x, -34893i), select(_wgslsmith_mult_i32(var_1.d.c.x, -44128i), 0i, var_1.e.x)), ~(~vec2<i32>(-29705i, 0i))));
    let var_4 = -972f;
    return select(vec4<bool>(arg_3, all(!select(vec4<bool>(arg_3, arg_3, true, var_0.e.x), vec4<bool>(arg_0.e.x, true, var_0.d.b.x, var_1.d.b.x), false)), !((var_3.b.x && var_2.e.x) & false), !any(vec4<bool>(false, true, var_1.a.x, arg_0.e.x))), !select(!(!vec4<bool>(false, true, var_3.b.x, var_2.e.x)), vec4<bool>(any(arg_2.b), true, arg_2.b.x & var_1.a.x, var_2.a.x), !(2147483647i < arg_2.a)), !(!all(vec4<bool>(arg_2.b.x, var_3.b.x, false, var_3.b.x))) || !arg_0.e.x);
}

fn func_1() -> vec4<u32> {
    let var_0 = !select(vec4<bool>(true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)), u_input.a.x < u_input.b, false), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), true), func_4(Struct_2(vec2<bool>(true, true), u_input.a.x, u_input.a, Struct_1(2147483647i, vec3<bool>(false, false, false), u_input.c, u_input.a.xz, 10593i), vec3<bool>(false, false, false)), select(u_input.c.wzz, u_input.c.yyy, vec3<bool>(true, false, false)) & func_2(vec3<i32>(0i, u_input.c.x, 611i), Struct_2(vec2<bool>(false, false), u_input.b, vec3<u32>(u_input.a.x, 52648u, u_input.a.x), Struct_1(u_input.c.x, vec3<bool>(true, false, false), vec4<i32>(u_input.c.x, -39577i, 2147483647i, u_input.c.x), u_input.a.xy, u_input.c.x), vec3<bool>(false, true, true)), u_input.c.x), Struct_1(1i, vec3<bool>(true, false, false), firstLeadingBit(u_input.c), u_input.a.yy, u_input.c.x), true));
    let var_1 = u_input.c.yyx;
    var var_2 = 1u;
    let var_3 = Struct_2(vec2<bool>(any(select(vec3<bool>(var_0.x, true, false), !vec3<bool>(var_0.x, false, false), var_0.zyw)), ((u_input.c.x << (u_input.a.x % 32u)) < ~0i) || any(vec3<bool>(false, true, var_0.x))), 13169u, vec3<u32>(~u_input.a.x, u_input.a.x, 0u), Struct_1(~(-2147483647i), !(!func_4(Struct_2(var_0.yy, u_input.b, u_input.a, Struct_1(20881i, vec3<bool>(false, var_0.x, false), u_input.c, vec2<u32>(u_input.a.x, u_input.b), -1i), vec3<bool>(false, false, var_0.x)), vec3<i32>(u_input.c.x, u_input.c.x, var_1.x), Struct_1(3069i, vec3<bool>(true, true, var_0.x), vec4<i32>(var_1.x, u_input.c.x, var_1.x, u_input.c.x), vec2<u32>(0u, u_input.b), var_1.x), var_0.x).xyy), ~(~(~vec4<i32>(var_1.x, 14237i, 27810i, var_1.x))), u_input.a.zx, ~(-1i)), var_0.wwx);
    var_2 = u_input.a.x;
    return vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, 80775u), u_input.a.x), select(~16675u, u_input.a.x, func_4(Struct_2(func_4(var_3, u_input.c.wyw, var_3.d, var_0.x).yy, _wgslsmith_dot_vec3_u32(u_input.a, var_3.c), vec3<u32>(21343u, var_3.c.x, var_3.c.x), Struct_1(u_input.c.x, var_3.d.b, var_3.d.c, var_3.d.d, var_3.d.e), !vec3<bool>(false, var_0.x, var_3.a.x)), ~var_3.d.c.wyx | vec3<i32>(var_3.d.a, var_1.x, var_1.x), Struct_1(-var_1.x, vec3<bool>(var_0.x, false, var_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.d.c.x, u_input.c.x, var_3.d.c.x, var_3.d.e), vec4<i32>(var_1.x, u_input.c.x, u_input.c.x, u_input.c.x)), reverseBits(vec2<u32>(var_3.c.x, u_input.a.x)), u_input.c.x), !var_3.d.b.x).x), _wgslsmith_dot_vec3_u32(var_3.c, vec3<u32>(_wgslsmith_dot_vec3_u32(~var_3.c, ~vec3<u32>(var_3.d.d.x, var_3.c.x, 4294967295u)), 1u, ~var_3.d.d.x)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, 12660u), u_input.b, 48309u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1());
    var var_1 = u_input.c.xwz >> (u_input.a % vec3<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c.x, max(-75367i, -u_input.c.x)), _wgslsmith_add_i32(u_input.c.x, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 17436i, var_1.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), i32(-1i) * -1i))), vec3<bool>(true, true, true), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(var_1.x, 2147483647i, u_input.c.x, -51655i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, ~0i, _wgslsmith_sub_i32(u_input.c.x, 6787i), -1i >> (u_input.b % 32u)), _wgslsmith_mod_vec4_i32(u_input.c, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 28790i, u_input.c.x), u_input.c)))), min(_wgslsmith_add_vec2_u32(var_0.wz, ~var_0.zw), vec2<u32>(1u, u_input.b) << (_wgslsmith_clamp_vec2_u32(var_0.wy, var_0.yx, vec2<u32>(u_input.b, 95588u)) % vec2<u32>(32u))) >> (var_0.yx % vec2<u32>(32u)), _wgslsmith_div_i32(-_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-18911i, 1i), ~u_input.c.x, -var_1.x), _wgslsmith_add_i32(3755i, _wgslsmith_dot_vec3_i32(select(u_input.c.wyw, vec3<i32>(var_1.x, u_input.c.x, var_1.x), vec3<bool>(true, true, false)), -u_input.c.wxx))));
    let var_3 = Struct_1(u_input.c.x << (countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, var_0.x, 0u), vec3<u32>(66263u, 4294967295u, u_input.a.x) & vec3<u32>(var_0.x, 0u, 70178u))) % 32u), select(!select(vec3<bool>(true, false, true), func_4(Struct_2(vec2<bool>(var_2.b.x, false), 117738u, u_input.a, Struct_1(-14268i, vec3<bool>(false, false, true), vec4<i32>(7885i, 0i, u_input.c.x, -1i), vec2<u32>(4294967295u, 4294967295u), var_1.x), var_2.b), vec3<i32>(var_1.x, u_input.c.x, -2997i), Struct_1(u_input.c.x, var_2.b, vec4<i32>(-24528i, -2147483647i, var_2.c.x, 2358i), u_input.a.zx, var_2.a), true).yzy, true), func_4(Struct_2(vec2<bool>(var_2.b.x, false), var_2.d.x, select(vec3<u32>(u_input.b, var_2.d.x, 1u), vec3<u32>(1u, 0u, 0u), vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)), Struct_1(u_input.c.x, var_2.b, vec4<i32>(var_2.a, u_input.c.x, var_2.a, -31307i), var_0.xz, var_1.x), select(vec3<bool>(var_2.b.x, var_2.b.x, false), var_2.b, var_2.b)), countOneBits(u_input.c.zyz), Struct_1(abs(var_2.c.x), select(var_2.b, var_2.b, var_2.b.x), firstLeadingBit(vec4<i32>(-67280i, -25169i, -23451i, var_1.x)), var_0.wz, ~var_2.c.x), true).wzx, var_2.b), abs(var_2.c), ~_wgslsmith_add_vec2_u32(~select(u_input.a.xy, vec2<u32>(4010u, u_input.a.x), false), vec2<u32>(~4294967295u, firstTrailingBit(var_0.x))), (39717i >> (firstTrailingBit(1u) % 32u)) | var_1.x);
    var var_4 = Struct_2(!var_3.b.xz, func_1().x | ~u_input.b, vec3<u32>(4294967295u, 42005u, ~44907u), var_3, select(vec3<bool>(true, var_2.b.x, true), vec3<bool>(true, false, (var_3.b.x && true) || false), !select(select(var_3.b, vec3<bool>(false, true, var_3.b.x), true), !vec3<bool>(false, var_3.b.x, true), true)));
    let var_5 = var_3;
    var var_6 = reverseBits(var_4.c.x);
    var var_7 = var_2.b.yy;
    let var_8 = any(!select(!vec3<bool>(var_2.b.x, var_3.b.x, true), select(vec3<bool>(true, true, var_7.x), var_3.b, var_7.x != true), var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 9987u, var_3.d.x), vec4<u32>(var_5.d.x, 1u, 15328u, var_5.d.x)), ~select(vec4<u32>(4294967295u, 51146u, 93992u, 4294967295u), vec4<u32>(13057u, var_4.b, 63770u, u_input.a.x), var_3.b.x)), vec4<u32>(select(~9352u, 117470u, var_7.x), u_input.a.x, firstTrailingBit(~32229u), 4294967295u), !select(select(vec4<bool>(true, true, var_2.b.x, true), vec4<bool>(false, var_2.b.x, var_5.b.x, false), var_4.a.x), !vec4<bool>(var_4.a.x, true, false, true), !vec4<bool>(var_8, false, false, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1219f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f) + _wgslsmith_f_op_f32(f32(-1f) * -986f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -389f)))))), var_1.xz, _wgslsmith_mod_i32(firstTrailingBit(var_4.d.c.x) ^ _wgslsmith_sub_i32(reverseBits(var_4.d.c.x), 50746i), 0i));
}

