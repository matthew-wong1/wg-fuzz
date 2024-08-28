struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(Struct_3(Struct_1(495f, vec4<i32>(44137i, 61237i, 0i, 54452i), vec4<u32>(983u, 36353u, 4294967295u, 0u), -19225i, vec4<i32>(-1i, 16260i, -61980i, -1i)), Struct_1(-215f, vec4<i32>(68924i, -24047i, -1i, 2147483647i), vec4<u32>(1u, 21237u, 120577u, 0u), 2147483647i, vec4<i32>(i32(-2147483648), -1203i, i32(-2147483648), i32(-2147483648)))), true), Struct_4(Struct_3(Struct_1(327f, vec4<i32>(i32(-2147483648), 12825i, 18191i, i32(-2147483648)), vec4<u32>(0u, 0u, 1u, 1u), -1165i, vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_1(-1943f, vec4<i32>(11610i, 2147483647i, -9372i, 2147483647i), vec4<u32>(1u, 8242u, 0u, 1u), -39754i, vec4<i32>(-1i, 37624i, 30415i, 107475i))), false));

var<private> global1: i32;

var<private> global2: u32;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(-1023f, vec4<i32>(-1i, 9133i, -11028i, 43726i), vec4<u32>(1u, 4294967295u, 4294967295u, 37991u), -1112i, vec4<i32>(-22319i, 56241i, 2147483647i, -1i)), Struct_1(-1000f, vec4<i32>(6353i, -14233i, 5224i, -1i), vec4<u32>(4294967295u, 1u, 1u, 0u), -23872i, vec4<i32>(1i, -10298i, 30227i, i32(-2147483648)))), Struct_2(Struct_1(-452f, vec4<i32>(-81483i, -3454i, 49602i, i32(-2147483648)), vec4<u32>(9663u, 10221u, 38442u, 4294967295u), 33749i, vec4<i32>(-38350i, 2147483647i, 2147483647i, -89i)), Struct_1(-525f, vec4<i32>(-2037i, -1i, i32(-2147483648), i32(-2147483648)), vec4<u32>(4294967295u, 76450u, 4480u, 31086u), -8i, vec4<i32>(2147483647i, 2534i, 2147483647i, 1i))), Struct_2(Struct_1(1925f, vec4<i32>(47312i, -34992i, i32(-2147483648), 1i), vec4<u32>(0u, 21120u, 0u, 0u), -1i, vec4<i32>(-38298i, 1i, -1i, 14962i)), Struct_1(-181f, vec4<i32>(1i, -16010i, -39601i, 2147483647i), vec4<u32>(30498u, 6630u, 4294967295u, 0u), -1i, vec4<i32>(-44633i, -18469i, -67404i, 46777i))), Struct_2(Struct_1(-401f, vec4<i32>(51066i, -40478i, 0i, -1i), vec4<u32>(29416u, 4294967295u, 72291u, 4294967295u), 0i, vec4<i32>(36642i, i32(-2147483648), -1i, 2147483647i)), Struct_1(-647f, vec4<i32>(16402i, 0i, -15404i, 1i), vec4<u32>(1u, 1u, 71415u, 84465u), i32(-2147483648), vec4<i32>(-55611i, -1i, 20747i, 0i))), Struct_2(Struct_1(1357f, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -56259i), vec4<u32>(0u, 33936u, 4294967295u, 4294967295u), 6452i, vec4<i32>(-26484i, 40640i, -27174i, 2147483647i)), Struct_1(134f, vec4<i32>(29672i, 1i, 41550i, -16661i), vec4<u32>(0u, 43336u, 13018u, 1u), 40396i, vec4<i32>(i32(-2147483648), 2147483647i, -29110i, -40196i))), Struct_2(Struct_1(-1383f, vec4<i32>(-8736i, -56026i, 6166i, i32(-2147483648)), vec4<u32>(50756u, 4294967295u, 0u, 52704u), 2147483647i, vec4<i32>(2147483647i, -1i, i32(-2147483648), i32(-2147483648))), Struct_1(-148f, vec4<i32>(-26636i, -17322i, -60115i, 14591i), vec4<u32>(4294967295u, 10568u, 10584u, 1284u), -1i, vec4<i32>(1i, -8556i, 0i, 23150i))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1782f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-414f * 2101f) + _wgslsmith_f_op_f32(-985f - 1105f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -582f))));
    let var_1 = vec2<u32>(~(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)) | (53913u >> (max(60762u, u_input.a.x) % 32u))), _wgslsmith_add_u32(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 43488u, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(12012u, 37024u, u_input.a.x)), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 24242u, 47134u)), vec3<u32>(u_input.a.x, u_input.a.x, 64389u), ~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-882f - -1224f), _wgslsmith_f_op_f32(-108f - -1149f)))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b)), max(-1i, u_input.b), ~u_input.b, abs(u_input.b)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 3423u, 52020u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, var_1.x)) % vec4<u32>(32u)), ~(vec4<u32>(u_input.a.x, var_1.x, var_1.x, 6467u) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_1.x), vec4<u32>(7887u, 1014u, 0u, 40060u))), 1i, ~reverseBits(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b)) >> (vec4<u32>(158u, _wgslsmith_sub_u32(u_input.a.x, 52170u), var_1.x, 1u) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(abs(-369f)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, u_input.b, -60193i, 20244i), ~vec4<i32>(u_input.b, u_input.b, 2147483647i, -23038i)), vec4<i32>(u_input.b, reverseBits(u_input.b), ~u_input.b, u_input.b), ~reverseBits(vec4<i32>(-2147483647i, 33869i, 33464i, u_input.b))), ~(~(vec4<u32>(u_input.a.x, 16643u, var_1.x, 32227u) & vec4<u32>(u_input.a.x, var_1.x, 10826u, 19695u))), 35856i, -vec4<i32>(2147483647i, u_input.b, u_input.b, -32217i) << (vec4<u32>(~u_input.a.x, firstLeadingBit(u_input.a.x), 1u, 3863u) % vec4<u32>(32u))));
    let var_3 = Struct_2(var_2.a, var_2.b);
    let var_4 = var_3.a.a;
    return true;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_1(-165f, select(vec4<i32>(i32(-1i) * -2147483647i, arg_0.a.a.d, reverseBits(u_input.b), arg_3.a.b.e.x), vec4<i32>(-_wgslsmith_div_i32(arg_0.a.a.b.x, -1i), _wgslsmith_dot_vec2_i32(-arg_2.a.b.e.xw, abs(arg_3.a.a.e.yy)), firstLeadingBit(1i), 1i), vec4<bool>(func_3() & all(vec4<bool>(true, false, arg_2.b, false)), false, arg_3.b, arg_3.b)), max(_wgslsmith_mult_vec4_u32(~min(arg_0.a.b.c, arg_2.a.b.c), ~select(vec4<u32>(arg_2.a.b.c.x, u_input.a.x, arg_2.a.b.c.x, 26591u), arg_0.a.a.c, arg_2.b)), ~abs(~arg_2.a.a.c)), -2147483647i, select(select(min(vec4<i32>(13737i, 2147483647i, -2147483647i, arg_0.a.a.d), arg_3.a.a.b) ^ (vec4<i32>(-895i, arg_2.a.b.e.x, arg_3.a.a.b.x, arg_3.a.b.d) & vec4<i32>(arg_2.a.b.b.x, 46990i, arg_2.a.a.d, 14654i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.a.a.d, arg_3.a.b.d, arg_2.a.b.b.x, 28140i), arg_2.a.b.b), _wgslsmith_f_op_f32(-arg_3.a.b.a) != _wgslsmith_f_op_f32(abs(-1118f))), vec4<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(24890i, -4420i, u_input.b, u_input.b), arg_2.a.a.e), abs(arg_0.a.a.b.x), !arg_2.b), arg_2.a.a.b.x, (u_input.b & u_input.b) | _wgslsmith_dot_vec2_i32(vec2<i32>(-47902i, -10153i), arg_2.a.b.e.xx), ~u_input.b), select(select(!vec4<bool>(arg_0.b, arg_0.b, arg_2.b, true), vec4<bool>(arg_3.b, arg_0.b, false, arg_0.b), any(vec3<bool>(arg_3.b, false, arg_2.b))), !select(vec4<bool>(true, arg_3.b, true, arg_0.b), vec4<bool>(arg_2.b, arg_0.b, arg_2.b, true), vec4<bool>(false, false, false, false)), any(select(vec4<bool>(false, true, arg_2.b, true), vec4<bool>(arg_3.b, arg_3.b, false, arg_3.b), true)))));
    var var_1 = select(vec2<bool>(arg_3.b, select(!arg_3.b, _wgslsmith_f_op_f32(var_0.a + arg_3.a.b.a) > _wgslsmith_f_op_f32(f32(-1f) * -2585f), !select(true, false, arg_2.b))), vec2<bool>(true, true), true);
    let var_2 = -(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.x, u_input.b), vec2<i32>(var_0.e.x, 32669i)));
    let var_3 = select(!select(select(select(vec3<bool>(false, arg_2.b, arg_0.b), vec3<bool>(arg_3.b, true, arg_0.b), vec3<bool>(arg_2.b, false, arg_3.b)), !vec3<bool>(var_1.x, true, true), select(vec3<bool>(false, var_1.x, true), vec3<bool>(arg_2.b, false, arg_2.b), vec3<bool>(var_1.x, arg_0.b, var_1.x))), select(select(vec3<bool>(arg_2.b, true, true), vec3<bool>(true, arg_3.b, false), false), vec3<bool>(var_1.x, arg_0.b, arg_0.b), vec3<bool>(false, false, false)), arg_3.b), vec3<bool>(_wgslsmith_f_op_f32(round(830f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) - -227f), false, true), true && select(arg_2.b, !select(arg_0.b, false, true), false));
    let var_4 = arg_3.a.a.c.xz;
    return arg_0.a.a;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3) -> bool {
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    var var_0 = arg_2;
    var var_1 = Struct_1(arg_0, var_0.a.b, (vec4<u32>(u_input.a.x, ~arg_2.b.c.x, u_input.a.x, reverseBits(arg_2.a.c.x)) & var_0.a.c) << (arg_2.b.c % vec4<u32>(32u)), min(u_input.b, max(var_0.a.d, _wgslsmith_sub_i32(var_0.a.e.x, -1i))), -vec4<i32>(firstTrailingBit(9765i) >> (arg_2.b.c.x % 32u), reverseBits(var_0.a.d), var_0.b.e.x, _wgslsmith_add_i32(-2220i, u_input.b) << (arg_2.a.c.x % 32u)));
    var_1 = arg_2.b;
    return false;
}

