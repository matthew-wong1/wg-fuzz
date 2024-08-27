struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<f32> {
    let var_0 = countOneBits(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.d.x, 0u), (u_input.a | 24586u) >> (_wgslsmith_div_u32(34290u, u_input.a) % 32u)), 5u)]);
    var var_1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-666f)), _wgslsmith_f_op_f32(-225f - _wgslsmith_f_op_f32(ceil(678f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-642f, -392f)) + vec2<f32>(-869f, -462f)))));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_0, u_input.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 5u)], u_input.b.x) << (vec4<u32>(u_input.a, 14759u, 30564u, 1778u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -1i, 1i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), ~var_0), abs(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], u_input.b.x, 28118i, u_input.c.x))))), _wgslsmith_add_i32(-25992i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 5u)], -1i) | vec2<i32>(20646i, -1i), u_input.b.zy)), select(-11220i, -33383i, !any(vec4<bool>(true, false, false, true)) & true));
    let var_3 = _wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x));
    let var_4 = !select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(false, true, false), u_input.d.x >= 0u), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(any(vec3<bool>(true, true, true)), true, true));
    return _wgslsmith_f_op_vec2_f32(-var_1.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -153f);
    var var_1 = var_0;
    var_1 = 1000f;
    var var_2 = arg_1;
    var var_3 = Struct_4(false);
    return !select(!(!vec3<bool>(var_3.a, false, var_3.a)), vec3<bool>(all(!vec4<bool>(false, var_3.a, var_3.a, var_3.a)), all(vec2<bool>(true, true)), !var_3.a | false), !(var_3.a | (global0[_wgslsmith_index_u32(u_input.d.x, 5u)] <= 6880i)));
}

fn func_2() -> Struct_2 {
    var var_0 = select(!(!vec3<bool>(true, true, all(vec3<bool>(false, true, false)))), func_4(~u_input.b ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -1i, global0[_wgslsmith_index_u32(u_input.a, 5u)]), -vec3<i32>(-13106i, global0[_wgslsmith_index_u32(u_input.a, 5u)], u_input.c.x), u_input.c), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(468f, 1382f), _wgslsmith_f_op_f32(-2265f + -706f)), _wgslsmith_f_op_vec2_f32(func_3())))), !vec3<bool>(true, true, !select(true, false, true)));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -20384i, 14158i), select(vec2<i32>(global0[_wgslsmith_index_u32(5833u, 5u)], 63063i), _wgslsmith_sub_vec2_i32(u_input.b.zy, u_input.b.xx), select(var_0.yz, var_0.zz, var_0.x)) & ((u_input.b.yy & u_input.b.xx) & ~u_input.c.yx)), -1i, firstTrailingBit(abs(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, 1i), _wgslsmith_sub_i32(-2147483647i, -16500i)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2380f, -255f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1467f, 679f))))))));
    let var_3 = !vec3<bool>(any(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true))), true, true);
    var var_4 = !var_3.xy;
    return Struct_2(vec2<f32>(var_2.x, var_2.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, u_input.d.x, 4294967295u), u_input.d), u_input.a);
    let var_1 = arg_0.c.yz;
    let var_2 = func_2();
    global0 = array<i32, 5>();
    var var_3 = Struct_3(arg_0.c.x, ~(-3433i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.a.x)), var_2.a.x, _wgslsmith_div_f32(-944f, 215f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -1174f))) - vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-func_2().a.x), _wgslsmith_f_op_f32(-973f * -201f), _wgslsmith_f_op_f32(select(-983f, _wgslsmith_f_op_f32(-var_2.a.x), var_1.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-247f, 380f, _wgslsmith_f_op_f32(abs(-1609f)), var_2.a.x))));
    return var_1;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec2<bool>) -> bool {
    global0 = array<i32, 5>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-339f, 494f));
    global0 = array<i32, 5>();
    let var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1527f - _wgslsmith_f_op_f32(var_0.x * var_0.x)))), var_0.x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x), -459f);
    return select(true, true, (_wgslsmith_mod_i32(u_input.c.x & 1i, 0i) << (1u % 32u)) != -u_input.c.x);
}

fn func_6(arg_0: vec4<bool>, arg_1: u32) -> StorageBuffer {
    let var_0 = Struct_3((arg_0.x && true) & arg_0.x, -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-800f, -427f, -1105f, 1720f) + vec4<f32>(-1457f, 1997f, -757f, 473f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) + _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(511f - -1515f) - -455f), _wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, -942f, 948f, -446f)) - vec4<f32>(274f, -576f, _wgslsmith_f_op_f32(f32(-1f) * -1154f), _wgslsmith_f_op_f32(f32(-1f) * -137f))), true & (arg_0.x | all(vec4<bool>(arg_0.x, false, arg_0.x, false))))));
    let var_1 = any(select(arg_0.xy, func_4(min(vec3<i32>(global0[_wgslsmith_index_u32(arg_1, 5u)], global0[_wgslsmith_index_u32(arg_1, 5u)], var_0.b), vec3<i32>(1i, -2147483647i, u_input.b.x)) ^ vec3<i32>(2147483647i, -1i, 2147483647i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.d.wy * var_0.c.yz)))).zx, select(arg_0.xw, vec2<bool>(!var_0.a, false), arg_0.xw)));
    let var_2 = !vec4<bool>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d & vec4<u32>(0u, 27470u, u_input.a, u_input.a)) > 1u, !(!(!arg_0.x)), -firstTrailingBit(2147483647i) < u_input.c.x, true);
    global0 = array<i32, 5>();
    let var_3 = Struct_1(true, -1i << (_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) % 32u), vec3<bool>(true, true, _wgslsmith_f_op_f32(var_0.d.x - -760f) >= _wgslsmith_f_op_vec2_f32(func_3()).x));
    return StorageBuffer(~(-1i), ~_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(27131u, 5u)], global0[_wgslsmith_index_u32(~0u, 5u)] << (_wgslsmith_mult_u32(42849u, 48525u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    let x = u_input.a;
    s_output = func_6(vec4<bool>(false, func_5(~vec4<i32>(5101i, 2147483647i, u_input.c.x, global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), firstLeadingBit(vec3<u32>(u_input.d.x, u_input.d.x, u_input.a)), func_1(Struct_1(false, global0[_wgslsmith_index_u32(1u, 5u)], vec3<bool>(false, true, true)), u_input.d.yz)) == true, true, any(vec2<bool>(false, true))), u_input.a);
}

