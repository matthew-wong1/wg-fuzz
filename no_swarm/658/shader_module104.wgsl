struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>) -> f32 {
    return -380f;
}

fn func_2(arg_0: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-891f, _wgslsmith_f_op_f32(2106f + arg_0.c.x))) + _wgslsmith_f_op_f32(-arg_0.c.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(Struct_1(vec4<f32>(arg_0.c.x, 664f, arg_0.b.a.x, arg_0.c.x), 0i, false)), vec4<i32>(-21484i, u_input.c.x, arg_0.b.b, -30691i), Struct_3(Struct_1(vec4<f32>(1120f, -700f, arg_0.c.x, arg_0.b.a.x), -251i, true))), select(u_input.c, vec4<i32>(41701i, arg_0.a, 2147483647i, u_input.c.x), vec4<bool>(arg_0.b.c, true, arg_0.b.c, arg_0.b.c)))))))));
    let var_1 = Struct_3(arg_0.b);
    var var_2 = firstTrailingBit(-vec3<i32>(22548i, -41803i, 10589i));
    var var_3 = _wgslsmith_add_vec3_i32(~(-u_input.c.xxz) & abs(vec3<i32>(_wgslsmith_div_i32(var_2.x, var_1.a.b), _wgslsmith_mod_i32(arg_0.b.b, 72824i), firstTrailingBit(29515i))), _wgslsmith_div_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.b, var_1.a.b, arg_0.b.b) & vec3<i32>(u_input.c.x, -22483i, 24344i), vec3<i32>(42348i, -41529i, var_2.x)), u_input.c.wyy));
    var_3 = u_input.c.zxy;
    return arg_0.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = Struct_5(firstLeadingBit(arg_1.a), arg_1.b, arg_1.b.a);
    var var_1 = arg_1.a >= -2147483647i;
    var_1 = (arg_1.b.a.x <= arg_1.b.a.x) || true;
    let var_2 = _wgslsmith_f_op_f32(-257f * func_2(Struct_5(arg_1.b.b, func_2(Struct_5(var_0.b.b, var_0.b, vec4<f32>(var_0.c.x, 1279f, 884f, 1082f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(404f, 709f, arg_1.b.a.x, arg_1.b.a.x))))).a.x);
    var var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.b.a, arg_1.b.a))), firstLeadingBit(u_input.c.x), !(arg_1.c.x == true))), firstLeadingBit(-firstLeadingBit(vec4<i32>(0i, 0i, arg_1.a, 34555i)) << (~u_input.a % vec4<u32>(32u))), Struct_3(func_2(Struct_5(~(-2147483647i), var_0.b, vec4<f32>(-1481f, var_2, 635f, -2373f)))));
    return firstTrailingBit(arg_1.b.b & (var_3.a.a.b | _wgslsmith_div_i32(max(20064i, u_input.c.x), arg_1.b.b)));
}

