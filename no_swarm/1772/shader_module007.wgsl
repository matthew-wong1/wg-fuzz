struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(1616f, 210f, 1517f, 1504f, -535f, 433f, -1070f, -185f, 994f, 3146f, 571f, -1000f, 381f, 640f, 509f, 182f, 416f, -1000f, -1288f, -157f, 1494f, -378f, -996f, 1276f, 1343f, -1042f, 955f, 313f, -204f, 1000f, -353f, -176f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -126f))), -526f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1506f), vec2<f32>(1461f, global0[_wgslsmith_index_u32(0u, 32u)]), all(vec4<bool>(true, true, false, true)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(288f, -620f) + _wgslsmith_f_op_f32(f32(-1f) * -610f)), -1191f)));
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    let var_1 = !all(!vec4<bool>(true, any(vec4<bool>(true, false, false, true)), true, global0[_wgslsmith_index_u32(10641u, 32u)] > -1000f));
    global0 = array<f32, 32>();
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u ^ arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, 39481u, arg_0, 30465u))), 32u)], -411f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-178f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-481f, -992f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(18752u, 32u)], var_0.x, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 32u)]))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, global0[_wgslsmith_index_u32(arg_0, 32u)])) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 32u)] + global0[_wgslsmith_index_u32(u_input.b, 32u)])), 402f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(45154u, 32u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 32u)] - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.b, 32u)]))))), var_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(769f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-3080f, var_1.a.x), -1000f, arg_2 == true)), -801f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-476f, -345f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(55434u, 32u)] * 1000f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))));
    let var_3 = select(arg_1.yy, arg_1.zw, select(vec2<bool>(arg_1.x, all(arg_1.zy)), !(!select(arg_1.yx, arg_1.zx, vec2<bool>(arg_1.x, false))), false));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_2()), var_1.a.x, _wgslsmith_f_op_f32(-261f - -1024f), -337f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    return 1i;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = ~(~27870u);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1230f), global0[_wgslsmith_index_u32(~1u, 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(904f + global0[_wgslsmith_index_u32(41858u, 32u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(840f)) - 1070f), _wgslsmith_f_op_f32(-481f * _wgslsmith_f_op_f32(step(-1253f, global0[_wgslsmith_index_u32(u_input.b, 32u)])))))), _wgslsmith_f_op_f32(func_2()));
    var var_2 = vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, ~u_input.a >> (4294967295u % 32u)) ^ _wgslsmith_div_i32(func_3(11726u, vec4<bool>(true, true, true, true), false), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 12i, arg_0), vec3<i32>(u_input.c.x, -27706i, -20099i)), vec3<i32>(-2147483647i, -2147483647i, u_input.a))), -2147483647i, _wgslsmith_add_i32(1i, ~(-45346i >> (1u % 32u))));
    let var_3 = -147f;
    let var_4 = vec2<u32>(~select(~4294967295u, ~0u, 1u <= u_input.b) << (reverseBits(_wgslsmith_div_u32(u_input.b, min(24490u, 48760u))) % 32u), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(4294967295u, u_input.b)) ^ ~abs(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(4294967295u, u_input.b)));
    return var_1;
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = ~(i32(-1i) * -19129i);
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var var_1 = all(select(select(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true), vec3<bool>(true, -27237i > u_input.a, any(vec3<bool>(false, true, false)))), select(vec3<bool>(any(vec2<bool>(false, false)), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), any(vec2<bool>(true, true))), false)));
    return !vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), (all(vec4<bool>(false, true, false, true)) & true) == any(vec4<bool>(true, true, true, true)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.b;
    global0 = array<f32, 32>();
    let var_1 = arg_1.x;
    var var_2 = vec3<u32>(1u, countOneBits(_wgslsmith_mod_u32(firstTrailingBit(var_0 >> (55888u % 32u)), ~(82209u << (var_0 % 32u)))), 1u);
    global0 = array<f32, 32>();
    return func_1(_wgslsmith_add_i32(arg_2, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    let var_0 = u_input.b;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]))), -1468f, -1250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(662f - global0[_wgslsmith_index_u32(var_0, 32u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 32u)])) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 32u)])))));
    let var_2 = func_5(func_4(func_1(u_input.d.x)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-1i, 60259i, u_input.d.x, u_input.d.x) | u_input.c, vec4<i32>(u_input.a, 12647i, u_input.d.x, 2147483647i) << (vec4<u32>(var_0, var_0, u_input.b, 0u) % vec4<u32>(32u)), vec4<bool>(true, false, false, true)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d, abs(vec2<i32>(23782i, -589i))), abs(u_input.a >> (1u % 32u)), countOneBits(~(-2147483647i)), u_input.a)), 2147483647i);
    global0 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(max(~(-vec3<i32>(-1i, u_input.a, u_input.d.x) | abs(u_input.c.zxz)), vec3<i32>(u_input.c.x, u_input.a, 35564i)), -_wgslsmith_mod_i32(i32(-1i) * -45412i, -(-1i >> (1u % 32u))), 29735u);
}

