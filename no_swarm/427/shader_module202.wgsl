struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(37340u, 1u, 19208u, 0u);

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(-689f, Struct_1(4294967295u, vec3<bool>(true, true, true), -1478f)), Struct_3(568f, Struct_1(17415u, vec3<bool>(false, false, false), -789f)), Struct_3(-422f, Struct_1(1u, vec3<bool>(false, true, false), 136f)), Struct_3(189f, Struct_1(60127u, vec3<bool>(false, true, true), -862f)), Struct_3(827f, Struct_1(26081u, vec3<bool>(false, true, false), 120f)), Struct_3(1224f, Struct_1(48654u, vec3<bool>(false, false, true), 469f)), Struct_3(-1425f, Struct_1(4294967295u, vec3<bool>(true, false, true), 448f)), Struct_3(-1018f, Struct_1(16325u, vec3<bool>(false, true, false), 692f)), Struct_3(-1000f, Struct_1(37064u, vec3<bool>(false, false, false), -170f)), Struct_3(1552f, Struct_1(73940u, vec3<bool>(false, false, true), 515f)), Struct_3(-703f, Struct_1(29793u, vec3<bool>(false, true, true), -1000f)), Struct_3(1000f, Struct_1(4294967295u, vec3<bool>(true, true, false), -1483f)), Struct_3(-332f, Struct_1(0u, vec3<bool>(true, false, false), 1264f)), Struct_3(450f, Struct_1(47826u, vec3<bool>(true, true, false), 1000f)), Struct_3(-1000f, Struct_1(56136u, vec3<bool>(true, false, false), -553f)), Struct_3(-133f, Struct_1(20338u, vec3<bool>(true, true, true), -302f)), Struct_3(759f, Struct_1(4294967295u, vec3<bool>(true, false, false), -734f)), Struct_3(1310f, Struct_1(9036u, vec3<bool>(false, true, false), 829f)), Struct_3(-149f, Struct_1(44172u, vec3<bool>(true, false, false), -298f)), Struct_3(-334f, Struct_1(33916u, vec3<bool>(false, true, true), -883f)));

