struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

var<private> global1: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-38130i, 0i, 2147483647i), vec3<i32>(0i, 2147483647i, 29292i), vec3<i32>(-15553i, 0i, -36563i), vec3<i32>(-7122i, -56631i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(2147483647i, i32(-2147483648), -45854i), vec3<i32>(-1i, -12043i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(0i, -14810i, -14022i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(6133i, 7920i, 0i), vec3<i32>(5397i, 2147483647i, 2779i), vec3<i32>(2147483647i, -21324i, 1i), vec3<i32>(8253i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, -20742i), vec3<i32>(0i, 1i, 20492i), vec3<i32>(4619i, -87707i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), -42500i), vec3<i32>(i32(-2147483648), 1i, -85638i), vec3<i32>(0i, 30584i, -45160i), vec3<i32>(-1i, -11009i, 0i), vec3<i32>(-75637i, 1i, 9817i), vec3<i32>(-32136i, 2147483647i, -16540i), vec3<i32>(-35302i, 0i, 3221i), vec3<i32>(-97988i, -1i, -1i), vec3<i32>(i32(-2147483648), -7175i, 1i), vec3<i32>(12661i, -68165i, 27334i), vec3<i32>(-14421i, -49750i, 48004i), vec3<i32>(-41712i, -7164i, 13540i), vec3<i32>(-51795i, -64316i, -1i), vec3<i32>(-60672i, 25456i, -39437i));

var<private> global2: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 117391u), vec3<u32>(2128u, 30510u, 14653u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(46132u, 14834u, 53429u), vec3<u32>(33355u, 4081u, 22755u), vec3<u32>(16086u, 18613u, 6237u), vec3<u32>(10818u, 4294967295u, 1u), vec3<u32>(0u, 44689u, 80751u), vec3<u32>(4294967295u, 15324u, 0u), vec3<u32>(4294967295u, 1u, 33204u), vec3<u32>(68218u, 4294967295u, 2008u), vec3<u32>(4294967295u, 16480u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 76316u, 4294967295u), vec3<u32>(29948u, 0u, 0u), vec3<u32>(4294967295u, 8895u, 0u), vec3<u32>(7007u, 33214u, 6550u), vec3<u32>(1u, 15596u, 4294967295u), vec3<u32>(16045u, 4294967295u, 19267u), vec3<u32>(0u, 4089u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 27308u, 11254u), vec3<u32>(23357u, 4294967295u, 0u), vec3<u32>(9084u, 33197u, 42119u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(35471u, 61224u, 104249u), vec3<u32>(4294967295u, 112317u, 25397u));

var<private> global3: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(-9938i, vec3<i32>(-12552i, -41052i, -42175i), 2147483647i), Struct_3(i32(-2147483648), vec3<i32>(-28691i, 2147483647i, i32(-2147483648)), 1i), Struct_3(20554i, vec3<i32>(-9405i, 34304i, 0i), i32(-2147483648)), Struct_3(1i, vec3<i32>(-17948i, 2147483647i, 2147483647i), -29291i), Struct_3(0i, vec3<i32>(1i, 1i, 0i), -10585i), Struct_3(-1i, vec3<i32>(i32(-2147483648), 2147483647i, -100055i), 0i), Struct_3(-10067i, vec3<i32>(-8957i, 1i, 1i), -13686i), Struct_3(-16934i, vec3<i32>(-35952i, 7804i, i32(-2147483648)), -1i), Struct_3(0i, vec3<i32>(6002i, 2147483647i, 10579i), i32(-2147483648)), Struct_3(0i, vec3<i32>(36599i, 2147483647i, 2147483647i), -23399i), Struct_3(-1i, vec3<i32>(1i, -12798i, 18542i), 29447i), Struct_3(0i, vec3<i32>(i32(-2147483648), -1i, 2147483647i), 0i), Struct_3(-24537i, vec3<i32>(-89082i, -1i, -23589i), 2147483647i), Struct_3(2147483647i, vec3<i32>(1i, -13477i, -19917i), -1i), Struct_3(10178i, vec3<i32>(2147483647i, -12484i, 2147483647i), -7027i), Struct_3(2147483647i, vec3<i32>(19475i, -1743i, 2147483647i), -1i), Struct_3(0i, vec3<i32>(-6152i, 0i, 0i), -7337i), Struct_3(-38381i, vec3<i32>(2147483647i, -1i, -34786i), -55867i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1139f, -1949f, -145f, 1000f) * vec4<f32>(-928f, -1056f, 1210f, 774f)), vec4<f32>(1f, 1f, 1f, 1f))))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(~26430u, 18u)];
    global3 = array<Struct_3, 18>();
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3());
    var var_2 = Struct_1(true, _wgslsmith_clamp_i32(u_input.d.x, 2147483647i, select(1i, var_0.b.x, any(vec4<bool>(false, true, false, true)))));
    var var_3 = 0i;
    return Struct_1(any(vec4<bool>(var_2.a, !(!var_2.a), true, true)), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, u_input.d.x, arg_2.a.x), abs(~global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 32u)])));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_0.a, abs(arg_2.b));
    var_0 = arg_2;
    let var_1 = global3[_wgslsmith_index_u32(42879u, 18u)];
    global1 = array<vec3<i32>, 32>();
    var var_2 = Struct_2(vec4<i32>(arg_0.b, 0i, -79811i << ((u_input.a.x | u_input.e.x) % 32u), 1i));
    return 54758i;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_i32(-(~(-arg_0.a.xxz)), vec3<i32>(func_2(u_input.b, 1230f, Struct_2(vec4<i32>(3260i, -2147483647i, 1i, -2416i))).b ^ -28255i, min(_wgslsmith_div_i32(-6720i, 14167i), 1i), func_2(19903u, -2182f, arg_0).b)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -1i, _wgslsmith_div_i32(arg_0.a.x, u_input.c)) ^ _wgslsmith_div_vec3_i32(countOneBits(global1[_wgslsmith_index_u32(u_input.b, 32u)]), vec3<i32>(-1i, 2147483647i, 1i)), vec3<i32>(-reverseBits(2147483647i), abs(arg_0.a.x), -arg_0.a.x)), min(611i, -13508i));
    global0 = array<vec2<f32>, 30>();
    global2 = array<vec3<u32>, 28>();
    global0 = array<vec2<f32>, 30>();
    let var_1 = -(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), var_0.b.yz) | _wgslsmith_mult_vec2_i32(var_0.b.xx, vec2<i32>(5686i, -35777i)), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(52014i, 16547i), vec2<i32>(u_input.c, -13625i)))) | var_0.b.zx);
    return Struct_1(true, countOneBits(-5093i));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: bool) -> Struct_2 {
    global2 = array<vec3<u32>, 28>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.b, 18u)];
    var var_1 = func_5(Struct_2(vec4<i32>(var_0.a, func_4(Struct_1(false, 11912i), arg_2, func_2(18595u, arg_2, Struct_2(vec4<i32>(-1i, -18986i, arg_0, 20402i)))), 1i, -(-2147483647i | arg_0))));
    var var_2 = u_input.a.x;
    var_1 = Struct_1(!var_1.a, select(-45849i, -firstLeadingBit(3565i), _wgslsmith_f_op_f32(-arg_2) >= _wgslsmith_f_op_f32(select(arg_2, arg_2, var_1.a))));
    return Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(~(var_1.b >> (u_input.a.x % 32u)), -2147483647i, _wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(u_input.b, 32u)], vec3<i32>(-58949i, var_0.b.x, var_1.b) << (vec3<u32>(u_input.a.x, u_input.e.x, 1u) % vec3<u32>(32u))), var_0.a ^ -30320i), vec4<i32>(-_wgslsmith_div_i32(u_input.c, 15518i), 28570i, _wgslsmith_div_i32(~var_1.b, i32(-1i) * -41566i), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~u_input.a.x, 4294967295u), u_input.b, _wgslsmith_sub_u32(u_input.b, 90249u)), _wgslsmith_sub_u32(u_input.b, reverseBits(u_input.a.x))));
    let var_1 = Struct_1(all(vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), true & any(vec3<bool>(true, true, false)), 23419u > (u_input.b << (4294967295u % 32u)))), -_wgslsmith_clamp_i32(u_input.c, u_input.c, 1i));
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) - -167f));
    var var_3 = func_1(-(~30465i), true, -958f, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_2)), -5527i & var_1.b, ~abs(reverseBits(u_input.e.yz << (u_input.e.ww % vec2<u32>(32u)))), 1114f);
}

