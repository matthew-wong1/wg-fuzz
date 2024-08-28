struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 7> = array<u32, 7>(0u, 23723u, 0u, 28612u, 66825u, 4294967295u, 29912u);

var<private> global2: array<Struct_1, 16>;

var<private> global3: vec3<u32>;

var<private> global4: array<i32, 30> = array<i32, 30>(-1i, -28639i, 0i, 87791i, -61329i, -7710i, 0i, 1i, -13758i, 2147483647i, -34866i, -50868i, 40928i, -8690i, i32(-2147483648), i32(-2147483648), -46842i, 4107i, 1i, 2147483647i, -827i, 0i, 1i, 35398i, 1i, 1i, 7775i, i32(-2147483648), 2147483647i, -1i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec3<bool> {
    global4 = array<i32, 30>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(200f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(286f - 1594f)), _wgslsmith_f_op_f32(f32(-1f) * -1598f), -508f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(628f, -1144f, -333f, -544f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(880f, -955f, 195f, -3082f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, -125f, 745f, 421f))))));
    var var_1 = ~min(1i, 1i);
    var var_2 = Struct_2(_wgslsmith_sub_vec2_i32(u_input.d.yz, countOneBits(_wgslsmith_mod_vec2_i32(-u_input.a.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], -2147483647i))))), Struct_1(vec3<bool>(true, false, !(-51110i <= u_input.b)), vec3<i32>(-22923i, -global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(29054u, u_input.c.x, 0u), 30u)], _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, global4[_wgslsmith_index_u32(119071u, 30u)], 5712i, -2147483647i), vec4<i32>(46873i, u_input.a.x, 5115i, global4[_wgslsmith_index_u32(12939u, 30u)]))), 101524u, -207f, abs(_wgslsmith_add_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(71204u, 30u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 7u)], 30u)], u_input.b, global4[_wgslsmith_index_u32(9723u, 30u)]) ^ vec4<i32>(2147483647i, -3508i, u_input.a.x, global4[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(0u, 30u)], u_input.d.x, -2147483647i, -97294i), vec4<i32>(u_input.a.x, u_input.a.x, global4[_wgslsmith_index_u32(19687u, 30u)], u_input.d.x))))), Struct_1(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), vec3<bool>(true, any(vec3<bool>(false, false, false)), 0u > global3.x), vec3<bool>(true, true, true)), select(vec3<i32>(2147483647i, -global4[_wgslsmith_index_u32(global3.x, 30u)], -2147483647i), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, -24423i, -46652i)), -u_input.a), vec3<bool>(true, true, true)), global3.x, var_0.x, firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, global4[_wgslsmith_index_u32(global3.x, 30u)], 3273i, 2147483647i), vec4<i32>(-57016i, u_input.d.x, -55241i, u_input.d.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, 64670u, 0u) % vec4<u32>(32u))))), u_input.c.wzy, _wgslsmith_add_i32(~countOneBits(41647i), _wgslsmith_sub_i32(-u_input.d.x ^ abs(u_input.a.x), abs(global4[_wgslsmith_index_u32(8658u, 30u)] & global4[_wgslsmith_index_u32(3972u, 30u)]))));
    var_1 = global4[_wgslsmith_index_u32(1u, 30u)];
    return select(vec3<bool>(var_2.b.a.x, var_2.c.a.x, false), select(vec3<bool>(var_2.c.a.x, false, !var_2.b.a.x & (var_2.c.a.x || false)), var_2.b.a, select(select(select(var_2.c.a, var_2.b.a, vec3<bool>(var_2.b.a.x, true, var_2.b.a.x)), vec3<bool>(var_2.c.a.x, var_2.c.a.x, var_2.b.a.x), select(var_2.b.a, vec3<bool>(var_2.b.a.x, true, var_2.c.a.x), true)), vec3<bool>(true, select(true, true, var_2.b.a.x), var_2.c.a.x), select(var_2.b.a.x, var_2.c.a.x, var_2.c.a.x))), any(!select(select(var_2.b.a, var_2.b.a, var_2.c.a), select(var_2.b.a, var_2.c.a, vec3<bool>(true, var_2.c.a.x, true)), false)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = Struct_2(~arg_0.b.b.zz, Struct_1(vec3<bool>(any(func_3()), any(arg_0.b.a), all(arg_0.c.a.xx)), ~vec3<i32>(-23569i, select(u_input.d.x, arg_1, arg_0.b.a.x), arg_0.a.x), global3.x, _wgslsmith_f_op_f32(-arg_0.b.d), arg_0.c.e), Struct_1(select(!(!arg_0.b.a), vec3<bool>(false, arg_0.c.a.x, 58146i == global4[_wgslsmith_index_u32(0u, 30u)]), true), ~vec3<i32>(arg_0.a.x, 2147483647i, u_input.a.x) << (vec3<u32>(reverseBits(1u), arg_0.d.x & 141822u, 4294967295u) % vec3<u32>(32u)), ~_wgslsmith_mult_u32(8385u, 28752u), -1434f, vec4<i32>(firstLeadingBit(~arg_0.e), ~(-u_input.a.x), _wgslsmith_add_i32(~arg_1, global4[_wgslsmith_index_u32(57725u, 30u)] & u_input.b), _wgslsmith_mod_i32(2147483647i, -4090i))), ~vec3<u32>(1u, 22637u, 78319u) >> (~vec3<u32>(0u, u_input.c.x | 0u, 0u) % vec3<u32>(32u)), 2147483647i);
    return func_3().x;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> vec3<bool> {
    global3 = ~vec3<u32>(arg_0.x, firstLeadingBit(_wgslsmith_div_u32(~global3.x, firstLeadingBit(global3.x))), 40088u);
    global0 = func_4(Struct_2(-reverseBits(vec2<i32>(global4[_wgslsmith_index_u32(11167u, 30u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43618u, 7u)], 30u)])), Struct_1(func_3(), firstTrailingBit(arg_3.zxw ^ u_input.d), 24694u | ~global1[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-730f)))), _wgslsmith_mod_vec4_i32(arg_3 << (u_input.c % vec4<u32>(32u)), -vec4<i32>(u_input.d.x, arg_3.x, 87115i, 5248i))), Struct_1(vec3<bool>(true, true, true), -(vec3<i32>(arg_1, -25667i, 0i) ^ u_input.d), abs(~arg_0.x), -1455f, arg_3), vec3<u32>(global3.x ^ reverseBits(u_input.c.x), global3.x, 1u), ~(~_wgslsmith_sub_i32(55503i, arg_3.x))), abs(11290i), arg_2.x);
    let var_0 = Struct_2(vec2<i32>(select(firstLeadingBit(~arg_1), _wgslsmith_dot_vec2_i32(arg_3.xw ^ u_input.a.zy, -vec2<i32>(-9642i, u_input.a.x)), !any(vec4<bool>(false, false, true, false))), -28341i), global2[_wgslsmith_index_u32(4294967295u, 16u)], Struct_1(func_3(), firstLeadingBit(-u_input.d), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(global1[_wgslsmith_index_u32(arg_0.x, 7u)])), 7u)], firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(16525u, 106007u, arg_0.x, arg_0.x), u_input.c))), _wgslsmith_f_op_f32(max(1567f, arg_2.x)), ~(-(arg_3 | arg_3))), ~u_input.c.zyw, min(-29370i, -u_input.d.x));
    var var_1 = Struct_5(arg_2.xxw, false, abs(~(vec3<i32>(12352i, -1i, u_input.b) ^ u_input.d)) & _wgslsmith_mod_vec3_i32(arg_3.wzx, u_input.d), global3.x, Struct_3(var_0.c.a, _wgslsmith_f_op_f32(var_0.b.d + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2.x, var_0.b.d)), _wgslsmith_f_op_f32(1958f - var_0.b.d))))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.e.b, -822f) - arg_2.yyw)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.x)) - arg_2.x), arg_2.x, -334f)), !var_1.e.a.x, _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(-2147483647i, -7872i, firstTrailingBit(21007i))), _wgslsmith_dot_vec4_u32(firstTrailingBit(arg_0), firstLeadingBit(firstTrailingBit(vec4<u32>(0u, 7265u, 9892u, 0u)))), var_1.e);
    return func_3();
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(-(~(-(~u_input.a.yz))), Struct_1(func_2(_wgslsmith_sub_vec4_u32(u_input.c, u_input.c), -26736i, vec4<f32>(_wgslsmith_f_op_f32(step(136f, -220f)), -2187f, _wgslsmith_div_f32(-843f, -1256f), _wgslsmith_f_op_f32(max(-1000f, 161f))), _wgslsmith_mod_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(1u, 30u)], global4[_wgslsmith_index_u32(0u, 30u)], -7208i, u_input.a.x), vec4<i32>(u_input.d.x, global4[_wgslsmith_index_u32(59333u, 30u)], u_input.a.x, u_input.d.x)) & vec4<i32>(13730i, 1i, global4[_wgslsmith_index_u32(1u, 30u)], -2147483647i)), -u_input.a, ~(~global3.x) ^ global1[_wgslsmith_index_u32(~11815u, 7u)], 467f, _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, -44216i, u_input.a.x, 0i), vec4<i32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], 30u)], -1i, -1i, global4[_wgslsmith_index_u32(global3.x, 30u)]) & countOneBits(vec4<i32>(1i, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], 30u)], u_input.b, u_input.a.x)))), Struct_1(vec3<bool>(false, false, any(vec4<bool>(true, false, true, true))), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, global4[_wgslsmith_index_u32(firstTrailingBit(global3.x), 30u)]), -12417i, 18317i), global1[_wgslsmith_index_u32(firstTrailingBit(0u) << (1u % 32u), 7u)] & ((global3.x | 1u) << (~global1[_wgslsmith_index_u32(1u, 7u)] % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1122f)) - -1000f)), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, global4[_wgslsmith_index_u32(0u, 30u)]) << (~global3.x % 32u), -10481i, u_input.d.x, 2147483647i)), u_input.c.xxz, firstTrailingBit(2147483647i));
    let var_1 = ~var_0.c.e.x;
    global4 = array<i32, 30>();
    var var_2 = global3.x;
    var var_3 = abs(-49815i);
    return Struct_1(select(vec3<bool>(true, !all(vec4<bool>(var_0.b.a.x, false, var_0.c.a.x, true)), abs(var_1) >= -20864i), !var_0.c.a, select(var_0.b.a, select(!var_0.c.a, !vec3<bool>(true, true, var_0.b.a.x), false), false || var_0.b.a.x)), vec3<i32>(u_input.d.x, 22345i, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(var_0.d, u_input.c.zwy), global1[_wgslsmith_index_u32(var_0.d.x, 7u)]), var_0.d), 30u)]), ~min(u_input.c.x, ~firstTrailingBit(global1[_wgslsmith_index_u32(52542u, 7u)])), _wgslsmith_f_op_f32(-var_0.c.d), var_0.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 16>();
    let var_0 = Struct_4(func_1(), vec4<bool>(true, true, true, true), vec2<i32>(reverseBits(~1i), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(21041u, u_input.c.x), 30u)] & _wgslsmith_mult_i32(u_input.d.x, 2147483647i)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(15596u >> (u_input.c.x % 32u), abs(25358u)), vec2<u32>(max(39292u, 62581u), ~global1[_wgslsmith_index_u32(50397u, 7u)])) % vec2<u32>(32u)), vec4<bool>(true, true, 0u >= global3.x, true), Struct_2(vec2<i32>(global4[_wgslsmith_index_u32(18924u >> (~u_input.c.x % 32u), 30u)], 20860i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(25509u, 44169u, 1u, global1[_wgslsmith_index_u32(64237u, 7u)]), reverseBits(vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 7u)], global3.x, u_input.c.x)), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c)), u_input.c), 16u)], func_1(), u_input.c.xzw, 0i));
    let var_1 = 419u;
    global2 = array<Struct_1, 16>();
    global1 = array<u32, 7>();
    var var_2 = 465f;
    var var_3 = u_input.a;
    let var_4 = ~countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(4294967295u, u_input.c.x, global3.x, global3.x)), ~vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 7u)], global3.x, var_0.e.b.c), u_input.c | vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 7u)], 7u)], 9125u, var_1, 4294967295u))) << (min(vec4<u32>(0u, 21668u, ~u_input.c.x, reverseBits(~1u)), u_input.c) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-(~abs(u_input.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.e.c.d, var_0.e.b.d, -1224f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.d, var_0.a.d, 216f, 418f)))))), !(!var_0.b.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b, -27199i), u_input.a.xy, abs(vec2<i32>(var_0.e.b.e.x, var_0.a.b.x))), vec2<i32>(var_3.x, 34136i) | vec2<i32>(-18108i, -10029i >> (var_1 % 32u))), ~4294967295u & _wgslsmith_dot_vec2_u32(~firstLeadingBit(var_0.e.d.zy), max(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global3.x, 7u)], global1[_wgslsmith_index_u32(var_0.a.c, 7u)]), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60792u, 7u)], 7u)])), countOneBits(vec2<u32>(u_input.c.x, var_4.x)))), u_input.d);
}

