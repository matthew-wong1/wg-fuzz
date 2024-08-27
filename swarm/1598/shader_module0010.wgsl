struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(8813u, u_input.a.x, 0u), u_input.a), _wgslsmith_clamp_u32(0u | u_input.a.x, reverseBits(0u), 1u)), 4294967295u & firstLeadingBit(max(u_input.a.x, u_input.a.x)), 1u, 65180u);
    var_0 = ~(~firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.a.x, 4294967295u, 13908u, 12103u) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4982u))));
    var var_1 = Struct_1(firstLeadingBit(firstLeadingBit(~(~u_input.a.yz))), vec4<u32>(~max(abs(var_0.x), 1u), var_0.x, ~_wgslsmith_mult_u32(1u, ~u_input.a.x), ~(~66984u)), abs(firstTrailingBit(-min(vec4<i32>(164i, 1i, -48309i, -6761i), vec4<i32>(-8315i, 1i, -18816i, 1i)))), 3789u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, 1u) & ~4294967295u, ~u_input.a.x));
    var_1 = Struct_1(_wgslsmith_div_vec2_u32(~max(var_0.xy, vec2<u32>(u_input.a.x, u_input.a.x)) & vec2<u32>(var_0.x ^ var_0.x, u_input.a.x), ~select(var_1.b.yw, vec2<u32>(42552u, 0u), vec2<bool>(true, true))), vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.b.ywx, var_1.b.xxy | max(var_0.xwz, vec3<u32>(var_1.e, 0u, 0u))), 1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.a.x, 1u), ~var_1.b) % 32u), ~var_1.e, _wgslsmith_div_u32(u_input.a.x, ~32155u)), var_1.c, _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(~var_1.a.x ^ _wgslsmith_add_u32(130803u, 0u), 24336u)), 300u);
    var var_2 = Struct_1(~vec2<u32>(var_1.a.x ^ 1u, ~_wgslsmith_mod_u32(63827u, var_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(40978u, u_input.a.x, var_1.e, ~(~6970u)), vec4<u32>(var_1.d, u_input.a.x, var_0.x, 0u) >> ((vec4<u32>(var_0.x, var_1.e, 17313u, var_0.x) | _wgslsmith_div_vec4_u32(var_1.b, var_1.b)) % vec4<u32>(32u))), -_wgslsmith_mod_vec4_i32(firstLeadingBit(var_1.c), ~var_1.c) << (_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(var_1.b, var_1.b), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(61887u, 12522u, var_1.e, u_input.a.x)), var_1.b)) % vec4<u32>(32u)), ~1u, 10329u);
    return vec2<u32>(select(~countOneBits(~var_1.b.x), var_0.x, true), _wgslsmith_div_u32(firstLeadingBit(1u & _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), firstLeadingBit(var_2.b.x)));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(func_3(), firstTrailingBit(firstTrailingBit(reverseBits(u_input.a.xx))), vec2<u32>(arg_0, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(3082u, arg_0, 0u)), _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(arg_0, u_input.a.x, 0u))))), vec4<u32>(45186u, 4294967295u, ~_wgslsmith_mod_u32(arg_0 ^ 4294967295u, firstTrailingBit(u_input.a.x)), u_input.a.x & ~abs(u_input.a.x)), vec4<i32>(arg_1.x, -_wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(-85196i, 24548i)), _wgslsmith_mult_i32(-firstTrailingBit(arg_1.x), countOneBits(-arg_1.x)), max(~arg_1.x, i32(-1i) * -2147483647i)), firstTrailingBit(4294967295u), ~(~(~(~arg_0))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x << (min(1u, arg_1.d) % 32u)), ~firstLeadingBit(vec2<u32>(1u, arg_0.b.x))), ~countOneBits(select(arg_2.b, arg_1.b, true) | _wgslsmith_mod_vec4_u32(arg_2.b, vec4<u32>(u_input.a.x, arg_0.d, arg_1.e, arg_2.a.x))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_1.c.x, 1i, -1381i, arg_1.c.x), ~arg_2.c, select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))) | _wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0.c.x, -1i, arg_2.c.x), -vec4<i32>(arg_2.c.x, arg_1.c.x, arg_1.c.x, arg_0.c.x)), arg_0.c), arg_1.d, ~_wgslsmith_add_u32(1u, 1u ^ func_3().x));
    let var_1 = vec4<u32>(0u, ~(~firstTrailingBit(1u)), _wgslsmith_mult_u32(max(1u, var_0.b.x), var_0.b.x), 48711u);
    let var_2 = func_2(~(4294967295u ^ select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a), var_1.x, true)), max(arg_1.c, abs(-(arg_0.c ^ arg_2.c)))).c;
    let var_3 = firstTrailingBit(countOneBits(var_1));
    let var_4 = func_2(select(1u, ~_wgslsmith_add_u32(countOneBits(0u), func_2(34627u, var_2).e), true == any(vec4<bool>(true, true, true, true))), vec4<i32>(max(arg_2.c.x, ~(~44675i)), ~var_2.x << (~1u % 32u), select(-26315i, ~arg_2.c.x, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), abs(_wgslsmith_dot_vec3_i32(var_0.c.zzw, vec3<i32>(var_0.c.x, var_2.x, arg_1.c.x))) & ((arg_2.c.x & -2147483647i) ^ -arg_1.c.x)));
    return var_0.e ^ max(arg_1.b.x, ~var_0.d);
}

