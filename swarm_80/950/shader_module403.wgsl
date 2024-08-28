struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-1123f, -1000f, -319f, -495f, 1700f, 375f, -771f, 1498f);

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<Struct_1, 2>;

var<private> global3: u32 = 1u;

var<private> global4: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    global3 = 66216u;
    let var_0 = u_input.b > ~(~max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -73546i, u_input.b), vec3<i32>(12564i, arg_1, -2147483647i)), ~2147483647i));
    var var_1 = var_0;
    return any(!select(vec4<bool>(var_0, !var_0, true, var_0), vec4<bool>(arg_0 >= u_input.b, false, !var_0, select(var_0, var_0, true)), vec4<bool>(var_0 || false, false, any(vec3<bool>(var_0, true, var_0)), false)));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: bool) -> bool {
    global1 = array<Struct_1, 15>();
    let var_0 = u_input.e.x;
    let var_1 = Struct_3(vec2<bool>(func_3(_wgslsmith_clamp_i32(u_input.b, u_input.b, 47890i ^ u_input.b), 28243i), all(arg_1)), u_input.b);
    var var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~54780u, max(u_input.c.x, 86794u), 0u), abs(vec3<u32>(0u, var_0, 0u))), 8u)]);
    let var_3 = ~vec3<u32>(0u, 4294967295u & var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), u_input.d.x), vec3<u32>(11056u, _wgslsmith_mult_u32(32501u, var_0), 0u)));
    return !any(vec2<bool>(!var_1.a.x, true));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)), all(vec4<bool>(false, true, false, false))), vec4<bool>(true, u_input.c.x >= arg_0.x, true, true), vec4<bool>(false, false, func_2(false, vec3<bool>(false, true, false), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), true), true)), true);
    let var_1 = Struct_3(select(var_0.yw, !vec2<bool>(true, !var_0.x), !(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10626u, u_input.e.x, u_input.d.x), 8u)] <= _wgslsmith_f_op_f32(f32(-1f) * -940f))), -(~(4371i >> (arg_0.x % 32u))));
    let var_2 = var_1;
    global2 = array<Struct_1, 2>();
    global4 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.e.x, ~84992u)), _wgslsmith_add_u32(~min(u_input.d.x, 88189u), ~_wgslsmith_dot_vec4_u32(arg_0, u_input.d)))), 8u)];
    return _wgslsmith_mod_u32(reverseBits(_wgslsmith_add_u32(~(~arg_0.x), u_input.d.x)), ~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!(!vec2<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)))), -1i);
    let var_1 = _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(func_1(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(~1u, ~4294967295u, ~19020u, ~u_input.e.x))), 8u)]));
    var var_2 = var_0.a.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1)))))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2894f)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(13782u, 41682u), _wgslsmith_mult_vec2_u32(u_input.c.xx, u_input.a.yy)), max(u_input.c.yz, u_input.c.yx)), select(abs(u_input.c.zy), ~vec2<u32>(1u, u_input.a.x), true) ^ u_input.d.xw), (var_0.b & var_0.b) | _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, 11373i), vec4<i32>(u_input.b, u_input.b, 1i, 299i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, var_0.b, u_input.b, 0i), ~vec4<i32>(0i, -1i, -2147483647i, u_input.b))), 1i);
}

