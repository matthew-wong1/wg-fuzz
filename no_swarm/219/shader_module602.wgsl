struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_5(arg_0, vec4<i32>(0i, abs(abs(u_input.a.x)), -_wgslsmith_add_i32(-2147483647i, 12096i), u_input.e) << (~select(~arg_0.a, ~arg_1.a, global1.d.a) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-372f))));
    var var_2 = any(global1.d.a.zzw);
    let var_3 = _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-538f + -986f))))), 879f)));
    global1 = Struct_4(~global0[_wgslsmith_index_u32(43717u, 7u)], _wgslsmith_div_f32(1f, global1.b), global1.d.a.yy, global1.d, !(!select(select(global1.d.a.wx, global1.e, vec2<bool>(true, global1.d.a.x)), select(global1.d.a.xw, vec2<bool>(true, true), global1.c.x), select(vec2<bool>(global1.e.x, global1.c.x), vec2<bool>(global1.e.x, global1.d.a.x), global1.c.x))));
    return -1i;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: u32, arg_3: u32) -> i32 {
    global1 = Struct_4(~select(u_input.e, u_input.a.x << (~u_input.d % 32u), arg_1.x), global1.b, arg_0.zx, Struct_3(select(!select(vec4<bool>(true, false, false, arg_1.x), global1.d.a, vec4<bool>(global1.e.x, true, arg_1.x, false)), !(!global1.d.a), global1.d.a)), arg_1);
    let var_0 = Struct_5(Struct_1(~(vec4<u32>(arg_2, arg_2, 0u, 54884u) | abs(vec4<u32>(u_input.c, 1u, arg_2, u_input.d)))), vec4<i32>(func_3(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3, 7057u, arg_2, 33476u), vec4<u32>(25388u, 46186u, 28652u, arg_2))), Struct_1(~vec4<u32>(4294967295u, 17238u, arg_2, 53182u))), _wgslsmith_mod_i32(1i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(78529u, arg_2, 4294967295u), vec3<u32>(arg_3, 0u, u_input.d), vec3<u32>(1u, arg_3, 0u))), 7u)]), global0[_wgslsmith_index_u32(abs(0u), 7u)], abs(select(-1i, u_input.a.x << (54174u % 32u), global1.d.a.x))));
    let var_1 = var_0.a.a.zxy;
    let var_2 = ~1u & ~(9791u << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a.x, 57116u, 1u, 25329u), vec4<u32>(20893u, arg_2, 1u, arg_3) ^ var_0.a.a) % 32u));
    let var_3 = select(var_0.a.a, var_0.a.a >> ((vec4<u32>(firstLeadingBit(u_input.d), var_2, firstTrailingBit(u_input.c), 1u) | vec4<u32>(21372u | arg_3, _wgslsmith_dot_vec3_u32(var_1, var_0.a.a.zxz), u_input.c << (3229u % 32u), select(var_2, var_2, true))) % vec4<u32>(32u)), select(global1.d.a, select(!vec4<bool>(false, true, true, arg_1.x), !global1.d.a, true), global1.d.a.x));
    return _wgslsmith_div_i32(u_input.e, _wgslsmith_mod_i32(select(~var_0.b.x, global0[_wgslsmith_index_u32(1u, 7u)], true), -var_0.b.x)) | firstLeadingBit(-35052i);
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    let var_0 = Struct_5(Struct_1(vec4<u32>(~_wgslsmith_dot_vec4_u32(arg_0.a.a, arg_0.a.a), arg_0.a.a.x, ~_wgslsmith_dot_vec4_u32(arg_0.a.a, vec4<u32>(arg_0.a.a.x, 50465u, 104748u, 0u)), _wgslsmith_add_u32(u_input.c, arg_0.a.a.x | 4294967295u))), countOneBits(vec4<i32>(-func_2(vec3<bool>(false, global1.e.x, true), global1.c, arg_0.a.a.x, arg_0.a.a.x), -1i, arg_0.b.x | 0i, ~u_input.e)));
    global1 = Struct_4(abs(global1.a), 1310f, select(global1.d.a.yw, vec2<bool>(true, all(!vec2<bool>(global1.c.x, false))), true), global1.d, !global1.e);
    var var_1 = Struct_2(select(global1.e, vec2<bool>(!global1.d.a.x, (global1.b >= 784f) | true), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, global1.c.x, false)), any(vec4<bool>(true, global1.e.x, false, false))), all(global1.d.a))), arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(-339f - 1026f))), global1.b), var_0.b, _wgslsmith_div_vec2_i32(-var_0.b.zx, ~vec2<i32>(arg_0.b.x, arg_0.b.x) ^ -vec2<i32>(var_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 7u)])) ^ vec2<i32>(0i, -51376i));
    var_1 = Struct_2(select(!vec2<bool>(!global1.e.x, var_1.a.x && global1.d.a.x), vec2<bool>(true, all(!vec3<bool>(global1.e.x, global1.c.x, false))), select(global1.d.a.ww, global1.c, all(global1.d.a.yyz))), Struct_1(~(~vec4<u32>(var_1.b.a.x, arg_0.a.a.x, 9634u, 1u) | abs(vec4<u32>(var_1.b.a.x, u_input.b, u_input.d, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c))))), _wgslsmith_add_vec4_i32(-firstLeadingBit(vec4<i32>(46398i, 32175i, global1.a, 32052i)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, 0i, 15799i, 2147483647i)), vec4<i32>(1i, i32(-1i) * -4010i, func_2(global1.d.a.wzx, vec2<bool>(var_1.a.x, var_1.a.x), 72419u, arg_0.a.a.x), func_3(arg_0.a, arg_0.a)))), arg_0.b.xx);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(168f, 778f, 128f), vec3<f32>(-351f, var_1.c, 613f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c, 381f, global1.b))), vec3<bool>(false, true, var_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-817f, 1437f, -552f) * vec3<f32>(563f, global1.b, var_1.c))), vec3<bool>(all(var_1.a), true, var_1.a.x && global1.c.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1478f, var_1.c, -1023f))))));
    return arg_0.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    var var_0 = abs(u_input.e);
    global0 = array<i32, 7>();
    let var_1 = global1.d;
    var var_2 = Struct_4(2889i, -422f, !global1.e, Struct_3(!global1.d.a), var_1.a.wz);
    var var_3 = ~10233u;
    return !all(select(!select(vec3<bool>(false, true, true), var_1.a.wwx, vec3<bool>(false, var_1.a.x, false)), var_2.d.a.wxy, !select(global1.d.a.yyw, global1.d.a.xxz, global1.e.x)));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: vec3<i32>) -> Struct_4 {
    global1 = Struct_4(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~arg_2.b.xz >> (~arg_2.a.a.yz % vec2<u32>(32u)), vec2<i32>(0i, ~34507i)), u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * -725f)))), _wgslsmith_f_op_f32(f32(-1f) * -1825f)), select(vec2<bool>(true, global1.d.a.x), !(!global1.c), arg_0.wx), global1.d, !global1.c);
    global0 = array<i32, 7>();
    var var_0 = abs(firstTrailingBit(vec2<i32>(func_2(vec3<bool>(false, true, arg_0.x), vec2<bool>(global1.c.x, arg_0.x), u_input.c, 41654u), select(-2147483647i, global0[_wgslsmith_index_u32(arg_2.a.a.x, 7u)], arg_0.x)) & vec2<i32>(27473i >> (0u % 32u), -2147483647i >> (arg_2.a.a.x % 32u))));
    var var_1 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))));
    global0 = array<i32, 7>();
    return Struct_4(~global0[_wgslsmith_index_u32(select(countOneBits(0u), func_1(Struct_5(Struct_1(arg_2.a.a), arg_2.b)).a.x >> (1u % 32u), false), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b))))) - _wgslsmith_f_op_f32(-1f)), vec2<bool>(global1.e.x, arg_0.x), Struct_3(select(select(vec4<bool>(false, arg_0.x, true, arg_0.x), select(vec4<bool>(global1.d.a.x, arg_0.x, false, true), vec4<bool>(global1.e.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x), arg_0.x), select(!global1.d.a, !vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(false, false, global1.e.x, global1.c.x)), select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(global1.d.a.x, false, false, false), true))), global1.e);
}

