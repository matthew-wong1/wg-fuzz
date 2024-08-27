struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> i32 {
    var var_0 = !(!all(vec2<bool>(true, true)));
    global1 = array<Struct_1, 24>();
    var_0 = _wgslsmith_sub_i32(-10924i, _wgslsmith_dot_vec4_i32(vec4<i32>(-24552i & arg_1.c, -arg_1.c, _wgslsmith_add_i32(-15090i, 14389i), _wgslsmith_clamp_i32(arg_1.c, arg_1.c, 2147483647i)), ~vec4<i32>(arg_1.c, arg_1.c, -1i, 0i) >> (u_input.a % vec4<u32>(32u)))) >= _wgslsmith_add_i32(57744i, arg_1.c);
    global1 = array<Struct_1, 24>();
    let var_1 = firstTrailingBit(_wgslsmith_mult_u32(~arg_1.a.x, arg_1.a.x));
    return ~0i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(19141i, 2147483647i), _wgslsmith_mult_i32(~1i, abs(931i))) & -firstTrailingBit(~(-11342i)), true, global0[_wgslsmith_index_u32(1u, 4u)], true);
    let var_1 = vec3<i32>((var_0.a | ~(-7850i)) << (0u % 32u), var_0.a, -func_3(1334f, Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(32079u, 23601u, 1u, 77474u), u_input.a), false, firstLeadingBit(var_0.a))));
    var var_2 = _wgslsmith_dot_vec4_u32(~(~firstTrailingBit(u_input.a)) | (~reverseBits(vec4<u32>(var_0.c.x, var_0.c.x, u_input.c.x, var_0.c.x)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, 4294967295u, u_input.c.x), vec4<u32>(2552u, 0u, var_0.c.x, u_input.a.x)) % vec4<u32>(32u))), ~(~reverseBits(~u_input.a)));
    var var_3 = var_0.b;
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.c.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 24u)];
    return global1[_wgslsmith_index_u32(14937u, 24u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    global0 = array<vec2<u32>, 4>();
    global0 = array<vec2<u32>, 4>();
    return Struct_3(arg_1.a, !all(vec3<bool>(true, arg_0.d, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(arg_0.a), arg_0.a), firstTrailingBit(vec2<i32>(~0i, -arg_0.a))));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.c.x;
    let var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(6324u), 4u)];
    var var_2 = -_wgslsmith_mod_vec2_i32(~abs(vec2<i32>(-35305i, -19303i)), _wgslsmith_sub_vec2_i32(vec2<i32>(~(-25592i), 1i), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(63769i, 50562i), vec2<i32>(-14654i, 14983i)), vec2<i32>(1i, 1i))));
    var var_3 = ~var_1.x;
    let var_4 = ~(~var_2.x);
    return func_4(func_2(), Struct_2(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = -select(_wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(var_0.c), _wgslsmith_add_i32(-9780i, var_0.c), ~var_0.c, ~var_0.c), firstLeadingBit(vec4<i32>(var_0.c, var_0.c, var_0.c, var_0.c)) << (min(var_0.a, u_input.a) % vec4<u32>(32u))), vec4<i32>(var_0.c, firstTrailingBit(~7791i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.c, 20707i), var_0.c, _wgslsmith_add_i32(17717i, var_0.c)), var_0.c), true);
    global0 = array<vec2<u32>, 4>();
    let var_2 = global1[_wgslsmith_index_u32(func_4(global1[_wgslsmith_index_u32(abs(~4294967295u), 24u)], Struct_2(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(58128u, u_input.a.x, u_input.a.x, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, var_0.a.x, var_0.a.x), vec4<u32>(var_0.a.x, u_input.c.x, var_0.a.x, u_input.b))))).a.x, 24u)];
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(786f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-556f * -1746f), _wgslsmith_f_op_f32(f32(-1f) * -672f)))))), 1751f);
    var var_4 = _wgslsmith_f_op_f32(-var_3.x);
    var var_5 = 2516f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(max(var_2.c.x, u_input.a.x))), countOneBits(u_input.c.x & 1u));
}