fn func_1(arg_0: Struct_5, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> bool {
    var var_0 = false;
    var_0 = true;
    var_0 = false;
    let var_1 = Struct_2(func_4(!select(!vec2<bool>(arg_1, arg_3.a.c), select(vec2<bool>(false, arg_3.a.c), vec2<bool>(true, false), arg_1), select(vec2<bool>(true, false), vec2<bool>(true, arg_3.a.c), arg_3.a.c)), Struct_2(-33582i, func_2(arg_0), vec4<bool>(arg_3.a.c & arg_0.b.c, arg_1, true, false), ~4294967295u, vec2<u32>(reverseBits(6350u), u_input.d.x ^ u_input.b)), (_wgslsmith_add_i32(-1i, arg_0.b.b) ^ -arg_3.a.b) < u_input.c.x, _wgslsmith_div_f32(arg_3.a.a.x, arg_2)), arg_3.a, select(!select(!vec4<bool>(true, false, arg_0.b.c, false), vec4<bool>(arg_3.a.c, arg_3.a.c, true, arg_1), vec4<bool>(arg_3.a.c, arg_0.b.c, false, arg_3.a.c)), select(vec4<bool>(func_2(arg_0).c, !arg_1, false, arg_3.a.a.x > arg_2), select(vec4<bool>(arg_1, true, false, arg_3.a.c), select(vec4<bool>(true, true, arg_0.b.c, arg_1), vec4<bool>(true, arg_0.b.c, false, arg_0.b.c), arg_0.b.c), !vec4<bool>(arg_1, arg_3.a.c, arg_3.a.c, arg_1)), arg_3.a.c), true), ~1u, select(vec2<u32>(_wgslsmith_mult_u32(u_input.d.x & 0u, 0u), u_input.b), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d.wyw, u_input.a.xzz), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zz, u_input.d.ww), vec2<u32>(u_input.d.x, u_input.b))), u_input.c.x > arg_3.a.b));
    var var_2 = u_input.d ^ countOneBits(select(~_wgslsmith_sub_vec4_u32(u_input.d, u_input.d), ~vec4<u32>(0u, 89845u, 2357u, 4294967295u), !all(vec4<bool>(arg_0.b.c, arg_3.a.c, true, arg_3.a.c))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), func_1(Struct_5(u_input.c.x, Struct_1(vec4<f32>(700f, -161f, 644f, 977f), u_input.c.x, false), vec4<f32>(-888f, -318f, -357f, -2225f)), false, 1684f, Struct_3(Struct_1(vec4<f32>(-184f, -1005f, 2013f, 170f), 50250i, false))))) & any(vec3<bool>(true, func_1(Struct_5(-1i, Struct_1(vec4<f32>(-398f, -1388f, -305f, -1816f), u_input.c.x, false), vec4<f32>(-158f, -259f, 885f, 670f)), false, -986f, Struct_3(Struct_1(vec4<f32>(-1060f, 1000f, 798f, 1169f), -608i, false))), true)));
    var var_1 = countOneBits(select(u_input.c, select(vec4<i32>(~1i, i32(-1i) * -38313i, max(u_input.c.x, u_input.c.x), ~8029i), vec4<i32>(-1i, u_input.c.x, 0i >> (u_input.b % 32u), 1i), true), var_0));
    let var_2 = Struct_2(~(-41184i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -644f, -821f, 871f)) + vec4<f32>(-888f, 1320f, -202f, -931f))), 1i, any(!(!vec2<bool>(true, var_0)))), !(!(!(!vec4<bool>(true, var_0, var_0, var_0)))), 4294967295u, ~select(~vec2<u32>(u_input.b, 21821u), firstTrailingBit(u_input.d.wz), select(select(vec2<bool>(var_0, var_0), vec2<bool>(false, true), var_0), select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), vec2<bool>(true, var_0)), false && var_0)));
    let var_3 = select(u_input.c, u_input.c, false);
    var var_4 = _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(max(vec4<i32>(32110i, 4158i, 4541i, -46098i), var_3), u_input.c)) ^ _wgslsmith_mod_vec4_i32(u_input.c ^ (vec4<i32>(var_2.b.b, var_1.x, var_2.b.b, var_3.x) & var_3), vec4<i32>(-var_1.x, func_2(Struct_5(-1i, var_2.b, var_2.b.a)).b, 0i, _wgslsmith_div_i32(44278i, var_1.x))), vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, select(max(0i, 1i), _wgslsmith_clamp_i32(u_input.c.x, var_1.x, -87519i), var_0 & true)), -_wgslsmith_clamp_i32(var_3.x, 2147483647i, var_2.b.b) ^ _wgslsmith_mod_i32(max(u_input.c.x, var_1.x), 1033i >> (u_input.a.x % 32u)), -57027i, 2147483647i));
    var_1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1010f, 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2456f + var_2.b.a.x))), 1134f), (~select(-2147483647i, var_2.a, var_0) ^ 1i) >> (0u % 32u), countOneBits(max(-2147483647i | -var_2.b.b, _wgslsmith_div_i32(~2147483647i, var_1.x & var_4.x))));
}

