struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(0i, -1i, 2147483647i, -1i), vec4<i32>(-1i, 19385i, 1i, 47939i), vec4<i32>(2147483647i, -1i, -38053i, 2147483647i), vec4<i32>(56474i, -10410i, 18759i, 0i), vec4<i32>(-1i, i32(-2147483648), 1i, -44999i), vec4<i32>(-1228i, 2147483647i, -39665i, 56933i), vec4<i32>(32305i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 3613i, 0i, i32(-2147483648)), vec4<i32>(-5024i, -1i, 1i, 1i), vec4<i32>(0i, 0i, -16545i, 1i), vec4<i32>(24085i, 0i, 1i, -22509i), vec4<i32>(16339i, 1i, i32(-2147483648), 50273i), vec4<i32>(-75045i, 0i, i32(-2147483648), 1i), vec4<i32>(-8587i, 57581i, 44249i, -24436i), vec4<i32>(-29199i, 29380i, 6450i, -17070i), vec4<i32>(i32(-2147483648), -25126i, 0i, 22676i), vec4<i32>(9688i, i32(-2147483648), 11322i, 35897i), vec4<i32>(10104i, 25539i, 11339i, 14310i), vec4<i32>(-62137i, -3929i, 11059i, 7082i), vec4<i32>(16746i, 90821i, -9346i, 0i), vec4<i32>(-70124i, -1i, 0i, -13124i), vec4<i32>(i32(-2147483648), 2147483647i, 31671i, 2170i), vec4<i32>(-48825i, -1i, 27651i, 14848i), vec4<i32>(0i, -1i, 0i, 1i), vec4<i32>(8719i, 1i, 5212i, -433i));

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<bool, 25> = array<bool, 25>(false, false, true, true, true, false, false, true, true, false, false, false, true, false, false, false, true, false, true, false, false, false, true, true, false);

var<private> global3: array<f32, 31>;

var<private> global4: array<bool, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: f32, arg_3: u32) -> vec2<f32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~arg_0.x, _wgslsmith_mod_u32(4294967295u, ~34117u), arg_3), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 36808u, arg_0.x), vec3<u32>(25369u, arg_3, arg_0.x)), ~vec3<u32>(u_input.c.x, 12449u, 110800u) << (~vec3<u32>(4294967295u, 3872u, 336u) % vec3<u32>(32u)))), vec3<u32>(~firstLeadingBit(0u), arg_3, 47566u)), 30u)];
    var var_1 = any(vec2<bool>(var_0.b.b & true, true));
    global4 = array<bool, 16>();
    global3 = array<f32, 31>();
    global0 = array<vec4<i32>, 25>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.a)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global1 = array<Struct_2, 30>();
    global1 = array<Struct_2, 30>();
    var var_0 = _wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(~select(arg_1.b.a, arg_1.b.a, vec3<bool>(false, false, false)), ~(arg_1.b.a | vec3<u32>(u_input.b, 57413u, 4294967295u))), reverseBits(select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b.a.x, arg_0, 23742u), arg_1.b.a), ~arg_1.b.a, vec3<bool>(global4[_wgslsmith_index_u32(arg_1.b.a.x, 16u)], arg_1.b.b, arg_1.b.b)))), (_wgslsmith_sub_vec3_u32(~arg_1.b.a, ~vec3<u32>(1u, arg_0, arg_1.b.a.x)) << (arg_1.b.a % vec3<u32>(32u))) << (arg_1.b.a % vec3<u32>(32u)));
    global1 = array<Struct_2, 30>();
    let var_1 = arg_1.b;
    return arg_1.b;
}

fn func_3() -> i32 {
    global2 = array<bool, 25>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-273f, global3[_wgslsmith_index_u32(firstLeadingBit(8158u << (u_input.c.x % 32u)), 31u)]))), Struct_1(vec3<u32>(_wgslsmith_add_u32(u_input.a, u_input.a ^ u_input.a), u_input.a, 0u | _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), global4[_wgslsmith_index_u32(~60877u, 16u)], _wgslsmith_sub_i32(-1i & u_input.d, func_2(min(u_input.b, 22862u), global1[_wgslsmith_index_u32(~33946u, 30u)]).c), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(48298u, 31u)], 210f) * global3[_wgslsmith_index_u32(u_input.b, 31u)]), 1297f)));
    var var_1 = vec3<i32>(u_input.d, -8592i, u_input.d);
    var var_2 = vec2<u32>(func_2(select(~u_input.b, abs(_wgslsmith_add_u32(var_0.b.a.x, u_input.a)), !any(vec4<bool>(var_0.b.b, var_0.b.b, global2[_wgslsmith_index_u32(0u, 25u)], false))), Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(~37205u, 31u)], _wgslsmith_f_op_f32(var_0.b.d.x - 474f)), func_2(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 1u)), var_0))).a.x, ~firstLeadingBit(4294967295u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -305f))) + 1f);
    return reverseBits(select(max(var_1.x, -21783i) << (var_0.b.a.x % 32u), -10569i, global2[_wgslsmith_index_u32(4294967295u, 25u)]) | var_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1131f, global3[_wgslsmith_index_u32(u_input.a, 31u)]) - vec2<f32>(global3[_wgslsmith_index_u32(34545u, 31u)], -1352f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(545f, 1015f) + vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 31u)], global3[_wgslsmith_index_u32(u_input.c.x, 31u)])) + _wgslsmith_f_op_vec2_f32(func_1(u_input.c, global3[_wgslsmith_index_u32(u_input.b, 31u)], 240f, 24130u)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(105263u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)]))))), func_2(u_input.a, global1[_wgslsmith_index_u32(u_input.c.x << (u_input.c.x % 32u), 30u)]));
    var_0 = global1[_wgslsmith_index_u32(0u & u_input.b, 30u)];
    global2 = array<bool, 25>();
    let var_1 = global1[_wgslsmith_index_u32(4294967295u | (((_wgslsmith_mult_u32(var_0.b.a.x, var_0.b.a.x) | var_0.b.a.x) & func_2(_wgslsmith_div_u32(53499u, var_0.b.a.x), global1[_wgslsmith_index_u32(u_input.a, 30u)]).a.x) ^ ~_wgslsmith_div_u32(var_0.b.a.x, 0u)), 30u)];
    var var_2 = func_2(var_1.b.a.x, global1[_wgslsmith_index_u32(abs(var_1.b.a.x), 30u)]);
    var_2 = Struct_1(~var_2.a, (func_2(35015u, Struct_2(vec2<f32>(-1150f, 1113f), Struct_1(var_1.b.a, global4[_wgslsmith_index_u32(var_0.b.a.x, 16u)], -1i, var_0.b.d))).c << (u_input.c.x % 32u)) > var_0.b.c, func_3(), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~4462u, 31u)])), func_2(~(~1u), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a.x, var_1.b.a.x, var_1.b.a.x, var_0.b.a.x), vec4<u32>(28944u, 1u, 5949u, 93308u))), 30u)]).d.x));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_2.d.x - -236f), func_2((_wgslsmith_dot_vec2_u32(vec2<u32>(823u, var_1.b.a.x), vec2<u32>(39947u, var_1.b.a.x)) >> (u_input.b % 32u)) | _wgslsmith_add_u32(2355u ^ var_1.b.a.x, abs(55464u)), global1[_wgslsmith_index_u32(~abs(var_1.b.a.x), 30u)]).d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.x)), _wgslsmith_f_op_f32(max(1269f, var_0.b.d.x)), ~(_wgslsmith_add_u32(~1u, var_0.b.a.x) & ~var_1.b.a.x), u_input.d);
}

