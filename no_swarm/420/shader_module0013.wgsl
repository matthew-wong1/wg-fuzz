struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32;

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global4: array<Struct_3, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec3<bool> {
    global2 = global4[_wgslsmith_index_u32(0u, 27u)];
    global4 = array<Struct_3, 27>();
    global4 = array<Struct_3, 27>();
    let var_0 = Struct_3(Struct_2(abs(u_input.d), Struct_1(min(global0.d, arg_0.a) < 0i), arg_1.b.x | ~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, 48716u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d, -1i), abs(vec2<i32>(global2.b.a, 23702i))), global2.b.e), arg_0, arg_0.b, -_wgslsmith_add_i32(-42291i >> (~global2.b.c % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, 38427i), select(vec3<i32>(global2.b.d, -4564i, global0.a), vec3<i32>(0i, arg_0.a, -7668i), vec3<bool>(true, true, false)))), ~_wgslsmith_mult_u32(global2.e, 119299u));
    let var_1 = global4[_wgslsmith_index_u32(~max(~_wgslsmith_sub_u32(~0u, ~1u), ~(~u_input.a.x) ^ arg_0.c), 27u)];
    return vec3<bool>(~_wgslsmith_add_i32(_wgslsmith_mod_i32(24179i, var_0.d), ~var_0.a.a) < ~firstLeadingBit(~var_0.a.d), true, true);
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(895f, -497f) + _wgslsmith_div_f32(719f, 759f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(258f, 1476f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-225f)) - _wgslsmith_f_op_f32(exp2(1f)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1052f + -193f)), _wgslsmith_f_op_f32(sign(-740f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(682f - 201f)))))));
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.a.yzw, select(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(111276u, arg_0.b.x, u_input.a.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 79708u, u_input.b.x), vec3<u32>(1u, 0u, global2.a.c) | u_input.a.wwy, vec3<u32>(global2.b.c, arg_0.b.x, 52820u))), _wgslsmith_sub_vec3_u32(vec3<u32>(47648u << (u_input.a.x % 32u), 19614u, arg_0.b.x), vec3<u32>(~u_input.a.x, ~1u, 8792u)), u_input.a.x >= 0u));
    var var_2 = Struct_1(any(select(vec4<bool>(true, global0.b.a, global2.a.e.a, global0.e.a), arg_0.a, arg_0.a)) != !(all(vec4<bool>(global0.e.a, global2.c.a, false, false)) & (u_input.d < 62503i)));
    global1 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(223f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_3 = -490f;
    return global0.e.a;
}

fn func_2() -> f32 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1438f, _wgslsmith_div_f32(-675f, -884f))), 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, 910f)))))));
    var var_2 = !(global2.c.a || all(vec2<bool>(true, true))) || func_4(Struct_4(!(!vec4<bool>(true, global0.b.a, true, global0.e.a)), max(u_input.a.ww, _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, u_input.b)), Struct_1(all(vec3<bool>(true, global2.b.e.a, global2.c.a))), select(vec3<bool>(false, global0.e.a, global0.e.a), func_3(global2.a, Struct_4(vec4<bool>(false, global2.a.b.a, global2.a.b.a, false), u_input.a.xz, global2.b.b, vec3<bool>(global2.a.e.a, true, global0.b.a))), func_3(Struct_2(-2147483647i, Struct_1(global2.c.a), 56303u, -1i, global0.e), Struct_4(vec4<bool>(global2.c.a, false, global0.e.a, false), vec2<u32>(1u, 0u), Struct_1(true), vec3<bool>(true, false, global2.c.a))))));
    let var_3 = Struct_3(Struct_2(-_wgslsmith_add_i32(_wgslsmith_sub_i32(41687i, 0i), global0.d), Struct_1(global0.e.a), ~_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(4294967295u, 73788u, 1u)), -1i, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, global2.b.c & global0.c), firstTrailingBit(_wgslsmith_sub_u32(4294967295u, global0.c))), 15u)]), global2.a, Struct_1(global2.a.b.a), global0.d, u_input.b.x);
    let var_4 = global0.e.a;
    return -828f;
}

