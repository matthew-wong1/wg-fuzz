struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<u32>(53809u, 15625u, 82001u), 2147483647i, 7243i, vec4<u32>(0u, 7265u, 101004u, 4294967295u)), Struct_1(vec3<u32>(27717u, 4294967295u, 1u), 0i, 2147483647i, vec4<u32>(0u, 11683u, 16661u, 35626u)), Struct_1(vec3<u32>(40464u, 34877u, 4294967295u), 6713i, 2147483647i, vec4<u32>(0u, 1u, 104995u, 11567u)), Struct_1(vec3<u32>(7181u, 0u, 69548u), 0i, 2147483647i, vec4<u32>(1u, 0u, 53963u, 1u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 5836u), i32(-2147483648), 1i, vec4<u32>(63609u, 0u, 37075u, 3481u)), Struct_1(vec3<u32>(31191u, 16554u, 27952u), -1i, 0i, vec4<u32>(23553u, 1977u, 4294967295u, 0u)), Struct_1(vec3<u32>(35494u, 35667u, 20599u), -40160i, -1i, vec4<u32>(63597u, 0u, 53831u, 64163u)), Struct_1(vec3<u32>(17274u, 74934u, 39036u), 2147483647i, 2147483647i, vec4<u32>(0u, 1u, 4294967295u, 9799u)), Struct_1(vec3<u32>(47215u, 1u, 1u), 16937i, -25429i, vec4<u32>(4950u, 1u, 46703u, 0u)), Struct_1(vec3<u32>(0u, 56616u, 4294967295u), 8888i, 12282i, vec4<u32>(34538u, 14853u, 5314u, 13847u)), Struct_1(vec3<u32>(19466u, 50950u, 1u), 28212i, 15817i, vec4<u32>(37646u, 1u, 1u, 0u)), Struct_1(vec3<u32>(72562u, 32820u, 70911u), 39795i, -3512i, vec4<u32>(58562u, 41807u, 30071u, 47353u)), Struct_1(vec3<u32>(11869u, 1u, 0u), 2147483647i, i32(-2147483648), vec4<u32>(36907u, 0u, 4294967295u, 10097u)), Struct_1(vec3<u32>(1u, 1u, 20682u), 1065i, 17420i, vec4<u32>(4294967295u, 60814u, 4294967295u, 0u)), Struct_1(vec3<u32>(36547u, 0u, 0u), 1i, 1i, vec4<u32>(0u, 1u, 31846u, 0u)), Struct_1(vec3<u32>(1u, 22383u, 19429u), 0i, 0i, vec4<u32>(4294967295u, 35345u, 0u, 40133u)), Struct_1(vec3<u32>(59276u, 1u, 14990u), 0i, 2147483647i, vec4<u32>(70898u, 48752u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 4294967295u, 13598u), 1i, 0i, vec4<u32>(14345u, 49830u, 4294967295u, 19235u)), Struct_1(vec3<u32>(47577u, 4294967295u, 4294967295u), 14467i, -64132i, vec4<u32>(1u, 0u, 4495u, 4294967295u)), Struct_1(vec3<u32>(19687u, 4294967295u, 4294967295u), 2147483647i, 28542i, vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), Struct_1(vec3<u32>(39757u, 10889u, 90358u), 24883i, 1i, vec4<u32>(75390u, 27553u, 53163u, 0u)), Struct_1(vec3<u32>(4294967295u, 10177u, 92924u), -1i, i32(-2147483648), vec4<u32>(0u, 10756u, 4294967295u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u), -68820i, -1108i, vec4<u32>(11795u, 77435u, 4294967295u, 53221u)), Struct_1(vec3<u32>(1u, 18243u, 87839u), 6329i, i32(-2147483648), vec4<u32>(15430u, 0u, 4294967295u, 39310u)), Struct_1(vec3<u32>(0u, 47321u, 67355u), 0i, -7302i, vec4<u32>(0u, 0u, 0u, 0u)), Struct_1(vec3<u32>(2284u, 14799u, 1u), 1i, 2147483647i, vec4<u32>(22950u, 18657u, 0u, 28857u)), Struct_1(vec3<u32>(27258u, 40346u, 4294967295u), -30412i, -42175i, vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), Struct_1(vec3<u32>(7069u, 4294967295u, 9509u), -27280i, -52075i, vec4<u32>(0u, 1u, 32022u, 30216u)), Struct_1(vec3<u32>(4294967295u, 2875u, 13921u), 1i, i32(-2147483648), vec4<u32>(0u, 1862u, 1u, 11480u)), Struct_1(vec3<u32>(4527u, 0u, 24629u), -6227i, 12298i, vec4<u32>(0u, 1u, 4294967295u, 55690u)), Struct_1(vec3<u32>(18963u, 0u, 4294967295u), 35371i, -45377i, vec4<u32>(10300u, 50917u, 1u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 53069u, 1u), 397i, -9521i, vec4<u32>(46465u, 0u, 6866u, 94119u)));

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec2<i32>(i32(-2147483648), -15321i)), Struct_3(vec2<i32>(-17206i, 3093i)), Struct_3(vec2<i32>(49454i, -1i)), Struct_3(vec2<i32>(-7863i, i32(-2147483648))), Struct_3(vec2<i32>(-10603i, -1i)), Struct_3(vec2<i32>(i32(-2147483648), -13542i)), Struct_3(vec2<i32>(-1i, 3806i)), Struct_3(vec2<i32>(i32(-2147483648), 20054i)), Struct_3(vec2<i32>(i32(-2147483648), -55564i)), Struct_3(vec2<i32>(2147483647i, 0i)), Struct_3(vec2<i32>(1i, 2147483647i)), Struct_3(vec2<i32>(0i, -1i)), Struct_3(vec2<i32>(-85763i, 94774i)), Struct_3(vec2<i32>(-1i, 5348i)), Struct_3(vec2<i32>(-16752i, -1i)), Struct_3(vec2<i32>(-15371i, -59206i)), Struct_3(vec2<i32>(1i, 2147483647i)), Struct_3(vec2<i32>(26304i, -40i)), Struct_3(vec2<i32>(-1238i, 1i)), Struct_3(vec2<i32>(1i, 2147483647i)));

