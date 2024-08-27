struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false));

var<private> global1: array<Struct_1, 10>;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<f32> {
    global2 = global1[_wgslsmith_index_u32(u_input.a, 10u)];
    var var_0 = global1[_wgslsmith_index_u32(1u, 10u)];
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(584f, -1497f), vec2<f32>(103f, -1452f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1063f, 692f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(724f, -765f)), global2.b.x != var_0.b.x)))), vec2<f32>(-2334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1610f)))));
}

fn func_2() -> i32 {
    let var_0 = ~(_wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, u_input.a)), vec2<u32>(countOneBits(u_input.a), firstTrailingBit(u_input.a))) << (vec2<u32>(~(~u_input.a), _wgslsmith_div_u32(u_input.a, u_input.a)) % vec2<u32>(32u)));
    global1 = array<Struct_1, 10>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3()), vec2<f32>(_wgslsmith_f_op_f32(min(676f, -151f)), _wgslsmith_f_op_f32(sign(-1689f))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -534f, _wgslsmith_f_op_f32(-1556f - -832f))))), Struct_1(global2.a, vec3<i32>(_wgslsmith_clamp_i32(2195i, 72945i, 2147483647i) >> (0u % 32u), -11972i ^ (global2.b.x ^ global2.b.x), _wgslsmith_div_i32(-global2.b.x, _wgslsmith_div_i32(1i, -14975i)))), !vec3<bool>(any(vec2<bool>(false, global2.a.x)), global2.a.x, false), global2.a.x);
    var var_2 = var_1.c;
    var var_3 = Struct_2(var_1.b.yz, var_1.b, var_1.c, vec3<bool>(true, !(25062u <= min(var_0.x, u_input.a)), any(global0[_wgslsmith_index_u32(select(6929u, ~16094u, var_1.d.x | global2.a.x), 19u)])), true);
    return var_2.b.x;
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_1, 10>();
    var var_0 = vec2<u32>(60354u, firstLeadingBit(~595u));
    let var_1 = Struct_1(!(!global2.a), -vec3<i32>(-1i, i32(-1i) * -1i, 46872i));
    var var_2 = 1632i > (func_2() >> (abs(var_0.x) % 32u));
    var var_3 = var_1.a.x;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(select(903f, 676f, false)))), _wgslsmith_f_op_f32(2492f * -668f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(min(200f, -363f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-2605f)))), _wgslsmith_f_op_f32(-325f + _wgslsmith_f_op_f32(select(-1667f, 251f, true))))), Struct_1(select(select(vec2<bool>(true, false), select(vec2<bool>(global2.a.x, true), vec2<bool>(false, var_1.a.x), global2.a.x), global2.a), vec2<bool>(var_1.a.x, false), all(!global0[_wgslsmith_index_u32(0u, 19u)])), countOneBits(-(global2.b << (vec3<u32>(var_0.x, u_input.a, var_0.x) % vec3<u32>(32u))))), select(!select(vec3<bool>(global2.a.x, var_1.a.x, true), select(vec3<bool>(true, global2.a.x, false), vec3<bool>(true, global2.a.x, false), global2.a.x), true), select(vec3<bool>(var_1.a.x, !var_1.a.x, true), select(!vec3<bool>(global2.a.x, false, global2.a.x), vec3<bool>(false, var_1.a.x, var_1.a.x), vec3<bool>(false, global2.a.x, var_1.a.x)), true), vec3<bool>(true, true, var_1.b.x <= countOneBits(var_1.b.x))), any(select(select(select(vec3<bool>(global2.a.x, true, false), vec3<bool>(global2.a.x, global2.a.x, false), global2.a.x), select(vec3<bool>(var_1.a.x, global2.a.x, global2.a.x), vec3<bool>(false, false, true), true), select(vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(global2.a.x, var_1.a.x, global2.a.x), false)), !vec3<bool>(global2.a.x, var_1.a.x, true), global2.a.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> vec4<u32> {
    global0 = array<vec4<bool>, 19>();
    var var_0 = arg_1.c.b.x ^ (global2.b.x & ((i32(-1i) * -27989i) >> (0u % 32u)));
    global2 = Struct_1(func_1().c.a, -abs(vec3<i32>(~arg_1.c.b.x, 2147483647i, -10821i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(func_1().b.x)), arg_0.x, 2449f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))))));
    return _wgslsmith_clamp_vec4_u32(firstLeadingBit(~abs(vec4<u32>(1u, 69552u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 10544u, 35918u, u_input.a) % vec4<u32>(32u)))), abs(firstTrailingBit(abs(~vec4<u32>(4294967295u, u_input.a, 40943u, u_input.a)))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 80830u, 1u, 48576u) & vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(u_input.a, 1u, 0u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 21268u, 10883u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 1u, 0u) << (vec4<u32>(1u, u_input.a, u_input.a, 0u) % vec4<u32>(32u)))) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(79802u, 1u, u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(6745u, 21339u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 17039u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 18776u) & vec4<u32>(4294967295u, u_input.a, u_input.a, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(~(~func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1262f, 995f)), func_1())), _wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a) >> (vec4<u32>(u_input.a, 43082u, 1u, 22945u) % vec4<u32>(32u)), vec4<u32>(26556u, 4294967295u, 28670u, 1u))), func_4(_wgslsmith_f_op_vec2_f32(select(func_1().a, vec2<f32>(-1592f, -312f), func_1().d.xy)), func_1())));
    global0 = array<vec4<bool>, 19>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 10u)];
    var_0 = reverseBits(reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, var_0.x)), 23955u, u_input.a, min(42583u, 1u)))) & vec4<u32>(~1u, _wgslsmith_div_u32(reverseBits(42990u), 4294967295u), func_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-436f, 974f))), func_1()).x, ~u_input.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2633f, -526f), vec2<f32>(315f, 365f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1348f, 2197f) * vec2<f32>(791f, 1022f))))) - vec2<f32>(472f, _wgslsmith_f_op_f32(-896f * -628f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(606f, -739f, -306f))) * _wgslsmith_div_vec3_f32(vec3<f32>(1661f, 355f, 258f), vec3<f32>(-372f, 795f, -1499f)))))), Struct_1(vec2<bool>(true, true), select(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-3013i, -13862i, 10875i), global2.b), var_1.b), vec3<i32>(-1i, 1i, -2147483647i) >> ((var_0.zyz | vec3<u32>(0u, 71900u, u_input.a)) % vec3<u32>(32u)), func_1().d)), vec3<bool>(false, all(!global0[_wgslsmith_index_u32(~u_input.a, 19u)]), all(select(!global0[_wgslsmith_index_u32(u_input.a, 19u)], !vec4<bool>(true, global2.a.x, global2.a.x, global2.a.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, 52214u, 36109u), 19u)]))), all(func_1().d));
    let var_3 = vec3<f32>(var_2.b.x, -1144f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -489f))), var_2.a.x));
    global2 = global1[_wgslsmith_index_u32(70741u, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(10509u, u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_2.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3)))), var_3.yz);
}

