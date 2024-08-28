struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: Struct_4,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(false, 0u, vec4<bool>(true, true, true, true), true), vec4<u32>(12639u, 33592u, 19249u, 115257u), vec3<i32>(-3430i, -6076i, 1i), vec4<u32>(79008u, 5083u, 78089u, 54278u), 2147483647i), Struct_2(Struct_1(true, 4294967295u, vec4<bool>(true, true, true, true), true), vec4<u32>(1u, 4294967295u, 26674u, 25541u), vec3<i32>(-21636i, -7793i, 2147483647i), vec4<u32>(0u, 19306u, 41777u, 18312u), -15195i), Struct_2(Struct_1(false, 11695u, vec4<bool>(false, true, false, true), true), vec4<u32>(48151u, 0u, 43739u, 54273u), vec3<i32>(-1i, -22749i, i32(-2147483648)), vec4<u32>(0u, 18537u, 24984u, 1u), 0i), Struct_2(Struct_1(false, 69501u, vec4<bool>(true, false, true, true), true), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec3<i32>(0i, 2147483647i, 1i), vec4<u32>(87773u, 55847u, 19397u, 25544u), 1i), Struct_2(Struct_1(true, 0u, vec4<bool>(false, false, true, true), true), vec4<u32>(57175u, 1u, 0u, 0u), vec3<i32>(53860i, -557i, -19141i), vec4<u32>(59531u, 19462u, 4294967295u, 12276u), 1i), Struct_2(Struct_1(false, 28369u, vec4<bool>(false, true, true, false), true), vec4<u32>(1u, 1u, 1u, 4294967295u), vec3<i32>(0i, 45224i, 1617i), vec4<u32>(22740u, 30921u, 1u, 0u), 0i), Struct_2(Struct_1(false, 0u, vec4<bool>(true, true, false, true), true), vec4<u32>(19311u, 1u, 31471u, 5152u), vec3<i32>(-35411i, 3550i, -1i), vec4<u32>(60618u, 22852u, 0u, 101830u), i32(-2147483648)), Struct_2(Struct_1(false, 3941u, vec4<bool>(false, false, false, false), false), vec4<u32>(86357u, 1u, 1u, 49052u), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<u32>(20837u, 29896u, 17453u, 3381u), 1i), Struct_2(Struct_1(true, 46743u, vec4<bool>(false, false, false, true), true), vec4<u32>(0u, 11348u, 92283u, 0u), vec3<i32>(17545i, 0i, -8663i), vec4<u32>(4294967295u, 614u, 1u, 0u), -47214i), Struct_2(Struct_1(false, 0u, vec4<bool>(false, false, true, false), false), vec4<u32>(1u, 4294967295u, 20654u, 0u), vec3<i32>(9122i, -1i, i32(-2147483648)), vec4<u32>(1u, 86528u, 0u, 0u), -1i), Struct_2(Struct_1(false, 0u, vec4<bool>(true, false, true, true), false), vec4<u32>(7720u, 4294967295u, 4294967295u, 37724u), vec3<i32>(0i, -21055i, -9324i), vec4<u32>(9185u, 4294967295u, 0u, 1u), 0i), Struct_2(Struct_1(true, 1u, vec4<bool>(false, true, true, false), false), vec4<u32>(4294967295u, 4294967295u, 31823u, 4294967295u), vec3<i32>(i32(-2147483648), i32(-2147483648), 15847i), vec4<u32>(90128u, 21176u, 1u, 11166u), -1i), Struct_2(Struct_1(true, 19576u, vec4<bool>(false, true, true, true), false), vec4<u32>(2265u, 15023u, 4294967295u, 73456u), vec3<i32>(13178i, -1i, -1i), vec4<u32>(20519u, 83205u, 40151u, 1u), -45189i), Struct_2(Struct_1(true, 1u, vec4<bool>(true, false, false, false), false), vec4<u32>(0u, 74106u, 0u, 58461u), vec3<i32>(57185i, -44059i, 11988i), vec4<u32>(1u, 44423u, 36315u, 35754u), 1i), Struct_2(Struct_1(true, 4294967295u, vec4<bool>(true, false, false, true), false), vec4<u32>(1u, 23272u, 36030u, 1u), vec3<i32>(0i, -11436i, 10745i), vec4<u32>(0u, 1u, 0u, 3009u), 28760i), Struct_2(Struct_1(true, 13341u, vec4<bool>(true, true, false, true), false), vec4<u32>(0u, 47313u, 0u, 12745u), vec3<i32>(1i, 1i, i32(-2147483648)), vec4<u32>(1u, 0u, 0u, 16030u), 2147483647i));

