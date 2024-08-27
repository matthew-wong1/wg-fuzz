struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-47849i, 1i, -12982i, 0i, i32(-2147483648), -1i, 0i, -39089i, 16978i, -11442i, i32(-2147483648), -1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 4683i, -1i, -1i, -2839i, -35103i, 2147483647i, -1i, 0i);

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<u32, 13> = array<u32, 13>(1u, 5949u, 60850u, 0u, 1u, 4294967295u, 1u, 0u, 0u, 22920u, 17691u, 1u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = select(vec2<bool>(~_wgslsmith_div_u32(1u, arg_0.b.c.x) >= ~max(44545u, 89569u), !(global1.b.b == true) && true), select(vec2<bool>(any(!vec4<bool>(global1.b.b, false, false, arg_0.b.b)), global1.b.b), !vec2<bool>(!global1.b.b, arg_0.b.b), !vec2<bool>(u_input.b < u_input.b, !global1.b.b)), !(!(!select(vec2<bool>(true, false), vec2<bool>(global1.b.b, global1.b.b), vec2<bool>(global1.b.b, true)))));
    global2 = array<Struct_2, 10>();
    let var_1 = ~(~_wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(arg_0.b.c.x, 13u)], 4294967295u), vec2<u32>(57068u, 0u), vec2<u32>(global1.b.c.x, 5425u))), ~vec2<u32>(4294967295u, 4294967295u)));
    global2 = array<Struct_2, 10>();
    let var_2 = Struct_1(global1.b.c.x, u_input.c);
    return arg_0.b.d;
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(global1.c, global2[_wgslsmith_index_u32(select(4294967295u, 4294967295u, global1.b.b), 10u)], global1.a, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31258u, 13u)], 13u)], 13u)], 23u)])))), Struct_2(firstTrailingBit(-vec3<i32>(-6285i, 1i, -2147483647i) & -global1.b.a), !select(true, true, true), ~(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], u_input.b, global1.b.c.x, 24089u) >> (~global1.b.c % vec4<u32>(32u))), -193f, 52567i), -243f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u & (global1.b.c.x << (select(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 13u)], 13u)], global1.b.b) % 32u)), 0u), 23u)]);
    global1 = var_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(global1.c * var_0.c), -481f, global1.c)))));
    var var_2 = u_input.c.yy;
    let var_3 = min(select(abs(vec4<i32>(u_input.d, 9644i, u_input.a.x, global1.b.e)), vec4<i32>(1i, -8388i, var_0.d, -42459i), any(vec3<bool>(true, var_0.b.b, true))) | ~vec4<i32>(var_0.d, 39246i, 1i, var_0.d), vec4<i32>(13875i, (global0[_wgslsmith_index_u32(global1.b.c.x, 23u)] | global1.d) >> (~u_input.b % 32u), -2147483647i, 1i)) ^ vec4<i32>(abs(max(1i, global1.d)), ~2147483647i, global1.d, _wgslsmith_mult_i32(_wgslsmith_div_i32(select(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(var_2.x, 23u)], false), _wgslsmith_dot_vec3_i32(global1.b.a, u_input.a)), ~u_input.a.x));
    return _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, 1414f, global1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -300f, -385f)))))));
}

