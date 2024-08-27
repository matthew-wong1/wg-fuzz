struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(false, true, true, true, false, false, true, true, true, false, false, false, true, true, false, false, true, false, true, false);

var<private> global1: array<i32, 7>;

var<private> global2: array<bool, 27> = array<bool, 27>(false, true, true, true, true, false, true, false, false, false, false, true, true, false, true, true, false, false, false, true, false, true, false, false, true, false, true);

var<private> global3: array<f32, 19> = array<f32, 19>(-267f, -890f, 871f, -998f, 1164f, 268f, -832f, -1000f, -1000f, 2017f, -885f, 1244f, -1938f, -1000f, -1435f, -367f, -523f, 352f, 366f);

var<private> global4: array<Struct_3, 7>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(~abs(~u_input.a), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(18794u, u_input.a.x), 7u)], ~(countOneBits(reverseBits(vec2<i32>(-68915i, -2147483647i))) & (~vec2<i32>(u_input.b, u_input.b) << (countOneBits(vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u)))), vec3<i32>(u_input.b, 2147483647i, ~(-1i)), u_input.a.x);
    global2 = array<bool, 27>();
    let var_1 = Struct_5(var_0.d.zy);
    let var_2 = var_1;
    let var_3 = var_0;
    return reverseBits((var_3.a | reverseBits(~vec3<u32>(0u, var_3.a.x, 1u))) | vec3<u32>(~(var_3.e >> (4294967295u % 32u)), ~var_3.a.x ^ 1u, ~var_0.e));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = vec4<u32>(4294967295u, arg_0.x ^ ~_wgslsmith_mult_u32(~arg_0.x, u_input.a.x << (1u % 32u)), max(arg_0.x, 1u), 1844u);
    return ~_wgslsmith_mult_i32(arg_1.c.x, arg_1.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: i32) -> vec2<bool> {
    let var_0 = vec2<bool>(arg_1.x, (arg_3 & _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(7539u, 7u)], 34308i), arg_3, global1[_wgslsmith_index_u32(1u, 7u)])) == (_wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(u_input.b, 0i)) & (global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(23181u, 0u, 58970u), 7u)] & ~u_input.b)));
    let var_1 = _wgslsmith_mult_vec2_i32(abs(firstTrailingBit(vec2<i32>(i32(-1i) * -24358i, -2147483647i))), max(vec2<i32>(firstLeadingBit(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, arg_0.c.x), vec2<i32>(1i, 2147483647i))) | select(arg_0.c, arg_0.d.zx, vec2<bool>(true, true)), abs(vec2<i32>(-20698i, arg_3)) & -(vec2<i32>(arg_0.c.x, -10021i) >> (arg_0.a.xy % vec2<u32>(32u)))));
    var var_2 = Struct_4(~vec4<i32>(_wgslsmith_mod_i32(-1i, 42004i), arg_0.d.x, abs(2147483647i | global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), ~0i), arg_0.d, (arg_0.a.x | select(arg_2.x & arg_0.a.x, 1u, all(var_0))) << (8286u % 32u), Struct_3(Struct_1(~vec3<u32>(1u, u_input.a.x, 1u), 34624i, vec2<i32>(-2778i, -arg_0.d.x), arg_0.d | max(arg_0.d, arg_0.d), 1u), Struct_2(arg_0, vec2<i32>(~arg_0.b, 51049i), arg_0, vec2<u32>(~arg_2.x, ~arg_2.x)), ~abs(~arg_2.x), countOneBits(_wgslsmith_mult_vec4_u32(arg_2, select(arg_2, arg_2, vec4<bool>(var_0.x, true, global2[_wgslsmith_index_u32(arg_0.a.x, 27u)], false))))));
    global1 = array<i32, 7>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-808f, global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(38939u, 19u)]) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(12297u, 19u)], -780f, -799f) + vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(0u, 19u)], -355f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1997f, global3[_wgslsmith_index_u32(1u, 19u)], 1241f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-338f, 1106f, -1466f))))), vec3<f32>(-1429f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 19u)]), 373f)));
    return vec2<bool>(any(select(select(vec3<bool>(global2[_wgslsmith_index_u32(46788u, 27u)], false, arg_1.x), select(vec3<bool>(global0[_wgslsmith_index_u32(55714u, 20u)], var_0.x, global2[_wgslsmith_index_u32(31355u, 27u)]), vec3<bool>(true, true, arg_1.x), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], true, true)), vec3<bool>(false, var_0.x, false)), select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 27u)], arg_1.x, false), select(vec3<bool>(arg_1.x, true, global2[_wgslsmith_index_u32(arg_0.a.x, 27u)]), vec3<bool>(false, var_0.x, true), vec3<bool>(false, true, true)), !arg_1.x), global2[_wgslsmith_index_u32(1u, 27u)])), select(select(all(vec2<bool>(arg_1.x, arg_1.x)) & global2[_wgslsmith_index_u32(reverseBits(21774u), 27u)], arg_1.x | select(true, false, arg_1.x), true), !((i32(-1i) * -17952i) < var_2.b.x), true));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    global0 = array<bool, 20>();
    let var_0 = 38362i;
    let var_1 = 1f;
    let var_2 = abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, u_input.b) & vec2<i32>(-1i, 1i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(1i, u_input.b), -vec2<i32>(14407i, 18369i))), -36952i));
    let var_3 = select(1i < _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_3, global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<i32>(1i, arg_3)), vec2<i32>(1i, var_0))), !any(arg_0), false | func_4(Struct_1(max(vec3<u32>(u_input.a.x, u_input.a.x, 17391u), arg_1), reverseBits(u_input.b), -vec2<i32>(-73991i, u_input.b), ~vec3<i32>(61311i, -13077i, global1[_wgslsmith_index_u32(4601u, 7u)]), 20258u), arg_0.wz, vec4<u32>(38294u, 1u, ~7345u, select(u_input.a.x, u_input.a.x, true)), abs(var_0)).x);
    return Struct_1(u_input.a, min(var_0, var_2), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(select(vec2<i32>(var_0, var_2), vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(arg_1.x, 7u)]), global2[_wgslsmith_index_u32(u_input.a.x, 27u)])), vec2<i32>(u_input.b, u_input.b) ^ (vec2<i32>(global1[_wgslsmith_index_u32(44258u, 7u)], var_0) | vec2<i32>(2147483647i, arg_3)), vec2<i32>(_wgslsmith_mult_i32(-1i, -1i), -u_input.b)), vec2<i32>(_wgslsmith_div_i32(arg_3, reverseBits(-52596i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], var_0, u_input.b), vec3<i32>(global1[_wgslsmith_index_u32(26472u, 7u)], u_input.b, -2147483647i), vec3<i32>(19250i, 28474i, -41848i)), firstLeadingBit(vec3<i32>(-1i, arg_3, -18765i))))), -(~(select(vec3<i32>(6260i, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], -2147483647i), vec3<i32>(1i, 24711i, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), arg_0.yzz) ^ vec3<i32>(var_0, 3889i, var_0))), ~(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) >> (u_input.a.x % 32u));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global3 = array<f32, 19>();
    let var_0 = func_5(select(select(select(vec4<bool>(true, arg_0, arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_0), any(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], true, arg_0, true))), !select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], false, false, false), false), select(true, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], select(arg_0, true, true))), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 27u)] || (false && arg_0), global3[_wgslsmith_index_u32(~4294967295u, 19u)] >= -485f, !(true | global2[_wgslsmith_index_u32(11993u, 27u)])), ((true && global2[_wgslsmith_index_u32(u_input.a.x, 27u)]) && true) & (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) < countOneBits(0u))), func_2() << (~(~(~vec3<u32>(33941u, 4294967295u, 8972u))) % vec3<u32>(32u)), any(func_4(Struct_1(vec3<u32>(0u, 4294967295u, 14619u), func_3(u_input.a, Struct_1(vec3<u32>(36086u, u_input.a.x, 69816u), 15188i, vec2<i32>(0i, u_input.b), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], -1i, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), 10552u), arg_0), -vec2<i32>(44212i, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), _wgslsmith_clamp_vec3_i32(vec3<i32>(37574i, -420i, global1[_wgslsmith_index_u32(32244u, 7u)]), vec3<i32>(1i, -1i, 51380i), vec3<i32>(1i, global1[_wgslsmith_index_u32(23957u, 7u)], u_input.b)), u_input.a.x & 15438u), !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], arg_0), vec2<bool>(false, false), arg_0), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 18856u, u_input.a.x, 32799u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u))), i32(-1i) * -global1[_wgslsmith_index_u32(59400u, 7u)])), abs(global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.a.x), 7u)]));
    global2 = array<bool, 27>();
    var var_1 = firstTrailingBit(~(firstTrailingBit(~var_0.a.x) | (abs(var_0.e) ^ var_0.e)));
    global3 = array<f32, 19>();
    return func_5(select(vec4<bool>(!any(vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.e, 20u)])), _wgslsmith_f_op_f32(ceil(-493f)) <= 211f, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true), select(vec4<bool>(true, select(true, true, true), global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true), vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 27u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_0), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], false, global2[_wgslsmith_index_u32(0u, 27u)], arg_0)), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)] & true, global0[_wgslsmith_index_u32(4294967295u, 20u)] && arg_0, true, any(vec4<bool>(global0[_wgslsmith_index_u32(20776u, 20u)], arg_0, global2[_wgslsmith_index_u32(9253u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)])))), false), vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.a, _wgslsmith_mult_vec3_u32(func_2(), vec3<u32>(u_input.a.x, var_0.e, 23002u))), 12391u, var_0.a.x), select(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(4294967295u, 19u)], 197f)))) <= global3[_wgslsmith_index_u32(var_0.e, 19u)], all(vec3<bool>(!global0[_wgslsmith_index_u32(77839u, 20u)], true, !arg_0))), min(firstTrailingBit(_wgslsmith_sub_i32(-global1[_wgslsmith_index_u32(var_0.e, 7u)], 2147483647i)), -2147483647i));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1056f, 884f)), 1244f, global3[_wgslsmith_index_u32(arg_0.e << (16352u % 32u), 19u)], _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(16360u, 19u)]))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1077f, global3[_wgslsmith_index_u32(26068u, 19u)], -650f, global3[_wgslsmith_index_u32(arg_0.a.x, 19u)])))))) + vec4<f32>(256f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_2.d.c, 19u)]) + _wgslsmith_f_op_f32(select(-446f, -1092f, global0[_wgslsmith_index_u32(arg_2.c, 20u)]))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(1083f)))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1319f)));
    global0 = array<bool, 20>();
    var var_1 = !vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(61280u, 20u)], global0[_wgslsmith_index_u32(94735u, 20u)]), !vec2<bool>(global0[_wgslsmith_index_u32(30445u, 20u)], global0[_wgslsmith_index_u32(25272u, 20u)]))), global2[_wgslsmith_index_u32(~2983u, 27u)]);
    global1 = array<i32, 7>();
    var_1 = vec2<bool>(all(select(select(!vec4<bool>(global2[_wgslsmith_index_u32(arg_2.c, 27u)], true, global0[_wgslsmith_index_u32(34331u, 20u)], global2[_wgslsmith_index_u32(4809u, 27u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 20u)], var_1.x, false, global2[_wgslsmith_index_u32(18780u, 27u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], var_1.x, false), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_2.d.a.e, 27u)], global0[_wgslsmith_index_u32(8566u, 20u)], var_1.x)), select(vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(arg_2.d.d.x, 27u)]), vec4<bool>(var_1.x, global2[_wgslsmith_index_u32(15973u, 27u)], var_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(arg_2.c, 27u)] && global2[_wgslsmith_index_u32(82954u, 27u)]))), var_1.x);
    return select(!var_1.x & true, var_1.x || true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(45741u, 54910u), vec2<u32>(_wgslsmith_mod_u32(32558u, 20247u), 17861u)), 20u)], ~47363u < max(4294967295u, ~u_input.a.x), all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(15823u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]))), func_6(func_1(select(true, true, true)), vec2<i32>(10499i, u_input.b << (41559u % 32u)), Struct_4(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 12483i, u_input.b, 8404i), ~vec3<i32>(global1[_wgslsmith_index_u32(125791u, 7u)], 26517i, global1[_wgslsmith_index_u32(88163u, 7u)]), _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 0u)), Struct_3(Struct_1(u_input.a, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.b), vec3<i32>(u_input.b, 2147483647i, u_input.b), 14413u), Struct_2(Struct_1(u_input.a, u_input.b, vec2<i32>(u_input.b, u_input.b), vec3<i32>(u_input.b, 12560i, 1571i), u_input.a.x), vec2<i32>(u_input.b, u_input.b), Struct_1(u_input.a, global1[_wgslsmith_index_u32(91030u, 7u)], vec2<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 22648i), u_input.a.x), u_input.a.xx), 1u, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)))));
    var var_1 = 23089u;
    let var_2 = vec3<u32>(u_input.a.x, ~_wgslsmith_div_u32(~u_input.a.x, 12142u), u_input.a.x);
    global4 = array<Struct_3, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-reverseBits(-2147483647i), 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(418f, -569f) + global3[_wgslsmith_index_u32(40755u, 19u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2682f, global3[_wgslsmith_index_u32(var_2.x, 19u)]))))), _wgslsmith_div_i32(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 7u)] & 1i));
}

