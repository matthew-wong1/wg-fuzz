struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30>;

var<private> global1: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(0u, 4294967295u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = Struct_2(-firstTrailingBit(-select(vec4<i32>(u_input.a, 0i, -1i, -2147483647i), vec4<i32>(u_input.b, 0i, 23385i, u_input.d), true)), true, ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(11171i, u_input.d), u_input.a) ^ 2147483647i);
    var_0 = Struct_2(~(vec4<i32>(-1i) * -firstLeadingBit(var_0.a)), any(vec4<bool>(true || (u_input.c.x > var_0.c), !var_0.b, all(select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(var_0.b, true, var_0.b), var_0.b)), false)), ~abs(i32(-1i) * -1i));
    var var_1 = abs(var_0.a);
    var var_2 = global1[_wgslsmith_index_u32(23174u, 1u)];
    var var_3 = 0i;
    return !var_0.b;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_4 {
    var var_0 = arg_2.b;
    let var_1 = true;
    var_0 = ~(-1i);
    let var_2 = !select(!vec3<bool>(false || var_1, var_1, var_1 || var_1), select(!(!vec3<bool>(var_1, var_1, var_1)), !vec3<bool>(true, var_1, true), var_1 && all(vec4<bool>(var_1, var_1, true, false))), func_3());
    var var_3 = ~select(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.e, arg_2.a.wz)) ^ (u_input.a & arg_2.b), -2147483647i, true);
    return Struct_4(Struct_3(select(!(!vec4<bool>(var_2.x, var_1, true, var_2.x)), vec4<bool>(select(var_2.x, false, false), true, var_1, any(vec3<bool>(true, var_2.x, false))), !var_1)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(1484f, -917f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(634f - -485f), -1886f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1526f) - 567f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -727f))))), vec3<f32>(1f, -1097f, -334f), vec3<bool>(true, all(vec2<bool>(arg_2.b, true)), any(arg_0.a.a))));
    global1 = array<vec2<u32>, 1>();
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(select(arg_2.a, ~(vec4<i32>(-1i, arg_2.a.x, u_input.c.x, arg_2.a.x) << (vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x) % vec4<u32>(32u))), !(!vec4<bool>(arg_0.a.a.x, false, arg_2.b, arg_2.b))), vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.e.x, u_input.a, 1i, -1i)), _wgslsmith_clamp_vec4_i32(arg_2.a, vec4<i32>(arg_2.a.x, u_input.b, -25060i, u_input.b), arg_2.a)), -9407i, -39862i, -35331i >> ((1u << (1u % 32u)) % 32u))), arg_2.a.x);
    var var_2 = arg_1.x;
    var_2 = _wgslsmith_sub_u32(arg_1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, arg_1.x), arg_1.wy));
    return Struct_1(firstLeadingBit(arg_2.a), var_1.b);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = !vec2<bool>(max(u_input.a >> (7305u % 32u), _wgslsmith_sub_i32(-2147483647i, u_input.c.x)) <= u_input.b, true || (true & (u_input.b <= arg_0.a.x)));
    global1 = array<vec2<u32>, 1>();
    let var_1 = Struct_2(arg_0.a >> (~_wgslsmith_mult_vec4_u32(min(vec4<u32>(arg_1.x, 4294967295u, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), firstLeadingBit(vec4<u32>(13039u, arg_1.x, 4294967295u, 0u))) % vec4<u32>(32u)), all(vec2<bool>(true, var_0.x)), -29644i);
    let var_2 = vec2<u32>(_wgslsmith_add_u32(countOneBits(arg_1.x), firstLeadingBit(arg_1.x)) ^ arg_1.x, countOneBits(select(arg_1.x, 15807u, var_1.b)) & (6983u & arg_1.x)) ^ (_wgslsmith_add_vec2_u32(arg_1.yx, global1[_wgslsmith_index_u32(arg_1.x, 1u)]) << ((vec2<u32>(~arg_1.x, min(15864u, arg_1.x)) ^ _wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(~arg_1.x, 1u)], global1[_wgslsmith_index_u32(arg_1.x, 1u)])) % vec2<u32>(32u)));
    let var_3 = var_1;
    return Struct_3(!vec4<bool>(var_3.b, var_0.x, all(!vec3<bool>(var_1.b, true, var_0.x)), !var_1.b));
}