fn func_1() -> Struct_2 {
    let var_0 = select(vec3<bool>(any(vec2<bool>(all(vec2<bool>(false, false)), true)), true, func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(201f, -636f))), vec2<bool>(any(vec3<bool>(false, false, false)), true), Struct_3(func_2(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<u32>(57722u, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(61297u, 2u)]), Struct_1(-815f, vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), vec4<u32>(77048u, 18142u, u_input.a.x, u_input.a.x), 1i, vec4<i32>(u_input.b, -23999i, u_input.b, 0i))))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, true), true), all(vec3<bool>(true, true, true))), select(vec3<bool>(all(vec3<bool>(true, true, false)), true, u_input.a.x <= 57053u), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), true), true), true | !func_3());
    let var_1 = ~(~vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, ~1u), _wgslsmith_clamp_u32(1u, 4833u, max(u_input.a.x, u_input.a.x))));
    global3 = array<Struct_2, 6>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(func_2(Struct_4(Struct_3(Struct_1(1289f, vec4<i32>(1704i, 1i, u_input.b, 1i), vec4<u32>(u_input.a.x, 74473u, var_1.x, u_input.a.x), u_input.b, vec4<i32>(u_input.b, u_input.b, -2147483647i, -41412i)), Struct_1(-1000f, vec4<i32>(u_input.b, u_input.b, u_input.b, -13056i), vec4<u32>(4294967295u, 18233u, 19929u, 41539u), u_input.b, vec4<i32>(u_input.b, u_input.b, 47965i, 0i))), true), vec3<u32>(u_input.a.x, 43869u, u_input.a.x), global0[_wgslsmith_index_u32(var_1.x, 2u)], Struct_4(Struct_3(Struct_1(1496f, vec4<i32>(-41872i, -28504i, 2147483647i, 0i), vec4<u32>(15088u, var_1.x, 45584u, u_input.a.x), u_input.b, vec4<i32>(28482i, u_input.b, u_input.b, u_input.b)), Struct_1(-810f, vec4<i32>(-46631i, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, 1u, 24758u, var_1.x), 1i, vec4<i32>(u_input.b, 1i, u_input.b, u_input.b))), false)).a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -663f) * _wgslsmith_f_op_f32(f32(-1f) * -664f))))) + 822f);
    global1 = ~0i;
    return global3[_wgslsmith_index_u32(~u_input.a.x, 6u)];
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_3 {
    global2 = reverseBits(_wgslsmith_mod_u32(1u, 24269u));
    let var_0 = arg_3.wxy;
    global3 = array<Struct_2, 6>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(507f, -860f) - vec2<f32>(_wgslsmith_div_f32(arg_2.a.a.a, func_1().a.a), -692f)));
    let var_2 = -vec3<i32>(-31i, -firstTrailingBit(32393i), countOneBits(firstLeadingBit(1209i)));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(arg_2, vec3<u32>(arg_2.a.a.c.x, arg_2.a.b.c.x, 13483u), arg_2, arg_2).a) + _wgslsmith_f_op_f32(f32(-1f) * -110f)), vec4<i32>(-(arg_0.b.b.x << (4294967295u % 32u)), 1i, 2147483647i, firstTrailingBit(~arg_2.a.a.e.x)), ~abs(vec4<u32>(64587u, 4294967295u, 28391u, 35389u)) << (func_1().a.c % vec4<u32>(32u)), arg_2.a.b.b.x, vec4<i32>(arg_0.a.b.x ^ ~1i, -abs(arg_2.a.a.e.x), -abs(-23869i), -arg_2.a.a.d)), arg_0.a);
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    var var_0 = 513f;
    return arg_0;
}