fn func_4(arg_0: vec3<f32>) -> i32 {
    global0 = array<i32, 23>();
    global3 = array<u32, 13>();
    global1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.d)), global1.b, -383f, abs(_wgslsmith_mod_i32(u_input.d, _wgslsmith_clamp_i32(913i, global1.b.e, global0[_wgslsmith_index_u32(54934u, 23u)]) >> (reverseBits(42439u) % 32u))));
    global1 = Struct_4(global1.c, Struct_2(vec3<i32>(_wgslsmith_div_i32(u_input.d, 1i), ~global1.d, min(2147483647i, -1i)) >> (global1.b.c.wyx % vec3<u32>(32u)), true, global1.b.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.d) + -385f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), global1.b.e), 467f, -_wgslsmith_add_i32(27580i << (_wgslsmith_sub_u32(global1.b.c.x, global1.b.c.x) % 32u), global0[_wgslsmith_index_u32(global1.b.c.x, 23u)] >> (~u_input.b % 32u)));
    global0 = array<i32, 23>();
    return abs(global0[_wgslsmith_index_u32(3370u, 23u)]);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_i32(func_4(_wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_dot_vec3_i32(abs(-arg_1.a), u_input.a)) << (1u % 32u);
    global1 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.d - 649f))))))), Struct_2(arg_1.a, countOneBits(-6419i) <= (0i << ((u_input.b ^ 4294967295u) % 32u)), vec4<u32>(_wgslsmith_clamp_u32(arg_1.c.x, arg_1.c.x, 4294967295u), global1.b.c.x, ~1u, 1u) | _wgslsmith_mod_vec4_u32(global1.b.c | arg_1.c, arg_1.c), _wgslsmith_f_op_f32(exp2(arg_1.d)), arg_1.a.x), 573f, _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(32710u, 23u)], u_input.a.x), ~vec2<i32>(-39072i, -13567i)), -vec2<i32>(1i, arg_1.e)));
    let var_1 = Struct_1(arg_1.c.x, global1.b.c.xyy | _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(arg_1.c.x, global3[_wgslsmith_index_u32(u_input.b, 13u)], arg_1.c.x)), ~arg_1.c.zwz), ~vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(11528u, 13u)], arg_1.c.x) ^ (vec3<u32>(u_input.b, global1.b.c.x, 1u) | u_input.c)));
    var var_2 = Struct_1(2555u, u_input.c);
    global1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1274f * 167f))) + arg_0), Struct_2(global1.b.a & _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_1.b.x, 23u)], global0[_wgslsmith_index_u32(arg_1.c.x, 23u)], u_input.a.x), u_input.a), any(select(vec4<bool>(arg_1.b, arg_2, true, false), !vec4<bool>(true, arg_2, global1.b.b, true), vec4<bool>(false, true, global1.b.b, false))), abs(arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, _wgslsmith_div_f32(arg_1.d, 1033f))), reverseBits(-1i & var_0) | 1i), _wgslsmith_f_op_f32(ceil(627f)), select(_wgslsmith_mod_i32(43954i, reverseBits(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global1.b.c.x, 13u)], 23u)])), var_0, (arg_2 != arg_1.b) & true));
    return vec4<bool>(any(select(!vec2<bool>(false, arg_1.b), select(vec2<bool>(global1.b.b, false), vec2<bool>(global1.b.b, arg_1.b), global1.b.b), arg_1.b && arg_2)) || true, arg_1.b, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(!select(vec4<bool>(global1.b.b, true, true, global1.b.b), vec4<bool>(global1.b.b, true, global1.b.b, global1.b.b), false), !func_1(-478f, Struct_2(u_input.a, global1.b.b, global1.b.c, global1.b.d, global0[_wgslsmith_index_u32(0u, 23u)]), global1.b.b), !vec4<bool>(false, false, true, global1.b.b)));
    global0 = array<i32, 23>();
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.c, global1.c)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1785f, 763f, false)) - global1.b.d) * -403f), _wgslsmith_div_f32(-330f, global1.b.d))), 1000f);
    let var_3 = -29528i;
    let var_4 = ~firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(~66016u, 13u)], 1u), 13376u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-878f, -1000f), vec4<i32>(i32(-1i) * -27747i, u_input.d, firstTrailingBit(42074i), max(~u_input.d, -1i)), min(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_4, 39967u), vec2<u32>(1u, global3[_wgslsmith_index_u32(global1.b.c.x, 13u)])), vec2<u32>(global1.b.c.x, ~(6862u >> (1u % 32u)))));
}

