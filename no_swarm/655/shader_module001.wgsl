struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = select(select(vec4<bool>(!global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 30u)], true, select(true, true, true), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], false, false), global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(71217u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(95483u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(924u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], false))), !(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], true)))), select(!select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(42261u, 30u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], false, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(62239u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)])), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(27098u, 30u)], true, false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false, global0[_wgslsmith_index_u32(31910u, 30u)], true), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], true, false, true), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(25053u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)])), !global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(14837u, 4332u, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x)) > u_input.c.x, all(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)])), true && !global0[_wgslsmith_index_u32(u_input.c.x, 30u)], !all(vec2<bool>(false, false)))), false);
    var var_1 = Struct_3(select(~(abs(vec2<u32>(u_input.c.x, 1u)) >> ((u_input.c.yx | vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u))), abs(vec2<u32>(u_input.c.x, 0u)), var_0.zy), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-970f, 923f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2238f, 151f) - vec2<f32>(-1000f, -1000f))))), reverseBits(-1i), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(472f)), 831f))), -790f));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(-var_1.c, ~1i), 0i), u_input.a) >= u_input.d.x;
    var_1 = Struct_3((~vec2<u32>(40585u, 4294967295u) & u_input.c.xz) >> (select(var_1.a, select(var_1.a, vec2<u32>(1u, var_1.a.x), select(var_0.wy, vec2<bool>(true, global0[_wgslsmith_index_u32(18128u, 30u)]), var_0.yx)), var_2) % vec2<u32>(32u)), var_1.b, firstTrailingBit(select(~u_input.d.x, u_input.a, !(var_0.x || false))), vec2<f32>(var_1.d.x, 891f));
    let var_3 = var_1.b;
    return _wgslsmith_f_op_f32(var_1.b.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.a.x)) + _wgslsmith_f_op_f32(step(var_1.b.a.x, var_1.d.x)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_f_op_f32(func_3());
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_div_f32(arg_2, -2175f));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1171f, _wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1313f, 231f)))));
    let var_2 = Struct_3(abs(abs(vec2<u32>(arg_0.x, arg_0.x))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.a, var_1.a)) + _wgslsmith_f_op_vec2_f32(var_1.a - var_1.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, var_1.a.x))) - vec2<f32>(var_1.a.x, var_1.a.x)))), u_input.d.x, var_1.a);
    return 203f;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(1205f * arg_0.x);
    var_0 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = vec3<bool>(!arg_1, select(false, global0[_wgslsmith_index_u32(0u, 30u)], arg_1), global0[_wgslsmith_index_u32(u_input.c.x, 30u)]);
    let var_2 = ~u_input.c.xz;
    return Struct_1(~vec4<u32>(~4294967295u, 1703u, ~30501u, ~u_input.c.x) << (vec4<u32>(~u_input.c.x | 70984u, ~4294967295u, ~u_input.c.x, var_2.x & (23145u & u_input.c.x)) % vec4<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_4) -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_3.a.xww, arg_1, 1063f, vec4<bool>(true, arg_0, true, arg_2)))), _wgslsmith_f_op_f32(-1000f * -1000f), -1149f, 727f))), global0[_wgslsmith_index_u32(9769u, 30u)]);
    let var_1 = !select(arg_1.zx, !arg_1.zx, arg_1.x);
    let var_2 = u_input.a;
    var var_3 = 2385i;
    var var_4 = var_0.a.x;
    return 1u;
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> StorageBuffer {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a.x, -1078f, arg_3.a.x, 926f), vec4<f32>(919f, arg_3.a.x, arg_3.a.x, arg_3.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-813f, arg_3.a.x, arg_3.a.x, arg_3.a.x) * vec4<f32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x))))))), any(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(43626u, u_input.c.x), 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(~u_input.c.x, 30u)])) & false);
    let var_1 = arg_3;
    return StorageBuffer(~abs(var_0.a.x) << (47u % 32u), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)));
    global0 = array<bool, 30>();
    let x = u_input.a;
    s_output = func_5(~u_input.d.xxy, -2147483647i, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), u_input.d.wzy), vec3<i32>(u_input.a >> (func_1(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), global0[_wgslsmith_index_u32(u_input.c.x, 30u)], Struct_4(vec4<u32>(1u, 0u, u_input.c.x, 6141u), vec2<u32>(119250u, 1u))) % 32u), -33389i, 1i)), Struct_2(vec2<f32>(-1336f, var_0.x)));
}