var<private> global2: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0))), arg_0, 439f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1861f, arg_0, arg_0) * vec3<f32>(809f, 1000f, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, arg_0, 1013f)))))));
    let var_1 = global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~97228u, max(30319u, 34228u)) >> (u_input.a.x % 32u)), 20u)];
    var var_2 = u_input.c;
    global0 = array<Struct_1, 32>();
    return !vec3<bool>(false, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(-488f, -1208f)) != -723f, !all(vec3<bool>(true, true, true)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f - _wgslsmith_div_f32(-128f, 225f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(310f, _wgslsmith_div_f32(_wgslsmith_div_f32(-382f, 1000f), _wgslsmith_f_op_f32(ceil(-549f))))) + 215f));
    let var_1 = 131f;
    let var_2 = var_0.x;
    let var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(arg_1), 20u)];
    global0 = array<Struct_1, 32>();
    return Struct_1(_wgslsmith_clamp_vec3_u32(u_input.a, min(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(60043u, 39824u, 30671u)) & vec3<u32>(u_input.b, 1u, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 106108u, u_input.a.x) >> (u_input.a % vec3<u32>(32u)), reverseBits(u_input.a))), vec3<u32>(1u, arg_1, 47830u)), ~((i32(-1i) * -11315i) | _wgslsmith_clamp_i32(0i, 42017i, i32(-1i) * -2147483647i)), ~61051i, select(~countOneBits(reverseBits(vec4<u32>(arg_1, 21731u, 20361u, 0u))), max(abs(~vec4<u32>(0u, 12923u, arg_1, u_input.b)), max(reverseBits(vec4<u32>(1u, u_input.b, u_input.b, 0u)), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, arg_1))), select(vec4<bool>(select(true, false, false), arg_0.x, arg_0.x, true), !(!vec4<bool>(true, arg_0.x, arg_0.x, true)), !(!arg_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(arg_2 | arg_0.d.x, ~2306u)) ^ u_input.b, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~1u, ~14860u), func_3(vec3<bool>(true, true, true), ~1u).a.x), ~4294967295u, ~_wgslsmith_dot_vec2_u32(arg_0.a.xz | arg_0.a.zz, reverseBits(vec2<u32>(0u, 0u)))), u_input.a.x, u_input.b);
    global0 = array<Struct_1, 32>();
    global1 = array<Struct_3, 20>();
    let var_1 = Struct_2(Struct_1(arg_0.a, u_input.c, firstTrailingBit(select(_wgslsmith_div_i32(u_input.c, 1i), 1i, true)), firstTrailingBit(arg_0.d)), func_3(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, false)), 28181u), reverseBits(0u));
    var var_2 = Struct_3(-(min(vec2<i32>(-1i, -23646i), vec2<i32>(var_1.b.c, arg_0.b)) >> ((u_input.a.zz | var_0.yz) % vec2<u32>(32u))) >> (vec2<u32>(1u, ~27579u) % vec2<u32>(32u)));
    return var_1;
}

