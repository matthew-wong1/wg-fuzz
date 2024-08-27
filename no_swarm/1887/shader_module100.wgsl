struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 2> = array<i32, 2>(i32(-2147483648), 45566i);

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-936f)))))), global2.b, vec4<i32>(_wgslsmith_add_i32(countOneBits(firstLeadingBit(-2147483647i)), 13787i), _wgslsmith_dot_vec3_i32(global2.c.wzz, vec3<i32>(-global2.c.x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(11068u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]), firstLeadingBit(1i))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(global1[_wgslsmith_index_u32(0u, 2u)], -66158i, -21515i), global2.c.zwy >> (global2.b.b.wwy % vec3<u32>(32u)), global2.b.a), ~vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(2897u, 2u)], global2.c.x)), ~_wgslsmith_mult_i32(i32(-1i) * -1i, global2.c.x)));
    var var_1 = ~global2.b.b.x;
    let var_2 = Struct_2(-327f, Struct_1(vec3<bool>(var_0.b.a.x && any(global2.b.a.zy), false, all(vec4<bool>(global2.b.a.x, global2.b.a.x, global2.b.a.x, var_0.b.a.x))), var_0.b.b), vec4<i32>(max(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.c.x, global1[_wgslsmith_index_u32(u_input.a, 2u)]) ^ vec3<i32>(global1[_wgslsmith_index_u32(4648u, 2u)], global2.c.x, -19708i), var_0.c.xyw)), -(~var_0.c.x) >> (~(~75533u) % 32u), 2147483647i, firstTrailingBit(1i)));
    var var_3 = 16119i;
    var_1 = 1u;
    return _wgslsmith_f_op_f32(799f + _wgslsmith_div_f32(var_0.a, -1384f));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_3()), Struct_1(select(select(select(vec3<bool>(arg_1.a.x, arg_0, false), vec3<bool>(true, true, true), vec3<bool>(global2.b.a.x, true, arg_2.x)), select(global2.b.a, vec3<bool>(true, true, arg_0), arg_0), all(vec4<bool>(true, true, false, true))), vec3<bool>(true, any(global2.b.a.yx), arg_2.x), select(arg_1.a, select(arg_1.a, vec3<bool>(false, global2.b.a.x, true), true), arg_1.a)), vec4<u32>(_wgslsmith_mod_u32(35776u, u_input.b), 2887u >> (arg_1.b.x % 32u), ~arg_1.b.x, abs(global2.b.b.x)) ^ global2.b.b), countOneBits(_wgslsmith_add_vec4_i32(global2.c, global2.c ^ vec4<i32>(global2.c.x, global2.c.x, -2147483647i, 1i)) ^ ~(~vec4<i32>(global2.c.x, 38699i, global1[_wgslsmith_index_u32(0u, 2u)], global2.c.x))));
    global2 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f * _wgslsmith_f_op_f32(floor(var_0.a)))))), var_0.b, vec4<i32>(23082i, select(abs(_wgslsmith_mult_i32(var_0.c.x, global1[_wgslsmith_index_u32(var_0.b.b.x, 2u)])), 2147483647i, any(var_0.b.a.yy) || global2.b.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(30505u, 2u)] << (arg_1.b.x % 32u), 0i, _wgslsmith_mult_i32(global2.c.x, 28131i), global2.c.x >> (82619u % 32u)), var_0.c), -20318i));
    global0 = false & arg_0;
    let var_1 = 4294967295u;
    return Struct_2(var_0.a, Struct_1(select(vec3<bool>(var_0.b.a.x, var_0.a != 1188f, select(true, false, true)), select(vec3<bool>(false, arg_1.a.x, var_0.b.a.x), !vec3<bool>(false, arg_1.a.x, false), arg_1.a), global2.b.a), vec4<u32>(abs(~1u), ~abs(global2.b.b.x), arg_1.b.x, ~0u)), global2.c);
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = select(vec3<bool>(arg_0.b.a.x, !any(vec2<bool>(true, true)), !arg_0.b.a.x && true), arg_0.b.a, global2.b.a.x);
    var var_1 = func_2((max(0u, ~0u) >> (_wgslsmith_sub_u32(9566u, func_2(global2.b.a.x, Struct_1(vec3<bool>(true, arg_0.b.a.x, true), vec4<u32>(global2.b.b.x, u_input.a, u_input.b, 4294967295u)), vec3<bool>(false, arg_0.b.a.x, true)).b.b.x) % 32u)) <= _wgslsmith_add_u32(u_input.b, 1u), arg_0.b, func_2(false & var_0.x, global2.b, vec3<bool>(true, any(vec4<bool>(global2.b.a.x, true, arg_0.b.a.x, global2.b.a.x)), select(!var_0.x, true, false))).b.a).b;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-648f, -1000f)), _wgslsmith_div_f32(325f, _wgslsmith_f_op_f32(-arg_0.a)))), arg_0.b, ~global2.c);
    var_1 = Struct_1(func_2(var_0.x, func_2(select(true, var_1.a.x, false), Struct_1(!var_2.b.a, vec4<u32>(0u, 4294967295u, global2.b.b.x, var_1.b.x)), vec3<bool>(all(vec4<bool>(arg_0.b.a.x, false, arg_0.b.a.x, true)), global2.a == 276f, false)).b, global2.b.a).b.a, _wgslsmith_sub_vec4_u32(var_1.b, global2.b.b >> (vec4<u32>(58260u, ~var_1.b.x, countOneBits(40131u), _wgslsmith_add_u32(1u, 45976u)) % vec4<u32>(32u))));
    global2 = arg_0;
    return arg_0.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_2 {
    global1 = array<i32, 2>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-228f, 401f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2252f, -107f)))))));
    let var_1 = global2.b;
    global2 = Struct_2(1f, func_4(func_2(arg_1.b.a.x, func_2(global2.a < 1000f, arg_0, arg_1.b.a).b, func_4(Struct_2(arg_1.a, Struct_1(global2.b.a, vec4<u32>(arg_1.b.b.x, 101507u, 47041u, 4294967295u)), global2.c), 0u).a), 1u), abs(select(arg_1.c, select(_wgslsmith_clamp_vec4_i32(arg_1.c, vec4<i32>(arg_2, arg_1.c.x, arg_1.c.x, arg_2), arg_1.c), vec4<i32>(arg_2, arg_2, -1i, global2.c.x), all(arg_1.b.a.xx)), select(select(vec4<bool>(var_1.a.x, arg_0.a.x, arg_0.a.x, true), vec4<bool>(true, arg_1.b.a.x, false, arg_0.a.x), true), !vec4<bool>(arg_0.a.x, arg_1.b.a.x, false, false), select(vec4<bool>(arg_0.a.x, global2.b.a.x, global2.b.a.x, arg_0.a.x), vec4<bool>(false, arg_0.a.x, false, true), var_1.a.x)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1917f, _wgslsmith_f_op_f32(max(global2.a, arg_1.a)))) * _wgslsmith_f_op_f32(trunc(global2.a))))), arg_1.b, reverseBits(select(global2.c, _wgslsmith_mod_vec4_i32(-vec4<i32>(19636i, 1i, 3013i, global2.c.x), firstLeadingBit(arg_1.c)), select(!vec4<bool>(global2.b.a.x, global2.b.a.x, false, false), !vec4<bool>(arg_0.a.x, false, true, true), vec4<bool>(false, false, false, global2.b.a.x)))));
    return func_2(global2.c.x != ~(~func_2(var_2.b.a.x, arg_0, arg_1.b.a).c.x), Struct_1(global2.b.a, vec4<u32>(_wgslsmith_mult_u32(34915u, 50570u), 0u | arg_0.b.x, _wgslsmith_mult_u32(var_2.b.b.x, 4294967295u), arg_3) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 29930u), vec4<u32>(global2.b.b.x, 67339u, 1u, var_2.b.b.x))), !vec3<bool>(!any(vec3<bool>(global2.b.a.x, var_1.a.x, arg_0.a.x)), select(global2.b.a.x, all(vec4<bool>(arg_0.a.x, true, arg_0.a.x, false)), true), !all(vec2<bool>(var_1.a.x, true))));
}

