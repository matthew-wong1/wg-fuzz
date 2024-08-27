struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(1u, 4294967295u, 0u, 4918u, 4294967295u, 1u, 4294967295u, 84225u, 4294967295u, 32111u, 1u, 72u, 35548u, 4294967295u, 0u, 1u, 1u, 49041u, 11453u, 4294967295u, 8143u, 0u, 18100u, 34362u, 1u, 21103u, 4294967295u);

var<private> global1: array<f32, 17>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<u32>(1672u, 7590u, 4294967295u), vec3<bool>(false, true, true), vec2<f32>(477f, -637f)), Struct_1(vec3<u32>(1u, 30303u, 0u), vec3<bool>(true, false, false), vec2<f32>(-700f, -1290f)), Struct_1(vec3<u32>(11945u, 72806u, 2166u), vec3<bool>(true, true, false), vec2<f32>(1000f, -554f)), Struct_1(vec3<u32>(35435u, 7219u, 0u), vec3<bool>(true, true, false), vec2<f32>(-389f, -825f)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec3<bool>(true, false, false), vec2<f32>(2294f, 955f)), Struct_1(vec3<u32>(4294967295u, 61731u, 54774u), vec3<bool>(false, true, true), vec2<f32>(-1379f, -761f)), Struct_1(vec3<u32>(0u, 0u, 1u), vec3<bool>(false, true, true), vec2<f32>(712f, -828f)), Struct_1(vec3<u32>(26861u, 23264u, 38959u), vec3<bool>(false, true, false), vec2<f32>(-467f, -844f)), Struct_1(vec3<u32>(1u, 4294967295u, 37161u), vec3<bool>(false, false, false), vec2<f32>(1000f, -1446f)), Struct_1(vec3<u32>(0u, 0u, 61156u), vec3<bool>(true, false, true), vec2<f32>(-1118f, -1786f)), Struct_1(vec3<u32>(41640u, 0u, 17424u), vec3<bool>(false, true, true), vec2<f32>(-960f, -1000f)), Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(true, false, false), vec2<f32>(-634f, -271f)), Struct_1(vec3<u32>(55530u, 133880u, 4294967295u), vec3<bool>(true, true, false), vec2<f32>(-310f, -1457f)), Struct_1(vec3<u32>(0u, 38170u, 4294967295u), vec3<bool>(false, true, false), vec2<f32>(-2118f, 251f)), Struct_1(vec3<u32>(18342u, 104588u, 16621u), vec3<bool>(false, true, true), vec2<f32>(806f, -861f)), Struct_1(vec3<u32>(1u, 0u, 1u), vec3<bool>(false, false, false), vec2<f32>(-323f, 2307f)), Struct_1(vec3<u32>(17020u, 4294967295u, 38851u), vec3<bool>(false, false, true), vec2<f32>(-204f, -1548f)), Struct_1(vec3<u32>(68500u, 16119u, 4294967295u), vec3<bool>(false, false, true), vec2<f32>(1074f, 300f)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec3<bool>(false, false, false), vec2<f32>(1000f, 690f)), Struct_1(vec3<u32>(60836u, 40351u, 46906u), vec3<bool>(true, true, false), vec2<f32>(1336f, 949f)), Struct_1(vec3<u32>(1u, 36843u, 0u), vec3<bool>(false, true, false), vec2<f32>(253f, 1000f)), Struct_1(vec3<u32>(4294967295u, 0u, 38660u), vec3<bool>(false, false, false), vec2<f32>(1145f, 1000f)), Struct_1(vec3<u32>(0u, 1u, 0u), vec3<bool>(true, false, false), vec2<f32>(-856f, -296f)), Struct_1(vec3<u32>(1u, 4294967295u, 40261u), vec3<bool>(true, false, false), vec2<f32>(1068f, -869f)), Struct_1(vec3<u32>(0u, 65287u, 0u), vec3<bool>(false, true, true), vec2<f32>(-899f, -553f)));

var<private> global3: u32;

