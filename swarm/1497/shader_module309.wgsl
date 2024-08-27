struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: Struct_3,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: array<Struct_2, 6>;

var<private> global2: array<u32, 20> = array<u32, 20>(1u, 43142u, 0u, 4294967295u, 98997u, 4294967295u, 51685u, 45582u, 59294u, 0u, 0u, 4294967295u, 1u, 1u, 54210u, 87627u, 88398u, 20206u, 55453u, 46858u);

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

var<private> global4: array<i32, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    var var_0 = Struct_4(Struct_3(global3.x, ~63350u, vec4<bool>(!(arg_1 == arg_1), any(!vec3<bool>(global3.x, global3.x, true)), true & select(false, false, global3.x), true), _wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(1u, 21976u, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(arg_0.x, 20u)])), _wgslsmith_sub_vec4_u32(vec4<u32>(28932u, 0u, arg_0.x, u_input.c.x), vec4<u32>(u_input.a, 4294967295u, arg_0.x, 1u)) & vec4<u32>(99642u, 3169u, 2913u, 37575u), _wgslsmith_mod_vec4_u32(vec4<u32>(29279u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 1u) | vec4<u32>(arg_0.x, arg_0.x, 88568u, global2[_wgslsmith_index_u32(1u, 20u)]), select(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], u_input.c.x, u_input.c.x, global2[_wgslsmith_index_u32(0u, 20u)]), vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, 26411u), vec4<bool>(false, true, global3.x, true)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, 1006f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(907f, 1575f, -1000f, 137f))), Struct_1(abs(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a, 16u)], 0i, -1968i, u_input.b)), false, arg_0.x >= u_input.c.x, vec4<f32>(arg_1, arg_1, -511f, arg_1), !vec2<bool>(global3.x, global3.x)), Struct_1(vec4<i32>(0i, global4[_wgslsmith_index_u32(1u, 16u)], 10182i, 59242i) & vec4<i32>(0i, 19944i, u_input.b, global4[_wgslsmith_index_u32(77643u, 16u)]), u_input.c.x <= 4294967295u, !global3.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(425f, -995f, arg_1, arg_1)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, arg_0.x, u_input.c.x), 17u)]))), false, -1681f, Struct_3(~u_input.a > 2319u, 4014u, !select(vec4<bool>(global3.x, false, true, global3.x), select(vec4<bool>(true, true, global3.x, true), vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(false, true, true, global3.x)), arg_1 <= -1684f), vec4<u32>(~arg_0.x, abs(abs(4294967295u)), arg_0.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(75626u, 20u)], 0u, arg_0.x), vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], 4294967295u, u_input.a)) & ~60635u, 20u)]), global1[_wgslsmith_index_u32(~1u | arg_0.x, 6u)]), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-211f)), _wgslsmith_div_f32(arg_1, 913f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, -321f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(276f, 1510f))))))));
    global1 = array<Struct_2, 6>();
    let var_1 = var_0.d;
    global4 = array<i32, 16>();
    global4 = array<i32, 16>();
    return 0u;
}

fn func_2() -> Struct_4 {
    let var_0 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(func_3(u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1252f), _wgslsmith_f_op_f32(1295f * _wgslsmith_f_op_f32(floor(1171f))))), 20u)], 20u)], 6u)];
    let var_1 = Struct_4(Struct_3(global3.x, reverseBits(global2[_wgslsmith_index_u32(reverseBits(4294967295u), 20u)]), vec4<bool>(var_0.d.c, !global3.x, all(vec3<bool>(var_0.d.c, true, global3.x)), global3.x), ~select(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31558u, 20u)], 20u)], 20u)], 40999u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 22317u, u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28605u, 20u)], 20u)], 20u)]) << (vec4<u32>(4294967295u, 37397u, 107901u, u_input.a) % vec4<u32>(32u)), vec4<bool>(false, true, global3.x, false)), Struct_2(_wgslsmith_f_op_f32(ceil(-3096f)), _wgslsmith_f_op_vec4_f32(-var_0.d.d), Struct_1(-vec4<i32>(u_input.d.x, 50785i, var_0.c.a.x, -2147483647i), false, !global3.x, var_0.d.d, !vec2<bool>(global3.x, var_0.c.e.x)), var_0.c)), true, _wgslsmith_f_op_f32(-var_0.a), Struct_3(-var_0.c.a.x > -8811i, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(8554u, 20u)], 1u), !select(select(vec4<bool>(true, false, var_0.d.c, var_0.d.e.x), vec4<bool>(false, global3.x, var_0.d.e.x, var_0.c.c), false), !vec4<bool>(false, var_0.d.e.x, true, false), true), ~vec4<u32>(global2[_wgslsmith_index_u32(23130u, 20u)], ~32197u, global2[_wgslsmith_index_u32(u_input.a ^ u_input.c.x, 20u)], 1u), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(780u, u_input.c.x, u_input.c.x)), vec3<u32>(0u, u_input.a, u_input.a >> (u_input.a % 32u))), 20u)], 20u)], 6u)]), var_0.b.yx);
    var var_2 = var_1;
    let var_3 = var_1;
    global2 = array<u32, 20>();
    return var_3;
}

