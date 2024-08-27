struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<u32>, 19>;

var<private> global2: array<f32, 23> = array<f32, 23>(-1000f, 1000f, -1112f, -1062f, 355f, -1013f, -1000f, 1606f, 591f, 2161f, -1103f, 1638f, -1675f, -666f, 616f, -563f, 647f, -131f, -2299f, -1223f, 1280f, 1265f, -675f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    var var_0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x)))));
    var_0 = vec2<f32>(var_0.x, -1420f);
    var var_1 = Struct_1(_wgslsmith_mult_i32(u_input.c | (u_input.b.x >> (abs(u_input.d.x) % 32u)), u_input.c << (96512u % 32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.x, global0.x, 1761f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], global2[_wgslsmith_index_u32(u_input.d.x, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(u_input.d.x, 23u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1127f, 234f, global2[_wgslsmith_index_u32(0u, 23u)], -1000f))))))));
    var var_2 = ~max(u_input.d.x, 0u);
    var var_3 = 218f;
    return 0u;
}

fn func_2(arg_0: vec2<bool>) -> vec3<f32> {
    global2 = array<f32, 23>();
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1125f, global0.x) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global2[_wgslsmith_index_u32(u_input.d.x, 23u)]) * vec3<f32>(-180f, -304f, global2[_wgslsmith_index_u32(4294967295u, 23u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global2[_wgslsmith_index_u32(5620u, 23u)])))) * vec3<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.d.x, 23u)])), global2[_wgslsmith_index_u32(u_input.d.x, 23u)], _wgslsmith_f_op_f32(-1000f * global0.x))))));
    global2 = array<f32, 23>();
    global2 = array<f32, 23>();
    var var_0 = min(u_input.d.x, u_input.d.x) >> (u_input.d.x % 32u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 23u)]))), global2[_wgslsmith_index_u32(u_input.d.x, 23u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(2286f))))))) - vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(), u_input.d.x), 23u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1642f, global2[_wgslsmith_index_u32(4294967295u, 23u)])) + 547f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_f32(1842f - global0.x))))));
}

fn func_1(arg_0: f32) -> vec3<f32> {
    var var_0 = Struct_1(2147483647i, vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], arg_0, -459f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(858f * _wgslsmith_f_op_f32(floor(arg_0))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.d.x, u_input.d.x), 23u)])));
    let var_1 = !(_wgslsmith_add_u32((77951u ^ u_input.d.x) ^ 81271u, u_input.d.x) >= _wgslsmith_add_u32(~u_input.d.x, ~47353u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1256f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 23u)])))) * -569f);
    let var_3 = var_0.a;
    let var_4 = -(~var_0.a);
    return _wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(select(all(select(vec2<bool>(var_1, var_1), vec2<bool>(false, false), var_1)), false, !(!var_1)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(2669f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(66899u, 23u)], global2[_wgslsmith_index_u32(u_input.d.x, 23u)], global2[_wgslsmith_index_u32(31991u, 23u)]), vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], global2[_wgslsmith_index_u32(u_input.d.x, 23u)], 643f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(468f, -579f, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1935f, 1507f, global2[_wgslsmith_index_u32(4294967295u, 23u)]) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], 340f, global0.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global2[_wgslsmith_index_u32(0u, 23u)], -214f))))));
    global2 = array<f32, 23>();
    let var_1 = Struct_1(-(-u_input.c ^ abs(1i)) ^ max(-6785i, -u_input.a.x), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(global0.x - -1745f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(108f))), var_0.x));
    var var_2 = ~_wgslsmith_mod_i32(~(~var_1.a) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x) & vec3<u32>(90401u, 0u, 0u), vec3<u32>(u_input.d.x, 949u, 3276u)) % 32u), -var_1.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.b, vec4<f32>(1746f, var_1.b.x, 434f, global2[_wgslsmith_index_u32(68388u, 23u)]), vec4<bool>(false, true, true, true)))))));
    var_2 = ~(-2147483647i | _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b.wyx, ~vec3<i32>(u_input.b.x, u_input.c, u_input.b.x)), u_input.c));
    global2 = array<f32, 23>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0 + var_0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-707f, -797f, global0.x) * vec3<f32>(807f, var_3.x, -965f)))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 777u), u_input.d)), 23u)])), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, ~u_input.d.x), 23u)], var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, -u_input.b), ~vec4<i32>(firstLeadingBit(-16107i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 13836i), vec2<i32>(var_1.a, -1i)), ~(-35486i), -3528i | var_1.a)), ~global1[_wgslsmith_index_u32(~4294967295u, 19u)]);
}

