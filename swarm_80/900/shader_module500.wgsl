struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, false, true, false, true, true, true, false, false, true, true, false, true, true, false, true, false, false, true, true, false, true);

var<private> global1: array<f32, 17> = array<f32, 17>(1636f, 132f, -684f, 879f, 896f, -698f, -1396f, 555f, -815f, 935f, -160f, -132f, -318f, 610f, -297f, 369f, 2832f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> u32 {
    let var_0 = u_input.d;
    var var_1 = ~1u;
    var var_2 = 1035f;
    global1 = array<f32, 17>();
    global0 = array<bool, 23>();
    return ~u_input.a;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: i32) -> Struct_4 {
    let var_0 = min(_wgslsmith_mod_i32(min(reverseBits(u_input.d), -(arg_3 ^ 5724i)), _wgslsmith_sub_i32(48849i & _wgslsmith_add_i32(-17408i, arg_3), arg_0)), _wgslsmith_add_i32(u_input.d, ~(-u_input.c.x)) ^ firstTrailingBit(u_input.e.x));
    var var_1 = vec3<bool>(!(!arg_1.x), true, all(arg_1));
    let var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b << (~(~98043u) % 32u), 17u)]) <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b, 86458u), vec4<u32>(2545u, 0u, 241u, arg_2.x)), arg_2.x), 4294967295u), 17u)]);
    let var_3 = -var_0;
    var var_4 = Struct_2(Struct_1(min(countOneBits(vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b) ^ vec4<u32>(40969u, u_input.b, u_input.b, u_input.b)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.x, arg_2.x, u_input.a, u_input.b), vec4<u32>(u_input.b, arg_2.x, 14120u, 91239u)))), Struct_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(1261u, 4294967295u, u_input.a)), reverseBits(func_2()), 18128u, arg_2.x)), select(var_1.xy, select(select(select(arg_1, arg_1, var_1.xx), arg_1, global0[_wgslsmith_index_u32(~4294967295u, 23u)]), !(!var_1.yz), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)]), !arg_1, var_1.x)), (arg_0 != _wgslsmith_mult_i32(var_0, -2147483647i)) && var_1.x), Struct_1(vec4<u32>(reverseBits(~u_input.b), u_input.b, ~16359u, 99429u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(351f, global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<f32>(global1[_wgslsmith_index_u32(28755u, 17u)], -973f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 17u)], 541f) + vec2<f32>(global1[_wgslsmith_index_u32(67417u, 17u)], global1[_wgslsmith_index_u32(5851u, 17u)]))))));
    return Struct_4(31474u);
}

fn func_1(arg_0: u32) -> Struct_4 {
    global0 = array<bool, 23>();
    let var_0 = _wgslsmith_mult_vec4_u32(abs(_wgslsmith_add_vec4_u32(~select(vec4<u32>(arg_0, 1u, 50757u, 4294967295u), vec4<u32>(arg_0, arg_0, u_input.a, 5868u), vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], true, global0[_wgslsmith_index_u32(arg_0, 23u)], global0[_wgslsmith_index_u32(73899u, 23u)])), vec4<u32>(_wgslsmith_add_u32(arg_0, 59345u), 0u, 4294967295u, arg_0))), reverseBits(vec4<u32>(_wgslsmith_div_u32(0u, u_input.b), reverseBits(~0u), ~select(85768u, 4294967295u, true), ~arg_0)));
    var var_1 = var_0.wzx;
    global1 = array<f32, 17>();
    let var_2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 17u)] * global1[_wgslsmith_index_u32(arg_0, 17u)]);
    return func_3(u_input.d, vec2<bool>(true, (71330u ^ (u_input.a >> (1u % 32u))) < (_wgslsmith_sub_u32(1u, u_input.a) << (func_2() % 32u))), ~var_0.zzz, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_clamp_u32(~u_input.b, 616u, ~(~u_input.b)));
    global1 = array<f32, 17>();
    let var_1 = vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], all(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_0.a, 23u)], global0[_wgslsmith_index_u32(var_0.a, 23u)]), global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 23u)], global0[_wgslsmith_index_u32(var_0.a, 23u)], true), true)), global0[_wgslsmith_index_u32(u_input.a | 1u, 23u)], true);
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(35262u, 17u)], 1437f, global1[_wgslsmith_index_u32(u_input.a, 17u)]) * vec4<f32>(1526f, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], 1000f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-235f, global1[_wgslsmith_index_u32(u_input.b, 17u)], 390f, global1[_wgslsmith_index_u32(1u, 17u)]), vec4<f32>(global1[_wgslsmith_index_u32(var_0.a, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], -552f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2495f, -122f, -1343f, global1[_wgslsmith_index_u32(47983u, 17u)]))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(876f, 153f, 680f, global1[_wgslsmith_index_u32(25666u, 17u)]))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(766f, global1[_wgslsmith_index_u32(var_0.a, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), vec4<f32>(565f, global1[_wgslsmith_index_u32(4294967295u, 17u)], 1701f, global1[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(var_1.x, false, true, false))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(111f, global1[_wgslsmith_index_u32(4294967295u, 17u)], 1614f, 1330f), vec4<f32>(-265f, 580f, 1394f, 158f), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 23u)], var_1.x, var_1.x))))) + vec4<f32>(-763f, 391f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(20771u, 17u)]), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)])))), select(var_1, vec4<bool>(var_1.x, false, true, select(var_1.x, var_1.x, global0[_wgslsmith_index_u32(u_input.a, 23u)])), select(select(var_1, vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_0.a, 23u)], var_1.x), var_1), select(var_1, vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_0.a, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]), var_1), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1278u, 23u)], global0[_wgslsmith_index_u32(1956u, 23u)], var_1.x), var_1, vec4<bool>(false, var_1.x, var_1.x, false))))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a >> (_wgslsmith_sub_u32(var_0.a, u_input.b) % 32u), 17u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_div_f32(var_2.x, global1[_wgslsmith_index_u32(u_input.b, 17u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(32374i, ~u_input.e.x), var_2.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(i32(-1i) * -2147483647i, ~u_input.d, _wgslsmith_div_i32(u_input.c.x, u_input.d)), ~(-vec3<i32>(u_input.d, -12030i, -42401i) & u_input.e.xzx)));
}

