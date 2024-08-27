struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: Struct_4 = Struct_4(1356f, Struct_2(vec4<u32>(72635u, 19970u, 4099u, 4294967295u), vec2<f32>(-1834f, 380f), -1215f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> vec2<f32> {
    let var_0 = Struct_2(arg_1.a, arg_1.b, global1.b.c);
    var var_1 = Struct_3(arg_1, vec2<u32>(global1.b.a.x, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(64116u, u_input.d.x)), vec2<u32>(min(30466u, 0u), reverseBits(1u)))), _wgslsmith_f_op_f32(-arg_1.c), Struct_1(-u_input.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1415f, _wgslsmith_f_op_f32(trunc(arg_1.c))), arg_1.c, false)), global1.b.a.ww, !(!any(vec2<bool>(true, true)))), Struct_2(abs(var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1351f, var_0.b.x) * global1.b.b) + global1.b.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.b.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(712f, 1451f)) * var_0.c)))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-var_0.b.x), global1.b);
    let var_3 = _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(0i, _wgslsmith_add_i32(12906i, 0i))) >> (var_2.b.a.yx % vec2<u32>(32u)), -vec2<i32>(-16466i >> (var_0.a.x % 32u), min(u_input.b.x, var_1.d.a.x)) & -u_input.b.ww);
    let var_4 = 66792u;
    return var_2.b.b;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(876f, global1.b.b.x, global1.b.c)));
    global1 = Struct_4(var_0.x, Struct_2(~(~vec4<u32>(0u, 5711u, 6000u, 34801u)), _wgslsmith_f_op_vec2_f32(func_3(62244u, global1.b, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(317f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -500f)) * 1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(194f + var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a))), true))));
    let var_2 = arg_0;
    var var_3 = Struct_3(Struct_2(_wgslsmith_div_vec4_u32(~global1.b.a, _wgslsmith_clamp_vec4_u32(global1.b.a, firstTrailingBit(vec4<u32>(u_input.d.x, global1.b.a.x, 0u, u_input.d.x)), vec4<u32>(u_input.d.x, global1.b.a.x, 1u, global1.b.a.x))), _wgslsmith_f_op_vec2_f32(-var_0.yx), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -345f)))), abs(firstTrailingBit(firstLeadingBit(max(vec2<u32>(4294967295u, global1.b.a.x), global1.b.a.wz)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(713f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1638f) * _wgslsmith_f_op_f32(-var_0.x)))), Struct_1((vec4<i32>(-1i, u_input.e, 29355i, -2147483647i) >> (vec4<u32>(6483u, global1.b.a.x, u_input.d.x, 0u) % vec4<u32>(32u))) | ~(~u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(38449u, global1.b, global1.b.a.x & global1.b.a.x)).x), vec2<u32>(1u, ~global1.b.a.x), true), global1.b);
    return !vec4<bool>(var_3.d.d, !(-794f == _wgslsmith_f_op_f32(max(var_0.x, global1.a))), true, all(!vec3<bool>(false, true, var_3.d.d)));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    var var_0 = false;
    let var_1 = !func_2(u_input.b.x);
    var_0 = var_1.x;
    return Struct_1(u_input.b, global1.b.b.x, ~(max(~vec2<u32>(89254u, u_input.d.x), vec2<u32>(1u, 0u) & global1.b.a.wz) ^ _wgslsmith_add_vec2_u32(global1.b.a.xz, abs(vec2<u32>(global1.b.a.x, 0u)))), false | any(vec2<bool>(var_1.x, false & var_1.x)));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec4<u32> {
    let var_0 = ~(~vec4<u32>(arg_0.b.x, global1.b.a.x ^ arg_0.a.a.x, ~67606u, 1u));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global1.b.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1252f * arg_0.a.b.x))), _wgslsmith_div_f32(global1.a, -1606f), _wgslsmith_f_op_f32(global1.b.b.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1.b.c, -102f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, arg_0.d.b, arg_0.d.b), vec3<f32>(global1.b.c, -1027f, 1642f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(812f, global1.a, 1500f) * vec3<f32>(global1.b.c, -520f, global1.a))) - vec3<f32>(_wgslsmith_f_op_f32(global1.b.c + global1.b.b.x), _wgslsmith_f_op_f32(-global1.b.c), _wgslsmith_f_op_f32(168f * arg_0.d.b))))), arg_0.d.d));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.b.x, _wgslsmith_mult_u32(4294967295u, var_0.x)), 14u)];
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1275f, _wgslsmith_f_op_f32(floor(-1482f)))));
    let var_2 = u_input.d;
    return _wgslsmith_div_vec4_u32(var_0, _wgslsmith_clamp_vec4_u32(vec4<u32>(99288u, firstLeadingBit(u_input.d.x ^ var_0.x), ~(42170u | global1.b.a.x), arg_1), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d.c.x, arg_1, 65063u, global1.b.a.x), var_0, arg_0.a.a) | global1.b.a, _wgslsmith_mult_vec4_u32(select(vec4<u32>(34784u, 4294967295u, var_0.x, global1.b.a.x), global1.b.a, arg_0.d.d), ~global1.b.a)), select(~vec4<u32>(0u, var_2.x, 1u, u_input.d.x), var_0, !func_2(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 14>();
    let var_0 = 2087i;
    global0 = array<Struct_4, 14>();
    global1 = global0[_wgslsmith_index_u32(global1.b.a.x, 14u)];
    var var_1 = vec3<bool>(true, !(((var_0 < -567i) | (44669u > u_input.d.x)) | true), true);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -107f)))), Struct_2(func_4(Struct_3(global1.b, _wgslsmith_add_vec2_u32(global1.b.a.yy, global1.b.a.xy), _wgslsmith_f_op_f32(min(-1430f, 202f)), func_1(), Struct_2(vec4<u32>(4044u, 33829u, 1u, global1.b.a.x), global1.b.b, -1352f)), max(4294967295u, 1u)), vec2<f32>(-367f, global1.a), global1.a));
    let var_3 = u_input.d.xz;
    var var_4 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(vec2<i32>(-21852i, _wgslsmith_mod_i32(var_0, -1i)), u_input.c.zy, true & !var_1.x)), 33176u, 1162f, max(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, 0u, 46326u), 0u), reverseBits(vec2<u32>(var_3.x, 4294967295u)) << (vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u))), func_1().c.x), -902f);
}

