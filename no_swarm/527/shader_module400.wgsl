struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<i32>(63159i, 2147483647i, 35779i, -31670i), true, vec2<i32>(0i, -45013i), true, i32(-2147483648)), Struct_1(vec4<i32>(0i, -9321i, 24523i, -24113i), true, vec2<i32>(2147483647i, -1i), false, -1i), Struct_1(vec4<i32>(973i, 3749i, 2147483647i, -1i), true, vec2<i32>(-11955i, 2147483647i), false, 23742i), Struct_1(vec4<i32>(i32(-2147483648), -32264i, 2147483647i, -504i), false, vec2<i32>(6082i, -43463i), true, -10463i), Struct_1(vec4<i32>(0i, i32(-2147483648), 50735i, -1965i), true, vec2<i32>(21654i, 924i), false, i32(-2147483648)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 1513i, -65280i), false, vec2<i32>(-26975i, 3983i), false, 2147483647i), Struct_1(vec4<i32>(0i, i32(-2147483648), 2147483647i, 1i), true, vec2<i32>(2147483647i, i32(-2147483648)), true, 8586i), Struct_1(vec4<i32>(-16257i, 17558i, -23906i, -18253i), false, vec2<i32>(-32609i, i32(-2147483648)), true, 2147483647i), Struct_1(vec4<i32>(-1i, -30399i, i32(-2147483648), 0i), false, vec2<i32>(1i, -11094i), true, 59047i), Struct_1(vec4<i32>(12302i, -35889i, -272i, 15885i), false, vec2<i32>(-29477i, 1i), false, 14619i), Struct_1(vec4<i32>(2147483647i, 11286i, i32(-2147483648), i32(-2147483648)), true, vec2<i32>(0i, 7464i), true, 2147483647i), Struct_1(vec4<i32>(33888i, 36432i, -1i, i32(-2147483648)), true, vec2<i32>(0i, -1i), false, 30632i), Struct_1(vec4<i32>(40416i, -1i, i32(-2147483648), 1i), true, vec2<i32>(26937i, 4701i), false, 0i), Struct_1(vec4<i32>(i32(-2147483648), -65607i, i32(-2147483648), -7618i), false, vec2<i32>(0i, 14180i), true, 17659i), Struct_1(vec4<i32>(1i, -18694i, 26714i, -9220i), false, vec2<i32>(2147483647i, 1i), false, i32(-2147483648)), Struct_1(vec4<i32>(i32(-2147483648), 3527i, -6888i, -1i), false, vec2<i32>(2147483647i, 1i), true, -56004i), Struct_1(vec4<i32>(47609i, -47929i, -1i, -2624i), true, vec2<i32>(i32(-2147483648), -35354i), true, i32(-2147483648)), Struct_1(vec4<i32>(-17781i, 1i, 0i, 1i), true, vec2<i32>(10881i, 2147483647i), false, 1i), Struct_1(vec4<i32>(57739i, i32(-2147483648), -63642i, -39511i), true, vec2<i32>(2147483647i, 1i), false, 1i), Struct_1(vec4<i32>(4791i, 27890i, -9665i, -59015i), true, vec2<i32>(2147483647i, 25737i), false, 1i), Struct_1(vec4<i32>(14698i, 0i, -56374i, -28755i), false, vec2<i32>(-14031i, 1i), true, 40321i), Struct_1(vec4<i32>(-38787i, 2147483647i, 0i, -1i), true, vec2<i32>(-21265i, -1i), true, -52180i), Struct_1(vec4<i32>(-1i, i32(-2147483648), 2147483647i, -23516i), false, vec2<i32>(9913i, 0i), true, i32(-2147483648)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, -32377i), true, vec2<i32>(44352i, 13696i), false, -1i));

var<private> global2: array<vec4<u32>, 21>;

var<private> global3: f32;

var<private> global4: array<u32, 16>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<u32> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(607f + _wgslsmith_f_op_f32(-329f + _wgslsmith_f_op_f32(sign(-460f)))))));
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 24u)]);
    let var_1 = -14056i;
    global4 = array<u32, 16>();
    var var_2 = _wgslsmith_dot_vec2_u32(u_input.a.zx, select(_wgslsmith_sub_vec2_u32(vec2<u32>(abs(global4[_wgslsmith_index_u32(u_input.a.x, 16u)]), ~1u), vec2<u32>(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(0u, 21u)]), 43405u)), ~_wgslsmith_add_vec2_u32(~u_input.a.zz, u_input.a.yx << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), var_0.a.b));
    return ~(~firstLeadingBit(vec2<u32>(reverseBits(u_input.a.x), u_input.a.x)));
}

