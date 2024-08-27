struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<u32, 20> = array<u32, 20>(23423u, 4294967295u, 4294967295u, 4294967295u, 4584u, 51348u, 58209u, 0u, 0u, 77429u, 20244u, 1u, 24295u, 37299u, 4294967295u, 34236u, 4294967295u, 47073u, 0u, 16332u);

var<private> global2: array<bool, 12> = array<bool, 12>(false, false, false, false, true, false, false, false, true, false, false, true);

var<private> global3: bool;

var<private> global4: array<bool, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    global2 = array<bool, 12>();
    let var_0 = u_input.c;
    global3 = any(!select(vec4<bool>(!global2[_wgslsmith_index_u32(var_0, 12u)], var_0 < u_input.c, any(vec3<bool>(false, global4[_wgslsmith_index_u32(var_0, 21u)], true)), any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.c, 21u)], global4[_wgslsmith_index_u32(29837u, 21u)]))), vec4<bool>(true, !global2[_wgslsmith_index_u32(var_0, 12u)], true, any(vec4<bool>(false, true, global4[_wgslsmith_index_u32(35626u, 21u)], global2[_wgslsmith_index_u32(u_input.c, 12u)]))), select(select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 21u)], global4[_wgslsmith_index_u32(u_input.c, 21u)], false, true), vec4<bool>(global4[_wgslsmith_index_u32(1u, 21u)], global4[_wgslsmith_index_u32(u_input.c, 21u)], true, true), false), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 21u)], true, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27191u, 20u)], 12u)]), all(vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 12u)])))));
    global0 = array<Struct_1, 21>();
    return arg_1.a.d.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(!global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, 14547u), 19994u), 21u)], Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, 68147i, u_input.b), vec3<i32>(4401i, u_input.a, firstTrailingBit(u_input.a))), _wgslsmith_sub_i32(~(-44196i), u_input.b), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -13029i, u_input.a), vec3<i32>(-14387i, u_input.a, 56353i)), _wgslsmith_dot_vec3_i32(vec3<i32>(22081i, -4481i, -15923i), vec3<i32>(u_input.b, u_input.a, u_input.a)), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(-5538i, 2147483647i, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(267f, 301f, -147f) - vec3<f32>(1000f, -201f, -598f)))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1044f, 401f)))))), _wgslsmith_f_op_f32(1422f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(0u, 21u)], Struct_4(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 21u)], vec4<f32>(1000f, 307f, -179f, -509f), 880f)))))));
    var var_1 = var_0.a;
    var var_2 = all(!(!select(!vec4<bool>(var_0.a, var_0.a, global4[_wgslsmith_index_u32(0u, 21u)], var_0.a), select(vec4<bool>(global2[_wgslsmith_index_u32(62557u, 12u)], false, global2[_wgslsmith_index_u32(u_input.c, 12u)], true), vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 20u)], 20u)], 12u)], var_0.a, true, global4[_wgslsmith_index_u32(4294967295u, 21u)]), true), !vec4<bool>(false, var_0.a, var_0.a, var_0.a))));
    global2 = array<bool, 12>();
    global3 = true;
    return -1230f;
}

