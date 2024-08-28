struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, _wgslsmith_sub_i32(1i, 41868i) | ~global0.x, max(global0.x, _wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.e.zz))), ~u_input.e.ywx, vec3<bool>(0u < ~u_input.c.x, (u_input.b.x >> (arg_1 % 32u)) != u_input.e.x, true)), -(~(max(vec3<i32>(-35942i, global0.x, -21403i), vec3<i32>(global0.x, -7955i, global0.x)) << (vec3<u32>(u_input.c.x, 56311u, u_input.c.x) % vec3<u32>(32u)))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) * arg_3.x);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2))), u_input.a ^ 47442i, _wgslsmith_f_op_f32(-var_2), _wgslsmith_div_i32((i32(-1i) * -2147483647i) | firstTrailingBit(9468i), u_input.b.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-504f, var_2, false)), arg_3.x) * _wgslsmith_f_op_f32(-arg_3.x)), countOneBits(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(0i, global0.x, 9275i, 47690i)))), _wgslsmith_f_op_f32(f32(-1f) * -200f), reverseBits(~0i)), u_input.b.xzw, min(reverseBits(arg_2), _wgslsmith_mod_i32(-41447i, _wgslsmith_sub_i32(arg_0, _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(arg_2, -50323i))))));
    var var_4 = !vec2<bool>(true, !var_1);
    return -284f;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: vec4<f32>) -> i32 {
    var var_0 = 0u;
    var var_1 = max(abs(_wgslsmith_mod_i32(reverseBits(-36709i), ~0i)) << (0u % 32u), ~arg_0);
    global0 = _wgslsmith_mult_vec2_i32(u_input.b.xw, _wgslsmith_sub_vec2_i32(abs(_wgslsmith_mult_vec2_i32(min(u_input.b.xx, vec2<i32>(-1i, arg_1)), ~u_input.b.wy)), u_input.e.zy));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_3.zx + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, arg_3.x) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(587f, arg_3.x), arg_3.zy))) + arg_3.zy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.wx), _wgslsmith_f_op_vec2_f32(-arg_3.wy)), _wgslsmith_f_op_vec2_f32(select(arg_3.yz, _wgslsmith_div_vec2_f32(vec2<f32>(-305f, arg_3.x), vec2<f32>(arg_3.x, arg_3.x)), true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.wy))), select(all(vec2<bool>(true, all(vec3<bool>(true, false, false)))), !all(vec3<bool>(false, true, true)), _wgslsmith_div_f32(-449f, _wgslsmith_f_op_f32(func_3(arg_0, u_input.c.x, -10662i, vec2<f32>(arg_3.x, -2821f)))) <= _wgslsmith_div_f32(arg_3.x, 1976f))));
    global0 = select(u_input.b.yz << (_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(arg_2, u_input.c.x)), u_input.c.xx) % vec2<u32>(32u)), u_input.b.xx, false) ^ abs(~vec2<i32>(~(-12271i), max(-31289i, global0.x)));
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>) -> vec4<u32> {
    global1 = select(select(!all(vec4<bool>(true, true, true, true)), false, false), -1i == ~_wgslsmith_div_i32(func_2(-1i, arg_1.a.x, 4294967295u, vec4<f32>(-234f, 380f, 126f, -735f)), abs(-45700i)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(true, true, true)), false, false))));
    global1 = !all(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_0 = func_2(firstTrailingBit(-45862i), arg_2.x, ~(reverseBits(u_input.c.x) | 1u) | ~u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    global0 = firstLeadingBit(min(~arg_1.a.yx, firstLeadingBit(vec2<i32>(10917i, 65709i))) & vec2<i32>(arg_1.a.x, var_0));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-915f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_0.a.x, -1i, 0i), vec3<i32>(reverseBits(global0.x), 0i, ~(-1i))), _wgslsmith_f_op_f32(floor(-1357f)), var_0), Struct_1(_wgslsmith_f_op_f32(2089f + _wgslsmith_f_op_f32(ceil(-608f))), u_input.a, 1000f, -_wgslsmith_div_i32(69732i, 10554i) & _wgslsmith_mod_i32(-arg_2.x, 1i)), vec3<i32>(-2035i, -_wgslsmith_dot_vec3_i32(arg_2, select(arg_1.a, arg_2, true)), 62866i), arg_1.a.x);
    return ~(firstTrailingBit(vec4<u32>(77208u, 47041u, 1u, 30110u)) ^ ~firstLeadingBit(u_input.c)) | _wgslsmith_mult_vec4_u32(u_input.c, firstTrailingBit(vec4<u32>(u_input.c.x, 0u, 4294967295u, 4294967295u) << (~u_input.c % vec4<u32>(32u))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> Struct_2 {
    global0 = vec2<i32>(abs(_wgslsmith_mod_i32(~(-2147483647i >> (u_input.c.x % 32u)), -14180i)), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.e.x, 2147483647i), global0.x)), -2147483647i, 83647i));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -795f), 31505i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1447f + _wgslsmith_f_op_f32(func_3(-2147483647i, 4294967295u, 13865i, vec2<f32>(-1031f, 1053f))))), abs(-22630i) | global0.x), Struct_1(610f, reverseBits(reverseBits(-u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1826f), 14226i), _wgslsmith_add_vec3_i32(vec3<i32>(0i, ~u_input.d, 3337i), -vec3<i32>(-2147483647i, u_input.e.x, _wgslsmith_add_i32(-1i, u_input.d))), u_input.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> vec2<f32> {
    var var_0 = u_input.c.x;
    global1 = arg_3;
    let var_1 = Struct_3(func_4(true & select(arg_3, true, any(vec2<bool>(arg_3, arg_3))), ~select(reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 58966u)), u_input.c << (vec4<u32>(1u, 39499u, 25091u, 0u) % vec4<u32>(32u)), any(vec4<bool>(true, true, true, false)))).c);
    let var_2 = vec2<i32>(-18227i, arg_0.b.b);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.b.c, arg_0.b.a)))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, arg_2.a) * vec2<f32>(arg_0.a.c, arg_0.b.a)), vec2<f32>(-1000f, -1397f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1000f), vec2<f32>(-651f, arg_2.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(min(~34374i, 1i), -global0.x);
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_5(func_4(true, func_1(Struct_3(u_input.b.yzw), Struct_3(u_input.b.wyx), vec3<i32>(global0.x, u_input.a, global0.x))), u_input.b.zz, Struct_1(-1902f, reverseBits(2147483647i), _wgslsmith_f_op_f32(594f - -237f), u_input.a), select(false, false, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1278f, -2205f) - vec2<f32>(-953f, 1000f)) - vec2<f32>(1551f, -261f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1538f, 619f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2016f, -1492f)))))) * vec2<f32>(1165f, 1f));
    global1 = select(true, true, u_input.c.x <= ~0u);
    var var_1 = ~(~u_input.c.x);
    global0 = vec2<i32>(max(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, u_input.b.x), min(vec2<i32>(global0.x, u_input.a), u_input.e.zz)), 53172i), u_input.e.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.zyw, u_input.b.wwz), select(u_input.e.wwy | vec3<i32>(u_input.d, 68333i, -32324i), vec3<i32>(func_2(global0.x, -1i, 4294967295u, vec4<f32>(1413f, -897f, -470f, 413f)), reverseBits(-9998i), abs(1i)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~func_4(u_input.c.x >= _wgslsmith_mod_u32(u_input.c.x, 4294967295u), ~vec4<u32>(20926u, u_input.c.x, u_input.c.x, 1u) >> (u_input.c % vec4<u32>(32u))).d, abs(u_input.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 539f, 464f, 1718f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 381f, var_0.x, 504f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 1167f, 160f, var_0.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2140f, var_0.x, var_0.x, 949f))))));
}

