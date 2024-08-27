struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: u32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = all(vec2<bool>(true, true));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, _wgslsmith_div_f32(1054f, -885f), -325f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2179f, -248f, 359f) - vec3<f32>(1257f, 291f, 767f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(228f, -1000f, 973f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(940f, -875f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f))))), vec3<u32>(~(global1.b << (64213u % 32u)), global1.b, ~min(firstTrailingBit(global1.d), ~1u)));
    var var_2 = vec4<f32>(1743f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1257f, _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(f32(-1f) * -1185f));
    global2 = max(81453u, 1u);
    global2 = max(1u, select(~(var_1.c.x ^ 21501u), _wgslsmith_add_u32(global1.b, _wgslsmith_div_u32(1u, abs(u_input.b))), all(vec2<bool>(true, true)) || !(var_2.x < 689f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x)));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> i32 {
    let var_0 = select(vec4<bool>(!any(vec2<bool>(true, true)), !(global1.c.a.x > -2147483647i) && true, select(false, !all(vec2<bool>(false, false)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))), false), select(!vec4<bool>(all(vec3<bool>(true, false, true)), true, true, true), vec4<bool>(!all(vec4<bool>(false, true, false, false)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), !all(vec4<bool>(false, true, true, true)), true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, !(24790u != global0.d)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), arg_1, 1219f)), _wgslsmith_f_op_f32(func_3()), vec3<u32>(81064u, arg_0.d & 12711u, global0.d));
    global0 = arg_0;
    let var_2 = u_input.b;
    var var_3 = var_0.x;
    return 0i;
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_2(func_4(Struct_2(-22680i, ~(~u_input.b), global1.c, _wgslsmith_dot_vec3_u32(u_input.a.xzz, min(u_input.a.wxy, vec3<u32>(global1.b, global1.b, 4294967295u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1007f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(floor(1000f)), any(vec4<bool>(true, true, true, false))))))), 50u, Struct_1(arg_0), _wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(0u, 52138u, global1.b))), ~(~vec3<u32>(1u, global0.d, 4294967295u)) >> (~(~u_input.a.yxz) % vec3<u32>(32u))));
    var var_1 = Struct_3(vec3<f32>(1f, 1f, 1f), -1599f, min(min(_wgslsmith_clamp_vec3_u32(~u_input.a.zyw, _wgslsmith_add_vec3_u32(vec3<u32>(var_0.d, 4294967295u, u_input.a.x), u_input.a.yzw), select(vec3<u32>(14481u, var_0.d, 4294967295u), vec3<u32>(9340u, 31971u, u_input.b), false)), firstLeadingBit(firstLeadingBit(u_input.a.yzy))), ~u_input.a.wyw));
    let var_2 = Struct_3(var_1.a, var_1.b, u_input.a.wxw);
    var var_3 = abs(1i);
    let var_4 = var_2;
    return ~_wgslsmith_dot_vec3_i32(countOneBits(firstTrailingBit(vec3<i32>(-1i, 45794i, -6662i))), _wgslsmith_add_vec3_i32(vec3<i32>(global0.a, arg_0.x, global0.a), max(vec3<i32>(u_input.c.x, var_0.c.a.x, 2147483647i), vec3<i32>(2147483647i, -1i, -11984i)))) << (35813u % 32u);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2((vec2<i32>(global1.c.a.x, global1.c.a.x) ^ (_wgslsmith_clamp_vec2_i32(u_input.c, global1.c.a, global1.c.a) | reverseBits(vec2<i32>(global1.c.a.x, -8810i)))) ^ global1.c.a);
    global0 = Struct_2(global1.c.a.x, u_input.a.x, Struct_1(select(abs(global1.c.a) << (u_input.a.yz % vec2<u32>(32u)), ~(global1.c.a | u_input.c), select(false, true, false) && true)), global1.b);
    var var_1 = select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), any(vec4<bool>(false, select(false, true, false), all(vec3<bool>(false, true, true)), true)), all(vec2<bool>(true, true))), max(u_input.a.x, abs(firstLeadingBit(u_input.a.x))) < ~3452u);
    var var_2 = countOneBits(max(abs(global1.c.a.x), abs(u_input.c.x)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, -579f, -847f)) - vec3<f32>(2064f, -410f, -400f)), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-365f, 2140f), -398f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(962f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f))))), reverseBits(u_input.a.wwy));
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.c.a.x, global0.d >> (~36236u % 32u), func_1(), u_input.a.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -114f))), _wgslsmith_f_op_f32(step(751f, 820f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1751f, -1328f, 888f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(758f, -371f, -513f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(237f, 209f, 1780f), vec3<f32>(1207f, 1013f, -931f))))))) + vec3<f32>(-2037f, _wgslsmith_f_op_f32(1148f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f * -1128f)) - 466f)));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-120f)) - _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(var_0.x * var_0.x), -530f)));
    let var_1 = u_input.a.x;
    global1 = Struct_2(countOneBits(global1.a) >> (u_input.a.x % 32u), firstTrailingBit(_wgslsmith_mult_u32(global0.b, _wgslsmith_mod_u32(_wgslsmith_sub_u32(41769u, 1u), ~77910u))), global0.c, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.d, global0.d), ~vec3<u32>(global1.b, 24078u, 44266u)), var_1 & var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(815f, -826f, 889f, 324f)))))), _wgslsmith_dot_vec2_u32(~countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 2470u), vec2<u32>(u_input.b, 44209u))), u_input.a.xx));
}

