struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_3,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
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

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<f32>(766f, -1077f, -1000f, -192f), Struct_1(1u, 24807i, i32(-2147483648), vec3<i32>(-1153i, 0i, i32(-2147483648)), vec4<i32>(0i, -19407i, 43819i, 1i))), Struct_2(vec4<f32>(-736f, -140f, 888f, 1861f), Struct_1(4294967295u, -1i, 0i, vec3<i32>(i32(-2147483648), -10454i, 16663i), vec4<i32>(-6892i, -3477i, -16181i, 17756i))), Struct_2(vec4<f32>(-1744f, 479f, 341f, -2085f), Struct_1(6444u, -31358i, 31063i, vec3<i32>(9980i, i32(-2147483648), 20703i), vec4<i32>(20891i, 8234i, -38142i, -1i))), Struct_2(vec4<f32>(961f, -907f, 124f, 1000f), Struct_1(50635u, 0i, 2147483647i, vec3<i32>(2147483647i, -81332i, i32(-2147483648)), vec4<i32>(-45688i, -1i, 28602i, 15018i))), Struct_2(vec4<f32>(-334f, -377f, 301f, 281f), Struct_1(4294967295u, i32(-2147483648), -1i, vec3<i32>(-1i, 30903i, 0i), vec4<i32>(2147483647i, -15649i, -20561i, -1i))), Struct_2(vec4<f32>(702f, 727f, -3127f, 460f), Struct_1(1u, -8613i, 16362i, vec3<i32>(17864i, 3564i, 9560i), vec4<i32>(-1i, -1i, 41477i, -44641i))), Struct_2(vec4<f32>(-337f, -404f, 616f, -1642f), Struct_1(1u, 62676i, -8765i, vec3<i32>(-53579i, 32390i, -61567i), vec4<i32>(2147483647i, 12608i, -27517i, 1i))), Struct_2(vec4<f32>(-717f, 315f, 138f, -1144f), Struct_1(1u, 9439i, 1i, vec3<i32>(-43555i, 40234i, i32(-2147483648)), vec4<i32>(1i, -8455i, 1i, -10224i))), Struct_2(vec4<f32>(-1761f, -523f, -552f, -450f), Struct_1(1u, 1i, 1i, vec3<i32>(9094i, -37801i, 0i), vec4<i32>(0i, -15322i, -1i, 27425i))), Struct_2(vec4<f32>(1000f, -315f, 812f, 1809f), Struct_1(0u, 28901i, 37532i, vec3<i32>(0i, 1i, 29106i), vec4<i32>(-42478i, 2147483647i, 23227i, 2147483647i))), Struct_2(vec4<f32>(-1000f, -254f, -593f, 457f), Struct_1(4294967295u, -35388i, 1i, vec3<i32>(-24524i, -13015i, 2147483647i), vec4<i32>(-3855i, 32330i, 0i, -15760i))), Struct_2(vec4<f32>(638f, -2357f, -1251f, -957f), Struct_1(0u, -9468i, -1i, vec3<i32>(i32(-2147483648), 746i, -1i), vec4<i32>(5010i, 61706i, -1i, 24098i))), Struct_2(vec4<f32>(-1517f, 422f, 871f, 376f), Struct_1(4294967295u, 53226i, 2147483647i, vec3<i32>(7801i, -67460i, -1684i), vec4<i32>(-2595i, -11403i, 2147483647i, 2147483647i))), Struct_2(vec4<f32>(976f, -1040f, 1300f, 157f), Struct_1(1u, -21157i, 2147483647i, vec3<i32>(0i, 2147483647i, 3555i), vec4<i32>(7007i, 14338i, -1i, 42642i))), Struct_2(vec4<f32>(-1191f, 1814f, 1000f, 287f), Struct_1(11414u, 2147483647i, -24565i, vec3<i32>(2147483647i, 1i, 86394i), vec4<i32>(-21458i, 1i, 2147483647i, -1i))), Struct_2(vec4<f32>(1296f, 801f, 708f, -455f), Struct_1(22396u, i32(-2147483648), 45603i, vec3<i32>(-7848i, 14191i, 2147483647i), vec4<i32>(2147483647i, -5455i, 42725i, -46053i))), Struct_2(vec4<f32>(-149f, -864f, 1458f, 355f), Struct_1(19569u, 3276i, 1i, vec3<i32>(-29928i, 59782i, -6508i), vec4<i32>(i32(-2147483648), i32(-2147483648), 16591i, -68300i))), Struct_2(vec4<f32>(-152f, 2232f, -1957f, 1000f), Struct_1(0u, 22766i, i32(-2147483648), vec3<i32>(67872i, 23719i, -770i), vec4<i32>(0i, -1i, 74765i, 0i))), Struct_2(vec4<f32>(-889f, 1275f, -774f, 351f), Struct_1(23251u, 2147483647i, -12366i, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(-67638i, -42413i, 6695i, 7296i))), Struct_2(vec4<f32>(-1053f, -372f, 779f, 1230f), Struct_1(4294967295u, -1i, -3691i, vec3<i32>(1i, -25485i, 71262i), vec4<i32>(-9263i, -32810i, 1i, -1i))), Struct_2(vec4<f32>(-1000f, 2211f, 403f, 204f), Struct_1(65764u, 16324i, 16547i, vec3<i32>(686i, 1i, -27941i), vec4<i32>(0i, 0i, i32(-2147483648), -1i))), Struct_2(vec4<f32>(-532f, 1288f, 3054f, -159f), Struct_1(4294967295u, -2951i, 1i, vec3<i32>(25875i, 2147483647i, 0i), vec4<i32>(-25320i, -8289i, 0i, i32(-2147483648)))), Struct_2(vec4<f32>(-1176f, -1597f, -272f, 836f), Struct_1(1u, 50748i, i32(-2147483648), vec3<i32>(1i, 2147483647i, 3126i), vec4<i32>(73872i, -23217i, 0i, 46058i))), Struct_2(vec4<f32>(-618f, 1342f, 1155f, 2017f), Struct_1(1u, 28124i, 2147483647i, vec3<i32>(-12743i, 2147483647i, 0i), vec4<i32>(0i, 96i, 2147483647i, -21740i))), Struct_2(vec4<f32>(1000f, -1997f, 880f, -1720f), Struct_1(60217u, -18360i, -1i, vec3<i32>(-46945i, -1i, 7851i), vec4<i32>(1i, 1i, 7503i, 70649i))));

