struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(0i, Struct_1(true)), Struct_4(1i, Struct_1(false)), Struct_4(-5907i, Struct_1(true)), Struct_4(1i, Struct_1(false)), Struct_4(2147483647i, Struct_1(false)), Struct_4(19892i, Struct_1(false)), Struct_4(-28223i, Struct_1(true)), Struct_4(30297i, Struct_1(false)), Struct_4(96562i, Struct_1(false)));

var<private> global2: array<i32, 15>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global0 = array<Struct_3, 9>();
    let var_0 = !select(select(!select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, arg_0, false, false), all(vec4<bool>(arg_0, arg_0, arg_0, arg_0))), vec4<bool>(arg_0, arg_0, any(vec2<bool>(false, false)), true)), vec4<bool>(36280u <= u_input.a.x, !arg_0, select(false, any(vec3<bool>(true, arg_0, false)), false), false), vec4<bool>(true, !all(vec3<bool>(true, true, arg_0)), true, false));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(865f)) + -1090f)) + _wgslsmith_f_op_f32(f32(-1f) * -377f)) - -788f);
    global0 = array<Struct_3, 9>();
    global2 = array<i32, 15>();
    return _wgslsmith_div_vec2_i32(firstTrailingBit((vec2<i32>(49352i, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]) << (u_input.e % vec2<u32>(32u))) >> (vec2<u32>(33232u, u_input.d.x) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(select(u_input.d.yy & u_input.a.yy, _wgslsmith_clamp_vec2_u32(u_input.b.xy, u_input.d.zz, u_input.c.yx), vec2<bool>(false, arg_0)), min(~vec2<u32>(u_input.c.x, u_input.b.x), u_input.d.yy >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)))) % vec2<u32>(32u)), abs(select(vec2<i32>(1i, global2[_wgslsmith_index_u32(4294967295u, 15u)]) | (vec2<i32>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)]) | vec2<i32>(2147483647i, -35574i)), -(vec2<i32>(-23048i, global2[_wgslsmith_index_u32(4294967295u, 15u)]) >> (u_input.b.xx % vec2<u32>(32u))), select(!var_0.yw, var_0.yz, select(vec2<bool>(false, true), vec2<bool>(var_0.x, true), arg_0)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_5) -> i32 {
    var var_0 = Struct_4(-2147483647i, Struct_1(true));
    global2 = array<i32, 15>();
    let var_1 = -2147483647i >> ((~abs(~arg_1.b.x) ^ 1u) % 32u);
    let var_2 = Struct_2(_wgslsmith_mult_i32(var_1 << (1u % 32u), ~(-(global2[_wgslsmith_index_u32(arg_1.b.x, 15u)] >> (37118u % 32u)))));
    let var_3 = var_2;
    return ~var_0.a;
}

fn func_5(arg_0: i32) -> f32 {
    global2 = array<i32, 15>();
    global1 = array<Struct_4, 9>();
    global2 = array<i32, 15>();
    global2 = array<i32, 15>();
    let var_0 = _wgslsmith_f_op_f32(abs(-932f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_5(countOneBits(func_4(func_3(true), Struct_5(false, abs(vec2<u32>(u_input.b.x, u_input.c.x)))))));
    var var_1 = Struct_2(_wgslsmith_mod_i32(2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(u_input.b.x, 15u)], -1i) >> (vec3<u32>(60265u, u_input.e.x, 33821u) % vec3<u32>(32u)), abs(vec3<i32>(46846i, global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(14885u, 15u)])))));
    global2 = array<i32, 15>();
    var_1 = Struct_2(global2[_wgslsmith_index_u32(~(~u_input.d.x), 15u)]);
    var var_2 = _wgslsmith_mult_u32(~10319u, firstTrailingBit(u_input.a.x));
    return var_0;
}

