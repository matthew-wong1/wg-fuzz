struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 18> = array<f32, 18>(951f, -1047f, 391f, -1147f, 201f, 1000f, -1148f, 1730f, -804f, 571f, -1135f, 524f, -443f, -1040f, -1254f, 485f, -210f, 615f);

var<private> global2: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = global0.yyw;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(662f, -1468f, -602f, -576f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-689f, global1[_wgslsmith_index_u32(1u, 18u)], 308f, 736f) - vec4<f32>(795f, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(6195u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)])), select(vec4<bool>(true, false, true, global0.x), vec4<bool>(false, global0.x, false, var_0.x), vec4<bool>(global0.x, true, false, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], 2465f, global1[_wgslsmith_index_u32(36860u, 18u)]) + vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], -188f, -427f, -376f))))));
    let var_2 = u_input.a.yy;
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-922f, -186f)) * _wgslsmith_f_op_f32(639f - 572f)))), _wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c + arg_0.b))) + _wgslsmith_f_op_f32(f32(-1f) * -1227f))));
    let var_2 = arg_1.a.x;
    var var_3 = vec3<bool>(func_3(), !(!global0.x), any(select(vec4<bool>(global0.x, true, arg_0.a.x && true, true), !vec4<bool>(true, true, global0.x, var_0), !select(vec4<bool>(false, false, false, arg_0.a.x), vec4<bool>(var_0, arg_0.a.x, arg_0.d, true), vec4<bool>(true, arg_0.d, var_0, true)))));
    let var_4 = arg_2.yz;
    return ~(~(-u_input.a.zy));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = arg_0.b;
    var var_1 = vec2<u32>(1u, 33606u);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_div_f32(254f, 917f)), arg_0.c)) + var_0), -382f);
    var_1 = ~((vec2<u32>(~var_1.x, ~4294967295u) & ~(~vec2<u32>(var_1.x, 26626u))) | ~max(vec2<u32>(1u, 1u), vec2<u32>(16075u, var_1.x)));
    var var_2 = Struct_1(select(-_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zx, vec2<i32>(-2147483647i, 1i)), u_input.a.yz ^ vec2<i32>(arg_1, 47233i), vec2<i32>(u_input.a.x, -9239i)), (min(u_input.a.zy, u_input.a.zx) & _wgslsmith_clamp_vec2_i32(u_input.a.zx, u_input.a.wx, vec2<i32>(arg_1, 32632i))) ^ func_2(arg_0, Struct_1(u_input.a.xw), min(vec3<u32>(var_1.x, 1u, var_1.x), vec3<u32>(7015u, var_1.x, 0u)), countOneBits(vec2<u32>(var_1.x, 83440u))), !arg_0.a.zx));
    return Struct_1(-u_input.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(2017u, 337u, 1u, ~(~13404u)));
    let var_1 = 29874u;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(var_1, ~var_0.x, all(vec4<bool>(true, global0.x, global0.x, global0.x))), (0u & var_0.x) ^ var_1, 0u), 18u)], 809f, _wgslsmith_f_op_f32(1711f - _wgslsmith_f_op_f32(step(814f, -421f))))));
    let var_3 = func_1(Struct_3(global0.wwy, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1, 18u)])), -142f, all(global0.zz)), ~u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-399f, var_2.x))), global1[_wgslsmith_index_u32(0u, 18u)], global0.x)), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~17358u, 18u)]))));
    var var_4 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(~var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(var_1, var_1)), ~var_1) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1, 1u), var_0.xxw) % vec3<u32>(32u)), vec3<u32>(4294967295u, 0u, var_1));
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 18u)], -842f, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(12588u, 18u)], var_2.x, -1045f))) * vec3<f32>(var_2.x, 2252f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, var_1, 136934u), 18u)])))));
    let var_5 = ~var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, vec3<i32>(-2147483647i, -var_3.a.x, func_1(Struct_3(select(global0.xyx, vec3<bool>(global0.x, true, true), global0.xwx), 1533f, _wgslsmith_div_f32(292f, global1[_wgslsmith_index_u32(21368u, 18u)]), select(global0.x, true, false)), _wgslsmith_div_i32(11712i, u_input.a.x) >> (var_0.x % 32u), var_2.yx).a.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(~1u, (1u | var_0.x) ^ 33138u), 4294967295u), 87380u);
}

