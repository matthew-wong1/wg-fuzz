struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<bool>(false, true, true), 0i, -1204f, 1i), Struct_1(vec3<bool>(false, true, true), -18963i, 1000f, 55109i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<Struct_1, 2>();
    let var_0 = vec3<u32>(1u, ~countOneBits(_wgslsmith_add_u32(40727u, 32092u)), ~(~34165u));
    global0 = array<Struct_1, 2>();
    return select(arg_1.a, vec3<bool>(true, true, true), false);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    var var_0 = Struct_1(vec3<bool>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c, arg_1.c, false)) * 689f) > _wgslsmith_f_op_f32(exp2(arg_1.c)), arg_1.c >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_sub_i32(-abs(u_input.b), arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -723f), ~_wgslsmith_sub_i32(1i, 1i));
    let var_1 = Struct_1(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(862f)), -502f), _wgslsmith_f_op_vec2_f32(-arg_0.zy)), Struct_1(vec3<bool>(all(vec4<bool>(var_0.a.x, false, false, true)), true, !var_0.a.x), 1i, 352f, var_0.b)), firstLeadingBit(44280i | var_0.d), 447f, 1i);
    return min(abs(_wgslsmith_add_i32(var_1.d, -25383i) >> (_wgslsmith_add_u32(reverseBits(1u), 1u) % 32u)), arg_2);
}

fn func_1() -> Struct_1 {
    var var_0 = 30766u;
    var_0 = u_input.c;
    var_0 = u_input.d.x;
    var_0 = ~4294967295u;
    global0 = array<Struct_1, 2>();
    return Struct_1(!(!select(func_2(vec2<f32>(-205f, 1000f), global0[_wgslsmith_index_u32(u_input.c, 2u)]), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_sub_i32(u_input.a, _wgslsmith_clamp_i32(u_input.b, i32(-1i) * -1i, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-893f, 1506f)))))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(func_3(vec3<f32>(-2112f, 1145f, 1000f), global0[_wgslsmith_index_u32(u_input.d.x, 2u)], -48409i, vec2<u32>(u_input.c, 1u)), _wgslsmith_div_i32(u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -19122i, 2147483647i, 1i), vec4<i32>(u_input.a, -18769i, -42276i, 0i))), -(~vec3<i32>(u_input.b, -61549i, u_input.a))), vec3<i32>(-(i32(-1i) * -2147483647i), _wgslsmith_add_i32(abs(u_input.b), 1i), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = abs(850u);
    var var_2 = func_1();
    let var_3 = Struct_1(select(vec3<bool>(!var_2.a.x, true, select(var_2.a.x, all(vec4<bool>(var_0.a.x, var_2.a.x, true, true)), var_2.a.x)), var_0.a, !(!func_2(vec2<f32>(-742f, 1947f), global0[_wgslsmith_index_u32(var_1, 2u)]))), ~u_input.b, var_0.c, abs(-36565i));
    let var_4 = _wgslsmith_add_i32(select(-max(~var_0.b, u_input.a << (var_1 % 32u)), u_input.b, !any(vec2<bool>(var_3.a.x, true))), var_2.d);
    var var_5 = Struct_1(vec3<bool>(false, all(vec4<bool>(var_0.a.x, func_2(vec2<f32>(var_0.c, var_3.c), global0[_wgslsmith_index_u32(var_1, 2u)]).x, !var_3.a.x, var_3.d > 5118i)), any(select(var_0.a, func_1().a, true))), -(~(var_2.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, 29208u, u_input.c), vec4<u32>(var_1, u_input.c, u_input.d.x, 1342u)) % 32u))), _wgslsmith_f_op_f32(1367f * -121f), i32(-1i) * -_wgslsmith_add_i32(var_0.b >> (52381u % 32u), 1i));
    let var_6 = var_1;
    let var_7 = func_1().a.zy;
    let var_8 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_8, var_1) & 4294967295u, u_input.c) ^ ~_wgslsmith_mult_u32(var_6, ~0u), select(var_1, var_6 | 1u, select(var_0.c == 1000f, true, !var_2.a.x)) & 12063u, _wgslsmith_div_f32(var_5.c, var_5.c));
}