var<private> global1: Struct_4 = Struct_4(vec4<i32>(2147483647i, i32(-2147483648), 65718i, 0i));

var<private> global2: array<bool, 12> = array<bool, 12>(false, false, true, false, false, true, false, false, true, true, true, false);

var<private> global3: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(12471i, 37211i), vec2<i32>(2147483647i, -21905i), vec2<i32>(-26065i, 2147483647i), vec2<i32>(1i, -18634i), vec2<i32>(-16364i, 2147483647i), vec2<i32>(-1i, 2750i), vec2<i32>(24647i, 0i), vec2<i32>(82968i, 63505i), vec2<i32>(-29261i, 18403i), vec2<i32>(2147483647i, 12245i), vec2<i32>(-22851i, 22653i), vec2<i32>(-26275i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 7621i), vec2<i32>(0i, 30241i), vec2<i32>(15294i, 2147483647i), vec2<i32>(7090i, -1i), vec2<i32>(0i, -3584i), vec2<i32>(1i, 0i), vec2<i32>(-53316i, i32(-2147483648)), vec2<i32>(15844i, -16753i), vec2<i32>(-15571i, 0i), vec2<i32>(0i, 49347i), vec2<i32>(-18221i, -1i), vec2<i32>(11427i, 9203i));

var<private> global4: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_3(vec2<u32>(_wgslsmith_sub_u32(reverseBits(_wgslsmith_clamp_u32(100178u, 0u, 29420u)), (0u >> (1u % 32u)) >> (_wgslsmith_div_u32(15661u, 4294967295u) % 32u)), ~(~1u)));
    global1 = Struct_4(vec4<i32>(firstLeadingBit(0i & u_input.a.x), abs(u_input.a.x), global1.a.x << (~var_0.a.x % 32u), 76185i));
    return !vec4<bool>(false, !global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(1u, 33518u), 1u), 12u)], false, false);
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> vec4<bool> {
    return !select(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 12u)], global2[_wgslsmith_index_u32(arg_0, 12u)], global2[_wgslsmith_index_u32(arg_0, 12u)], global2[_wgslsmith_index_u32(arg_0, 12u)]))), vec4<bool>(any(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 12u)], true)), any(!vec2<bool>(global2[_wgslsmith_index_u32(157526u, 12u)], global2[_wgslsmith_index_u32(arg_0, 12u)])), true, true), select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u >> (arg_0 % 32u), 12u)], select(false, true, global2[_wgslsmith_index_u32(arg_0, 12u)]), all(vec3<bool>(true, false, global2[_wgslsmith_index_u32(0u, 12u)])), !global2[_wgslsmith_index_u32(38773u, 12u)]), !vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 12u)], false, false, global2[_wgslsmith_index_u32(0u, 12u)]), !func_3(vec4<f32>(360f, 254f, -289f, 1485f))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec3<f32>(1298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1841f)), _wgslsmith_div_f32(479f, -642f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(536f, 676f)))), _wgslsmith_f_op_f32(f32(-1f) * -417f));
    global2 = array<bool, 12>();
    let var_1 = arg_3;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - 1055f), _wgslsmith_f_op_f32(var_0.x * 264f)))), _wgslsmith_f_op_f32(sign(-1248f)), var_0.x));
    var var_2 = var_0.x;
    return Struct_1(arg_0.x, arg_1.a.x, select(vec4<bool>((5370i <= arg_2.e) || true, global2[_wgslsmith_index_u32(~(arg_1.a.x & arg_2.a.b), 12u)], !any(arg_2.a.c.wxw), all(arg_2.a.c.yxy)), func_2(_wgslsmith_div_u32(arg_1.a.x, 14852u), -select(vec4<i32>(-12937i, arg_2.c.x, u_input.a.x, arg_2.e), global1.a, arg_2.a.a)), all(!arg_0.zx)), var_0.x > _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_5) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = ~(~reverseBits(vec4<u32>(var_0.d.b, 0u, 51358u, 38933u))) >> (_wgslsmith_div_vec4_u32(~(~vec4<u32>(arg_0.b, arg_1.x, arg_2.b, 0u)), ~firstLeadingBit(select(var_0.e, vec4<u32>(var_0.e.x, arg_0.b, var_0.d.b, arg_2.b), true))) % vec4<u32>(32u));
    var var_2 = any(func_1(select(vec3<bool>(arg_0.a && arg_3.d.a, arg_0.d, !arg_2.c.x), arg_3.d.c.zzy, func_1(func_1(arg_3.d.c.wzw, Struct_3(var_1.yw), global0[_wgslsmith_index_u32(0u, 16u)], Struct_3(vec2<u32>(var_1.x, 82804u))).c.xxw, Struct_3(vec2<u32>(var_0.d.b, 4294967295u)), Struct_2(Struct_1(true, 4355u, var_0.d.c, arg_2.a), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 30535u), global1.a.xxw, var_0.e, var_0.b.a.x), Struct_3(vec2<u32>(19976u, 4294967295u))).c.zwx), Struct_3(arg_3.e.ww), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(82006u, ~1u, arg_3.d.b | 47406u), 69560u), 16u)], Struct_3(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(var_1.yw, vec2<u32>(arg_2.b, arg_3.d.b)), var_1.xy, arg_1.wy))).c.zy);
    var var_3 = _wgslsmith_mod_i32(48306i, firstTrailingBit(-20106i));
    var var_4 = global1.a.wxz;
    return Struct_1(any(func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 479f, 1784f, _wgslsmith_f_op_f32(min(-651f, -797f)))).zwy), var_1.x, vec4<bool>(arg_2.a, true, false, var_0.d.d || true), arg_0.c.x);
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = func_2(arg_2.d.x, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1.a.x, global1.a.x), -global1.a.ywx), arg_2.e, u_input.a.x, -1i), firstTrailingBit(_wgslsmith_div_vec4_i32(global1.a, vec4<i32>(u_input.a.x, u_input.a.x, global1.a.x, 39744i))) << (vec4<u32>(25423u, ~arg_2.a.b, ~12497u, _wgslsmith_mult_u32(arg_2.a.b, arg_2.d.x)) % vec4<u32>(32u)))).yy;
    var_0 = vec2<bool>(!func_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1052f, arg_0) - vec4<f32>(1086f, -497f, -559f, -1457f))))).x, !(!func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -317f, arg_0))).x));
    global1 = Struct_4(-global1.a);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_0 + arg_0)) - _wgslsmith_f_op_f32(round(323f)))), _wgslsmith_div_f32(1309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0, arg_0)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(2026f * -228f), 422f))));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(53784u, ~53427u, ~109660u) << (firstTrailingBit(arg_2.d.wwz) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, ~1u, 4294967295u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1155f, var_1))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -715f), 522f, -572f, -244f))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<f32>) -> f32 {
    global1 = Struct_4(reverseBits(_wgslsmith_add_vec4_i32(global1.a, _wgslsmith_mod_vec4_i32(abs(global1.a), ~vec4<i32>(global1.a.x, u_input.a.x, -28884i, -2147483647i)))));
    let var_0 = ~vec2<i32>(_wgslsmith_mult_i32(countOneBits(~u_input.a.x), global1.a.x), 1573i);
    global2 = array<bool, 12>();
    let var_1 = Struct_1(!global2[_wgslsmith_index_u32(47211u, 12u)], countOneBits(1u), func_4(func_4(Struct_1(true, 66140u, !vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], true), true), vec4<u32>(_wgslsmith_div_u32(45051u, 83050u), _wgslsmith_mod_u32(92995u, 9321u), func_1(vec3<bool>(global2[_wgslsmith_index_u32(100956u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], true), Struct_3(vec2<u32>(21725u, 4294967295u)), Struct_2(Struct_1(true, 1u, vec4<bool>(global2[_wgslsmith_index_u32(5728u, 12u)], false, global2[_wgslsmith_index_u32(14238u, 12u)], global2[_wgslsmith_index_u32(26318u, 12u)]), false), vec4<u32>(54281u, 4294967295u, 0u, 0u), vec3<i32>(var_0.x, 37291i, global1.a.x), vec4<u32>(48565u, 7413u, 4294967295u, 4294967295u), 0i), Struct_3(vec2<u32>(4294967295u, 8658u))).b, ~5812u), func_1(func_1(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(35624u, 12u)], false), Struct_3(vec2<u32>(1u, 0u)), global0[_wgslsmith_index_u32(76273u, 16u)], Struct_3(vec2<u32>(92486u, 28763u))).c.yxw, Struct_3(vec2<u32>(8658u, 377u)), Struct_2(Struct_1(true, 8419u, vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(64886u, 12u)], false), global2[_wgslsmith_index_u32(3757u, 12u)]), vec4<u32>(0u, 27727u, 4294967295u, 74561u), vec3<i32>(global1.a.x, var_0.x, -2147483647i), vec4<u32>(725u, 18994u, 11788u, 28492u), var_0.x), Struct_3(vec2<u32>(1u, 25084u))), Struct_5(-vec4<i32>(19514i, var_0.x, -2147483647i, 87020i), Struct_4(global1.a), Struct_4(global1.a), Struct_1(true, 4294967295u, vec4<bool>(global2[_wgslsmith_index_u32(556u, 12u)], true, false, false), false), ~vec4<u32>(0u, 11715u, 9036u, 0u))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 18038u, 4294967295u), select(vec4<u32>(23138u, 1u, 1u, 4294967295u), vec4<u32>(65915u, 15816u, 0u, 53966u), vec4<bool>(global2[_wgslsmith_index_u32(9376u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(46764u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)])))), func_4(func_4(func_1(vec3<bool>(global2[_wgslsmith_index_u32(27749u, 12u)], false, global2[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_3(vec2<u32>(1u, 1u)), Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u, vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 12u)], true, false), global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<u32>(1u, 1u, 4294967295u, 37469u), vec3<i32>(global1.a.x, var_0.x, -35342i), vec4<u32>(4294967295u, 7451u, 0u, 0u), u_input.a.x), Struct_3(vec2<u32>(9578u, 18330u))), vec4<u32>(1u, 1u, 1u, 1u), func_4(Struct_1(false, 4294967295u, vec4<bool>(global2[_wgslsmith_index_u32(0u, 12u)], false, false, false), true), vec4<u32>(1u, 0u, 1u, 45103u), Struct_1(global2[_wgslsmith_index_u32(62168u, 12u)], 102458u, vec4<bool>(false, global2[_wgslsmith_index_u32(26141u, 12u)], global2[_wgslsmith_index_u32(64345u, 12u)], false), false), Struct_5(global1.a, Struct_4(vec4<i32>(1i, var_0.x, -44673i, var_0.x)), Struct_4(global1.a), Struct_1(global2[_wgslsmith_index_u32(48943u, 12u)], 67473u, vec4<bool>(true, true, true, true), true), vec4<u32>(1u, 4294967295u, 0u, 60936u))), Struct_5(vec4<i32>(-2147483647i, -61420i, u_input.a.x, 11713i), Struct_4(vec4<i32>(u_input.a.x, -2934i, -1873i, 1i)), Struct_4(vec4<i32>(-10439i, -45157i, -11979i, u_input.a.x)), Struct_1(false, 4294967295u, vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 12u)], false, global2[_wgslsmith_index_u32(25112u, 12u)]), global2[_wgslsmith_index_u32(1u, 12u)]), vec4<u32>(22307u, 0u, 4306u, 4294967295u))), ~vec4<u32>(1u, 1u, 1u, 1u), Struct_1(select(true, global2[_wgslsmith_index_u32(89693u, 12u)], global2[_wgslsmith_index_u32(3751u, 12u)]), _wgslsmith_div_u32(1u, 3141u), func_4(Struct_1(global2[_wgslsmith_index_u32(43633u, 12u)], 35428u, vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(1u, 12u)]), true), vec4<u32>(23447u, 1u, 4294967295u, 27324u), Struct_1(global2[_wgslsmith_index_u32(27899u, 12u)], 1u, vec4<bool>(global2[_wgslsmith_index_u32(9440u, 12u)], false, true, global2[_wgslsmith_index_u32(4294967295u, 12u)]), global2[_wgslsmith_index_u32(59253u, 12u)]), Struct_5(global1.a, Struct_4(vec4<i32>(-2147483647i, -45439i, u_input.a.x, var_0.x)), Struct_4(global1.a), Struct_1(false, 47078u, vec4<bool>(false, true, true, false), false), vec4<u32>(69256u, 22979u, 4294967295u, 37834u))).c, all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(32136u, 12u)]))), Struct_5(vec4<i32>(-1i, -5031i, 0i, -4283i), Struct_4(vec4<i32>(-55261i, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_4(global1.a), func_4(Struct_1(true, 4294967295u, vec4<bool>(false, global2[_wgslsmith_index_u32(12087u, 12u)], false, global2[_wgslsmith_index_u32(15673u, 12u)]), true), vec4<u32>(21011u, 4294967295u, 25603u, 11715u), Struct_1(global2[_wgslsmith_index_u32(0u, 12u)], 42557u, vec4<bool>(global2[_wgslsmith_index_u32(54401u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(45671u, 12u)], global2[_wgslsmith_index_u32(32499u, 12u)]), true), Struct_5(global1.a, Struct_4(vec4<i32>(19258i, 1i, -13786i, u_input.a.x)), Struct_4(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i)), Struct_1(global2[_wgslsmith_index_u32(2936u, 12u)], 56162u, vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], true, false, global2[_wgslsmith_index_u32(0u, 12u)]), true), vec4<u32>(0u, 1u, 12791u, 1u))), ~vec4<u32>(76802u, 1u, 15049u, 23082u))), Struct_5(vec4<i32>(countOneBits(u_input.a.x), 0i, ~41510i, global1.a.x), Struct_4(global1.a >> (vec4<u32>(0u, 70468u, 0u, 0u) % vec4<u32>(32u))), Struct_4(reverseBits(global1.a)), func_1(!vec3<bool>(global2[_wgslsmith_index_u32(64537u, 12u)], false, true), Struct_3(vec2<u32>(48373u, 0u)), Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 12u)], 23121u, vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 12u)], false, false), global2[_wgslsmith_index_u32(1u, 12u)]), vec4<u32>(1u, 0u, 1u, 4294967295u), global1.a.yzy, vec4<u32>(1u, 19253u, 4294967295u, 38466u), global1.a.x), Struct_3(vec2<u32>(36409u, 0u))), abs(abs(vec4<u32>(1u, 44250u, 27110u, 4294967295u))))).c, false);
    global0 = array<Struct_2, 16>();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec4_f32(func_5(995f, vec3<bool>(false, true, global2[_wgslsmith_index_u32(select(1u, 20910u, true), 12u)]), Struct_2(func_4(func_1(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 12u)], false), Struct_3(vec2<u32>(33641u, 44957u)), Struct_2(Struct_1(true, 1u, vec4<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(4789u, 12u)], global2[_wgslsmith_index_u32(5706u, 12u)]), global2[_wgslsmith_index_u32(24689u, 12u)]), vec4<u32>(1u, 59790u, 1u, 0u), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 0u, 5479u, 1u), 0i), Struct_3(vec2<u32>(67361u, 109484u))), abs(vec4<u32>(5659u, 1u, 0u, 4294967295u)), func_1(vec3<bool>(true, global2[_wgslsmith_index_u32(19529u, 12u)], false), Struct_3(vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(global2[_wgslsmith_index_u32(83615u, 12u)], 382u, vec4<bool>(global2[_wgslsmith_index_u32(73262u, 12u)], true, true, true), true), vec4<u32>(1u, 4294967295u, 31776u, 4294967295u), u_input.a, vec4<u32>(4294967295u, 20978u, 45767u, 0u), u_input.a.x), Struct_3(vec2<u32>(20330u, 41049u))), Struct_5(vec4<i32>(global1.a.x, global1.a.x, u_input.a.x, 1i), Struct_4(vec4<i32>(u_input.a.x, -34653i, global1.a.x, u_input.a.x)), Struct_4(vec4<i32>(global1.a.x, 1907i, u_input.a.x, -1i)), Struct_1(false, 4294967295u, vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 12u)], true, true), global2[_wgslsmith_index_u32(0u, 12u)]), vec4<u32>(73813u, 24064u, 1u, 30845u))), reverseBits(~vec4<u32>(0u, 20949u, 4294967295u, 16427u)), _wgslsmith_sub_vec3_i32(global1.a.wyx & global1.a.ywx, u_input.a | vec3<i32>(-1i, 2147483647i, global1.a.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u)), 1u, 0u, 78676u), _wgslsmith_clamp_i32(-2147483647i, 12496i, ~(-1i))))), vec4<f32>(_wgslsmith_f_op_f32(108f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(242f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1092f))), 2372f, _wgslsmith_f_op_f32(floor(-191f)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-846f, -254f, any(vec4<bool>(global2[_wgslsmith_index_u32(43827u, 12u)], global2[_wgslsmith_index_u32(14812u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-947f * 892f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) + -118f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(21285u, ~40216u, max(_wgslsmith_mod_u32(1u, ~29518u), _wgslsmith_mult_u32(0u, abs(56060u))), 10526u), firstTrailingBit(global1.a.x), var_0.x, _wgslsmith_mult_i32(firstTrailingBit(33255i), -firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, 13648i))));
}

