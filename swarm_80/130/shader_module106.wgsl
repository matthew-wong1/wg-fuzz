struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: array<u32, 15> = array<u32, 15>(66118u, 4294967295u, 0u, 236u, 3473u, 11098u, 0u, 4366u, 4294967295u, 32514u, 4294967295u, 4294967295u, 0u, 1u, 59122u);

var<private> global2: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(1i, 22587i, i32(-2147483648), -28671i), vec4<i32>(1i, -66258i, 34792i, 2147483647i), vec4<i32>(0i, 1725i, -27119i, -16051i), vec4<i32>(27146i, 0i, -23077i, -1i), vec4<i32>(-18091i, -1i, -1i, 10301i), vec4<i32>(6952i, 42070i, -39022i, 0i), vec4<i32>(i32(-2147483648), -8760i, -24373i, 33505i), vec4<i32>(0i, 1i, -1i, -17970i), vec4<i32>(-11259i, 21370i, 1i, 2147483647i), vec4<i32>(0i, 12386i, -1i, -32683i), vec4<i32>(-7550i, 0i, -9672i, 29537i), vec4<i32>(-13814i, 9897i, -42833i, 36392i), vec4<i32>(-5543i, -1i, 0i, -8051i), vec4<i32>(i32(-2147483648), 9113i, 42705i, -11979i), vec4<i32>(i32(-2147483648), 2147483647i, -31525i, -50040i), vec4<i32>(35963i, -16044i, 30900i, 61395i), vec4<i32>(18087i, 50388i, -23160i, -1i), vec4<i32>(0i, 4315i, -61946i, 10650i), vec4<i32>(0i, -36441i, 75085i, i32(-2147483648)), vec4<i32>(7462i, 1i, -18265i, 23184i), vec4<i32>(-55865i, 2147483647i, 0i, -1i), vec4<i32>(-466i, -36925i, 50074i, 1i), vec4<i32>(0i, 31029i, 71694i, i32(-2147483648)), vec4<i32>(1i, -22457i, 2147483647i, i32(-2147483648)), vec4<i32>(12654i, 11210i, 1i, 18699i), vec4<i32>(7931i, 1i, 42885i, -8761i), vec4<i32>(-1067i, 2147483647i, 3239i, -12770i), vec4<i32>(1i, 2147483647i, -1442i, 0i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    global0 = array<vec2<i32>, 9>();
    var var_0 = global2[_wgslsmith_index_u32(0u, 28u)];
    global0 = array<vec2<i32>, 9>();
    var var_1 = 18894i;
    var_1 = -1i;
    return -711f;
}

