struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(32215i, Struct_2(vec4<i32>(2147483647i, 37294i, i32(-2147483648), 1i), vec4<i32>(-23663i, 0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), -60034i, 25388i), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), -1121f), Struct_3(-15130i, Struct_2(vec4<i32>(-22255i, -8225i, 25813i, -8150i), vec4<i32>(-9264i, -1i, 1i, -6226i), vec3<i32>(-39643i, 49014i, 0i), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), 1000f), Struct_3(8746i, Struct_2(vec4<i32>(26671i, -39669i, 1i, 8360i), vec4<i32>(0i, 1i, -1i, 1i), vec3<i32>(i32(-2147483648), 0i, -4964i), vec3<bool>(false, true, false)), vec3<bool>(false, false, true), -1470f), Struct_3(-8837i, Struct_2(vec4<i32>(2147483647i, 1i, -27463i, -1i), vec4<i32>(2147483647i, i32(-2147483648), -928i, 2147483647i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), 627f), Struct_3(2147483647i, Struct_2(vec4<i32>(-1i, i32(-2147483648), 28867i, 28862i), vec4<i32>(21499i, 1i, 0i, -53559i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), -360f), Struct_3(-16090i, Struct_2(vec4<i32>(1i, i32(-2147483648), 0i, -14685i), vec4<i32>(-1i, 2147483647i, -39630i, 1i), vec3<i32>(0i, 2147483647i, 35397i), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), 784f), Struct_3(2147483647i, Struct_2(vec4<i32>(96736i, 0i, 37074i, i32(-2147483648)), vec4<i32>(-11072i, -2539i, 30964i, 1i), vec3<i32>(-17528i, 37630i, -15047i), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), 644f), Struct_3(40511i, Struct_2(vec4<i32>(42683i, -1i, -31620i, -1i), vec4<i32>(2098i, 2147483647i, 11926i, i32(-2147483648)), vec3<i32>(1i, 4670i, 1i), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), -2956f), Struct_3(36420i, Struct_2(vec4<i32>(-57839i, -1i, 1i, -35391i), vec4<i32>(-29478i, i32(-2147483648), 0i, 1i), vec3<i32>(i32(-2147483648), 24667i, 0i), vec3<bool>(false, false, true)), vec3<bool>(true, false, false), 487f), Struct_3(3218i, Struct_2(vec4<i32>(-1i, -31970i, i32(-2147483648), 1i), vec4<i32>(-29517i, 24367i, 2147483647i, 1i), vec3<i32>(36896i, -43062i, 46057i), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), 865f), Struct_3(2147483647i, Struct_2(vec4<i32>(2147483647i, -1i, 1409i, 2147483647i), vec4<i32>(-13171i, -57785i, 1i, i32(-2147483648)), vec3<i32>(-1i, 0i, 2147483647i), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), -1772f), Struct_3(i32(-2147483648), Struct_2(vec4<i32>(-3963i, 2147483647i, 24004i, 22257i), vec4<i32>(-12198i, 2147483647i, 2147483647i, 59708i), vec3<i32>(42190i, 1i, 26110i), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), -356f), Struct_3(16180i, Struct_2(vec4<i32>(28018i, 1i, i32(-2147483648), 11364i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(0i, 38971i, -32221i), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), -458f), Struct_3(2147483647i, Struct_2(vec4<i32>(16977i, -1i, 0i, 4939i), vec4<i32>(-29689i, 1i, 0i, 60568i), vec3<i32>(72741i, -52852i, 1i), vec3<bool>(false, true, true)), vec3<bool>(true, false, false), -701f), Struct_3(-1i, Struct_2(vec4<i32>(-1i, -52938i, 23330i, 1i), vec4<i32>(-12909i, 7524i, -32093i, 29407i), vec3<i32>(-72277i, -4054i, -30172i), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), 1000f), Struct_3(i32(-2147483648), Struct_2(vec4<i32>(0i, i32(-2147483648), -7374i, -39359i), vec4<i32>(2147483647i, 1i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 1i), vec3<bool>(false, true, false)), vec3<bool>(false, true, false), -1000f), Struct_3(35264i, Struct_2(vec4<i32>(13035i, -20192i, -362i, 2147483647i), vec4<i32>(35355i, 0i, -2752i, 0i), vec3<i32>(i32(-2147483648), 8990i, 5294i), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), -1825f), Struct_3(34835i, Struct_2(vec4<i32>(2147483647i, -21452i, 20200i, i32(-2147483648)), vec4<i32>(-7147i, 2147483647i, 43087i, 0i), vec3<i32>(0i, 2147483647i, 30359i), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), 1516f), Struct_3(-34652i, Struct_2(vec4<i32>(2147483647i, -6489i, 18061i, -37598i), vec4<i32>(1i, 2147483647i, 1i, 23557i), vec3<i32>(1i, -7030i, -1i), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), 976f), Struct_3(5060i, Struct_2(vec4<i32>(38527i, -31632i, 1i, -61829i), vec4<i32>(0i, 2147483647i, 31397i, -35408i), vec3<i32>(2147483647i, -43749i, 0i), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), 706f), Struct_3(-1i, Struct_2(vec4<i32>(-33183i, 1i, 2147483647i, 13452i), vec4<i32>(35746i, 2147483647i, -22502i, 1i), vec3<i32>(1023i, 1i, 16445i), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), 1114f), Struct_3(-24249i, Struct_2(vec4<i32>(i32(-2147483648), 5444i, 1i, -21856i), vec4<i32>(-6284i, 3442i, 13694i, 2147483647i), vec3<i32>(-50200i, 19593i, 12721i), vec3<bool>(true, false, false)), vec3<bool>(false, false, true), 811f), Struct_3(-57475i, Struct_2(vec4<i32>(41856i, 1i, 0i, 2147483647i), vec4<i32>(-1443i, -1i, -1i, -22235i), vec3<i32>(-1i, 1i, -1i), vec3<bool>(false, false, true)), vec3<bool>(true, false, false), 1352f), Struct_3(i32(-2147483648), Struct_2(vec4<i32>(46446i, 2147483647i, -33477i, -60335i), vec4<i32>(-22806i, -1i, 0i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 1i), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), -1000f), Struct_3(-10958i, Struct_2(vec4<i32>(0i, -40300i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 28863i), vec3<i32>(-30187i, 33490i, -88174i), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), -1016f), Struct_3(0i, Struct_2(vec4<i32>(-19172i, 21520i, 1i, 25565i), vec4<i32>(2147483647i, -1i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 32264i, i32(-2147483648)), vec3<bool>(true, false, true)), vec3<bool>(false, true, true), 1000f), Struct_3(0i, Struct_2(vec4<i32>(1i, -1i, -1i, -13049i), vec4<i32>(0i, -24448i, i32(-2147483648), 0i), vec3<i32>(0i, -1i, -1i), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), 1539f), Struct_3(-1i, Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(26713i, i32(-2147483648), 2147483647i, 9738i), vec3<i32>(1i, 281i, -1i), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), -302f));

var<private> global1: vec4<u32> = vec4<u32>(0u, 10928u, 8295u, 0u);

var<private> global2: Struct_4 = Struct_4(4294967295u, 62995u, Struct_1(vec3<bool>(true, false, false)), vec2<f32>(1147f, -191f), true);

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<i32>(1i, -6777i, -1i, 2147483647i), vec4<i32>(-13053i, -62i, 16714i, 0i), vec3<i32>(-24189i, 1978i, i32(-2147483648)), vec3<bool>(true, true, false)), Struct_2(vec4<i32>(-38349i, 0i, 1i, -1i), vec4<i32>(48045i, -1i, i32(-2147483648), 1i), vec3<i32>(0i, 13873i, i32(-2147483648)), vec3<bool>(false, true, false)), Struct_2(vec4<i32>(0i, 23150i, i32(-2147483648), 16039i), vec4<i32>(28419i, 24355i, i32(-2147483648), i32(-2147483648)), vec3<i32>(9528i, 1i, 23718i), vec3<bool>(true, false, true)), Struct_2(vec4<i32>(0i, i32(-2147483648), -5812i, -1i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 1i), vec3<i32>(1i, -25142i, 0i), vec3<bool>(true, false, false)), Struct_2(vec4<i32>(i32(-2147483648), 17756i, i32(-2147483648), -38632i), vec4<i32>(1i, -1i, -2790i, -15300i), vec3<i32>(0i, i32(-2147483648), -20858i), vec3<bool>(true, false, true)), Struct_2(vec4<i32>(2147483647i, 0i, 402i, -1i), vec4<i32>(-38666i, 0i, -1i, -1i), vec3<i32>(-62446i, 0i, 0i), vec3<bool>(false, true, false)), Struct_2(vec4<i32>(1i, 34729i, -1i, 1i), vec4<i32>(47354i, 2147483647i, 35861i, 1i), vec3<i32>(2147483647i, 2147483647i, -30483i), vec3<bool>(true, false, true)), Struct_2(vec4<i32>(28003i, 8565i, -48536i, 4322i), vec4<i32>(-1i, 1i, -6929i, -87274i), vec3<i32>(2147483647i, 1i, 1i), vec3<bool>(true, false, true)), Struct_2(vec4<i32>(59239i, 57596i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 1i, -32546i, -37470i), vec3<i32>(1i, -6880i, -28471i), vec3<bool>(true, true, true)), Struct_2(vec4<i32>(17839i, 0i, 2765i, -35923i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 54006i), vec3<i32>(2192i, 1i, -51850i), vec3<bool>(true, false, true)), Struct_2(vec4<i32>(0i, -16785i, i32(-2147483648), 0i), vec4<i32>(-1i, 6910i, -10456i, -1i), vec3<i32>(-1i, 2147483647i, 11018i), vec3<bool>(true, false, false)), Struct_2(vec4<i32>(2147483647i, -24286i, -26395i, 1i), vec4<i32>(-40330i, -7845i, i32(-2147483648), -6589i), vec3<i32>(38887i, 1i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_2(vec4<i32>(-54386i, 16296i, 0i, 82535i), vec4<i32>(1i, -5053i, -57926i, 0i), vec3<i32>(-8556i, -241i, 106880i), vec3<bool>(false, false, true)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = global2.a;
    var_0 = global2.a;
    global2 = Struct_4(reverseBits(_wgslsmith_mod_u32(u_input.c.x, max(29369u >> (global1.x % 32u), global2.b))), _wgslsmith_mod_u32(global1.x, 0u), Struct_1(select(arg_0.c, select(vec3<bool>(global2.e, true, false), !vec3<bool>(true, arg_0.c.x, global2.e), arg_3.d), !vec3<bool>(false, arg_3.d.x, arg_0.c.x))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(max(-511f, _wgslsmith_f_op_f32(round(arg_0.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.d.x))) + -909f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(953f - _wgslsmith_f_op_f32(-arg_0.d))) < global3.x);
    global4 = array<Struct_2, 13>();
    var var_1 = arg_0.d;
    return global2.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> Struct_3 {
    global1 = vec4<u32>(~global1.x, 24220u, u_input.a, global2.b);
    global2 = Struct_4(84368u << (select(~32573u, func_3(Struct_3(arg_1, Struct_2(vec4<i32>(u_input.b.x, 8934i, 79357i, -10834i), vec4<i32>(1i, u_input.b.x, u_input.b.x, arg_1), u_input.b, global2.c.a), vec3<bool>(false, global2.c.a.x, global2.c.a.x), 216f), u_input.b.xy, Struct_2(vec4<i32>(u_input.b.x, arg_1, u_input.b.x, arg_1), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, arg_1), vec3<i32>(10324i, 21413i, arg_1), vec3<bool>(global2.c.a.x, false, global2.c.a.x)), Struct_2(vec4<i32>(arg_1, 2147483647i, -2147483647i, -9621i), vec4<i32>(22061i, u_input.b.x, arg_1, -15916i), u_input.b, vec3<bool>(global2.c.a.x, true, true))), !(global2.e && true)) % 32u), global1.x, global2.c, vec2<f32>(global3.x, _wgslsmith_f_op_f32(min(-275f, 1000f))), !((all(vec3<bool>(global2.c.a.x, false, true)) | false) && all(!vec4<bool>(global2.c.a.x, global2.c.a.x, false, true))));
    let var_0 = global0[_wgslsmith_index_u32(1u, 28u)];
    var var_1 = global2.c;
    var var_2 = _wgslsmith_mod_vec4_i32(firstTrailingBit(select(firstLeadingBit(vec4<i32>(68710i, arg_1, var_0.a, 1i)), vec4<i32>(var_0.b.b.x, arg_1, -1i, 54549i), global2.a <= 12122u) & -(~vec4<i32>(var_0.a, var_0.a, var_0.b.a.x, 0i))), -vec4<i32>(select(_wgslsmith_sub_i32(9746i, u_input.b.x), 2147483647i, false), u_input.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.xx, var_0.b.a.zx), vec2<i32>(-14248i, 2147483647i)), var_0.b.a.x));
    return global0[_wgslsmith_index_u32(4294967295u, 28u)];
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_div_vec2_i32(max(vec2<i32>(_wgslsmith_div_i32(arg_0, -25830i), -16878i), arg_2.b.b.zx) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(18713u & u_input.a, global1.x)) % vec2<u32>(32u)), -(vec2<i32>(arg_0, arg_2.a) << ((global1.zy | abs(vec2<u32>(4294967295u, u_input.a))) % vec2<u32>(32u))));
    global0 = array<Struct_3, 28>();
    var_0 = vec2<i32>(-1i, 0i);
    var var_1 = !(!(!global2.c.a.zy));
    var var_2 = ~global2.a;
    return ~(~3476u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = Struct_4(~_wgslsmith_mod_u32(8090u, ~97173u) ^ select(23598u, global2.a, true), abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(firstTrailingBit(0u), 38617u), func_4(2147483647i, func_2(vec4<f32>(104f, arg_0, 534f, global2.d.x), u_input.b.x, 4294967295u), func_2(vec4<f32>(global3.x, global3.x, arg_0, 207f), u_input.b.x, 0u)))), global2.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, global2.d.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d * global2.d))), global3.zy)), true);
    let var_0 = Struct_4(~4294967295u, ~1u, Struct_1(vec3<bool>(false, global2.c.a.x, any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(ceil(global2.d)), select(all(!vec4<bool>(global2.e, global2.c.a.x, false, false)) | ((u_input.b.x < -22815i) && false), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-527f, -872f, arg_0, 1040f), vec4<f32>(1464f, global3.x, 1371f, arg_0)) - vec4<f32>(-873f, 1138f, global2.d.x, global2.d.x)), -(u_input.b.x | u_input.b.x), global2.b).b.d.x, true));
    var var_1 = global4[_wgslsmith_index_u32(0u, 13u)];
    var_1 = Struct_2(-abs(vec4<i32>(679i, u_input.b.x, 14774i, 37397i) & (var_1.a >> (vec4<u32>(50029u, 18599u, u_input.d, var_0.a) % vec4<u32>(32u)))), var_1.a, -var_1.a.yxz, !var_1.d);
    var var_2 = global2.c;
    return Struct_1(vec3<bool>(any(vec2<bool>(true, false)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, -8777i), vec2<i32>(33081i, u_input.b.x)), u_input.b.x) <= _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.a.zz, vec2<i32>(u_input.b.x, 1i)), vec2<i32>(55031i, var_1.c.x)), !(_wgslsmith_f_op_f32(f32(-1f) * -1318f) == _wgslsmith_div_f32(1652f, global3.x))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(103650u, (global1.x & u_input.a) >> (_wgslsmith_add_u32(global2.a, global1.x) % 32u)) << ((u_input.c ^ global1.wy) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(firstTrailingBit(global1.yy), vec2<u32>(global2.b, global1.x))), global1.xz));
    let var_1 = func_2(vec4<f32>(-197f, 115f, 300f, 327f), u_input.b.x << (~41471u % 32u), _wgslsmith_div_u32(78674u, global1.x));
    var var_2 = Struct_1(arg_0.a);
    var var_3 = _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mod_i32(countOneBits(~(~(-1i))), _wgslsmith_div_i32(firstTrailingBit(arg_2.a.x << (var_0.x % 32u)), i32(-1i) * -var_1.a)));
    let var_4 = _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, -2147483647i, min(arg_2.b.x, -21049i)) ^ ~_wgslsmith_clamp_i32(-2147483647i, arg_2.a.x, -2147483647i), var_1.b.b.x), 1i);
    return vec4<bool>(!(true && ((var_4 | u_input.b.x) >= -u_input.b.x)), _wgslsmith_mult_u32(~min(global2.b, global1.x), 4294967295u) > ~_wgslsmith_clamp_u32(global1.x, 1u, 11066u >> (global1.x % 32u)), !var_2.a.x, global2.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, !select(global2.c.a.x, all(global2.c.a) || true, true));
    var var_1 = _wgslsmith_sub_u32(~u_input.a, global2.b);
    let var_2 = vec3<bool>(var_0.x, !var_0.x, any(func_5(func_1(_wgslsmith_f_op_f32(global3.x - -549f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3.x, -479f, global2.d.x)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.zzz, global1.zzx) | 4294967295u, 13u)])));
    let var_3 = -max(u_input.b.x & _wgslsmith_add_i32(-38286i, _wgslsmith_mod_i32(9801i, u_input.b.x)), reverseBits(-2147483647i << (global2.a % 32u)));
    global4 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.b.x, firstLeadingBit(0i)), _wgslsmith_div_i32(-47542i, -u_input.b.x))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(countOneBits(global2.b), ~global2.b), global1.x, 19179u), global1.x), firstLeadingBit(abs(_wgslsmith_div_u32(~11644u, global1.x))), vec4<u32>(global1.x, abs(~select(1u, global2.b, true)), 3143u, global2.a >> (u_input.a % 32u)));
}

