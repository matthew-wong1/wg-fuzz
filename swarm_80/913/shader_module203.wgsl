struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, true, true, false, true, false, true, true, true, false, false, true, false, false);

var<private> global1: array<vec4<bool>, 20>;

var<private> global2: array<u32, 25> = array<u32, 25>(21904u, 0u, 34164u, 38801u, 86510u, 55310u, 4294967295u, 0u, 0u, 0u, 17626u, 1u, 3366u, 103862u, 15829u, 1u, 57716u, 0u, 1u, 40325u, 15822u, 0u, 72103u, 10070u, 4294967295u);

var<private> global3: array<u32, 30> = array<u32, 30>(12748u, 0u, 0u, 1u, 27164u, 56333u, 0u, 1u, 4294967295u, 2343u, 40635u, 0u, 43706u, 1u, 55801u, 43187u, 1u, 22761u, 84714u, 4294967295u, 41612u, 72282u, 8427u, 0u, 0u, 1u, 4632u, 1u, 917u, 37685u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    global3 = array<u32, 30>();
    var var_0 = abs(_wgslsmith_add_i32(max(-2147483647i, abs(arg_2.d.x)) >> (arg_0 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d.x, arg_2.c.x, u_input.a), select(~vec3<i32>(-57760i, u_input.a, -46389i), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.c.x, arg_1.c.x, u_input.b), vec3<i32>(26943i, arg_2.a.x, 27186i), vec3<i32>(29898i, -2147483647i, 0i)), !vec3<bool>(global0[_wgslsmith_index_u32(50878u, 15u)], true, arg_1.e.x)))));
    var var_1 = vec2<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), arg_2.d.x));
    global3 = array<u32, 30>();
    global2 = array<u32, 25>();
    return select(vec2<bool>(all(arg_1.e), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 30u)], 15u)]), arg_2.e.yy, ((countOneBits(global2[_wgslsmith_index_u32(u_input.c, 25u)]) << (select(25466u, 0u, true) % 32u)) << (0u % 32u)) == max(min(44391u, global3[_wgslsmith_index_u32(u_input.c, 30u)] & global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 25u)], 30u)]), 1u));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> vec3<f32> {
    let var_0 = vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 25u)], global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~43472u), reverseBits(abs(12989u))), 25u)], 60449u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 25u)], 25u)], 0u), ~global2[_wgslsmith_index_u32(4294967295u, 25u)], 63606u)), reverseBits(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 30u)], 26337u, 32289u)) | (vec3<u32>(56852u, 33504u, u_input.c) << (~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 30u)], 0u, global2[_wgslsmith_index_u32(3559u, 25u)]) % vec3<u32>(32u)))), 30u)]);
    let var_1 = select(select(!(!func_3(0u, Struct_2(arg_0.yz, arg_0.yy, vec2<i32>(u_input.a, 11688i), arg_0, vec3<bool>(false, false, true)), Struct_2(arg_0.xx, vec2<i32>(27480i, 10421i), arg_0.yx, arg_0, vec3<bool>(false, false, false)))), !vec2<bool>(false, all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false))), !(!(!global0[_wgslsmith_index_u32(var_0.x, 15u)]))), func_3(u_input.c, Struct_2(~vec2<i32>(arg_1, arg_0.x), vec2<i32>(arg_1, arg_1) & (arg_0.yy >> (var_0.yy % vec2<u32>(32u))), vec2<i32>(1i << (global2[_wgslsmith_index_u32(0u, 25u)] % 32u), 1i), -arg_0 << (select(vec3<u32>(global3[_wgslsmith_index_u32(u_input.c, 30u)], 4294967295u, u_input.c), vec3<u32>(var_0.x, 13845u, var_0.x), global0[_wgslsmith_index_u32(var_0.x, 15u)]) % vec3<u32>(32u)), vec3<bool>(false, true, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)], global0[_wgslsmith_index_u32(4008u, 15u)])))), Struct_2(vec2<i32>(i32(-1i) * -2147483647i, u_input.a >> (u_input.c % 32u)), arg_0.zy, vec2<i32>(arg_1, _wgslsmith_mod_i32(u_input.b, 69479i)), arg_0, select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(64660u, 15u)], true, global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(112298u, 15u)], false, global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec3<bool>(true, false, true)), !vec3<bool>(false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 25u)], 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)])))), !(!vec2<bool>(true, true != global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 30u)], 15u)])));
    let var_2 = -192f;
    global3 = array<u32, 30>();
    let var_3 = 4294967295u ^ global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(var_0.x, 1u) & _wgslsmith_add_u32(u_input.c << (global2[_wgslsmith_index_u32(5291u, 25u)] % 32u), ~u_input.c), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0.wxw, var_0.wzw), var_0.ywx) ^ firstLeadingBit(1u)), 30u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(691f, 355f, var_2))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-306f, var_2, var_2)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1608f, var_2, var_2))), true))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(arg_0.a, arg_0.b, select(arg_0.c, select(arg_0.c, (vec2<i32>(arg_1, arg_0.c.x) & vec2<i32>(0i, arg_1)) & vec2<i32>(u_input.b, -78817i), arg_0.b), arg_0.b), _wgslsmith_div_vec4_f32(arg_0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-arg_2.b), arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -220f)) * vec4<f32>(1439f, _wgslsmith_f_op_f32(ceil(645f)), _wgslsmith_f_op_f32(1136f * arg_0.d.x), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1268f, _wgslsmith_f_op_f32(-arg_2.b)))));
    global3 = array<u32, 30>();
    let var_2 = func_3(~global2[_wgslsmith_index_u32(firstTrailingBit(~1u), 25u)], Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(-arg_0.c.x, _wgslsmith_div_i32(arg_0.c.x, arg_0.c.x)), -abs(var_1.c)), countOneBits(-var_1.c), -_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.c.x, 56295i), var_1.c) ^ _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-5623i, u_input.a), arg_0.c), ~vec2<i32>(arg_0.c.x, arg_0.c.x), arg_0.c), ~(~vec3<i32>(u_input.b, 1i, arg_1)), !(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 15u)], var_1.b.x), vec3<bool>(var_1.b.x, true, false), var_1.b.x))), Struct_2(arg_0.c, min(~var_1.c, _wgslsmith_div_vec2_i32(~var_1.c, -var_1.c)), vec2<i32>(u_input.a, 0i), _wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(984i, -2147483647i, u_input.a), vec3<i32>(arg_0.c.x, -32167i, -10136i)), ~vec3<i32>(1i, arg_1, arg_1)), !vec3<bool>(false, arg_0.c.x == var_1.c.x, false))).x;
    global3 = array<u32, 30>();
    return Struct_3(~(~reverseBits(_wgslsmith_clamp_u32(arg_2.a, global2[_wgslsmith_index_u32(51824u, 25u)], arg_2.a))), var_1.a.x);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global3 = array<u32, 30>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(178f)))), _wgslsmith_f_op_f32(-arg_0.b)));
    global2 = array<u32, 25>();
    global0 = array<bool, 15>();
    var_0 = -760f;
    return func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.b, arg_0.b, 867f))))), select(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(21295u, 4294967295u), vec2<u32>(7833u, 81236u)), Struct_2(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.a, 15u)], true)), Struct_2(vec2<i32>(35598i, 2147483647i), vec2<i32>(u_input.a, -1i), vec2<i32>(0i, -28911i), vec3<i32>(u_input.b, -25284i, -2147483647i), vec3<bool>(global0[_wgslsmith_index_u32(14896u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(arg_0.a, 15u)]))), func_3(~4294967295u, Struct_2(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, -26213i), vec3<i32>(-11978i, 0i, 0i), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 15u)], global0[_wgslsmith_index_u32(41640u, 15u)])), Struct_2(vec2<i32>(-18948i, u_input.a), vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.b, u_input.b), vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<bool>(true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 15u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a, 25u)], 25u)], 30u)], 15u)]))), true), ~vec2<i32>(0i ^ u_input.a, u_input.b ^ 0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1841f, -1714f, 863f, arg_0.b) + vec4<f32>(124f, -1000f, arg_0.b, -617f)))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), 1684f, _wgslsmith_f_op_f32(f32(-1f) * -185f), -1303f)), _wgslsmith_f_op_f32(-arg_0.b)), ~u_input.a, arg_0);
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = func_5(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_2(abs(vec3<i32>(-34289i, u_input.a, -33338i)), 0i)), vec2<bool>(53948u == global2[_wgslsmith_index_u32(1u, 25u)], !global0[_wgslsmith_index_u32(u_input.c, 15u)]), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b, u_input.b), -vec2<i32>(-39418i, 6432i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 2113f, 2456f, arg_0), vec4<f32>(arg_0, arg_0, -1000f, arg_0)))), 1546f), _wgslsmith_mult_i32(u_input.a, ~u_input.a), Struct_3(global3[_wgslsmith_index_u32(73146u, 30u)], 1540f)));
    global0 = array<bool, 15>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 297f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -332f, var_0.b), vec3<f32>(arg_0, -1057f, 394f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_0.b, -1414f) + vec3<f32>(-1000f, -407f, 1000f)) * vec3<f32>(var_0.b, 589f, var_0.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-614f, -382f, arg_0))), _wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(u_input.b, u_input.b, u_input.b), 0i))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(u_input.b, -2147483647i, u_input.a), -2147483647i)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1446f, var_0.b, var_0.b))))), func_3(~4294967295u, Struct_2(vec2<i32>(u_input.b, u_input.a) << (~vec2<u32>(202u, global2[_wgslsmith_index_u32(var_0.a, 25u)]) % vec2<u32>(32u)), firstTrailingBit(~vec2<i32>(-1i, u_input.a)), -vec2<i32>(u_input.b, u_input.a), min(~vec3<i32>(-1i, u_input.b, 11431i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(0i, u_input.a, -32452i))), vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 15u)], true)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15615u, 30u)], 30u)] <= global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 25u)], true)), Struct_2(~vec2<i32>(u_input.a, 41189i), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.a, -2147483647i)), vec2<i32>(u_input.b, -46644i) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(-34892i, 3709i) << (vec2<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 30u)], 25u)], u_input.c) % vec2<u32>(32u))), vec3<i32>(2147483647i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(94370i, u_input.a, 0i))), select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c, 15u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 15u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a, 25u)], 15u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 30u)], 30u)], 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], true, global0[_wgslsmith_index_u32(var_0.a, 15u)]), false), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 30u)], 25u)], 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)])))), ~abs(_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(1i, 0i))) | _wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 8301i), vec2<i32>(0i, 2147483647i)), -(~vec2<i32>(0i, u_input.b)), vec2<i32>(~u_input.b, -u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, var_0.b, var_0.b, -722f), vec4<f32>(295f, 807f, arg_0, var_0.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(2068f - -1068f)) * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(min(1396f, var_0.b)))) * 130f));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 1280f, arg_0), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 126f, -1036f), var_1.a)), var_1.c.x < 85545i)))) + var_1.d.yxz), var_1.b, vec2<i32>(1i, 2147483647i) ^ ~vec2<i32>(u_input.a, u_input.a), vec4<f32>(arg_0, _wgslsmith_f_op_f32(205f + -290f), -379f, -1445f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -729f)));
    let var_3 = var_1.d;
    return abs(~var_2.c.x);
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = arg_2 >> (countOneBits(vec2<u32>(~func_4(Struct_1(vec3<f32>(-1089f, arg_0.b, 1575f), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(arg_0.a, 15u)]), arg_2, vec4<f32>(arg_0.b, arg_0.b, 279f, arg_0.b), -709f), u_input.b, arg_0).a, 7368u)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1097f, arg_0.b, 381f), vec3<f32>(1661f, -1206f, 1120f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1424f, arg_0.b, 1066f) - vec3<f32>(arg_0.b, arg_0.b, arg_0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, 764f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b, -2171f, arg_0.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.b, -152f, arg_0.b)))) + vec3<f32>(-911f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-762f - -1254f))))));
    var var_2 = _wgslsmith_sub_vec2_i32(~vec2<i32>(arg_1, 27828i) | var_0, _wgslsmith_add_vec2_i32(~vec2<i32>(1593i, 2147483647i), countOneBits(vec2<i32>(0i, 2147483647i)))) & vec2<i32>(-24425i, arg_2.x);
    let var_3 = _wgslsmith_div_u32(1u, ~arg_0.a);
    var var_4 = func_3(~(~(~1u)), Struct_2(abs(-vec2<i32>(u_input.b, -28419i)), arg_2, _wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.b, 0i), ~arg_2, all(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)]))), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(28143i, -39694i), arg_2))), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.x, 2147483647i, -2147483647i), -vec3<i32>(0i, arg_2.x, var_0.x) << (min(vec3<u32>(4294967295u, 4489u, 36048u), vec3<u32>(arg_0.a, 32980u, 2394u)) % vec3<u32>(32u))), vec3<bool>(global0[_wgslsmith_index_u32(var_3 | ~4294967295u, 15u)], !(global2[_wgslsmith_index_u32(14385u, 25u)] < 3896u), !all(global1[_wgslsmith_index_u32(4294967295u, 20u)]))), Struct_2(min(var_0, min(arg_2 | vec2<i32>(var_2.x, 20454i), _wgslsmith_mult_vec2_i32(arg_2, vec2<i32>(0i, var_0.x)))), abs(-vec2<i32>(arg_2.x, -2147483647i)), arg_2, ~countOneBits(vec3<i32>(-1132i, arg_2.x, u_input.b) & vec3<i32>(arg_1, 46112i, arg_2.x)), vec3<bool>(~u_input.c > 60621u, any(vec2<bool>(true, true)), !(global2[_wgslsmith_index_u32(13036u, 25u)] <= 3630u)))).x;
    return func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(round(-958f)), _wgslsmith_f_op_f32(f32(-1f) * -914f))), func_3(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(28920u, 1u, var_3)), _wgslsmith_sub_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 19596u, 4294967295u), vec3<u32>(0u, 0u, arg_0.a))), Struct_2(firstTrailingBit(arg_2), -var_0, vec2<i32>(var_2.x, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(3021i, var_2.x, 1i), vec3<i32>(-11665i, 40019i, 0i)), !vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42996u, 25u)], 15u)], global0[_wgslsmith_index_u32(38973u, 15u)], true)), Struct_2(select(vec2<i32>(-38699i, 1i), vec2<i32>(arg_2.x, var_2.x), false), vec2<i32>(-16288i, 14171i), vec2<i32>(2147483647i, 47980i) >> (vec2<u32>(var_3, arg_0.a) % vec2<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, -31296i, arg_1), vec3<i32>(16819i, arg_2.x, u_input.a)), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 15u)], global0[_wgslsmith_index_u32(88953u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]))), ~vec2<i32>(-8441i, arg_2.x), vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1117f, 512f) * _wgslsmith_f_op_f32(var_1.x * var_1.x)), 295f, -120f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x), -413f, false))), var_0.x, func_5(Struct_3(4294967295u, func_5(func_4(Struct_1(var_1, vec2<bool>(true, global0[_wgslsmith_index_u32(47737u, 15u)]), var_0, vec4<f32>(arg_0.b, 3250f, var_1.x, 1367f), -1475f), -2147483647i, Struct_3(86748u, var_1.x))).b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(28872u, _wgslsmith_f_op_f32(-2974f - -372f)), -48209i, vec2<i32>(func_1(_wgslsmith_f_op_f32(453f - 482f)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-7622i, -2147483647i, 4457i, -36083i), vec4<i32>(u_input.a, u_input.a, 2147483647i, -8722i)), abs(vec4<i32>(-21832i, u_input.b, 29655i, 10402i)))) & _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, u_input.a), -countOneBits(vec2<i32>(22368i, u_input.b)), vec2<i32>(u_input.b, i32(-1i) * -9967i)));
    global0 = array<bool, 15>();
    var var_1 = Struct_2(-vec2<i32>(u_input.a, ~4518i), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i) << (vec2<u32>(u_input.c, var_0.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -1404i) ^ vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.a, u_input.a)))), -(~(vec2<i32>(u_input.b, u_input.a) | abs(vec2<i32>(u_input.b, u_input.b)))), select(-countOneBits(vec3<i32>(u_input.b, 5220i, u_input.b) << (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u))), select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -13629i, 13159i, u_input.b), vec4<i32>(u_input.b, 29326i, 0i, u_input.b)), abs(0i), func_1(var_0.b)), vec3<i32>(u_input.a, u_input.a & 0i, -45175i), false), !vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 15u)], true, !global0[_wgslsmith_index_u32(u_input.c, 15u)])), vec3<bool>(all(!vec3<bool>(true, global0[_wgslsmith_index_u32(113635u, 15u)], true)), -abs(62650i) == _wgslsmith_div_i32(select(-1i, u_input.a, global0[_wgslsmith_index_u32(var_0.a, 15u)]), _wgslsmith_div_i32(u_input.a, 16403i)), true));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, 38259u, 57050u, ~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~0u, 25u)], global2[_wgslsmith_index_u32(11788u, 25u)])), ~min(~(~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 30u)], 0u, 1u, global3[_wgslsmith_index_u32(6119u, 30u)])), vec4<u32>(var_0.a << (1u % 32u), var_0.a >> (var_0.a % 32u), 14185u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-635f + -453f) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.b, -1306f)))), _wgslsmith_f_op_f32(-1997f + _wgslsmith_f_op_f32(func_5(Struct_3(1u, var_0.b)).b + _wgslsmith_f_op_f32(-var_0.b))), -124f), abs(_wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), -2147483647i)), var_0.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -741f), -1006f, _wgslsmith_f_op_f32(f32(-1f) * -2593f), _wgslsmith_f_op_f32(567f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-912f)), _wgslsmith_f_op_f32(var_0.b + -1154f))))));
}