fn func_2() -> Struct_3 {
    global2 = array<vec4<u32>, 21>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 11248i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x ^ -2147483647i, u_input.b.x, 2147483647i), abs(vec4<i32>(695i, -1i, -1i, 24724i) << (global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(53870u, 16u)], 16u)], 21u)] % vec4<u32>(32u))), ~vec4<i32>(56847i, 45935i, 0i, 0i)), any(vec2<bool>(true, true)), (-u_input.b.yy >> (func_3() % vec2<u32>(32u))) ^ vec2<i32>(0i, 30750i), true, u_input.b.x));
    let var_1 = true;
    let var_2 = Struct_2(var_0.a);
    global1 = array<Struct_1, 24>();
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2087f * 1000f), _wgslsmith_f_op_f32(trunc(-730f))), Struct_1(-abs(vec4<i32>(51i, -91530i, -5843i, -12743i)) & ~(~var_2.a.a), var_1, ~var_0.a.c, true, -var_2.a.c.x), vec2<i32>(var_2.a.c.x ^ min(17468i, 0i), _wgslsmith_add_i32(-var_0.a.c.x, u_input.b.x)) ^ var_2.a.c, true);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> i32 {
    let var_0 = !any(!vec2<bool>(true, arg_1));
    let var_1 = ~firstTrailingBit(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(42139u, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)]), u_input.a.x << (arg_2.x % 32u), 50184u), ~0u), 16u)]);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a, arg_0.a, 378f, 623f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 1000f, arg_0.a, arg_0.a)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.a, arg_0.a, arg_0.a)))))));
    global1 = array<Struct_1, 24>();
    var var_3 = Struct_2(func_2().b);
    return 1i;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = -u_input.b.x;
    let var_1 = vec2<i32>(abs(-u_input.b.x), 1i);
    let var_2 = Struct_1(vec4<i32>(~(~_wgslsmith_mod_i32(-36465i, -20602i)), u_input.b.x, func_4(func_2(), false, ~u_input.a, true), arg_0.e), false, vec2<i32>(_wgslsmith_mult_i32(0i, 51547i), 13562i), firstTrailingBit(abs(abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(54173u, 16u)], 16u)], 16u)]))) >= ~0u, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(~(-11887i), -19311i), select(3161i, firstLeadingBit(var_0), false)));
    var var_3 = func_2().d;
    var var_4 = var_1.x;
    return global4[_wgslsmith_index_u32((_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 35158u, 19039u), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30163u, 16u)], 16u)], 21u)]), ~44357u), u_input.a.yx) ^ 0u) & ~abs(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6848u, 16u)], 16u)], 16u)] << (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 21u)], vec4<u32>(1u, u_input.a.x, global4[_wgslsmith_index_u32(93041u, 16u)], 38802u)) % 32u)), 16u)];
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(abs(-164f)), func_2().b, arg_2.c, (-arg_2.a.x ^ -51952i) < -1i);
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(588f, func_2().a) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(var_0.a * 474f))))), arg_2, ~(var_0.c << (vec2<u32>(1453u, arg_3.x) % vec2<u32>(32u))) >> ((vec2<u32>(func_3().x, arg_3.x) ^ ~(~vec2<u32>(arg_0, 0u))) % vec2<u32>(32u)), !(_wgslsmith_sub_i32(-1i, arg_2.e) != (arg_2.c.x << (min(31093u, 0u) % 32u))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(arg_1 - -310f)) - func_2().a) >= 637f;
    global1 = array<Struct_1, 24>();
    let var_1 = ~select(4294967295u << (arg_0 % 32u), ~1u, !(!arg_2.d));
    return Struct_2(func_2().b);
}