var<private> global2: array<u32, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec3<f32> {
    global1 = array<Struct_3, 20>();
    global2 = array<u32, 10>();
    var var_0 = vec2<u32>(~71603u, 0u);
    var var_1 = !(!select(arg_0.zy, vec2<bool>(arg_0.x == false, true), select(!arg_0.xz, vec2<bool>(arg_0.x, arg_0.x), false)));
    var var_2 = 4294967295u;
    return vec3<f32>(_wgslsmith_f_op_f32(max(-1180f, -189f)), -1071f, _wgslsmith_f_op_f32(trunc(623f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f)), _wgslsmith_div_i32(1i, abs(u_input.a)), Struct_1(0u, !vec3<bool>(select(false, arg_3, false), arg_3 && arg_0.a.b.x, all(arg_0.a.b.xx)), 755f), arg_0.b.b.yy);
    let var_1 = -1842f;
    let var_2 = ~(countOneBits(max(global2[_wgslsmith_index_u32(9793u, 10u)], ~1u)) ^ countOneBits(776u));
    global1 = array<Struct_3, 20>();
    var var_3 = _wgslsmith_sub_vec2_i32(-(~(vec2<i32>(u_input.b, var_0.b) ^ min(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(var_0.b, u_input.b)))), countOneBits(-vec2<i32>(u_input.a, -53412i)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -272f))), true)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1566f, _wgslsmith_f_op_f32(-723f + var_1)))), var_1));
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(_wgslsmith_mult_u32(arg_0.c.x, 0u), vec3<bool>(false, true, true), _wgslsmith_f_op_f32(-arg_0.a.a)), Struct_1(_wgslsmith_div_u32(1u, 1u), select(vec3<bool>(false, true, arg_0.a.b.b.x), vec3<bool>(false, true, true), arg_0.a.b.b.x), arg_0.a.b.c), 851f != arg_0.a.a), !vec4<bool>(!arg_0.a.b.b.x, arg_0.a.b.b.x, arg_0.a.b.b.x, arg_0.a.b.b.x | false), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-584f, -491f, arg_0.a.b.c))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(535f, arg_0.a.b.c, -2452f), vec3<f32>(arg_0.a.b.c, -1668f, arg_0.a.b.c)))), _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(arg_0.a.b.b.x, arg_0.a.b.b.x, arg_0.a.b.b.x), 1u)))), true)), u_input.a, Struct_1(1u, vec3<bool>(true, !arg_0.a.b.b.x, arg_0.a.b.b.x), _wgslsmith_f_op_f32(floor(1f))), select(select(!(!vec2<bool>(arg_0.a.b.b.x, true)), arg_0.a.b.b.yx, vec2<bool>(all(vec2<bool>(true, arg_0.a.b.b.x)), false)), arg_0.a.b.b.yz, !select(arg_0.a.b.b.xy, !vec2<bool>(arg_0.a.b.b.x, false), arg_0.a.b.b.yx)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.c.c, -1206f, var_0.a) - vec4<f32>(arg_0.a.b.c, var_0.c.c, arg_0.a.b.c, -1181f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c.c, 1118f, -617f, var_0.a))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1045f, arg_0.a.b.c, -1317f, -1195f)))), select(select(vec4<bool>(false, true, arg_0.a.b.b.x, var_0.d.x), vec4<bool>(arg_0.a.b.b.x, false, arg_0.a.b.b.x, false), vec4<bool>(true, arg_0.a.b.b.x, arg_0.a.b.b.x, var_0.c.b.x)), vec4<bool>(true, true, arg_0.a.b.b.x, var_0.d.x), false))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-263f, -1037f, -553f, 1364f))))));
    global0 = abs(vec4<u32>(firstTrailingBit(global0.x), abs(u_input.c), global0.x, global2[_wgslsmith_index_u32((_wgslsmith_div_u32(var_0.c.a, 4294967295u) << (_wgslsmith_mod_u32(36224u, 4294967295u) % 32u)) << (global2[_wgslsmith_index_u32(select(global0.x >> (1u % 32u), global0.x, false), 10u)] % 32u), 10u)]));
    let var_2 = ~abs(~(~_wgslsmith_sub_u32(arg_0.a.b.a, var_0.c.a)));
    var var_3 = Struct_2(arg_0.a.b, Struct_1(arg_0.c.x, !vec3<bool>(true, all(vec2<bool>(var_0.c.b.x, false)), var_0.c.b.x), 1481f), arg_0.a.b.b.x);
    return _wgslsmith_f_op_f32(519f + _wgslsmith_f_op_f32(trunc(-734f)));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    global0 = countOneBits(vec4<u32>(~(~u_input.c), global0.x, u_input.c << (u_input.c % 32u), 4294967295u));
    global0 = select(abs(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 10u)], 10u)], global0.x, u_input.c), vec4<u32>(4294967295u, u_input.c, global0.x, global2[_wgslsmith_index_u32(u_input.c, 10u)]), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(116977u, 10u)], global2[_wgslsmith_index_u32(53036u, 10u)], 67022u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 33562u, u_input.c, global0.x), vec4<u32>(14821u, global0.x, u_input.c, 1u)) % vec4<u32>(32u)))), ~(vec4<u32>(u_input.c, ~global2[_wgslsmith_index_u32(29351u, 10u)], ~12818u, firstLeadingBit(0u)) | (~vec4<u32>(global0.x, 18730u, global0.x, 0u) >> (firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 57757u, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34944u, 10u)], 10u)], 10u)])) % vec4<u32>(32u)))), !(!var_0.x));
    return Struct_1(global0.x ^ 49738u, vec3<bool>(~20378u != (abs(1734u) << (_wgslsmith_add_u32(global2[_wgslsmith_index_u32(42647u, 10u)], 35599u) % 32u)), select(any(vec3<bool>(true, var_0.x, true)), !var_0.x, true), false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_3(!vec3<bool>(var_0.x, var_0.x, var_0.x), 27362u)).x, _wgslsmith_f_op_f32(floor(arg_1)), var_0.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global0 = select(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 10u)], _wgslsmith_div_u32(~15881u, _wgslsmith_sub_u32(72u, arg_0.a)) >> (_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(55792u, 10u)], ~40101u) % 32u), ~global0.x, global2[_wgslsmith_index_u32(countOneBits(0u), 10u)]), firstTrailingBit(~_wgslsmith_div_vec4_u32(select(vec4<u32>(44382u, global0.x, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.c, 4294967295u, 21577u), false), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(u_input.c, u_input.c, global0.x, 40868u)))), arg_0.b.x);
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(global1[_wgslsmith_index_u32(7026u, 20u)], vec3<i32>(-2147483647i, u_input.a, arg_1.x), vec3<u32>(16522u, 10836u, 0u))))), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - arg_2.c) * func_5(-215f, 646f, vec4<i32>(29902i, 52264i, -1i, u_input.a), 2147483647i).c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c * arg_0.c)), max(_wgslsmith_mod_vec4_i32(vec4<i32>(5418i, u_input.b, -40777i, -87132i), vec4<i32>(arg_1.x, u_input.a, -1i, 0i)), vec4<i32>(25237i, u_input.b, arg_1.x, arg_1.x)), select(arg_1.x, -51589i ^ arg_1.x, all(vec3<bool>(arg_0.b.x, true, true))))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, -24786i, 2147483647i), vec3<i32>(u_input.b, u_input.a, arg_1.x) | vec3<i32>(u_input.b, u_input.b, arg_1.x), -vec3<i32>(25321i, -60420i, arg_1.x)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.a), vec3<i32>(arg_1.x, 0i, arg_1.x)), -vec3<i32>(arg_1.x, -1370i, u_input.a))), ~(firstTrailingBit(vec3<i32>(arg_1.x, 0i, u_input.a)) >> (global0.yxz % vec3<u32>(32u)))), vec3<u32>(func_5(-948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)), select(vec4<i32>(-4587i, arg_1.x, arg_1.x, u_input.a), vec4<i32>(-2147483647i, arg_1.x, arg_1.x, 18789i), select(vec4<bool>(arg_2.b.x, false, arg_2.b.x, true), vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_2.b.x), true)), ~reverseBits(arg_1.x)).a, 2789u, 1652u));
    global2 = array<u32, 10>();
    var var_1 = var_0.a.b.b;
    global1 = array<Struct_3, 20>();
    return func_5(arg_2.c, var_0.a.b.c, vec4<i32>(reverseBits(u_input.b), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.b.x, arg_1.x), 13353i), u_input.a, var_0.b.x) | countOneBits(~vec4<i32>(var_0.b.x, u_input.a, arg_1.x, 89823i)), 2147483647i);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> i32 {
    global2 = array<u32, 10>();
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(978f, Struct_1(global0.x, vec3<bool>(false, arg_0, arg_0), 300f)), vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<u32>(0u, 1u, arg_1.x)))) - -1361f)), 762f, abs(~vec4<i32>(u_input.a, 0i, u_input.a, u_input.b) & -vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)), countOneBits(i32(-1i) * -2147483647i)), -vec2<i32>(u_input.a, -2147483647i), Struct_1(firstLeadingBit(reverseBits(4294967295u)), vec3<bool>(all(vec2<bool>(arg_0, false)), true, false), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(22373u, vec3<bool>(true, arg_0, arg_0), -365f), Struct_1(arg_1.x, vec3<bool>(false, true, arg_0), -302f), false), vec4<bool>(true, arg_0, arg_0, arg_0), vec3<f32>(867f, 427f, -778f), arg_0)) - 738f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-675f * 877f))), _wgslsmith_div_u32(arg_1.x, global2[_wgslsmith_index_u32(global0.x, 10u)]) == min(4294967295u, arg_1.x)))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, select(firstLeadingBit(-2147483647i), -(u_input.a >> (0u % 32u)), (arg_0 | false) | false)), _wgslsmith_mod_vec2_i32(-(vec2<i32>(u_input.b, -46136i) >> (vec2<u32>(28913u, u_input.c) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(reverseBits(select(vec2<i32>(u_input.a, 0i), vec2<i32>(-56564i, 1i), var_0.b.yx)), _wgslsmith_div_vec2_i32(~vec2<i32>(15404i, 0i), ~vec2<i32>(u_input.a, 8065i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(vec2<bool>(true, false), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), all(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, min(_wgslsmith_mult_i32(u_input.b, -2147483647i), u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a & u_input.b, u_input.a & u_input.a), vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a))) > 0i;
    var_0 = func_1(true, ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 58850u, global0.x, global0.x), vec4<u32>(u_input.c, 6440u, 1u, u_input.c)), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 10u)], 10u)], u_input.c, global2[_wgslsmith_index_u32(18315u, 10u)], 43855u))) > u_input.b;
    global0 = vec4<u32>(0u, ~4294967295u | _wgslsmith_mod_u32(min(0u, global2[_wgslsmith_index_u32(global0.x, 10u)]), u_input.c), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 10u)] & _wgslsmith_clamp_u32(33742u, 1u, 2643u), ~u_input.c), _wgslsmith_mod_u32(1u, ~(~global0.x))) >> ((select(reverseBits(~vec4<u32>(88457u, 0u, 4294967295u, u_input.c)), ~(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 10u)], u_input.c, u_input.c, global0.x) ^ vec4<u32>(1u, 4294967295u, 4294967295u, global0.x)), !select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, false, var_1, true))) & firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 4294967295u, 70361u, u_input.c), abs(vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(global0.x, 10u)], global0.x, 1u))))) % vec4<u32>(32u));
    global1 = array<Struct_3, 20>();
    global0 = firstLeadingBit(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(1u, 10u)], min(~global0.x, u_input.c), countOneBits(~1u), ~(~40625u))));
    let x = u_input.a;
    s_output = StorageBuffer(12140u, vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 16311i, u_input.a, u_input.b) ^ vec4<i32>(21605i, u_input.a, 100746i, 2147483647i), vec4<i32>(_wgslsmith_div_i32(0i, u_input.a), 2147483647i, ~2861i, _wgslsmith_add_i32(1i, u_input.a))), i32(-1i) * -48561i, -38853i));
}