fn func_1() -> StorageBuffer {
    global2 = func_5(func_4(func_2(true, Struct_1(!vec3<bool>(false, global2.b.a.x, global2.b.a.x), ~global2.b.b), global2.b.a), u_input.a), Struct_2(global2.a, func_4(Struct_2(_wgslsmith_div_f32(global2.a, global2.a), global2.b, -vec4<i32>(1i, -17199i, -2147483647i, 37161i)), 5547u), _wgslsmith_clamp_vec4_i32(global2.c, (global2.c ^ vec4<i32>(41644i, global2.c.x, 0i, global2.c.x)) & _wgslsmith_mult_vec4_i32(global2.c, vec4<i32>(-26918i, 63936i, global2.c.x, -1i)), countOneBits(global2.c))), global2.c.x & _wgslsmith_mod_i32(abs(global2.c.x), global1[_wgslsmith_index_u32(~1u, 2u)]), ~_wgslsmith_dot_vec2_u32(global2.b.b.zz, reverseBits(_wgslsmith_mult_vec2_u32(global2.b.b.yy, vec2<u32>(0u, global2.b.b.x)))));
    global1 = array<i32, 2>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1410f, -2045f)))))), global2.b, vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(1i), global2.c.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~1u), global2.b.b.x), 2u)], select(min(49163i, ~global2.c.x), -(~2147483647i), !global2.b.a.x), global2.c.x));
    global1 = array<i32, 2>();
    let var_1 = func_5(global2.b, func_5(global2.b, Struct_2(-1069f, func_4(var_0, 15832u), vec4<i32>(-var_0.c.x, global1[_wgslsmith_index_u32(u_input.b, 2u)], var_0.c.x, var_0.c.x >> (1u % 32u))), global2.c.x, global2.b.b.x), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(6776i, var_0.c.x), 27417i, _wgslsmith_add_i32(countOneBits(19160i), ~global1[_wgslsmith_index_u32(u_input.a, 2u)])), global2.c.x), var_0.b.b.x).b.a;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, 1165f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, global2.a), vec2<f32>(338f, 1108f))) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.a, 319f))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(783f, global2.a)))))))), ~max(~vec2<u32>(global2.b.b.x, var_0.b.b.x), (global2.b.b.xz ^ vec2<u32>(u_input.a, global2.b.b.x)) | global2.b.b.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

