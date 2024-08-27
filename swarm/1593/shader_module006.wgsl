struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(true, Struct_1(vec2<i32>(2147483647i, 1440i), vec3<i32>(60807i, i32(-2147483648), 1i), -28673i), vec4<bool>(false, false, false, true), Struct_1(vec2<i32>(-6704i, -1i), vec3<i32>(2147483647i, 31046i, 0i), i32(-2147483648)), Struct_1(vec2<i32>(57539i, 36019i), vec3<i32>(-2108i, 53517i, -31792i), 22670i)), Struct_2(false, Struct_1(vec2<i32>(36092i, 1i), vec3<i32>(-1i, -7099i, 746i), 1i), vec4<bool>(true, true, false, false), Struct_1(vec2<i32>(-1i, 0i), vec3<i32>(60744i, 7031i, 1i), 1i), Struct_1(vec2<i32>(13093i, 0i), vec3<i32>(-40655i, -14521i, 0i), -5851i)), Struct_2(false, Struct_1(vec2<i32>(0i, 0i), vec3<i32>(2147483647i, 46312i, 1i), -1i), vec4<bool>(false, true, false, false), Struct_1(vec2<i32>(2147483647i, 1i), vec3<i32>(0i, 13838i, 70065i), -19310i), Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(-4256i, 8197i, -23473i), -2951i)), Struct_2(false, Struct_1(vec2<i32>(-10267i, 1i), vec3<i32>(-43351i, 1i, 23583i), i32(-2147483648)), vec4<bool>(true, true, true, false), Struct_1(vec2<i32>(-8223i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), 0i), Struct_1(vec2<i32>(-2676i, 40825i), vec3<i32>(36611i, 1i, 1i), -52768i)), Struct_2(false, Struct_1(vec2<i32>(1i, -35841i), vec3<i32>(-66061i, -47971i, i32(-2147483648)), -16860i), vec4<bool>(true, false, false, true), Struct_1(vec2<i32>(-22477i, -9090i), vec3<i32>(-11810i, -19347i, 1398i), 2147483647i), Struct_1(vec2<i32>(-96203i, 2147483647i), vec3<i32>(21801i, i32(-2147483648), -1i), 32576i)), Struct_2(false, Struct_1(vec2<i32>(-1i, 2331i), vec3<i32>(1i, 27457i, 1i), -22537i), vec4<bool>(false, false, false, true), Struct_1(vec2<i32>(-56163i, 11852i), vec3<i32>(-37381i, -14905i, 0i), -10633i), Struct_1(vec2<i32>(70270i, -22912i), vec3<i32>(0i, i32(-2147483648), 0i), 2147483647i)), Struct_2(false, Struct_1(vec2<i32>(0i, 2147483647i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), 18063i), vec4<bool>(true, false, false, true), Struct_1(vec2<i32>(66628i, -9522i), vec3<i32>(0i, -1i, -2030i), 1i), Struct_1(vec2<i32>(2147483647i, 1i), vec3<i32>(17306i, -32627i, 1i), 1248i)), Struct_2(true, Struct_1(vec2<i32>(-69173i, 0i), vec3<i32>(2147483647i, -1i, 1i), -6741i), vec4<bool>(true, true, true, true), Struct_1(vec2<i32>(50057i, i32(-2147483648)), vec3<i32>(-36454i, 1i, i32(-2147483648)), 0i), Struct_1(vec2<i32>(i32(-2147483648), -11611i), vec3<i32>(i32(-2147483648), 27641i, 0i), -1i)), Struct_2(true, Struct_1(vec2<i32>(21094i, 34008i), vec3<i32>(-33905i, 5180i, 2147483647i), 0i), vec4<bool>(false, false, true, true), Struct_1(vec2<i32>(-1i, 0i), vec3<i32>(1i, 29742i, 2147483647i), 1i), Struct_1(vec2<i32>(-13997i, 0i), vec3<i32>(-13292i, 1i, 52303i), -29322i)), Struct_2(false, Struct_1(vec2<i32>(i32(-2147483648), -52670i), vec3<i32>(7448i, 10252i, -1i), i32(-2147483648)), vec4<bool>(false, false, true, true), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<i32>(2147483647i, 45420i, i32(-2147483648)), 36392i), Struct_1(vec2<i32>(1i, -357i), vec3<i32>(i32(-2147483648), -11141i, 2147483647i), 0i)), Struct_2(false, Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<i32>(-14461i, 0i, 1i), 0i), vec4<bool>(true, false, false, true), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<i32>(0i, -80471i, -14412i), -1i), Struct_1(vec2<i32>(1i, 0i), vec3<i32>(i32(-2147483648), -1i, 1i), -60673i)), Struct_2(true, Struct_1(vec2<i32>(1i, -69371i), vec3<i32>(6108i, -38826i, -66356i), 1i), vec4<bool>(true, false, false, false), Struct_1(vec2<i32>(2761i, 0i), vec3<i32>(1i, 2147483647i, 7408i), -1i), Struct_1(vec2<i32>(-19635i, -1i), vec3<i32>(-9444i, -36780i, 0i), -30627i)), Struct_2(true, Struct_1(vec2<i32>(23684i, 2147483647i), vec3<i32>(0i, -32084i, 2147483647i), -66508i), vec4<bool>(false, false, true, true), Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(-1i, -1i, -1i), -7990i), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 55452i, 16546i), 2147483647i)), Struct_2(false, Struct_1(vec2<i32>(29733i, 0i), vec3<i32>(-60665i, 0i, 6986i), -46379i), vec4<bool>(false, true, false, false), Struct_1(vec2<i32>(1i, 0i), vec3<i32>(1i, -37661i, -3077i), 1i), Struct_1(vec2<i32>(-26183i, 2147483647i), vec3<i32>(28104i, i32(-2147483648), 7647i), 0i)), Struct_2(false, Struct_1(vec2<i32>(0i, 2147483647i), vec3<i32>(-44213i, -34960i, -1i), 3846i), vec4<bool>(false, true, true, false), Struct_1(vec2<i32>(i32(-2147483648), -5675i), vec3<i32>(1i, -22471i, 2147483647i), 19351i), Struct_1(vec2<i32>(2147483647i, 621i), vec3<i32>(1i, 2147483647i, -77757i), i32(-2147483648))), Struct_2(false, Struct_1(vec2<i32>(13705i, 43242i), vec3<i32>(-1i, i32(-2147483648), -41303i), 1i), vec4<bool>(true, false, true, true), Struct_1(vec2<i32>(0i, -1i), vec3<i32>(0i, i32(-2147483648), 1101i), -28394i), Struct_1(vec2<i32>(1i, -1947i), vec3<i32>(-4506i, i32(-2147483648), -16133i), -77580i)), Struct_2(true, Struct_1(vec2<i32>(2147483647i, -1i), vec3<i32>(45598i, 2891i, 2147483647i), -21222i), vec4<bool>(true, true, true, false), Struct_1(vec2<i32>(1i, 0i), vec3<i32>(4298i, 0i, i32(-2147483648)), 43186i), Struct_1(vec2<i32>(-34335i, 2147483647i), vec3<i32>(43601i, 2147483647i, -63980i), 2147483647i)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = all(!vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true))), false || any(vec2<bool>(false, true)), true, !(u_input.a < u_input.a)));
    return ~18914i;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = min(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_sub_i32(-41154i, 14423i), 1i, min(-2147483647i, 1i))), firstTrailingBit(-vec3<i32>(2147483647i, u_input.a, arg_0.x)) ^ ~(-vec3<i32>(-1627i, 1i, arg_0.x))), vec3<i32>(_wgslsmith_dot_vec2_i32(reverseBits(arg_0), vec2<i32>(~(-73407i), 1i)), ~func_3(), 2147483647i));
    var var_1 = select(select(vec3<bool>(any(vec2<bool>(false, false)), true, !select(false, false, false)), vec3<bool>(true, false, false & (arg_0.x < u_input.a)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), var_0.x != -45226i), vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), all(vec2<bool>(false, true))))), vec3<bool>(true, true, true), select(all(vec4<bool>(true, true, true, true)), true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))) && true));
    let var_2 = Struct_1(-vec2<i32>(_wgslsmith_div_i32(arg_0.x << (u_input.b % 32u), _wgslsmith_sub_i32(8899i, var_0.x)), 0i), min(_wgslsmith_add_vec3_i32(-vec3<i32>(var_0.x, 29332i, u_input.a), vec3<i32>(arg_0.x, u_input.a, u_input.a)), select(vec3<i32>(0i, 16817i, 0i), -vec3<i32>(-7037i, 0i, arg_0.x), !vec3<bool>(var_1.x, false, false))) >> ((min(vec3<u32>(96348u, 1u, 44966u), vec3<u32>(u_input.b, 4294967295u, u_input.b) & vec3<u32>(1u, u_input.b, u_input.b)) & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 14630u, u_input.b), ~vec3<u32>(0u, u_input.b, u_input.b))) % vec3<u32>(32u)), -(var_0.x ^ _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.x, -4253i, 2147483647i), ~vec3<i32>(u_input.a, -15820i, -2147483647i))));
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(((vec2<u32>(55714u, u_input.b) & vec2<u32>(u_input.b, 0u)) << ((vec2<u32>(4294967295u, 0u) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))) & reverseBits(~vec2<u32>(59390u, 4294967295u)), firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(70922u, 1u), vec2<u32>(u_input.b, 25942u)), firstLeadingBit(vec2<u32>(0u, 66831u))))), 17u)];
    var_1 = select(select(select(select(!var_3.c.wwx, var_3.c.yzy, select(var_3.c.xzx, var_3.c.xxz, vec3<bool>(var_3.c.x, var_1.x, false))), select(!var_3.c.ywz, !var_3.c.yzx, !vec3<bool>(true, false, var_1.x)), true), vec3<bool>(all(var_3.c.yzy) && true, !var_1.x, true), all(!(!var_3.c.zw))), !select(select(var_3.c.zzz, vec3<bool>(true, var_3.c.x, var_1.x), true), select(vec3<bool>(false, var_3.c.x, var_1.x), vec3<bool>(true, true, var_1.x), select(vec3<bool>(true, var_3.c.x, true), vec3<bool>(false, var_3.a, false), false)), all(!var_3.c.wzy)), var_3.c.zzz);
    return Struct_1(var_3.e.b.zz, vec3<i32>(var_2.a.x, _wgslsmith_sub_i32(1i, min(0i, -1i) | select(var_3.e.c, -17931i, var_1.x)), var_3.e.a.x), -42525i);
}

