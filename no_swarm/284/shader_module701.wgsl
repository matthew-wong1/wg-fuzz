struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 29>;

var<private> global2: array<Struct_3, 10>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    return u_input.b.x;
}

fn func_2(arg_0: u32) -> vec4<f32> {
    var var_0 = Struct_5(global2[_wgslsmith_index_u32(0u, 10u)], Struct_4(global0.a, ~u_input.d ^ (~1u >> (global0.b % 32u)), global0.c), global0.c);
    global2 = array<Struct_3, 10>();
    global1 = array<bool, 29>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-global0.c.a), global0.a, select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -2612f) == var_0.b.c.e.x, global1[_wgslsmith_index_u32(arg_0, 29u)], false, !global0.c.c.x), select(vec4<bool>(global1[_wgslsmith_index_u32(~4294967295u, 29u)], true, true, true), var_0.b.c.c, global0.c.c.x), vec4<bool>((global0.c.c.x | false) & global1[_wgslsmith_index_u32(func_3(u_input.a.yx), 29u)], false, true, true)), ~firstTrailingBit(u_input.b << (firstTrailingBit(u_input.b) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(max(global0.c.e, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(global0.c.a + 1774f), _wgslsmith_f_op_f32(round(var_0.c.a)), _wgslsmith_f_op_f32(670f - var_0.c.a)))))));
    global2 = array<Struct_3, 10>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.e.x, _wgslsmith_f_op_f32(sign(-173f)), 1f, 1f)) * vec4<f32>(_wgslsmith_f_op_f32(var_1.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1075f - -588f))), 799f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(960f - -522f) * var_0.b.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.e.x * 1287f)))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(global0.b)));
    var var_1 = Struct_4(Struct_1(vec3<u32>(~u_input.d, 26929u, countOneBits(~4294967295u)), _wgslsmith_div_u32(reverseBits(u_input.d), ~global0.b << (global0.c.b.b % 32u))), ~u_input.b.x, Struct_2(709f, Struct_1(global0.c.b.a, 1u >> (u_input.d % 32u)), vec4<bool>(global1[_wgslsmith_index_u32(28291u, 29u)], global1[_wgslsmith_index_u32(select(4294967295u, 4294967295u, false) ^ global0.a.b, 29u)], global0.c.c.x, (global0.c.b.a.x >> (12863u % 32u)) <= global0.a.b), global0.a.a, _wgslsmith_f_op_vec3_f32(global0.c.e - global0.c.e)));
    let var_2 = u_input.a.x;
    var var_3 = vec2<i32>(_wgslsmith_clamp_i32(36745i, firstLeadingBit(1i), var_2), firstLeadingBit(-3459i >> (firstTrailingBit(global0.a.b) % 32u)));
    let var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_mult_i32(-68861i, reverseBits(u_input.c.x)), ~var_3.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(var_2, 1i, 11758i, var_2), vec4<i32>(26276i, var_2, u_input.e, u_input.c.x)), vec4<i32>(0i, var_2, -2147483647i, 2147483647i)) | _wgslsmith_mod_i32(~u_input.c.x, _wgslsmith_mult_i32(var_2, -1i)), 11904i), -reverseBits(u_input.a));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 10>();
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx, abs(_wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(4294967295u, u_input.b.x, global0.c.d.x, 0u)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, global0.a.b, 60344u, global0.b)), vec4<u32>(1u, u_input.b.x, global0.c.d.x, u_input.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.x, global0.c.e.x) + global0.c.e.x), var_0.a))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(51408u, 18951u, 4294967295u, 4294967295u), vec4<u32>(global0.a.a.x, var_0.b.b, 0u, var_0.b.a.x)), vec4<u32>(global0.c.b.a.x, 1u, var_0.b.a.x, 1u) << (vec4<u32>(global0.c.d.x, global0.b, 52144u, var_0.d.x) % vec4<u32>(32u))), ~(~vec4<u32>(global0.a.a.x, 85599u, 4294967295u, global0.c.b.b))) | ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.d.x, var_0.b.a.x, 1u, 0u), vec4<u32>(global0.a.b, u_input.b.x, u_input.d, 0u)), vec4<u32>(54005u, 104564u, global0.b, 11277u), true));
}

