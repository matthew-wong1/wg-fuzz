struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: i32) -> f32 {
    global0 = arg_1.zy;
    var var_0 = vec3<i32>(-2147483647i, -(~arg_3), -24269i);
    let var_1 = 349f;
    let var_2 = ~(~min(~(~u_input.d.x), u_input.d.x));
    let var_3 = Struct_4(Struct_3(~countOneBits(var_2) >> ((1u & max(1u, var_2)) % 32u), Struct_2(global1.a, vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(var_1, 567f))), 932i, reverseBits(vec3<i32>(-2147483647i, 0i, 0i)))), Struct_2(Struct_1(~vec4<u32>(69588u, 1u, 0u, 14494u), arg_0, vec4<u32>(0u, u_input.d.x & global1.a.a.x, ~global1.a.a.x, _wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(48999u, 4294967295u)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0)), arg_0), global1.a.b), ~(~global1.d.x), ~vec3<i32>(u_input.b, global1.d.x, arg_3)), Struct_2(global1.a, global1.b, arg_3 << (_wgslsmith_add_u32(89934u, global1.a.a.x >> (global1.a.a.x % 32u)) % 32u), -global1.d), vec4<bool>(arg_1.x, all(vec4<bool>(false, false, global0.x, global0.x)) & !arg_1.x, !global0.x, global0.x), Struct_3(max(select(var_2 << (u_input.d.x % 32u), 1u, arg_1.x & true), ~4294967295u), Struct_2(global1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, arg_0))), _wgslsmith_f_op_vec2_f32(select(global1.b, global1.b, arg_1.x))), -1i, min(min(vec3<i32>(u_input.a, -2147483647i, var_0.x), global1.d), global1.d))));
    return 1000f;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-604f, global1.b.x, _wgslsmith_f_op_f32(func_3(global1.a.b, select(vec4<bool>(global0.x, true, true, true), !vec4<bool>(true, true, global0.x, false), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(arg_0.x, global0.x, global0.x, false), global0.x)), i32(-1i) * -1i, ~1i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(774f * global1.a.b), _wgslsmith_f_op_f32(-global1.b.x), true))));
    global0 = select(!select(select(vec2<bool>(arg_0.x, false), arg_0, vec2<bool>(false, global0.x)), arg_0, vec2<bool>(any(vec3<bool>(false, global0.x, true)), true)), vec2<bool>(-246f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b.x * -390f), _wgslsmith_f_op_f32(-var_0.x))), true), all(!vec4<bool>(true, false, true, global0.x)));
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - global1.b.x), 526f))))), -76463i, select(vec3<i32>(arg_1, max(u_input.b | arg_1, 1i), reverseBits(arg_1)), global1.d, vec3<bool>(any(vec3<bool>(arg_0.x, true, global0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.d.x, u_input.d.x), global1.a.c) <= _wgslsmith_dot_vec3_u32(global1.a.a.xwy, global1.a.c.zxy), false)));
    global0 = !select(select(!(!arg_0), arg_0, arg_0), select(vec2<bool>(true, false), arg_0, arg_0), !arg_0);
    global0 = arg_0;
    return Struct_3(~u_input.d.x | abs(55495u), Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(151f, 636f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.b, global1.a.b))), arg_1, global1.d));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1004f - arg_2.b) - arg_0.b.a.b) * arg_0.b.b.x)))));
    global0 = select(!vec2<bool>(!(!global0.x), global0.x), !(!vec2<bool>(arg_3.x, all(vec2<bool>(true, global0.x)))), select(any(arg_3), any(select(vec4<bool>(false, arg_3.x, global0.x, false), vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(false, true, true, arg_3.x), arg_3.x))), all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, global0.x, global0.x, false), false), select(vec4<bool>(true, true, false, global0.x), vec4<bool>(arg_3.x, global0.x, true, false), vec4<bool>(true, global0.x, false, global0.x)), false))));
    var var_1 = Struct_3(global1.a.c.x & (min(global1.a.c.x, ~u_input.d.x) >> (arg_0.a % 32u)), Struct_2(func_2(vec2<bool>(global0.x, arg_3.x | true), -arg_0.b.d.x ^ -19305i).b.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b, -633f))), arg_2.b), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(abs(arg_1.wy), _wgslsmith_add_vec2_i32(global1.d.zy, global1.d.zz)), u_input.a), max(global1.d, arg_0.b.d)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(426f - -573f) * 247f), _wgslsmith_div_f32(2066f, _wgslsmith_f_op_f32(-var_1.b.b.x)), !(!arg_3.x))), vec4<bool>(any(select(arg_3, arg_3, vec3<bool>(false, false, true))), all(!vec4<bool>(false, global0.x, arg_3.x, true)), global0.x, max(arg_1.x, u_input.b) > (47509i & arg_0.b.c)), arg_0.b.c, ~0i)));
    let var_2 = func_2(select(select(!(!arg_3.zy), arg_3.zy, vec2<bool>(true, global0.x)), vec2<bool>(true, global0.x), any(select(vec2<bool>(true, true), arg_3.zz, vec2<bool>(global0.x, true)))), _wgslsmith_add_i32(~(~(-55261i)), firstTrailingBit(u_input.b | 31619i) << (1u % 32u))).b.a;
    return _wgslsmith_clamp_i32(var_1.b.c & var_1.b.d.x, ~_wgslsmith_div_i32(_wgslsmith_mult_i32(max(31379i, -2147483647i), ~(-37390i)), 4876i), arg_0.b.c | min(~122402i, 1i));
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(global1.d.x, -982i, u_input.a), firstLeadingBit(-vec3<i32>(reverseBits(-9983i), 21772i, -11814i)));
    var var_1 = global1.a.c.x;
    var_0 = ((~min(global1.d, vec3<i32>(global1.c, var_0.x, 495i)) | vec3<i32>(-global1.d.x, _wgslsmith_div_i32(var_0.x, global1.c), u_input.a)) | vec3<i32>(func_4(func_2(vec2<bool>(global0.x, false), global1.d.x), abs(vec4<i32>(0i, -2147483647i, var_0.x, -58433i)), Struct_1(global1.a.a, global1.a.b, global1.a.c), select(vec3<bool>(false, false, true), vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, true, false))), -2147483647i, reverseBits(21218i))) & global1.d;
    var var_2 = Struct_3(_wgslsmith_dot_vec2_u32(abs(u_input.d.yy), u_input.d.zy), func_2(!(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), false)), abs(var_0.x)).b);
    var var_3 = Struct_4(func_2(select(!(!vec2<bool>(false, global0.x)), vec2<bool>(any(vec2<bool>(global0.x, true)), global1.a.b >= var_2.b.a.b), !vec2<bool>(global0.x, global0.x)), -80572i), var_2.b, var_2.b, select(vec4<bool>(true, global0.x, !global0.x, !(!global0.x)), vec4<bool>(select(true, true, -24108i > u_input.b), (var_0.x & -2147483647i) >= 1i, false, select(true, global1.c <= 37599i, global0.x)), !any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x))), func_2(vec2<bool>(global0.x, global0.x), -abs(global1.c)));
    return Struct_4(func_2(var_3.d.wy, var_0.x), var_2.b, func_2(select(!vec2<bool>(var_3.d.x, var_3.d.x), vec2<bool>(var_3.d.x | var_3.d.x, true), var_3.d.x), i32(-1i) * -22558i).b, !vec4<bool>(false, !(!global0.x), true, true), Struct_3(~1u, Struct_2(func_2(select(vec2<bool>(true, false), var_3.d.xw, global0.x), _wgslsmith_mod_i32(var_3.e.b.c, -40319i)).b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(715f, -651f) + var_2.b.b)), firstTrailingBit(17351i) << (~46213u % 32u), vec3<i32>(1i, 34721i, ~(-1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(global1.a.a.x));
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-724f, var_0.a.b.a.b), vec2<f32>(763f, -275f), global1.a.a.x < 4294967295u)), _wgslsmith_div_vec2_f32(vec2<f32>(-225f, global1.a.b), _wgslsmith_f_op_vec2_f32(global1.b * vec2<f32>(global1.b.x, -758f)))), func_1(~var_0.e.b.a.a.x).e.b.b, global0.x)), global1.d.x, var_0.e.b.d);
    global0 = select(!vec2<bool>(!var_0.d.x, !var_0.d.x), var_0.d.xw, !vec2<bool>(!select(var_0.d.x, global0.x, var_0.d.x), _wgslsmith_mod_i32(var_0.b.d.x, 40496i) > 4988i));
    global0 = var_0.d.yx;
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~u_input.a, _wgslsmith_sub_i32(1i, firstLeadingBit(-28580i)), _wgslsmith_clamp_i32(1i, -2147483647i, u_input.b)), -2147483647i, _wgslsmith_sub_i32(var_0.a.b.c, 1i << (select(~1u, var_0.e.a, false) % 32u)));
    var var_2 = func_1(~(~_wgslsmith_div_u32(1u, _wgslsmith_add_u32(var_0.a.b.a.a.x, 11106u))));
    let var_3 = func_2(var_2.d.zx, var_2.a.b.d.x).b.a;
    let var_4 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(45230u, _wgslsmith_add_u32(firstTrailingBit(var_0.c.a.a.x), ~reverseBits(var_2.b.a.c.x))), vec3<u32>(var_2.e.a & 4294967295u, var_4.b.a.a.x, 0u), firstTrailingBit(select(var_0.e.a, _wgslsmith_mod_u32(var_0.a.b.a.c.x << (1u % 32u), abs(var_0.c.a.c.x)), all(func_1(25094u).d.xwz))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.b, global1.a.b)) * _wgslsmith_f_op_f32(815f - var_3.b)), _wgslsmith_f_op_f32(-func_2(vec2<bool>(false, true), 9853i).b.b.x), -1174f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1308f, var_0.c.b.x, -1473f) * vec3<f32>(1080f, 1186f, var_4.b.b.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.b.x, 850f, 1000f) - vec3<f32>(var_4.b.b.x, 1000f, var_3.b))))));
}

