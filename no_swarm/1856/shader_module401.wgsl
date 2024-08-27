struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32) -> vec3<f32> {
    var var_0 = true;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1083f, 838f, 290f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(422f, 1153f, arg_0))))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = 39857u;
    var var_1 = -1700f;
    var var_2 = arg_2.a.yzz;
    let var_3 = _wgslsmith_clamp_i32(-1i, -firstLeadingBit(-43359i), select(arg_1.b.d.x, (i32(-1i) * -1i) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_0, 0u)), 0u >> (var_0 % 32u)) % 32u), (-76037i << (~arg_2.a.x % 32u)) < abs(arg_0.b.d.x)));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(735f, arg_3.x, 2076f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, arg_3.x, global0.x), vec3<f32>(arg_3.x, 1306f, -302f), arg_1.b.e.xwy))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-266f, 898f, -188f) + vec3<f32>(-518f, 1000f, global0.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.x, arg_3.x, global0.x), vec3<f32>(arg_3.x, arg_3.x, global0.x), false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * global0.x) + 124f), 833f, -543f)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - 1126f))))), _wgslsmith_f_op_f32(-1300f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -1143f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(823f + -1878f))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(269f, arg_1, 183f)) - vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, -749f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-522f, 911f, -964f) + _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_2(vec4<u32>(arg_0.x, 7765u, 75397u, 4294967295u)), Struct_1(arg_0, u_input.b, false, u_input.a.xx, vec4<bool>(true, true, false, true))), Struct_4(Struct_2(vec4<u32>(arg_0.x, u_input.b, 1u, 0u)), Struct_1(arg_0, u_input.b, false, vec2<i32>(u_input.c, -2147483647i), vec4<bool>(false, true, true, false))), Struct_2(vec4<u32>(u_input.b, 0u, 80111u, 17338u)), vec2<f32>(arg_1, arg_1)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 990f, _wgslsmith_f_op_f32(arg_1 * global0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_div_f32(arg_1, arg_1), 801f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-690f, 1909f, global0.x))) * vec3<f32>(-191f, -2089f, 1061f)))));
    var var_0 = Struct_2(vec4<u32>(abs(_wgslsmith_sub_u32(~0u, _wgslsmith_div_u32(18646u, 66674u))), 1u, ~u_input.b, ~countOneBits(u_input.b)));
    var_0 = Struct_2(firstTrailingBit(vec4<u32>(select(0u, _wgslsmith_mult_u32(1u, var_0.a.x), any(vec4<bool>(true, false, true, true))), arg_0.x, _wgslsmith_add_u32(arg_0.x, ~9708u), _wgslsmith_add_u32(98509u, _wgslsmith_sub_u32(1u, 0u)))));
    var var_1 = max(reverseBits(arg_0.x), countOneBits(_wgslsmith_mod_u32(1u, firstTrailingBit(max(arg_0.x, arg_0.x)))));
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, reverseBits(select(u_input.a, vec3<i32>(-1i, u_input.c, u_input.a.x) | u_input.a, true)), vec3<i32>(_wgslsmith_div_i32(u_input.c, firstTrailingBit(u_input.a.x)), u_input.a.x, -46325i)), u_input.a);
    return Struct_1(select(select(vec3<u32>(_wgslsmith_mult_u32(0u, u_input.b), _wgslsmith_sub_u32(u_input.b, var_0.a.x), u_input.b), arg_0 << (vec3<u32>(u_input.b, var_0.a.x, var_0.a.x) % vec3<u32>(32u)), select(all(vec4<bool>(false, true, true, false)), true, true)), var_0.a.xyz, select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(true, false))))), arg_0.x, true, vec2<i32>(1i, select(abs(_wgslsmith_sub_i32(45071i, u_input.a.x)), 12510i, true)), vec4<bool>(true, any(vec4<bool>(true, arg_0.x < 17133u, 1274f < global0.x, true)), true, !(!any(vec4<bool>(false, false, false, false)))));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(vec3<u32>(~(~arg_3.a.a.x), 4294967295u, _wgslsmith_sub_u32(~u_input.b, 1u)), (4294967295u & ~u_input.b) ^ 1u, true | any(vec3<bool>(arg_3.a.c, false, arg_3.a.c)), vec2<i32>(u_input.c >> (arg_3.a.b % 32u), min(-1i, -1i)) << (min(arg_3.a.a.xx, vec2<u32>(arg_3.a.b, 81244u) ^ vec2<u32>(0u, 0u)) % vec2<u32>(32u)), select(select(func_2(vec3<u32>(27881u, u_input.b, 34265u), global0.x).e, vec4<bool>(arg_3.a.e.x, arg_0, false, false), true), select(arg_3.a.e, arg_3.a.e, vec4<bool>(arg_0, arg_0, arg_3.a.e.x, true)), arg_0)), arg_3.b >> (u_input.b % 32u));
    let var_1 = _wgslsmith_f_op_f32(1254f * global0.x);
    let var_2 = true;
    var var_3 = var_0.a.c;
    return Struct_2(abs(_wgslsmith_mult_vec4_u32(~(vec4<u32>(4294967295u, arg_3.a.b, 427u, u_input.b) | vec4<u32>(34046u, 23570u, 4294967295u, u_input.b)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_3.a.a.x, 0u, 0u, u_input.b)), vec4<u32>(53281u, arg_3.a.a.x, 0u, var_0.a.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)))))));
    var var_0 = Struct_4(func_4(any(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false)), true, true)), vec2<f32>(1167f, _wgslsmith_f_op_f32(-1f)), u_input.c, Struct_3(func_2(countOneBits(vec3<u32>(u_input.b, 4294967295u, u_input.b)), _wgslsmith_f_op_f32(global0.x + -1000f)), u_input.c)), func_2(vec3<u32>(~4294967295u, 1u & u_input.b, ~94624u) | func_2(~vec3<u32>(u_input.b, u_input.b, 24369u), -400f).a, 1000f));
    var var_1 = vec2<u32>(~_wgslsmith_dot_vec3_u32(~var_0.a.a.xwy, vec3<u32>(u_input.b, 1u, 19672u)) & ~(~firstLeadingBit(var_0.b.b)), var_0.a.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_vec3_f32(func_1(global0.x)).x, _wgslsmith_f_op_vec3_f32(func_1(-3255f)).x) + vec3<f32>(-841f, global0.x, _wgslsmith_f_op_f32(max(global0.x, global0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 568f)) + vec3<f32>(global0.x, global0.x, 272f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -801f, -728f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1167f, -227f, global0.x)), vec3<bool>(var_0.b.c, var_0.b.e.x, true)))))));
    let var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, vec4<f32>(var_2.x, 314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)), var_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 488f) - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + global0.x), true)), (i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.d.x, var_3.d.x, 1i), u_input.a)) << (~min(~46699u, select(var_0.a.a.x, 40066u, true)) % 32u), 9264i);
}