fn func_1() -> vec2<f32> {
    var var_0 = vec3<u32>(~(~u_input.a.x) & ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4288u), vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x)), 24127u), ~(~(u_input.a.x << (u_input.a.x % 32u)) >> (4294967295u % 32u)), max(46536u, func_4(func_2(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(-24478i, -18677i, -15155i, -2333i)), func_2(u_input.a.x, ~vec4<i32>(2147483647i, -1i, 49477i, 45719i)), func_2(u_input.a.x ^ 3477u, -vec4<i32>(-2147483647i, 39i, 20049i, 0i)))));
    var_0 = max(abs(~vec3<u32>(34812u, min(31602u, var_0.x), 29363u)), select(vec3<u32>(u_input.a.x, min(~u_input.a.x, ~u_input.a.x), ~u_input.a.x), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_0.x, 88074u, var_0.x)), u_input.a), vec3<bool>(true, true, true)));
    let var_1 = func_2(~firstTrailingBit(firstLeadingBit(var_0.x)), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(~2147483647i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -2147483647i, -2147483647i), vec4<i32>(2147483647i, 30561i, 0i, 34371i))), i32(-1i) * -37154i, -3990i)));
    return vec2<f32>(-1391f, -119f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 156f), _wgslsmith_f_op_f32(f32(-1f) * -748f))), 880f))));
    let var_1 = func_2(4294967295u, vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -2147483647i), vec2<i32>(countOneBits(0i), func_2(4294967295u, vec4<i32>(2147483647i, 2855i, -1i, -8444i)).c.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -9036i, 0i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(_wgslsmith_add_i32(1i, -1i), _wgslsmith_sub_i32(7979i, 20779i), _wgslsmith_mult_i32(-46490i, -1i), countOneBits(-2147483647i))), _wgslsmith_clamp_i32(0i, -32942i, ~select(31186i, -5052i, false)), -abs(~(-4364i))));
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(var_1.c.x, var_1.c.x >> (~firstLeadingBit(1u) % 32u)), var_1.c.x, -var_1.c.x);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * 1481f)) * 1f));
    let var_3 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~(var_1.b ^ vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), ~((vec4<u32>(var_1.d, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, 0u, 68872u, 55034u)) & ~var_1.b), firstLeadingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(33241u, 4654u, var_1.b.x, 18424u), firstLeadingBit(vec4<u32>(var_1.a.x, u_input.a.x, var_1.e, var_1.a.x))))), reverseBits(max(vec4<u32>(u_input.a.x, u_input.a.x, 25561u, var_1.e) | vec4<u32>(85050u, 0u, var_1.e, 4294967295u), max(select(vec4<u32>(11934u, var_1.a.x, u_input.a.x, var_1.b.x), var_1.b, vec4<bool>(false, false, false, true)), _wgslsmith_div_vec4_u32(var_1.b, var_1.b)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1())))));
    var var_4 = vec2<i32>(-1i) * -vec2<i32>(-18963i, _wgslsmith_mod_i32(-23572i, var_2.x << (var_3.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), 547f, _wgslsmith_f_op_f32(f32(-1f) * -943f))))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, var_4.x), var_1.c.zy, var_2.xz), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x));
}