fn func_3() -> vec3<f32> {
    global1 = array<u32, 15>();
    var var_0 = vec3<bool>(false, false, all(vec2<bool>(true, true)));
    let var_1 = -1532f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(422f, var_1, 686f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1303f, var_1, var_1)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -640f, _wgslsmith_f_op_f32(-var_1))), !(!(!vec3<bool>(false, false, var_0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -1000f))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: i32) -> f32 {
    global0 = array<vec2<i32>, 9>();
    var var_0 = Struct_3(-min(vec4<i32>(-u_input.b, firstLeadingBit(27691i), _wgslsmith_clamp_i32(u_input.b, arg_0, u_input.a.x), 3172i), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, arg_2, arg_0, 23538i), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62817u, 15u)], 28u)] << (vec4<u32>(0u, 11732u, 4294967295u, global1[_wgslsmith_index_u32(30534u, 15u)]) % vec4<u32>(32u)))), Struct_2(Struct_1(vec2<bool>(true, all(vec3<bool>(true, true, false))), -1193f, _wgslsmith_add_i32(_wgslsmith_mult_i32(11115i, 0i), firstLeadingBit(u_input.b)), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x)))), arg_1.x, Struct_1(vec2<bool>(true, true), arg_1.x, _wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yy - vec2<f32>(arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 1497f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(847f)), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-1055f + arg_1.x)))), Struct_1(vec2<bool>(true, true), 197f, abs(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(0u, 28u)] & global2[_wgslsmith_index_u32(4294967295u, 28u)], vec4<i32>(-24512i, 19068i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(127f, arg_1.x))))), arg_1.xy))));
    let var_1 = Struct_4(Struct_3(min(vec4<i32>(arg_2, arg_0, 1i, 27718i) >> ((vec4<u32>(16868u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79764u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]) << (vec4<u32>(31744u, 80758u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4731u, 15u)], 15u)], 15u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(30035i, 1i, 14899i, u_input.a.x))), Struct_2(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-384f, var_0.b.a.b)), _wgslsmith_f_op_f32(109f + 397f)), var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.d.x, arg_1.x, var_0.c.b, arg_1.x))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.b, 791f, 661f, var_0.c.b))))), var_0.b.a), Struct_2(var_0.b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3035u, 15u)], 15u)], global1[_wgslsmith_index_u32(1u, 15u)])))), _wgslsmith_f_op_f32(max(813f, -712f)))), var_0.b.c, vec4<f32>(_wgslsmith_f_op_f32(-513f - 121f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), arg_1.x, var_0.c.d.x)), !var_0.b.c.a.x, vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_dot_vec4_u32(vec4<u32>(~79233u, ~19814u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65267u, 15u)], 15u)], 25277u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36615u, 15u)], 15u)] | 44450u, 15u)], 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10000u, 15u)], 15u)]), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28344u, 15u)], 15u)])), ~6759u)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], ~(~global1[_wgslsmith_index_u32(21524u, 15u)])));
    var_0 = var_1.a;
    var var_2 = firstTrailingBit(select(~(var_1.d.wwz & var_1.d.xxz), var_1.d.wyw, select(!(!vec3<bool>(var_0.c.a.x, true, var_1.a.b.c.a.x)), vec3<bool>(any(vec2<bool>(true, false)), var_0.b.a.a.x, true), false)));
    return -1089f;
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    global1 = array<u32, 15>();
    global1 = array<u32, 15>();
    var var_0 = true;
    let var_1 = -44932i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~(~(-67720i)), _wgslsmith_f_op_vec3_f32(func_3()), -(1i << ((arg_0 | 4294967295u) % 32u)))) * -2670f);
    return !all(!(!vec2<bool>(true, arg_1))) | !(true && arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) - -1513f);
    global1 = array<u32, 15>();
    var var_1 = Struct_4(Struct_3(_wgslsmith_mod_vec4_i32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49683u, 15u)], 15u)], 28u)], -(vec4<i32>(-2147483647i, arg_0.c, 1i, arg_1.c.x) >> (vec4<u32>(21121u, global1[_wgslsmith_index_u32(1u, 15u)], 28834u, global1[_wgslsmith_index_u32(4294967295u, 15u)]) % vec4<u32>(32u)))), Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1221f), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -33907i), arg_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 656f))), var_0, arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1026f, 799f, 677f))))), Struct_1(vec2<bool>(true, any(arg_0.a)), -595f, 34349i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1468f) * arg_0.d)))), Struct_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) * _wgslsmith_f_op_f32(-var_0))), Struct_1(arg_0.a, _wgslsmith_f_op_f32(func_1(min(vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], global1[_wgslsmith_index_u32(2975u, 15u)]), vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43074u, 15u)], 15u)])))), reverseBits(-27472i << (0u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(func_4(66904i, vec3<f32>(1801f, 2166f, arg_1.a), arg_1.c.x)), _wgslsmith_div_f32(arg_2, 2325f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_2, -365f, arg_1.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(272f, arg_2, arg_0.b, var_0))))), false, max(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(408u, 15u)], 15u)], 94668u, 49788u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 92900u, 0u, 54294u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29905u, 15u)], 15u)], 15u)], 19700u, 4294967295u, 8739u), vec4<u32>(1u, 40001u, 0u, global1[_wgslsmith_index_u32(68284u, 15u)])) % vec4<u32>(32u)), ~select(vec4<u32>(30995u, 55336u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70578u, 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)]), vec4<u32>(14528u, 31955u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], 4294967295u), false)) << (abs(~vec4<u32>(4294967295u, 0u, 38526u, global1[_wgslsmith_index_u32(4294967295u, 15u)])) % vec4<u32>(32u)));
    let var_2 = Struct_4(Struct_3(var_1.a.a, var_1.b, Struct_1(vec2<bool>(false, true), arg_1.a, ~u_input.b, _wgslsmith_f_op_vec2_f32(var_1.b.d.yx + _wgslsmith_f_op_vec2_f32(-arg_0.d)))), Struct_2(Struct_1(arg_0.a, 872f, ~abs(arg_1.c.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.b.d.yw)))), 377f, arg_0, var_1.b.d), false, _wgslsmith_add_vec4_u32(~var_1.d & firstLeadingBit(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.d.x, 15u)], 15u)], 0u, 24998u, 41630u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(13325u, 15u)], abs(65048u), 4294967295u, reverseBits(21539u)), firstLeadingBit(var_1.d), vec4<u32>(39411u, global1[_wgslsmith_index_u32(8023u, 15u)], ~36052u, ~126932u))));
    let var_3 = abs(2147483647i);
    return var_1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1336f, -1000f))), vec2<f32>(-1362f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(327f, -674f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1173f, -1136f) + vec2<f32>(1933f, 783f))))))));
    let var_1 = Struct_3(vec4<i32>(-1i) * -min(vec4<i32>(0i, u_input.b, u_input.a.x, u_input.a.x), -vec4<i32>(-1i, u_input.b, u_input.b, u_input.b)), func_5(Struct_1(vec2<bool>(false, false), -585f, _wgslsmith_div_i32(-2147483647i, 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-585f, var_0.x)))), Struct_5(_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(1286u, 4294967295u, 44277u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10978u, 15u)], 15u)], 15u)], 15u)], 15u)]), vec4<u32>(16366u, global1[_wgslsmith_index_u32(4294967295u, 15u)], 4294967295u, global1[_wgslsmith_index_u32(0u, 15u)])))), false, min(~u_input.a.zy, u_input.a.xy >> (vec2<u32>(global1[_wgslsmith_index_u32(1u, 15u)], 24714u) % vec2<u32>(32u))), func_2(~global1[_wgslsmith_index_u32(1u, 15u)], any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(519f - _wgslsmith_div_f32(var_0.x, var_0.x))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23737u, 15u)], 15u)], 15u)], 28u)], vec4<i32>(2227i, u_input.b, 0i, u_input.b)), -46323i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-307f, 645f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(457f, -1662f)))))));
    let var_2 = var_1.b.c;
    let var_3 = vec2<bool>(var_2.a.x, var_2.a.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1300f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1629f, 1145f, var_2.a.x))))) * -1108f));
    let var_5 = func_5(Struct_1(select(!vec2<bool>(var_1.b.a.a.x, true), vec2<bool>(var_1.b.c.a.x, var_2.a.x | true), !(!vec2<bool>(false, var_3.x))), _wgslsmith_f_op_f32(floor(622f)), -2147483647i ^ var_1.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-352f, 177f), vec2<f32>(-442f, var_4))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -212f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 860f)), !vec2<bool>(true, var_1.b.c.a.x))))), Struct_5(_wgslsmith_f_op_f32(max(var_2.d.x, -505f)), var_2.a.x, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, var_1.c.c, var_1.a.x), _wgslsmith_mult_vec4_i32(var_1.a, vec4<i32>(-2147483647i, var_1.a.x, u_input.a.x, var_1.b.c.c))), var_1.b.c.c), true), var_4).c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b ^ 2616i, ~reverseBits(abs(vec4<u32>(global1[_wgslsmith_index_u32(1850u, 15u)], 3048u, global1[_wgslsmith_index_u32(1u, 15u)], 0u) >> (vec4<u32>(global1[_wgslsmith_index_u32(65945u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], global1[_wgslsmith_index_u32(1u, 15u)], 1u) % vec4<u32>(32u)))));
}