fn func_1() -> vec2<i32> {
    global4 = array<Struct_3, 27>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1201f))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(490f)))), _wgslsmith_f_op_f32(func_2())))));
    var var_0 = global0.d;
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1932f)), _wgslsmith_f_op_f32(f32(-1f) * -446f)));
    var var_1 = global4[_wgslsmith_index_u32(max(~(~1u), countOneBits(_wgslsmith_mult_u32(min(~u_input.b.x, global0.c), 4294967295u))), 27u)];
    return _wgslsmith_div_vec2_i32(-vec2<i32>((u_input.d << (18662u % 32u)) ^ global2.d, global0.d), -(~(vec2<i32>(-2147483647i, var_1.a.d) >> (vec2<u32>(global0.c, u_input.b.x) % vec2<u32>(32u)))) | (reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-64303i, -12873i), vec2<i32>(-10977i, 2147483647i))) << (~(u_input.b | u_input.b) % vec2<u32>(32u))));
}

fn func_5(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = select(vec3<bool>(u_input.d >= u_input.c, global0.e.a, true), !func_3(global2.a, Struct_4(vec4<bool>(global2.a.e.a, global0.b.a, true, false), ~vec2<u32>(0u, u_input.b.x), Struct_1(global0.e.a), select(vec3<bool>(global2.c.a, global2.b.b.a, false), vec3<bool>(global2.c.a, global2.c.a, global2.a.b.a), false))), ~1i == u_input.c);
    let var_1 = ~_wgslsmith_add_u32(~(global2.a.c >> (global0.c % 32u)) | abs(global0.c | global0.c), 24136u);
    var var_2 = select(vec3<i32>(-1i) * -min(firstLeadingBit(vec3<i32>(-42529i, arg_0.x, u_input.d)), ~vec3<i32>(arg_0.x, arg_0.x, global2.a.d)), ~((vec3<i32>(-1i) * -vec3<i32>(arg_0.x, 2147483647i, 1i)) & vec3<i32>(2147483647i, -9701i, 45378i)), func_3(Struct_2(reverseBits(abs(global0.a)), Struct_1(false), _wgslsmith_mult_u32(~global0.c, ~global0.c), 14487i, Struct_1(global0.e.a)), Struct_4(vec4<bool>(true, true, false, global0.e.a), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.xx), 4294967295u), global2.a.e, vec3<bool>(true, true, false))));
    global2 = Struct_3(Struct_2(_wgslsmith_clamp_i32(global2.a.a & firstTrailingBit(var_2.x), arg_0.x, var_2.x), global2.a.e, ~48983u, 28979i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, ~(~vec2<u32>(42140u, 33916u))), 15u)]), Struct_2(_wgslsmith_mult_i32(-183i, _wgslsmith_mult_i32(7947i, ~global0.d)), Struct_1(true || select(false, var_0.x, var_0.x)), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_clamp_u32(1u, 30357u, 51832u)) ^ _wgslsmith_mult_u32(firstTrailingBit(var_1), ~19403u), u_input.c, global2.a.b), Struct_1(var_0.x), i32(-1i) * -global2.a.a, global2.b.c);
    let var_3 = Struct_2(_wgslsmith_div_i32(-2147483647i, firstTrailingBit(~global2.a.d)), global3[_wgslsmith_index_u32(~0u, 15u)], firstLeadingBit(4294967295u), min(arg_0.x, i32(-1i) * -(~(-36704i))), Struct_1(true));
    return Struct_3(global2.a, var_3, Struct_1(true), -(21894i << (select(select(var_1, var_1, var_3.e.a), _wgslsmith_div_u32(0u, var_1), true) % 32u)), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(~vec2<i32>(~56093i, _wgslsmith_sub_i32(global0.a, global2.d)), func_1(), all(vec3<bool>(true, !global2.c.a, 0u > u_input.b.x))));
    let var_1 = _wgslsmith_mod_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, u_input.a));
    let var_2 = vec4<i32>(-global0.d, -func_5(vec2<i32>(1i, 1i)).d, ~func_5(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, global0.d), vec2<i32>(var_0.b.d, 14666i) & vec2<i32>(0i, global0.d))).a.a, 29730i);
    let var_3 = vec2<u32>(u_input.b.x, ~1u);
    global2 = func_5(firstTrailingBit(vec2<i32>(-42747i, var_0.b.d)));
    let var_4 = 1u;
    let var_5 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.d, -2147483647i, -5087i, var_0.d), vec4<i32>(var_2.x, global0.d, global0.d, 1i)), func_1().x, var_2.x) > global2.d);
    global4 = array<Struct_3, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec4<u32>(512u, var_4, var_4, max(var_0.b.c, var_1.x))), var_3, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(firstTrailingBit(var_2.x), _wgslsmith_div_i32(global2.b.a, -45132i), -2300i), _wgslsmith_div_i32(~var_2.x >> (select(global0.c, 1u, true) % 32u), global0.a)), reverseBits(var_0.b.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(979f + _wgslsmith_f_op_f32(1000f + -325f)))));
}

