struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(739f, -358f);

var<private> global1: Struct_1 = Struct_1(1807i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<i32> {
    global1 = arg_0.d;
    let var_0 = abs(firstLeadingBit(vec4<i32>(1i, 54080i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, global1.a, 36640i, -84241i), vec4<i32>(0i, global1.a, 1488i, 1i)), _wgslsmith_clamp_i32(arg_0.e.a, abs(arg_1.a), global1.a))));
    global1 = Struct_1(var_0.x);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 2444f)));
    global1 = arg_1;
    return _wgslsmith_div_vec4_i32(var_0, vec4<i32>(_wgslsmith_div_i32(global1.a, ~(-3679i)), -16462i, countOneBits(arg_0.e.a), 1i) | vec4<i32>(-reverseBits(arg_0.e.a), arg_1.a, reverseBits(arg_0.e.a), arg_1.a));
}

fn func_2(arg_0: vec3<i32>) -> vec3<f32> {
    var var_0 = Struct_1(arg_0.x);
    global1 = Struct_1(-50164i);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(833f - global0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1017f - global0.x), -1000f, true)), -267f, true))));
    let var_1 = false;
    var var_2 = max(vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_add_i32(arg_0.x, 18371i), 1i), 1i, ~(global1.a << (reverseBits(u_input.a.x) % 32u)), global1.a), min(vec4<i32>(abs(arg_0.x), arg_0.x, -18004i, ~arg_0.x), func_3(Struct_2(vec4<u32>(u_input.b.x, 8631u, 12567u, u_input.b.x), select(var_1, var_1, false), 0u << (1u % 32u), Struct_1(var_0.a), Struct_1(global1.a)), Struct_1(reverseBits(var_0.a)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-167f, global0.x, -330f), vec3<f32>(1087f, -2088f, global0.x))) * vec3<f32>(global0.x, global0.x, global0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1975f)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -415f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(586f, 1263f, global0.x), vec3<f32>(-523f, global0.x, -513f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1539f, 1377f, global0.x) * vec3<f32>(881f, global0.x, -1846f))), !(!vec3<bool>(false, var_1, true))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    var var_0 = vec4<bool>(arg_3 < -2147483647i, false, arg_1.b, !arg_1.b);
    global1 = Struct_1(-2147483647i);
    global1 = arg_1.e;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.zz, arg_0.zz, var_0.xz)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(309f, 1826f))) * vec2<f32>(-125f, _wgslsmith_f_op_f32(ceil(-369f)))) * arg_0.zx));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(259f * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -753f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, -433f)) + _wgslsmith_f_op_f32(min(global0.x, 403f)))), 817f, global0.x)));
    return Struct_3(Struct_2(~vec4<u32>(~arg_1.a.x, abs(arg_1.c), _wgslsmith_dot_vec3_u32(u_input.b, arg_1.a.yww), _wgslsmith_sub_u32(1u, 1u)), !(!(!var_0.x)), _wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(4294967295u, arg_1.c)), _wgslsmith_mult_u32(36570u, _wgslsmith_mult_u32(arg_1.c, u_input.a.x))), Struct_1(~abs(723i)), arg_2), true, Struct_2(abs(vec4<u32>(arg_1.c, ~u_input.a.x, ~arg_1.a.x, min(1u, 1u))), var_0.x, abs(~u_input.b.x | reverseBits(4294967295u)), arg_2, arg_1.e));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>) -> vec2<i32> {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(func_2(arg_1.xww)), Struct_2(vec4<u32>(arg_0.x, 4294967295u & ~u_input.a.x, _wgslsmith_mod_u32(arg_0.x, max(arg_0.x, u_input.b.x)), firstLeadingBit(0u)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), u_input.b.x, Struct_1(global1.a), Struct_1(arg_1.x)), Struct_1(-2147483647i), abs(global1.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-35136i, arg_1.x, 2147483647i), ~arg_1.xxy))).x));
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global1.a), func_3(var_0.c, Struct_1(-74420i)).zw, ~(~arg_1.xx ^ ~firstTrailingBit(arg_1.wx)));
}

