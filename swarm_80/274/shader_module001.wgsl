struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13>;

var<private> global1: i32 = -23846i;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(19743u, 33212u, 20478u, 4294967295u), 808f, true, vec4<f32>(1000f, -739f, 599f, 1140f));

var<private> global4: array<vec3<i32>, 30>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    global3 = Struct_1(~firstTrailingBit(_wgslsmith_div_vec4_u32(arg_0.a, global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1540f * 140f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x - -568f)))), all(vec4<bool>(_wgslsmith_f_op_f32(global3.d.x + arg_0.b) > arg_0.d.x, select(global2.c, true, global3.c), !select(arg_0.c, false, global2.c), false)), _wgslsmith_f_op_vec4_f32(exp2(global2.d)));
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.d.x + 103f)))))), global3.b, _wgslsmith_f_op_f32(global3.d.x * 293f) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.b)))));
    let var_1 = u_input.a.x;
    let var_2 = !vec3<bool>(false, all(select(!vec4<bool>(global2.c, arg_0.c, global3.c, global3.c), vec4<bool>(global3.c, global3.c, false, true), all(vec2<bool>(true, arg_0.c)))), all(select(!vec4<bool>(arg_0.c, false, true, global2.c), select(vec4<bool>(false, false, global3.c, arg_0.c), vec4<bool>(global3.c, global3.c, global2.c, global3.c), vec4<bool>(arg_0.c, global2.c, true, true)), !vec4<bool>(true, global3.c, true, global2.c))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1696f, _wgslsmith_f_op_f32(f32(-1f) * -510f))) * global2.d.x)))));
    return any(vec4<bool>(((global2.b > global2.b) && all(vec2<bool>(arg_0.c, global2.c))) && (true & arg_0.c), true, any(!vec4<bool>(false, var_2.x, arg_0.c, global3.c)) == true, true));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_1(global2.a, global3.d.x, global3.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global2.b, -477f, 850f, -563f), global2.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1125f, -775f, global3.d.x) * _wgslsmith_div_vec4_f32(vec4<f32>(474f, global2.d.x, 325f, 597f), vec4<f32>(-1000f, 476f, 1302f, 1291f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.x, _wgslsmith_f_op_f32(max(global3.d.x, global3.b)), _wgslsmith_f_op_f32(-global3.b), global3.d.x))));
    var_0 = Struct_1(global0[_wgslsmith_index_u32(global2.a.x, 13u)], -358f, !(!any(!vec3<bool>(true, var_0.c, true))), vec4<f32>(494f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b - global3.b) - _wgslsmith_f_op_f32(global3.d.x * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1425f, -1061f))), false)), global3.d.x));
    var var_1 = select(vec3<bool>(any(select(vec2<bool>(false, true), select(vec2<bool>(global2.c, true), vec2<bool>(global3.c, var_0.c), var_0.c), true)), func_3(Struct_1(var_0.a, 1000f, all(vec4<bool>(false, false, global2.c, global3.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d.x, global3.b, 609f, global3.d.x) + var_0.d))), false), !(!(!vec3<bool>(true, global2.c, true))), false);
    var var_2 = Struct_1(abs(max(~abs(var_0.a), vec4<u32>(_wgslsmith_add_u32(4294967295u, var_0.a.x), var_0.a.x, var_0.a.x, 4294967295u))), global2.b, all(select(vec4<bool>(false, true, true, func_3(Struct_1(vec4<u32>(0u, 36482u, global3.a.x, var_0.a.x), 1268f, global2.c, vec4<f32>(622f, global3.b, global2.d.x, -1628f)))), vec4<bool>(global2.c && global3.c, global3.c, true, !var_1.x), !vec4<bool>(true, var_0.c, global2.c, global3.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)));
    var var_3 = countOneBits(u_input.a.x);
    return vec4<u32>(firstLeadingBit(abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.a.x, global2.a.x), _wgslsmith_add_u32(global3.a.x, var_2.a.x)))), global2.a.x, ~var_2.a.x, ~(global3.a.x << (72582u % 32u)));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(global3.a, global3.b, select(global3.c, global2.c && !any(vec4<bool>(true, false, global3.c, global3.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(942f, 2026f, global3.c)), global2.d.x)) > _wgslsmith_f_op_f32(select(global2.b, -858f, u_input.a.x < 36422i))), vec4<f32>(_wgslsmith_f_op_f32(402f * global3.b), 1147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(967f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))));
    global2 = var_0;
    global2 = Struct_1(~func_2(), var_0.b, any(vec3<bool>(all(select(vec3<bool>(true, true, global3.c), vec3<bool>(var_0.c, false, global3.c), vec3<bool>(global3.c, false, false))), true, true)), var_0.d);
    var var_1 = select(firstLeadingBit(~(var_0.a & vec4<u32>(global2.a.x, var_0.a.x, 67864u, 52128u))), ~vec4<u32>(1u, 63928u, ~1u ^ ~global3.a.x, var_0.a.x), vec4<bool>(any(vec2<bool>(true, true)), !(!(-1i <= u_input.a.x)), true, var_0.c));
    let var_2 = _wgslsmith_div_f32(global2.d.x, _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-487f)))));
    return -_wgslsmith_clamp_i32(-2147483647i, ~_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(global3.a.x, 30u)] & vec3<i32>(u_input.a.x, 1i, -2147483647i), global4[_wgslsmith_index_u32(~30155u, 30u)]), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(1i, u_input.a.x), vec2<i32>(2245i, u_input.a.x))), u_input.a | max(u_input.a, vec2<i32>(-6858i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u ^ max(0u, global3.a.x), 30930u, 4294967295u), _wgslsmith_mult_vec4_u32(select(vec4<u32>(global3.a.x, 30403u, global3.a.x, 1u), vec4<u32>(global2.a.x, global2.a.x, global2.a.x, 61903u), true), select(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], vec4<bool>(true, false, true, false))) ^ select(~global0[_wgslsmith_index_u32(1u, 13u)], global2.a, any(vec4<bool>(global2.c, global3.c, global3.c, global3.c)))), _wgslsmith_f_op_f32(global2.d.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.d.x))), 917f)), 18036i <= func_1(), global2.d);
    global0 = array<vec4<u32>, 13>();
    let var_0 = global2.d;
    var var_1 = vec3<i32>(u_input.a.x, ~2147483647i, ~((u_input.a.x & 0i) >> (max(global2.a.x, 3007u) % 32u))) >> (global3.a.wxx % vec3<u32>(32u));
    let var_2 = ~(~_wgslsmith_sub_u32(global3.a.x, global3.a.x));
    var var_3 = _wgslsmith_f_op_f32(-global2.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_2, global3.a.x, 36445u), global2.a)), vec3<i32>(~(~(-var_1.x)), 1i, (0i << (countOneBits(var_2) % 32u)) >> (_wgslsmith_dot_vec2_u32(~global2.a.zw, vec2<u32>(var_2, global3.a.x)) % 32u)), vec2<i32>(u_input.a.x, -(~_wgslsmith_div_i32(u_input.a.x, -2147483647i))));
}

