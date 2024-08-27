struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, true, false, false, true, false, false, false, true, true, false, false, true, true, false, true, false, true, true, true, true, false, true, true, true);

var<private> global1: array<f32, 12> = array<f32, 12>(395f, 1348f, 1255f, -222f, 375f, 258f, -889f, -292f, 193f, -1000f, 897f, -2558f);

var<private> global2: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(39034i, i32(-2147483648)), vec2<i32>(31373i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(14011i, 29541i), vec2<i32>(19944i, i32(-2147483648)), vec2<i32>(-1i, 18313i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 65388i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-5640i, -15687i), vec2<i32>(-36052i, 15214i), vec2<i32>(1i, 1i), vec2<i32>(48354i, -29071i), vec2<i32>(0i, 55013i), vec2<i32>(0i, 1i), vec2<i32>(-1i, 56357i), vec2<i32>(0i, 2147483647i));

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(21258i, -64275i, 40628i), vec2<i32>(-22793i, -41203i), 0u), vec2<u32>(52132u, 0u), vec4<f32>(1000f, 500f, 1561f, -2210f), vec4<bool>(true, false, true, true), 4294967295u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(35549i, -1i, 3366i), vec2<i32>(-1i, -51098i), 3604u), vec2<u32>(1u, 1u), vec4<f32>(-1267f, 374f, -1247f, -277f), vec4<bool>(false, false, false, false), 48355u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(5553i, -2481i, 0i), vec2<i32>(-1i, 16206i), 27823u), vec2<u32>(42202u, 1u), vec4<f32>(955f, 2965f, 1000f, -1073f), vec4<bool>(false, true, true, true), 4294967295u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(-26555i, i32(-2147483648), 2147483647i), vec2<i32>(4466i, -14993i), 20174u), vec2<u32>(32920u, 0u), vec4<f32>(-1000f, -780f, 725f, -793f), vec4<bool>(true, true, true, true), 1u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(28143i, 0i, i32(-2147483648)), vec2<i32>(-13141i, 33863i), 16999u), vec2<u32>(30251u, 1u), vec4<f32>(294f, 1594f, 778f, 356f), vec4<bool>(true, false, false, true), 17768u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(32369i, 1i, -26660i), vec2<i32>(-25599i, -1i), 54766u), vec2<u32>(1u, 4294967295u), vec4<f32>(854f, 1000f, 134f, 747f), vec4<bool>(false, false, true, false), 36202u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(-8411i, 1i, 43932i), vec2<i32>(-6599i, 47002i), 7264u), vec2<u32>(66149u, 0u), vec4<f32>(1000f, 135f, -1000f, 1959f), vec4<bool>(true, false, true, true), 78042u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(36043i, 4035i, -41031i), vec2<i32>(1i, 19813i), 4114u), vec2<u32>(0u, 1u), vec4<f32>(962f, 570f, 865f, -104f), vec4<bool>(false, true, false, false), 46764u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(42931i, 9458i, 1i), vec2<i32>(-32842i, -16128i), 88548u), vec2<u32>(0u, 16312u), vec4<f32>(-1188f, 1465f, -847f, 516f), vec4<bool>(true, true, false, true), 111394u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(-13790i, 3930i, 1i), vec2<i32>(-557i, 16348i), 0u), vec2<u32>(84540u, 28890u), vec4<f32>(-401f, 313f, -819f, -439f), vec4<bool>(true, false, true, false), 0u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(1i, 47265i, 11048i), vec2<i32>(18245i, 29455i), 0u), vec2<u32>(0u, 4294967295u), vec4<f32>(687f, 472f, -1388f, 1069f), vec4<bool>(false, true, true, true), 0u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(2147483647i, 2147483647i, -11467i), vec2<i32>(i32(-2147483648), i32(-2147483648)), 4294967295u), vec2<u32>(4553u, 1u), vec4<f32>(515f, 242f, -557f, -149f), vec4<bool>(true, true, false, false), 58663u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(0i, -7930i, i32(-2147483648)), vec2<i32>(2147483647i, -1330i), 8679u), vec2<u32>(5536u, 70442u), vec4<f32>(274f, 469f, 874f, -1098f), vec4<bool>(false, true, false, false), 12909u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(-1i, 1i, 2147483647i), vec2<i32>(-1i, -1i), 1u), vec2<u32>(16489u, 77939u), vec4<f32>(-262f, 1071f, -1087f, -746f), vec4<bool>(false, false, true, true), 235u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(-1i, 2294i, i32(-2147483648)), vec2<i32>(-38098i, 10189i), 1u), vec2<u32>(42436u, 0u), vec4<f32>(-361f, -928f, -1206f, -950f), vec4<bool>(true, false, true, false), 4294967295u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(i32(-2147483648), -16732i, 42065i), vec2<i32>(-29179i, -11865i), 1u), vec2<u32>(0u, 4294967295u), vec4<f32>(-1000f, 450f, 491f, -733f), vec4<bool>(true, false, true, true), 1u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(i32(-2147483648), 52110i, 1i), vec2<i32>(-38864i, 0i), 33350u), vec2<u32>(1u, 1u), vec4<f32>(-944f, -487f, -436f, 282f), vec4<bool>(false, false, true, false), 0u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(-4339i, -686i, 0i), vec2<i32>(19505i, 41062i), 4294967295u), vec2<u32>(1u, 3510u), vec4<f32>(-1000f, -1896f, 344f, -548f), vec4<bool>(true, true, true, true), 0u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(-9261i, 37368i, -1i), vec2<i32>(i32(-2147483648), -55571i), 4294967295u), vec2<u32>(4294967295u, 1u), vec4<f32>(293f, 566f, -286f, 653f), vec4<bool>(true, false, false, false), 43069u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(2147483647i, 7771i, 1i), vec2<i32>(39027i, 2147483647i), 52928u), vec2<u32>(16197u, 4294967295u), vec4<f32>(-174f, -1187f, 808f, -493f), vec4<bool>(true, true, false, true), 4294967295u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(40372i, i32(-2147483648), 2147483647i), vec2<i32>(28580i, 1i), 0u), vec2<u32>(27018u, 0u), vec4<f32>(401f, -237f, 552f, -891f), vec4<bool>(true, true, false, true), 33633u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(17879i, 3712i, -18423i), vec2<i32>(i32(-2147483648), -1i), 33890u), vec2<u32>(39839u, 52805u), vec4<f32>(-2216f, 1046f, -554f, -323f), vec4<bool>(true, true, true, true), 1u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(0i, 0i, -15279i), vec2<i32>(1i, -4161i), 56100u), vec2<u32>(20852u, 4294967295u), vec4<f32>(1000f, -1005f, 126f, 303f), vec4<bool>(true, false, false, false), 49613u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(-70993i, 43536i, 23963i), vec2<i32>(23344i, -1i), 81987u), vec2<u32>(4294967295u, 1u), vec4<f32>(-1466f, -1003f, -2059f, -1000f), vec4<bool>(true, false, true, false), 947u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(61369i, 9255i, -31758i), vec2<i32>(1i, i32(-2147483648)), 1u), vec2<u32>(45402u, 1u), vec4<f32>(-700f, -2164f, 1741f, -3109f), vec4<bool>(true, true, true, false), 1u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec2<i32>(29000i, i32(-2147483648)), 50595u), vec2<u32>(20196u, 1u), vec4<f32>(-1283f, 1252f, 663f, 100f), vec4<bool>(false, false, true, true), 1u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 1i, -43724i), vec2<i32>(-3607i, i32(-2147483648)), 36868u), vec2<u32>(0u, 1u), vec4<f32>(-1417f, 337f, 221f, -668f), vec4<bool>(false, false, false, true), 15501u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(i32(-2147483648), 2147483647i, 15606i), vec2<i32>(1i, 0i), 75302u), vec2<u32>(1u, 4294967295u), vec4<f32>(136f, -1864f, 1000f, -459f), vec4<bool>(false, true, true, false), 6092u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    let var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 12u)]));
    global3 = array<Struct_2, 28>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], 544f, 985f, 709f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-201f, global1[_wgslsmith_index_u32(24805u, 12u)], 1231f, -1136f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-471f * global1[_wgslsmith_index_u32(arg_0, 12u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 12u)] - 427f), global1[_wgslsmith_index_u32(~u_input.a, 12u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(47772u, 12u)] - -513f)), vec4<f32>(1258f, global1[_wgslsmith_index_u32(~arg_0, 12u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 12u)] + -352f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(26645u, 12u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-759f, -1000f, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec4<f32>(764f, -1615f, -524f, global1[_wgslsmith_index_u32(1u, 12u)]))))));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 12u)], -727f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) * _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(arg_0, 12u)], _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(trunc(-1000f))), var_2);
    return _wgslsmith_f_op_vec4_f32(round(var_2));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -767f, 796f, -2109f) - vec4<f32>(arg_2.c.x, 652f, -764f, -1328f))))) + arg_3.c);
    let var_1 = select(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 1u), ~countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.e, arg_3.b.x), vec2<u32>(17954u, 6596u)))), ~min(~(vec2<u32>(1175u, arg_2.e) << (arg_3.b % vec2<u32>(32u))), select(arg_3.b, vec2<u32>(1u, 5667u), any(arg_2.d.wwz))), select(vec2<bool>(~arg_0.d >= 79212u, any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_3.e, 26u)]))), !(!vec2<bool>(arg_2.a.a.x, true)), !select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 26u)]), arg_2.a.a, arg_0.a), arg_2.d.xw, vec2<bool>(arg_2.d.x, true))));
    let var_2 = Struct_1(!arg_2.a.a, min(vec3<i32>(2147483647i, arg_2.a.b.x, abs(arg_2.a.b.x ^ arg_3.a.b.x)), vec3<i32>(arg_2.a.b.x, arg_0.c.x, ~arg_3.a.c.x)), _wgslsmith_add_vec2_i32(~arg_3.a.c, vec2<i32>(-1i) * -arg_0.c), _wgslsmith_sub_u32(~16582u, arg_2.a.d));
    global1 = array<f32, 12>();
    let var_3 = Struct_1(vec2<bool>(all(arg_0.a), true), -arg_0.b, min(vec2<i32>(firstLeadingBit(-14195i), -var_2.b.x) << (min(~var_1, vec2<u32>(1u, arg_2.b.x) | arg_2.b) % vec2<u32>(32u)), firstLeadingBit(max(vec2<i32>(-34585i, var_2.b.x), vec2<i32>(2147483647i, -15887i))) | global2[_wgslsmith_index_u32(~(~u_input.a), 17u)]), u_input.a);
    return _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(109162u, arg_0.d), vec2<u32>(var_1.x, 7776u)) >> (~arg_2.b % vec2<u32>(32u)), ~(~arg_3.b), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, var_3.d))), arg_3.b), select(select(arg_3.b, ~vec2<u32>(var_1.x, arg_0.d), select(vec2<bool>(arg_3.a.a.x, arg_3.d.x), var_3.a, arg_2.a.a.x)), vec2<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), 19111u), false) ^ (_wgslsmith_mult_vec2_u32(arg_3.b & vec2<u32>(4294967295u, 0u), vec2<u32>(34353u, 1u)) ^ (var_1 << (var_1 % vec2<u32>(32u)))));
}