var<private> global4: array<bool, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2) -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.x | arg_0.x, _wgslsmith_div_i32(u_input.c, arg_0.x), arg_0.x & -7052i, ~(-1i))), min(-vec4<i32>(-1i, -2466i, u_input.c, -41363i), vec4<i32>(min(arg_0.x, -3513i), firstTrailingBit(-1i), _wgslsmith_sub_i32(arg_0.x, arg_0.x), 1i))), -u_input.c, firstLeadingBit(-1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, -824f, 857f, 295f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(924f, 101f, -1052f, 1020f)))))));
    let var_2 = Struct_2(Struct_1(vec3<u32>(1u ^ global0[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_div_u32(arg_1, 125851u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_2.e, 27u)], global0[_wgslsmith_index_u32(~78324u, 27u)])), !vec3<bool>(false, any(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 4u)], global4[_wgslsmith_index_u32(arg_2.a.a.x, 4u)], arg_2.d.b.x, false)), true), var_1.yy), select(arg_2.a.b.yz, arg_2.a.b.yz, true & any(!arg_2.d.b.yz)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-757f, -634f, false)) - -688f)), _wgslsmith_f_op_f32(ceil(-162f))), arg_2.a, ~u_input.a.x);
    var var_3 = _wgslsmith_mult_vec3_u32(~(firstLeadingBit(~u_input.d) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(19951u, arg_2.e, 20610u), u_input.d)), u_input.d);
    let var_4 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(select(vec4<i32>(-2147483647i, -1i, -1i, u_input.c), vec4<i32>(-10444i, -1i, arg_0.x, 1i), arg_2.d.b.x)), vec4<i32>(u_input.c & -32803i, _wgslsmith_div_i32(var_0.x, var_0.x), 2147483647i, _wgslsmith_mod_i32(-31269i, -51564i))), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -20394i, 0i, -1i), vec4<i32>(u_input.c, 2147483647i, u_input.c, -2147483647i)))), vec2<i32>(arg_0.x, min(~(arg_0.x << (24082u % 32u)), ~15914i)));
    return _wgslsmith_sub_u32(u_input.a.x, global0[_wgslsmith_index_u32(27201u << (_wgslsmith_clamp_u32(~11642u, min(4294967295u, 4294967295u), global0[_wgslsmith_index_u32(u_input.a.x, 27u)] ^ 4294967295u) % 32u), 27u)]) | 1u;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    return Struct_2(arg_3.d, select(!select(arg_1.b.zz, arg_3.b, true), !arg_3.b, vec2<bool>(arg_1.b.x, true)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), global2[_wgslsmith_index_u32(~(~arg_1.a.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(19882u, _wgslsmith_mult_u32(arg_3.d.a.x, 75704u), 0u, func_3(vec2<i32>(u_input.c, u_input.c), u_input.a.x, Struct_2(arg_1, vec2<bool>(true, global4[_wgslsmith_index_u32(26064u, 4u)]), arg_0.yw, Struct_1(u_input.d, arg_1.b, arg_0.zz), arg_3.a.a.x))), vec4<u32>(56942u >> (u_input.d.x % 32u), 4294967295u, ~arg_3.e, ~96376u)), 25u)], arg_2.x);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<f32> {
    var var_0 = arg_2.c;
    var_0 = arg_2.c;
    global2 = array<Struct_1, 25>();
    global2 = array<Struct_1, 25>();
    global2 = array<Struct_1, 25>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1192f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 17u)]))), _wgslsmith_f_op_f32(f32(-1f) * -327f)) * arg_2.a.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 17u)], -779f, arg_2.c.x, 1000f) - vec4<f32>(-292f, -2208f, arg_0.c.x, -1001f)) * vec4<f32>(arg_2.c.x, arg_0.c.x, arg_0.c.x, 373f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.x, arg_3, 2516f, -1715f), vec4<f32>(arg_0.c.x, 782f, 267f, -656f), true))))), arg_2, _wgslsmith_sub_vec2_u32(arg_0.a.yx, func_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), 476f, _wgslsmith_div_f32(938f, -104f), _wgslsmith_f_op_f32(1502f + global1[_wgslsmith_index_u32(arg_2.a.x, 17u)])), Struct_1(select(vec3<u32>(arg_2.a.x, arg_0.a.x, 0u), u_input.d, false), arg_2.b, vec2<f32>(-714f, -1000f)), vec2<u32>(~87777u, 1u), Struct_2(func_2(vec4<f32>(arg_2.c.x, -1960f, 521f, -766f), arg_2, arg_0.a.zz, arg_1).d, vec2<bool>(arg_0.b.x, false), _wgslsmith_div_vec2_f32(arg_0.c, arg_0.c), Struct_1(vec3<u32>(0u, 4294967295u, 22769u), arg_2.b, vec2<f32>(-487f, -460f)), 32642u)).d.a.zx), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 1538f, -1000f, 2257f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1417f, -507f, -566f, arg_0.c.x), vec4<f32>(arg_0.c.x, -1000f, 506f, -1111f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-417f, arg_1.a.c.x, global1[_wgslsmith_index_u32(1u, 17u)], -168f))))), arg_0, vec2<u32>(select(~31689u, ~arg_2.a.x, global4[_wgslsmith_index_u32(~arg_2.a.x, 4u)]), abs(arg_1.a.a.x) >> (max(1u, 66401u) % 32u)), Struct_2(Struct_1(select(arg_0.a, arg_2.a, vec3<bool>(true, arg_0.b.x, arg_2.b.x)), arg_1.a.b, arg_1.d.c), arg_0.b.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_1.a.c.x)), Struct_1(arg_2.a | vec3<u32>(arg_0.a.x, 51836u, global0[_wgslsmith_index_u32(49848u, 27u)]), !arg_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, global1[_wgslsmith_index_u32(4294967295u, 17u)]) - vec2<f32>(-803f, -142f))), _wgslsmith_clamp_u32(1u, ~87864u, ~arg_2.a.x)))).a;
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(82942u, var_0.a.x), ~reverseBits(0u));
    var_1 = ~(min(vec2<u32>(0u, 4294967295u), _wgslsmith_add_vec2_u32(var_0.a.xy, vec2<u32>(0u, arg_1.e))) & _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), arg_0.a.xx)) ^ _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(arg_0.a.x, 4294967295u), _wgslsmith_mod_u32(67549u, u_input.a.x)), abs(~u_input.d.zx | ~vec2<u32>(23408u, arg_1.a.a.x)));
    let var_2 = 0i;
    let var_3 = arg_1;
    return 1u;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> i32 {
    global3 = countOneBits(func_5(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0, 0u), u_input.d) << (vec3<u32>(1u, 15473u, u_input.a.x) % vec3<u32>(32u)), vec3<bool>(false, true, !global4[_wgslsmith_index_u32(arg_0, 4u)]), _wgslsmith_f_op_vec2_f32(func_4(arg_0, global4[_wgslsmith_index_u32(~53459u, 4u)], func_2(vec4<f32>(591f, -762f, -1083f, -1000f), global2[_wgslsmith_index_u32(1u, 25u)], vec2<u32>(4294967295u, 0u), Struct_2(global2[_wgslsmith_index_u32(1u, 25u)], vec2<bool>(global4[_wgslsmith_index_u32(arg_0, 4u)], true), vec2<f32>(1000f, global1[_wgslsmith_index_u32(52302u, 17u)]), Struct_1(u_input.d, vec3<bool>(true, global4[_wgslsmith_index_u32(arg_0, 4u)], true), vec2<f32>(2052f, 249f)), u_input.b)), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 4u)], global4[_wgslsmith_index_u32(823u, 4u)], global4[_wgslsmith_index_u32(219u, 4u)])))), Struct_2(Struct_1(~vec3<u32>(0u, arg_0, 0u), select(vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.b, 4u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 4u)], true, global4[_wgslsmith_index_u32(arg_0, 4u)]), false), vec2<f32>(-343f, global1[_wgslsmith_index_u32(41520u, 17u)])), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-892f, 762f, global1[_wgslsmith_index_u32(2300u, 17u)], global1[_wgslsmith_index_u32(u_input.d.x, 17u)])), Struct_1(u_input.d, vec3<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 4u)], true, false), vec2<f32>(global1[_wgslsmith_index_u32(7883u, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), select(u_input.a, vec2<u32>(28714u, 4294967295u), vec2<bool>(false, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 4u)])), Struct_2(Struct_1(vec3<u32>(50974u, global0[_wgslsmith_index_u32(arg_0, 27u)], 32156u), vec3<bool>(false, false, global4[_wgslsmith_index_u32(arg_0, 4u)]), vec2<f32>(527f, -412f)), vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 4u)], false), vec2<f32>(global1[_wgslsmith_index_u32(1u, 17u)], 1003f), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 25u)], arg_0)).a.b.xx, func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1574f, global1[_wgslsmith_index_u32(0u, 17u)], 1031f, 882f))), Struct_1(u_input.d, vec3<bool>(global4[_wgslsmith_index_u32(14981u, 4u)], true, global4[_wgslsmith_index_u32(21705u, 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(12827u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])), u_input.a, Struct_2(global2[_wgslsmith_index_u32(arg_0, 25u)], vec2<bool>(false, true), vec2<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.b, 17u)]), Struct_1(u_input.d, vec3<bool>(global4[_wgslsmith_index_u32(arg_0, 4u)], true, global4[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<f32>(-384f, -559f)), arg_0)).c, global2[_wgslsmith_index_u32(~4294967295u, 25u)], ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_0, global0[_wgslsmith_index_u32(35696u, 27u)]))), Struct_1(abs(vec3<u32>(u_input.a.x, arg_0, 1u) ^ vec3<u32>(4294967295u, arg_0, arg_0)), select(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], true, false), vec3<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 4u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 4u)], false), vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 4u)], global4[_wgslsmith_index_u32(arg_0, 4u)], true)), vec3<bool>(true, global4[_wgslsmith_index_u32(0u, 4u)], global4[_wgslsmith_index_u32(1u, 4u)]), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 17u)], 518f)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(func_3(vec2<i32>(arg_1.x, arg_1.x), 1u, Struct_2(global2[_wgslsmith_index_u32(100523u, 25u)], vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec2<f32>(1039f, global1[_wgslsmith_index_u32(u_input.b, 17u)]), Struct_1(vec3<u32>(60678u, 50930u, 4601u), vec3<bool>(true, true, global4[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<f32>(-516f, global1[_wgslsmith_index_u32(10181u, 17u)])), arg_0))), 17u)])));
    global1 = array<f32, 17>();
    return _wgslsmith_mult_i32(19569i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 13321i, _wgslsmith_mod_i32(countOneBits(828i), ~arg_1.x)), select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(31061i, -32594i, arg_1.x, 16693i), vec4<i32>(u_input.c, arg_1.x, u_input.c, -1i)), -58941i, -arg_1.x), vec3<i32>(arg_1.x, u_input.c, ~2147483647i), global4[_wgslsmith_index_u32(0u, 4u)])));
}

