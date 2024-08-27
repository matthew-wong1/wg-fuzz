struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(max(0u, 43703u), 21u)];
    global0 = array<bool, 21>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(arg_0.a)), !vec3<bool>(true, !any(vec4<bool>(true, arg_0.b.x, arg_0.d.x, true)), global0[_wgslsmith_index_u32(~1u, 21u)]), arg_0.c, arg_0.d);
    let var_1 = 263f;
    global0 = array<bool, 21>();
    return var_0;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = 1i;
    let var_1 = any(vec4<bool>(firstTrailingBit(u_input.a) == _wgslsmith_sub_u32(~0u, ~0u), !global0[_wgslsmith_index_u32(u_input.a, 21u)] & global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(0u, 8131u), u_input.a), 21u)], arg_2.x, true));
    global0 = array<bool, 21>();
    global1 = !all(select(vec4<bool>(false, any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 21u)], false)), true, all(vec3<bool>(true, false, false))), !vec4<bool>(false, true, var_1, true), !(!vec4<bool>(var_1, false, arg_2.x, false))));
    let var_2 = -144f;
    return select(arg_2.xy, vec2<bool>(false, arg_2.x && var_1), vec2<bool>(all(!arg_2), global0[_wgslsmith_index_u32(select(reverseBits(u_input.a), ~arg_1, true), 21u)]));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, select(arg_0.d, !arg_0.d, vec3<bool>(false, arg_3, any(arg_0.d))), min(arg_0.c, firstLeadingBit(vec4<u32>(0u, arg_2.x, ~56395u, 13261u))), !arg_0.b);
    global1 = !((any(vec4<bool>(true, false, arg_3, false)) || !(!arg_0.d.x)) & all(vec4<bool>(false, true, all(arg_0.d.xz), var_0.a.x < 714f)));
    global1 = false;
    return func_2(arg_0);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> vec3<f32> {
    var var_0 = 38768u;
    var var_1 = arg_1;
    var var_2 = func_4(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a - vec3<f32>(1973f, var_1.a.x, var_1.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-955f, arg_2.x, 586f))), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.c.x, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(68231u, var_1.c.x, 32301u), var_1.c.wyz), 21u)], arg_2.x <= -1038f), abs(max(vec4<u32>(65282u, 39474u, 4294967295u, 70000u), vec4<u32>(arg_0.x, 703u, 17752u, arg_0.x))), vec3<bool>(var_1.d.x, true, arg_2.x > var_1.a.x))), 1i, vec2<u32>(select(_wgslsmith_add_u32(arg_3, arg_1.c.x << (arg_1.c.x % 32u)), ~_wgslsmith_clamp_u32(arg_0.x, arg_3, var_1.c.x), true), arg_1.c.x), !all(func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-64123i, -16023i, -82391i), vec3<i32>(-10494i, -69082i, -54101i)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, var_1.c.x), var_1.c.yw), var_1.b)));
    var var_3 = Struct_1(arg_1.a, !(!arg_1.b), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3, 1u, 0u, u_input.a) | ~vec4<u32>(2355u, var_2.c.x, arg_1.c.x, 0u), vec4<u32>(u_input.a, 4294967295u, var_1.c.x, u_input.a) >> (vec4<u32>(62808u, var_1.c.x, arg_1.c.x, 1u) % vec4<u32>(32u)), vec4<u32>(1u, _wgslsmith_div_u32(0u, u_input.a), func_2(Struct_1(var_2.a, vec3<bool>(false, var_2.d.x, var_1.d.x), var_2.c, var_2.b)).c.x, firstLeadingBit(var_2.c.x))), abs(arg_1.c) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3, arg_3, 34793u, arg_3), vec4<u32>(135591u, 45154u, 13444u, 1u)) % vec4<u32>(32u))), func_4(arg_1, -27097i, ~vec2<u32>(0u << (arg_1.c.x % 32u), firstLeadingBit(4294967295u)), var_1.d.x).b);
    var var_4 = min(reverseBits(min(vec4<i32>(12777i, -20122i, -2147483647i, 0i), vec4<i32>(0i, -1i, 49488i, 14623i) << (vec4<u32>(4047u, 4294967295u, arg_3, u_input.a) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(1012i, 64352i, 25580i, -2147483647i), vec4<i32>(1i, 2147483647i, -1i, -16297i)), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)))) | vec4<i32>(-min(_wgslsmith_sub_i32(0i, 12012i), 1i), _wgslsmith_sub_i32(~(-1i), countOneBits(~(-7477i))), _wgslsmith_add_i32(33950i, reverseBits(countOneBits(-1i))), select(1i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(2147483647i, -1i, 48386i), vec3<i32>(28337i, 1i, -2035i)), vec3<i32>(2147483647i, 1i, -10931i)), true));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, var_3.a.x, _wgslsmith_f_op_f32(sign(arg_1.a.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2722f, arg_1.a.x, var_1.a.x), arg_1.a, false)) - var_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(abs(u_input.a), min(1u, ~u_input.a ^ 1u), u_input.a);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(var_0.zx, Struct_1(vec3<f32>(-439f, 1890f, -979f), vec3<bool>(false, global0[_wgslsmith_index_u32(34534u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<u32>(var_0.x, 1u, var_0.x, 52138u), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])), vec2<f32>(-1000f, -1176f), var_0.x)) - vec3<f32>(-745f, -700f, -302f)) + _wgslsmith_f_op_vec3_f32(-func_2(Struct_1(vec3<f32>(-471f, -270f, 190f), vec3<bool>(global0[_wgslsmith_index_u32(5082u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(63089u, 21u)]), vec4<u32>(1u, u_input.a, var_0.x, var_0.x), vec3<bool>(global0[_wgslsmith_index_u32(70977u, 21u)], true, false))).a)))), vec3<bool>(global0[_wgslsmith_index_u32(countOneBits(~9348u), 21u)] || (any(vec4<bool>(true, global0[_wgslsmith_index_u32(18759u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(22703u, 21u)])) || true), !(!(true | global0[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1476f - -1996f) + _wgslsmith_f_op_f32(-200f - -1139f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-744f)))), _wgslsmith_sub_vec4_u32(reverseBits(min(vec4<u32>(37806u, 4572u, 33043u, u_input.a), vec4<u32>(var_0.x, 3792u, u_input.a, 1u))) & _wgslsmith_mult_vec4_u32(func_4(Struct_1(vec3<f32>(380f, 566f, 670f), vec3<bool>(global0[_wgslsmith_index_u32(57422u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(30536u, 21u)]), vec4<u32>(17392u, u_input.a, u_input.a, u_input.a), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(var_0.x, 21u)])), -2147483647i, var_0.xz, global0[_wgslsmith_index_u32(29908u, 21u)]).c, vec4<u32>(u_input.a, var_0.x, 0u, u_input.a) & vec4<u32>(u_input.a, 4294967295u, 38673u, 16742u)), func_4(func_4(func_4(Struct_1(vec3<f32>(-1377f, 658f, 1911f), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 21u)], true), vec4<u32>(u_input.a, var_0.x, 1u, var_0.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], true, global0[_wgslsmith_index_u32(12805u, 21u)])), 0i, vec2<u32>(var_0.x, 22832u), global0[_wgslsmith_index_u32(27799u, 21u)]), select(-1490i, 1i, true), ~vec2<u32>(var_0.x, 7126u), true), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 64200i, -1i), vec3<i32>(1i, 1i, 1i)), var_0.yx, all(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 21u)]))).c), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a, 1u), 21u)], true), vec3<bool>(true, any(vec3<bool>(global0[_wgslsmith_index_u32(16643u, 21u)], true, global0[_wgslsmith_index_u32(0u, 21u)])), func_2(Struct_1(vec3<f32>(1421f, 1364f, 399f), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<u32>(0u, 47217u, 1u, 52328u), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], false, global0[_wgslsmith_index_u32(u_input.a, 21u)]))).d.x | false), vec3<bool>(func_2(Struct_1(vec3<f32>(411f, 852f, -354f), vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], true), vec4<u32>(80734u, u_input.a, 5837u, u_input.a), vec3<bool>(global0[_wgslsmith_index_u32(28443u, 21u)], global0[_wgslsmith_index_u32(32814u, 21u)], false))).b.x, var_0.x > var_0.x, global0[_wgslsmith_index_u32(func_4(func_4(Struct_1(vec3<f32>(332f, -558f, 2922f), vec3<bool>(true, false, global0[_wgslsmith_index_u32(26094u, 21u)]), vec4<u32>(u_input.a, var_0.x, var_0.x, u_input.a), vec3<bool>(true, true, false)), 74417i, var_0.zz, true), max(-2147483647i, -1i), ~var_0.yx, all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 21u)], global0[_wgslsmith_index_u32(34410u, 21u)]))).c.x, 21u)])));
    var var_2 = !var_1.b.x;
    var_2 = (-5473i <= _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-1i, 0i)), select(max(vec2<i32>(-42871i, -2147483647i), vec2<i32>(-4255i, -35747i)), ~vec2<i32>(0i, 7308i), select(var_1.b.zz, vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(5521u, 21u)], global0[_wgslsmith_index_u32(5454u, 21u)]))))) & global0[_wgslsmith_index_u32(u_input.a, 21u)];
    var var_3 = vec4<i32>(firstLeadingBit(-max(52501i, 1i)), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(1i, 1i, 1i)), _wgslsmith_mult_vec3_i32(-select(vec3<i32>(8024i, 26351i, -431i), vec3<i32>(-1i, 2147483647i, 1i), var_1.b), vec3<i32>(~(-81i), abs(2147483647i), ~2147483647i))), 32080i, min(-_wgslsmith_sub_i32(-22303i, ~30217i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(1i, -1i, 30474i, 0i)), -vec4<i32>(12508i, 2147483647i, -1i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(14936i, 41177i, 12447i, 2147483647i), vec4<i32>(16672i, 1i, -1i, 1i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(~(-1i)), var_3.x), min(var_3.x, -1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, var_1.a.x, 1569f)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_1.a.x) * _wgslsmith_f_op_f32(1847f + var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x - 251f), var_1.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(730f - var_1.a.x))))), ~reverseBits(vec4<u32>(6351u, ~u_input.a, ~var_1.c.x, var_1.c.x)));
}

