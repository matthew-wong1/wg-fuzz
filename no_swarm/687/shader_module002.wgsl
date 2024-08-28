struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec2<f32>(-616f, 2347f), 13789i, 85218i, vec4<u32>(37696u, 0u, 71445u, 0u), Struct_1(vec2<bool>(false, true), vec3<i32>(1i, 2464i, i32(-2147483648)))), Struct_3(vec2<f32>(680f, 399f), i32(-2147483648), 1i, vec4<u32>(1u, 0u, 4294967295u, 0u), Struct_1(vec2<bool>(true, true), vec3<i32>(-39622i, -26075i, 41212i))), Struct_3(vec2<f32>(-646f, -268f), 0i, 16924i, vec4<u32>(1u, 15147u, 30303u, 15504u), Struct_1(vec2<bool>(true, true), vec3<i32>(4899i, 0i, 16459i))), Struct_3(vec2<f32>(1000f, -219f), -1i, i32(-2147483648), vec4<u32>(36256u, 1u, 1u, 65829u), Struct_1(vec2<bool>(true, false), vec3<i32>(1i, 1i, 0i))), Struct_3(vec2<f32>(-1000f, 424f), -1i, i32(-2147483648), vec4<u32>(0u, 1u, 15251u, 91526u), Struct_1(vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -2741i, -13449i))), Struct_3(vec2<f32>(1729f, -236f), -17255i, 0i, vec4<u32>(1260u, 4294967295u, 0u, 0u), Struct_1(vec2<bool>(true, false), vec3<i32>(0i, 0i, -27000i))), Struct_3(vec2<f32>(608f, 915f), -64999i, 13125i, vec4<u32>(1u, 0u, 54629u, 1u), Struct_1(vec2<bool>(false, true), vec3<i32>(5410i, i32(-2147483648), 1i))), Struct_3(vec2<f32>(1000f, 394f), 0i, 1i, vec4<u32>(27779u, 1u, 16736u, 1u), Struct_1(vec2<bool>(false, false), vec3<i32>(1i, 2147483647i, -1i))), Struct_3(vec2<f32>(-1813f, -879f), 2147483647i, -1i, vec4<u32>(1u, 0u, 27727u, 4294967295u), Struct_1(vec2<bool>(true, false), vec3<i32>(0i, -8756i, 22659i))), Struct_3(vec2<f32>(-302f, -455f), 0i, 1i, vec4<u32>(4294967295u, 49823u, 35162u, 11421u), Struct_1(vec2<bool>(true, false), vec3<i32>(i32(-2147483648), 23891i, 1911i))), Struct_3(vec2<f32>(-943f, 358f), 0i, i32(-2147483648), vec4<u32>(4294967295u, 4294967295u, 63632u, 4294967295u), Struct_1(vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 2147483647i, -1i))), Struct_3(vec2<f32>(240f, -367f), -44779i, 29728i, vec4<u32>(50245u, 86665u, 0u, 19422u), Struct_1(vec2<bool>(true, false), vec3<i32>(1i, 1i, -22078i))), Struct_3(vec2<f32>(813f, -1029f), i32(-2147483648), 0i, vec4<u32>(1u, 4294967295u, 0u, 4175u), Struct_1(vec2<bool>(false, true), vec3<i32>(0i, 1i, -1i))), Struct_3(vec2<f32>(-1811f, -1359f), 0i, i32(-2147483648), vec4<u32>(8450u, 107617u, 0u, 1200u), Struct_1(vec2<bool>(false, true), vec3<i32>(61770i, -1i, -52776i))), Struct_3(vec2<f32>(-338f, -267f), 83027i, -1i, vec4<u32>(15189u, 35189u, 1u, 4294967295u), Struct_1(vec2<bool>(true, true), vec3<i32>(-13301i, -20760i, 28227i))), Struct_3(vec2<f32>(1434f, -1086f), -1i, -1i, vec4<u32>(0u, 0u, 4294967295u, 0u), Struct_1(vec2<bool>(false, false), vec3<i32>(2147483647i, 12647i, i32(-2147483648)))), Struct_3(vec2<f32>(-1456f, 1651f), -1i, 0i, vec4<u32>(51421u, 126557u, 4294967295u, 4294967295u), Struct_1(vec2<bool>(false, false), vec3<i32>(1i, -1i, 2796i))), Struct_3(vec2<f32>(1636f, 924f), -26436i, -1i, vec4<u32>(4294967295u, 68844u, 20900u, 32984u), Struct_1(vec2<bool>(true, false), vec3<i32>(i32(-2147483648), -1i, 18092i))), Struct_3(vec2<f32>(-3071f, -153f), i32(-2147483648), 76528i, vec4<u32>(0u, 88869u, 0u, 33084u), Struct_1(vec2<bool>(true, false), vec3<i32>(2147483647i, -17080i, -75724i))), Struct_3(vec2<f32>(677f, 1953f), 1i, -1i, vec4<u32>(4294967295u, 7463u, 31942u, 32656u), Struct_1(vec2<bool>(false, false), vec3<i32>(35816i, 18188i, i32(-2147483648)))), Struct_3(vec2<f32>(1000f, 1000f), -1i, 34261i, vec4<u32>(0u, 0u, 104556u, 108393u), Struct_1(vec2<bool>(true, true), vec3<i32>(11910i, -44196i, 2147483647i))), Struct_3(vec2<f32>(-659f, 1701f), 9386i, i32(-2147483648), vec4<u32>(23128u, 74716u, 1u, 86910u), Struct_1(vec2<bool>(true, true), vec3<i32>(40294i, 1i, -1i))), Struct_3(vec2<f32>(1000f, 2218f), 1634i, i32(-2147483648), vec4<u32>(72799u, 39605u, 101239u, 76557u), Struct_1(vec2<bool>(true, true), vec3<i32>(3619i, -1i, 64474i))), Struct_3(vec2<f32>(-1726f, 840f), -34753i, -29995i, vec4<u32>(4294967295u, 4294967295u, 7766u, 1u), Struct_1(vec2<bool>(true, true), vec3<i32>(2147483647i, -22473i, -13686i))));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(arg_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2160f, arg_1.x, -873f))))) + vec3<f32>(global0[_wgslsmith_index_u32(~arg_2.b.x, 19u)], arg_1.x, 1610f)))), vec3<u32>(u_input.a.x, 56120u, min(~arg_2.b.x, countOneBits(min(u_input.a.x, 1u)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_2.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, 396f, global0[_wgslsmith_index_u32(28070u, 19u)]), vec3<f32>(-554f, -796f, arg_2.a.x), vec3<bool>(false, false, false))))) - vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * -1024f), 1624f, _wgslsmith_f_op_f32(f32(-1f) * -129f))) * arg_2.a), vec3<u32>(arg_2.b.x, _wgslsmith_mod_u32(1u, u_input.c.x | ~1u), _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x & u_input.a.x), _wgslsmith_mod_u32(4294967295u, ~u_input.a.x))));
    global1 = array<Struct_3, 24>();
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(max(1290f, -1853f)), _wgslsmith_f_op_f32(sign(432f))), abs(-2274i), _wgslsmith_add_i32(-18542i, -(~(-39893i))) >> (arg_2.b.x % 32u), select(~(vec4<u32>(var_1.b.x, 0u, 2689u, u_input.c.x) >> (vec4<u32>(arg_2.b.x, var_1.b.x, var_0.b.x, 64632u) % vec4<u32>(32u))), ~abs(vec4<u32>(arg_2.b.x, 69815u, 43090u, u_input.a.x)), true) << (firstLeadingBit(~(vec4<u32>(8709u, u_input.c.x, 0u, 24958u) ^ vec4<u32>(var_0.b.x, 83694u, 21852u, 31232u))) % vec4<u32>(32u)), Struct_1(vec2<bool>(true, false), -vec3<i32>(-2147483647i, select(2147483647i, arg_0.x, false), u_input.b)));
    var var_3 = Struct_1(select(!var_2.e.a, vec2<bool>(!any(vec3<bool>(true, var_2.e.a.x, var_2.e.a.x)), ~(-43057i) != -u_input.b), select(!var_2.e.a, select(vec2<bool>(true, true), vec2<bool>(var_2.e.a.x, var_2.e.a.x), all(vec4<bool>(true, var_2.e.a.x, var_2.e.a.x, false))), var_2.e.a.x)), -(arg_0.wyx ^ vec3<i32>(abs(1i), u_input.b, _wgslsmith_mod_i32(-51555i, u_input.b))));
    return ~select(var_2.d, ~(var_2.d << (reverseBits(var_2.d) % vec4<u32>(32u))), true);
}

