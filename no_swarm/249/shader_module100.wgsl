struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<Struct_4, 11>;

var<private> global2: vec2<f32> = vec2<f32>(356f, -672f);

var<private> global3: vec3<i32>;

var<private> global4: Struct_5;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    let var_0 = Struct_2(Struct_1(~(firstLeadingBit(global4.e) & _wgslsmith_mod_u32(global4.e, 25546u)), vec3<u32>(global4.a, _wgslsmith_add_u32(global4.a, global4.a), arg_1.x), global2.x, !all(select(vec2<bool>(false, true), vec2<bool>(arg_3, arg_3), vec2<bool>(true, false))), arg_3), vec2<u32>(_wgslsmith_dot_vec2_u32(~arg_1.yw, arg_1.xz), ~(~0u)) & vec2<u32>(arg_1.x, _wgslsmith_mult_u32(firstLeadingBit(global4.e), ~arg_1.x)));
    let var_1 = Struct_3(firstTrailingBit(select(firstTrailingBit(vec2<u32>(14013u, 0u)) & vec2<u32>(4294967295u, var_0.a.b.x), var_0.b, arg_3)), var_0.a, 291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-493f, 478f))), -1000f))), firstTrailingBit(vec2<i32>(global3.x, abs(-1i))));
    global3 = global4.d.xxw;
    global0 = array<bool, 20>();
    var var_2 = Struct_2(var_0.a, ~(var_1.b.b.xy | ~vec2<u32>(1u, var_1.a.x)) & _wgslsmith_clamp_vec2_u32(var_0.a.b.xy, vec2<u32>(0u, var_1.b.a), ~var_1.b.b.xx & countOneBits(vec2<u32>(var_0.b.x, 25124u))));
    return 0u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> f32 {
    global0 = array<bool, 20>();
    let var_0 = -1i;
    global4 = Struct_5(~abs(countOneBits(func_3(arg_1.d.a.c, vec4<u32>(global4.a, global4.a, 1u, arg_1.a.a.b.x), vec4<f32>(-1000f, -108f, -880f, global2.x), global0[_wgslsmith_index_u32(arg_1.c.b.x, 20u)]))), select(min(abs(-22840i ^ u_input.c.x), _wgslsmith_sub_i32(-global4.c, u_input.a.x)), arg_0.e.x, !(!global0[_wgslsmith_index_u32(arg_0.b.a, 20u)])), ~(-select(1i, select(global4.d.x, 1i, false), true)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.xy), 6881i), 27361i, -reverseBits(var_0), _wgslsmith_sub_i32(var_0, abs(var_0))), 40785u);
    global0 = array<bool, 20>();
    let var_1 = Struct_5(4294967295u, _wgslsmith_add_i32(var_0, 0i) & ~(-u_input.a.x), u_input.b.x, ~vec4<i32>(arg_0.e.x, _wgslsmith_dot_vec2_i32(arg_0.e, u_input.c.yz), abs(i32(-1i) * -21654i), firstTrailingBit(1i)), 29309u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d)));
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 20>();
    var var_0 = -(u_input.c << (~vec3<u32>(1u, ~global4.e, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, global4.a, global4.e), vec4<u32>(52409u, 1u, 1u, 0u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<u32>(global4.e, 23026u), Struct_1(global4.a, vec3<u32>(52129u, 9196u, global4.e), global2.x, true, global0[_wgslsmith_index_u32(global4.e, 20u)]), _wgslsmith_f_op_f32(select(251f, 786f, global0[_wgslsmith_index_u32(global4.e, 20u)])), global2.x, global3.zy), global1[_wgslsmith_index_u32(abs(abs(global4.e)), 11u)])), _wgslsmith_f_op_f32(func_2(Struct_3(vec2<u32>(global4.a, global4.a), Struct_1(global4.e, vec3<u32>(69966u, 6107u, global4.a), -750f, false, false), _wgslsmith_f_op_f32(-223f * 732f), -1077f, ~global4.d.zz), Struct_4(Struct_2(Struct_1(global4.a, vec3<u32>(0u, global4.a, global4.e), 1045f, false, false), vec2<u32>(11074u, 53703u)), false, Struct_2(Struct_1(global4.a, vec3<u32>(global4.a, 1u, 4988u), -1148f, true, global0[_wgslsmith_index_u32(13909u, 20u)]), vec2<u32>(0u, 4294967295u)), Struct_2(Struct_1(0u, vec3<u32>(global4.e, global4.a, global4.a), -923f, global0[_wgslsmith_index_u32(global4.a, 20u)], false), vec2<u32>(global4.e, 9727u)), max(vec3<u32>(86811u, global4.a, 26155u), vec3<u32>(global4.a, global4.a, 1u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), -3180f, global0[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_f_op_f32(round(global2.x))));
    var var_2 = Struct_5(_wgslsmith_mult_u32(global4.a >> (0u % 32u), global4.e), -1i, global3.x, vec4<i32>(~_wgslsmith_mod_i32(var_0.x << (1u % 32u), _wgslsmith_mod_i32(u_input.c.x, 25622i)), 1i | max(1i, -u_input.c.x), abs(u_input.a.x), firstTrailingBit(-var_0.x)), _wgslsmith_sub_u32(47150u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global4.a, global4.e), vec3<u32>(global4.e, 47437u, global4.a)) << (~0u % 32u)));
    var_2 = Struct_5(global4.e, -select(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global4.d.zx, u_input.a.zy), ~u_input.c.xx), -(i32(-1i) * -1i), (global4.a > 33269u) && any(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(global4.e, 20u)]))), global3.x, ~(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-14466i, u_input.c.x, -2147483647i, var_0.x), var_2.d), 10442i, _wgslsmith_add_i32(global3.x, var_2.b), abs(global4.d.x)) & vec4<i32>(global3.x, _wgslsmith_add_i32(u_input.a.x, var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, 44724i), global4.d.yy), countOneBits(-2147483647i))), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e, var_2.a, var_2.a), vec3<u32>(global4.a, 1u, global4.e))));
    return Struct_2(Struct_1(~39466u, ~countOneBits(firstLeadingBit(vec3<u32>(1u, global4.a, var_2.a))), 1000f, false, !(global2.x >= 1096f)), ~vec2<u32>(~(var_2.e >> (var_2.e % 32u)), (1u << (var_2.a % 32u)) ^ 64083u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = func_1();
    var_0 = global4.a;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1778f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))) * 236f), -358f, 869f, _wgslsmith_f_op_f32(func_2(Struct_3(~_wgslsmith_mod_vec2_u32(var_1.a.b.xz, var_1.b), Struct_1(1u, vec3<u32>(global4.a, global4.e, var_1.a.b.x), _wgslsmith_f_op_f32(-var_1.a.c), var_1.a.d, any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(global4.a, 20u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1931f - var_1.a.c) - -1071f), var_1.a.c, select(global3.zx ^ vec2<i32>(global4.b, global3.x), _wgslsmith_add_vec2_i32(vec2<i32>(1i, global3.x), vec2<i32>(u_input.c.x, u_input.b.x)), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(62918u, 20u)]))), Struct_4(Struct_2(func_1().a, min(vec2<u32>(global4.a, 73052u), vec2<u32>(28068u, 50968u))), true, func_1(), Struct_2(var_1.a, vec2<u32>(global4.e, global4.e)), ~vec3<u32>(global4.a, global4.e, 1u)))));
    var var_3 = vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.e, global4.a, var_1.a.b.x, var_1.a.b.x), vec4<u32>(var_1.b.x, global4.a, global4.e, 18032u)), 1u) >> (global4.e % 32u), 20u)], var_1.a.d, all(vec3<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b.x, global4.e), 20u)], var_1.a.e, global0[_wgslsmith_index_u32(~1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.b.x, var_1.a.a, 23774u), vec3<u32>(var_1.a.a, 4294967295u, global4.e)) % 32u), 20u)])), !global0[_wgslsmith_index_u32(~min(reverseBits(3850u), 23453u), 20u)]);
    global0 = array<bool, 20>();
    global2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(func_2(Struct_3(~var_1.a.b.zz, Struct_1(4294967295u, var_1.a.b, -1373f, true, true), _wgslsmith_f_op_f32(func_2(Struct_3(var_1.a.b.yx, var_1.a, var_2.x, -1206f, global4.d.zw), global1[_wgslsmith_index_u32(global4.e, 11u)])), _wgslsmith_div_f32(-1805f, 112f), ~vec2<i32>(-26612i, global3.x)), Struct_4(func_1(), !var_3.x, Struct_2(var_1.a, var_1.b), Struct_2(var_1.a, vec2<u32>(20046u, var_1.a.a)), vec3<u32>(global4.e, 4294967295u, 1u) & vec3<u32>(0u, global4.e, var_1.b.x)))))));
    let var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -1181f)), ~countOneBits(~(~vec3<i32>(11224i, var_4, -29726i))));
}

