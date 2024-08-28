struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4) -> i32 {
    let var_0 = countOneBits(abs(-(vec4<i32>(-1i) * -u_input.a)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1079f), _wgslsmith_f_op_f32(floor(-483f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1899f, arg_1.a.a, false))))));
    var var_2 = ~(~_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-2147483647i, -15400i, var_0.x, -1i)), max(~vec4<i32>(u_input.a.x, arg_0.b, arg_1.e.x, 47232i), u_input.a)));
    global0 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.a, 983f)) - 1f), global0.b.a, all(select(vec3<bool>(arg_1.c.x, false, arg_1.c.x), select(vec3<bool>(arg_1.c.x, false, arg_0.c.x), vec3<bool>(false, arg_1.c.x, arg_1.c.x), vec3<bool>(arg_0.c.x, false, true)), vec3<bool>(arg_1.c.x, true, arg_1.c.x))))), Struct_1(arg_0.a.a));
    var var_3 = true;
    return _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(select(arg_1.e.yy, vec2<i32>(arg_1.e.x, arg_0.b), vec2<bool>(false, arg_0.c.x)), u_input.a.ww), ~vec2<i32>(17324i, -(arg_1.e.x ^ 36681i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    let var_0 = Struct_2(global0.b, u_input.a.x, select(arg_2.zy, vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8281u, 0u, 4294967295u), vec4<u32>(20204u, 8759u, 60381u, 53999u)) > _wgslsmith_mod_u32(7234u, 4294967295u), all(!vec2<bool>(arg_2.x, arg_2.x))), !(!arg_2.x)), firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(23562u, 4294967295u, 51841u, 17769u), vec4<u32>(1u, 1u, 1u, 1u))), vec3<i32>(countOneBits(1i), abs(-func_3(Struct_2(global0.b, u_input.a.x, arg_2.xy, vec4<u32>(1u, 13509u, 1u, 32184u), u_input.a.xxw), Struct_2(Struct_1(-538f), -1i, vec2<bool>(arg_2.x, false), vec4<u32>(4294967295u, 37125u, 0u, 4294967295u), u_input.a.xww), Struct_4(arg_0.x, Struct_1(arg_1)))), u_input.a.x));
    var var_1 = Struct_1(-499f);
    global0 = Struct_4(_wgslsmith_f_op_f32(trunc(arg_0.x)), Struct_1(-1992f));
    var_1 = global0.b;
    var var_2 = -762f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-881f * var_1.a) * var_1.a))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-126f - _wgslsmith_f_op_f32(step(272f, 2575f))), -1137f)))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_4 {
    let var_0 = reverseBits(firstLeadingBit(1u));
    var var_1 = abs(-_wgslsmith_add_i32(-u_input.a.x, u_input.a.x));
    var_1 = 16483i;
    let var_2 = ~(-abs(_wgslsmith_mult_i32(6163i, arg_1))) >> (38145u % 32u);
    let var_3 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(63207u, 1u)), vec2<u32>(1u, 53896u));
    return Struct_4(global0.a, Struct_1(_wgslsmith_f_op_f32(sign(arg_0.a))));
}