fn func_2() -> Struct_4 {
    global1 = array<Struct_3, 24>();
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-437f, -285f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f + global0[_wgslsmith_index_u32(1u, 19u)]) - _wgslsmith_f_op_f32(f32(-1f) * -384f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1894u, 19u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)])))), 35102i, u_input.b, _wgslsmith_add_vec4_u32(func_3(abs(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b)) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(315f, -1160f)))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(724f, global0[_wgslsmith_index_u32(4294967295u, 19u)], -1815f) - vec3<f32>(313f, 428f, -1000f)), u_input.a)), vec4<u32>(firstLeadingBit(32533u), 38984u, 8554u, 0u)), Struct_1(select(vec2<bool>(any(vec2<bool>(true, true)), u_input.b == u_input.b), vec2<bool>(true, any(vec3<bool>(true, false, false))), any(vec4<bool>(true, false, true, true))), vec3<i32>(-43012i >> (countOneBits(1u) % 32u), _wgslsmith_mod_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b)), -(i32(-1i) * -1i))));
    let var_1 = abs(1u);
    let var_2 = 1u;
    let var_3 = -vec2<i32>(~2147483647i, ~_wgslsmith_div_i32(-var_0.c, abs(41658i)));
    return Struct_4(vec2<bool>(var_3.x < ~(-16265i), select(all(vec4<bool>(false, var_0.e.a.x, var_0.e.a.x, var_0.e.a.x)), var_0.e.a.x && false, true) | !any(vec4<bool>(true, var_0.e.a.x, false, var_0.e.a.x))), vec3<bool>(any(!select(vec3<bool>(var_0.e.a.x, true, false), vec3<bool>(var_0.e.a.x, true, true), vec3<bool>(var_0.e.a.x, true, false))), false, all(vec2<bool>(any(vec2<bool>(true, var_0.e.a.x)), var_0.e.a.x))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = Struct_1(func_2().a, firstTrailingBit(vec3<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(u_input.b, u_input.b << (12654u % 32u)), -12967i)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-560f, global0[_wgslsmith_index_u32(u_input.c.x, 19u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -391f)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-649f, global0[_wgslsmith_index_u32(u_input.c.x, 19u)]) * vec2<f32>(764f, global0[_wgslsmith_index_u32(u_input.c.x, 19u)])) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(933f, 413f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-439f, 732f) + vec2<f32>(global0[_wgslsmith_index_u32(27554u, 19u)], 538f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-268f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]))) - _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -308f), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]))))), 30836i, -arg_1, vec4<u32>(countOneBits(~(~u_input.c.x)), 1u, 0u, _wgslsmith_clamp_u32(u_input.c.x, func_3(select(vec4<i32>(-24697i, var_0.b.x, 6339i, u_input.b), vec4<i32>(arg_1, 41865i, -2147483647i, u_input.b), arg_0.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(7050u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -1373f, 1483f), u_input.a)).x, func_3(vec4<i32>(-20626i, -4025i, -2147483647i, 2147483647i) & vec4<i32>(arg_1, var_0.b.x, 19268i, arg_1), _wgslsmith_div_vec2_f32(vec2<f32>(-1408f, -474f), vec2<f32>(global0[_wgslsmith_index_u32(39998u, 19u)], 726f)), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(20570u, 19u)], 212f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))).x)), Struct_1(!(!arg_0.b.yz), var_0.b));
    global1 = array<Struct_3, 24>();
    var var_2 = !select(select(select(!vec4<bool>(arg_0.b.x, var_0.a.x, var_0.a.x, true), vec4<bool>(true, false, false, arg_0.a.x), select(arg_2.x, true, true)), vec4<bool>(var_0.a.x, true, true, all(vec2<bool>(true, arg_2.x))), select(select(vec4<bool>(false, var_1.e.a.x, false, true), vec4<bool>(true, true, false, false), arg_0.b.x), vec4<bool>(arg_0.a.x, false, false, arg_2.x), vec4<bool>(true, true, true, true))), !vec4<bool>(arg_0.b.x, true, global0[_wgslsmith_index_u32(u_input.c.x, 19u)] <= global0[_wgslsmith_index_u32(4294967295u, 19u)], true), vec4<bool>(arg_2.x && false, !all(vec2<bool>(true, true)), true && all(vec4<bool>(true, var_1.e.a.x, false, false)), true));
    let var_3 = -11115i;
    return _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-firstLeadingBit(-vec3<i32>(0i, 0i, arg_1)), -(~var_0.b)), -_wgslsmith_add_vec3_i32(vec3<i32>(-45212i, 1i, firstLeadingBit(arg_1)), -abs(var_1.e.b)));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    global0 = array<f32, 19>();
    let var_0 = Struct_4(vec2<bool>(func_2().b.x, select(_wgslsmith_sub_i32(u_input.b, 41983i) == -1i, select(false, all(vec3<bool>(true, false, true)), true), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 63125u, u_input.c.x, 35028u), vec4<u32>(1u, 31714u, arg_3, arg_3)) <= func_3(vec4<i32>(0i, arg_0.x, arg_2.x, arg_0.x), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 464f), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 19u)], -439f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), u_input.a)).x)), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, false, true))), any(vec3<bool>(true, true, true)), any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))));
    let var_1 = 0u;
    global0 = array<f32, 19>();
    var var_2 = true;
    return (((~var_1 << (~arg_1 % 32u)) & (u_input.c.x & arg_1)) << (~(~arg_3 | _wgslsmith_mod_u32(4294967295u, u_input.a.x)) % 32u)) << (firstLeadingBit(_wgslsmith_div_u32(abs(u_input.a.x), func_3(max(vec4<i32>(arg_2.x, 3994i, arg_2.x, -1i), vec4<i32>(u_input.b, 1i, -14244i, arg_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(1003u, 19u)])), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 853f, global0[_wgslsmith_index_u32(4294967295u, 19u)]), u_input.a)).x)) % 32u);
}

