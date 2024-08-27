struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(2838i, Struct_1(4294967295u, vec2<f32>(914f, 604f), vec2<i32>(1i, 58209i), 1u, true), vec2<u32>(0u, 1u)), Struct_2(i32(-2147483648), Struct_1(1u, vec2<f32>(-2460f, 1381f), vec2<i32>(-1i, 68434i), 0u, true), vec2<u32>(15399u, 1u)), Struct_2(-2368i, Struct_1(49374u, vec2<f32>(939f, 1269f), vec2<i32>(0i, 0i), 719u, true), vec2<u32>(1u, 4294967295u)), Struct_2(2147483647i, Struct_1(4294967295u, vec2<f32>(-1222f, 1233f), vec2<i32>(2147483647i, -1i), 0u, true), vec2<u32>(58149u, 87257u)), Struct_2(-19267i, Struct_1(0u, vec2<f32>(-235f, 1748f), vec2<i32>(2147483647i, 2147483647i), 61953u, true), vec2<u32>(1u, 81445u)), Struct_2(1i, Struct_1(0u, vec2<f32>(-1296f, -1053f), vec2<i32>(1i, -1i), 43063u, false), vec2<u32>(25373u, 79389u)), Struct_2(-1i, Struct_1(54900u, vec2<f32>(1957f, -221f), vec2<i32>(1i, 1i), 35198u, false), vec2<u32>(573u, 6348u)), Struct_2(39983i, Struct_1(54598u, vec2<f32>(-1414f, 505f), vec2<i32>(2147483647i, -1i), 1857u, false), vec2<u32>(0u, 66851u)), Struct_2(-1i, Struct_1(74405u, vec2<f32>(-267f, 365f), vec2<i32>(-1i, 11836i), 1u, false), vec2<u32>(6422u, 1u)), Struct_2(28891i, Struct_1(4294967295u, vec2<f32>(146f, -834f), vec2<i32>(-10796i, -44980i), 25169u, false), vec2<u32>(18333u, 0u)), Struct_2(9848i, Struct_1(38369u, vec2<f32>(-1014f, -646f), vec2<i32>(36369i, 13210i), 44775u, false), vec2<u32>(0u, 4294967295u)), Struct_2(8306i, Struct_1(0u, vec2<f32>(389f, -1392f), vec2<i32>(83688i, 2147483647i), 63287u, true), vec2<u32>(11958u, 0u)), Struct_2(2147483647i, Struct_1(13074u, vec2<f32>(657f, -663f), vec2<i32>(-1i, 7195i), 57141u, false), vec2<u32>(14852u, 68642u)), Struct_2(-2078i, Struct_1(72498u, vec2<f32>(302f, -313f), vec2<i32>(-23130i, 53449i), 1u, false), vec2<u32>(1u, 39450u)), Struct_2(-20573i, Struct_1(64516u, vec2<f32>(-271f, 926f), vec2<i32>(-27020i, i32(-2147483648)), 4294967295u, false), vec2<u32>(36424u, 6309u)), Struct_2(-1i, Struct_1(5159u, vec2<f32>(323f, -475f), vec2<i32>(1i, i32(-2147483648)), 1u, false), vec2<u32>(0u, 0u)), Struct_2(-1965i, Struct_1(63148u, vec2<f32>(229f, 1354f), vec2<i32>(-65741i, -37802i), 0u, false), vec2<u32>(1u, 21197u)), Struct_2(-10745i, Struct_1(1u, vec2<f32>(-433f, -1000f), vec2<i32>(30803i, -1i), 0u, false), vec2<u32>(60573u, 0u)), Struct_2(0i, Struct_1(0u, vec2<f32>(702f, 187f), vec2<i32>(37671i, 2147483647i), 27698u, false), vec2<u32>(77005u, 0u)), Struct_2(-1i, Struct_1(1u, vec2<f32>(-1000f, 794f), vec2<i32>(-1809i, 0i), 0u, true), vec2<u32>(40001u, 0u)), Struct_2(2147483647i, Struct_1(21566u, vec2<f32>(625f, -1206f), vec2<i32>(-1i, 19396i), 0u, false), vec2<u32>(0u, 5060u)), Struct_2(-17712i, Struct_1(77105u, vec2<f32>(1025f, 900f), vec2<i32>(10338i, -15403i), 1u, false), vec2<u32>(8009u, 0u)), Struct_2(24476i, Struct_1(7106u, vec2<f32>(654f, -334f), vec2<i32>(2147483647i, 0i), 73333u, true), vec2<u32>(16231u, 13897u)), Struct_2(5169i, Struct_1(36410u, vec2<f32>(-367f, -685f), vec2<i32>(4532i, 0i), 22573u, true), vec2<u32>(81351u, 1u)), Struct_2(i32(-2147483648), Struct_1(41498u, vec2<f32>(-101f, 295f), vec2<i32>(2147483647i, 2147483647i), 13222u, true), vec2<u32>(5651u, 45402u)), Struct_2(3040i, Struct_1(0u, vec2<f32>(-225f, 2360f), vec2<i32>(15487i, 1i), 82185u, false), vec2<u32>(37279u, 23486u)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.b.x, 1u) & _wgslsmith_add_u32(~14378u, u_input.c.x), ~firstLeadingBit(arg_0 ^ 1u), arg_0), _wgslsmith_clamp_u32(~1u, countOneBits(~min(128407u, u_input.b.x)), 1u));
    let var_1 = Struct_3(~reverseBits(4294967295u));
    var var_2 = Struct_3(~_wgslsmith_mult_u32(var_0.x, min(32195u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 72348u, 27460u, var_0.x), vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.b.x)))));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(arg_0 ^ arg_0, firstLeadingBit(~_wgslsmith_add_u32(arg_0, var_2.a))), 4294967295u), 26u)];
    let var_4 = _wgslsmith_f_op_f32(ceil(-1391f));
    return Struct_1(_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(var_0.x, var_3.c.x)) & ~(~1u), var_3.b.b, -(~(u_input.a.zz >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), var_2.a, true);
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = -12938i;
    var var_1 = func_2(_wgslsmith_add_u32(~32449u, 19355u));
    var var_2 = vec4<u32>(abs(27150u), ~var_1.d, ~u_input.b.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(u_input.c.x, 94105u))) << (0u % 32u));
    return global0[_wgslsmith_index_u32(0u, 31u)];
}

