struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(593f, 1288f);

var<private> global1: array<i32, 20> = array<i32, 20>(3965i, -55727i, -16285i, 22016i, 0i, -35614i, -1i, 14763i, -46522i, i32(-2147483648), i32(-2147483648), -1i, -23634i, 2147483647i, -26581i, i32(-2147483648), -11866i, -1i, -1i, -40864i);

var<private> global2: i32 = 2147483647i;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(26718i, 90609i, -25224i), -204f, false, vec4<bool>(true, true, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    global2 = global3.a.x;
    global1 = array<i32, 20>();
    let var_0 = any(vec4<bool>(all(select(select(global3.e, vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false)), vec3<bool>(true, global3.d.x, arg_0.x), select(vec3<bool>(arg_2, true, false), global3.d.xyw, true))), any(global3.e), all(!global3.d), false));
    var var_1 = global3.d.zy;
    global1 = array<i32, 20>();
    return Struct_1(-(global3.a >> (((vec3<u32>(4294967295u, 68022u, u_input.c.x) ^ vec3<u32>(1u, 0u, u_input.c.x)) ^ vec3<u32>(0u, 161u, 0u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-129f + -691f), 896f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.c.x, 2u)])), arg_1.x, !(!(0u > u_input.c.x)))), ~(~u_input.c.x) >= 0u, global3.d, global3.d.zzy);
}

fn func_3() -> u32 {
    var var_0 = 0u;
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    let var_1 = 1u ^ u_input.c.x;
    var var_2 = global3.a.x;
    return var_1;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_3) -> u32 {
    return 0u >> (func_3() % 32u);
}

fn func_4(arg_0: vec2<i32>) -> Struct_3 {
    global2 = 0i;
    global1 = array<i32, 20>();
    var var_0 = u_input.c.x;
    var_0 = max(abs(u_input.c.x | u_input.c.x), countOneBits(4294967295u));
    global3 = func_1(!global3.d.zw, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(608f, 1908f, -559f))) + vec3<f32>(_wgslsmith_f_op_f32(abs(751f)), -1759f, _wgslsmith_f_op_f32(1000f + 1097f))))), false | (global3.e.x && !global3.c));
    return Struct_3(~firstLeadingBit(u_input.b ^ (global1[_wgslsmith_index_u32(u_input.c.x, 20u)] | arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3.e.zx, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-346f - global0[_wgslsmith_index_u32(22574u, 2u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(247f, -796f)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(66052u, 2u)])), _wgslsmith_f_op_f32(796f + global0[_wgslsmith_index_u32(u_input.c.x << (u_input.c.x % 32u), 2u)])))), global3.e.x);
    let var_1 = vec4<bool>(var_0.e.x, any(select(!vec3<bool>(true, global3.c, true), var_0.d.zwz, all(select(var_0.e, global3.e, var_0.e)))), !(!var_0.c), true);
    var var_2 = func_4(vec2<i32>(abs(~global1[_wgslsmith_index_u32(func_2(vec2<u32>(u_input.c.x, u_input.c.x), global1[_wgslsmith_index_u32(6228u, 20u)], vec2<u32>(u_input.c.x, u_input.c.x), Struct_3(var_0.a.x)), 20u)]), -select(-30052i, reverseBits(u_input.b), !global3.d.x)));
    var var_3 = ~u_input.c << (u_input.c % vec2<u32>(32u));
    var var_4 = _wgslsmith_div_i32(-var_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -45067i, global1[_wgslsmith_index_u32(var_3.x, 20u)]), vec3<i32>(var_0.a.x, global3.a.x, 0i)), 0i, -18768i, var_0.a.x), ~firstLeadingBit(vec4<i32>(27940i, var_0.a.x, -1i, var_0.a.x)))) >> (42705u % 32u);
    var var_5 = _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(countOneBits(u_input.c.x), 20u)], ~global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(91282u, u_input.c.x), 20u)], _wgslsmith_div_i32(-2147483647i, 2147483647i), 0i ^ min(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(21690u, 20u)], 1i), -var_2.a)), abs(vec4<i32>(1i, 2147483647i, -3288i, -(~(-13217i)))));
    let var_6 = (~(~_wgslsmith_mod_vec2_u32(u_input.c, u_input.c)) << (~reverseBits(firstLeadingBit(vec2<u32>(u_input.c.x, 29009u))) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(u_input.c, ~(~(~vec2<u32>(1u, 0u)))) % vec2<u32>(32u));
    let var_7 = func_2(vec2<u32>(13466u, var_6.x), 49944i, u_input.c, func_4(vec2<i32>(countOneBits(global3.a.x), -53909i)));
    var var_8 = Struct_2(var_0.c, !var_0.c, !func_1(select(select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_0.e.x), vec2<bool>(var_0.e.x, var_1.x)), select(vec2<bool>(false, var_1.x), var_0.e.yx, var_1.yx), select(var_1.xw, var_1.yw, var_0.d.yz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1240f, 1702f, -311f)) + _wgslsmith_div_vec3_f32(vec3<f32>(998f, -614f, 118f), vec3<f32>(602f, var_0.b, -375f))), global3.d.x).d.yx, var_6 << (u_input.c % vec2<u32>(32u)), Struct_1(var_5.zxy, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2017f, global0[_wgslsmith_index_u32(34075u, 2u)]))))), global3.c, select(!vec4<bool>(var_1.x, false, false, var_1.x), select(vec4<bool>(var_1.x, var_0.e.x, var_0.e.x, var_1.x), var_0.d, !var_1), true), select(global3.e, vec3<bool>(true, true, true), global3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_clamp_vec2_i32(~global3.a.xz, vec2<i32>(-2147483647i, -54660i), vec2<i32>(2147483647i, u_input.b))), -6875i, vec2<i32>(select(-6262i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 62475i), func_1(vec2<bool>(global3.d.x, global3.c), vec3<f32>(1390f, var_8.e.b, global0[_wgslsmith_index_u32(22182u, 2u)]), var_1.x).a.xz), any(vec4<bool>(false, false, var_0.d.x, false))), 2147483647i), max(~(-26133i), var_2.a));
}