fn func_6(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    let var_0 = !arg_3.a.d;
    let var_1 = ~_wgslsmith_add_vec3_u32(min(countOneBits(~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], global4[_wgslsmith_index_u32(61914u, 16u)], 4912u)), firstTrailingBit(vec3<u32>(global4[_wgslsmith_index_u32(50089u, 16u)], 12639u, global4[_wgslsmith_index_u32(u_input.a.x, 16u)]) << (u_input.a % vec3<u32>(32u)))), ~vec3<u32>(~global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 16u)], _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(67824u, global4[_wgslsmith_index_u32(u_input.a.x, 16u)]))));
    let var_2 = abs(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -49532i, u_input.b.x) | vec3<i32>(u_input.b.x, 2147483647i, 2147483647i), u_input.b), select(_wgslsmith_mult_vec3_i32(reverseBits(arg_2.a.yxx), vec3<i32>(u_input.b.x, -1i, arg_2.c.x) | arg_2.a.xzw), u_input.b, vec3<bool>(arg_3.a.b, !arg_3.a.d, !arg_2.d))));
    global0 = true;
    global2 = array<vec4<u32>, 21>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true && (36624u == ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 1u, u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 16u)])), vec4<u32>(global4[_wgslsmith_index_u32(11038u, 16u)], 4294967295u, global4[_wgslsmith_index_u32(81501u, 16u)], u_input.a.x)));
    var var_1 = Struct_2(Struct_1(vec4<i32>(u_input.b.x, countOneBits(-u_input.b.x), -1i, u_input.b.x), var_0, vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.b.x), all(vec2<bool>(true, global4[_wgslsmith_index_u32(1u, 16u)] <= 1u)), -_wgslsmith_add_i32(-1i, _wgslsmith_add_i32(-2147483647i, 15359i))));
    var var_2 = func_6(true, ~vec2<i32>(-23930i, var_1.a.e), global1[_wgslsmith_index_u32(~(~u_input.a.x), 24u)], func_5(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~96266u, 0u), global4[_wgslsmith_index_u32(func_1(global1[_wgslsmith_index_u32(~921u, 24u)]), 16u)], select(~98433u, firstLeadingBit(1u), true)), _wgslsmith_div_f32(-754f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2112f, -1238f), -752f))), var_1.a, u_input.a.xy));
    global1 = array<Struct_1, 24>();
    let var_3 = u_input.a.x;
    var var_4 = vec3<i32>(2147483647i, func_6(any(select(vec2<bool>(true, var_1.a.d), vec2<bool>(var_0, false), vec2<bool>(var_0, var_1.a.b))), u_input.b.xy, func_5(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_3, 84352u, global4[_wgslsmith_index_u32(var_3, 16u)]), vec4<u32>(var_3, u_input.a.x, 0u, 71180u)), 16u)], _wgslsmith_f_op_f32(var_2.a + -852f), var_2.b, ~vec2<u32>(50390u, global4[_wgslsmith_index_u32(var_3, 16u)])).a, func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3, 0u), u_input.a.xx), _wgslsmith_f_op_f32(abs(-856f)), func_6(var_1.a.b, vec2<i32>(2147483647i, var_1.a.a.x), var_1.a, Struct_2(Struct_1(vec4<i32>(-1i, var_1.a.c.x, var_1.a.a.x, var_2.b.a.x), true, var_2.b.c, true, var_1.a.a.x))).b, vec2<u32>(103275u, var_3))).b.c.x >> (_wgslsmith_div_u32(4294967295u, 6513u) % 32u), var_1.a.e);
    var var_5 = func_6(all(select(!vec4<bool>(true, false, var_0, false), !select(vec4<bool>(var_0, var_1.a.b, var_2.b.d, false), vec4<bool>(true, true, var_2.b.b, var_0), true), var_2.a < -851f)), func_6(!(firstTrailingBit(var_3) == global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~39129u, 16u)], 16u)], 16u)]), -vec2<i32>(_wgslsmith_mod_i32(var_2.c.x, var_1.a.a.x), var_2.b.e), var_1.a, func_5(4294967295u, var_2.a, func_5(~4294967295u, 367f, Struct_1(vec4<i32>(u_input.b.x, var_4.x, -39126i, u_input.b.x), false, vec2<i32>(0i, 27942i), true, var_2.b.c.x), u_input.a.zy).a, countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, var_3), vec2<u32>(0u, 4294967295u), vec2<u32>(53862u, 1u))))).b.c, Struct_1(vec4<i32>(var_4.x, func_2().b.a.x, -34434i, u_input.b.x) | var_2.b.a, true, _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 0i) | var_4.yy, vec2<i32>(-74064i, countOneBits(var_2.b.a.x))), var_0, -2147483647i), func_5(firstTrailingBit(var_3), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.a)), _wgslsmith_f_op_f32(var_2.a + var_2.a)) * -2231f), Struct_1(func_5(min(0u, var_3), var_2.a, var_2.b, vec2<u32>(u_input.a.x, global4[_wgslsmith_index_u32(var_3, 16u)]) ^ u_input.a.xy).a.a, !(var_1.a.b | true), var_1.a.c, var_1.a.b, select(var_4.x, 0i, false)), ~vec2<u32>(u_input.a.x, _wgslsmith_div_u32(var_3, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(491f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_5.a, _wgslsmith_f_op_f32(-826f + _wgslsmith_f_op_f32(ceil(-1073f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1009f, var_5.a))) - vec2<f32>(var_2.a, var_2.a)), false)), _wgslsmith_mod_vec3_i32((vec3<i32>(27604i, var_4.x, 2147483647i) | max(vec3<i32>(var_1.a.a.x, -12379i, 32218i), vec3<i32>(0i, 1i, var_2.b.a.x))) >> (u_input.a % vec3<u32>(32u)), var_5.b.a.zwz));
}

