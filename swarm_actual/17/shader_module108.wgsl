struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_1(1161f, false, vec2<f32>(135f, -271f), vec2<i32>(i32(-2147483648), 85543i)), 1284f, Struct_1(332f, true, vec2<f32>(-1378f, 168f), vec2<i32>(i32(-2147483648), 11516i)), Struct_2(4294967295u), vec4<u32>(0u, 7357u, 37330u, 102444u)), Struct_3(Struct_1(1106f, true, vec2<f32>(285f, -561f), vec2<i32>(20576i, 13752i)), 613f, Struct_1(-633f, true, vec2<f32>(148f, 2293f), vec2<i32>(6894i, -60697i)), Struct_2(4294967295u), vec4<u32>(9676u, 0u, 0u, 41701u)), Struct_3(Struct_1(1422f, false, vec2<f32>(268f, 1208f), vec2<i32>(45341i, 0i)), -459f, Struct_1(-1856f, true, vec2<f32>(-100f, 715f), vec2<i32>(-16176i, -1i)), Struct_2(0u), vec4<u32>(4294967295u, 0u, 14626u, 0u)), Struct_3(Struct_1(-1000f, true, vec2<f32>(429f, 1262f), vec2<i32>(i32(-2147483648), -5335i)), -2098f, Struct_1(1275f, true, vec2<f32>(-252f, -581f), vec2<i32>(6968i, 11721i)), Struct_2(4294967295u), vec4<u32>(1u, 31774u, 23163u, 45384u)), Struct_3(Struct_1(100f, false, vec2<f32>(-1054f, 124f), vec2<i32>(2147483647i, -20034i)), -1720f, Struct_1(-503f, true, vec2<f32>(778f, -450f), vec2<i32>(21174i, -46227i)), Struct_2(12410u), vec4<u32>(118504u, 27736u, 144116u, 17270u)), Struct_3(Struct_1(-1297f, true, vec2<f32>(353f, -3158f), vec2<i32>(1i, 112495i)), -1000f, Struct_1(763f, false, vec2<f32>(-1000f, 639f), vec2<i32>(-6209i, 0i)), Struct_2(22952u), vec4<u32>(30126u, 4294967295u, 4294967295u, 4294967295u)), Struct_3(Struct_1(1398f, false, vec2<f32>(219f, 1405f), vec2<i32>(28628i, 1i)), -443f, Struct_1(-642f, false, vec2<f32>(-1144f, 287f), vec2<i32>(0i, 61309i)), Struct_2(25849u), vec4<u32>(31101u, 1u, 23062u, 1u)), Struct_3(Struct_1(629f, false, vec2<f32>(-137f, 964f), vec2<i32>(0i, 1i)), -618f, Struct_1(-631f, false, vec2<f32>(1566f, -843f), vec2<i32>(2147483647i, 2147483647i)), Struct_2(4294967295u), vec4<u32>(0u, 73141u, 1u, 0u)), Struct_3(Struct_1(-1991f, false, vec2<f32>(-310f, -384f), vec2<i32>(-45514i, 1i)), 1145f, Struct_1(1739f, true, vec2<f32>(-1248f, 2496f), vec2<i32>(27860i, 1i)), Struct_2(0u), vec4<u32>(1u, 11611u, 62256u, 4294967295u)), Struct_3(Struct_1(-304f, false, vec2<f32>(-992f, 128f), vec2<i32>(i32(-2147483648), 6210i)), -361f, Struct_1(916f, true, vec2<f32>(-2544f, 709f), vec2<i32>(-74040i, -10544i)), Struct_2(1u), vec4<u32>(45610u, 1u, 1563u, 0u)), Struct_3(Struct_1(-387f, false, vec2<f32>(-508f, -1243f), vec2<i32>(33877i, -24155i)), -1308f, Struct_1(-141f, false, vec2<f32>(-1321f, 1027f), vec2<i32>(2147483647i, 3561i)), Struct_2(4294967295u), vec4<u32>(29422u, 4879u, 1u, 117126u)), Struct_3(Struct_1(-496f, false, vec2<f32>(1874f, 2231f), vec2<i32>(1i, 2147483647i)), 1080f, Struct_1(-1000f, false, vec2<f32>(-979f, 338f), vec2<i32>(-31132i, 0i)), Struct_2(33596u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u)), Struct_3(Struct_1(-578f, false, vec2<f32>(1273f, 876f), vec2<i32>(16870i, 1i)), 456f, Struct_1(-2089f, false, vec2<f32>(-299f, -198f), vec2<i32>(31373i, -4995i)), Struct_2(4294967295u), vec4<u32>(24322u, 1u, 66720u, 69282u)), Struct_3(Struct_1(-554f, true, vec2<f32>(-1891f, 611f), vec2<i32>(-1i, 43547i)), -630f, Struct_1(-1698f, true, vec2<f32>(1133f, 463f), vec2<i32>(49562i, i32(-2147483648))), Struct_2(4294967295u), vec4<u32>(4294967295u, 14445u, 45614u, 15327u)), Struct_3(Struct_1(796f, false, vec2<f32>(102f, 333f), vec2<i32>(31874i, 22599i)), 1547f, Struct_1(-601f, true, vec2<f32>(602f, -143f), vec2<i32>(36917i, 8237i)), Struct_2(0u), vec4<u32>(4294967295u, 97523u, 86333u, 92198u)), Struct_3(Struct_1(913f, true, vec2<f32>(1664f, 1714f), vec2<i32>(-25471i, -1i)), 493f, Struct_1(-150f, false, vec2<f32>(-248f, 643f), vec2<i32>(0i, 1i)), Struct_2(11788u), vec4<u32>(35730u, 910u, 16452u, 0u)), Struct_3(Struct_1(3121f, true, vec2<f32>(-798f, -1108f), vec2<i32>(-1i, -1i)), 1000f, Struct_1(665f, true, vec2<f32>(850f, -108f), vec2<i32>(0i, 0i)), Struct_2(4808u), vec4<u32>(4294967295u, 0u, 76144u, 1u)), Struct_3(Struct_1(1349f, true, vec2<f32>(841f, 223f), vec2<i32>(i32(-2147483648), 0i)), 1065f, Struct_1(946f, false, vec2<f32>(933f, 572f), vec2<i32>(-2844i, -60970i)), Struct_2(4294967295u), vec4<u32>(69491u, 23377u, 0u, 1u)), Struct_3(Struct_1(222f, true, vec2<f32>(1000f, 235f), vec2<i32>(-52425i, 1i)), -1487f, Struct_1(-561f, true, vec2<f32>(1415f, 2512f), vec2<i32>(i32(-2147483648), 1i)), Struct_2(573u), vec4<u32>(43735u, 1457u, 136831u, 1u)));