fn func_3(arg_0: i32) -> vec4<i32> {
    global0 = array<Struct_3, 31>();
    var var_0 = any(select(vec2<bool>(all(vec4<bool>(global1.x, false, global1.x, false)), any(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), global1.x))), !vec2<bool>(true, select(global1.x, false, true)), !select(!vec2<bool>(global1.x, false), !vec2<bool>(global1.x, false), true)));
    var var_1 = Struct_3(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 1u)), u_input.b.x), ~max(u_input.b.x, 42754u) & _wgslsmith_clamp_u32(u_input.c.x, firstLeadingBit(u_input.b.x), u_input.b.x)));
    let var_2 = vec4<i32>(abs(arg_0 >> (4294967295u % 32u)), 1i, arg_0, _wgslsmith_sub_i32(arg_0, u_input.a.x));
    return -(var_2 >> (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(78326u, u_input.c.x, 85391u, var_1.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.a, 10730u, 55859u), vec4<u32>(u_input.c.x, 1u, 7450u, 0u))) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(min(vec4<u32>(0u, var_1.a, u_input.b.x, 0u), vec4<u32>(var_1.a, u_input.b.x, 4294967295u, var_1.a)), vec4<u32>(46227u, 6525u, var_1.a, 16124u)), ~(~vec4<u32>(1u, var_1.a, var_1.a, u_input.b.x)), select(select(min(vec4<u32>(12509u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(4294967295u, var_1.a, u_input.c.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, var_1.a), global1.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 16011u) & vec4<u32>(5443u, 51132u, u_input.b.x, u_input.b.x), select(select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, true, global1.x, true), true), vec4<bool>(global1.x, true, global1.x, true), true))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(max(-1385f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-718f)) - 306f))))));
    var var_1 = -1000f;
    global2 = array<Struct_2, 26>();
    var var_2 = _wgslsmith_f_op_f32(785f - -483f);
    let var_3 = global2[_wgslsmith_index_u32(4294967295u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, -(u_input.a.x & -1i), -firstLeadingBit(-6731i), countOneBits(~u_input.a.x)) & reverseBits(_wgslsmith_sub_vec4_i32(func_3(var_3.b.c.x), vec4<i32>(var_3.a, var_3.a, u_input.a.x, -38367i))));
}

