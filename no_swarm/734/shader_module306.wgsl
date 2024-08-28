struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_1.b.x, vec4<bool>(true, true, true, (select(arg_2.b.x, 37476u, true) >= _wgslsmith_div_u32(4294967295u, 40122u)) && any(!vec2<bool>(arg_0, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -360f))), _wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f) + 218f))))));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, 0i)), _wgslsmith_div_vec2_i32(u_input.c.xy, u_input.c.yx)), -u_input.c.x, 11132i), -abs(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x))) >> (countOneBits(max(select(vec4<u32>(u_input.d.x, 0u, 0u, u_input.a), vec4<u32>(589u, 1u, 24350u, arg_2.a), vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a)) << (reverseBits(vec4<u32>(arg_2.b.x, 7284u, u_input.a, arg_2.a)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(25883u, u_input.b.x, 0u, 0u), min(vec4<u32>(u_input.b.x, 1u, u_input.a, arg_2.a), vec4<u32>(u_input.b.x, 1u, 4294967295u, 49362u))))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_sub_u32(0u, ~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 96886u, u_input.b.x), u_input.b), 0u)));
    var var_3 = var_1.xxy;
    var var_4 = arg_1.b.x;
    return var_0.c;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-409f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(815f)), -253f)), 1052f, 1192f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1605f + -247f))), _wgslsmith_f_op_f32(func_3(select(arg_0.x, arg_0.x, true), Struct_2(true, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), 323f), Struct_1(33562u, u_input.b, false)))))));
    var var_1 = Struct_1(u_input.d.x, u_input.d, arg_0.x);
    let var_2 = Struct_1(u_input.b.x, vec3<u32>(var_1.b.x, 1u, u_input.d.x), !(!any(!arg_0.yz)));
    let var_3 = !vec3<bool>((min(15329u, 77390u) < ~var_2.a) && all(vec3<bool>(var_1.c, var_2.c, var_1.c)), !var_1.c, true);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(floor(1000f)))));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> bool {
    var var_0 = -vec2<i32>(countOneBits(abs(i32(-1i) * -2147483647i)), -(~_wgslsmith_mult_i32(arg_3, 7011i)));
    var_0 = u_input.c.yy;
    let var_1 = func_2(vec3<bool>(any(!(!vec2<bool>(arg_1.b.x, true))), arg_0.c, false));
    let var_2 = arg_1;
    let var_3 = !vec2<bool>(false, 589f == arg_1.c);
    return !(!(all(arg_1.b.yzz) == false));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<i32>) -> bool {
    return func_2(arg_1).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.a, u_input.d, false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, -635f), _wgslsmith_f_op_f32(ceil(279f))))) * 1520f));
    let var_2 = !vec3<bool>(func_4(var_0, vec3<bool>(func_1(var_0, Struct_2(true, vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), -1093f), 187f, u_input.c.x), false, var_0.c), vec3<i32>(select(u_input.c.x, -22877i, false), 23483i, u_input.c.x)), any(vec3<bool>(func_4(Struct_1(u_input.d.x, u_input.b, true), vec3<bool>(var_0.c, false, var_0.c), vec3<i32>(0i, u_input.c.x, -659i)), !var_0.c, var_0.c)), var_0.c);
    var var_3 = 1u;
    var_3 = 0u;
    let var_4 = firstTrailingBit(select(vec2<u32>(4294967295u, 1u), ~u_input.b.xy, var_2.x));
    var_3 = ~(~_wgslsmith_mod_u32(1u & min(u_input.b.x, var_0.b.x), select(abs(0u), func_2(var_2).b.x, 1640f <= var_1)));
    var_3 = reverseBits(var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_dot_vec3_i32(u_input.c.yyz ^ vec3<i32>(2147483647i, 0i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.wzy)), _wgslsmith_sub_i32(~_wgslsmith_div_i32(u_input.c.x, -23751i), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(22824i, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c)), u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(164f, -1303f, var_1), vec3<f32>(var_1, 1452f, var_1), vec3<bool>(var_2.x, var_2.x, var_0.c)))))), -(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -1i, -36737i), vec4<i32>(u_input.c.x, 1i, 4900i, u_input.c.x)), -3507i)), firstLeadingBit(firstLeadingBit(_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(u_input.a, var_0.a)))));
}