fn func_1(arg_0: f32) -> Struct_3 {
    global4 = array<bool, 21>();
    var var_0 = global0[_wgslsmith_index_u32(24406u, 21u)];
    let var_1 = 2147483647i;
    global0 = array<Struct_1, 21>();
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(1u, 21u)], vec4<f32>(_wgslsmith_f_op_f32(max(var_0.d.x, arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1613f))), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.d.x))))))), var_0.d.x);
    return Struct_3(global4[_wgslsmith_index_u32(4294967295u, 21u)], !(!select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 12u)]), vec2<bool>(true, true), true | global2[_wgslsmith_index_u32(692u, 12u)])));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(abs(vec3<i32>(i32(-1i) * -23089i, ~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.b, 33836i, 0i, u_input.a)))) | (vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 2678i, u_input.b), ~u_input.a, ~u_input.a) ^ vec3<i32>(u_input.a, 47228i, firstTrailingBit(u_input.a))), _wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, -1455i)), max(vec2<i32>(-1i, -1i), vec2<i32>(1i, u_input.b))), countOneBits(vec2<i32>(-2147483647i, 2147483647i)) ^ (vec2<i32>(-59534i, u_input.a) ^ vec2<i32>(-28966i, u_input.b)), true), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(-2147483647i, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, -1i), vec2<i32>(-5500i, -37198i)), countOneBits(vec2<i32>(u_input.a, u_input.b))), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, u_input.a))), (vec2<i32>(1i, 14921i) ^ vec2<i32>(u_input.b, 17185i)) >> (~vec2<u32>(4294967295u, 24557u) % vec2<u32>(32u)))), firstLeadingBit(vec4<i32>(abs(u_input.a), -u_input.a, u_input.a, u_input.b)) << (firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c), abs(u_input.c), 39078u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], global1[_wgslsmith_index_u32(u_input.c, 20u)]))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1166f, 485f, -1230f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-553f, -2235f, -111f), vec3<f32>(-1553f, 279f, -578f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(649f, 1599f), _wgslsmith_f_op_f32(870f + -389f), _wgslsmith_f_op_f32(128f - 518f)))));
    let var_1 = _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.d.x)))));
    global3 = !select(arg_0.b.x, false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(6283u, 4294967295u, u_input.c, global1[_wgslsmith_index_u32(0u, 20u)]), max(vec4<u32>(93581u, 41304u, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(37057u, 20u)]) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 20u)], 20u)], 35335u, global1[_wgslsmith_index_u32(37849u, 20u)], u_input.c) % vec4<u32>(32u)), ~vec4<u32>(44530u, 32622u, u_input.c, global1[_wgslsmith_index_u32(4294967295u, 20u)]))), 12u)]);
    let var_2 = ~_wgslsmith_dot_vec3_i32(~var_0.a >> (vec3<u32>(u_input.c, 1u, global1[_wgslsmith_index_u32(1u, 20u)]) % vec3<u32>(32u)), -vec3<i32>(1i, 19317i, 1i)) == (~_wgslsmith_sub_i32(firstLeadingBit(var_0.c.x), _wgslsmith_clamp_i32(var_0.c.x, 5853i, u_input.b)) ^ u_input.b);
    var var_3 = Struct_4(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~82158u, 20u)], 21u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-112f, -1252f, var_1, var_0.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 1045f, 418f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1115f, -248f, 513f) * vec4<f32>(var_1, var_0.d.x, var_1, -1802f))))))), var_1);
    return arg_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(34334u, 57212u) | global1[_wgslsmith_index_u32(~(~(1u ^ global1[_wgslsmith_index_u32(30787u, 20u)])), 20u)], 21u)], Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~u_input.c, 20u)], ~u_input.c), 21u)], vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(u_input.b, 3655i, u_input.b), u_input.b, vec4<i32>(36953i, u_input.a, 44786i, -1i), vec3<f32>(205f, arg_0.x, arg_0.x)), Struct_4(Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), u_input.b, vec4<i32>(u_input.a, u_input.b, 1i, -4074i), arg_0.zxx), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), 1425f))), arg_0.x, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1489f - arg_0.x) * arg_0.x)))));
    let var_1 = func_1(-292f).b;
    let var_2 = abs(u_input.b);
    let var_3 = _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(4294967295u, ~0u)), vec2<u32>(_wgslsmith_mult_u32(abs(1u << (u_input.c % 32u)), 1u >> (_wgslsmith_sub_u32(u_input.c, 4294967295u) % 32u)), ~u_input.c));
    let var_4 = var_0;
    return firstTrailingBit(firstLeadingBit(abs(select(global1[_wgslsmith_index_u32(37521u, 20u)], u_input.c, true)) << (u_input.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(12046u, 21u)];
    var var_1 = _wgslsmith_mod_u32(func_5(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.x, 942f, var_0.d.x, var_0.d.x)))))), func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -421f))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d.x))))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(53146u, 20u)], 75245u), min(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(u_input.c, 20u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13159u, 20u)], 20u)], 1u))) >> (firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(29300u, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<u32>(4294967295u, 60923u))) % vec2<u32>(32u)), vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 34041u, u_input.c), vec3<u32>(1u, 16688u, u_input.c)))));
    var var_2 = vec2<i32>(_wgslsmith_add_i32(u_input.b, 16385i) >> (~0u % 32u), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mod_u32(~u_input.c, ~67718u), 2250u, 19612u, reverseBits(1u)));
}