var<private> global1: Struct_2;

var<private> global2: array<u32, 27> = array<u32, 27>(9815u, 1u, 14547u, 4294967295u, 35107u, 7132u, 4294967295u, 26112u, 4294967295u, 39655u, 4294967295u, 39294u, 1u, 1u, 47484u, 4294967295u, 0u, 0u, 99932u, 4294967295u, 4294967295u, 27883u, 74552u, 4294967295u, 89633u, 11451u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = Struct_4(Struct_3(Struct_1(u_input.a.x, firstTrailingBit(2147483647i >> (u_input.b.x % 32u)), u_input.c.x, vec3<i32>(arg_1.b.b, reverseBits(global1.b.b), i32(-1i) * -38237i), ~min(global1.b.e, arg_1.b.e)), true, global1.b));
    var var_1 = select(vec2<bool>(select(var_0.a.b != (true | var_0.a.b), var_0.a.b, false), any(select(!vec2<bool>(var_0.a.b, var_0.a.b), vec2<bool>(var_0.a.b, var_0.a.b), select(vec2<bool>(true, var_0.a.b), vec2<bool>(false, false), true)))), select(vec2<bool>(true && all(vec3<bool>(false, var_0.a.b, false)), !var_0.a.b || true), vec2<bool>(true, var_0.a.b), (~4294967295u >= ~u_input.b.x) || !var_0.a.b), !any(select(vec3<bool>(true, true, var_0.a.b), !vec3<bool>(var_0.a.b, var_0.a.b, true), true)));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * _wgslsmith_div_f32(arg_0, global1.a.x)))), 2147483647i, Struct_3(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], _wgslsmith_sub_i32(firstTrailingBit(u_input.c.x), -45570i), select(_wgslsmith_div_i32(global1.b.b, -1i), u_input.c.x, all(vec3<bool>(var_1.x, true, var_1.x))), firstLeadingBit(-vec3<i32>(global1.b.e.x, var_0.a.c.e.x, var_0.a.c.e.x)), vec4<i32>(_wgslsmith_mod_i32(var_0.a.c.e.x, 2147483647i), 1i, ~(-31568i), arg_1.b.c >> (66487u % 32u))), true, Struct_1(1u, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.b, u_input.d.x, 15447i), vec3<i32>(arg_1.b.e.x, arg_1.b.e.x, -1i)), -_wgslsmith_mod_i32(-1i, 1i), vec3<i32>(var_0.a.c.b, -2147483647i, var_0.a.c.b) | -vec3<i32>(40122i, u_input.d.x, 2147483647i), vec4<i32>(~u_input.d.x, -2147483647i, abs(arg_1.b.d.x), -2147483647i))), global1.b.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_1.a.x)), 1247f, true || (var_0.a.a.b > ~(-888i)))));
    var_1 = select(select(vec2<bool>(var_1.x, var_2.c.b), vec2<bool>(any(select(vec4<bool>(var_1.x, var_2.c.b, var_0.a.b, var_2.c.b), vec4<bool>(var_0.a.b, var_2.c.b, true, true), vec4<bool>(true, var_0.a.b, var_0.a.b, var_1.x))), all(!vec4<bool>(false, var_1.x, false, var_0.a.b))), any(vec2<bool>(var_1.x, true))), select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(select(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), var_0.a.b), select(vec2<bool>(true, var_2.c.b), vec2<bool>(true, var_0.a.b), var_0.a.b), !vec2<bool>(var_2.c.b, var_0.a.b)), select(!vec2<bool>(var_0.a.b, false), vec2<bool>(true, true), var_0.a.b), var_1.x)), var_1.x);
    var var_3 = var_2.c.b;
    return _wgslsmith_f_op_vec4_f32(select(global1.a, vec4<f32>(545f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f - arg_0) - var_2.a), -389f)), _wgslsmith_f_op_f32(abs(arg_0)), 1505f), !(!vec4<bool>(var_1.x, false, 0i >= u_input.c.x, var_0.a.b))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(countOneBits(u_input.b.x), 1u) | _wgslsmith_add_u32(global2[_wgslsmith_index_u32(32889u, 27u)], ~4294967295u), 1u >> (_wgslsmith_clamp_u32(countOneBits(global1.b.a), abs(arg_2.b.a), 2198u) % 32u), arg_2.b.a) ^ abs(~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~56848u));
    global2 = array<u32, 27>();
    global2 = array<u32, 27>();
    var var_1 = firstTrailingBit(~vec2<u32>(u_input.b.x | var_0, select(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 16633u, !arg_0)));
    global1 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a.x + -108f), _wgslsmith_f_op_f32(ceil(-1432f)))) - arg_1)) + _wgslsmith_f_op_f32(933f - _wgslsmith_div_f32(global1.a.x, global1.a.x)));
}

