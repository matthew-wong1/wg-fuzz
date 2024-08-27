struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(0u, 2089u, 45173u), vec4<f32>(-1000f, -1937f, 1000f, 1911f), vec3<f32>(1314f, 572f, 420f), 23617i, vec3<f32>(1000f, 443f, -2204f));

var<private> global2: array<i32, 18> = array<i32, 18>(-1i, -61364i, -67553i, -12873i, -3482i, 2147483647i, -14234i, 0i, 2147483647i, 2147483647i, -52151i, 2147483647i, 1i, 1i, -40554i, -32584i, -1i, i32(-2147483648));

var<private> global3: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(4294967295u, 85837u), vec2<u32>(85979u, 11408u), vec2<u32>(40886u, 46251u), vec2<u32>(53686u, 1u), vec2<u32>(5356u, 0u), vec2<u32>(99903u, 43842u), vec2<u32>(74331u, 1u), vec2<u32>(4294967295u, 4120u), vec2<u32>(62732u, 4175u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<u32>(40751u, 15042u), vec2<u32>(8120u, 4294967295u), vec2<u32>(26049u, 27401u));

var<private> global4: vec4<i32> = vec4<i32>(1i, -39760i, -1i, 2147483647i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.c.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1059f - global1.e.x) + -1703f)), global1.e)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-global1.b.x), 508f))));
    var var_1 = !all(!select(arg_1, !arg_1, arg_1));
    return 1u;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: bool, arg_3: i32) -> u32 {
    global3 = array<vec2<u32>, 14>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(741f * global1.e.x), -785f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)) + 927f));
    global1 = Struct_1(max(~(~(~vec3<u32>(global1.a.x, 0u, 56248u))), vec3<u32>(func_3(global1.b, vec2<bool>(true, arg_1.x)), reverseBits(u_input.a.x ^ 1u), arg_0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.e.x, global1.b.x, global1.e.x, 1000f)))) * _wgslsmith_f_op_vec4_f32(trunc(global1.b))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c.x, 1298f, true))), global1.b.x, -933f, _wgslsmith_f_op_f32(floor(492f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, -490f, global1.e.x)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -809f, 207f), global1.c))), u_input.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c + global1.e) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global1.e * vec3<f32>(global1.e.x, global1.e.x, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, global1.c.x, global1.c.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 1000f, global1.e.x)))));
    var_0 = _wgslsmith_div_f32(global1.e.x, 232f);
    var var_1 = Struct_1(vec3<u32>(4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 61696u), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, 1u), vec2<u32>(4294967295u, 4294967295u))) % 32u), _wgslsmith_dot_vec3_u32(u_input.a.yyy >> (u_input.a.xzz % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(u_input.a.yww, u_input.a.zwx)), firstLeadingBit(127431u) & (0u << (u_input.a.x % 32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(673f, 125f, global1.c.x, 196f) + _wgslsmith_f_op_vec4_f32(round(global1.b))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.e.x))) * _wgslsmith_f_op_f32(-global1.e.x)), _wgslsmith_f_op_f32(max(210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(841f + -218f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1222f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-768f * global1.e.x))))), -(~countOneBits(abs(arg_3))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(336f, 819f, _wgslsmith_div_f32(-643f, _wgslsmith_f_op_f32(-1850f - 1009f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1.c.x, global1.e.x), _wgslsmith_f_op_f32(floor(global1.c.x)), _wgslsmith_f_op_f32(-global1.e.x))), !(!arg_1.x))));
    return var_1.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(func_2(~global1.a.x, vec3<bool>(true, true, true), global1.a.x <= u_input.a.x, ~0i), _wgslsmith_mult_u32(max(1u, 75464u), func_2(1u, vec3<bool>(true, true, true), true, -1i))) << (~(~4294967295u) % 32u);
    global4 = _wgslsmith_mult_vec4_i32(-vec4<i32>(global4.x, _wgslsmith_add_i32(-7173i, global1.d), firstLeadingBit(min(global4.x, global2[_wgslsmith_index_u32(0u, 18u)])), _wgslsmith_div_i32(global4.x, -16008i)), vec4<i32>(-1i) * -vec4<i32>(-arg_1, global1.d << (global1.a.x % 32u), ~arg_0.d, ~global2[_wgslsmith_index_u32(u_input.a.x, 18u)]));
    global3 = array<vec2<u32>, 14>();
    let var_1 = arg_0;
    return Struct_1(u_input.a.xxw, vec4<f32>(-161f, global1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c.x, var_1.e.x)) + global1.c.x) - global1.c.x), var_1.c.x), _wgslsmith_f_op_vec3_f32(-global1.b.wwy), arg_1, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.e.x, var_1.c.x, var_1.c.x), vec3<f32>(global1.b.x, var_1.c.x, 1251f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(vec3<u32>(firstTrailingBit(u_input.a.x), ~u_input.a.x, 4294967295u), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.b.yww, vec3<f32>(-978f, -1081f, global1.c.x)))), 2147483647i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.e.x, 1000f, 1000f), global1.b.yzx, vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-623f, global1.b.x, -1000f) * vec3<f32>(208f, global1.c.x, global1.b.x)), false)), _wgslsmith_f_op_vec3_f32(-global1.c), false))), _wgslsmith_sub_i32(~(-2147483647i), global4.x));
    global3 = array<vec2<u32>, 14>();
    let var_1 = func_1(Struct_1(vec3<u32>(var_0.a.x, 879u, 83205u), global1.b, _wgslsmith_f_op_vec3_f32(func_1(func_1(Struct_1(var_0.a, vec4<f32>(446f, global1.e.x, var_0.e.x, var_0.e.x), vec3<f32>(var_0.b.x, var_0.b.x, var_0.e.x), global4.x, vec3<f32>(-634f, 667f, -363f)), 0i), var_0.d).e + _wgslsmith_f_op_vec3_f32(vec3<f32>(-323f, var_0.b.x, var_0.e.x) * vec3<f32>(var_0.b.x, 693f, global1.e.x))), -(-2147483647i >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(453f, _wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(sign(global1.e.x))) + func_1(func_1(Struct_1(vec3<u32>(global1.a.x, 4294967295u, global1.a.x), vec4<f32>(-1347f, var_0.b.x, -1099f, global1.b.x), global1.e, var_0.d, var_0.b.yxy), global1.d), ~(-47071i)).b.xzy)), 16173i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(select(_wgslsmith_mult_i32(57752i, 1i), _wgslsmith_add_i32(-1i, -34733i), true), 6230i) | global4.xx, var_0.b, u_input.a.x);
}

