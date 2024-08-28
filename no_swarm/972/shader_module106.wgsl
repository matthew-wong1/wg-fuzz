struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30>;

var<private> global1: bool = true;

var<private> global2: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(abs(-1688f));
    let var_1 = arg_0;
    let var_2 = ~u_input.d.xxz;
    return ~((u_input.d.wxz & ~(~u_input.d.wzx)) ^ _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2, 10644u, var_2.x) | vec3<u32>(var_2.x, 4294967295u, 1u), u_input.d.www | vec3<u32>(arg_2, var_2.x, 53510u)), vec3<u32>(_wgslsmith_div_u32(0u, 1u), _wgslsmith_div_u32(var_2.x, u_input.a), arg_2)));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    global1 = true;
    let var_0 = !any(arg_0);
    global1 = !var_0;
    global1 = var_0;
    global0 = array<vec2<bool>, 30>();
    return !(!(!var_0));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_mult_u32(~u_input.a, ~(~_wgslsmith_dot_vec4_u32(~u_input.d, u_input.d)));
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    global2 = true;
    var var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1355f - 210f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(u_input.d, abs(select(abs(u_input.d), vec4<u32>(1u, u_input.a, u_input.d.x, 4294967295u), vec4<bool>(true, true, true, true)))) ^ u_input.d;
    global0 = array<vec2<bool>, 30>();
    var var_1 = vec3<i32>(_wgslsmith_add_i32(min(_wgslsmith_div_i32(1i, u_input.c.x), 1i), ~(i32(-1i) * -2147483647i)), _wgslsmith_dot_vec2_i32(u_input.c.ww, abs(vec2<i32>(-9447i, u_input.e))), -1i) >> (~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 14053u, var_0.x)) << (u_input.d.xzz % vec3<u32>(32u)), ~var_0.yzy >> (func_1(Struct_2(Struct_1(vec4<bool>(true, true, false, false)), vec2<f32>(-1000f, -1185f), Struct_1(vec4<bool>(false, false, true, false))), global0[_wgslsmith_index_u32(0u, 30u)], var_0.x, Struct_1(vec4<bool>(false, true, true, false))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = array<vec2<bool>, 30>();
    var var_2 = _wgslsmith_f_op_f32(sign(118f));
    global1 = all(global0[_wgslsmith_index_u32(u_input.d.x, 30u)]) && select(any(vec3<bool>(false, true, true)), true || !func_2(vec4<bool>(true, true, true, true)), true || (any(global0[_wgslsmith_index_u32(29518u, 30u)]) | true));
    global2 = true;
    let var_3 = Struct_2(Struct_1(vec4<bool>(false, all(select(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], vec2<bool>(false, true))), !func_3(21680i), true)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-567f + 1000f), _wgslsmith_f_op_f32(-1790f * -680f), all(vec3<bool>(true, false, true)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1584f - -1133f) - _wgslsmith_f_op_f32(select(1000f, 993f, false))), _wgslsmith_f_op_f32(f32(-1f) * -1423f)))), Struct_1(select(vec4<bool>(true, false, true, func_3(u_input.b)), vec4<bool>(any(vec4<bool>(true, true, true, false)), any(vec3<bool>(true, false, false)), true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)))));
    var var_4 = _wgslsmith_div_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(abs(2147483647i), var_1.x, u_input.b, -2147483647i), vec4<i32>(-33211i, _wgslsmith_sub_i32(var_1.x, u_input.c.x), max(u_input.b, 0i), 0i)), vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(6514i, var_1.x, -66882i), u_input.c.xyx, var_3.c.a.zxw), -vec3<i32>(var_1.x, var_1.x, 9329i)), -2559i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(24142i, 20967i, u_input.e, 14087i)), min(vec4<i32>(-19310i, -11177i, 30768i, u_input.c.x), u_input.c)), max(u_input.b, countOneBits(var_1.x)))), vec4<i32>(2147483647i, i32(-1i) * -14761i, -_wgslsmith_mod_i32(var_1.x, var_1.x), select(max(u_input.b, -19004i), -5466i, var_3.a.a.x)) << (vec4<u32>(0u, abs(4294967295u), ~5571u, ~u_input.a >> (u_input.a % 32u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(1030i, 2649i, 57381i), vec3<i32>(2147483647i, var_4.x, 28725i)), -u_input.c.xxw), ~vec3<i32>(var_1.x, _wgslsmith_add_i32(1i, _wgslsmith_add_i32(-11281i, 0i)), 2147483647i), ~(~vec2<u32>(u_input.a, 1u) << (vec2<u32>(reverseBits(1u), 2208u) % vec2<u32>(32u))), var_1.x, 56240u >> (~var_0.x % 32u));
}

