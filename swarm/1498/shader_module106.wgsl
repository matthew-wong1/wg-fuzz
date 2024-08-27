struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(0u, 36982u), vec2<u32>(9017u, 24778u), vec2<u32>(7299u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u), vec2<u32>(0u, 36996u), vec2<u32>(35054u, 12397u), vec2<u32>(1u, 38155u), vec2<u32>(64172u, 1u), vec2<u32>(0u, 0u), vec2<u32>(64271u, 4294967295u), vec2<u32>(4294967295u, 8938u), vec2<u32>(1u, 4294967295u), vec2<u32>(72563u, 18323u), vec2<u32>(21020u, 4294967295u), vec2<u32>(18597u, 4424u), vec2<u32>(9231u, 13417u));

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_1(vec4<u32>(31404u, 1u, 40115u, 4294967295u)), true, Struct_2(13643i, vec2<i32>(-22681i, 43265i), Struct_1(vec4<u32>(11874u, 14777u, 0u, 29891u)), -19307i, 52218i), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(3890u, 372u, 9383u, 0u))), Struct_4(Struct_1(vec4<u32>(9634u, 4294967295u, 12301u, 0u)), false, Struct_2(-9800i, vec2<i32>(1i, 1i), Struct_1(vec4<u32>(1u, 0u, 0u, 0u)), 40244i, 47814i), Struct_1(vec4<u32>(0u, 4294967295u, 16446u, 4294967295u)), Struct_1(vec4<u32>(162457u, 0u, 4294967295u, 48944u))), Struct_4(Struct_1(vec4<u32>(7225u, 137366u, 0u, 0u)), false, Struct_2(i32(-2147483648), vec2<i32>(0i, -17491i), Struct_1(vec4<u32>(4294967295u, 66207u, 81583u, 36702u)), -1i, 90530i), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), Struct_1(vec4<u32>(0u, 0u, 1u, 18061u))), Struct_4(Struct_1(vec4<u32>(0u, 1u, 29094u, 1u)), true, Struct_2(-28874i, vec2<i32>(-46131i, -19618i), Struct_1(vec4<u32>(72436u, 4294967295u, 20478u, 12401u)), -1318i, 19785i), Struct_1(vec4<u32>(0u, 27939u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 62230u, 1u))), Struct_4(Struct_1(vec4<u32>(1u, 4294967295u, 1u, 32794u)), false, Struct_2(-45217i, vec2<i32>(103i, 50741i), Struct_1(vec4<u32>(4294967295u, 0u, 29244u, 0u)), 0i, 3298i), Struct_1(vec4<u32>(1u, 51244u, 0u, 4294967295u)), Struct_1(vec4<u32>(587u, 1u, 0u, 122033u))), Struct_4(Struct_1(vec4<u32>(0u, 4294967295u, 68352u, 0u)), true, Struct_2(65790i, vec2<i32>(2147483647i, -1i), Struct_1(vec4<u32>(0u, 11801u, 5422u, 98311u)), -9683i, 2147483647i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 64586u)), Struct_1(vec4<u32>(1u, 28338u, 65501u, 24196u))), Struct_4(Struct_1(vec4<u32>(1u, 79635u, 16233u, 0u)), false, Struct_2(32151i, vec2<i32>(-32790i, 1i), Struct_1(vec4<u32>(13039u, 28037u, 1u, 1u)), -1i, 9812i), Struct_1(vec4<u32>(0u, 4294967295u, 38906u, 3672u)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 18654u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), true, Struct_2(18905i, vec2<i32>(1i, 0i), Struct_1(vec4<u32>(15738u, 1u, 1u, 0u)), 0i, 17453i), Struct_1(vec4<u32>(116912u, 1u, 4294967295u, 0u)), Struct_1(vec4<u32>(52912u, 33652u, 24986u, 1u))), Struct_4(Struct_1(vec4<u32>(1u, 4294967295u, 377u, 4294967295u)), true, Struct_2(-1i, vec2<i32>(80270i, -34193i), Struct_1(vec4<u32>(81570u, 83401u, 21994u, 1u)), 2147483647i, 45274i), Struct_1(vec4<u32>(44551u, 67365u, 0u, 4294967295u)), Struct_1(vec4<u32>(86969u, 4294967295u, 0u, 3995u))), Struct_4(Struct_1(vec4<u32>(0u, 23257u, 24392u, 38793u)), false, Struct_2(-1i, vec2<i32>(1i, i32(-2147483648)), Struct_1(vec4<u32>(20730u, 20630u, 32268u, 1u)), -21208i, 33600i), Struct_1(vec4<u32>(2995u, 0u, 4294967295u, 37007u)), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 4294967295u))), Struct_4(Struct_1(vec4<u32>(63252u, 1u, 3389u, 1u)), true, Struct_2(1i, vec2<i32>(23893i, 1i), Struct_1(vec4<u32>(16731u, 84762u, 73476u, 4294967295u)), -73433i, -49386i), Struct_1(vec4<u32>(9340u, 4294967295u, 16292u, 18130u)), Struct_1(vec4<u32>(59634u, 27575u, 1u, 9094u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 1u, 71018u, 37676u)), true, Struct_2(0i, vec2<i32>(2147483647i, -1i), Struct_1(vec4<u32>(4294967295u, 104244u, 36253u, 38864u)), -11008i, 22833i), Struct_1(vec4<u32>(0u, 25475u, 13305u, 0u)), Struct_1(vec4<u32>(70423u, 1u, 0u, 1u))), Struct_4(Struct_1(vec4<u32>(0u, 1u, 0u, 52382u)), false, Struct_2(40373i, vec2<i32>(9723i, -43456i), Struct_1(vec4<u32>(56226u, 1u, 1838u, 28962u)), i32(-2147483648), -54115i), Struct_1(vec4<u32>(45723u, 0u, 0u, 57356u)), Struct_1(vec4<u32>(55045u, 6787u, 12962u, 0u))), Struct_4(Struct_1(vec4<u32>(12902u, 88548u, 1u, 1u)), false, Struct_2(86637i, vec2<i32>(-40892i, -1i), Struct_1(vec4<u32>(97279u, 65886u, 37556u, 1u)), -15904i, i32(-2147483648)), Struct_1(vec4<u32>(68603u, 59035u, 63237u, 0u)), Struct_1(vec4<u32>(0u, 53763u, 9263u, 0u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 22183u, 3949u, 0u)), false, Struct_2(-21107i, vec2<i32>(0i, 2147483647i), Struct_1(vec4<u32>(0u, 1u, 27255u, 18909u)), i32(-2147483648), -55815i), Struct_1(vec4<u32>(1u, 16473u, 59421u, 31930u)), Struct_1(vec4<u32>(0u, 26178u, 0u, 0u))), Struct_4(Struct_1(vec4<u32>(54536u, 4294967295u, 30872u, 29140u)), false, Struct_2(0i, vec2<i32>(-12163i, 9473i), Struct_1(vec4<u32>(1u, 0u, 12211u, 23994u)), 2147483647i, 2147483647i), Struct_1(vec4<u32>(500u, 24861u, 41493u, 1u)), Struct_1(vec4<u32>(88977u, 4294967295u, 1u, 1u))), Struct_4(Struct_1(vec4<u32>(12443u, 0u, 4294967295u, 4294967295u)), true, Struct_2(1i, vec2<i32>(0i, -43017i), Struct_1(vec4<u32>(1u, 13536u, 34502u, 28639u)), 0i, 0i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 8304u)), Struct_1(vec4<u32>(4294967295u, 29331u, 7209u, 0u))), Struct_4(Struct_1(vec4<u32>(42631u, 4294967295u, 0u, 4294967295u)), false, Struct_2(3477i, vec2<i32>(1i, 0i), Struct_1(vec4<u32>(0u, 1u, 0u, 0u)), 3420i, 36556i), Struct_1(vec4<u32>(53888u, 4294967295u, 59253u, 24866u)), Struct_1(vec4<u32>(54997u, 43561u, 1u, 4294967295u))), Struct_4(Struct_1(vec4<u32>(40899u, 0u, 16091u, 0u)), true, Struct_2(2147483647i, vec2<i32>(16188i, 2147483647i), Struct_1(vec4<u32>(0u, 62273u, 0u, 4294967295u)), 1i, 43035i), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 87019u)), Struct_1(vec4<u32>(1406u, 1u, 0u, 1u))), Struct_4(Struct_1(vec4<u32>(0u, 23442u, 14244u, 5519u)), true, Struct_2(1i, vec2<i32>(-65218i, -1i), Struct_1(vec4<u32>(43883u, 4294967295u, 0u, 59621u)), 19946i, 1i), Struct_1(vec4<u32>(16901u, 1u, 24315u, 53963u)), Struct_1(vec4<u32>(1697u, 0u, 68127u, 16733u))), Struct_4(Struct_1(vec4<u32>(19579u, 64708u, 0u, 0u)), true, Struct_2(-47232i, vec2<i32>(2147483647i, 0i), Struct_1(vec4<u32>(12864u, 4294967295u, 44457u, 12698u)), -22061i, i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 0u, 2525u, 0u)), Struct_1(vec4<u32>(47407u, 11208u, 1u, 0u))), Struct_4(Struct_1(vec4<u32>(13337u, 0u, 45170u, 5030u)), true, Struct_2(-15908i, vec2<i32>(i32(-2147483648), -64868i), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 1u)), 33027i, -12775i), Struct_1(vec4<u32>(2607u, 656u, 1u, 35459u)), Struct_1(vec4<u32>(49894u, 4294967295u, 6546u, 4294967295u))));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    return 1i >> (arg_1.a.x % 32u);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global1 = vec4<bool>(func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2054f, -185f, 169f, 252f) + vec4<f32>(-302f, -783f, -1000f, 274f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-730f, -845f, 184f, -679f)), !vec4<bool>(true, true, global1.x, false))), Struct_1(vec4<u32>(arg_0.x, arg_0.x, 34661u, 1u))) >= min(25321i, 0i), any(vec4<bool>(true, global1.x, global1.x, !any(global1.xz))), 1i < func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1109f, 197f, 791f, 1505f))), Struct_1(~vec4<u32>(u_input.a, arg_0.x, arg_0.x, 1u))), !(!(!(global1.x | global1.x))));
    var var_0 = Struct_2(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1149f, _wgslsmith_f_op_f32(sign(197f)), _wgslsmith_f_op_f32(1207f + -762f), _wgslsmith_f_op_f32(f32(-1f) * -155f))), Struct_1(select(~vec4<u32>(26037u, 56113u, arg_0.x, 4294967295u), vec4<u32>(20892u, 4294967295u, 1u, 4294967295u), u_input.b.x > u_input.b.x))), vec2<i32>(~min(_wgslsmith_add_i32(-10346i, 1i), _wgslsmith_div_i32(2147483647i, u_input.b.x)), firstLeadingBit(u_input.b.x) & -1i), Struct_1(vec4<u32>(~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1u, 10659u) >> (vec3<u32>(0u, u_input.a, arg_0.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0.x, 4294967295u), vec3<u32>(arg_0.x, u_input.a, 25582u), vec3<u32>(32792u, 0u, arg_0.x))), u_input.a, abs(_wgslsmith_clamp_u32(arg_0.x, u_input.a, u_input.a)))), -1i, 45368i);
    var var_1 = _wgslsmith_sub_i32(var_0.e << (1u % 32u), -1i << (~(~u_input.a) % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1269f), _wgslsmith_f_op_f32(ceil(-1795f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(220f, 2736f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(361f, -1187f)), vec2<f32>(1245f, 1090f), true)))));
    let var_3 = Struct_1(var_0.c.a);
    return Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(16644u, arg_0.x), u_input.a, var_3.a.x, var_0.c.a.x >> (var_3.a.x % 32u)), vec4<u32>(var_3.a.x, ~38239u, abs(~var_0.c.a.x), 0u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -131f;
    var var_1 = true && select(select(true, !global1.x, !(var_0 == -538f)), true, global1.x);
    return arg_2;
}