fn func_1() -> vec4<u32> {
    var var_0 = func_4(func_3(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), !func_2(631f)), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(847f, -1067f)))), _wgslsmith_f_op_f32(floor(-554f)), !(u_input.c != 13513i)))), _wgslsmith_div_u32(u_input.b, 38741u));
    var var_1 = var_0.b.c;
    var var_2 = global1[_wgslsmith_index_u32(0u >> (select(var_0.b.a.x, ~_wgslsmith_clamp_u32(var_0.a.d.x, 4565u, 0u) ^ var_0.c, any(vec3<bool>(true, true, true))) % 32u), 20u)];
    var var_3 = func_4(func_3(vec3<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, true)) && true, true), 8771u), 1f, var_0.b.a.x);
    let var_4 = _wgslsmith_div_f32(-617f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-231f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1225f)), _wgslsmith_f_op_f32(min(-870f, 1186f)))), _wgslsmith_f_op_f32(f32(-1f) * -1064f))))));
    return var_0.b.d;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(~(~28896u), 32u)], Struct_1(~u_input.a, 2147483647i, arg_0.a.x, ~(~(~vec4<u32>(9566u, u_input.a.x, u_input.b, 31333u)))), u_input.b);
    let var_1 = vec2<bool>(arg_2.x && (4294967295u <= u_input.b), all(vec2<bool>(_wgslsmith_f_op_f32(trunc(-1275f)) >= _wgslsmith_f_op_f32(select(-351f, 1000f, true)), arg_2.x & !arg_2.x)));
    let var_2 = Struct_1(min(vec3<u32>(var_0.b.d.x, firstLeadingBit(u_input.a.x), 75836u), var_0.b.d.wzy), ~max(select(var_0.a.b, u_input.c, !arg_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 51049i) | vec3<i32>(-13271i, 22429i, arg_0.a.x), ~vec3<i32>(u_input.c, 2147483647i, var_0.b.b))), arg_1.a.x, vec4<u32>(~(~(0u & var_0.b.a.x)), ~(u_input.b ^ 8253u) ^ var_0.a.a.x, var_0.a.d.x << ((firstTrailingBit(40250u) << (~1u % 32u)) % 32u), 4294967295u));
    var var_3 = min(vec3<i32>(-67608i, 3876i, -2147483647i), -vec3<i32>(arg_1.a.x, u_input.c, _wgslsmith_div_i32(-2073i, -1i)) ^ (vec3<i32>(-1i) * -vec3<i32>(-7858i, var_2.c, 2147483647i)));
    global1 = array<Struct_3, 20>();
    return func_4(func_3(vec3<bool>(true, true, arg_3.x), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f)), ~_wgslsmith_mod_u32(func_1().x | abs(62603u), _wgslsmith_add_u32(65092u, var_0.c)));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    global1 = array<Struct_3, 20>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(545f, arg_2.x)), arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f)), true != all(vec4<bool>(false, false, true, false)))));
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(1u ^ (u_input.a.x >> (38529u % 32u)), u_input.b)), 20u)];
    global1 = array<Struct_3, 20>();
    var var_1 = func_3(func_2(-1000f), firstTrailingBit(u_input.a.x));
    return func_4(Struct_1(u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, -11556i, arg_1.a.c), vec3<i32>(-36456i, var_0.a.x, var_1.c)), firstLeadingBit(vec3<i32>(var_1.c, u_input.c, 1i))), -reverseBits(-2147483647i)), firstLeadingBit(firstTrailingBit(var_0.a.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.x, arg_1.b.d.x, u_input.b, var_1.a.x), vec4<u32>(arg_1.b.d.x, 56012u, var_1.a.x, 43385u)), ~abs(var_1.d))), 1f, _wgslsmith_dot_vec2_u32(~u_input.a.yx, u_input.a.xy)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    let var_0 = func_6(~(~firstTrailingBit(reverseBits(u_input.a))), func_5(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 29841u), func_1()) & 1u, 20u)], Struct_3(abs(vec2<i32>(u_input.c, u_input.c)) & vec2<i32>(u_input.c, u_input.c)), !select(vec2<bool>(true, true), func_2(714f).xy, true), select(vec4<bool>(select(true, true, false), any(vec4<bool>(false, false, false, true)), true, true), vec4<bool>(false, 64337i <= u_input.c, true, false), vec4<bool>(all(vec3<bool>(false, false, false)), false, true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1392f + -584f) * -589f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(992f, 1128f) + 1f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(ceil(-605f))))));
    global2 = 598f;
    global1 = array<Struct_3, 20>();
    global2 = _wgslsmith_f_op_f32(-284f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(445f))))), 1003f, true)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(233f, 1668f))), max(u_input.b, 19997u)).a.d);
}

