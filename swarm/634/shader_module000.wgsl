struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<u32, 26> = array<u32, 26>(50077u, 68821u, 0u, 34182u, 1u, 20802u, 0u, 1u, 4294967295u, 47655u, 79776u, 103681u, 1u, 4294967295u, 37851u, 1u, 4294967295u, 50396u, 15242u, 37855u, 22480u, 58227u, 4897u, 4294967295u, 1u, 35193u);

var<private> global2: array<Struct_1, 29>;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: bool) -> vec3<f32> {
    var var_0 = ~_wgslsmith_div_i32(-2147483647i, _wgslsmith_clamp_i32(countOneBits(u_input.a), select(u_input.b, 1i, false) & -36912i, -1174i << ((global4.a ^ 20866u) % 32u)));
    var var_1 = -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(-23960i, u_input.b)) << (~(~vec2<u32>(global3.a, 4294967295u)) % vec2<u32>(32u)));
    var_0 = u_input.b;
    global2 = array<Struct_1, 29>();
    var var_2 = global3.d;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global3.b.xww), global4.b.wyz));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = Struct_1(~21734u, global3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(true, true, true, true), vec2<bool>(true, true), any(vec3<bool>(false, true, true)))).zz))), _wgslsmith_f_op_f32(1384f + 121f));
    let var_1 = ~u_input.a;
    var var_2 = Struct_1(24432u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-global3.d), var_0.c.x, -398f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1418f, global3.b.x, var_0.c.x, arg_0.x) - vec4<f32>(var_0.d, var_0.c.x, global3.b.x, -1606f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.c)))), 1f);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d - 1000f) * var_0.c.x)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -565f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 761f, global3.b.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1359f, global4.c.x, global4.d) * _wgslsmith_f_op_vec3_f32(sign(global4.b.zwz)))) + _wgslsmith_f_op_vec3_f32(-var_2.b.wzx)));
    return global3.a;
}

fn func_1() -> Struct_1 {
    return global2[_wgslsmith_index_u32(firstLeadingBit(func_3(_wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(false, true, true, any(vec2<bool>(true, true))), vec2<bool>(true, true), ~global3.a < 1u)))), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(select(max(global1[_wgslsmith_index_u32(global4.a | global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 4294967295u), ~global4.a | (global4.a | 1u), any(vec3<bool>(true, true, true))) << (~max(_wgslsmith_div_u32(18041u, 1u), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_0.a, 26u)], 43988u)) % 32u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, 718f, 1610f, -1097f))))), global3.c, global4.b.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global3.a ^ ~func_1().a, global4.a), 7u)];
    let var_3 = Struct_1(1940u, vec4<f32>(_wgslsmith_f_op_f32(max(-120f, -1580f)), global4.b.x, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(823f * -1648f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, 711f), vec2<f32>(var_2.d, _wgslsmith_f_op_vec3_f32(func_2(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), vec2<bool>(false, false), all(vec3<bool>(true, false, false)))).x), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_2(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), u_input.b < u_input.b)).x, -1164f))));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(~23101u, 1u, 4294967295u), 4294967295u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32((vec4<u32>(var_1.a, 0u, 60929u, global3.a) | vec4<u32>(var_3.a, global3.a, 21416u, 1u)) & select(vec4<u32>(0u, 15311u, 38704u, 0u), vec4<u32>(0u, var_1.a, var_3.a, 53361u), vec4<bool>(false, true, true, true)), vec4<u32>(1u, global4.a, 26942u, ~40282u)), countOneBits(~abs(1u)), ~1u)), 26u)];
    var var_5 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.b), vec4<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.c.x))), _wgslsmith_f_op_f32(-2686f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 2047f)) * global4.c.x))));
    let var_6 = _wgslsmith_clamp_vec2_i32(countOneBits(firstLeadingBit(abs(select(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.a, -29798i), false)))), firstTrailingBit(vec2<i32>(reverseBits(u_input.a << (28863u % 32u)), _wgslsmith_div_i32(u_input.a, countOneBits(u_input.a)))), ((_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 7143i), vec2<i32>(u_input.b, 21771i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(-19264i, u_input.b), vec2<i32>(36367i, u_input.b))) | abs(vec2<i32>(0i, 4344i) ^ vec2<i32>(u_input.b, 45125i))) >> (abs(countOneBits(~vec2<u32>(var_2.a, 1u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(min(var_3.a, var_3.a) | ~global1[_wgslsmith_index_u32(0u, 26u)], ~45983u, _wgslsmith_mod_u32(~global4.a, _wgslsmith_sub_u32(var_2.a, 3812u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, var_3.b.x, global4.d, global3.d)))) + var_3.b), _wgslsmith_div_f32(var_2.c.x, var_5.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) * -723f), var_6);
}

