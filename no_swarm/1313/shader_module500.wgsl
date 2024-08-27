struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-1285f, 841f, -1337f, -1100f, 707f, -542f, -629f);

var<private> global1: array<Struct_4, 4>;

var<private> global2: array<Struct_5, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<bool> {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, abs(u_input.a.x)) << (_wgslsmith_div_u32(~u_input.a.x | ~4294967295u, 1u) % 32u), 26u)];
    return var_0.b;
}

fn func_2() -> vec3<u32> {
    let var_0 = func_3();
    global1 = array<Struct_4, 4>();
    let var_1 = vec2<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.a.x, select(~u_input.a.x, abs(4294967295u), true), ~(18914u | u_input.a.x)), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(59606u, 7u)]))));
    global1 = array<Struct_4, 4>();
    let var_2 = Struct_3(_wgslsmith_dot_vec2_i32(max(-_wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(9100i, 26636i)), vec2<i32>(reverseBits(2147483647i), _wgslsmith_div_i32(2147483647i, -11312i))), vec2<i32>(1i, countOneBits(-2147483647i))));
    return vec3<u32>(13045u << (0u % 32u), select(_wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 2766u), vec3<u32>(u_input.a.x, u_input.a.x, 13959u))), _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(max(u_input.a.x, u_input.a.x), ~0u)), false & var_0.x), u_input.a.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global2 = array<Struct_5, 26>();
    global1 = array<Struct_4, 4>();
    global1 = array<Struct_4, 4>();
    var var_0 = arg_1;
    let var_1 = vec3<i32>(1i, i32(-1i) * -arg_1.a, -2147483647i);
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> i32 {
    global2 = array<Struct_5, 26>();
    var var_0 = abs(_wgslsmith_add_u32(23122u, countOneBits(select(16392u, ~u_input.a.x, true))));
    var var_1 = arg_1.a.a;
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_i32(~2147483647i, arg_1.b.a.a), abs(arg_1.b.a.b), 1023f, u_input.a, -select(arg_1.b.a.e, -arg_1.b.a.e, vec3<bool>(true, true, true))), func_4(~(select(-3579i, -43800i, true) >> (arg_1.a.d.x % 32u)), Struct_1(countOneBits(~arg_0), 47125u, arg_1.c, func_2(), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.c.x, 0i, 2147483647i), arg_1.a.e), reverseBits(arg_1.e.a), arg_1.a.a))), vec4<i32>(select(arg_1.e.a | ~38728i, func_4(_wgslsmith_mult_i32(arg_1.a.e.x, arg_0), arg_1.a).a, all(vec2<bool>(true, true))), arg_1.a.a, _wgslsmith_sub_i32(1i, reverseBits(arg_1.b.c.x << (1u % 32u))), -1i));
    var var_3 = arg_1.b.c;
    return abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-21811i, arg_0, arg_0, 0i) << (vec4<u32>(3421u, 58114u, var_2.a.d.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<i32>(1i, -1690i, 1i, -2147483647i), true), arg_1.b.c), vec4<i32>(var_3.x ^ 2147483647i, abs(arg_0), reverseBits(-3398i), -arg_1.e.a) << (~firstTrailingBit(vec4<u32>(1u, 697u, 1u, 8624u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(func_1(_wgslsmith_div_i32(1i, 14177i), Struct_4(Struct_1(0i, 21480u, global0[_wgslsmith_index_u32(1u, 7u)], vec3<u32>(30036u, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, 2539i, 1i)), Struct_2(Struct_1(-2147483647i, 31637u, -1270f, u_input.a, vec3<i32>(34011i, 21008i, -62616i)), Struct_1(13800i, u_input.a.x, 2022f, u_input.a, vec3<i32>(1i, -1035i, -2147483647i)), vec4<i32>(1i, -10312i, -2471i, 45129i)), global0[_wgslsmith_index_u32(39187u, 7u)], u_input.a.zz, Struct_3(1i))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-44648i, 2147483647i), firstLeadingBit(31682i))), abs(abs(~firstTrailingBit(vec4<i32>(6927i, 58524i, 2147483647i, 2147483647i)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1115f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]))), vec3<f32>(global0[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x), 7u)], -139f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), vec3<bool>(all(vec3<bool>(true, false, false)), true, false))))), ~4294967295u);
}