fn func_2() -> Struct_1 {
    var var_0 = select(func_4(Struct_1(!select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec2<bool>(global0[_wgslsmith_index_u32(36864u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)])), vec3<i32>(~48912i, -42154i >> (u_input.a % 32u), -13865i), vec2<i32>(~(-2147483647i), _wgslsmith_sub_i32(-26903i, 1i)), abs(_wgslsmith_add_u32(u_input.a, u_input.a))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, 1u), 15862u), 12u)] - -484f), Struct_2(Struct_1(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], true), select(vec3<i32>(-1i, -41187i, 66523i), vec3<i32>(5868i, -44205i, -1i), true), -vec2<i32>(-1i, -37354i), ~0u), vec2<u32>(_wgslsmith_add_u32(38158u, u_input.a), _wgslsmith_div_u32(14615u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(1u))), select(!vec4<bool>(global0[_wgslsmith_index_u32(32903u, 26u)], true, global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], false, false, global0[_wgslsmith_index_u32(43130u, 26u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(24768u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], true)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 1897u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(28131u, 128956u, u_input.a), vec3<u32>(0u, u_input.a, 12411u)))), global3[_wgslsmith_index_u32(8465u, 28u)]), _wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 21401u), vec2<u32>(1u, u_input.a)), vec2<u32>(38071u, u_input.a) & vec2<u32>(1u, 0u)), vec2<u32>(1u, ~max(u_input.a, u_input.a)), select(abs(vec2<u32>(u_input.a, u_input.a)), select(vec2<u32>(u_input.a, 82866u), vec2<u32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 26u)]), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)])) | ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u))), true && (_wgslsmith_f_op_vec4_f32(func_3(func_4(Struct_1(vec2<bool>(false, true), vec3<i32>(-10727i, -1829i, 0i), global2[_wgslsmith_index_u32(u_input.a, 17u)], 18630u), 662f, global3[_wgslsmith_index_u32(u_input.a, 28u)], Struct_2(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], true), vec3<i32>(-47693i, 25994i, 0i), vec2<i32>(2147483647i, 24773i), 4294967295u), vec2<u32>(u_input.a, 1u), vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], 298f, 903f, -2188f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(682u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), 4294967295u)).x)).x > global1[_wgslsmith_index_u32(1u, 12u)]));
    var var_1 = vec2<u32>(firstTrailingBit(u_input.a), 0u);
    global0 = array<bool, 26>();
    var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(3759u, select(~65175u ^ (u_input.a | var_1.x), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_1.x, 39386u, 80688u, 38130u)), select(vec4<u32>(u_input.a, 60294u, 1u, var_0.x), vec4<u32>(4294967295u, 60588u, var_0.x, var_1.x), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)], global0[_wgslsmith_index_u32(var_0.x, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)]))), all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)])))), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(abs(1u), u_input.a >> (u_input.a % 32u))), ~abs(vec2<u32>(u_input.a, u_input.a))));
    var var_2 = min(var_1.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_1.x, u_input.a, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, reverseBits(var_0.x), 3769u), ~(~vec3<u32>(var_1.x, var_1.x, 0u)))));
    return Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(59883u, 26u)]), vec3<i32>(-2046i, 1i, ~(min(0i, -22668i) << (~u_input.a % 32u))), global2[_wgslsmith_index_u32(~(~44012u), 17u)], 30674u);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    global1 = array<f32, 12>();
    var var_0 = _wgslsmith_dot_vec3_i32(countOneBits(-(arg_3.b << (vec3<u32>(arg_3.d, arg_3.d, 1u) % vec3<u32>(32u)))) << (_wgslsmith_add_vec3_u32(~countOneBits(vec3<u32>(4294967295u, arg_2.d, 4294967295u)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, 52741u)), vec3<u32>(u_input.a, 78571u, arg_0.e) >> (vec3<u32>(u_input.a, arg_2.d, arg_2.d) % vec3<u32>(32u)))) % vec3<u32>(32u)), arg_3.b);
    var var_1 = Struct_1(arg_2.a, ~(-arg_0.a.b), vec2<i32>(reverseBits(-(i32(-1i) * -7747i)), arg_3.b.x), 4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), u_input.a, arg_2.d, func_2().d), reverseBits(~vec4<u32>(28492u, arg_2.d, 1u, 13654u))) % 32u));
    let var_2 = arg_2;
    let var_3 = abs(-1i);
    return vec2<i32>(_wgslsmith_sub_i32(arg_1, arg_2.c.x << ((~arg_3.d | ~arg_0.e) % 32u)), arg_1);
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    global3 = array<Struct_2, 28>();
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, false == !arg_1.a.a.x), _wgslsmith_div_vec3_i32(arg_1.a.b, vec3<i32>(~arg_1.a.b.x, -arg_1.a.b.x, 2147483647i)), (vec2<i32>(34453i, -102632i) & vec2<i32>(7800i, arg_1.a.c.x)) & vec2<i32>(firstTrailingBit(arg_1.a.b.x), abs(19705i)), abs(0u & u_input.a)), select(_wgslsmith_mult_vec2_u32(arg_1.b, func_4(arg_1.a, -1803f, Struct_2(Struct_1(arg_1.a.a, vec3<i32>(-1i, arg_1.a.c.x, 2147483647i), vec2<i32>(arg_1.a.b.x, arg_1.a.b.x), 0u), vec2<u32>(u_input.a, 1u), arg_1.c, vec4<bool>(false, false, false, true), u_input.a), Struct_2(Struct_1(arg_1.d.zz, arg_1.a.b, arg_1.a.c, u_input.a), arg_1.b, arg_1.c, arg_1.d, 35397u))), ~arg_1.b, select(!vec2<bool>(arg_1.d.x, arg_1.d.x), select(vec2<bool>(false, arg_1.a.a.x), arg_1.a.a, global0[_wgslsmith_index_u32(arg_1.a.d, 26u)]), ~10674i <= ~arg_1.a.c.x)), arg_1.c, arg_1.d, ~countOneBits(1u << (reverseBits(0u) % 32u)));
    global3 = array<Struct_2, 28>();
    let var_1 = -1267f;
    global2 = array<vec2<i32>, 17>();
    return Struct_1(!var_0.a.a, vec3<i32>(reverseBits(var_0.a.c.x), ~_wgslsmith_add_i32(-var_0.a.b.x, max(24479i, arg_1.a.b.x)), arg_1.a.b.x), arg_1.a.c, _wgslsmith_mult_u32(0u, ~4294967295u));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    var var_0 = min(-min(vec3<i32>(countOneBits(arg_2.b.x), 2147483647i, ~(-1i)), arg_2.b), arg_1.b);
    global2 = array<vec2<i32>, 17>();
    var var_1 = func_6(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(42631u, 12u)], 219f))), vec2<f32>(639f, -511f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(91279u, 12u)] * global1[_wgslsmith_index_u32(arg_1.d, 12u)]))))), Struct_2(Struct_1(vec2<bool>(arg_1.a.x, !arg_2.a.x), ~vec3<i32>(1i, 1i, arg_2.c.x) & reverseBits(arg_2.b), func_5(global3[_wgslsmith_index_u32(arg_2.d, 28u)], arg_2.c.x, Struct_1(arg_1.a, vec3<i32>(var_0.x, var_0.x, 11192i), var_0.zz, arg_0.x), func_2()), ~_wgslsmith_add_u32(arg_2.d, 53996u)), vec2<u32>(~3227u, firstLeadingBit(arg_2.d)), vec4<f32>(global1[_wgslsmith_index_u32(arg_0.x, 12u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-2026f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 12u)]))), -324f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(f32(-1f) * -1827f)))), select(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(90751u, 26u)], arg_1.a.x, false), vec4<bool>(arg_2.a.x, arg_2.a.x, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(40530u, 26u)], arg_1.a.x, false)), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.d, 26u)], arg_2.a.x, arg_2.a.x, arg_1.a.x), !global0[_wgslsmith_index_u32(19757u, 26u)]), !vec4<bool>(arg_1.a.x, false, true, arg_2.a.x), global0[_wgslsmith_index_u32(u_input.a, 26u)]), (u_input.a >> (arg_2.d % 32u)) | func_2().d), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 12u)] + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 12u)])), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.d, 66275u), vec3<u32>(arg_2.d, arg_1.d, arg_0.x)))).x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(536u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)]) * vec2<f32>(global1[_wgslsmith_index_u32(arg_1.d, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]))))), 1676f);
    var var_2 = Struct_2(Struct_1(func_6(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(arg_2.d, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<f32>(543f, global1[_wgslsmith_index_u32(44390u, 12u)]))))), global3[_wgslsmith_index_u32(25600u, 28u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-228f, 402f))), _wgslsmith_f_op_f32(f32(-1f) * -645f)).a, ~select(arg_1.b, ~vec3<i32>(-13244i, arg_1.b.x, arg_1.b.x), select(vec3<bool>(arg_2.a.x, var_1.a.x, arg_2.a.x), vec3<bool>(arg_2.a.x, true, true), global0[_wgslsmith_index_u32(arg_1.d, 26u)])), var_1.b.xy, _wgslsmith_div_u32(1u, select(~u_input.a, reverseBits(arg_1.d), arg_2.d >= 1746u))), vec2<u32>(func_2().d, countOneBits(4294967295u)), _wgslsmith_div_vec4_f32(vec4<f32>(1262f, 1f, _wgslsmith_f_op_f32(select(-2423f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(43620u, 12u)]), all(vec2<bool>(var_1.a.x, arg_2.a.x)))), global1[_wgslsmith_index_u32(0u, 12u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], -883f, 1006f))))), !vec4<bool>(true, !arg_1.a.x, arg_2.a.x, !arg_1.a.x), ~_wgslsmith_mult_u32(~var_1.d ^ abs(44644u), _wgslsmith_mod_u32(~1u, arg_3)));
    var var_3 = true;
    return !vec4<bool>(any(select(var_2.d.zx, func_6(vec2<f32>(-172f, 121f), Struct_2(Struct_1(arg_1.a, vec3<i32>(1i, var_2.a.b.x, arg_1.b.x), vec2<i32>(1i, -30054i), var_1.d), var_2.b, var_2.c, vec4<bool>(global0[_wgslsmith_index_u32(var_1.d, 26u)], var_2.a.a.x, false, false), 65643u), vec2<f32>(var_2.c.x, -429f), var_2.c.x).a, true)), any(arg_1.a), var_1.a.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 28>();
    var var_0 = Struct_1(vec2<bool>(all(!func_1(vec2<u32>(u_input.a, 1u), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], true), vec3<i32>(-20855i, -1i, -2147483647i), vec2<i32>(-2147483647i, -6955i), u_input.a), Struct_1(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<i32>(6732i, -12697i, -2499i), vec2<i32>(7946i, -16787i), 9085u), u_input.a)), global1[_wgslsmith_index_u32(~select(u_input.a, 0u, false), 12u)] != -1448f), vec3<i32>(min(_wgslsmith_clamp_i32(1i, 1i, -1i) & 2147483647i, ~(-7548i)), max(8262i << (1u % 32u), _wgslsmith_mod_i32(-35661i, -63835i)) | func_2().b.x, ~(i32(-1i) * -10917i)), vec2<i32>(1i, 39888i), 0u);
    let var_1 = max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.d), ~vec2<u32>(var_0.d, 36617u)), firstTrailingBit(~vec2<u32>(var_0.d, u_input.a))), _wgslsmith_add_vec2_u32(~(vec2<u32>(62793u, 129041u) ^ vec2<u32>(1u, u_input.a)), vec2<u32>(~44861u, abs(u_input.a))) << (func_4(Struct_1(var_0.a, vec3<i32>(0i, 1i, var_0.c.x), -global2[_wgslsmith_index_u32(11392u, 17u)], _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(59178u, 4294967295u))), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~1u, 12u)])), Struct_2(Struct_1(var_0.a, vec3<i32>(10286i, 2147483647i, -2546i), vec2<i32>(-50337i, -11757i), 4294967295u), vec2<u32>(1u, 2u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, global1[_wgslsmith_index_u32(1u, 12u)], -2642f, -1937f)), select(vec4<bool>(true, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], false, global0[_wgslsmith_index_u32(var_0.d, 26u)], global0[_wgslsmith_index_u32(891u, 26u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.d, 26u)], var_0.a.x, var_0.a.x, var_0.a.x)), ~var_0.d), global3[_wgslsmith_index_u32(u_input.a, 28u)]) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(select(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, var_0.d, u_input.a, 68274u), vec4<u32>(83607u, var_0.d, u_input.a, var_0.d))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, u_input.a, 1u, u_input.a)), min(vec4<u32>(504u, var_1.x, 11278u, var_1.x), vec4<u32>(var_1.x, 1u, 14194u, 23746u))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0.d, 48496u), 26u)]), ~vec4<u32>(19489u, u_input.a, func_6(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], 1000f), Struct_2(Struct_1(vec2<bool>(true, var_0.a.x), vec3<i32>(-2147483647i, var_0.b.x, var_0.c.x), var_0.b.yy, var_0.d), var_1, vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], -1137f, 1184f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(var_0.d, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), var_1.x), vec2<f32>(-884f, global1[_wgslsmith_index_u32(var_0.d, 12u)]), global1[_wgslsmith_index_u32(var_1.x, 12u)]).d, ~var_0.d)), ~(~countOneBits(~vec4<u32>(212u, var_1.x, u_input.a, u_input.a))));
    let var_3 = Struct_1(var_0.a, ~vec3<i32>(-(0i ^ var_0.c.x), var_0.b.x, min(func_2().c.x, 1i)), firstTrailingBit(var_0.c), var_0.d);
    global3 = array<Struct_2, 28>();
    let var_4 = func_1(~vec2<u32>(~var_1.x, var_0.d), func_6(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24199u, 12u)]), -1314f))), Struct_2(Struct_1(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.d, 26u)], true), var_3.b, vec2<i32>(var_0.b.x, var_0.b.x), var_3.d >> (70678u % 32u)), var_2.zz, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_2.x, 12u)], 1000f, -664f, global1[_wgslsmith_index_u32(1u, 12u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], -297f, 589f, 1000f) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], 895f, 531f, 872f))), vec4<bool>(true, false || global0[_wgslsmith_index_u32(0u, 26u)], var_0.a.x || true, var_0.a.x || false), 1u), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-623f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(15587u, 12u)])))), Struct_1(vec2<bool>(true, true), ~firstLeadingBit(var_0.b), vec2<i32>(var_0.c.x, _wgslsmith_sub_i32(var_3.b.x, 2147483647i)), var_2.x), _wgslsmith_mod_u32(max(reverseBits(4294967295u), 4686u), max(var_3.d, var_2.x))).xy;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, global1[_wgslsmith_index_u32(var_1.x, 12u)], ~vec3<i32>(select(func_2().b.x, var_0.c.x, !var_3.a.x), -select(14612i, 0i, false), var_3.b.x), ~(~_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(u_input.a, 17u)], var_3.c)), vec3<u32>(~21517u, _wgslsmith_add_u32(select(0u, func_4(Struct_1(vec2<bool>(false, false), var_3.b, var_0.b.zx, 96074u), -1000f, Struct_2(var_3, var_2.ww, vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(var_2.x, 12u)], global1[_wgslsmith_index_u32(var_3.d, 12u)], 1902f), vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], var_4.x, var_3.a.x, false), 22694u), Struct_2(Struct_1(var_0.a, vec3<i32>(2147483647i, -31851i, var_3.c.x), global2[_wgslsmith_index_u32(var_1.x, 17u)], 0u), var_2.wz, vec4<f32>(global1[_wgslsmith_index_u32(89514u, 12u)], global1[_wgslsmith_index_u32(166547u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], 735f), vec4<bool>(false, true, var_3.a.x, false), 43557u)).x, all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], var_3.a.x, var_4.x))), var_2.x), u_input.a));
}

