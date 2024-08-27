struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
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

var<private> global0: array<Struct_1, 13>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<i32>) -> i32 {
    var var_0 = vec2<i32>(-11078i, 0i);
    global1 = abs(~vec2<u32>(27511u, 58436u));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1028f, -746f, 1571f, 1035f), vec4<f32>(-531f, -1221f, 613f, 907f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(982f, -119f, 615f, 181f)), all(arg_1.d.b))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-184f, -1307f, 718f, -927f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, -2111f, 140f, -2299f))))), Struct_3(47319u, vec4<i32>(-(24790i << (global1.x % 32u)), _wgslsmith_mult_i32(u_input.b, 1i), 0i, max(~var_0.x, ~1i)), any(!(!vec4<bool>(true, arg_1.d.a, true, true))), Struct_1(select(true, true, arg_1.d.b.x), !(!arg_1.d.b))), arg_1.d, all(!vec2<bool>(arg_1.c, arg_1.c)));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~reverseBits(14301u), 0u), 13u)];
    var var_3 = Struct_2(vec2<i32>((~(-21103i) ^ min(var_0.x, u_input.b)) ^ u_input.d, ~var_1.b.b.x), arg_1.d);
    return arg_2.x;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = -vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(~u_input.d, 1i), firstLeadingBit(u_input.d)), _wgslsmith_add_i32(~abs(-1669i), 39745i));
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let var_1 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1535f)) * 146f))), 1u, countOneBits(abs(vec4<u32>(~4294967295u, 19937u, 0u, 1u << (u_input.a.x % 32u)))), _wgslsmith_clamp_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(var_0.x, var_0.x, 32370i, -1i)) ^ vec4<i32>(u_input.b, var_0.x, func_3(u_input.e.xy, Struct_3(0u, vec4<i32>(18325i, 7806i, -26801i, -11647i), true, Struct_1(arg_0.x, vec4<bool>(true, arg_0.x, true, arg_0.x))), var_0), u_input.d), ~countOneBits(~vec4<i32>(3825i, var_0.x, -2147483647i, var_0.x)), vec4<i32>(0i, -_wgslsmith_div_i32(42956i, var_0.x), _wgslsmith_add_i32(var_0.x, select(-16449i, 1057i, false)), firstLeadingBit(var_0.x))));
    return any(!(!select(select(vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, arg_0.x)), select(vec2<bool>(false, true), arg_0.zz, arg_0.xx), !arg_0.xz)));
}

fn func_1() -> Struct_1 {
    global1 = u_input.c.xx;
    return Struct_1(func_2(vec3<bool>(true, -u_input.b < -u_input.b, true)), select(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), true), vec4<bool>(false, false, true, true), vec4<bool>(!(u_input.d == 22745i), true, true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = select(~vec2<u32>(~u_input.c.x, ~u_input.a.x) & u_input.a.zx, vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(u_input.c.x, u_input.a.x | u_input.a.x, firstTrailingBit(global1.x))), u_input.e.x), true);
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(0u, (global1.x | 4721u) & ~u_input.c.x, 4294967295u), global1.x, ~min(85075u, u_input.c.x ^ global1.x), countOneBits(u_input.c.x)) >> (_wgslsmith_sub_vec4_u32((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 22843u, 1u, global1.x), vec4<u32>(0u, u_input.e.x, 1u, u_input.a.x)) & countOneBits(vec4<u32>(u_input.a.x, 0u, u_input.e.x, global1.x))) & abs(reverseBits(vec4<u32>(global1.x, 82584u, 54921u, global1.x))), ~vec4<u32>(0u, global1.x, u_input.c.x, global1.x)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1421f))), -2295f, true));
    var var_3 = -(vec3<i32>(u_input.b, -(u_input.b << (u_input.a.x % 32u)), -24675i) ^ vec3<i32>(u_input.b & u_input.b, _wgslsmith_dot_vec2_i32(-vec2<i32>(-22160i, -14336i), vec2<i32>(-28097i, u_input.b)), u_input.d));
    var var_4 = _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(f32(-1f) * -565f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(f32(-1f) * -932f)))) == _wgslsmith_f_op_f32(-var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.x, _wgslsmith_mult_i32(2147483647i, -38187i & _wgslsmith_dot_vec4_i32(-vec4<i32>(var_3.x, 7549i, u_input.b, 2147483647i), vec4<i32>(2147483647i, -5816i, -12110i, 1i))));
}

