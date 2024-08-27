struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true));

var<private> global1: array<u32, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    global0 = array<vec4<bool>, 7>();
    global1 = array<u32, 23>();
    var var_0 = 2524u;
    global1 = array<u32, 23>();
    var var_1 = !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 42361u), 7u)];
    return Struct_3(Struct_1(!(!(!vec4<bool>(var_1.x, false, false, var_1.x))), min(u_input.c ^ select(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)]), u_input.c, var_1.yy), firstTrailingBit(vec2<u32>(92592u, 14293u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(521f, 1806f, -807f)) * vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * 1872f), _wgslsmith_f_op_f32(ceil(576f)), _wgslsmith_f_op_f32(arg_0.x * arg_0.x))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, 587f, arg_0.x)) * arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + arg_0))))), Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(49200u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~u_input.b), 23u)], 23u)]), 23u)], 7u)], u_input.c), Struct_1(!global0[_wgslsmith_index_u32(abs(u_input.b), 7u)], ~u_input.c));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_1 {
    global0 = array<vec4<bool>, 7>();
    var var_0 = Struct_1(!func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1591f, arg_0.b.x, 548f))))).c.a, vec2<u32>(u_input.a | 0u, ~(0u | global1[_wgslsmith_index_u32(20416u, 23u)])) ^ (u_input.c ^ ~(~arg_0.a.b)));
    global1 = array<u32, 23>();
    var var_1 = Struct_2(all(select(var_0.a.yz, vec2<bool>(true, !var_0.a.x), !vec2<bool>(arg_1.x, false))), func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(f32(-1f) * -333f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_0.b.x)), _wgslsmith_f_op_f32(-arg_2.x))).d.a.xw, func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(arg_2.x + arg_2.x), _wgslsmith_f_op_f32(1000f + -428f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b + arg_0.b))))).d, Struct_1(vec4<bool>(arg_1.x, !arg_0.d.a.x && (u_input.e.x == u_input.e.x), arg_0.c.a.x, abs(var_0.b.x) > _wgslsmith_div_u32(var_0.b.x, 4554u)), vec2<u32>(32434u, ~(0u & global1[_wgslsmith_index_u32(23827u, 23u)]))), arg_0.c);
    var var_2 = Struct_3(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-306f, _wgslsmith_f_op_f32(-arg_2.x), 1490f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1220f, arg_2.x, -2012f) - arg_0.b) - vec3<f32>(arg_0.b.x, arg_2.x, -297f)))).c, _wgslsmith_f_op_vec3_f32(-arg_0.b), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(543f, 1000f, arg_0.b.x) - arg_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(575f, -1532f, -850f)) - arg_0.b), var_1.a))).d, Struct_1(arg_0.d.a, ~(~(~vec2<u32>(global1[_wgslsmith_index_u32(arg_0.a.b.x, 23u)], u_input.a)))));
    return var_2.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = func_3(func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f - 386f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-678f - 186f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1648f * 1822f) + _wgslsmith_f_op_f32(f32(-1f) * -1256f)))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(429f, -107f, 863f) - vec3<f32>(645f, -1664f, 115f))))).c.a.xww, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-170f, -749f) * vec2<f32>(-198f, -597f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1335f, 689f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(583f, 1045f), vec2<f32>(-1871f, -112f)))))))));
    let var_1 = _wgslsmith_clamp_u32(var_0.b.x, ~func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-119f, 292f, -445f) + vec3<f32>(722f, 672f, 1701f))).d.b.x, arg_0.x) & reverseBits(25501u);
    global1 = array<u32, 23>();
    let var_2 = var_0;
    global1 = array<u32, 23>();
    return !(!(!func_3(func_2(vec3<f32>(822f, -529f, 1000f)), var_0.a.zyw, _wgslsmith_f_op_vec2_f32(vec2<f32>(-615f, -616f) - vec2<f32>(297f, -1280f))).a.xxw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = (-u_input.e.x == ~0i) || false;
    global0 = array<vec4<bool>, 7>();
    let var_2 = vec2<bool>(true, select(all(!func_1(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49446u, 23u)], 23u)], 23u)], 0u, global1[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec2<i32>(1i, u_input.e.x))), true, var_0));
    var var_3 = -_wgslsmith_mod_vec3_i32(u_input.e.zzz & vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.e, u_input.e), _wgslsmith_mod_i32(u_input.e.x, 2147483647i), max(1i, -1i)), select(max(abs(vec3<i32>(u_input.e.x, u_input.e.x, 19329i)), vec3<i32>(-1i, u_input.e.x, -2734i)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.e.x, 44427i, 15272i), u_input.e.zxx), vec3<i32>(u_input.e.x, u_input.e.x, 0i)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-2567f - _wgslsmith_f_op_f32(f32(-1f) * -1757f)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c ^ u_input.c, ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 5802u)), _wgslsmith_mod_u32(6213u, 25374u)), _wgslsmith_add_vec2_u32(select(_wgslsmith_mult_vec2_u32(u_input.c, u_input.c), ~u_input.c, var_2), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-475f, 1199f, 285f))).d.b)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-607f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1238f)) - _wgslsmith_f_op_f32(f32(-1f) * -272f)), -1567f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1774f, 989f), _wgslsmith_f_op_f32(sign(1094f)), _wgslsmith_f_op_f32(abs(-572f))))), ~(-(u_input.e.x >> (1u % 32u))), select(var_3.xx, ~(-u_input.e.wz ^ -var_3.zx), var_2));
}

