struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19>;

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(6686i, -33890i), vec4<bool>(false, false, false, true), -515f, false), Struct_1(vec2<i32>(-1i, 45373i), vec4<bool>(true, true, false, false), 111f, false), Struct_1(vec2<i32>(1i, 0i), vec4<bool>(false, true, true, true), 193f, false), Struct_1(vec2<i32>(2147483647i, 1i), vec4<bool>(true, true, true, false), 1486f, true), Struct_1(vec2<i32>(10955i, 0i), vec4<bool>(true, false, false, false), 1005f, false), Struct_1(vec2<i32>(-33722i, -3910i), vec4<bool>(false, true, false, false), 384f, false), Struct_1(vec2<i32>(i32(-2147483648), -22757i), vec4<bool>(true, true, false, false), -1484f, false), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<bool>(false, false, true, true), 3005f, true), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<bool>(true, false, false, false), 504f, false));

var<private> global4: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec2<i32>(0i, 15048i), vec4<bool>(true, true, true, true), -1000f, false), vec4<i32>(1i, -21933i, 6775i, i32(-2147483648)), vec3<u32>(32258u, 1u, 49430u), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<bool>(true, false, false, true), -1110f, true), Struct_1(vec2<i32>(1i, 38718i), vec4<bool>(true, false, true, false), 1103f, true)), Struct_2(Struct_1(vec2<i32>(29437i, 0i), vec4<bool>(false, true, true, false), 144f, true), vec4<i32>(32902i, 29650i, 0i, -5380i), vec3<u32>(4294967295u, 20226u, 1u), Struct_1(vec2<i32>(7253i, 2147483647i), vec4<bool>(true, true, true, true), -425f, false), Struct_1(vec2<i32>(-1i, -19362i), vec4<bool>(true, false, true, true), -532f, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<bool>(false, true, false, false), 783f, false), vec4<i32>(-1i, 0i, 0i, i32(-2147483648)), vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec2<i32>(1i, -5151i), vec4<bool>(false, false, true, false), -1164f, false), Struct_1(vec2<i32>(1i, -9195i), vec4<bool>(true, false, true, false), -575f, false)), Struct_2(Struct_1(vec2<i32>(1009i, 0i), vec4<bool>(true, false, false, false), -1269f, true), vec4<i32>(-35181i, -48351i, -1i, 11043i), vec3<u32>(0u, 52272u, 0u), Struct_1(vec2<i32>(50708i, 0i), vec4<bool>(false, true, true, false), 258f, true), Struct_1(vec2<i32>(43592i, -25623i), vec4<bool>(true, true, false, true), -774f, true)), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(false, false, false, true), -334f, true), vec4<i32>(37709i, i32(-2147483648), 0i, 0i), vec3<u32>(46179u, 23880u, 19277u), Struct_1(vec2<i32>(2147483647i, -1i), vec4<bool>(false, true, true, false), -468f, false), Struct_1(vec2<i32>(179i, 11664i), vec4<bool>(false, false, true, false), -838f, false)), Struct_2(Struct_1(vec2<i32>(5747i, -9767i), vec4<bool>(true, false, true, true), 1692f, true), vec4<i32>(33350i, 19907i, 0i, -4382i), vec3<u32>(1u, 0u, 3958u), Struct_1(vec2<i32>(-43791i, -12556i), vec4<bool>(false, true, false, false), -987f, false), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(false, true, true, true), -252f, false)), Struct_2(Struct_1(vec2<i32>(0i, 75524i), vec4<bool>(true, true, false, false), 1362f, true), vec4<i32>(i32(-2147483648), -12075i, -1680i, i32(-2147483648)), vec3<u32>(0u, 111258u, 1u), Struct_1(vec2<i32>(-3454i, 1i), vec4<bool>(true, true, true, false), 1000f, true), Struct_1(vec2<i32>(0i, 2147483647i), vec4<bool>(true, false, true, true), 1041f, true)), Struct_2(Struct_1(vec2<i32>(500i, -1677i), vec4<bool>(false, true, true, false), -1367f, false), vec4<i32>(-792i, 2147483647i, i32(-2147483648), -6249i), vec3<u32>(27073u, 1u, 0u), Struct_1(vec2<i32>(16311i, -54560i), vec4<bool>(false, true, false, true), 602f, true), Struct_1(vec2<i32>(0i, -1i), vec4<bool>(false, true, true, false), 572f, false)), Struct_2(Struct_1(vec2<i32>(-53761i, i32(-2147483648)), vec4<bool>(true, true, true, false), -857f, true), vec4<i32>(0i, -1986i, 6259i, 40160i), vec3<u32>(73417u, 4294967295u, 2941u), Struct_1(vec2<i32>(-33177i, -1912i), vec4<bool>(false, true, false, false), 916f, true), Struct_1(vec2<i32>(21545i, -22504i), vec4<bool>(false, false, true, false), 810f, true)), Struct_2(Struct_1(vec2<i32>(1590i, 35283i), vec4<bool>(false, true, true, false), -215f, false), vec4<i32>(-29899i, 2147483647i, i32(-2147483648), -30359i), vec3<u32>(4294967295u, 1u, 12271u), Struct_1(vec2<i32>(-1i, 1i), vec4<bool>(false, true, false, true), -803f, true), Struct_1(vec2<i32>(12498i, 0i), vec4<bool>(true, true, true, false), 1116f, true)), Struct_2(Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<bool>(false, true, true, false), 137f, true), vec4<i32>(113i, -22814i, 0i, -1i), vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec2<i32>(1i, 7998i), vec4<bool>(true, false, false, true), 544f, false), Struct_1(vec2<i32>(-1636i, -62558i), vec4<bool>(false, false, false, false), 1251f, true)), Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), vec4<bool>(true, true, true, true), -1644f, false), vec4<i32>(29405i, 0i, 14914i, 19942i), vec3<u32>(0u, 111445u, 41524u), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec4<bool>(false, false, false, false), -580f, false), Struct_1(vec2<i32>(18997i, -1i), vec4<bool>(false, false, true, false), -662f, true)), Struct_2(Struct_1(vec2<i32>(0i, 1i), vec4<bool>(true, false, true, false), 569f, false), vec4<i32>(3101i, 0i, -1i, -1626i), vec3<u32>(103574u, 51127u, 116005u), Struct_1(vec2<i32>(1i, 2147483647i), vec4<bool>(true, true, false, true), -214f, false), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<bool>(true, true, false, true), -2728f, true)), Struct_2(Struct_1(vec2<i32>(-2835i, -1i), vec4<bool>(true, true, true, true), 756f, true), vec4<i32>(1i, -2945i, 2147483647i, i32(-2147483648)), vec3<u32>(1u, 4294967295u, 0u), Struct_1(vec2<i32>(-1i, -43191i), vec4<bool>(true, false, true, false), -542f, true), Struct_1(vec2<i32>(-1i, -28926i), vec4<bool>(true, false, false, false), -1000f, true)), Struct_2(Struct_1(vec2<i32>(-61812i, 30014i), vec4<bool>(false, true, true, false), -208f, true), vec4<i32>(1i, 34344i, 72662i, -1i), vec3<u32>(40857u, 53815u, 4294967295u), Struct_1(vec2<i32>(-15313i, -10329i), vec4<bool>(false, true, true, false), 588f, true), Struct_1(vec2<i32>(-3303i, 2147483647i), vec4<bool>(true, true, true, false), -2000f, true)), Struct_2(Struct_1(vec2<i32>(-725i, 55169i), vec4<bool>(false, true, true, false), 1429f, true), vec4<i32>(i32(-2147483648), 0i, 17209i, -1i), vec3<u32>(13152u, 39132u, 24358u), Struct_1(vec2<i32>(-46778i, 2147483647i), vec4<bool>(false, true, true, false), 1407f, false), Struct_1(vec2<i32>(20852i, -25619i), vec4<bool>(false, true, false, false), 207f, true)), Struct_2(Struct_1(vec2<i32>(30144i, 2147483647i), vec4<bool>(true, false, true, true), -512f, true), vec4<i32>(0i, 0i, -879i, 0i), vec3<u32>(4294967295u, 31034u, 4294967295u), Struct_1(vec2<i32>(-53702i, -42324i), vec4<bool>(false, false, false, true), 938f, true), Struct_1(vec2<i32>(-1i, -61958i), vec4<bool>(true, true, false, true), -137f, false)), Struct_2(Struct_1(vec2<i32>(2147483647i, -40165i), vec4<bool>(true, true, false, true), -1000f, true), vec4<i32>(-87070i, 2147483647i, 31857i, -78787i), vec3<u32>(21874u, 1u, 4294967295u), Struct_1(vec2<i32>(0i, 0i), vec4<bool>(false, false, true, true), -219f, true), Struct_1(vec2<i32>(-24910i, -1i), vec4<bool>(true, false, false, false), 1977f, true)), Struct_2(Struct_1(vec2<i32>(15936i, 0i), vec4<bool>(false, true, false, true), 383f, false), vec4<i32>(-8125i, 52656i, 1i, i32(-2147483648)), vec3<u32>(4294967295u, 23136u, 19341u), Struct_1(vec2<i32>(i32(-2147483648), 17255i), vec4<bool>(false, true, false, false), -1276f, false), Struct_1(vec2<i32>(1i, -41774i), vec4<bool>(true, false, true, false), 1937f, true)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    global4 = array<Struct_2, 19>();
    let var_0 = global3[_wgslsmith_index_u32(0u | abs(u_input.d), 9u)];
    let var_1 = 71592u;
    global2 = global3[_wgslsmith_index_u32(42727u, 9u)];
    let var_2 = !all(vec2<bool>(global2.b.x, var_0.d));
    return _wgslsmith_clamp_u32(var_1, u_input.d, var_1);
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = u_input.a;
    var var_1 = ~u_input.c;
    var var_2 = Struct_1(-firstLeadingBit(~u_input.a.zx), select(vec4<bool>(all(select(global2.b, global2.b, true)), false, global2.b.x, false), global2.b, any(select(global2.b, select(vec4<bool>(global2.d, global2.d, global2.b.x, global2.d), vec4<bool>(false, true, global2.b.x, global2.b.x), true), vec4<bool>(global2.b.x, true, global2.b.x, global2.d)))), _wgslsmith_f_op_f32(-global2.c), !all(global2.b.zx));
    let var_3 = vec4<i32>(i32(-1i) * -1i, ~var_2.a.x >> (3318u % 32u), 0i, ~_wgslsmith_div_i32(reverseBits(-5143i), i32(-1i) * -2147483647i)) ^ firstTrailingBit(~vec4<i32>(~global2.a.x, 57263i, reverseBits(var_2.a.x), global2.a.x));
    global4 = array<Struct_2, 19>();
    return -1i;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> vec3<i32> {
    global3 = array<Struct_1, 9>();
    let var_0 = vec3<u32>(u_input.d, firstTrailingBit(19686u), min(_wgslsmith_mod_u32(4294967295u, ~(17868u ^ arg_2.x)), func_2()));
    let var_1 = vec2<u32>(~_wgslsmith_mult_u32(arg_2.x, _wgslsmith_add_u32(arg_2.x, min(0u, 40390u))), 1u);
    var var_2 = -1005f;
    let var_3 = vec2<u32>(~u_input.c.x, firstTrailingBit(44460u));
    return vec3<i32>(~(~(~u_input.a.x)), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, -135f), arg_0))), u_input.a.x) >> (~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_2.x, var_1.x), vec3<u32>(1u, 30405u, 8426u))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 19>();
    global1 = _wgslsmith_f_op_f32(-global2.c);
    global4 = array<Struct_2, 19>();
    global3 = array<Struct_1, 9>();
    global2 = Struct_1(global2.a, global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) - 1851f), all(vec3<bool>(all(!global2.b.xyx), all(global2.b.yw), !global2.b.x)));
    let var_0 = func_1(vec2<f32>(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1471f) * _wgslsmith_f_op_f32(global2.c * global2.c)))), select(vec3<bool>(true, true, true), !global2.b.xyz, global2.b.wxx), _wgslsmith_mult_vec3_u32(u_input.c, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(min(_wgslsmith_sub_u32(0u, ~u_input.c.x), reverseBits(u_input.c.x << (u_input.c.x % 32u))), _wgslsmith_mult_u32(u_input.d, u_input.c.x) & _wgslsmith_mod_u32(~u_input.d, ~3113u)));
}