fn func_2(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = firstLeadingBit(_wgslsmith_div_i32(-10102i, global1.b.c));
    var var_1 = _wgslsmith_f_op_f32(func_4(false, global1.a.x, Struct_2(_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global1.a, vec4<f32>(global1.a.x, global1.a.x, -1686f, global1.a.x)), _wgslsmith_f_op_vec4_f32(func_3(global1.a.x, Struct_2(global1.a, global1.b)))))), Struct_1(1u, global1.b.e.x >> (u_input.b.x % 32u), _wgslsmith_div_i32(min(27738i, u_input.d.x), ~18146i), global1.b.e.wwx, vec4<i32>(~14855i, u_input.d.x, global1.b.b, 2147483647i))), true));
    var var_2 = global1.a;
    let var_3 = firstTrailingBit(1u) ^ ~(~firstTrailingBit(~74685u));
    let var_4 = Struct_4(Struct_3(global1.b, true, global1.b));
    return ~vec4<u32>(~(~u_input.a.x), ~25011u, 609u, global1.b.a);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(abs(_wgslsmith_add_i32(2147483647i, u_input.d.x)), _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_mult_i32(-7002i, global1.b.c)), 0i);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.x))), arg_1.a.x, -419f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a.x * 568f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))), Struct_1(1u, var_0.x, 1i, abs(abs(-vec3<i32>(-2565i, var_0.x, 20606i))), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b.e.x, global1.b.b, 2147483647i, 33130i), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.b.e.x, 1i, global1.b.d.x, arg_1.b.b), arg_1.b.e)))));
    let var_2 = _wgslsmith_f_op_f32(-737f - _wgslsmith_f_op_f32(905f + _wgslsmith_f_op_f32(-arg_1.a.x)));
    global2 = array<u32, 27>();
    var_1 = global0[_wgslsmith_index_u32(var_1.b.a, 25u)];
    return Struct_1(~(~(~(~11360u))), 36569i, 16959i, arg_1.b.e.yzz, abs(firstTrailingBit(vec4<i32>(var_1.b.b, var_1.b.d.x, 2147483647i, -1i)) | (arg_1.b.e << (_wgslsmith_add_vec4_u32(arg_0, arg_0) % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_5 {
    let var_0 = func_5(func_2(vec2<bool>(true, true)) | _wgslsmith_div_vec4_u32(~vec4<u32>(global1.b.a, 0u, 79823u, arg_0.x), vec4<u32>(func_2(vec2<bool>(true, true)).x, ~arg_1.x, global2[_wgslsmith_index_u32(arg_0.x, 27u)], 4294967295u)), global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_mod_u32(arg_0.x >> (71556u % 32u), global2[_wgslsmith_index_u32(func_2(vec2<bool>(true, false)).x, 27u)])), 25u)]);
    var var_1 = Struct_1(_wgslsmith_clamp_u32(u_input.b.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, 0u, 64721u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 0u, global2[_wgslsmith_index_u32(1u, 27u)], 0u), vec4<u32>(var_0.a, 6900u, 1u, 0u))), ~0u), u_input.c.x, reverseBits(-_wgslsmith_dot_vec2_i32(var_0.d.zx << (vec2<u32>(1372u, 0u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(var_0.d.yy, vec2<i32>(-26754i, 6716i)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.e.xyx, global1.b.d), vec3<i32>(-2147483647i, 1i, 48333i), ~(-vec3<i32>(2147483647i, u_input.d.x, 0i))), vec4<i32>(var_0.d.x, u_input.c.x, 27338i, 0i) << (_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_0.x, 42861u, 3677u, 0u), ~vec4<u32>(34396u, global2[_wgslsmith_index_u32(0u, 27u)], u_input.b.x, u_input.b.x), vec4<bool>(true, true, true, true)), countOneBits(vec4<u32>(arg_1.x, u_input.b.x, arg_1.x, var_0.a) | vec4<u32>(1u, 35743u, var_0.a, 1u))) % vec4<u32>(32u)));
    var var_2 = u_input.d.x;
    var_1 = Struct_1(arg_1.x, u_input.d.x, u_input.d.x, vec3<i32>(max(select(_wgslsmith_dot_vec2_i32(vec2<i32>(9189i, var_1.e.x), global1.b.e.ww), var_1.b, false), ~(~1i)), firstTrailingBit(-244i), -_wgslsmith_mult_i32(abs(0i), var_1.e.x)), vec4<i32>(66639i, -_wgslsmith_sub_i32(var_0.b, u_input.c.x), ~1i, -2147483647i) >> (vec4<u32>(~0u, 4294967295u, ~_wgslsmith_sub_u32(u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), 27744u) % vec4<u32>(32u)));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -884f))))), min(u_input.c.x & abs(u_input.d.x), i32(-1i) * -5298i) >> (~10616u % 32u), Struct_3(var_0, true, func_5(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(20876u, var_0.a, var_0.a, 7246u), vec4<u32>(1u, global1.b.a, 25391u, global1.b.a)), func_2(vec2<bool>(false, false))), Struct_2(global1.a, func_5(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)], u_input.b.x, arg_0.x), global0[_wgslsmith_index_u32(4294967295u, 25u)])))), u_input.a.x & global1.b.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.a.x, global1.a.x), _wgslsmith_f_op_f32(581f + -982f), all(vec2<bool>(false, false)))) - _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.a.x))))))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a, u_input.b);
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~global2[_wgslsmith_index_u32(firstTrailingBit(1u), 27u)], _wgslsmith_clamp_u32(~0u, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global1.b.a)), _wgslsmith_mult_vec2_u32(~u_input.a.xx >> (_wgslsmith_div_vec2_u32(~u_input.a.zy, _wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global1.b.a, 27u)], global1.b.a), u_input.b)) % vec2<u32>(32u)), u_input.b));
    var_1 = _wgslsmith_add_u32(20198u, ~(~(~136924u)));
    var var_2 = Struct_4(Struct_3(func_1(vec3<u32>(countOneBits(global2[_wgslsmith_index_u32(var_0.c.c.a, 27u)]), u_input.a.x, 53622u), u_input.b).c.c, true, Struct_1(_wgslsmith_add_u32(countOneBits(4294967295u), 52884u), ~_wgslsmith_div_i32(var_0.c.c.e.x, var_0.b), _wgslsmith_dot_vec3_i32(~var_0.c.a.e.yyy, -u_input.d), vec3<i32>(2147483647i | u_input.c.x, -21764i, u_input.d.x), vec4<i32>(countOneBits(u_input.c.x), _wgslsmith_add_i32(global1.b.b, 2147483647i), u_input.c.x, u_input.d.x << (1u % 32u)))));
    var var_3 = func_1(abs(u_input.a), u_input.b).c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d.x));
}

