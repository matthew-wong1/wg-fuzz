struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-1361f, -955f, -3029f), vec3<f32>(-1000f, -2588f, -1554f), vec3<f32>(-186f, -1015f, 236f), vec3<f32>(340f, -361f, -1301f), vec3<f32>(-1298f, 122f, -1401f));

var<private> global1: array<i32, 5> = array<i32, 5>(8393i, 0i, 0i, i32(-2147483648), i32(-2147483648));

var<private> global2: array<bool, 15>;

var<private> global3: vec3<i32>;

var<private> global4: array<Struct_2, 4>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1() -> f32 {
    return 581f;
}

fn func_3() -> u32 {
    let var_0 = Struct_3(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 0u, 0u)) | 1u), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1239f), 744f)), _wgslsmith_f_op_f32(-709f - _wgslsmith_f_op_f32(f32(-1f) * -596f)))), true, ~40719u, 1u), global4[_wgslsmith_index_u32(38272u, 4u)], _wgslsmith_mod_vec3_u32(countOneBits(~(~vec3<u32>(1u, 8911u, 4294967295u))), ~vec3<u32>(1u, 1u, 1u)));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.a), -228f));
    global4 = array<Struct_2, 4>();
    global2 = array<bool, 15>();
    let var_2 = Struct_5(var_0.b);
    return ~_wgslsmith_mod_u32(min(_wgslsmith_add_u32(var_0.d.x, select(var_0.d.x, 0u, var_0.c.a)), ~var_2.a.c << (countOneBits(1u) % 32u)), max(~(~7160u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a.c, 5830u, var_2.a.d, var_2.a.c), ~vec4<u32>(30525u, 83604u, 1u, 21643u))));
}

fn func_2() -> u32 {
    global2 = array<bool, 15>();
    let var_0 = ~22369u ^ func_3();
    var var_1 = _wgslsmith_add_i32(reverseBits(-24124i), min(-(~(~u_input.a)), u_input.a));
    global1 = array<i32, 5>();
    let var_2 = 0i;
    return reverseBits(_wgslsmith_mod_u32(var_0, ~(~var_0)));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec4<bool>) -> vec2<f32> {
    global2 = array<bool, 15>();
    let var_0 = 43186i;
    var var_1 = 1i;
    var var_2 = Struct_4(vec2<f32>(-2505f, -185f), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a.d, ~arg_0.a.c), 4u)]);
    let var_3 = -_wgslsmith_clamp_i32(33338i, 26867i, -66540i);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_2.b.b - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-949f, 547f)))), var_2.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(60477u, 52778u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(1u, 1u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 15u)], ~abs(var_0.x), 79003u)), _wgslsmith_f_op_f32(1539f + _wgslsmith_f_op_f32(trunc(-360f))), select(vec4<bool>(u_input.a == select(global3.x, -4873i, false), true, !global2[_wgslsmith_index_u32(30478u, 15u)] || global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(~firstLeadingBit(0u), 15u)]), !(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 15u)], global2[_wgslsmith_index_u32(47732u, 15u)], false), vec4<bool>(global2[_wgslsmith_index_u32(7785u, 15u)], global2[_wgslsmith_index_u32(var_0.x, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(23878u, 15u)]))), global2[_wgslsmith_index_u32(~func_2(), 15u)] & (_wgslsmith_f_op_f32(f32(-1f) * -949f) != _wgslsmith_f_op_f32(ceil(-731f))))));
    let var_2 = !(!select(!select(vec3<bool>(global2[_wgslsmith_index_u32(36620u, 15u)], global2[_wgslsmith_index_u32(var_0.x, 15u)], false), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 15u)], true, global2[_wgslsmith_index_u32(var_0.x, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 15u)], global2[_wgslsmith_index_u32(var_0.x, 15u)], global2[_wgslsmith_index_u32(var_0.x, 15u)])), select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 15u)], global2[_wgslsmith_index_u32(var_0.x, 15u)], global2[_wgslsmith_index_u32(var_0.x, 15u)]), select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(934u, 15u)], global2[_wgslsmith_index_u32(var_0.x, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], false)), select(true, true, global2[_wgslsmith_index_u32(19232u, 15u)])), var_1.x <= var_1.x));
    global1 = array<i32, 5>();
    var var_3 = Struct_5(Struct_1(463f, all(!(!vec4<bool>(true, var_2.x, true, false))), reverseBits(var_0.x), ~var_0.x));
    let var_4 = global4[_wgslsmith_index_u32(var_0.x << (~34361u % 32u), 4u)];
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.b.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_3.a.a)))))), any(!(!(!var_2))), ~4294967295u, ~(~_wgslsmith_sub_u32(var_0.x, var_3.a.c)));
    let var_6 = Struct_2(true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_5.a, -451f))), var_4.b) + vec2<f32>(-171f, _wgslsmith_div_f32(var_5.a, var_3.a.a))))));
    var var_7 = vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, firstTrailingBit(~26924u)), 5u)] << (var_0.x % 32u), firstTrailingBit(~(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(139425u, 6001u), 5u)] ^ 1i)), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_5.d, abs(1u), var_5.c, ~var_5.c) ^ vec4<u32>(var_5.c, ~59612u, var_3.a.d, var_5.c), u_input.a);
}

