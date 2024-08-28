struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0;
    let var_1 = true;
    var var_2 = arg_0.d;
    let var_3 = arg_0;
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.d))))));
    return arg_1.a.x;
}

fn func_2(arg_0: i32, arg_1: u32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1304f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -613f)))))), -998f, ~1u);
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x ^ firstLeadingBit(min(33792u, 21747u)), ~(func_3(Struct_3(vec3<f32>(var_0.b, var_0.b, var_0.a), var_0.c, var_0, 1703f, u_input.a.ww), Struct_2(vec3<u32>(69111u, 1u, 4294967295u)), Struct_3(vec3<f32>(990f, var_0.b, var_0.a), var_0.c, Struct_1(-627f, 575f, 59913u), var_0.a, vec2<u32>(34558u, 839u)), Struct_1(-472f, var_0.a, 1625u)) | ~arg_1), var_0.c, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.c, ~20574u), ~(arg_1 & u_input.a.x))), vec4<u32>(~countOneBits(abs(u_input.a.x)), 43495u, 23593u, var_0.c << (_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_1, 1u), arg_1) % 32u)), ~u_input.a);
    let var_2 = var_0;
    let var_3 = Struct_2(u_input.a.xzw);
    var_1 = ~_wgslsmith_div_vec4_u32(u_input.a, ~reverseBits(u_input.a)) & _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_1.x, var_2.c, 0u, 1u)), 53038u, var_0.c), ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_0.c, 0u), u_input.a), select(u_input.a, vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, false, false))));
    return !(arg_0 < 57437i);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = Struct_2(u_input.a.yxx);
    let var_2 = Struct_2(firstLeadingBit(~(~select(vec3<u32>(51224u, arg_2.c, 8844u), u_input.a.yww, vec3<bool>(false, var_0, arg_0)))));
    var var_3 = -1446f;
    var_3 = 378f;
    return Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.b, arg_2.a, _wgslsmith_f_op_f32(arg_2.b * arg_2.a)))))), ~(~firstTrailingBit(~37864u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1326f, 1036f) + arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(arg_2.b - -1455f), all(vec4<bool>(arg_0, var_0, arg_0, var_0))))), ~(u_input.c ^ func_3(Struct_3(vec3<f32>(1152f, arg_2.b, arg_2.b), 64960u, Struct_1(-746f, 178f, var_2.a.x), arg_2.a, var_1.a.xy), Struct_2(arg_3.a), Struct_3(vec3<f32>(1212f, arg_2.b, -405f), arg_3.a.x, Struct_1(-1045f, arg_2.b, 4294967295u), -1000f, var_2.a.xy), Struct_1(-278f, 360f, arg_2.c)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a * -206f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1120f)))), _wgslsmith_f_op_f32(arg_2.a - 1559f)), countOneBits(arg_1.a.zx) | _wgslsmith_div_vec2_u32(vec2<u32>(0u, _wgslsmith_mod_u32(arg_1.a.x, u_input.c)), arg_3.a.zz));
}