fn func_1() -> Struct_4 {
    global0 = array<Struct_3, 9>();
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1038f, _wgslsmith_f_op_f32(f32(-1f) * -329f))) - _wgslsmith_f_op_f32(-194f * 238f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1380f)) * _wgslsmith_f_op_f32(func_2())) * 751f)), u_input.a.x, -34356i != _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], -27770i, global2[_wgslsmith_index_u32(u_input.b.x, 15u)])), vec3<i32>(0i, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 1i), select(-2147483647i, 0i, true))), Struct_1(func_4(firstLeadingBit(vec2<i32>(-10158i, global2[_wgslsmith_index_u32(4294967295u, 15u)])), Struct_5(true, vec2<u32>(20648u, 33508u))) >= ~select(global2[_wgslsmith_index_u32(4294967295u, 15u)], 2317i, true)));
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(726f, -1178f))), vec2<f32>(-281f, var_0.a))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(353f)))), var_0.a)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1335f, 915f) * vec2<f32>(var_0.a, -545f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1229f, var_0.a))), vec2<f32>(var_0.a, -691f)), select(vec2<bool>(true, true), vec2<bool>(var_0.c, false), var_0.c))));
    return Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(max(global2[_wgslsmith_index_u32(1u, 15u)], ~(-12829i)), ~(-global2[_wgslsmith_index_u32(var_1.x, 15u)]), 28960i), vec3<i32>(_wgslsmith_sub_i32(-6268i, 65192i >> (var_1.x % 32u)), abs(~global2[_wgslsmith_index_u32(var_1.x, 15u)]), global2[_wgslsmith_index_u32(var_0.b, 15u)])), var_0.d);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_5 {
    global2 = array<i32, 15>();
    global0 = array<Struct_3, 9>();
    var var_0 = Struct_2(48949i);
    var var_1 = Struct_2(~(~arg_1.a));
    var var_2 = Struct_4(~abs(_wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, -2147483647i), vec2<i32>(3485i, 0i), vec2<bool>(true, arg_1.b.a)), ~vec2<i32>(1i, 999i))), arg_1.b);
    return Struct_5(false, ~arg_0.zy);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_5) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 238f) - _wgslsmith_f_op_f32(f32(-1f) * -459f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1666f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(-34167i)), _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-139f, 261f) - _wgslsmith_f_op_f32(func_2())))), -1000f, _wgslsmith_f_op_f32(1f * 1182f));
    var var_1 = -1296f;
    global0 = array<Struct_3, 9>();
    global2 = array<i32, 15>();
    var var_2 = !arg_1.a;
    return -51615i << (~_wgslsmith_div_u32(reverseBits(u_input.a.x), ~arg_1.b.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = u_input.c.xy ^ (vec2<u32>(abs(_wgslsmith_mult_u32(15704u, 0u)), ~_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(4294967295u, 4294967295u))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(95150u, 0u), ~_wgslsmith_sub_vec2_u32(u_input.b.xz, vec2<u32>(26810u, u_input.c.x))) % vec2<u32>(32u)));
    let var_2 = max(_wgslsmith_mult_u32(14303u ^ _wgslsmith_add_u32(max(var_1.x, 1u), _wgslsmith_dot_vec2_u32(var_1, u_input.d.zy)), var_1.x), abs(~(~_wgslsmith_add_u32(58646u, 16333u))));
    var var_3 = 1u;
    var var_4 = vec3<i32>(func_7(Struct_2(_wgslsmith_div_i32(~global2[_wgslsmith_index_u32(var_1.x, 15u)], _wgslsmith_add_i32(global2[_wgslsmith_index_u32(var_1.x, 15u)], 0i))), func_6(vec3<u32>(_wgslsmith_div_u32(41384u, u_input.b.x), _wgslsmith_div_u32(u_input.b.x, 4294967295u), var_2 << (u_input.a.x % 32u)), func_1())), global2[_wgslsmith_index_u32(7067u, 15u)], global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~var_1.x), countOneBits(u_input.e.x)), 15u)]);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2373f, -498f, -517f, -1418f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1337f, 1521f)), -410f, _wgslsmith_f_op_f32(-1000f + -365f), _wgslsmith_f_op_f32(-621f * -222f))))));
    var_0 = u_input.d.x;
    var_3 = ~_wgslsmith_div_u32(var_2 & min(u_input.e.x >> (5580u % 32u), ~58353u), ~(~abs(var_2)));
    let var_6 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec3<i32>(-var_4.x, var_4.x, reverseBits(28709i)), ~(vec3<i32>(1i, var_4.x, 26602i) >> (vec3<u32>(var_2, 1u, 63612u) % vec3<u32>(32u)))), vec3<i32>(-2147483647i, countOneBits(-1i), _wgslsmith_mult_i32(firstLeadingBit(var_4.x), var_4.x)) ^ _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(var_4.x, global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global2[_wgslsmith_index_u32(var_1.x, 15u)])), ~(-vec3<i32>(global2[_wgslsmith_index_u32(1u, 15u)], 2147483647i, -32906i))), ~reverseBits(~firstTrailingBit(vec4<i32>(global2[_wgslsmith_index_u32(var_2, 15u)], -44198i, -47993i, 1i))), _wgslsmith_sub_i32(1i, var_4.x));
}