fn func_1() -> Struct_1 {
    return func_4(Struct_4(func_2(global0[_wgslsmith_index_u32(~(103346u << (u_input.a % 32u)), 17u)]), true, Struct_2(1i, vec2<i32>(countOneBits(u_input.b.x), -2147483647i), func_2(vec2<u32>(u_input.a, u_input.a)), ~20220i, _wgslsmith_add_i32(abs(u_input.b.x), _wgslsmith_add_i32(u_input.b.x, -1202i))), func_2(vec2<u32>(u_input.a << (u_input.a % 32u), _wgslsmith_mod_u32(54517u, 3u))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 17u)]), 17u)])), -vec3<i32>(u_input.b.x, ~(-u_input.b.x), -(~u_input.b.x)), Struct_1(select(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(32046u, u_input.a, u_input.a), vec3<u32>(u_input.a, 50793u, 18909u)), _wgslsmith_clamp_u32(u_input.a, 4294967295u, 4294967295u), u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(34451u, 56834u, u_input.a, 33964u), firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), false)));
}

fn func_5(arg_0: Struct_4) -> vec3<f32> {
    let var_0 = func_2(~vec2<u32>(_wgslsmith_dot_vec2_u32(func_1().a.xz, _wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(0u, 17u)], arg_0.e.a.yz)), firstLeadingBit(abs(u_input.a))));
    var var_1 = _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(~(arg_0.c.c.a.www & vec3<u32>(arg_0.a.a.x, 4294967295u, u_input.a)), vec3<u32>(~arg_0.e.a.x, _wgslsmith_mult_u32(var_0.a.x, u_input.a), func_1().a.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, countOneBits(1u), 40880u), vec3<u32>(select(arg_0.a.a.x, arg_0.d.a.x, false) >> (22391u % 32u), ~40812u, 25283u), abs(func_2(func_2(global0[_wgslsmith_index_u32(25446u, 17u)]).a.wy).a.xzx)));
    var var_2 = Struct_2(_wgslsmith_clamp_i32(max(-1i, ~(-28125i << (arg_0.a.a.x % 32u))), _wgslsmith_div_i32(73767i, _wgslsmith_add_i32(-1i, 0i)), _wgslsmith_add_i32(1i, ~abs(arg_0.c.a))), abs(~_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.c.b, u_input.b.zz), ~vec2<i32>(u_input.b.x, -2147483647i))), func_1(), min(-u_input.b.x, abs(~arg_0.c.d)), ~_wgslsmith_dot_vec3_i32(countOneBits(u_input.b.wzw), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 1i))));
    global1 = vec4<bool>(true, any(global1.wx), arg_0.b, any(!(!(!vec4<bool>(global1.x, global1.x, global1.x, true)))));
    let var_3 = Struct_3(all(select(global1.yyz, vec3<bool>(true | arg_0.b, arg_0.b, true), !global1.xzx)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-726f, 612f, 202f, 462f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1200f, 243f, -1191f, -1023f), vec4<f32>(1328f, -678f, 1167f, 619f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1118f, -691f, -288f, 2051f)), vec4<f32>(-693f, 1944f, 626f, -379f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f * 246f)), -1079f, -569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(402f)))))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, var_2.c.a.x, 4294967295u)), arg_0.d.a.zyy));
    return vec3<f32>(_wgslsmith_f_op_f32(-var_3.b.x), -1003f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1744f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), 1f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(Struct_4(func_1(), true, Struct_2(abs(u_input.b.x), vec2<i32>(1i, u_input.b.x), Struct_1(vec4<u32>(1u, 4162u, 17665u, 0u)), 2147483647i, -42527i), func_1(), Struct_1(vec4<u32>(u_input.a, u_input.a, 37365u, 0u))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1330f, 731f, 624f)))), vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-469f, 1838f, _wgslsmith_f_op_f32(976f + -1544f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1725f, -1000f, -378f)))), !vec3<bool>(true, true, global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32((vec4<u32>(0u, 8139u, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)) >> (firstLeadingBit(vec4<u32>(39810u, 30230u, 4294967295u, 1182u)) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(0u), 0u, ~54683u, 34763u)), u_input.b, vec3<i32>(u_input.b.x, -(~u_input.b.x), u_input.b.x), vec3<i32>(u_input.b.x, -u_input.b.x, ~u_input.b.x));
}