fn func_6(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(2219f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(5447u, 17u)])), 354f)), -1371f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1815f - global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 17u)]) - 1000f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(321f, -342f, global1[_wgslsmith_index_u32(arg_0, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]) - vec4<f32>(-160f, global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(40283u, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)])), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(290f, -762f, global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]), vec4<f32>(-878f, 461f, global1[_wgslsmith_index_u32(u_input.b, 17u)], 1000f))))))), Struct_1(u_input.d, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(58987u, 17u)], 1473f, global1[_wgslsmith_index_u32(arg_0, 17u)], global1[_wgslsmith_index_u32(arg_0, 17u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 17u)], global1[_wgslsmith_index_u32(arg_0, 17u)], 623f, global1[_wgslsmith_index_u32(0u, 17u)]) * vec4<f32>(global1[_wgslsmith_index_u32(23368u, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 17u)], -1635f, global1[_wgslsmith_index_u32(arg_0, 17u)]))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 384f, global1[_wgslsmith_index_u32(u_input.b, 17u)], 934f)), func_2(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(37443u, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 17u)], global1[_wgslsmith_index_u32(arg_0, 17u)]), Struct_1(u_input.d, vec3<bool>(global4[_wgslsmith_index_u32(arg_0, 4u)], global4[_wgslsmith_index_u32(4294967295u, 4u)], true), vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 17u)], global1[_wgslsmith_index_u32(arg_0, 17u)])), u_input.d.zy, Struct_2(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 27u)], arg_0), vec3<bool>(false, true, global4[_wgslsmith_index_u32(0u, 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 17u)], global1[_wgslsmith_index_u32(7841u, 17u)])), vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 4u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 17u)], 1720f), global2[_wgslsmith_index_u32(1u, 25u)], 4294967295u)).d, vec2<u32>(1u, arg_0), func_2(vec4<f32>(498f, global1[_wgslsmith_index_u32(89565u, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 27u)], 17u)], -1069f), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 24128u), vec3<bool>(true, false, global4[_wgslsmith_index_u32(0u, 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(0u, 17u)], -404f)), u_input.d.yy, Struct_2(Struct_1(u_input.d, vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 4u)], true, global4[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 17u)])), vec2<bool>(false, global4[_wgslsmith_index_u32(arg_0, 4u)]), vec2<f32>(-1478f, -1714f), Struct_1(vec3<u32>(16265u, u_input.d.x, 1u), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 4u)], true, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(4778u, 17u)], -509f)), 0u))).d, _wgslsmith_add_vec2_u32(~u_input.a, ~u_input.d.xy), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(62909u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]) - vec4<f32>(-850f, -578f, global1[_wgslsmith_index_u32(1u, 17u)], 438f)), Struct_1(u_input.d, vec3<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28702u, 27u)], 4u)], global4[_wgslsmith_index_u32(3621u, 4u)], global4[_wgslsmith_index_u32(0u, 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 17u)], -1411f)), u_input.a, func_2(vec4<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 17u)], 1000f, 433f, global1[_wgslsmith_index_u32(arg_0, 17u)]), Struct_1(u_input.d, vec3<bool>(true, global4[_wgslsmith_index_u32(39572u, 4u)], global4[_wgslsmith_index_u32(11784u, 4u)]), vec2<f32>(1744f, 120f)), u_input.a, Struct_2(global2[_wgslsmith_index_u32(4294967295u, 25u)], vec2<bool>(global4[_wgslsmith_index_u32(43004u, 4u)], global4[_wgslsmith_index_u32(0u, 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(9752u, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 17u)]), global2[_wgslsmith_index_u32(arg_0, 25u)], 47374u)))).a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec2<f32>(global1[_wgslsmith_index_u32(38657u, 17u)], 222f), vec2<bool>(false, false))) - vec2<f32>(-1000f, global1[_wgslsmith_index_u32(0u, 17u)])))), ~firstTrailingBit(abs(vec2<u32>(u_input.d.x, 1u))), Struct_2(func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(537f, global1[_wgslsmith_index_u32(u_input.d.x, 17u)], global1[_wgslsmith_index_u32(8806u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(12892u, 17u)], 1160f) - vec4<f32>(-1066f, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 1234f, -1155f)))), global2[_wgslsmith_index_u32(~16987u, 25u)], func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1135f, 176f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 17u)], -301f) - vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33962u, 27u)], 17u)], global1[_wgslsmith_index_u32(arg_0, 17u)], 592f)), Struct_1(vec3<u32>(u_input.b, 19667u, u_input.d.x), vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 4u)], false, false), vec2<f32>(521f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14371u, 27u)], 17u)])), vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 27u)]), func_2(vec4<f32>(global1[_wgslsmith_index_u32(77080u, 17u)], -202f, global1[_wgslsmith_index_u32(4294967295u, 17u)], -168f), global2[_wgslsmith_index_u32(4294967295u, 25u)], vec2<u32>(49325u, 12674u), Struct_2(Struct_1(vec3<u32>(1u, 1u, 51286u), vec3<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 4u)], true, false), vec2<f32>(-883f, global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), vec2<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 4u)], global4[_wgslsmith_index_u32(28154u, 4u)]), vec2<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.d.x, 17u)]), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], global0[_wgslsmith_index_u32(25745u, 27u)], arg_0), vec3<bool>(true, global4[_wgslsmith_index_u32(84501u, 4u)], true), vec2<f32>(169f, -1805f)), arg_0))).d.a.zy, Struct_2(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 27u)]), 27u)], 25u)], !vec2<bool>(global4[_wgslsmith_index_u32(24031u, 4u)], global4[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(2135f, global1[_wgslsmith_index_u32(arg_0, 17u)]) + vec2<f32>(566f, -686f)), global2[_wgslsmith_index_u32(0u ^ arg_0, 25u)], 13761u >> (arg_0 % 32u))).d, select(select(vec2<bool>(global4[_wgslsmith_index_u32(0u, 4u)], global4[_wgslsmith_index_u32(95812u, 4u)]), vec2<bool>(true, true), select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], global4[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(66880u, 4u)]), vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 4u)], global4[_wgslsmith_index_u32(u_input.d.x, 4u)]))), !vec2<bool>(false, global4[_wgslsmith_index_u32(arg_0, 4u)]), !any(vec3<bool>(global4[_wgslsmith_index_u32(arg_0, 4u)], false, true))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(34530u, 17u)], 1645f)), vec2<f32>(1517f, global1[_wgslsmith_index_u32(1u, 17u)])), vec2<f32>(global1[_wgslsmith_index_u32(func_3(vec2<i32>(8521i, u_input.c), u_input.b, Struct_2(global2[_wgslsmith_index_u32(arg_0, 25u)], vec2<bool>(false, false), vec2<f32>(-617f, -593f), global2[_wgslsmith_index_u32(17160u, 25u)], 4465u)), 17u)], _wgslsmith_f_op_f32(f32(-1f) * -576f)))), func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 17u)], 688f, -202f, global1[_wgslsmith_index_u32(55719u, 17u)]) + vec4<f32>(1000f, 1959f, -1082f, global1[_wgslsmith_index_u32(18324u, 17u)])))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.b, 27u)], arg_0, arg_0)), vec4<u32>(u_input.a.x, arg_0, 4294967295u, 4294967295u) << (vec4<u32>(25385u, arg_0, arg_0, 4294967295u) % vec4<u32>(32u))), 25u)], vec2<u32>(0u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 0u)), Struct_2(func_2(vec4<f32>(-1000f, 449f, -1196f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16817u, 27u)], 17u)]), Struct_1(vec3<u32>(40016u, 1u, arg_0), vec3<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 4u)], global4[_wgslsmith_index_u32(4294967295u, 4u)], true), vec2<f32>(global1[_wgslsmith_index_u32(0u, 17u)], 1381f)), u_input.d.yx, Struct_2(global2[_wgslsmith_index_u32(4294967295u, 25u)], vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34335u, 27u)], 17u)]), Struct_1(vec3<u32>(4294967295u, 20950u, 0u), vec3<bool>(global4[_wgslsmith_index_u32(1u, 4u)], false, true), vec2<f32>(global1[_wgslsmith_index_u32(45907u, 17u)], -150f)), 1u)).a, !vec2<bool>(global4[_wgslsmith_index_u32(3088u, 4u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60266u, 27u)], 4u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2064f, global1[_wgslsmith_index_u32(u_input.d.x, 17u)])), Struct_1(u_input.d, vec3<bool>(false, global4[_wgslsmith_index_u32(69902u, 4u)], true), vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 17u)], -2432f)), max(3720u, u_input.a.x))).d, firstTrailingBit(~u_input.a.x))).b.x;
    let var_1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, 419i << (firstLeadingBit(u_input.d.x) % 32u), select(arg_1, u_input.c, false) ^ _wgslsmith_div_i32(2147483647i, arg_1), arg_1), vec4<i32>(u_input.c, -2147483647i, arg_1, -1i));
    let var_2 = all(vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0, global0[_wgslsmith_index_u32(15535u, 27u)], global0[_wgslsmith_index_u32(53046u, 27u)]), vec3<u32>(45129u, 25136u, 44961u), global4[_wgslsmith_index_u32(arg_0, 4u)]), u_input.d & vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 4294967295u)) | arg_0, 4u)], true, false, true));
    let var_3 = firstLeadingBit(~(-min(~vec4<i32>(var_1.x, arg_1, var_1.x, arg_1), var_1)));
    global0 = array<u32, 27>();
    return Struct_1(u_input.d, !(!func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1005f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 17u)], -761f)), Struct_1(u_input.d, vec3<bool>(true, var_2, true), vec2<f32>(-655f, global1[_wgslsmith_index_u32(0u, 17u)])), u_input.d.yx << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)), func_2(vec4<f32>(global1[_wgslsmith_index_u32(0u, 17u)], 1756f, global1[_wgslsmith_index_u32(arg_0, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 27u)], 17u)]), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(arg_0, 27u)], global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 39883u), vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 4u)], true, true), vec2<f32>(-613f, 1308f)), u_input.d.xx, Struct_2(global2[_wgslsmith_index_u32(arg_0, 25u)], vec2<bool>(false, true), vec2<f32>(-534f, -875f), Struct_1(vec3<u32>(u_input.b, 1u, 14551u), vec3<bool>(global4[_wgslsmith_index_u32(61646u, 4u)], var_2, global4[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<f32>(-1334f, 808f)), 20552u))).d.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1633f, 419f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)], 17u)], -1241f), vec2<f32>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<bool>(var_2, false))))) + vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(83154u, 17u)], -1456f), -109f))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-1497f - _wgslsmith_f_op_f32(879f + 825f)), arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1800f), _wgslsmith_f_op_vec2_f32(func_4(arg_0.a.x, false, func_2(vec4<f32>(-949f, -645f, -435f, arg_1.c.x), Struct_1(arg_1.a, arg_1.b, vec2<f32>(733f, arg_0.c.x)), arg_0.a.yz, Struct_2(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41990u, 27u)], 25u)], arg_1.b.xy, vec2<f32>(global1[_wgslsmith_index_u32(1u, 17u)], arg_1.c.x), global2[_wgslsmith_index_u32(67043u, 25u)], arg_1.a.x)), func_6(u_input.a.x, u_input.c).b)).x))), arg_1, vec2<u32>(arg_1.a.x ^ 38605u, _wgslsmith_sub_u32(26578u, 1u)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, 103f, -858f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(arg_0.a.x, 17u)], 1000f, arg_0.c.x, global1[_wgslsmith_index_u32(u_input.d.x, 17u)]))))), global2[_wgslsmith_index_u32(~((0u << (u_input.d.x % 32u)) & ~40705u), 25u)], _wgslsmith_sub_vec2_u32(u_input.d.zx, u_input.a), Struct_2(Struct_1(u_input.d, arg_1.b, _wgslsmith_f_op_vec2_f32(select(arg_0.c, arg_0.c, vec2<bool>(arg_1.b.x, global4[_wgslsmith_index_u32(19118u, 4u)])))), select(vec2<bool>(true, true), !vec2<bool>(true, arg_1.b.x), arg_1.b.x), vec2<f32>(322f, arg_1.c.x), arg_0, abs(0u ^ arg_1.a.x))));
    var var_1 = Struct_2(func_6(0u, 20695i), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-627f, 1034f, 655f, -198f), vec4<f32>(-2465f, 226f, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -1275f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.c.x, -405f, global1[_wgslsmith_index_u32(var_0.e, 17u)]) * vec4<f32>(-1000f, global1[_wgslsmith_index_u32(var_0.a.a.x, 17u)], arg_0.c.x, 930f))))), func_6(~(~u_input.a.x), u_input.c), arg_1.a.zy ^ ~(~u_input.a), Struct_2(var_0.d, arg_0.b.zx, _wgslsmith_div_vec2_f32(arg_0.c, _wgslsmith_f_op_vec2_f32(var_0.a.c + vec2<f32>(arg_0.c.x, -670f))), Struct_1(u_input.d >> (arg_0.a % vec3<u32>(32u)), !vec3<bool>(false, arg_1.b.x, true), _wgslsmith_f_op_vec2_f32(exp2(arg_0.c))), var_0.a.a.x)).d.b.zy, var_0.a.c, Struct_1(var_0.a.a, select(vec3<bool>(false, !global4[_wgslsmith_index_u32(1u, 4u)], all(var_0.d.b)), vec3<bool>(false, !arg_0.b.x, all(var_0.d.b)), false && any(arg_1.b.zz)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.x, arg_1.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, global1[_wgslsmith_index_u32(1u, 17u)]) - arg_1.c) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, 159f) + vec2<f32>(-193f, 193f))))), 24126u << ((~(~24021u) & max(37690u, reverseBits(global0[_wgslsmith_index_u32(arg_1.a.x, 27u)]))) % 32u));
    let var_2 = select(vec3<bool>(true, any(!vec2<bool>(false, arg_1.b.x)), arg_0.b.x), var_1.a.b, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.a.a), vec3<u32>(0u, abs(arg_1.a.x), ~arg_1.a.x)), ~27003u << (~(~var_0.a.a.x) % 32u)), 4u)]);
    var var_3 = arg_0.a.x;
    global1 = array<f32, 17>();
    return select(select(select(select(!vec4<bool>(true, var_1.b.x, arg_1.b.x, false), vec4<bool>(true, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85085u, 27u)], 4u)], true, true), any(arg_1.b)), !select(vec4<bool>(false, var_1.a.b.x, arg_0.b.x, true), vec4<bool>(var_1.b.x, false, global4[_wgslsmith_index_u32(4294967295u, 4u)], global4[_wgslsmith_index_u32(var_0.a.a.x, 4u)]), true), arg_0.b.x), select(!(!vec4<bool>(true, arg_0.b.x, true, arg_0.b.x)), select(select(vec4<bool>(false, false, true, var_2.x), vec4<bool>(global4[_wgslsmith_index_u32(1u, 4u)], var_1.d.b.x, false, true), true), select(vec4<bool>(arg_0.b.x, var_2.x, var_2.x, true), vec4<bool>(true, false, true, true), false), u_input.c <= -2147483647i), true), select(select(!vec4<bool>(true, true, arg_1.b.x, false), !vec4<bool>(false, arg_0.b.x, false, var_2.x), !vec4<bool>(arg_1.b.x, true, arg_1.b.x, var_0.b.x)), !select(vec4<bool>(false, arg_1.b.x, false, var_1.d.b.x), vec4<bool>(var_2.x, arg_1.b.x, false, arg_1.b.x), arg_1.b.x), !var_2.x)), vec4<bool>(var_0.a.b.x, false, true, var_1.a.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1659f, global1[_wgslsmith_index_u32(var_1.a.a.x, 17u)])))) < _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1630u, 27u)], var_0.e), 17u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(7182u, 25u)];
    global1 = array<f32, 17>();
    var var_1 = func_7(Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(55327u, u_input.a.x, global0[_wgslsmith_index_u32(var_0.a.x, 27u)], 16240u), ~vec4<u32>(global0[_wgslsmith_index_u32(7565u, 27u)], 9004u, var_0.a.x, u_input.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.d.x, ~u_input.d.x), 27u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.b << (44369u % 32u), 27u)], ~4294967295u)), !var_0.b, var_0.c), func_6(u_input.d.x | _wgslsmith_mod_u32(~14243u, u_input.b), func_1(~max(24901u, 2585u), vec3<i32>(_wgslsmith_clamp_i32(-6662i, 5387i, 25784i), 1i, u_input.c))));
    var var_2 = Struct_1(vec3<u32>(~var_0.a.x, countOneBits(84005u), 1u), vec3<bool>(false, all(vec4<bool>(u_input.c == 0i, !global4[_wgslsmith_index_u32(var_0.a.x, 4u)], !var_0.b.x, true)), var_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(~func_3(vec2<i32>(u_input.c, u_input.c), var_0.a.x, Struct_2(Struct_1(vec3<u32>(var_0.a.x, 0u, var_0.a.x), vec3<bool>(var_1.x, global4[_wgslsmith_index_u32(61288u, 4u)], var_0.b.x), vec2<f32>(553f, global1[_wgslsmith_index_u32(4294967295u, 17u)])), vec2<bool>(var_1.x, false), vec2<f32>(1007f, global1[_wgslsmith_index_u32(var_0.a.x, 17u)]), Struct_1(vec3<u32>(u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24154u, 27u)], 27u)], 27u)]), vec3<bool>(var_1.x, var_1.x, var_1.x), var_0.c), 47169u)), 17u)], _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(abs(var_0.a.x), 17u)], _wgslsmith_f_op_f32(var_0.c.x + 508f)))) + var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(43771u ^ var_2.a.x, 27u)], var_0.a.x, func_6(var_2.a.x, u_input.c).a.x), ~firstTrailingBit(vec4<u32>(1u, 1u, 4478u, var_0.a.x)) | ~vec4<u32>(4294967295u, 97209u, var_2.a.x, 16365u), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_2.a.zy, u_input.a), 7535u), func_5(func_6(1u, u_input.c), Struct_2(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(61335u, 27u)], u_input.a.x, 0u), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 4u)], false), vec2<f32>(global1[_wgslsmith_index_u32(1880u, 17u)], var_0.c.x)), vec2<bool>(var_0.b.x, false), vec2<f32>(456f, global1[_wgslsmith_index_u32(var_0.a.x, 17u)]), Struct_1(vec3<u32>(var_2.a.x, 1u, 43677u), vec3<bool>(false, var_0.b.x, global4[_wgslsmith_index_u32(u_input.d.x, 4u)]), var_0.c), var_0.a.x), func_2(vec4<f32>(2003f, 739f, 744f, var_2.c.x), global2[_wgslsmith_index_u32(33648u, 25u)], var_2.a.yy, Struct_2(global2[_wgslsmith_index_u32(var_2.a.x, 25u)], var_0.b.yy, vec2<f32>(-316f, -1550f), Struct_1(u_input.d, var_0.b, vec2<f32>(-129f, global1[_wgslsmith_index_u32(1u, 17u)])), global0[_wgslsmith_index_u32(var_0.a.x, 27u)])).d, 516f), u_input.b, ~firstLeadingBit(25362u))), reverseBits(-_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 52468i), vec2<i32>(33127i, 1i))) << (~_wgslsmith_div_vec2_u32(func_2(vec4<f32>(var_0.c.x, global1[_wgslsmith_index_u32(u_input.b, 17u)], var_2.c.x, 1393f), Struct_1(vec3<u32>(66098u, 0u, 1u), var_2.b, var_2.c), vec2<u32>(u_input.d.x, 10361u), Struct_2(Struct_1(var_0.a, var_1.wwy, vec2<f32>(var_2.c.x, -549f)), var_1.xy, var_2.c, global2[_wgslsmith_index_u32(1u, 25u)], 1u)).d.a.zx, var_0.a.zy) % vec2<u32>(32u)));
}