fn func_6(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> i32 {
    var var_0 = reverseBits(arg_2);
    global0 = array<vec3<u32>, 30>();
    var_0 = func_4(Struct_4(arg_1.a), firstTrailingBit(~vec4<u32>(~4294967295u, ~0u, 4294967295u, ~1u)), Struct_2(_wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, -46434i, u_input.a, arg_2), vec4<i32>(u_input.e.x, arg_2, u_input.a, u_input.b), vec4<i32>(arg_2, 0i, 2147483647i, arg_2)), func_4(Struct_4(Struct_3(arg_1.a.a)), vec4<u32>(73823u, 15188u, 1u, 4294967295u), Struct_2(vec4<i32>(-2147483647i, u_input.d, 1i, 32496i), arg_1.a.a.x, -44395i)).a), arg_1.a.a.x, -8627i)).a.x;
    var var_1 = arg_1.a;
    let var_2 = _wgslsmith_sub_i32(u_input.d, arg_2);
    return -1i;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_2) -> i32 {
    global1 = array<vec2<u32>, 1>();
    var var_0 = func_6(true, Struct_4(func_5(func_4(func_2(-435f, -453f, Struct_1(vec4<i32>(u_input.a, arg_2.c, u_input.b, 8006i), u_input.d)), ~vec4<u32>(1u, arg_1, arg_1, arg_1), Struct_2(arg_2.a, false, u_input.c.x)), global0[_wgslsmith_index_u32(arg_1, 30u)])), reverseBits(arg_2.c));
    let var_1 = func_5(Struct_1(-(arg_2.a << (_wgslsmith_add_vec4_u32(vec4<u32>(4594u, 16268u, 86321u, arg_1), vec4<u32>(77552u, 4294967295u, arg_1, arg_1)) % vec4<u32>(32u))), func_4(Struct_4(Struct_3(vec4<bool>(arg_2.b, true, true, true))), abs(~vec4<u32>(arg_1, arg_1, arg_1, 0u)), Struct_2(vec4<i32>(-12523i, -1i, -1i, 13015i), false, u_input.c.x ^ 2147483647i)).b), ~(global0[_wgslsmith_index_u32(~arg_1, 30u)] & ~(global0[_wgslsmith_index_u32(arg_1, 30u)] << (vec3<u32>(arg_1, 1u, 0u) % vec3<u32>(32u)))));
    global1 = array<vec2<u32>, 1>();
    let var_2 = false;
    return -15100i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = _wgslsmith_mult_i32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 792f, -990f, 968f))) - vec4<f32>(-817f, -628f, -1000f, 1522f))), _wgslsmith_mult_u32(~_wgslsmith_div_u32(6456u, 1u), 0u), Struct_2(vec4<i32>(i32(-1i) * -1i, u_input.b, 1222i, _wgslsmith_div_i32(u_input.c.x, u_input.b)), true, u_input.d)), _wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_dot_vec2_i32(~(~u_input.e), vec2<i32>(u_input.a, u_input.d)), u_input.e.x));
    var var_1 = ~(~(~(~0u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(302f, -162f))), 560f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2186f, _wgslsmith_f_op_f32(sign(795f))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2532f + 259f) - _wgslsmith_f_op_f32(min(1000f, -617f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1015f)))));
    var var_3 = !vec2<bool>(func_5(Struct_1(vec4<i32>(-1i, -31379i, u_input.d, u_input.a) ^ vec4<i32>(26326i, -11346i, u_input.b, u_input.d), -1i >> (0u % 32u)), global0[_wgslsmith_index_u32(0u, 30u)]).a.x, true);
    var_0 = ~(~0i);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(16202u ^ _wgslsmith_clamp_u32(~(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u) & global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)]), 35478u), 30u)]);
}