fn func_1() -> vec4<f32> {
    let var_0 = 1u;
    global0 = array<Struct_2, 17>();
    var var_1 = vec2<u32>(39243u, countOneBits(var_0));
    var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(45365u, (0u ^ var_0) >> ((1566u | u_input.b) % 32u)));
    let var_2 = Struct_2(!any(vec2<bool>(true, true)), func_2(vec2<i32>(-1i, -1i)), select(!vec4<bool>(true, false, select(true, true, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), Struct_1(~_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(0i, 18371i)), vec2<i32>(u_input.a, 1i), select(vec2<i32>(u_input.a, -14027i), vec2<i32>(u_input.a, u_input.a), false)), vec3<i32>(-(~u_input.a), u_input.a, _wgslsmith_add_i32(u_input.a, i32(-1i) * -1i)), u_input.a), Struct_1(firstTrailingBit(vec2<i32>(-11920i, 16000i)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(54429u, 4294967295u), select(vec2<u32>(42339u, 56305u), vec2<u32>(var_1.x, 53973u), vec2<bool>(false, false))) % vec2<u32>(32u)), -(~vec3<i32>(15292i, -1i, 67400i)) >> (_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_0, var_0, 6267u)), ~vec3<u32>(47041u, var_0, 1u)) % vec3<u32>(32u)), -firstTrailingBit(max(0i, u_input.a))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1075f, 1275f, -300f, -1033f), vec4<f32>(1077f, 122f, -201f, -1432f))) + vec4<f32>(-1000f, -213f, -539f, 252f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(667f - 754f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(238f * -254f) - 1190f), -766f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(480f * 966f) + -690f), 1955f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    let var_0 = _wgslsmith_div_u32(~1u ^ _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.b, u_input.b, 19077u)), vec3<u32>(u_input.b, ~u_input.b, reverseBits(u_input.b))), u_input.b);
    let var_1 = reverseBits(vec3<i32>(~u_input.a, -1i, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(func_1()), ~(~abs(2147483647i)), 36923i);
}