fn func_7(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool, arg_3: bool) -> Struct_3 {
    var var_0 = !select(!select(vec2<bool>(false, false), vec2<bool>(arg_2, arg_2), true), !(!(!vec2<bool>(arg_3, false))), vec2<bool>(all(!vec2<bool>(arg_2, arg_2)), -923f > _wgslsmith_f_op_f32(min(1475f, arg_1.x))));
    var var_1 = global3[_wgslsmith_index_u32(40961u, 6u)];
    var var_2 = Struct_2(arg_0.a, arg_0.b);
    let var_3 = vec3<u32>(_wgslsmith_sub_u32(var_1.b.c.x & _wgslsmith_div_u32(0u, abs(47905u)), max(func_2(global0[_wgslsmith_index_u32(var_2.b.c.x, 2u)], ~var_1.a.c.wzw, global0[_wgslsmith_index_u32(~51102u, 2u)], Struct_4(arg_0, arg_3)).c.x, func_5(Struct_2(var_2.a, Struct_1(var_2.b.a, arg_0.b.b, var_1.a.c, 2147483647i, arg_0.b.b)), arg_0.b.c.x | arg_0.a.c.x, Struct_4(Struct_3(Struct_1(211f, var_2.a.e, vec4<u32>(var_2.a.c.x, u_input.a.x, 66280u, 30327u), var_2.a.d, arg_0.a.e), Struct_1(1252f, vec4<i32>(2147483647i, var_1.a.d, -18970i, -54235i), var_1.a.c, 19579i, vec4<i32>(var_2.b.b.x, 47575i, arg_0.b.d, 0i))), true), vec4<bool>(arg_3, true, true, arg_2)).b.c.x)), var_2.a.c.x, arg_0.b.c.x);
    var var_4 = func_5(Struct_2(Struct_1(var_2.b.a, func_5(global3[_wgslsmith_index_u32(reverseBits(1u), 6u)], max(var_3.x, 3344u), Struct_4(Struct_3(Struct_1(1244f, var_2.a.b, vec4<u32>(0u, 25841u, var_1.a.c.x, 4294967295u), 0i, arg_0.b.e), Struct_1(arg_0.a.a, var_2.b.b, arg_0.a.c, 742i, var_2.a.e)), var_0.x), select(vec4<bool>(arg_2, false, arg_3, true), vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_3, false, true, false))).b.e, var_2.b.c, func_2(global0[_wgslsmith_index_u32(~var_1.a.c.x, 2u)], var_2.b.c.xzz, Struct_4(arg_0, false), global0[_wgslsmith_index_u32(~4294967295u, 2u)]).e.x, ~var_1.a.b), arg_0.a), var_3.x, Struct_4(func_6(func_6(Struct_3(Struct_1(arg_0.b.a, vec4<i32>(arg_0.a.e.x, 4948i, var_2.b.d, var_2.b.d), var_1.b.c, -25735i, var_2.a.b), arg_0.a), var_2.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1169f, 1719f)))), !(!(0i <= arg_0.a.e.x))), select(vec4<bool>(!func_3(), select(true, true && arg_2, var_2.b.c.x >= 0u), true, _wgslsmith_f_op_f32(-110f - arg_1.x) != _wgslsmith_div_f32(arg_1.x, var_1.a.a)), !vec4<bool>(arg_2 | false, false, var_2.b.c.x != 0u, var_0.x), vec4<bool>(true, true, true, true)));
    return func_5(global3[_wgslsmith_index_u32(0u, 6u)], var_3.x, Struct_4(Struct_3(func_2(global0[_wgslsmith_index_u32(~arg_0.a.c.x, 2u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(var_4.a.c.x, u_input.a.x, var_3.x), arg_0.a.c.xyw, vec3<u32>(var_1.a.c.x, var_3.x, var_3.x)), global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.b.c.x, var_2.a.c.x), 2u)]), func_5(func_1(), 0u, global0[_wgslsmith_index_u32(74231u, 2u)], vec4<bool>(false, arg_2, var_0.x, false)).a), func_3()), vec4<bool>(var_0.x, reverseBits(~4294967295u) < u_input.a.x, _wgslsmith_sub_u32(~var_3.x, 4294967295u) > ~(~1u), u_input.b <= (i32(-1i) * -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~4294967295u, 6u)];
    let var_1 = func_7(func_6(func_5(func_1(), u_input.a.x, Struct_4(Struct_3(var_0.b, var_0.b), true), vec4<bool>(all(vec4<bool>(false, true, false, true)), false, func_3(), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a - -716f), var_0.a.a)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.a, 1723f), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.a, var_0.b.a), vec2<f32>(464f, var_0.b.a)), vec2<bool>(true, true))), vec2<f32>(_wgslsmith_div_f32(var_0.a.a, var_0.b.a), 1175f))))), func_3(), true);
    global1 = ~u_input.b;
    global2 = var_0.a.c.x;
    var var_2 = select(!((i32(-1i) * -16482i) >= _wgslsmith_div_i32(38523i, u_input.b)), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), !any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.b.c.x, var_0.b.c.x), var_1.b.c.xz, ~func_1().b.c.zz), var_1.b.c.xyw, func_6(func_5(Struct_2(var_0.a, var_1.b), 1u, global0[_wgslsmith_index_u32(func_5(func_1(), 10869u, global0[_wgslsmith_index_u32(func_1().a.c.x, 2u)], vec4<bool>(true, true, true, true)).b.c.x, 2u)], select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true))), -331f).b.c.x, _wgslsmith_sub_vec3_i32(var_1.a.b.xwz | -_wgslsmith_clamp_vec3_i32(var_1.a.b.wyz, var_0.b.b.xww, var_1.b.b.xyx), -var_0.b.e.ywx));
}