fn func_1() -> Struct_3 {
    var var_0 = -45714i;
    return func_4(func_2(1i >> (~max(u_input.a.x, 38373u) % 32u), u_input.c), Struct_2(vec3<u32>(abs(u_input.a.x & u_input.c), func_3(Struct_3(vec3<f32>(-1000f, 331f, -1151f), 38137u, Struct_1(887f, 877f, u_input.c), 746f, u_input.a.xy), Struct_2(u_input.a.yww), Struct_3(vec3<f32>(1278f, 170f, 1549f), u_input.c, Struct_1(319f, 1000f, u_input.c), 1000f, vec2<u32>(59048u, u_input.c)), Struct_1(1063f, -806f, u_input.c)), ~51619u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-684f, 1000f))) + _wgslsmith_f_op_f32(-116f - _wgslsmith_f_op_f32(f32(-1f) * -1707f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1081f)) * 766f)), max(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x >> (89350u % 32u))), Struct_2(select(firstLeadingBit(vec3<u32>(u_input.a.x, 60877u, 28264u)), abs(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), true) >> (~_wgslsmith_mult_vec3_u32(u_input.a.yxy, vec3<u32>(29471u, 78652u, 27952u)) % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec4<bool>) -> i32 {
    var var_0 = Struct_2(vec3<u32>(arg_2.x, ~_wgslsmith_clamp_u32(0u, u_input.a.x, arg_1.e.x), ~1u));
    var_0 = Struct_2(u_input.a.xzw & select(var_0.a, _wgslsmith_div_vec3_u32(min(vec3<u32>(arg_2.x, 1u, arg_0.c), u_input.a.xyz), var_0.a), arg_3.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(func_4(!(!select(true, true, true)), Struct_2(firstLeadingBit(vec3<u32>(arg_1.e.x, arg_0.c, 38222u) << (vec3<u32>(4294967295u, arg_0.c, 21043u) % vec3<u32>(32u)))), arg_1.c, Struct_2(arg_2)).a.xz));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.a.x, 39907u), var_0.a.x << (arg_1.b % 32u)), var_0.a.x) ^ arg_1.e, _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(var_0.a.x), 0u), min(func_4(true, Struct_2(vec3<u32>(arg_1.c.c, arg_2.x, arg_0.c)), Struct_1(var_1.x, -476f, 49192u), Struct_2(u_input.a.xyx)).e, u_input.a.yz)), u_input.a.xw, vec2<u32>(arg_0.c, arg_1.b)));
    let var_3 = func_1().c;
    return firstLeadingBit(~abs(-1i)) | ~reverseBits(max(u_input.b.x, -5531i));
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = all(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(false, false, false), true)));
    let var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), -468f <= _wgslsmith_f_op_f32(-arg_1.b)), select(!vec3<bool>(var_0, var_0, false), vec3<bool>(!var_0, true, var_0), vec3<bool>(u_input.c <= arg_1.c, true, true)), vec3<bool>(var_0, 1i <= firstTrailingBit(arg_0), (-28790i << (arg_1.c % 32u)) > abs(u_input.b.x)));
    let var_2 = true;
    let var_3 = !var_2;
    let var_4 = ~(func_3(func_4(!var_2, Struct_2(u_input.a.zww), Struct_1(-1000f, 1179f, arg_1.c), Struct_2(u_input.a.zyy)), Struct_2(vec3<u32>(7666u, 18469u, 101138u)), func_1(), arg_1) >> (u_input.a.x % 32u));
    return Struct_2(u_input.a.xwz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 336f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_div_f32(-786f, var_0)) - -1000f)), countOneBits(abs(min(~u_input.a.x, u_input.a.x >> (4294967295u % 32u)))));
    let var_2 = func_6(func_5(var_1, func_1(), ~_wgslsmith_div_vec3_u32(u_input.a.zyz, abs(u_input.a.wzz)), vec4<bool>(true, true, true, true)), func_4(true, Struct_2(u_input.a.xxy), var_1, Struct_2(min(u_input.a.wxw, ~vec3<u32>(u_input.c, 4294967295u, 100757u)))).c);
    var var_3 = vec3<bool>(func_1().c.c < var_1.c, all(vec4<bool>(54259u <= (var_1.c | var_1.c), true, _wgslsmith_f_op_f32(trunc(var_0)) < var_1.b, true)), true);
    var var_4 = Struct_3(func_4(var_3.x, func_6(i32(-1i) * -50067i, Struct_1(-1936f, var_1.b, 1u)), var_1, func_6(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 0i, 9953i), u_input.b) ^ 0i, func_4(true | var_3.x, var_2, var_1, var_2).c)).a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~func_6(23741i, Struct_1(-395f, -1470f, var_1.c)).a, _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_2.a.x, 69721u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 17314u), vec3<u32>(1u, 4294967295u, var_1.c))), firstLeadingBit(countOneBits(vec3<u32>(2280u, u_input.a.x, 16634u)))), select(~(~vec3<u32>(1u, var_1.c, u_input.c)), ~abs(var_2.a), !vec3<bool>(var_3.x, false, true))), var_1, 254f, var_2.a.yy);
    let var_5 = 64040i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -u_input.b.x & var_5, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(-13265i), _wgslsmith_mult_i32(u_input.d & var_5, 7177i), ~func_5(var_1, Struct_3(vec3<f32>(-363f, 147f, var_4.a.x), var_1.c, Struct_1(-182f, -1076f, 4209u), 1000f, vec2<u32>(4294967295u, var_1.c)), u_input.a.zww, vec4<bool>(var_3.x, var_3.x, var_3.x, false))), vec3<i32>(u_input.d, 1i, -u_input.b.x & abs(u_input.b.x))), u_input.a.zy >> (vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 4294967295u), vec2<u32>(66422u, var_4.b)), func_4(false, var_2, var_4.c, var_2).c.c) % vec2<u32>(32u)), u_input.a);
}