var<private> global1: u32 = 7054u;

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, 44097i);

var<private> global3: Struct_1;

var<private> global4: array<i32, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_vec4_i32(min(-firstLeadingBit(vec4<i32>(global3.d.x, global4[_wgslsmith_index_u32(7660u, 8u)], -10752i, 2147483647i)), vec4<i32>(reverseBits(~global2.x), reverseBits(global2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.x, 10681i, global3.d.x), ~vec4<i32>(-2147483647i, 54995i, -2147483647i, global3.d.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -28989i, global2.x, global4[_wgslsmith_index_u32(1u, 8u)]), vec4<i32>(global3.d.x, global4[_wgslsmith_index_u32(u_input.a, 8u)], global3.d.x, global3.d.x)))), vec4<i32>(-1i) * -(~(-vec4<i32>(global3.d.x, 1i, global2.x, global4[_wgslsmith_index_u32(4192u, 8u)]))));
    global2 = var_0.xz;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-864f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0))))) * _wgslsmith_div_f32(global3.c.x, arg_0)), true, vec2<f32>(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_div_f32(-241f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.c.x, 164f), -2324f)))), -(var_0.zy & (vec2<i32>(25089i, -2147483647i) ^ countOneBits(vec2<i32>(global3.d.x, global2.x)))));
    global2 = (global3.d ^ vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global3.d.x, 1i, -1i), 2147483647i), _wgslsmith_mod_i32(abs(3058i), ~(-2147483647i)))) | -vec2<i32>(-1i, 2147483647i);
    global0 = array<Struct_3, 19>();
    return vec3<u32>(countOneBits(~(~u_input.a)), 56031u, 4294967295u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = vec4<i32>(global2.x, 33136i, global3.d.x, _wgslsmith_dot_vec4_i32(min(-firstLeadingBit(vec4<i32>(-22480i, arg_2.d.x, 69132i, -42355i)), vec4<i32>(15367i, 18083i, 54970i, -18562i) << ((vec4<u32>(98367u, 0u, 4294967295u, u_input.a) | vec4<u32>(u_input.a, 104826u, 0u, arg_0.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32((vec4<i32>(-53627i, -25859i, global2.x, global2.x) ^ vec4<i32>(global3.d.x, global4[_wgslsmith_index_u32(4294967295u, 8u)], 11882i, global4[_wgslsmith_index_u32(0u, 8u)])) << (reverseBits(vec4<u32>(38011u, 4294967295u, 1u, 13728u)) % vec4<u32>(32u)), vec4<i32>(arg_2.d.x, -1i, arg_1.x, 0i))));
    var_0 = countOneBits(vec4<i32>(_wgslsmith_add_i32(0i, -_wgslsmith_clamp_i32(var_0.x, global4[_wgslsmith_index_u32(580u, 8u)], global2.x)), _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2926i, -2147483647i, global4[_wgslsmith_index_u32(u_input.a, 8u)]), select(vec3<i32>(arg_2.d.x, 17824i, 2147483647i), vec3<i32>(-2717i, global2.x, global4[_wgslsmith_index_u32(arg_0.x, 8u)]), vec3<bool>(false, arg_2.b, true)))), 449i, arg_1.x));
    let var_1 = Struct_2(15254u);
    let var_2 = 1u;
    var var_3 = select(vec3<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(global3.b, global3.b), true)), all(select(select(vec3<bool>(global3.b, true, true), vec3<bool>(arg_2.b, arg_2.b, true), arg_2.b), vec3<bool>(arg_2.b, true, global3.b), !vec3<bool>(true, global3.b, true)))), !vec3<bool>(false, true & (global3.b && true), all(select(vec3<bool>(global3.b, arg_2.b, arg_2.b), vec3<bool>(arg_2.b, false, global3.b), vec3<bool>(global3.b, false, global3.b)))), select(global3.b, !all(!vec4<bool>(arg_2.b, false, true, arg_2.b)), arg_2.b));
    return abs(global3.d);
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    global3 = Struct_1(_wgslsmith_f_op_f32(global3.a - -572f), false || arg_0.x, global3.c, ~countOneBits(-vec2<i32>(1i, global2.x)) | _wgslsmith_div_vec2_i32(global3.d, vec2<i32>(-10498i, _wgslsmith_mult_i32(global3.d.x, 0i))));
    let var_0 = Struct_1(-127f, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) + 1475f), global3.c.x)), firstTrailingBit(global3.d));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-735f + _wgslsmith_div_f32(_wgslsmith_div_f32(global3.a, -354f), global3.a)), global3.b, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)))), var_0.c.x), func_4(_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.a, 4294967295u, u_input.a), func_3(-462f)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)) | vec3<u32>(72434u, 0u, u_input.a)), ~(~vec3<i32>(0i, 1i, -2147483647i)), var_0));
    let var_2 = !vec3<bool>(all(vec3<bool>(true, true, !var_0.b)), global3.b, true);
    var var_3 = func_4(max(min(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, 60928u), vec3<u32>(1u, u_input.a, 4294967295u) << (vec3<u32>(0u, 0u, u_input.a) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.a, 82562u, 82073u))), countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 39565u), vec3<u32>(0u, u_input.a, u_input.a)), 8388u, 35312u))), firstLeadingBit(vec3<i32>(-1i) * -countOneBits(vec3<i32>(var_0.d.x, global4[_wgslsmith_index_u32(u_input.a, 8u)], global3.d.x))), var_0);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, firstLeadingBit(~abs(u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(1u), ~u_input.a, _wgslsmith_mod_u32(u_input.a, 53731u), 35750u), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(46928u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(19480u, u_input.a, 61599u, u_input.a))), _wgslsmith_mult_u32(~44548u, 0u)), vec4<u32>(~select(~u_input.a, u_input.a, any(vec4<bool>(arg_0.x, var_2.x, true, false))), u_input.a, u_input.a, ~(abs(31763u) | reverseBits(u_input.a))));
}

fn func_1() -> u32 {
    var var_0 = global3.d.x;
    var var_1 = global3.c;
    let var_2 = global0[_wgslsmith_index_u32(func_2(vec2<bool>(!global3.b, all(select(!vec3<bool>(global3.b, global3.b, false), vec3<bool>(false, global3.b, global3.b), vec3<bool>(global3.b, global3.b, true))))), 19u)];
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 19u)];
    var_3 = global0[_wgslsmith_index_u32(~var_3.e.x, 19u)];
    return var_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(u_input.a >> (func_1() % 32u), 17460u, ~_wgslsmith_clamp_u32(~1u, 1u, 0u));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(1u, 4294967295u), u_input.a), 8u)];
    global3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1819f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.a)) * _wgslsmith_f_op_f32(-global3.a)))), global3.b)), ~(-27325i) < global3.d.x, vec2<f32>(global3.a, -902f), vec2<i32>(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u << (var_0.x % 32u), select(0u, u_input.a, global3.b)), 8u)], -1i));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(448f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a + global3.a) - _wgslsmith_div_f32(-222f, -435f)), _wgslsmith_f_op_f32(max(1349f, _wgslsmith_f_op_f32(global3.a - -732f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(-6178i << (u_input.a % 32u)), 26855i);
}

