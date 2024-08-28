struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: Struct_2;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 16>();
    let var_0 = abs(firstLeadingBit(~(~abs(u_input.c.ww))));
    global1 = Struct_2(global0[_wgslsmith_index_u32(abs(19784u), 16u)], _wgslsmith_f_op_f32(-1017f - 375f), Struct_1(!global1.a.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.b * global1.a.b)), global1.a.b), select(_wgslsmith_mult_u32(1u, ~12167u), 61316u, true), (_wgslsmith_f_op_f32(-global1.b) <= _wgslsmith_f_op_f32(global1.a.b.x + global1.b)) && (global1.c.a.x | true), all(!select(vec3<bool>(global1.c.d, global1.a.d, true), vec3<bool>(false, true, global1.c.e), false))), abs(~(~u_input.c.x & ~8940u)));
    var var_1 = 1u;
    var var_2 = Struct_2(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-1458f - 650f))))), global1.c, ~(~u_input.c.x));
    return global1.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    let var_0 = max(u_input.a, u_input.b);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.b.x)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d), firstLeadingBit(vec4<u32>(global1.c.c, 93622u, 1u, u_input.c.x))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(71133u, 0u, global1.a.c, u_input.d), u_input.c) ^ min(u_input.c, u_input.c))), u_input.c);
    var var_1 = func_2();
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(var_0.x, 16u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_1.a, global1.c.b, Struct_2(func_2(), _wgslsmith_div_f32(-182f, -784f), global0[_wgslsmith_index_u32(var_1.c, 16u)], 4294967295u), _wgslsmith_f_op_vec2_f32(step(global1.a.b.zy, _wgslsmith_f_op_vec2_f32(-var_1.b.yz))))), 1204f), func_2(), _wgslsmith_sub_u32(u_input.d, 4294967295u));
    var var_3 = true || var_1.e;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~u_input.d), 16u)];
    return Struct_2(global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(187f, var_2.c.b.x)))), global1.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.x, global1.a.c), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, 0u, 4294967295u), 15463u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a.c, var_4.c, var_2.d), u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(global1.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1780f, global1.c.b.x, global1.c.b.x)), 0u << (global1.d % 32u), true, !(all(vec4<bool>(false, global1.c.e, global1.a.a.x, true)) && true)), global1.c.b.x, global1.c, _wgslsmith_sub_u32(firstLeadingBit(global1.c.c), ~1u));
    global0 = array<Struct_1, 16>();
    let var_0 = ~(~u_input.b);
    let var_1 = func_1();
    var var_2 = _wgslsmith_dot_vec2_i32(reverseBits(select((vec2<i32>(21683i, var_0) & vec2<i32>(-28608i, u_input.a)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-11826i, -1i), vec2<i32>(var_0, u_input.b), vec2<i32>(-2147483647i, -25116i)), -(vec2<i32>(2147483647i, u_input.b) >> (vec2<u32>(var_1.c.c, 0u) % vec2<u32>(32u))), false)), vec2<i32>(0i, -(-30053i & (var_0 & var_0))));
    var_2 = 0i;
    let var_3 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(abs(_wgslsmith_add_i32(2147483647i, -34698i)), 1i), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(-24862i, u_input.b)), ~vec2<i32>(33325i, -2147483647i)) >> (vec2<u32>(~u_input.c.x, firstTrailingBit(0u)) % vec2<u32>(32u))), select(vec2<i32>(_wgslsmith_add_i32(0i, i32(-1i) * -9842i), 1i), ~vec2<i32>(var_0, -54464i), global1.c.d));
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.x, 3180i, var_0), vec3<i32>(var_3.x, var_3.x, u_input.b), vec3<i32>(1i, u_input.a, var_3.x)))), _wgslsmith_f_op_f32(trunc(694f)), ~(~abs(global1.c.c)), vec4<i32>(37282i, -var_3.x << (((0u >> (global1.c.c % 32u)) & ~4294967295u) % 32u), u_input.b, i32(-1i) * -1i));
}

