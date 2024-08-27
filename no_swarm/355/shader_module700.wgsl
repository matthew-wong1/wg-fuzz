struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1716f));
    var var_1 = select(u_input.a, ~(2147483647i | _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(-7849i, u_input.a, -2147483647i)))), all(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), !any(vec2<bool>(true, true)))));
    let var_2 = (_wgslsmith_sub_i32(-40745i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-36839i, 34354i, u_input.a, -1i), vec4<i32>(-22202i, 55610i, u_input.a, 18883i)), i32(-1i) * -2147483647i)) | _wgslsmith_add_i32(-u_input.a, u_input.a)) & select(u_input.a, _wgslsmith_div_i32(abs(u_input.a), ~1i), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    global1 = arg_0;
    var_1 = reverseBits(u_input.a);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(abs(firstTrailingBit(70392u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(0u, 12533u)), ~u_input.c.wx)), countOneBits(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.c.x, u_input.e.x), u_input.c.xx, vec2<bool>(true, true)), u_input.e)), select(u_input.d.x, 1u, _wgslsmith_mult_i32(var_2, u_input.a) <= 1i)), u_input.c.xxx);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_1(select(vec2<bool>(true, true), arg_1, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(259f, _wgslsmith_f_op_f32(f32(-1f) * -138f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f))), ~u_input.c.wyx, vec3<i32>(-1i) * -(-vec3<i32>(u_input.a, u_input.a, -13497i) << (firstLeadingBit(u_input.c.yzz) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(273f, _wgslsmith_f_op_f32(min(-943f, 687f))))))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 507f, -222f, var_0.e.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.x, 499f, var_0.b, -337f), vec4<f32>(var_0.b, -1844f, 597f, var_0.e.x), arg_2)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, -793f, 1711f)))))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-199f, _wgslsmith_f_op_f32(-var_0.e.x)))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(2222u, u_input.d.x, 44781u, var_0.c.x) << (u_input.c % vec4<u32>(32u)), vec4<u32>(0u, var_0.c.x, 98699u, 41237u) | u_input.c), firstLeadingBit(var_0.c.x) << (37455u % 32u)), ~vec2<u32>(0u, countOneBits(var_0.c.x))), var_0.b);
    global0 = array<Struct_3, 7>();
    global1 = _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.e.x)))));
    var_0 = Struct_1(select(!vec2<bool>(arg_1.x, all(vec4<bool>(true, var_0.a.x, true, arg_1.x))), vec2<bool>(var_0.a.x, true), vec2<bool>(true, select(arg_1.x, arg_2, true))), 459f, var_1.b, vec3<i32>(37692i, reverseBits(var_0.d.x), 0i), vec2<f32>(_wgslsmith_f_op_f32(min(783f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)))), _wgslsmith_f_op_f32(-300f + 1039f)));
    return vec2<bool>(arg_1.x & true, var_0.a.x);
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x) + arg_1.b.x);
    global1 = arg_1.b.x;
    var var_0 = arg_2;
    var var_1 = Struct_5(global0[_wgslsmith_index_u32(3538u, 7u)], select(!func_2(-18900i, vec2<bool>(true, true), true), select(vec2<bool>(false, any(vec3<bool>(true, false, true))), select(vec2<bool>(false, true), vec2<bool>(false, false), true), func_2(0i, vec2<bool>(true, true), true).x || true), vec2<bool>(select(true, all(vec4<bool>(true, true, false, true)), true), false)), Struct_1(vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(1050f - arg_1.b.x)), arg_1.b.x), _wgslsmith_mult_vec3_u32(abs(~u_input.c.wxy), u_input.c.wwx), vec3<i32>(2147483647i, ~8589i, countOneBits(1i)), vec2<f32>(_wgslsmith_div_f32(907f, arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(204f))))));
    let var_2 = arg_1.a;
    return _wgslsmith_f_op_f32(ceil(1f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(717f, -232f))) - _wgslsmith_f_op_f32(func_1(~11206u, Struct_3(1u, vec2<f32>(401f, 1598f)), u_input.a, ~(-17423i))))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(301f)), -298f, true)), 1610f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))));
    global0 = array<Struct_3, 7>();
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(736f, 239f)))), _wgslsmith_f_op_f32(func_1(~1u, Struct_3(~_wgslsmith_sub_u32(u_input.e.x, 65777u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1610f, 394f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(652f, -1292f)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))))), 16357i >> (~firstTrailingBit(0u) % 32u), u_input.a))));
    global0 = array<Struct_3, 7>();
    let var_1 = -u_input.a;
    var var_2 = u_input.b;
    let var_3 = -952f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~countOneBits(~u_input.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-385f + var_3)), -497f, _wgslsmith_f_op_f32(round(var_3)))), 46233i & firstLeadingBit(-var_1 ^ firstTrailingBit(var_1)), 4294967295u);
}