fn func_1(arg_0: vec4<bool>) -> vec4<bool> {
    global1 = array<Struct_3, 24>();
    var var_0 = u_input.a.x;
    var_0 = select(abs(~firstLeadingBit(54950u)), firstTrailingBit(24439u), !all(select(arg_0, vec4<bool>(false, true, true, true), arg_0))) >> ((~(~1u) & u_input.c.x) % 32u);
    global0 = array<f32, 19>();
    var var_1 = func_5(func_4(func_2(), ~((u_input.b & u_input.b) << (min(1u, 1u) % 32u)), vec3<bool>(arg_0.x, !arg_0.x, true)), _wgslsmith_mod_u32((u_input.a.x | _wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, u_input.c.x)) ^ ~2506u, min(_wgslsmith_mod_u32(abs(1u), _wgslsmith_div_u32(u_input.a.x, u_input.c.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, 0u, 66790u), vec4<u32>(u_input.a.x, 51465u, 4294967295u, u_input.c.x)))), abs(-_wgslsmith_sub_vec2_i32(select(vec2<i32>(3855i, -47507i), vec2<i32>(u_input.b, u_input.b), arg_0.x), min(vec2<i32>(-87032i, u_input.b), vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_sub_u32(4294967295u, countOneBits(0u)));
    return !(!select(!select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true), select(!vec4<bool>(arg_0.x, false, false, arg_0.x), !arg_0, arg_0.x), !select(arg_0, arg_0, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 19>();
    let var_0 = !(!func_1(vec4<bool>(true, true, true, 35759i >= u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(abs(873f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f) - _wgslsmith_f_op_f32(max(1104f, global0[_wgslsmith_index_u32(4294967295u, 19u)]))))) - global0[_wgslsmith_index_u32(u_input.c.x, 19u)]);
    let var_2 = func_1(vec4<bool>(all(var_0.yzz), any(func_2().b), u_input.b != (-u_input.b ^ -10341i), var_0.x));
    let var_3 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -223f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1078f, global0[_wgslsmith_index_u32(u_input.c.x, 19u)]) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1481f, 2515f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 300f, global0[_wgslsmith_index_u32(5461u, 19u)])))))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.c.x, 35113u, 1u) | abs(u_input.a), min(u_input.a | vec3<u32>(29864u, u_input.a.x, 0u), u_input.a), all(vec3<bool>(var_0.x, false, var_2.x))), select(vec3<u32>(u_input.a.x, 1u, abs(u_input.a.x)), _wgslsmith_add_vec3_u32(~u_input.a, _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.c.x, u_input.a.x, 0u))), var_0.xzy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -934f) - 439f));
}

