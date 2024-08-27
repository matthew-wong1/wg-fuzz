struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<u32>(1u, 2869u, 26237u, 0u), vec4<i32>(7756i, 1i, i32(-2147483648), i32(-2147483648)), vec2<u32>(19309u, 1u)), Struct_1(vec4<u32>(30091u, 42318u, 44810u, 0u), vec4<i32>(2147483647i, -1i, i32(-2147483648), -18856i), vec2<u32>(37985u, 4294967295u)), Struct_1(vec4<u32>(113421u, 3770u, 23775u, 4294967295u), vec4<i32>(0i, -60635i, 13931i, i32(-2147483648)), vec2<u32>(0u, 6994u)), Struct_1(vec4<u32>(0u, 1u, 36406u, 87412u), vec4<i32>(-56206i, 2147483647i, -16864i, 0i), vec2<u32>(1u, 14554u)), Struct_1(vec4<u32>(45153u, 0u, 16560u, 4294967295u), vec4<i32>(-25837i, 1i, i32(-2147483648), 2147483647i), vec2<u32>(4294967295u, 44832u)), Struct_1(vec4<u32>(0u, 0u, 70271u, 0u), vec4<i32>(-1i, -64961i, 314i, -39445i), vec2<u32>(132059u, 51371u)), Struct_1(vec4<u32>(69683u, 24773u, 43576u, 4294967295u), vec4<i32>(i32(-2147483648), 44332i, -1i, i32(-2147483648)), vec2<u32>(3752u, 56361u)), Struct_1(vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<i32>(1i, 14191i, 0i, -1i), vec2<u32>(42411u, 21131u)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<i32>(32436i, 2147483647i, i32(-2147483648), 5859i), vec2<u32>(3606u, 1u)), Struct_1(vec4<u32>(0u, 1u, 1u, 53170u), vec4<i32>(33841i, 26835i, 1i, 1i), vec2<u32>(26172u, 22938u)), Struct_1(vec4<u32>(4294967295u, 15537u, 87030u, 0u), vec4<i32>(-27702i, 4946i, i32(-2147483648), i32(-2147483648)), vec2<u32>(6687u, 0u)), Struct_1(vec4<u32>(1u, 29913u, 38321u, 16290u), vec4<i32>(2147483647i, 3209i, 23483i, 4943i), vec2<u32>(6564u, 1u)), Struct_1(vec4<u32>(15633u, 4294967295u, 8338u, 1u), vec4<i32>(40815i, 1i, -9520i, 0i), vec2<u32>(92040u, 0u)), Struct_1(vec4<u32>(11035u, 4294967295u, 13935u, 1u), vec4<i32>(49591i, -24010i, i32(-2147483648), i32(-2147483648)), vec2<u32>(21029u, 4294967295u)), Struct_1(vec4<u32>(9718u, 16152u, 1u, 34820u), vec4<i32>(i32(-2147483648), -18303i, 2147483647i, -23689i), vec2<u32>(4294967295u, 74322u)), Struct_1(vec4<u32>(52159u, 1u, 78080u, 1u), vec4<i32>(-66472i, -7295i, 1316i, 1i), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<u32>(38547u, 26407u, 0u, 1u), vec4<i32>(2147483647i, 0i, 0i, 2147483647i), vec2<u32>(47914u, 0u)), Struct_1(vec4<u32>(0u, 1u, 0u, 43785u), vec4<i32>(-13482i, i32(-2147483648), -32998i, -30151i), vec2<u32>(10497u, 0u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 18>();
    let var_0 = arg_2;
    let var_1 = abs(select(~vec2<u32>(select(arg_1.a.x, arg_2.a.x, false), arg_1.a.x), _wgslsmith_mod_vec2_u32(arg_3.c & arg_3.a.zx, min(vec2<u32>(arg_1.a.x, arg_1.a.x), vec2<u32>(0u, arg_3.c.x))), (_wgslsmith_div_i32(u_input.a, arg_2.b.x) | _wgslsmith_mod_i32(arg_2.b.x, -6501i)) >= 43488i));
    var var_2 = arg_1.c.x;
    var var_3 = var_0.b.x;
    return select(!select(vec4<bool>(true, all(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, true, false, true)), false), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(false, false)), arg_0 >= 609f, true)), vec4<bool>(true, false, true, all(vec3<bool>(true, arg_3.c.x != var_0.a.x, all(vec3<bool>(false, true, false))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_2.b.x != arg_2.b.x, true), false), vec4<bool>(true, true, true, true), !any(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = !select(vec4<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), all(vec3<bool>(true, true, false)), false, true), !func_3(-1000f, Struct_1(vec4<u32>(4294967295u, 0u, 18956u, 7421u), vec4<i32>(78430i, u_input.a, 26093i, -2147483647i), vec2<u32>(54313u, 13299u)), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 9420u), vec4<i32>(u_input.a, -19955i, u_input.a, u_input.a), vec2<u32>(u_input.b, 1u)), Struct_1(vec4<u32>(1u, 36149u, 4294967295u, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec2<u32>(31183u, 4294967295u))), any(vec2<bool>(all(vec3<bool>(false, true, true)), func_3(arg_0.x, global0[_wgslsmith_index_u32(56074u, 18u)], global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]).x)));
    var_0 = vec4<bool>(var_0.x, var_0.x, !var_0.x, ((_wgslsmith_f_op_f32(arg_0.x + 706f) != _wgslsmith_f_op_f32(select(139f, arg_0.x, false))) & (!var_0.x | true)) & (~firstTrailingBit(6758u) >= ~firstLeadingBit(u_input.b)));
    var var_1 = Struct_1(vec4<u32>(abs(~u_input.b), _wgslsmith_sub_u32(u_input.b, u_input.b), firstTrailingBit(~u_input.b), select(u_input.b ^ u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b), all(vec4<bool>(false, var_0.x, var_0.x, false)))) >> (vec4<u32>(reverseBits(u_input.b), 31680u, 4077u, _wgslsmith_clamp_u32(~u_input.b, u_input.b, ~u_input.b)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -10619i, firstLeadingBit(u_input.a)), u_input.a, u_input.a), -u_input.a, u_input.a | abs(_wgslsmith_mod_i32(u_input.a, 0i)), _wgslsmith_div_i32(~abs(u_input.a), abs(u_input.a | 31556i))), _wgslsmith_sub_vec2_u32(max(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(0u, u_input.b), vec2<u32>(0u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 0u)), var_0.x && var_0.x), firstLeadingBit(~vec2<u32>(u_input.b, 10337u))), _wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(29129u, 4294967295u), vec2<u32>(u_input.b, u_input.b))), vec2<u32>(u_input.b << (1u % 32u), ~105346u))));
    var var_2 = -firstLeadingBit(18793i);
    let var_3 = abs(~7141u);
    return countOneBits(~_wgslsmith_dot_vec2_u32(var_1.a.xx, ~var_1.c));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~10153u, u_input.b), 18u)];
    global0 = array<Struct_1, 18>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(arg_0.c, abs(vec2<u32>(var_0.c.x, 138102u)))), vec2<u32>(1u, ~47544u)) & _wgslsmith_dot_vec3_u32(arg_0.a.wzy, var_0.a.xzw), 18u)];
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-773f + -1215f), _wgslsmith_f_op_f32(sign(1515f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) * _wgslsmith_f_op_f32(min(-173f, 202f))))))));
    let var_3 = Struct_1(var_1.a & vec4<u32>(countOneBits(4294967295u), var_0.a.x & (arg_0.a.x ^ 0u), countOneBits(~var_1.a.x), u_input.b), var_1.b, vec2<u32>(4294967295u, var_0.a.x));
    return !(!vec2<bool>(_wgslsmith_f_op_f32(-var_2) == 351f, !(false | arg_1)));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    global0 = array<Struct_1, 18>();
    return select(vec2<bool>(true == (~u_input.b != 1u), all(vec3<bool>(true, true, true))), func_4(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u) & func_2(vec2<f32>(1855f, 561f)), 18u)], true, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1172f, _wgslsmith_f_op_f32(round(arg_0)), -296f, _wgslsmith_f_op_f32(-arg_0))))), !vec2<bool>(!any(vec2<bool>(true, false)), func_3(100f, global0[_wgslsmith_index_u32(5992u, 18u)], global0[_wgslsmith_index_u32(~u_input.b, 18u)], Struct_1(vec4<u32>(u_input.b, 19832u, u_input.b, u_input.b), vec4<i32>(2147483647i, 0i, -54989i, u_input.a), vec2<u32>(4294967295u, u_input.b))).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, false), func_1(_wgslsmith_f_op_f32(439f * -841f))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), !vec2<bool>(false, any(vec2<bool>(false, true)))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + 1153f)))), Struct_1(vec4<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), 73339u << (u_input.b % 32u), ~53463u, 28151u), max(-vec4<i32>(u_input.a, -2147483647i, -15043i, -22724i), select(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, 21020i, u_input.a), true)), vec2<u32>(1u, 1u)), Struct_1(vec4<u32>(4294967295u, u_input.b, 1u, 0u), vec4<i32>(-u_input.a, ~2147483647i, 1i, _wgslsmith_mult_i32(-2147483647i, u_input.a)), vec2<u32>(29510u, u_input.b) | ~vec2<u32>(4294967295u, 55375u)), Struct_1(~abs(vec4<u32>(4294967295u, 46259u, 1u, 1u)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-18589i, -39868i, u_input.a, u_input.a), firstTrailingBit(vec4<i32>(-2147483647i, 8337i, -34839i, 50802i))), countOneBits(vec2<u32>(1u, 4294967295u)))).xy);
    var var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(func_2(vec2<f32>(888f, 1784f)), ~u_input.b >> (max(1u, u_input.b) % 32u))), 18u)];
    var var_2 = min(var_1.a, abs(_wgslsmith_sub_vec4_u32(reverseBits(~var_1.a), var_1.a)));
    var_0 = func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-253f, 1000f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(3058f)) * _wgslsmith_f_op_f32(round(-1000f))))))));
    var_0 = vec2<bool>(var_0.x, false);
    let var_3 = global0[_wgslsmith_index_u32(~4294967295u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-u_input.a << (_wgslsmith_mult_u32(countOneBits(var_3.a.x), var_1.c.x) % 32u)), max(max(~(~var_1.a), max(var_3.a, var_3.a)), select(_wgslsmith_div_vec4_u32(select(var_1.a, var_1.a, var_0.x), var_3.a >> (var_1.a % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(abs(var_3.a), _wgslsmith_mult_vec4_u32(var_3.a, vec4<u32>(var_2.x, 87881u, 4294967295u, var_1.c.x))), select(vec4<bool>(var_0.x, true, false, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, false), func_3(861f, Struct_1(vec4<u32>(var_1.a.x, 20022u, 106000u, 15670u), vec4<i32>(-1i, -18644i, var_1.b.x, var_1.b.x), var_1.c), global0[_wgslsmith_index_u32(var_1.a.x, 18u)], Struct_1(var_1.a, vec4<i32>(var_1.b.x, u_input.a, var_1.b.x, -10299i), var_1.a.ww))))), reverseBits(vec2<i32>(~(~var_3.b.x), -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -388f));
}