fn func_1(arg_0: bool) -> Struct_5 {
    var var_0 = func_2();
    let var_1 = u_input.c;
    global4 = array<i32, 16>();
    let var_2 = arg_0;
    var var_3 = _wgslsmith_sub_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_0.a.d.x, 49421u), ~1u), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_0.d.b, 0u)), u_input.c, reverseBits(var_0.a.d.zx)), vec2<u32>(u_input.a, u_input.a)), firstTrailingBit(var_1), global3.x), _wgslsmith_add_vec2_u32(firstTrailingBit(func_2().a.d.zz), ~vec2<u32>(abs(4294967295u), _wgslsmith_mod_u32(u_input.a, u_input.a))));
    return Struct_5(vec2<u32>(~19725u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_3.x, ~72394u), firstTrailingBit(~var_0.a.b))), _wgslsmith_f_op_f32(var_0.a.e.a * _wgslsmith_f_op_f32(min(var_0.d.e.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, var_0.d.e.b.x)) - var_0.c)))), var_0.a.e.b.x, _wgslsmith_f_op_f32(-var_0.c), var_0.d.e.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 6u)];
    var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, select(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], u_input.c.x, false)), 20u)] | 9410u, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, u_input.a))), 6u)];
    var var_1 = vec3<i32>(~2147483647i, -(~countOneBits(_wgslsmith_dot_vec2_i32(var_0.c.a.xz, vec2<i32>(-2147483647i, -17647i)))), ~firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, u_input.b), 12209i)));
    var var_2 = func_1(all(vec3<bool>(all(!vec2<bool>(true, var_0.c.b)), var_0.c.c, all(vec3<bool>(global3.x, false, global3.x)))));
    global1 = array<Struct_2, 6>();
    var var_3 = vec3<i32>(~(var_0.c.a.x & 2147483647i), ~(i32(-1i) * -10942i), var_1.x);
    let var_4 = _wgslsmith_div_vec4_i32(var_2.e.a, firstTrailingBit(-_wgslsmith_clamp_vec4_i32(var_0.d.a, _wgslsmith_mult_vec4_i32(vec4<i32>(-43281i, 45012i, var_2.e.a.x, 1i), vec4<i32>(var_1.x, var_3.x, -4637i, u_input.d.x)), var_0.c.a ^ var_0.c.a)));
    let var_5 = _wgslsmith_sub_i32(var_0.d.a.x, _wgslsmith_dot_vec3_i32(~var_0.c.a.yzz, vec3<i32>(~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 20u)], 4294967295u, u_input.c.x), vec3<u32>(global2[_wgslsmith_index_u32(25477u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], 1u)), 16u)], _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, var_3.x, 1i), vec3<i32>(var_2.e.a.x, 4493i, var_1.x)), ~global4[_wgslsmith_index_u32(0u, 16u)]), max(u_input.b, var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~global2[_wgslsmith_index_u32(0u, 20u)], ~var_2.a, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1272u ^ u_input.a, firstLeadingBit(u_input.c.x), 20192u | global2[_wgslsmith_index_u32(u_input.c.x, 20u)]), var_2.a.x ^ 78801u, ~(4294967295u << (global2[_wgslsmith_index_u32(0u, 20u)] % 32u)), ~(10667u ^ u_input.c.x)), ~(~abs(vec4<u32>(var_2.a.x, 0u, u_input.a, var_2.a.x)))), vec4<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 59558u, var_2.a.x, 4294967295u), vec4<u32>(var_2.a.x, 4294967295u, global2[_wgslsmith_index_u32(0u, 20u)], 26610u)), vec4<u32>(abs(4294967295u), 4294967295u, 76286u, _wgslsmith_dot_vec2_u32(vec2<u32>(36692u, 14932u), vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 20u)])))), ~1u, 1u, _wgslsmith_clamp_u32(max(~var_2.a.x, 38594u), 16711u, ~(u_input.c.x & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)]))));
}

