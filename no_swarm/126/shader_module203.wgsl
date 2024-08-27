struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: vec4<i32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(false, false, vec3<bool>(true, true, false)), Struct_1(true, false, vec3<bool>(false, true, true)), false);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    let var_0 = _wgslsmith_mod_u32(arg_0, ~(arg_0 ^ ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7996u, 22u)], 22u)] & 1u) & min(arg_0, global0[_wgslsmith_index_u32(0u, 22u)]))));
    var var_1 = vec2<u32>(u_input.a.x, reverseBits(u_input.a.x));
    return select(!global2.a.c, !(!vec3<bool>(global2.b.a, global2.a.b, true)), false);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    let var_0 = arg_0;
    global2 = Struct_2(Struct_1(true, (arg_1.b.b || arg_0.a.b.a) || true, func_3(~(~arg_0.c.x))), Struct_1(!var_0.a.b.b, global2.c, vec3<bool>(arg_0.d.b, true, min(-2147483647i, -1i) < u_input.b.x)), !(!all(!vec4<bool>(true, arg_1.a.c.x, true, true))));
    global2 = Struct_2(Struct_1(true, true, select(vec3<bool>(true, true, true), !select(vec3<bool>(var_0.a.a.b, global2.c, global2.a.c.x), vec3<bool>(true, true, false), arg_1.b.c), global2.b.c.x)), Struct_1(true, reverseBits(var_0.b) <= ~abs(1i), select(vec3<bool>(arg_1.c, !global2.a.b, var_0.d.b), arg_1.a.c, true)), any(arg_1.a.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-349f, 289f))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1521f, 649f)) * vec2<f32>(263f, -1148f))))));
    var var_2 = !(!select(select(!vec4<bool>(arg_0.a.a.a, false, global2.c, arg_1.a.b), select(vec4<bool>(arg_1.a.b, false, false, false), vec4<bool>(arg_1.a.c.x, true, false, arg_0.a.c), true), vec4<bool>(arg_1.a.c.x, arg_0.d.c.x, global2.a.a, false)), !vec4<bool>(arg_0.a.b.c.x, global2.b.c.x, var_0.a.b.a, false), global2.b.b));
    return 0i;
}

fn func_1() -> f32 {
    global1 = select(-(~(vec4<i32>(2147483647i, u_input.b.x, -2147483647i, u_input.c) | vec4<i32>(global1.x, global1.x, global1.x, -48714i))), max(-vec4<i32>(-12603i, u_input.c, global1.x, 0i), ~vec4<i32>(global1.x, 526i, u_input.c, 1i)) ^ _wgslsmith_div_vec4_i32(max(vec4<i32>(51541i, 0i, global1.x, u_input.c), vec4<i32>(global1.x, 0i, -2147483647i, global1.x)), vec4<i32>(-44987i, 2147483647i, 31356i, global1.x)), vec4<bool>(true, all(!vec4<bool>(true, true, global2.c, true)), true, true)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(1u, 53502u, global0[_wgslsmith_index_u32(51135u, 22u)]), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 1u, 4294967295u), ~vec4<u32>(global0[_wgslsmith_index_u32(32456u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a.x, u_input.a.x))), firstTrailingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)], u_input.a.x, u_input.a.x)), vec4<u32>(44065u, 20737u, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]) & vec4<u32>(56340u, global0[_wgslsmith_index_u32(0u, 22u)], 44465u, 0u)))) % vec4<u32>(32u));
    let var_0 = -115f;
    global1 = vec4<i32>(global1.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.x | u_input.b.x, -global1.x), func_2(Struct_3(Struct_2(global2.b, global2.a, false), 42724i, vec4<u32>(u_input.a.x, 1u, 25249u, u_input.a.x), Struct_1(global2.b.a, false, global2.a.c)), Struct_2(Struct_1(global2.c, false, global2.a.c), Struct_1(true, global2.c, global2.b.c), true))), global1.x), -((i32(-1i) * -u_input.b.x) | -2147483647i), u_input.b.x);
    var var_1 = select(!select(vec3<bool>(749f == var_0, global2.c, false), !global2.b.c, global2.a.c), func_3(u_input.a.x), !select(global2.a.c, vec3<bool>(global2.a.c.x, global2.b.a | false, false), false));
    global2 = Struct_2(global2.a, global2.b, var_1.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-39849i);
    global0 = array<u32, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-154f - _wgslsmith_f_op_f32(f32(-1f) * -903f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1109f))), _wgslsmith_f_op_f32(f32(-1f) * -1323f)), vec3<f32>(-355f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1972f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)) + _wgslsmith_f_op_f32(func_1())))));
    var_0 = countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(select(-2147483647i, global1.x, global2.c), u_input.b.x, max(u_input.b.x, global1.x), 2147483647i | global1.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, -23333i, global1.x), vec4<i32>(u_input.c, u_input.b.x, -2147483647i, global1.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 22u)], 1u, u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(73566u, 22u)], u_input.a.x, 1u)) % vec4<u32>(32u)))) << (4294967295u % 32u);
    global1 = -(~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1384i, u_input.b.x, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, u_input.b.x, -1i, global1.x)) & _wgslsmith_div_vec4_i32(vec4<i32>(-14516i, 1i, 7826i, u_input.c), vec4<i32>(global1.x, -10900i, -5545i, -45618i)), select(~vec4<i32>(global1.x, global1.x, global1.x, 74755i), vec4<i32>(-7688i, -2147483647i, u_input.c, -30598i), !global2.c)));
    var_0 = ~(~firstLeadingBit(3359i));
    global1 = vec4<i32>(u_input.c, select(~u_input.c, -11363i, !any(select(vec4<bool>(false, true, global2.b.c.x, false), vec4<bool>(global2.c, false, true, global2.a.b), true))), -66779i, max(~min(14509i, u_input.c), _wgslsmith_mult_i32(1i, -(global1.x >> (1u % 32u)))));
    global0 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.zyw, var_1.x, global1.x >> (_wgslsmith_mod_u32(reverseBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)]), abs(~u_input.a.x)) % 32u), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(49939u, global0[_wgslsmith_index_u32(1u, 22u)]), vec2<u32>(22385u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 22u)]))), u_input.a), u_input.a), global1.x);
}

