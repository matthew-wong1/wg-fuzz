struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 59550u, 0u, 54891u, 0u, 0u, 30873u, 1u, 101836u, 53065u, 8686u, 4294967295u, 1u, 778u, 4294967295u, 50457u, 4294967295u, 61065u, 26204u);

var<private> global1: Struct_2 = Struct_2(-1259f, vec4<f32>(1000f, -762f, -319f, -1741f), -1005f, Struct_1(vec4<u32>(10230u, 0u, 4294967295u, 42051u), 2147483647i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_i32(abs(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -32757i, global1.d.b) << (global1.d.a.xzx % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, u_input.c, u_input.c), -vec3<i32>(1i, -1i, u_input.c)))), vec3<i32>(-_wgslsmith_mult_i32(u_input.c, -1i), global1.d.b, 9856i));
    global1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.c), 2154f)))))), vec4<f32>(1080f, _wgslsmith_f_op_f32(floor(124f)), _wgslsmith_f_op_f32(sign(-241f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c + _wgslsmith_div_f32(1000f, global1.a)), global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-882f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1101f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - 352f))), global1.d);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-243f, global1.a))))) + global1.b.x);
    var var_2 = global1.d;
    var_2 = global1.d;
    return Struct_1(global1.d.a, u_input.c);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = arg_1;
    global0 = array<u32, 19>();
    let var_1 = Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(arg_1.b + arg_1.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(select(global1.a, arg_1.a, false)))))), func_2(true));
    var var_2 = reverseBits(select(firstTrailingBit(select(select(vec4<i32>(var_1.d.b, var_0.d.b, arg_1.d.b, -1i), vec4<i32>(var_1.d.b, 2147483647i, u_input.c, var_0.d.b), vec4<bool>(false, true, true, false)), -vec4<i32>(0i, u_input.c, u_input.c, 1i), vec4<bool>(true, false, false, false))), (abs(vec4<i32>(var_1.d.b, -2147483647i, global1.d.b, 1191i)) >> (arg_0.a % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, 0i, var_0.d.b), vec4<i32>(var_0.d.b, -57219i, global1.d.b, u_input.c)), -vec4<i32>(2147483647i, var_0.d.b, var_0.d.b, var_1.d.b)), vec4<bool>(false, any(vec4<bool>(true, true, true, true)), true, true)));
    let var_3 = max(7882u, ~global1.d.a.x);
    return vec4<i32>(global1.d.b ^ u_input.c, _wgslsmith_mod_i32(select(_wgslsmith_dot_vec3_i32(var_2.zwx | var_2.wwx, vec3<i32>(2147483647i, 26043i, 1i)), global1.d.b, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false))), -11100i), ~1i, i32(-1i) * -16218i);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global0 = array<u32, 19>();
    let var_0 = -func_3(func_2(!all(vec3<bool>(false, true, false))), Struct_2(global1.c, vec4<f32>(_wgslsmith_f_op_f32(max(-264f, global1.b.x)), global1.c, _wgslsmith_div_f32(arg_2.a, 113f), arg_0.b.x), _wgslsmith_f_op_f32(exp2(arg_3.b.x)), func_2(true)));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1444f)))), -155f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * -868f) * _wgslsmith_f_op_f32(-828f - arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c))), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, -1000f)) - 1000f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(arg_2.b, vec4<f32>(720f, -295f, -746f, arg_3.b.x))))))), _wgslsmith_f_op_f32(-global1.a), arg_0.d);
    let var_1 = arg_2;
    let var_2 = func_2(true);
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>) -> i32 {
    global1 = func_1(Struct_2(arg_2.x, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2255f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.x * arg_2.x)))), Struct_1(vec4<u32>(4294967295u, ~global0[_wgslsmith_index_u32(97342u, 19u)], _wgslsmith_div_u32(343u, u_input.b), ~global0[_wgslsmith_index_u32(u_input.a, 19u)]), ~(i32(-1i) * -9941i))), global1.d, arg_0, Struct_2(arg_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b * arg_0.b), _wgslsmith_f_op_vec4_f32(ceil(arg_0.b)))), _wgslsmith_f_op_f32(f32(-1f) * -772f), Struct_1(vec4<u32>(0u, global1.d.a.x, global0[_wgslsmith_index_u32(1u, 19u)] | global0[_wgslsmith_index_u32(arg_0.d.a.x, 19u)], func_1(arg_0, Struct_1(arg_0.d.a, arg_0.d.b), Struct_2(arg_0.b.x, vec4<f32>(arg_0.c, 448f, -577f, arg_0.c), arg_0.b.x, Struct_1(arg_0.d.a, -42982i)), arg_0).d.a.x), ~reverseBits(global1.d.b))));
    var var_0 = arg_0;
    var var_1 = arg_0;
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1736f))), vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-arg_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, -561f)), 213f)) * arg_2.x), _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(330f, _wgslsmith_f_op_f32(-arg_0.c)) + -488f)), _wgslsmith_f_op_f32(f32(-1f) * -967f), Struct_1(~(~var_0.d.a) >> (vec4<u32>(_wgslsmith_div_u32(33094u, 4294967295u), global1.d.a.x, 112324u, _wgslsmith_dot_vec3_u32(var_0.d.a.zyw, var_1.d.a.wzz)) % vec4<u32>(32u)), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_sub_i32(func_3(Struct_1(global1.d.a, global1.d.b), arg_0).x, -u_input.c), firstTrailingBit(u_input.c) ^ var_1.d.b)));
    var var_2 = var_1.d;
    return var_0.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d;
    var var_1 = var_0.a.x;
    var var_2 = _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_add_i32(global1.d.b, func_4(func_1(Struct_2(-1367f, global1.b, global1.a, Struct_1(global1.d.a, -2147483647i)), Struct_1(vec4<u32>(global1.d.a.x, 4294967295u, 0u, 53029u), u_input.c), Struct_2(-635f, global1.b, global1.b.x, global1.d), Struct_2(global1.b.x, vec4<f32>(688f, 636f, 337f, 451f), global1.c, Struct_1(var_0.a, var_0.b))), -953f, vec2<f32>(global1.a, global1.a)))), global1.d.b);
    var var_3 = vec4<i32>(reverseBits(u_input.c >> (10302u % 32u)), var_0.b, func_3(global1.d, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, -939f, global1.a, -448f) - global1.b)), -841f, func_2(true))).x, 1i);
    global1 = func_1(func_1(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b * global1.b) - global1.b), _wgslsmith_f_op_f32(-220f * -333f), global1.d), func_1(func_1(Struct_2(global1.c, vec4<f32>(1568f, 879f, global1.c, -549f), -1760f, global1.d), global1.d, Struct_2(global1.a, vec4<f32>(global1.c, 790f, global1.b.x, -1634f), 1089f, Struct_1(vec4<u32>(u_input.b, u_input.b, global1.d.a.x, u_input.b), var_3.x)), Struct_2(global1.c, vec4<f32>(1362f, 488f, global1.b.x, global1.c), global1.c, global1.d)), func_2(false), func_1(Struct_2(-194f, vec4<f32>(2184f, -1000f, global1.a, 639f), global1.a, global1.d), func_2(true), func_1(Struct_2(global1.a, vec4<f32>(-1353f, -1000f, -458f, 151f), global1.c, Struct_1(global1.d.a, global1.d.b)), global1.d, Struct_2(-413f, global1.b, 472f, global1.d), Struct_2(1003f, vec4<f32>(-379f, global1.a, -1157f, 1000f), global1.a, global1.d)), Struct_2(global1.c, vec4<f32>(-404f, global1.c, -1433f, 1252f), -1320f, global1.d)), func_1(func_1(Struct_2(-590f, vec4<f32>(529f, 1111f, global1.a, global1.a), 696f, global1.d), global1.d, Struct_2(global1.c, vec4<f32>(global1.a, -304f, 207f, -1144f), global1.b.x, global1.d), Struct_2(-1000f, global1.b, global1.b.x, global1.d)), func_2(false), Struct_2(228f, vec4<f32>(488f, -482f, global1.a, global1.a), global1.b.x, Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(1u, 19u)], global1.d.a.x, 47593u, var_0.a.x), -2147483647i)), func_1(Struct_2(-417f, vec4<f32>(-265f, 682f, global1.a, 819f), global1.a, Struct_1(vec4<u32>(19028u, 0u, 52354u, 7180u), -1i)), global1.d, Struct_2(-738f, global1.b, global1.a, global1.d), Struct_2(-233f, global1.b, 652f, Struct_1(global1.d.a, -4928i))))).d, func_1(func_1(Struct_2(446f, vec4<f32>(global1.a, global1.c, 114f, global1.b.x), global1.a, Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(69279u, 19u)], 0u, 1u, global1.d.a.x), global1.d.b)), func_1(Struct_2(global1.a, global1.b, 1167f, global1.d), Struct_1(vec4<u32>(25640u, global1.d.a.x, 25488u, u_input.a), u_input.c), Struct_2(-116f, global1.b, global1.c, Struct_1(global1.d.a, -2147483647i)), Struct_2(global1.b.x, vec4<f32>(global1.a, global1.b.x, global1.a, global1.c), -584f, global1.d)).d, Struct_2(global1.a, vec4<f32>(global1.c, global1.b.x, global1.a, global1.b.x), global1.b.x, Struct_1(var_0.a, global1.d.b)), func_1(Struct_2(2053f, vec4<f32>(1000f, 329f, -943f, 820f), -1123f, global1.d), global1.d, Struct_2(-504f, vec4<f32>(global1.c, global1.a, global1.c, global1.b.x), 128f, Struct_1(vec4<u32>(global1.d.a.x, 4294967295u, 4294967295u, u_input.a), var_3.x)), Struct_2(global1.a, vec4<f32>(1000f, -1000f, -1000f, -2441f), -608f, Struct_1(global1.d.a, u_input.c)))), Struct_1(func_2(true).a, 2147483647i), func_1(func_1(Struct_2(global1.a, vec4<f32>(global1.c, global1.a, 866f, 428f), global1.b.x, Struct_1(global1.d.a, u_input.c)), Struct_1(var_0.a, -29872i), Struct_2(global1.b.x, global1.b, global1.a, Struct_1(vec4<u32>(16097u, 1u, u_input.b, 1u), var_0.b)), Struct_2(global1.a, vec4<f32>(-427f, -1090f, -1117f, -1493f), 333f, Struct_1(vec4<u32>(32456u, 33277u, var_0.a.x, 61818u), global1.d.b))), Struct_1(vec4<u32>(48959u, global0[_wgslsmith_index_u32(4294967295u, 19u)], 1u, 1u), -2147483647i), Struct_2(-664f, global1.b, 926f, global1.d), func_1(Struct_2(global1.b.x, vec4<f32>(-283f, global1.b.x, 1530f, 439f), global1.a, global1.d), Struct_1(global1.d.a, 2979i), Struct_2(global1.a, global1.b, -277f, global1.d), Struct_2(global1.a, vec4<f32>(global1.b.x, 1588f, -263f, 236f), global1.b.x, Struct_1(vec4<u32>(1u, var_0.a.x, 4294967295u, u_input.a), u_input.c)))), Struct_2(134f, _wgslsmith_f_op_vec4_f32(select(global1.b, vec4<f32>(1270f, 353f, global1.b.x, global1.b.x), true)), _wgslsmith_f_op_f32(-global1.b.x), Struct_1(vec4<u32>(5314u, 3790u, 0u, u_input.b), var_3.x))), Struct_2(global1.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.b))), _wgslsmith_f_op_f32(1000f + -695f), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.d.a.x, global0[_wgslsmith_index_u32(u_input.a, 19u)], var_0.a.x), global1.d.a), firstLeadingBit(19017i)))), Struct_1(vec4<u32>(~_wgslsmith_dot_vec2_u32(var_0.a.zy, var_0.a.zz), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global1.d.a.xy, global1.d.a.zw), 4294967295u, _wgslsmith_dot_vec3_u32(global1.d.a.xxy, var_0.a.xzw)), _wgslsmith_mod_u32(global1.d.a.x & 1u, countOneBits(16312u)), _wgslsmith_add_u32(select(global1.d.a.x, var_0.a.x, true), var_0.a.x)), select(_wgslsmith_clamp_i32(2147483647i, func_1(Struct_2(1000f, global1.b, 860f, Struct_1(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(0u, 19u)], 1u, var_0.a.x), -21066i)), Struct_1(vec4<u32>(global1.d.a.x, global1.d.a.x, 1u, global0[_wgslsmith_index_u32(0u, 19u)]), 17950i), Struct_2(global1.c, global1.b, -748f, Struct_1(vec4<u32>(var_0.a.x, global1.d.a.x, global1.d.a.x, 44789u), u_input.c)), Struct_2(679f, global1.b, global1.b.x, global1.d)).d.b, firstLeadingBit(global1.d.b)), _wgslsmith_add_i32(var_3.x, var_3.x) ^ -1i, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)))), func_1(func_1(func_1(Struct_2(157f, vec4<f32>(global1.a, -682f, global1.b.x, -126f), global1.b.x, global1.d), func_1(Struct_2(global1.a, vec4<f32>(global1.a, 663f, 1223f, global1.b.x), global1.a, global1.d), Struct_1(global1.d.a, var_3.x), Struct_2(global1.b.x, global1.b, global1.c, Struct_1(var_0.a, global1.d.b)), Struct_2(global1.b.x, global1.b, 149f, global1.d)).d, Struct_2(global1.b.x, vec4<f32>(global1.b.x, -273f, global1.a, -156f), 743f, global1.d), Struct_2(global1.c, global1.b, -1169f, Struct_1(vec4<u32>(1u, global1.d.a.x, global1.d.a.x, 4294967295u), u_input.c))), global1.d, func_1(Struct_2(global1.a, vec4<f32>(global1.a, -1767f, 1658f, 256f), global1.a, global1.d), global1.d, Struct_2(global1.a, vec4<f32>(global1.c, global1.c, global1.a, -669f), 1171f, global1.d), func_1(Struct_2(global1.b.x, vec4<f32>(1607f, 146f, global1.b.x, -1010f), 1160f, Struct_1(var_0.a, 40489i)), Struct_1(vec4<u32>(global1.d.a.x, global0[_wgslsmith_index_u32(u_input.b, 19u)], global1.d.a.x, global1.d.a.x), global1.d.b), Struct_2(-1559f, global1.b, global1.b.x, global1.d), Struct_2(-1488f, vec4<f32>(global1.c, -2098f, global1.b.x, global1.b.x), -923f, Struct_1(vec4<u32>(1u, global1.d.a.x, 77564u, 1u), var_3.x)))), func_1(func_1(Struct_2(681f, vec4<f32>(global1.a, global1.b.x, global1.a, -503f), global1.b.x, global1.d), Struct_1(global1.d.a, var_0.b), Struct_2(-590f, vec4<f32>(-315f, 685f, global1.b.x, 1919f), global1.a, Struct_1(global1.d.a, -68468i)), Struct_2(global1.b.x, vec4<f32>(161f, global1.b.x, -3121f, 327f), -1972f, global1.d)), global1.d, func_1(Struct_2(global1.b.x, global1.b, -1172f, Struct_1(var_0.a, 0i)), global1.d, Struct_2(-825f, vec4<f32>(global1.b.x, 640f, -515f, 1000f), global1.c, Struct_1(vec4<u32>(var_0.a.x, 35564u, 64989u, 0u), -2147483647i)), Struct_2(global1.b.x, vec4<f32>(global1.b.x, 679f, -119f, global1.b.x), -3516f, global1.d)), Struct_2(global1.b.x, global1.b, -906f, Struct_1(global1.d.a, 44293i)))), Struct_1(vec4<u32>(~4294967295u, 1u, global1.d.a.x, ~0u), min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, var_0.b, var_3.x, var_3.x), vec4<i32>(0i, var_0.b, 2147483647i, var_3.x)), -25861i)), func_1(func_1(Struct_2(global1.b.x, global1.b, global1.b.x, global1.d), func_1(Struct_2(-950f, vec4<f32>(-1729f, 326f, 597f, global1.a), 367f, Struct_1(vec4<u32>(var_0.a.x, var_0.a.x, global1.d.a.x, global0[_wgslsmith_index_u32(var_0.a.x, 19u)]), -46321i)), Struct_1(vec4<u32>(global1.d.a.x, 4294967295u, 4744u, 0u), 1i), Struct_2(-107f, global1.b, -1203f, global1.d), Struct_2(global1.b.x, global1.b, 1000f, global1.d)).d, func_1(Struct_2(-288f, global1.b, global1.b.x, global1.d), global1.d, Struct_2(global1.c, global1.b, global1.b.x, Struct_1(global1.d.a, 48594i)), Struct_2(1275f, vec4<f32>(global1.b.x, global1.a, -1000f, -694f), global1.c, Struct_1(var_0.a, var_0.b))), func_1(Struct_2(global1.b.x, vec4<f32>(global1.c, -274f, 1936f, global1.b.x), -398f, Struct_1(global1.d.a, u_input.c)), Struct_1(vec4<u32>(7614u, 1u, u_input.b, 0u), 39859i), Struct_2(1238f, global1.b, -2352f, global1.d), Struct_2(-1000f, vec4<f32>(-390f, global1.a, global1.c, global1.c), global1.a, global1.d))), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.d.a.x, global0[_wgslsmith_index_u32(1u, 19u)], 4294967295u), vec4<u32>(global1.d.a.x, u_input.b, u_input.b, var_0.a.x)), 49779i), Struct_2(_wgslsmith_f_op_f32(abs(global1.a)), global1.b, _wgslsmith_f_op_f32(153f - global1.c), global1.d), func_1(Struct_2(1452f, vec4<f32>(global1.a, 449f, global1.c, 1000f), global1.a, Struct_1(vec4<u32>(7579u, global0[_wgslsmith_index_u32(0u, 19u)], 0u, 10772u), 1i)), global1.d, Struct_2(global1.c, vec4<f32>(508f, global1.a, 1000f, global1.b.x), global1.c, Struct_1(vec4<u32>(u_input.b, 4294967295u, 2168u, var_0.a.x), 24910i)), Struct_2(global1.a, vec4<f32>(global1.a, 1000f, global1.b.x, global1.a), 204f, Struct_1(var_0.a, u_input.c)))), Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1355f, global1.a, global1.b.x, global1.b.x))), global1.a, global1.d)), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1809f * global1.a))), global1.b, 1f, Struct_1(~(vec4<u32>(u_input.b, 68702u, 15504u, global1.d.a.x) >> (var_0.a % vec4<u32>(32u))), u_input.c)));
    global0 = array<u32, 19>();
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(-1310f - _wgslsmith_div_f32(_wgslsmith_div_f32(global1.a, global1.b.x), _wgslsmith_f_op_f32(exp2(global1.b.x)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global1.c, global1.b.x, all(vec3<bool>(true, true, true)))))));
    let var_5 = (min(vec3<u32>(0u, ~4294967295u, abs(u_input.b)), func_2(any(vec2<bool>(false, false))).a.zyx) ^ global1.d.a.zxw) | _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, global1.d.a.x, global1.d.a.x), ~countOneBits(var_0.a.zyz)), ~(global1.d.a.wwy ^ vec3<u32>(28911u, 9945u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_1(func_1(Struct_2(global1.c, vec4<f32>(global1.c, global1.c, 1000f, var_4.x), 538f, Struct_1(vec4<u32>(var_5.x, 15279u, 1u, var_5.x), 41064i)), func_2(true), func_1(Struct_2(global1.a, vec4<f32>(var_4.x, var_4.x, var_4.x, global1.a), -851f, global1.d), Struct_1(vec4<u32>(1u, 1u, var_0.a.x, 4294967295u), global1.d.b), Struct_2(var_4.x, vec4<f32>(var_4.x, global1.b.x, var_4.x, global1.b.x), global1.c, global1.d), Struct_2(386f, vec4<f32>(global1.c, global1.a, -437f, global1.b.x), 1014f, global1.d)), func_1(Struct_2(-528f, vec4<f32>(var_4.x, global1.b.x, 1000f, global1.b.x), global1.c, Struct_1(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global1.d.a.x, 19u)], 4294967295u, 4294967295u), -1i)), Struct_1(vec4<u32>(24226u, u_input.b, 58504u, 4294967295u), var_3.x), Struct_2(-1221f, vec4<f32>(1020f, 125f, 523f, global1.b.x), 1372f, global1.d), Struct_2(1017f, global1.b, 430f, global1.d))), Struct_1(~vec4<u32>(global1.d.a.x, global1.d.a.x, 14255u, global1.d.a.x), func_3(Struct_1(var_0.a, 2596i), Struct_2(1000f, vec4<f32>(-1085f, 426f, -716f, global1.c), global1.b.x, Struct_1(vec4<u32>(0u, 4294967295u, var_5.x, u_input.b), var_0.b))).x), Struct_2(-407f, global1.b, var_4.x, Struct_1(vec4<u32>(global1.d.a.x, 0u, 19057u, 49434u), 39118i)), func_1(func_1(Struct_2(895f, vec4<f32>(131f, var_4.x, global1.a, -718f), 833f, Struct_1(vec4<u32>(0u, 1u, 4294967295u, 37682u), var_0.b)), Struct_1(global1.d.a, -2147483647i), Struct_2(-123f, global1.b, var_4.x, Struct_1(vec4<u32>(91841u, var_5.x, 4294967295u, 4294967295u), 1i)), Struct_2(-159f, vec4<f32>(423f, global1.b.x, 1136f, -1000f), var_4.x, global1.d)), func_2(true), Struct_2(global1.b.x, global1.b, global1.c, global1.d), Struct_2(-1665f, global1.b, var_4.x, Struct_1(global1.d.a, -38920i)))).d.b, -2924i, 47152i));
}

