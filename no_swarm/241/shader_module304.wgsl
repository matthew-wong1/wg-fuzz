struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 24>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 10>;

var<private> global4: Struct_2 = Struct_2(Struct_1(-1i, 1u), Struct_1(1i, 4294967295u), Struct_1(2147483647i, 1u), vec4<u32>(50236u, 24100u, 0u, 19768u), vec4<bool>(false, false, false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> Struct_1 {
    global1 = array<f32, 24>();
    global3 = array<Struct_1, 10>();
    global2 = ~u_input.c.x;
    let var_0 = 1468u;
    global1 = array<f32, 24>();
    return Struct_1(_wgslsmith_mult_i32(select(_wgslsmith_mod_i32(2147483647i, -35329i), global0.a.a, select(global0.e.x, true, false)), -(~(-16202i))) ^ -37978i, _wgslsmith_div_u32(0u, 4294967295u));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    global0 = Struct_2(arg_3, func_2(), func_2(), ~abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2, global4.a.b, global0.b.b, 1u), ~vec4<u32>(arg_2, 37272u, arg_3.b, 0u))), !vec4<bool>(any(global4.e.zz) | true, all(global0.e.xyx), true, !any(global0.e)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * global1[_wgslsmith_index_u32(global0.a.b, 24u)])))))) + 216f);
    var var_1 = -vec4<i32>(global0.b.a, ~(~u_input.a | 2147483647i), global4.c.a, ~(~253i));
    var_1 = ~vec4<i32>(-31094i, -max(i32(-1i) * -45375i, global0.a.a), global0.c.a, 1i ^ _wgslsmith_sub_i32(u_input.b << (2318u % 32u), 0i));
    let var_2 = global0.e.x;
    return u_input.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = global0.a.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(func_2().b, 24u)], _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(firstTrailingBit(global4.d.x), 24u)], _wgslsmith_f_op_f32(f32(-1f) * -217f))))));
    let var_2 = arg_2;
    global2 = 0u;
    global0 = Struct_2(var_2.c, Struct_1(-2147483647i, 55972u), arg_2.b, select(select(~vec4<u32>(arg_0.b.b, global4.a.b, 1u, global0.b.b), vec4<u32>(4294967295u, 29157u, global4.b.b, arg_1.b), vec4<bool>(global0.e.x, false, true, false)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b, 1u, 0u, 1u), ~var_2.d), arg_0.d, true), global4.e);
    return (vec2<i32>(func_2().a, ~(~global0.b.a)) << (arg_2.d.yy % vec2<u32>(32u))) | vec2<i32>(~1i, var_2.b.a);
}

fn func_1() -> i32 {
    var var_0 = func_4(Struct_2(func_2(), Struct_1(2147483647i, 1u), global3[_wgslsmith_index_u32(0u, 10u)], func_3(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(23134u, 24u)])), firstLeadingBit(u_input.b), global4.a.b, func_2()), vec4<bool>(global0.e.x == global0.e.x, !global4.e.x, all(vec4<bool>(true, global4.e.x, global0.e.x, global0.e.x)), true)), global4.c, Struct_2(global4.c, func_2(), Struct_1(global0.c.a, 36107u), min(vec4<u32>(global4.b.b, 1u, global4.d.x, 0u), global0.d) | select(vec4<u32>(43611u, global4.a.b, u_input.d.x, global0.a.b), vec4<u32>(1u, 15369u, 1u, 16164u), vec4<bool>(global0.e.x, true, false, global0.e.x)), select(!global0.e, !vec4<bool>(global0.e.x, global0.e.x, global4.e.x, false), any(global0.e.xzw)))) >> ((~vec2<u32>(_wgslsmith_mod_u32(global0.d.x, 24901u), reverseBits(4294967295u)) ^ vec2<u32>(~3511u, ~1u)) % vec2<u32>(32u));
    global2 = 4294967295u;
    global0 = Struct_2(func_2(), Struct_1(reverseBits(-36108i), global4.b.b), Struct_1(min(-(~var_0.x), ~global4.c.a), _wgslsmith_dot_vec3_u32(select(u_input.e.zzy, global0.d.xzz, false) | ~vec3<u32>(25379u, 1u, 53608u), u_input.d.wxx)), u_input.c, !(!vec4<bool>(global4.e.x | false, global0.e.x, global0.e.x | false, true)));
    var var_1 = u_input.d;
    return abs(global0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(!any(vec3<bool>(false, false, true)) || (any(global4.e.wyx) & global4.e.x), func_1() >= global4.b.a));
    var var_1 = abs(~_wgslsmith_mod_i32(i32(-1i) * -7593i, ~global0.c.a | ~(-52418i)));
    var var_2 = Struct_2(global0.c, global3[_wgslsmith_index_u32(global4.d.x, 10u)], Struct_1(-10373i, u_input.c.x), _wgslsmith_mod_vec4_u32(global4.d, countOneBits(~(~u_input.e))), !(!select(!vec4<bool>(true, false, false, global4.e.x), select(vec4<bool>(false, global0.e.x, global0.e.x, global4.e.x), vec4<bool>(false, true, global0.e.x, global4.e.x), false), vec4<bool>(true, global4.e.x, global0.e.x, global4.e.x))));
    let var_3 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-u_input.b, reverseBits(var_2.c.a) ^ ~u_input.b), ~func_1()), 4294967295u >> (var_2.d.x % 32u));
    var var_4 = _wgslsmith_mult_i32(-(~(-62784i)), ~(~var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.a, var_2.a.a), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(firstTrailingBit(vec2<i32>(0i, global4.a.a))), vec2<i32>(-2147483647i, countOneBits(2147483647i))), ~(~vec2<i32>(global0.c.a, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global4.a.b, 24u)]) * global1[_wgslsmith_index_u32(~func_2().b, 24u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_2.a.b, 24u)])), u_input.d.x, func_3(_wgslsmith_f_op_f32(f32(-1f) * -938f), -var_3.a, 21185u, func_2()).x >> (var_3.b % 32u));
}

