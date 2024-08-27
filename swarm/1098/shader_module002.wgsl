struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, true, true, false, true, false, true);

var<private> global2: array<vec3<u32>, 15>;

var<private> global3: array<vec3<u32>, 8>;

var<private> global4: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<f32>(1000f, -283f, 101f), Struct_2(Struct_1(false, 0u, 13879i, vec4<f32>(1786f, -807f, -100f, 153f), 21508u), 0u, vec3<f32>(-450f, 886f, 249f)), -645f), Struct_3(vec3<f32>(592f, -345f, -1000f), Struct_2(Struct_1(false, 110492u, 1498i, vec4<f32>(398f, 1452f, -1000f, -714f), 64128u), 905u, vec3<f32>(527f, -480f, 224f)), -2056f), Struct_3(vec3<f32>(1092f, 105f, -942f), Struct_2(Struct_1(false, 25367u, i32(-2147483648), vec4<f32>(-1574f, 256f, 262f, 308f), 28659u), 0u, vec3<f32>(-810f, -369f, 160f)), 766f), Struct_3(vec3<f32>(-1187f, 1081f, 1042f), Struct_2(Struct_1(true, 125318u, 0i, vec4<f32>(1546f, -747f, 1000f, -1149f), 20081u), 19673u, vec3<f32>(-836f, 195f, 2057f)), -1841f), Struct_3(vec3<f32>(395f, -210f, 2000f), Struct_2(Struct_1(false, 4294967295u, 38988i, vec4<f32>(865f, 900f, 582f, 1000f), 4294967295u), 121584u, vec3<f32>(-429f, -913f, 2232f)), 1704f), Struct_3(vec3<f32>(1314f, -161f, -1184f), Struct_2(Struct_1(false, 11393u, -1i, vec4<f32>(972f, 396f, 569f, 1095f), 1u), 0u, vec3<f32>(220f, 1882f, 598f)), 420f), Struct_3(vec3<f32>(2374f, -548f, -550f), Struct_2(Struct_1(false, 41793u, -1i, vec4<f32>(405f, -310f, 662f, 1000f), 61161u), 29810u, vec3<f32>(-433f, 1207f, 784f)), 1147f), Struct_3(vec3<f32>(1354f, 1145f, -1067f), Struct_2(Struct_1(true, 1u, 7209i, vec4<f32>(1063f, 1797f, 1550f, -277f), 2987u), 0u, vec3<f32>(604f, 213f, 1000f)), -705f), Struct_3(vec3<f32>(-268f, -1452f, 395f), Struct_2(Struct_1(false, 49313u, 12308i, vec4<f32>(835f, 2112f, -360f, 704f), 4294967295u), 13957u, vec3<f32>(-117f, 105f, -428f)), -251f), Struct_3(vec3<f32>(908f, 425f, -1345f), Struct_2(Struct_1(true, 4294967295u, 1i, vec4<f32>(203f, 2157f, -1334f, -2371f), 10103u), 0u, vec3<f32>(851f, 270f, 521f)), 1091f), Struct_3(vec3<f32>(1740f, -1382f, 956f), Struct_2(Struct_1(false, 23164u, -1339i, vec4<f32>(883f, -1296f, -1539f, -1054f), 86885u), 13209u, vec3<f32>(198f, 1189f, -605f)), 1162f), Struct_3(vec3<f32>(-2823f, -1000f, 516f), Struct_2(Struct_1(false, 22539u, 1i, vec4<f32>(-624f, 120f, 176f, -691f), 0u), 4294967295u, vec3<f32>(-144f, 419f, -1085f)), -188f), Struct_3(vec3<f32>(1299f, -1161f, 720f), Struct_2(Struct_1(false, 4294967295u, 22234i, vec4<f32>(142f, 112f, 1000f, 1000f), 0u), 24984u, vec3<f32>(1000f, -272f, 1157f)), 1842f), Struct_3(vec3<f32>(-667f, 258f, 313f), Struct_2(Struct_1(true, 4294967295u, i32(-2147483648), vec4<f32>(-460f, -494f, -580f, 1610f), 0u), 14055u, vec3<f32>(1000f, -259f, -390f)), -618f), Struct_3(vec3<f32>(306f, 2291f, -315f), Struct_2(Struct_1(true, 1u, -1i, vec4<f32>(485f, 357f, 1535f, -1109f), 48449u), 18571u, vec3<f32>(-2272f, -1704f, -682f)), 548f), Struct_3(vec3<f32>(208f, 944f, -1742f), Struct_2(Struct_1(false, 1u, -18898i, vec4<f32>(-1169f, 843f, -273f, 244f), 15355u), 4294967295u, vec3<f32>(-1047f, -150f, -295f)), -1735f), Struct_3(vec3<f32>(-916f, 235f, 1000f), Struct_2(Struct_1(false, 49996u, 1i, vec4<f32>(936f, -2313f, -544f, -1449f), 0u), 4294967295u, vec3<f32>(1233f, 896f, 251f)), 119f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> i32 {
    global4 = array<Struct_3, 17>();
    var var_0 = global4[_wgslsmith_index_u32(~1u, 17u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(round(1781f)))) * arg_0.a.d.x) + _wgslsmith_f_op_f32(select(-905f, _wgslsmith_f_op_f32(-135f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.d.x, -797f)))), true)));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~abs(_wgslsmith_add_i32(-1i, var_0.b.a.c)), select(u_input.c | abs(arg_0.a.c), -2147483647i, false), abs(var_0.b.a.c)), u_input.c);
    var_1 = 115f;
    return var_0.b.a.c;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> vec3<f32> {
    var var_0 = global4[_wgslsmith_index_u32(23812u, 17u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.d.x, _wgslsmith_f_op_f32(1191f - var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x + 380f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1673f, var_0.a.x, -459f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1262f, -1558f, 1327f) * _wgslsmith_div_vec3_f32(var_0.b.c, vec3<f32>(var_0.b.c.x, -133f, -680f))) + var_0.b.a.d.yzx)));
    var var_2 = vec4<i32>(arg_3, var_0.b.a.c, u_input.b, _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(countOneBits(arg_2.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0), arg_2.xy))));
    global2 = array<vec3<u32>, 15>();
    let var_3 = _wgslsmith_mult_vec2_u32(u_input.e.wx, vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.e.zw, vec2<u32>(40426u, 47327u) >> (global0.zx % vec2<u32>(32u))), 4294967295u));
    return vec3<f32>(_wgslsmith_div_f32(-1919f, _wgslsmith_f_op_f32(trunc(var_1.x))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-777f, var_1.x)))) - 1f)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_3) -> f32 {
    global0 = select(_wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(6391u, 15u)], global3[_wgslsmith_index_u32(u_input.a, 8u)])), min(~u_input.e.zwx, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.a.b, 37458u), 8u)]), vec3<u32>(17848u, 0u, ~4294967295u)), ~vec3<u32>(_wgslsmith_div_u32(~4294967295u, global0.x), arg_1.a.b, 4294967295u), vec3<bool>(arg_1.a.a, arg_3.b.a.a, false));
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.x + 1000f), _wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-278f - -565f)), arg_1, _wgslsmith_f_op_f32(abs(arg_1.a.d.x)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_i32(arg_2.x, func_3(Struct_2(arg_1.a, 1u, arg_3.a), arg_0, vec2<u32>(arg_1.a.e, arg_3.b.b))), var_0.c, reverseBits(~vec3<i32>(arg_3.b.a.c, 61609i, -2147483647i)), -arg_3.b.a.c)))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)));
    let var_2 = arg_3.a;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, arg_2), vec2<u32>(41376u, u_input.a)), ~74932u, u_input.a, 26665u) >> (min(~u_input.e, ~vec4<u32>(arg_1.b, u_input.a, arg_2, 5772u)) % vec4<u32>(32u))), 8u)], select(arg_3.x, min(9278u, 26409u), false), arg_1.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1355f - arg_1.d.x) + _wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(global0.x, 8u)], Struct_2(arg_1, 6460u, arg_1.d.yxx), ~arg_0, global4[_wgslsmith_index_u32(25081u, 17u)]))), 1000f, _wgslsmith_f_op_vec3_f32(func_4(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x * 1134f)), vec3<i32>(arg_1.c, 2147483647i, u_input.c) << (_wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(67708u, 15u)], vec3<u32>(arg_3.x, 11949u, u_input.d)) % vec3<u32>(32u)), u_input.b)).x), _wgslsmith_mod_u32(0u, ~(~(arg_1.b >> (0u % 32u)))));
    var var_1 = ~(-1i) | min(var_0.c, -(~_wgslsmith_mod_i32(-41895i, u_input.b)));
    let var_2 = countOneBits(~7102u);
    let var_3 = select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(max(-31049i, -46952i), _wgslsmith_add_i32(var_0.c, arg_0.x)), vec2<i32>(45564i >> (1u % 32u), arg_1.c)), ~1i, select(_wgslsmith_sub_i32(-18860i, var_0.c), -u_input.c, any(select(vec3<bool>(true, false, true), vec3<bool>(false, var_0.a, global1[_wgslsmith_index_u32(0u, 8u)]), global1[_wgslsmith_index_u32(0u, 8u)]))), arg_0.x | _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, 79780i, -1i)), ~arg_0.yyx)), select(~min(arg_0 << (u_input.e % vec4<u32>(32u)), arg_0), ~vec4<i32>(_wgslsmith_div_i32(arg_1.c, -22118i), 1i, 1i, ~(-36877i)), !(!(!vec4<bool>(var_0.a, false, arg_1.a, var_0.a)))), false);
    var var_4 = Struct_2(Struct_1(true, ~countOneBits(arg_3.x), -10104i, _wgslsmith_f_op_vec4_f32(-var_0.d), var_2), u_input.a, arg_1.d.wxx);
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.zwy) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-424f, -793f), -660f, _wgslsmith_f_op_f32(160f + -1189f)))), Struct_2(Struct_1(var_0.a, arg_3.x, reverseBits(-12925i), _wgslsmith_f_op_vec4_f32(-arg_1.d), ~(~0u)), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.e.zyz, global2[_wgslsmith_index_u32(33516u, 15u)]), firstLeadingBit(_wgslsmith_clamp_vec3_u32(global2[_wgslsmith_index_u32(1u, 15u)], vec3<u32>(6863u, 41550u, arg_2), vec3<u32>(0u, global0.x, var_0.b)))), var_4.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(f32(-1f) * -198f))));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global0 = global2[_wgslsmith_index_u32(~func_1(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.b, -2147483647i, arg_0.b.a.c) | vec4<i32>(-1i, arg_0.b.a.c, 0i, u_input.b), select(vec4<i32>(-1i, arg_0.b.a.c, arg_0.b.a.c, -2147483647i), vec4<i32>(u_input.c, arg_0.b.a.c, -1i, arg_0.b.a.c), vec4<bool>(arg_0.b.a.a, arg_0.b.a.a, false, global1[_wgslsmith_index_u32(78140u, 8u)])), vec4<i32>(arg_0.b.a.c, -36659i, 58227i, arg_0.b.a.c)), vec4<i32>(-1282i, arg_0.b.a.c, u_input.b, -85369i)), func_1(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, 1i, -19944i, 0i), -vec4<i32>(1092i, u_input.b, u_input.b, -2147483647i), abs(vec4<i32>(35873i, -2147483647i, 1633i, u_input.c))), func_1(-vec4<i32>(arg_0.b.a.c, -19007i, 1i, u_input.c), arg_0.b.a, ~106078u, vec3<u32>(global0.x, u_input.e.x, u_input.d)).b.a, 0u, _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d, 0u, 4294967295u), ~global2[_wgslsmith_index_u32(0u, 15u)])).b.a, _wgslsmith_div_u32(u_input.d, u_input.a), vec3<u32>(22587u >> (global0.x % 32u), abs(1u >> (u_input.a % 32u)), max(1u, 4294967295u) & _wgslsmith_div_u32(1u, arg_0.b.b))).b.a.e, 15u)];
    let var_0 = Struct_2(func_1(_wgslsmith_add_vec4_i32(vec4<i32>(abs(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.c, 0i), vec4<i32>(u_input.b, u_input.b, 13973i, -2147483647i)), _wgslsmith_sub_i32(arg_0.b.a.c, arg_0.b.a.c), countOneBits(0i)), max(vec4<i32>(u_input.b, u_input.c, 0i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(30861i, -1i, 2147483647i, -6946i), vec4<i32>(-2075i, arg_0.b.a.c, 341i, 0i)))), Struct_1(any(!vec2<bool>(arg_0.b.a.a, arg_0.b.a.a)), 70716u >> (firstTrailingBit(73966u) % 32u), arg_0.b.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.b.a.d.x, arg_0.a.x, 782f) - arg_0.b.a.d) + vec4<f32>(arg_0.a.x, arg_0.c, -922f, arg_0.a.x)), max(~10255u, select(8963u, 10488u, false))), min(~arg_0.b.b, arg_0.b.a.b), _wgslsmith_mult_vec3_u32(vec3<u32>(select(4294967295u, arg_0.b.a.b, arg_0.b.a.a), u_input.d, ~arg_0.b.a.b), u_input.e.xyz)).b.a, _wgslsmith_add_u32(global0.x, ~24498u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.a.d.x, 408f, arg_0.c) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.c, 1864f), arg_0.a)))));
    var var_1 = select(vec4<bool>(any(vec3<bool>(any(vec4<bool>(false, true, true, var_0.a.a)), 0u >= global0.x, var_0.a.a)), true | arg_0.b.a.a, select(all(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.b.b, 8u)], false, global1[_wgslsmith_index_u32(0u, 8u)], var_0.a.a)), any(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(max(1u, u_input.a), 8u)]), !var_0.a.a), select(!select(!vec4<bool>(arg_0.b.a.a, global1[_wgslsmith_index_u32(4294967295u, 8u)], true, var_0.a.a), vec4<bool>(true, false, true, false), !vec4<bool>(true, arg_0.b.a.a, false, false)), !vec4<bool>(any(vec3<bool>(false, true, false)), false, false | global1[_wgslsmith_index_u32(arg_0.b.a.e, 8u)], global1[_wgslsmith_index_u32(u_input.a ^ 4294967295u, 8u)]), vec4<bool>(false, var_0.a.a, true, false)), vec4<bool>(arg_0.b.a.a, any(select(vec4<bool>(arg_0.b.a.a, global1[_wgslsmith_index_u32(4294967295u, 8u)], var_0.a.a, global1[_wgslsmith_index_u32(var_0.a.b, 8u)]), vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, arg_0.b.a.a, global1[_wgslsmith_index_u32(arg_0.b.b, 8u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_0.a.e, 8u)], arg_0.b.a.a), vec4<bool>(true, true, false, arg_0.b.a.a)))), global1[_wgslsmith_index_u32(376u << (1u % 32u), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) + 730f) != arg_0.b.c.x));
    var var_2 = -1074i;
    var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~select(-vec4<i32>(arg_0.b.a.c, arg_0.b.a.c, u_input.b, -1i), firstTrailingBit(vec4<i32>(var_0.a.c, 0i, var_0.a.c, u_input.c)), var_1.x), ~(~firstLeadingBit(vec4<i32>(var_0.a.c, u_input.c, var_0.a.c, var_0.a.c)))), -arg_0.b.a.c);
    return Struct_1(!all(vec4<bool>(arg_0.b.a.a, !global1[_wgslsmith_index_u32(4294967295u, 8u)], select(var_1.x, global1[_wgslsmith_index_u32(1u, 8u)], arg_0.b.a.a), true)), arg_0.b.b, -func_1(max(-vec4<i32>(-1i, 1i, -61654i, -2147483647i), select(vec4<i32>(0i, 20319i, var_0.a.c, -2147483647i), vec4<i32>(-1i, u_input.b, -38934i, 1i), vec4<bool>(true, var_0.a.a, false, var_1.x))), Struct_1(any(vec2<bool>(true, arg_0.b.a.a)), ~var_0.a.b, -2147483647i, _wgslsmith_f_op_vec4_f32(exp2(arg_0.b.a.d)), 1u), ~_wgslsmith_add_u32(arg_0.b.a.b, arg_0.b.a.e), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, arg_0.b.b, 1u), global3[_wgslsmith_index_u32(~4294967295u, 8u)], select(u_input.e.wwx, global3[_wgslsmith_index_u32(7279u, 8u)], var_1.yyw))).b.a.c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0.b.a.d))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_0.b.a.d))))), ~arg_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 8>();
    global4 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_f_op_f32(151f * -992f);
    let var_1 = func_5(func_1(vec4<i32>(select(i32(-1i) * -28150i, ~0i, false), -19650i, -1i, -abs(-42193i)), Struct_1(true, min(~56696u, u_input.a), 0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(572f, -1000f, -729f, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1460f, -1557f, 760f), vec4<f32>(-780f, -523f, 153f, 1077f))), global0.x), abs(~1u), vec3<u32>(58608u, _wgslsmith_sub_u32(u_input.e.x, 1u) >> (u_input.d % 32u), global0.x)));
    var var_2 = _wgslsmith_f_op_f32(-var_1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