fn func_5(arg_0: vec2<i32>) -> Struct_1 {
    global1 = Struct_1(-6257i);
    let var_0 = u_input.b.x;
    var var_1 = firstLeadingBit(vec3<i32>(global1.a, func_3(func_4(vec3<f32>(262f, -1463f, global0.x), Struct_2(vec4<u32>(42766u, u_input.b.x, 0u, 97389u), true, 38886u, Struct_1(arg_0.x), Struct_1(33560i)), Struct_1(-6922i), -2147483647i).c, Struct_1(global1.a)).x, _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, arg_0.x), global1.a)) | vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-10717i, global1.a) << (vec2<u32>(var_0, 8180u) % vec2<u32>(32u)), -vec2<i32>(-38245i, global1.a)), min(_wgslsmith_sub_i32(global1.a, global1.a), 32410i), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(-186f, 1000f, global0.x)), Struct_2(vec4<u32>(u_input.b.x, 44356u, u_input.a.x, 33102u), true, 4294967295u, Struct_1(23329i), Struct_1(0i)), Struct_1(global1.a), ~global1.a).a.d.a));
    var var_2 = ~(func_1(countOneBits(~vec4<u32>(var_0, u_input.a.x, 1u, 16229u)), -vec4<i32>(39757i, global1.a, arg_0.x, arg_0.x)).x >> (4294967295u % 32u));
    let var_3 = Struct_1(-2147483647i);
    return func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 568f, global0.x))))), func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-241f, global0.x, global0.x), vec3<f32>(1783f, global0.x, 999f)))))), Struct_2(abs(vec4<u32>(var_0, 0u, var_0, 1u)), true, ~9678u, func_4(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1055f, global0.x), vec3<f32>(1000f, 1964f, 522f)), Struct_2(vec4<u32>(4294967295u, var_0, 1u, 25831u), true, 15712u, var_3, var_3), func_4(vec3<f32>(global0.x, -1152f, 293f), Struct_2(vec4<u32>(82335u, var_0, u_input.b.x, 0u), false, 1u, var_3, Struct_1(2147483647i)), var_3, global1.a).a.d, arg_0.x).c.e, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), func_4(vec3<f32>(global0.x, global0.x, -825f), Struct_2(vec4<u32>(var_0, 65394u, var_0, var_0), false, 4294967295u, var_3, var_3), Struct_1(global1.a), global1.a).a, Struct_1(var_1.x), ~arg_0.x).c.d), Struct_1(-36109i), _wgslsmith_clamp_i32(var_1.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.a, -60522i, 23396i), vec3<i32>(177i, -2147483647i, 0i) >> (u_input.b % vec3<u32>(32u))), 18455i)).c, Struct_1(firstLeadingBit(~32588i)), _wgslsmith_add_i32(abs(87027i), select(var_3.a, ~23667i, 4294967295u <= u_input.b.x)) & global1.a).a.e;
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec2<f32> {
    let var_0 = firstTrailingBit(abs(-(vec3<i32>(global1.a, arg_3, global1.a) >> (u_input.b % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1237f, arg_0, global0.x, 1150f) + vec4<f32>(1697f, arg_0, global0.x, 745f)))) * vec4<f32>(global0.x, -931f, -349f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - global0.x)))))));
    global1 = func_4(_wgslsmith_f_op_vec3_f32(var_1.xxz - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, var_1.x, arg_0), vec3<f32>(var_1.x, 674f, 1459f)))))), func_4(vec3<f32>(364f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, 113f), var_1.wxy) - var_1.yxy), Struct_2(~vec4<u32>(u_input.b.x, 45723u, 1u, 70316u), true, 44292u, func_5(var_0.xy), arg_2), func_5(abs(var_0.zy)), global1.a).c, arg_2, ~arg_2.a).c, arg_2, ~reverseBits(var_0.x)).c.e;
    let var_2 = any(select(vec2<bool>(false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, false)), ~12386i > var_0.x), select(vec2<bool>(true, all(vec4<bool>(false, false, false, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), all(vec2<bool>(true, true)))));
    let var_3 = var_2;
    return var_1.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(-433f, -620f))) - vec2<f32>(_wgslsmith_f_op_f32(step(888f, 318f)), _wgslsmith_f_op_f32(global0.x * global0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(824f, global0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(369f, -304f)) - vec2<f32>(global0.x, global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -665f)), -1000f)), global0.x), 4294967295u, func_5(max(vec2<i32>(0i, -24388i) ^ vec2<i32>(global1.a, 2147483647i), vec2<i32>(2147483647i, global1.a)) | ~func_1(vec4<u32>(2292u, u_input.a.x, 4294967295u, u_input.b.x), vec4<i32>(global1.a, 2176i, global1.a, global1.a))), -(~(~global1.a))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(-798f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-399f, global0.x)))) * global0.x));
    let var_0 = vec2<i32>(-global1.a, _wgslsmith_mult_i32(reverseBits(global1.a), func_5(select(vec2<i32>(1i, 1i), max(vec2<i32>(global1.a, global1.a), vec2<i32>(global1.a, -11049i)), vec2<bool>(false, true))).a));
    let var_1 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, 3280f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(189f, global0.x, 414f)))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global0.x, _wgslsmith_f_op_f32(abs(323f)))))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(675f, global0.x, -1141f))), vec3<f32>(-960f, global0.x, -345f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * vec3<f32>(-619f, global0.x, 1511f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(370f, global0.x, -699f), vec3<f32>(global0.x, 953f, 694f))))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1277f, global0.x) + vec3<f32>(734f, global0.x, global0.x))), Struct_2(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 71260u), true, ~u_input.a.x, func_5(vec2<i32>(var_0.x, global1.a)), Struct_1(-4112i)), Struct_1(global1.a), var_0.x ^ var_0.x).c, Struct_1(global1.a), max(select(countOneBits(global1.a), abs(19421i), all(vec3<bool>(false, false, true))), var_0.x)).a, func_5(reverseBits(var_0)), _wgslsmith_mult_i32(var_0.x, var_0.x)).c.e;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1043f, global0.x, 1305f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -1853f, 269f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1416f, -871f, 1000f))), vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2320f, global0.x, 1000f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(339f, global0.x, -1170f)), vec3<f32>(global0.x, -1398f, global0.x))), func_5(~vec2<i32>(var_1.a, global1.a)).a < func_3(func_4(vec3<f32>(global0.x, 1179f, -130f), Struct_2(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b.x), true, 6363u, var_1, Struct_1(-1i)), Struct_1(var_1.a), global1.a).c, func_5(vec2<i32>(-2147483647i, var_1.a))).x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, -255f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), var_1.a != 14272i)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 1852f, 2127f))))))));
    let var_3 = any(!(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false), false)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global1.a), 175f, reverseBits(global1.a));
}

