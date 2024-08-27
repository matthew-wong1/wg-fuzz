struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<u32>(122429u, 36197u, 0u), vec4<u32>(41421u, 4294967295u, 12558u, 0u), vec2<i32>(-53264i, 2147483647i), vec2<f32>(996f, -573f), vec2<i32>(-60839i, 0i)), Struct_1(vec3<u32>(9582u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec2<i32>(-5247i, -7451i), vec2<f32>(379f, -1697f), vec2<i32>(-52056i, 13365i)), Struct_1(vec3<u32>(0u, 77134u, 4294967295u), vec4<u32>(45387u, 60471u, 51314u, 1u), vec2<i32>(60704i, 1i), vec2<f32>(547f, 2053f), vec2<i32>(i32(-2147483648), 2147483647i)));

var<private> global1: Struct_2;

var<private> global2: array<bool, 13>;

var<private> global3: u32 = 0u;

var<private> global4: array<u32, 27> = array<u32, 27>(61187u, 1u, 1u, 13492u, 4294967295u, 92022u, 1492u, 0u, 1u, 46563u, 4294967295u, 55040u, 48038u, 7575u, 4294967295u, 0u, 1u, 32940u, 23856u, 87065u, 22191u, 5230u, 0u, 0u, 12982u, 51100u, 41634u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.x - -170f), 263f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.a.x, 146f), _wgslsmith_f_op_f32(681f + 1737f), global2[_wgslsmith_index_u32(select(62562u, u_input.d.x, global2[_wgslsmith_index_u32(global1.b.b.x, 13u)]), 13u)])), _wgslsmith_f_op_f32(sign(global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-288f - -1474f)))), global0[_wgslsmith_index_u32(1u, 3u)]);
    let var_0 = _wgslsmith_f_op_f32(-1000f * global1.b.d.x);
    global4 = array<u32, 27>();
    global0 = array<Struct_1, 3>();
    let var_1 = !all(vec2<bool>(~u_input.c.x != global1.b.c.x, false));
    return ((_wgslsmith_dot_vec2_u32(u_input.e.zy, vec2<u32>(4294967295u, 66825u) >> (global1.b.a.zy % vec2<u32>(32u))) < countOneBits(37321u)) == all(select(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 13u)], var_1), select(vec2<bool>(true, var_1), vec2<bool>(var_1, true), var_1), !vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 13u)])))) | !(!any(vec4<bool>(true, var_1, true, true)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(vec4<bool>(all(!vec2<bool>(false, global2[_wgslsmith_index_u32(global1.b.a.x, 13u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.x)) * _wgslsmith_f_op_f32(global1.b.d.x + arg_1.b.d.x)) != -737f, true, !(arg_1.b.a.x >= u_input.a) & global2[_wgslsmith_index_u32(~(1u | global4[_wgslsmith_index_u32(u_input.e.x, 27u)]), 13u)]), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, 2147483647i, -2147483647i) >> (vec4<u32>(global1.b.a.x, 29168u, 1u, 0u) % vec4<u32>(32u)), select(vec4<i32>(-36020i, arg_1.b.e.x, u_input.c.x, arg_1.b.e.x), vec4<i32>(-3225i, 12598i, -3206i, -6672i), vec4<bool>(true, global2[_wgslsmith_index_u32(21837u, 13u)], global2[_wgslsmith_index_u32(6012u, 13u)], global2[_wgslsmith_index_u32(25656u, 13u)]))), arg_1, vec3<bool>(!all(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], false, true)), global2[_wgslsmith_index_u32(global1.b.a.x, 13u)] || !func_3(), countOneBits(_wgslsmith_div_i32(-13961i, 57992i)) <= _wgslsmith_div_i32(1944i, firstTrailingBit(1i))), arg_1.a.x);
    let var_1 = _wgslsmith_f_op_f32(-global1.a.x);
    var var_2 = select(!(!var_0.a.zxx), var_0.d, any(vec2<bool>(global1.b.b.x < arg_1.b.b.x, all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 13u)], false)))));
    global1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2174f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(860f - var_1), global1.b.d.x)), 2214f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x)))), _wgslsmith_f_op_f32(round(764f))), global1.b);
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(~4294967295u >> (~global4[_wgslsmith_index_u32(arg_1.b.a.x, 27u)] % 32u)), u_input.d.x), _wgslsmith_div_vec2_u32((var_0.c.b.a.zx | _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.b.b.x, global1.b.b.x), var_0.c.b.a.xz)) | vec2<u32>(arg_1.b.a.x, _wgslsmith_add_u32(42106u, 25038u)), arg_1.b.a.yx | (~vec2<u32>(arg_1.b.b.x, 0u) >> (reverseBits(arg_1.b.a.zx) % vec2<u32>(32u)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.e - global1.b.d.x))), 1585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - _wgslsmith_div_f32(326f, arg_1.b.d.x)), 1f) * global1.a), Struct_1(arg_1.b.a, firstTrailingBit(min(vec4<u32>(var_0.c.b.b.x, global4[_wgslsmith_index_u32(55049u, 27u)], 0u, 31849u), vec4<u32>(1u, var_0.c.b.a.x, 1u, 113914u)) & ~vec4<u32>(u_input.e.x, 29088u, global4[_wgslsmith_index_u32(u_input.b.x, 27u)], u_input.d.x)), arg_0.yy, global1.a.yw, abs(-(~global1.b.e))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = arg_3.b.e;
    var var_1 = ~max(u_input.b.yw, u_input.d);
    var var_2 = countOneBits(~abs(var_1.x));
    var_2 = _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_dot_vec4_u32((firstLeadingBit(vec4<u32>(arg_3.b.b.x, 24092u, 51846u, 4294967295u)) ^ vec4<u32>(global1.b.a.x, 5200u, 1u, 1u)) << (vec4<u32>(abs(0u), 1u, _wgslsmith_mult_u32(var_1.x, arg_0.a.x), select(56570u, arg_0.b.x, global2[_wgslsmith_index_u32(4294967295u, 13u)])) % vec4<u32>(32u)), u_input.b));
    var var_3 = ~u_input.c.x;
    return u_input.e;
}

