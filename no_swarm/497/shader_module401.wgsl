struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: f32) -> vec3<u32> {
    var var_0 = -2147483647i;
    let var_1 = all(vec3<bool>(arg_1.d.a.x, arg_2, arg_1.c.a.x));
    let var_2 = arg_1.d;
    global0 = array<f32, 14>();
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(202f, arg_1.d.b, arg_1.c.b, global0[_wgslsmith_index_u32(45062u, 14u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -907f, arg_3, arg_3))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.b)), 934f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.d.x, 14u)]), _wgslsmith_f_op_f32(sign(arg_3)))))), vec4<bool>(!arg_2 || var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2507f - arg_1.c.b) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 14u)])) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_3)))), true, true != (true || arg_1.c.a.x)), Struct_1(select(vec4<bool>(true, arg_2, var_1, true), !vec4<bool>(true, false, arg_0, arg_2), !arg_1.d.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.d.b))))), arg_1.d.d | ~(~vec3<u32>(arg_1.a, arg_1.d.c.x, 28691u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_2.d.x, ~var_2.c.x), _wgslsmith_div_vec3_u32(~arg_1.b.wwx, arg_1.b.zzz)), abs(u_input.a.x) | (u_input.a.x & -17241i)), vec4<i32>(_wgslsmith_dot_vec2_i32(max(~u_input.a.yw, vec2<i32>(var_2.e, -2550i)), (vec2<i32>(u_input.a.x, -1i) ^ vec2<i32>(-1i, u_input.a.x)) ^ arg_1.e), 0i, -max(_wgslsmith_sub_i32(arg_1.d.e, var_2.e), -26042i), abs(~firstTrailingBit(arg_1.d.e))));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~((6432u >> (var_3.c.d.x % 32u)) >> ((var_2.c.x | 1u) % 32u)), _wgslsmith_add_u32(var_2.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(2706u, arg_1.c.d.x, 26693u, var_3.c.c.x), vec4<u32>(arg_1.d.c.x, 4935u, 1u, var_2.c.x), arg_1.b), vec4<u32>(var_2.d.x, 67696u, var_2.d.x, 64206u)))), ~_wgslsmith_mult_vec3_u32(arg_1.d.d, _wgslsmith_mod_vec3_u32(countOneBits(arg_1.d.c), ~vec3<u32>(3495u, 1u, 0u))), vec3<u32>(1u, 56028u, countOneBits(var_2.c.x)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_4 {
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, ~1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) | abs(abs(1u));
    var var_2 = ~19581u;
    return Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~4294967295u, 4294967295u), (var_1 ^ 2647u) & var_1, countOneBits(var_1)), abs(vec3<u32>(0u, var_1, var_1) ^ vec3<u32>(58060u, var_1, 29131u))), vec4<u32>(~_wgslsmith_sub_u32(~1u, 15252u), ~(var_1 << (_wgslsmith_clamp_u32(1u, 4294967295u, 117046u) % 32u)), _wgslsmith_dot_vec3_u32(func_3(u_input.a.x > u_input.a.x, Struct_4(1u, vec4<u32>(var_1, 1u, 22918u, 8724u), Struct_1(vec4<bool>(var_0, var_0, var_0, var_0), global0[_wgslsmith_index_u32(var_1, 14u)], vec3<u32>(var_1, var_1, var_1), vec3<u32>(4294967295u, 24045u, 1u), 7876i), Struct_1(vec4<bool>(false, var_0, var_0, var_0), arg_0.x, vec3<u32>(var_1, 0u, 23439u), vec3<u32>(1u, var_1, var_1), u_input.a.x), u_input.a.zy), var_0, 892f), select(countOneBits(vec3<u32>(var_1, 0u, var_1)), ~vec3<u32>(var_1, var_1, 0u), true)), ~(~(~46913u))), Struct_1(select(vec4<bool>(var_0, true, false || var_0, var_0), !select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, false, var_0, false), true), select(vec4<bool>(var_0, var_0, true, false), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, false, true, var_0), true), true)), arg_0.x, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, ~var_1, ~0u), ~vec3<u32>(1u, var_1, 66795u)), select(~countOneBits(vec3<u32>(1u, var_1, 74790u)), ~vec3<u32>(1u, 55589u, var_1), any(select(vec3<bool>(true, false, var_0), vec3<bool>(true, false, false), vec3<bool>(var_0, false, false)))), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), ~_wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.yy))), Struct_1(vec4<bool>(true, true, true, false), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-229f * global0[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)))), firstLeadingBit(func_3(var_0, Struct_4(var_1, vec4<u32>(42730u, 36699u, var_1, var_1), Struct_1(vec4<bool>(var_0, true, var_0, false), global0[_wgslsmith_index_u32(24243u, 14u)], vec3<u32>(var_1, var_1, var_1), vec3<u32>(4294967295u, 32535u, var_1), -1139i), Struct_1(vec4<bool>(var_0, true, var_0, var_0), arg_0.x, vec3<u32>(var_1, var_1, var_1), vec3<u32>(var_1, 4294967295u, var_1), -1i), u_input.a.wz), true, -1452f)) >> (~vec3<u32>(81866u, 48636u, var_1) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(var_1, 0u), abs(~var_1), abs(min(var_1, 0u))), max(select(-36681i, u_input.a.x, true), countOneBits(u_input.a.x | u_input.a.x))), abs(vec2<i32>(u_input.a.x, abs(u_input.a.x))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = false;
    let var_1 = (vec4<i32>(i32(-1i) * -1i, countOneBits(firstTrailingBit(u_input.a.x)), 1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_1.x, arg_1.x), arg_1.x)) >> (vec4<u32>(arg_0, (17312u << (arg_0 % 32u)) >> (~arg_0 % 32u), ~1u, arg_0) % vec4<u32>(32u))) << (~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 23693u, 32155u, 85080u), vec4<u32>(1u, arg_0, 67982u, arg_0)))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(-325f)), 767f)));
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1173f), _wgslsmith_f_op_f32(var_2.x + -1000f), true || var_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(60539u, 14u)], 183f) - global0[_wgslsmith_index_u32(15694u << (arg_0 % 32u), 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, global0[_wgslsmith_index_u32(18151u, 14u)])))));
    var var_4 = firstLeadingBit(_wgslsmith_clamp_u32(arg_0, var_3.c.d.x, abs(47718u)));
    return Struct_4(firstLeadingBit(~firstLeadingBit(37848u)), var_3.b, Struct_1(vec4<bool>(!var_3.c.a.x || (var_3.e.x <= var_3.c.e), true, var_3.d.a.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -530f) - -1000f)), abs(max(var_3.d.c, vec3<u32>(var_3.b.x, 1u, arg_0))), ~(~vec3<u32>(94273u, 1u, var_3.a)) & abs(~var_3.b.xzy), abs(var_1.x)), var_3.d, vec2<i32>(~(-_wgslsmith_sub_i32(2147483647i, 1312i)), 50275i));
}

fn func_4(arg_0: Struct_4) -> StorageBuffer {
    return StorageBuffer(firstTrailingBit(~firstTrailingBit(~0u)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    let x = u_input.a;
    s_output = func_4(func_1(44219u, u_input.a.wyx));
}

