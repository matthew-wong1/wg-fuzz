struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1>;

var<private> global1: array<bool, 31> = array<bool, 31>(false, false, true, true, true, true, false, false, true, true, true, true, true, false, false, false, false, true, false, true, false, true, false, true, false, false, true, false, false, false, true);

var<private> global2: array<i32, 23>;

var<private> global3: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true));

var<private> global4: array<u32, 7>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(min(global0[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(1u, 7u)]), 1u)], firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(72695u, 1u, u_input.c.x, 101221u), vec4<u32>(3175u, 0u, global4[_wgslsmith_index_u32(20129u, 7u)], 87722u)), 1u)])) >> (vec2<u32>(~global4[_wgslsmith_index_u32(1u, 7u)], u_input.c.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(280f - -1000f)))));
    var var_1 = Struct_1(select(~_wgslsmith_add_vec2_i32(var_0.a, vec2<i32>(2147483647i, -1i)), vec2<i32>(i32(-1i) * -1i, ~var_0.a.x), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 31u)], true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-842f))))))));
    var var_2 = global4[_wgslsmith_index_u32(countOneBits(firstTrailingBit(select(38153u, ~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21398u, 7u)], 7u)], 7u)], 7u)]), u_input.c.x != 28623u))), 7u)];
    let var_3 = select(true, all(select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18290u, 7u)], 31u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(25418u, 31u)], false), any(global3[_wgslsmith_index_u32(0u, 25u)])), !(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 31u)])), !all(global3[_wgslsmith_index_u32(23664u, 25u)]))), (_wgslsmith_sub_i32(29355i, 0i) < countOneBits(~u_input.a)) | !(!any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], true))));
    var var_4 = Struct_1(vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 7u)], u_input.c.x, u_input.c.x, 70093u) | vec4<u32>(43125u, u_input.c.x, 0u, 1u), ~(~vec4<u32>(u_input.c.x, 835u, 17546u, u_input.c.x))), 23u)], _wgslsmith_div_i32(_wgslsmith_mult_i32(abs(12879i), i32(-1i) * -243i), ~abs(-1i))), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(987f, 1563f) - var_0.b), var_0.b)));
    return vec4<f32>(_wgslsmith_f_op_f32(-693f + _wgslsmith_f_op_f32(-var_4.b)), _wgslsmith_f_op_f32(-var_0.b), 481f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.b)), 1f)))), _wgslsmith_f_op_f32(f32(-1f) * -526f))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> vec2<i32> {
    global1 = array<bool, 31>();
    global0 = array<vec2<i32>, 1>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3());
    global2 = array<i32, 23>();
    var var_1 = Struct_1(-global0[_wgslsmith_index_u32(reverseBits(u_input.c.x), 1u)], var_0.x);
    return _wgslsmith_div_vec2_i32(~select(vec2<i32>(1i, 1i) << (vec2<u32>(global4[_wgslsmith_index_u32(93146u, 7u)], 51068u) % vec2<u32>(32u)), -global0[_wgslsmith_index_u32(u_input.c.x, 1u)], arg_1), _wgslsmith_sub_vec2_i32(~global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(1957u, 4294967295u)), 7u)], 7u)], 1u)], ~_wgslsmith_clamp_vec2_i32(vec2<i32>(3450i, 1i), _wgslsmith_sub_vec2_i32(var_1.a, global0[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, arg_0), vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.b, var_1.a.x)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    let var_0 = Struct_1(vec2<i32>(_wgslsmith_add_i32(0i, global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 16694i), vec2<i32>(u_input.b, -1i) << (u_input.c % vec2<u32>(32u))), arg_1.a.x)), _wgslsmith_f_op_f32(-1072f - arg_2.x));
    global0 = array<vec2<i32>, 1>();
    var var_1 = -36629i;
    return select(vec2<bool>(true, !global1[_wgslsmith_index_u32(abs(u_input.c.x), 31u)]), !select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 7u)], 31u)], false), vec2<bool>(global1[_wgslsmith_index_u32(26899u, 31u)], true), global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true), vec2<bool>(true, false)), true), select(!vec2<bool>(global1[_wgslsmith_index_u32(40934u, 31u)], global1[_wgslsmith_index_u32(48363u, 31u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(52449u, 31u)]), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), global1[_wgslsmith_index_u32(4294967295u, 31u)])), vec2<bool>(global1[_wgslsmith_index_u32(reverseBits(max(firstLeadingBit(global4[_wgslsmith_index_u32(u_input.c.x, 7u)]), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)])), 31u)], !global1[_wgslsmith_index_u32(1u, 31u)]));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<f32>) -> u32 {
    let var_0 = -321f;
    var var_1 = Struct_1(vec2<i32>(1i, -(3940i >> (firstTrailingBit(u_input.c.x) % 32u))), -521f);
    let var_2 = any(select(func_4(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(0u, 23u)], var_1.a.x, -18783i)), Struct_1(func_2(1i, vec2<bool>(global1[_wgslsmith_index_u32(77801u, 31u)], false)), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, 841f, -606f), vec3<f32>(1289f, arg_1.x, -2713f)) + vec3<f32>(arg_1.x, var_1.b, arg_2.x)), Struct_1(-global0[_wgslsmith_index_u32(103305u, 1u)], 516f)), vec2<bool>(global1[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(~u_input.c.x, 7u)]), 31u)], false), true));
    let var_3 = -1i;
    return global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 7u)], global4[_wgslsmith_index_u32(95857u, 7u)])) >> (u_input.c % vec2<u32>(32u)), ~(~(u_input.c ^ vec2<u32>(0u, 1u)))), 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -710f);
    var var_2 = any(vec2<bool>(global1[_wgslsmith_index_u32(~1u, 31u)], !(!all(vec3<bool>(true, false, true)))));
    var var_3 = Struct_1(~vec2<i32>(1i, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(global2[_wgslsmith_index_u32(67386u, 23u)], vec2<f32>(1519f, var_1), vec3<f32>(var_1, var_1, var_1)), countOneBits(30542u)), 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-194f, 1301f))))));
    let var_4 = ~countOneBits(abs(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 7u)], 7u)], 15088u), vec3<u32>(u_input.c.x, 0u, 52377u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global4[_wgslsmith_index_u32(47132u, 7u)], 4294967295u), vec3<u32>(global4[_wgslsmith_index_u32(1u, 7u)], 50318u, 1u), vec3<u32>(u_input.c.x, 0u, 4294967295u)), vec3<u32>(global4[_wgslsmith_index_u32(29580u, 7u)], 27960u, 0u))));
    var_3 = Struct_1(_wgslsmith_div_vec2_i32(-(~var_3.a) & abs(var_3.a), _wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(~var_4.x, 23u)], var_3.a.x), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a.x, u_input.b, 2147483647i), vec3<i32>(global2[_wgslsmith_index_u32(10606u, 23u)], var_3.a.x, var_3.a.x)), -1i))), var_1);
    var_0 = ~_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(var_4, var_4), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(500f, 0u, -(~(~vec3<i32>(11518i, u_input.b, u_input.a)) << (countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(96396u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 7u)], 7u)], u_input.c.x), var_4)) % vec3<u32>(32u))));
}