fn func_1() -> i32 {
    global4 = array<u32, 27>();
    var var_0 = ~firstLeadingBit(_wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 16517i)), vec4<i32>(-25511i | global1.b.e.x, firstLeadingBit(5989i), 44355i, -2147483647i)));
    var var_1 = global1.b.b.wx;
    var var_2 = Struct_1(func_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, _wgslsmith_sub_u32(reverseBits(u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b.xwx, u_input.b.zww))), 3u)], global1.b.d.x, vec2<i32>(-1i, -15353i), func_2(-var_0.xxx, Struct_2(_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(-321f, 1000f, global1.b.d.x, -690f)), global1.b))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~global1.b.b, vec4<u32>(34553u, var_1.x, 1u, 66528u)), ~45619u, var_1.x, ~1u), func_2(reverseBits(vec3<i32>(global1.b.e.x, var_0.x, -1i)), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.b.d.x))), func_2(vec3<i32>(u_input.c.x, global1.b.e.x, -44047i), Struct_2(global1.a, Struct_1(vec3<u32>(49163u, var_1.x, var_1.x), vec4<u32>(59315u, 39490u, 8958u, 1420u), global1.b.c, vec2<f32>(global1.b.d.x, global1.b.d.x), var_0.wz))).b)).b.b), vec2<i32>(firstTrailingBit(~1i), global1.b.e.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.b.d.x, _wgslsmith_f_op_f32(-global1.b.d.x)))), u_input.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(1162f, var_2.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.d.x), 333f, !global2[_wgslsmith_index_u32(44518u, 13u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_2.d.x) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_2.d), var_2.d))))));
    return ~var_2.e.x;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_2 {
    global4 = array<u32, 27>();
    global4 = array<u32, 27>();
    var var_0 = ~_wgslsmith_add_vec2_u32(global1.b.b.wy, select(~u_input.b.yw, vec2<u32>(u_input.a, 0u), _wgslsmith_f_op_f32(-global1.a.x) == -1188f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.a.x - -1293f), _wgslsmith_f_op_f32(round(159f)), _wgslsmith_f_op_f32(global1.a.x * -1000f)), _wgslsmith_f_op_vec3_f32(-global1.a.yxz))));
    let var_2 = _wgslsmith_clamp_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 6758u, global4[_wgslsmith_index_u32(0u, 27u)], 0u), reverseBits(vec4<u32>(0u, 1u, 4294967295u, 4294967295u)))), ~_wgslsmith_div_vec4_u32(~(~u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a), abs(u_input.b))), u_input.b);
    return Struct_2(func_2(firstLeadingBit(~arg_0) | countOneBits(vec3<i32>(-6504i, -1i, -46423i)), Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1), Struct_1(~u_input.e, u_input.b, global1.b.c, _wgslsmith_div_vec2_f32(vec2<f32>(global1.b.d.x, 1000f), global1.a.wy), _wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(arg_0.x, -6897i))))).a, Struct_1(vec3<u32>(~(global1.b.a.x & var_2.x), 17295u, u_input.e.x), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.wx, var_2.zw), 1u ^ global1.b.a.x, var_2.x, var_0.x)), arg_0.zy, var_1.zy, arg_0.yy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-2336i & (1i << (global1.b.b.x % 32u)));
    global1 = func_5(vec3<i32>(u_input.c.x, var_0, func_1()), global1.a, select(vec4<bool>(!(u_input.c.x < global1.b.e.x), false & global2[_wgslsmith_index_u32(global1.b.b.x, 13u)], !global2[_wgslsmith_index_u32(~u_input.d.x, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(true, false, true | global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global1.b.b.x), 13u)], any(vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d.x, 27u)], 27u)], 13u)], false, true))), !all(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)], true, false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + func_2(vec3<i32>(-52662i, u_input.c.x, var_0), Struct_2(global1.a, global1.b)).a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(123f, global1.b.d.x, global1.a.x, -598f) * vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x)))) - _wgslsmith_div_vec4_f32(global1.a, vec4<f32>(_wgslsmith_div_f32(global1.b.d.x, global1.b.d.x), _wgslsmith_div_f32(-990f, global1.b.d.x), -381f, _wgslsmith_f_op_f32(-global1.a.x)))) * _wgslsmith_f_op_vec4_f32(ceil(global1.a)));
    var var_2 = vec4<f32>(231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + global1.a.x)))), _wgslsmith_f_op_f32(min(var_1.x, global1.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(ceil(485f))))));
    global0 = array<Struct_1, 3>();
    let var_3 = func_5(_wgslsmith_mod_vec3_i32(vec3<i32>(1i & _wgslsmith_div_i32(-2147483647i, var_0), -12888i, abs(7442i)), vec3<i32>(var_0, -2147483647i, -1i) & (select(vec3<i32>(u_input.c.x, 52482i, -6785i), vec3<i32>(var_0, u_input.c.x, global1.b.e.x), vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 13u)])) >> (global1.b.b.xyy % vec3<u32>(32u)))), global1.a, select(!(!vec4<bool>(global2[_wgslsmith_index_u32(7562u, 13u)], false, false, global2[_wgslsmith_index_u32(u_input.d.x, 13u)])), select(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b.b.x, 27u)], 13u)], global2[_wgslsmith_index_u32(20367u, 13u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], false, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23006u, 27u)], 13u)], global2[_wgslsmith_index_u32(1u, 13u)]), vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(global1.b.b.x, 13u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(global1.b.b.x, 13u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d.x, 27u)], 13u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 13u)], false, false, global2[_wgslsmith_index_u32(global1.b.a.x, 13u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], false, true, true)), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(global1.b.a.x, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 13u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(62760u, 27u)], 27u)], 27u)], 13u)]))), !vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(15273u, 13u)]), select(!vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(1u, 13u)]), select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(global1.b.a.x, 13u)], global2[_wgslsmith_index_u32(global1.b.b.x, 13u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 13u)], true, false), false), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.d.x), 13u)])), !(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(global1.b.b.x, 13u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(25375u, 13u)], true, global2[_wgslsmith_index_u32(global1.b.b.x, 13u)], false), global2[_wgslsmith_index_u32(3911u, 13u)])))).b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(var_3.c.x, 13984i, var_0), vec3<i32>(-1i, var_3.c.x, -2147483647i))), vec3<u32>(~(global1.b.a.x ^ ~64420u), var_3.b.x, 871u), -(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.c.x, var_0, -21995i), vec3<i32>(25097i, u_input.c.x, -3225i)) ^ 1i), u_input.c.x, _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(59549i, global1.b.c.x, var_0), ~vec3<i32>(global1.b.c.x, -2147483647i, 1i))), -vec3<i32>(global1.b.e.x, 2147483647i, 23976i) << (func_4(func_5(vec3<i32>(var_0, global1.b.c.x, 15275i), global1.a, vec4<bool>(true, false, global2[_wgslsmith_index_u32(98607u, 13u)], true)).b, _wgslsmith_f_op_f32(max(var_3.d.x, var_1.x)), -vec2<i32>(var_0, 40117i), func_2(vec3<i32>(-1i, 2147483647i, u_input.c.x), Struct_2(global1.a, global0[_wgslsmith_index_u32(0u, 3u)]))) % vec3<u32>(32u))));
}