fn func_1() -> vec4<u32> {
    global0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.b.a, global0.b.a) + vec3<f32>(145f, -1040f, 1000f)), _wgslsmith_f_op_f32(-global0.a), vec4<bool>(true, true, false, false))))), firstTrailingBit(-(i32(-1i) * -u_input.a.x)));
    let var_0 = func_4(global0.b, select(func_3(Struct_2(Struct_1(1040f), u_input.a.x, vec2<bool>(false, false), ~vec4<u32>(86441u, 24502u, 1u, 0u), vec3<i32>(28580i, -9876i, u_input.a.x)), Struct_2(global0.b, u_input.a.x ^ 35099i, vec2<bool>(true, false), ~vec4<u32>(0u, 0u, 39069u, 38885u), u_input.a.wzz ^ vec3<i32>(u_input.a.x, u_input.a.x, -19815i)), Struct_4(241f, Struct_1(876f))), -57185i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)) != global0.a));
    global0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1015f), func_4(Struct_1(_wgslsmith_f_op_f32(min(var_0.b.a, global0.a))), _wgslsmith_clamp_i32(-u_input.a.x, u_input.a.x, -16493i) << (63562u % 32u)).b);
    var var_1 = Struct_3(global0.b, select(vec2<bool>(false && any(vec2<bool>(true, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-231f - global0.b.a) <= 510f), true), ~vec3<u32>(1u, 1u, 1u));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(trunc(850f))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-u_input.a.x, -1i), max(1i, u_input.a.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-38986i, -1i), max(vec2<i32>(0i, 0i), u_input.a.zz))));
    return vec4<u32>(abs(~(~28574u)), 0u, 1u, ~(~var_1.c.x)) >> ((~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(36917u, var_1.c.x, var_1.c.x, 0u)), vec4<u32>(50553u, 25475u, 0u, 84u) >> (vec4<u32>(var_1.c.x, 4294967295u, 35849u, var_1.c.x) % vec4<u32>(32u))) >> (reverseBits(~vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, 25790u)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_4 {
    global0 = func_4(func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.a * arg_0.a.a) * _wgslsmith_f_op_f32(abs(149f)))), firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.e, vec3<i32>(u_input.a.x, -22719i, -2147483647i)), vec3<i32>(u_input.a.x, arg_0.e.x, arg_0.b)))).b, 3422i);
    global0 = func_4(func_4(Struct_1(arg_1.a), 2147483647i).b, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(-36909i, arg_0.b)), _wgslsmith_sub_i32(arg_0.e.x, u_input.a.x), ~(-21194i)), arg_0.e)));
    global0 = Struct_4(_wgslsmith_f_op_f32(floor(-798f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))));
    global0 = func_4(func_4(func_4(Struct_1(_wgslsmith_f_op_f32(-arg_3.a.a)), 0i).b, reverseBits(~abs(u_input.a.x))).b, _wgslsmith_add_i32(u_input.a.x, u_input.a.x));
    let var_0 = arg_3.c;
    return func_4(func_4(func_4(arg_3.a, ~(~0i)).b, 28368i).b, _wgslsmith_div_i32(arg_0.b, abs(~u_input.a.x)) & countOneBits(7593i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -818f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-559f * -834f), _wgslsmith_f_op_f32(global0.b.a * 155f)))), 130f), global0.b);
    var var_0 = func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) * 497f)), -(~u_input.a.x), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), ~func_1(), reverseBits(u_input.a.ywz)), func_4(Struct_1(1032f), 75975i).b, vec2<bool>(any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), any(vec4<bool>(true, false, false, false)))), any(vec2<bool>(true, any(vec2<bool>(false, true))))), Struct_3(func_4(global0.b, abs(-u_input.a.x)).b, select(vec2<bool>(false, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true), true), firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(0u, 4294967295u), 1u, 32564u))));
    global0 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(ceil(236f))))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))));
    let var_1 = vec3<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false))), any(vec4<bool>(all(vec2<bool>(true, true)), true, true, true)), false);
    var var_2 = Struct_3(Struct_1(global0.b.a), !vec2<bool>(all(select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x), false)), true), select(~vec3<u32>(1u, 1u, 1u), ~reverseBits(firstTrailingBit(vec3<u32>(131855u, 1u, 0u))), select(var_1, vec3<bool>(all(vec2<bool>(false, var_1.x)), true, var_1.x), !var_1)));
    global0 = func_4(global0.b, abs(~u_input.a.x) >> (var_2.c.x % 32u));
    let var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(var_2.c.x, ~_wgslsmith_clamp_u32(~1u, 4294967295u, 28029u), _wgslsmith_dot_vec4_u32(countOneBits(abs(vec4<u32>(var_2.c.x, 1u, var_2.c.x, var_2.c.x))), reverseBits(select(vec4<u32>(var_2.c.x, 35705u, 31417u, 1u), vec4<u32>(4294967295u, 95997u, 1u, var_2.c.x), var_2.b.x))), 2865u), vec4<u32>(1u, ~var_2.c.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_2.c.x, var_2.c.x) << (var_2.c.x % 32u), ~(~1u), firstTrailingBit(max(48311u, 0u))), _wgslsmith_div_u32(_wgslsmith_add_u32(var_2.c.x >> (var_2.c.x % 32u), var_2.c.x), var_2.c.x)));
    global0 = func_4(global0.b, countOneBits(min(_wgslsmith_mult_i32(u_input.a.x ^ u_input.a.x, -2147483647i), 2442i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(var_2.a, u_input.a.x).b.a)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, -1109f))), global0.b.a))), var_3.wxw, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, -6711i, 1i), u_input.a.zxy ^ u_input.a.xyz, all(!vec2<bool>(var_2.b.x, true))), u_input.a.wxw | u_input.a.yxw));
}

