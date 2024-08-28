struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: vec4<i32> = vec4<i32>(-43448i, -4447i, 2147483647i, -6880i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> i32 {
    global0 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    var_0 = -542f;
    let var_1 = 16200u;
    let var_2 = !select(vec4<bool>(any(vec3<bool>(true, true, true)), true, false, !(1089f < arg_0)), !vec4<bool>(false, true, any(vec3<bool>(true, true, false)), select(true, true, false)), vec4<bool>(true, true, true, true));
    return global1.x;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_3(-2147483647i);
    let var_1 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(~(-2147483647i), global1.x, select(var_0.a, -28537i, true), 0i), -vec4<i32>(var_0.a, arg_0, 2147483647i, global1.x) << (~vec4<u32>(u_input.c, 4294967295u, arg_1, 4779u) % vec4<u32>(32u))) & min(~firstLeadingBit(vec4<i32>(var_0.a, arg_0, 14526i, arg_0) & vec4<i32>(arg_0, 46663i, 23117i, arg_0)), -vec4<i32>(-10352i, var_0.a, global1.x, -1i) & (~vec4<i32>(var_0.a, arg_0, arg_0, 0i) | -vec4<i32>(4764i, global1.x, -1i, 2147483647i)));
    var var_2 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -281f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -758f) + 1f))));
    global0 = array<Struct_1, 9>();
    let var_3 = Struct_3(arg_0);
    return var_3;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: i32, arg_3: i32) -> vec4<i32> {
    global0 = array<Struct_1, 9>();
    let var_0 = true;
    var var_1 = ~vec2<u32>(1u, 10885u);
    var_1 = u_input.a.yy;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -543f), true, vec2<u32>(~u_input.c, u_input.c), 39848u, reverseBits(vec4<u32>(~var_1.x, u_input.b << (var_1.x % 32u), var_1.x, 4294967295u))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, var_1.x, u_input.b), ~u_input.a.yyz), u_input.b) | 0u, 9u)]);
    return _wgslsmith_clamp_vec4_i32(~((vec4<i32>(arg_3, arg_3, -18136i, -1i) >> (vec4<u32>(4294967295u, var_2.b.e.x, 0u, var_2.a.d) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_dot_vec2_i32(global1.yy, vec2<i32>(arg_2, 153i)), arg_0.a, 7315i ^ arg_1.x, arg_2)), _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, -18177i, global1.x, arg_2), vec4<i32>(-global1.x, ~global1.x, ~18885i, -1i)) << (~_wgslsmith_sub_vec4_u32(select(vec4<u32>(var_2.a.d, 3745u, 0u, var_1.x), u_input.a, vec4<bool>(true, true, var_0, var_2.b.b)), var_2.b.e) % vec4<u32>(32u)), ~(~vec4<i32>(_wgslsmith_add_i32(-2147483647i, global1.x), arg_1.x, -2147483647i << (u_input.b % 32u), 2147483647i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: i32) -> Struct_3 {
    global1 = _wgslsmith_mod_vec4_i32(func_4(func_2(18611i, u_input.a.x | 4294967295u, arg_1), -(~(-global1.wy)), -((i32(-1i) * -19019i) >> (~u_input.b % 32u)), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(10172i, global1.x, -1i), global1.xxy))), vec4<i32>(_wgslsmith_mult_i32(0i, -19235i), select(-arg_2 | 14218i, 6829i, select(all(vec2<bool>(true, false)), true, true)), -2758i, _wgslsmith_sub_i32(min(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, global1.x, global1.x, arg_2), vec4<i32>(-34186i, -1i, global1.x, global1.x))), i32(-1i) * -2281i)));
    let var_0 = -func_4(Struct_3(i32(-1i) * -1i), select(vec2<i32>(_wgslsmith_mult_i32(25888i, global1.x), i32(-1i) * -2147483647i), func_4(func_2(26007i, 1u, arg_1), ~global1.xz, 13165i, arg_2 | global1.x).xz, select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, true), select(vec2<bool>(arg_1.x, false), arg_1.yx, arg_1.x))), ~min(global1.x | 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -1i), global1.ww)), _wgslsmith_mod_i32(-(~arg_2), arg_2));
    let var_1 = max(countOneBits(0u), 0u ^ abs(arg_0.x));
    global0 = array<Struct_1, 9>();
    var var_2 = vec2<f32>(-1570f, 188f);
    return func_2(-_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, -6336i), -32341i ^ global1.x, 38035i), firstLeadingBit(-arg_2)), 4294967295u, vec3<bool>(arg_1.x, arg_1.x, !(-430f >= _wgslsmith_f_op_f32(floor(var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(((_wgslsmith_sub_i32(12008i, global1.x) | (i32(-1i) * -2147483647i)) << (u_input.c % 32u)) ^ (i32(-1i) * -12638i), 0i, global1.x, global1.x);
    global0 = array<Struct_1, 9>();
    let var_0 = func_1(u_input.a, vec3<bool>(false, true, true), global1.x);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -804f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f)) * 1000f)));
    global0 = array<Struct_1, 9>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(2753f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, -594f)))), select(false, true, all(vec3<bool>(true, false, true)) || true))), true != all(vec4<bool>(select(false, false, true), true, 577f == var_1, false)), vec2<u32>(1u & _wgslsmith_add_u32(8703u, ~u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(1u, 4294967295u)) >> (~4294967295u % 32u)), _wgslsmith_dot_vec2_u32(~u_input.a.wy, vec2<u32>(select(u_input.b, _wgslsmith_mod_u32(u_input.c, 53456u), false), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(9961u, 33897u), vec2<u32>(0u, u_input.c)), u_input.a.yx))), ~vec4<u32>(u_input.c, 0u, ~511u, abs(u_input.a.x)) << (u_input.a % vec4<u32>(32u)));
    var_2 = Struct_1(-257f, var_2.b, ~vec2<u32>(~var_2.e.x, 4294967295u) & ~(~var_2.e.zz), 0u, ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(9653u, 0u, u_input.c)), u_input.a.x, var_2.c.x, ~var_2.e.x) & u_input.a);
    var_2 = global0[_wgslsmith_index_u32(0u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, i32(-1i) * -66i);
}

