struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6>;

var<private> global1: Struct_4;

var<private> global2: Struct_2;

var<private> global3: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> i32 {
    global3 = false;
    global0 = array<vec3<u32>, 6>();
    let var_0 = ~(~abs(global1.b.a.d)) == 1u;
    var var_1 = all(vec3<bool>(true, true, true));
    var var_2 = select(select(vec2<bool>(global1.d.e.e, 18688u != (global2.a ^ 89976u)), vec2<bool>(arg_1.d.d < -996f, !all(vec2<bool>(true, false))), !(!vec2<bool>(true, arg_1.b.b.e))), vec2<bool>((1u << (arg_1.a.x % 32u)) == _wgslsmith_mult_u32(1u, 42774u), all(select(select(vec4<bool>(global1.d.a.e, arg_1.d.a.e, false, var_0), vec4<bool>(false, var_0, true, global1.d.e.e), global1.b.b.e), select(vec4<bool>(global1.b.e.e, false, var_0, arg_1.b.b.e), vec4<bool>(true, global1.d.e.e, false, global1.b.b.e), false), vec4<bool>(global1.b.a.e, var_0, true, var_0)))), true);
    return global1.c.b;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_4(~_wgslsmith_mod_vec2_u32(select(_wgslsmith_sub_vec2_u32(global1.a, u_input.a), vec2<u32>(global1.a.x, 0u), !vec2<bool>(global1.d.e.e, false)), abs(vec2<u32>(global1.b.a.a.x, global2.a))), global1.d, Struct_2(max(1u, _wgslsmith_mod_u32(1u, 1u)), select(~global1.d.a.c | (0i << (global1.b.b.b.x % 32u)), abs(_wgslsmith_mult_i32(13181i, -19046i)), true)), global1.d);
    let var_1 = _wgslsmith_mod_vec4_u32(var_0.d.a.b, var_0.b.b.b);
    let var_2 = func_3(u_input.a.x, Struct_4(_wgslsmith_add_vec2_u32((var_0.b.b.a.xy >> (var_0.d.e.b.zx % vec2<u32>(32u))) & u_input.a, ~(~vec2<u32>(36229u, 0u))), Struct_3(global1.d.b, var_0.d.e, min(vec4<i32>(var_0.b.a.c, var_0.b.a.c, 1i, -2147483647i), -global1.b.c), global1.d.d, var_0.b.b), global1.c, global1.b));
    let var_3 = _wgslsmith_f_op_f32(-var_0.d.d);
    let var_4 = vec3<i32>(~firstTrailingBit(countOneBits(var_0.d.e.c)) & -global1.d.e.c, 48599i, _wgslsmith_sub_i32(global1.b.b.c, 1i));
    return _wgslsmith_div_vec4_f32(vec4<f32>(1315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - var_0.d.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.d)) * _wgslsmith_f_op_f32(f32(-1f) * -1370f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_3, var_3), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.d, 492f) + global1.b.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_0.b.d, global1.d.d, 549f) - vec4<f32>(var_0.b.d, 1188f, var_0.d.d, -478f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: u32, arg_3: vec4<f32>) -> i32 {
    global1 = Struct_4(u_input.a, Struct_3(global1.d.a, Struct_1(vec4<u32>(~28995u, ~global2.a, 38080u, arg_1), abs(countOneBits(vec4<u32>(arg_1, global2.a, u_input.a.x, 86033u))), firstLeadingBit(-1i) >> (_wgslsmith_add_u32(global1.d.e.b.x, arg_1) % 32u), ~(global1.b.e.a.x & arg_2), !any(vec4<bool>(true, global1.d.e.e, global1.d.a.e, true))), vec4<i32>(~34140i, 2147483647i, ~(i32(-1i) * -2147483647i), ~_wgslsmith_dot_vec2_i32(global1.d.c.zy, global1.d.c.yx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f - arg_0.x)), Struct_1(_wgslsmith_add_vec4_u32(global1.d.e.b, global1.b.b.a) & global1.b.a.a, ~countOneBits(global1.d.b.b), global1.c.b, 45059u, false)), Struct_2(arg_1, global1.b.b.c << (~firstTrailingBit(4122u) % 32u)), Struct_3(global1.d.a, Struct_1(firstTrailingBit(global1.b.a.a), ~vec4<u32>(global1.d.a.d, 46584u, 4294967295u, arg_1), global1.d.e.c, 0u, !(false || global1.b.e.e)), max(vec4<i32>(13409i, -1i, global2.b, global2.b), select(-vec4<i32>(16888i, -2147483647i, 1i, global2.b), global1.b.c, select(vec4<bool>(global1.b.b.e, false, false, global1.d.b.e), vec4<bool>(false, global1.b.b.e, false, global1.d.b.e), true))), _wgslsmith_f_op_f32(ceil(arg_3.x)), global1.d.b));
    var var_0 = _wgslsmith_add_i32(global1.b.b.c, ~select(i32(-1i) * -51427i, max(1i, 0i), false));
    var var_1 = arg_3;
    let var_2 = Struct_1(vec4<u32>(arg_2, global1.d.b.a.x, ~(~arg_1), global2.a), _wgslsmith_mod_vec4_u32(max(vec4<u32>(_wgslsmith_mod_u32(1u, 56392u), global2.a, 22167u, global2.a), max(vec4<u32>(15149u, 19021u, global1.d.a.b.x, global1.b.b.d) | global1.b.e.a, global1.d.b.b)), vec4<u32>(countOneBits(_wgslsmith_mod_u32(1u, 24239u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_2), firstLeadingBit(u_input.a)), abs(~u_input.a.x), 51571u)), 0i, arg_2 & ((arg_2 ^ ~0u) ^ (arg_2 << (abs(1u) % 32u))), (any(!vec2<bool>(true, global1.b.b.e)) == !select(false, false, global1.d.a.e)) | false);
    global3 = true;
    return firstTrailingBit(~6031i);
}

fn func_1() -> u32 {
    let var_0 = -18537i;
    let var_1 = var_0;
    global3 = !any(select(vec2<bool>(global1.d.d < global1.d.d, true), !select(vec2<bool>(true, global1.b.e.e), vec2<bool>(true, true), false), select(select(vec2<bool>(global1.b.b.e, global1.d.e.e), vec2<bool>(true, true), vec2<bool>(global1.b.e.e, true)), !vec2<bool>(global1.b.b.e, true), vec2<bool>(true, true))));
    global0 = array<vec3<u32>, 6>();
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), u_input.a.x, u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.d.d, global1.d.d, global1.d.d, 1241f), vec4<f32>(1028f, global1.d.d, global1.b.d, global1.b.d))))));
    return 18989u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.x, ~firstTrailingBit(abs(global2.a)), -293f, _wgslsmith_sub_i32(1i, ~global1.b.a.c >> (~func_1() % 32u)));
}

