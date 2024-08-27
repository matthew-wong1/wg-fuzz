struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>) -> u32 {
    let var_0 = abs(firstLeadingBit(arg_0.a.c.xzz));
    let var_1 = arg_0;
    let var_2 = Struct_1(var_1.a.a, ~min(~_wgslsmith_mod_vec4_u32(var_1.c.b, var_1.a.d), vec4<u32>(u_input.b, ~1u, ~u_input.b, var_0.x)), countOneBits(reverseBits(arg_0.e.c)), vec4<u32>(var_0.x, ~firstLeadingBit(_wgslsmith_add_u32(arg_0.a.b.x, arg_0.e.d.x)), 1u, 4323u));
    let var_3 = max(var_0, ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(abs(var_1.c.c.yyw), ~vec3<u32>(1u, 68942u, u_input.b)), arg_0.c.d.zwy));
    let var_4 = !select(vec4<bool>(var_2.a, var_2.a, var_2.a, false), select(vec4<bool>(all(vec3<bool>(var_2.a, true, arg_0.a.a)), arg_0.e.a, true, false), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_2.a, arg_2.x, arg_0.d.a), vec4<bool>(true, true, true, arg_2.x)), all(!vec4<bool>(arg_0.a.a, var_1.a.a, false, true))), vec4<bool>(true, true, all(vec2<bool>(false, var_1.c.a)), all(arg_2)));
    return ~((_wgslsmith_sub_u32(30081u, 1u) >> (var_3.x % 32u)) & _wgslsmith_mult_u32(var_3.x, ~_wgslsmith_dot_vec4_u32(var_1.a.d, vec4<u32>(20075u, 0u, 1u, u_input.b))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(~(vec4<u32>(1u, 4294967295u, 19241u, 9888u) << (vec4<u32>(u_input.b, u_input.b, 15193u, 39380u) % vec4<u32>(32u))) ^ vec4<u32>(u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b), ~u_input.b, 1u)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.b, u_input.b, u_input.b) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, 36944u), vec4<u32>(49590u, u_input.b, 67599u, u_input.b)), vec4<u32>(func_3(Struct_2(Struct_1(arg_0, vec4<u32>(u_input.b, 15256u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 35848u), vec4<u32>(76618u, 18987u, u_input.b, u_input.b)), u_input.b, Struct_1(arg_0, vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b), vec4<u32>(u_input.b, 1u, 0u, 1u), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), Struct_1(arg_0, vec4<u32>(u_input.b, u_input.b, u_input.b, 7802u), vec4<u32>(106879u, u_input.b, 64944u, 22451u), vec4<u32>(u_input.b, u_input.b, 114555u, u_input.b)), Struct_1(false, vec4<u32>(64764u, u_input.b, u_input.b, u_input.b), vec4<u32>(88115u, 4294967295u, 1808u, 1u), vec4<u32>(4294967295u, u_input.b, 76427u, 0u))), u_input.a, vec3<bool>(arg_0, false, true)), ~u_input.b, u_input.b, u_input.b)), vec4<u32>(15833u, ~37062u ^ ~(~u_input.b), 0u & _wgslsmith_sub_u32(~4294967295u, u_input.b), ~1u));
    var var_1 = u_input.b;
    let var_2 = ~max(select(reverseBits(vec4<u32>(48342u, 51056u, var_0.x, var_0.x)) ^ select(var_0, vec4<u32>(115452u, 102905u, 4294967295u, var_0.x), vec4<bool>(true, true, arg_0, true)), select(vec4<u32>(24948u, 2216u, 0u, 4294967295u), ~var_0, vec4<bool>(true, true, arg_0, arg_0)), vec4<bool>(any(vec4<bool>(arg_0, true, true, true)), true, any(vec3<bool>(arg_0, arg_0, true)), 2147483647i < arg_1.x)), var_0);
    var_1 = _wgslsmith_mod_u32(u_input.b, select(76517u, var_2.x, true) & ~(~var_2.x)) & ~var_0.x;
    var_1 = ~firstLeadingBit(19921u);
    return ~1u;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = abs(max(~0u, ~(~u_input.b) | func_2(all(vec4<bool>(true, arg_1.e.a, true, false)), abs(vec2<i32>(5526i, 1i)))));
    var var_1 = ~reverseBits(select(-vec4<i32>(-2147483647i, -75925i, arg_3.x, -9718i), vec4<i32>(min(28001i, arg_3.x), -arg_3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, 42583i, u_input.a, -46276i), vec4<i32>(arg_3.x, 52781i, 2147483647i, -2147483647i)), _wgslsmith_clamp_i32(arg_3.x, u_input.a, 1i)), true));
    let var_2 = Struct_1(true, select(~_wgslsmith_mod_vec4_u32(select(arg_1.d.c, arg_1.a.c, true), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.e.d.x, 1u, u_input.b, u_input.b), arg_1.d.b)), countOneBits(~_wgslsmith_clamp_vec4_u32(arg_1.c.c, arg_1.e.c, vec4<u32>(arg_1.b, arg_1.e.b.x, 0u, u_input.b))), true), max(abs(vec4<u32>(arg_1.a.d.x, 0u, 4294967295u, 0u) << (arg_1.d.d % vec4<u32>(32u))), select(arg_1.a.b, vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.c.d.zzy, arg_1.d.d.xww), u_input.b, ~u_input.b, 1u), reverseBits(-2147483647i) != -arg_3.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_1.e.c.x, _wgslsmith_mod_u32(u_input.b >> (48302u % 32u), 0u), func_3(arg_1, _wgslsmith_add_i32(11507i, -2147483647i), vec3<bool>(true, true, true)), _wgslsmith_mod_u32(arg_1.e.c.x | arg_1.d.b.x, arg_1.e.b.x)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(36034u, 71063u, u_input.b, u_input.b), vec4<u32>(arg_1.d.d.x, arg_1.d.d.x, 1u, 4294967295u)), vec4<u32>(arg_1.b, 369u, 72801u, u_input.b), vec4<u32>(u_input.b, u_input.b, arg_1.a.c.x, u_input.b))));
    let var_3 = firstTrailingBit(~var_2.c);
    let var_4 = _wgslsmith_div_vec3_i32(reverseBits(var_1.xxz), max(vec3<i32>(~(-12171i), 0i, i32(-1i) * -35011i) ^ vec3<i32>(u_input.a, arg_3.x, -u_input.a), var_1.zyz));
    return select(select(select(!(!vec4<bool>(false, arg_0, var_2.a, var_2.a)), select(!vec4<bool>(false, true, var_2.a, arg_0), select(vec4<bool>(var_2.a, false, var_2.a, false), vec4<bool>(true, false, false, arg_0), true), arg_1.e.a), select(false, false, all(vec4<bool>(true, var_2.a, false, true)))), vec4<bool>(true, true, select(var_2.c.x > arg_1.c.c.x, !arg_1.e.a, arg_2 >= 1640f), !(arg_0 != arg_1.a.a)), vec4<bool>(all(!vec3<bool>(false, false, arg_0)), var_2.a, true, all(select(vec4<bool>(false, arg_0, true, false), vec4<bool>(false, var_2.a, arg_1.e.a, var_2.a), vec4<bool>(false, arg_0, var_2.a, false))))), !select(select(!vec4<bool>(false, arg_1.a.a, true, true), select(vec4<bool>(true, arg_1.d.a, var_2.a, true), vec4<bool>(false, arg_1.e.a, false, arg_1.a.a), true), all(vec2<bool>(arg_0, arg_1.d.a))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_1.c.a, arg_1.a.a, true, false), vec4<bool>(arg_1.e.a, false, true, false), arg_1.c.a), all(vec3<bool>(var_2.a, false, arg_0))), vec4<bool>(true, true, true, true)), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(func_1(false, Struct_2(Struct_1(true, vec4<u32>(u_input.b, u_input.b, u_input.b, 65427u), vec4<u32>(0u, u_input.b, 17200u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), u_input.b, Struct_1(true, vec4<u32>(11165u, 26310u, 16920u, 0u), vec4<u32>(122184u, 1u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 0u, 70953u, 154500u)), Struct_1(false, vec4<u32>(u_input.b, 2004u, 4294967295u, 78356u), vec4<u32>(2746u, 1u, 23164u, 49825u), vec4<u32>(u_input.b, u_input.b, 0u, 0u)), Struct_1(false, vec4<u32>(3561u, 43720u, 23025u, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, 30146u), vec4<u32>(6077u, u_input.b, 13370u, 0u))), -626f, vec3<i32>(u_input.a, u_input.a, -32901i)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), -402f != _wgslsmith_f_op_f32(ceil(-1659f))));
    let var_1 = select(countOneBits(reverseBits(~vec2<i32>(-7467i, u_input.a))), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(41098i, -1i, 1i), vec3<i32>(u_input.a, -2147483647i, u_input.a))), reverseBits(vec2<i32>(-46414i, u_input.a))), select(select(!vec2<bool>(var_0.x, var_0.x), select(func_1(false, Struct_2(Struct_1(false, vec4<u32>(u_input.b, u_input.b, 13826u, 28235u), vec4<u32>(u_input.b, 0u, 1u, 1u), vec4<u32>(0u, 20751u, 22963u, 0u)), u_input.b, Struct_1(false, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, 1u, 43821u, 44166u), vec4<u32>(u_input.b, 68397u, 1u, 1u)), Struct_1(true, vec4<u32>(12462u, u_input.b, 3269u, u_input.b), vec4<u32>(u_input.b, 16863u, 1u, u_input.b), vec4<u32>(4294967295u, 36106u, u_input.b, u_input.b)), Struct_1(true, vec4<u32>(u_input.b, u_input.b, u_input.b, 21994u), vec4<u32>(0u, u_input.b, 4619u, u_input.b), vec4<u32>(1583u, u_input.b, 1u, u_input.b))), -1000f, vec3<i32>(u_input.a, u_input.a, 2147483647i)).yw, !var_0.zy, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), false), var_0.xz, !(!var_0.x)));
    let var_2 = Struct_1(var_0.x, ~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, 7374u, 2094u)), 61648u, u_input.b, ~u_input.b), abs(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 59109u, 0u, 45788u), vec4<u32>(15755u, 0u, u_input.b, u_input.b)) << ((vec4<u32>(0u, 52692u, 27918u, 13696u) >> (vec4<u32>(115458u, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)))), vec4<u32>(firstTrailingBit(62526u), 93894u, 4294967295u, ~_wgslsmith_add_u32(~u_input.b, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(7348u, u_input.b) << (~vec2<u32>(1u, ~0u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~var_2.c.yx, _wgslsmith_sub_vec2_u32(var_2.b.ww, reverseBits(var_2.d.xz)) ^ ~vec2<u32>(0u, u_input.b)), 231f);
}