fn func_6(arg_0: Struct_4) -> Struct_5 {
    global0 = array<i32, 7>();
    global1 = Struct_4(arg_0.a, -1854f, global1.c, arg_0.d, arg_0.d.a.zy);
    global0 = array<i32, 7>();
    var var_0 = Struct_5(func_1(Struct_5(func_1(Struct_5(Struct_1(vec4<u32>(u_input.b, 15811u, u_input.d, 4294967295u)), vec4<i32>(u_input.a.x, global1.a, 0i, -1i))), countOneBits(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(0u, 7u)], -2147483647i, global0[_wgslsmith_index_u32(16775u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]))))), vec4<i32>(arg_0.a, -global1.a, abs(i32(-1i) * -2147483647i), firstTrailingBit(-20478i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(floor(arg_0.b)), arg_0.c.x)) + global1.b)) * _wgslsmith_f_op_f32(trunc(global1.b)));
    return Struct_5(var_0.a, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(global1.a, min(u_input.e, 1i));
    global0 = array<i32, 7>();
    let var_1 = select(global1.d.a.xw, select(select(!select(vec2<bool>(false, false), global1.e, global1.c), global1.d.a.wy, global1.e), vec2<bool>(all(select(global1.d.a.yzw, global1.d.a.ywx, vec3<bool>(false, false, global1.d.a.x))), false), vec2<bool>(global1.c.x, false)), global1.e);
    let var_2 = global1.b;
    var var_3 = func_6(func_5(vec4<bool>(_wgslsmith_f_op_f32(select(-578f, global1.b, true)) != -414f, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2345f, -373f) * vec3<f32>(global1.b, 628f, global1.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.b, 237f)), func_1(Struct_5(Struct_1(vec4<u32>(u_input.b, u_input.b, 15662u, 55547u)), vec4<i32>(-10100i, var_0, global0[_wgslsmith_index_u32(38202u, 7u)], 3008i)))), true, func_4(vec3<f32>(-1184f, global1.b, 486f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(690f, -206f, 119f), vec3<f32>(global1.b, global1.b, global1.b), var_1.x)), Struct_1(vec4<u32>(4294967295u, 1u, 31246u, u_input.b)))), vec3<f32>(_wgslsmith_f_op_f32(-global1.b), 433f, 528f), Struct_5(Struct_1(vec4<u32>(11727u, 1u, 18050u, 1u)), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(4294967295u, u_input.b, u_input.b, 1u) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 12525i, global0[_wgslsmith_index_u32(u_input.d, 7u)]) | vec3<i32>(var_0, 0i, -60859i), vec3<i32>(-1i, global0[_wgslsmith_index_u32(0u, 7u)], u_input.e), vec3<i32>(-17107i, var_0, -737i)))));
    var_3 = Struct_5(var_3.a, vec4<i32>(func_3(func_1(Struct_5(var_3.a, var_3.b)), func_6(Struct_4(global1.a, 193f, vec2<bool>(true, true), global1.d, global1.d.a.yx)).a), 1i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(1u), min(var_3.a.a.x, 1u)), 7u)], -u_input.a.x), 0i));
    let var_4 = Struct_3(global1.d.a);
    var var_5 = vec2<bool>(global1.d.a.x && (global0[_wgslsmith_index_u32(u_input.c, 7u)] != countOneBits(global1.a >> (var_3.a.a.x % 32u))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_i32(var_3.b.yw, -vec2<i32>(var_0, -1i), -var_3.b.yw ^ -u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b), func_5(func_5(vec4<bool>(true, false, var_5.x, var_4.a.x), vec3<f32>(global1.b, -787f, global1.b), Struct_5(Struct_1(vec4<u32>(57529u, 30438u, 0u, 1u)), vec4<i32>(0i, var_3.b.x, 58151i, global0[_wgslsmith_index_u32(87877u, 7u)])), vec3<i32>(-17475i, 88615i, var_3.b.x)).d.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1482f, global1.b, -930f)), func_6(Struct_4(13238i, global1.b, var_1, global1.d, var_4.a.zy)), var_3.b.xxx).b, var_4.a.x)) + -2113f), var_3.a.a.x, -2147483647i);
}

