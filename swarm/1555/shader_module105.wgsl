struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec4<u32>(1u, 1u, 1u, 0u)), Struct_3(vec4<u32>(38503u, 80887u, 43120u, 0u)), Struct_3(vec4<u32>(47166u, 2073u, 4294967295u, 40126u)), Struct_3(vec4<u32>(30930u, 54783u, 86844u, 0u)), Struct_3(vec4<u32>(71u, 105042u, 0u, 0u)), Struct_3(vec4<u32>(11036u, 1u, 1u, 1u)), Struct_3(vec4<u32>(0u, 0u, 0u, 34779u)), Struct_3(vec4<u32>(42496u, 56014u, 2296u, 4294967295u)), Struct_3(vec4<u32>(4294967295u, 0u, 83951u, 0u)), Struct_3(vec4<u32>(4294967295u, 0u, 4294967295u, 45871u)), Struct_3(vec4<u32>(18731u, 60797u, 842u, 4294967295u)), Struct_3(vec4<u32>(1u, 0u, 53110u, 0u)), Struct_3(vec4<u32>(34049u, 4294967295u, 77318u, 32542u)), Struct_3(vec4<u32>(15208u, 1u, 1u, 11571u)), Struct_3(vec4<u32>(7725u, 4294967295u, 1u, 4294967295u)), Struct_3(vec4<u32>(4691u, 54599u, 4294967295u, 48673u)), Struct_3(vec4<u32>(4294967295u, 0u, 0u, 27937u)), Struct_3(vec4<u32>(4294967295u, 9072u, 1u, 0u)), Struct_3(vec4<u32>(15649u, 4294967295u, 42927u, 0u)), Struct_3(vec4<u32>(35082u, 4294967295u, 11155u, 55028u)), Struct_3(vec4<u32>(0u, 1u, 1u, 1882u)), Struct_3(vec4<u32>(13702u, 0u, 86212u, 4294967295u)), Struct_3(vec4<u32>(41157u, 1u, 0u, 4294967295u)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_3, 23>();
    var var_0 = vec3<u32>(arg_1, arg_1, max(~arg_1, ~u_input.a.x));
    global0 = array<Struct_3, 23>();
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = Struct_3(vec4<u32>(1u, 4294967295u, 1u, firstTrailingBit(arg_1) | var_0.x));
    return Struct_1(~firstTrailingBit(u_input.b.x), u_input.b.x, _wgslsmith_mult_vec2_u32(~(~vec2<u32>(61169u, 1u)), vec2<u32>(~(~arg_1), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(21919u, arg_1)))));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global0 = array<Struct_3, 23>();
    let var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-403f)) * -1717f), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1726f)))), arg_0 << (~arg_0 % 32u));
    global0 = array<Struct_3, 23>();
    var var_1 = Struct_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(min(899f, _wgslsmith_f_op_f32(1000f * -313f)))), 23212u));
    var var_2 = var_0;
    return func_2(_wgslsmith_f_op_f32(sign(1f)), 981u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(138f, -1224f, _wgslsmith_f_op_f32(f32(-1f) * -483f)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-362f)) - _wgslsmith_f_op_f32(round(233f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1283f + 521f)) - -128f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) + -1000f))));
    global0 = array<Struct_3, 23>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - -399f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
    return u_input.a.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_add_vec3_u32(~arg_0, vec3<u32>(~(_wgslsmith_dot_vec3_u32(arg_0, u_input.a.xwx) | _wgslsmith_dot_vec4_u32(arg_1, u_input.a)), u_input.a.x, _wgslsmith_mult_u32(~14760u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, 4294967295u), ~arg_0.xz))));
    let var_1 = -121f;
    var var_2 = u_input.b.x;
    return Struct_4(Struct_2(1722f, Struct_1(_wgslsmith_mod_i32(48738i, _wgslsmith_sub_i32(u_input.b.x, -19534i)), ~max(1313i, 2147483647i), var_0.yx | func_1(1u, Struct_3(arg_1)).c)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.a.x), vec2<u32>(61776u, 4294967295u) | vec2<u32>(var_0.x, arg_1.x)) & firstLeadingBit(var_0.yz), ~4294967295u);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: i32) -> Struct_3 {
    var var_0 = select(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(23862u, 4294967295u, 61790u), ~vec3<u32>(u_input.a.x, 3734u, 0u)), vec3<u32>(~40797u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4531u, u_input.a.x), u_input.a.wwx), 4294967295u)), countOneBits(vec3<u32>(select(arg_1.b.x, 55862u, true), u_input.a.x, 0u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, firstLeadingBit(37024u)), ~u_input.a.xzz), all(select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, true, false, false))))));
    var var_1 = vec4<bool>(!any(vec3<bool>(true, true, true)), true && (_wgslsmith_f_op_f32(round(arg_0.x)) != 474f), true, true);
    return global0[_wgslsmith_index_u32(arg_1.a.b.c.x, 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec3<i32>(u_input.b.x, max(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), u_input.b.x), u_input.b.x));
    global0 = array<Struct_3, 23>();
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(288f, -413f, -292f)), vec3<f32>(1442f, -554f, -843f)))))), func_4(_wgslsmith_add_vec3_u32(u_input.a.wzy, u_input.a.yyw ^ u_input.a.zyy) >> (vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), 3110u) % vec3<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(1u, ~u_input.a.x, 33086u), ~5697u ^ ~u_input.a.x, func_3(func_1(0u, global0[_wgslsmith_index_u32(15272u, 23u)])), ~(~u_input.a.x))), u_input.b.x);
    let var_2 = func_4(var_1.a.wxy, u_input.a);
    var_1 = Struct_3(~vec4<u32>(_wgslsmith_mod_u32(var_1.a.x, abs(4294967295u)), u_input.a.x, var_2.c, 24451u));
    global0 = array<Struct_3, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(-firstTrailingBit(vec3<i32>(-1i, -2147483647i, 73764i) | vec3<i32>(var_0.x, var_2.a.b.b, 43987i)), _wgslsmith_clamp_vec3_i32(var_0 ^ _wgslsmith_div_vec3_i32(var_0, var_0), vec3<i32>(u_input.b.x & -34033i, firstLeadingBit(-2147483647i), u_input.b.x | var_0.x), vec3<i32>(~54332i, ~(-41621i), -20204i)), var_0 | var_0));
}

