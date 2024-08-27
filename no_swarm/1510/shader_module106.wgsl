struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(511f, -854f), vec2<f32>(881f, 659f), vec2<f32>(188f, 734f), vec2<f32>(1000f, 631f), vec2<f32>(-873f, 663f), vec2<f32>(1289f, 1384f), vec2<f32>(-900f, 883f));

var<private> global1: array<u32, 1>;

var<private> global2: bool;

var<private> global3: vec4<i32> = vec4<i32>(23377i, 0i, 18726i, -1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-902f, -123f))), 1000f), -852f, -563f, 1123f), vec4<f32>(1684f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a))), arg_1.a, -194f));
    let var_1 = vec4<bool>(~_wgslsmith_add_u32(arg_0 & 1u, reverseBits(arg_0)) <= _wgslsmith_add_u32(arg_0 | 4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, u_input.b), 1u)]), any(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), false)), true, all(vec2<bool>(true, !any(vec2<bool>(false, false)))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))), true));
    var var_3 = arg_1;
    var var_4 = select(vec4<bool>(false, var_1.x, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - 1000f) <= -849f), !vec4<bool>(true, var_1.x, true, !var_1.x & true), vec4<bool>(true, true, var_1.x, true));
    return 8335u;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = vec3<u32>(~84695u, countOneBits(65447u >> (abs(func_3(15161u, Struct_1(-1503f, -7318i, vec4<u32>(u_input.b, 81167u, 4294967295u, 0u), 4294967295u))) % 32u)), 1u);
    global0 = array<vec2<f32>, 7>();
    var var_1 = !select(vec4<bool>(true, !arg_2.x, arg_2.x, any(!vec4<bool>(false, true, arg_2.x, arg_2.x))), select(arg_2, select(!vec4<bool>(false, arg_2.x, false, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), !arg_2), vec4<bool>(true, any(vec3<bool>(true, true, arg_2.x)), !arg_2.x, any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false)))), select(!(!arg_2), select(vec4<bool>(true, true, true, true), arg_2, all(vec2<bool>(false, true))), all(arg_2.xyw)));
    global3 = vec4<i32>(_wgslsmith_dot_vec3_i32(~global3.xxx << (arg_0 % vec3<u32>(32u)), global3.zxz), countOneBits(_wgslsmith_add_i32(arg_1.x, _wgslsmith_mult_i32(u_input.c.x, -2147483647i))), u_input.c.x, abs(-13506i));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f + 1506f) * -890f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(373f + 146f) + -1556f))))));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17474u, 1u)], 1u)], u_input.b, var_0.x, 67506u), vec4<u32>(1u, 9252u, global1[_wgslsmith_index_u32(1u, 1u)], u_input.b))), firstTrailingBit(~(vec4<u32>(51605u, 0u, 0u, 0u) & vec4<u32>(u_input.b, 0u, 0u, 43424u)))), min(firstTrailingBit(vec4<u32>(u_input.b, arg_0.x, 0u, 15247u)) | (reverseBits(vec4<u32>(0u, 42819u, 24221u, global1[_wgslsmith_index_u32(0u, 1u)])) << ((vec4<u32>(0u, u_input.b, 0u, var_0.x) >> (vec4<u32>(1u, arg_0.x, 61134u, global1[_wgslsmith_index_u32(68200u, 1u)]) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(global1[_wgslsmith_index_u32(countOneBits(u_input.b) & 9960u, 1u)], u_input.b, u_input.b, ~firstTrailingBit(global1[_wgslsmith_index_u32(20962u, 1u)]))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<u32, 1>();
    let var_0 = Struct_1(763f, arg_1.b, vec4<u32>(~select(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.b, 1u)], 46378u), arg_0.c.x, any(vec2<bool>(true, true))), global1[_wgslsmith_index_u32(1u, 1u)], ~_wgslsmith_div_u32(_wgslsmith_add_u32(14093u, 1u), 1u), firstLeadingBit(~19884u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0.d, ~firstLeadingBit(global1[_wgslsmith_index_u32(arg_0.c.x, 1u)])), ~arg_1.c.xyy));
    global0 = array<vec2<f32>, 7>();
    global2 = _wgslsmith_div_u32(countOneBits(~u_input.b), 46902u) <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) & (arg_0.c.ww >> (vec2<u32>(56142u, var_0.c.x) % vec2<u32>(32u))), vec2<u32>(67370u, min(4901u, 29958u)));
    let var_1 = Struct_1(-1577f, i32(-1i) * -_wgslsmith_mod_i32(~var_0.b, u_input.c.x), countOneBits(firstTrailingBit(~func_2(arg_0.c.zzz, u_input.a.yx, vec4<bool>(false, false, true, true)))), 1u);
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> bool {
    let var_0 = Struct_1(127f, _wgslsmith_dot_vec4_i32(u_input.d | abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(22448i, -2147483647i, global3.x, global3.x), u_input.d, u_input.d)), countOneBits(u_input.d)), _wgslsmith_sub_vec4_u32(~(firstTrailingBit(vec4<u32>(0u, 0u, 4294967295u, arg_0)) << (~vec4<u32>(1u, 18564u, 14182u, 4294967295u) % vec4<u32>(32u))), ~(~(~vec4<u32>(arg_1.x, global1[_wgslsmith_index_u32(0u, 1u)], 20456u, arg_0)))), u_input.b);
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(var_0.a * 500f), countOneBits(abs(u_input.a.x)) | 2147483647i, func_2(~_wgslsmith_add_vec3_u32(vec3<u32>(34494u, 59257u, 31253u), vec3<u32>(4294967295u, arg_0, arg_0)), u_input.d.zy, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), 0u), var_0);
    let var_2 = var_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), !(global1[_wgslsmith_index_u32(47607u, 1u)] <= u_input.b)), vec3<bool>(true, func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(58409u, global1[_wgslsmith_index_u32(54962u, 1u)]), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 1u)])), vec2<u32>(22264u, 4294967295u) | vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(39384u, 1u)])) | select(true, select(true, false, false), any(vec4<bool>(true, false, false, true))), all(vec3<bool>(false, false, false)) && (firstTrailingBit(-1059i) == u_input.d.x)), _wgslsmith_div_f32(-941f, _wgslsmith_f_op_f32(trunc(-1002f))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(func_3(4294967295u, Struct_1(1942f, 2147483647i, vec4<u32>(0u, 24484u, 27463u, 1u), u_input.b)) & 0u, 7u)] + _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~abs(0u), 7u)] - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1858f), _wgslsmith_f_op_f32(f32(-1f) * -417f)))) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-273f)) + _wgslsmith_f_op_f32(f32(-1f) * -1093f)))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(-1135f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_mult_i32(min(_wgslsmith_dot_vec4_i32(countOneBits(u_input.d), u_input.d), -1i), u_input.c.x), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(1u, 1u)], 4294967295u) << (abs(vec4<u32>(34041u, 1116u, u_input.b, global1[_wgslsmith_index_u32(u_input.b, 1u)])) % vec4<u32>(32u))), select(~min(vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 1u)], 1u, u_input.b), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 1u)], 1u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57014u, 1u)], 1u)], u_input.b)), vec4<u32>(57884u, u_input.b, global1[_wgslsmith_index_u32(49956u, 1u)], global1[_wgslsmith_index_u32(~44427u, 1u)]), select(vec4<bool>(true, var_0.x, false, true), select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), var_0.x)), vec4<u32>(max(global1[_wgslsmith_index_u32(select(4294967295u, 0u, true), 1u)], ~1u), countOneBits(36798u) ^ _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 4294967295u), _wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(0u, 1u)]) & _wgslsmith_sub_u32(u_input.b, global1[_wgslsmith_index_u32(1u, 1u)]), abs(~4294967295u))), firstTrailingBit(~global1[_wgslsmith_index_u32(~1u, 1u)]));
    var var_3 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(~(-global3.x), _wgslsmith_mod_i32(var_2.b ^ u_input.d.x, ~2147483647i), 2147483647i, ~(u_input.c.x ^ 22227i)), vec4<i32>(18007i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(47999i, u_input.d.x), u_input.a.x, u_input.a.x), var_2.b, 2147483647i));
    let var_4 = u_input.b | var_2.d;
    var var_5 = _wgslsmith_mult_vec4_u32(~var_2.c, ~(~(~var_2.c | select(vec4<u32>(1u, var_2.d, var_2.d, 15509u), vec4<u32>(u_input.b, u_input.b, u_input.b, var_2.c.x), vec4<bool>(var_0.x, false, true, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-585f, -958f, -1084f, -228f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1177f, -224f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_1.x, var_2.a, var_1.x) + vec4<f32>(169f, -1000f, var_1.x, 1000f)))))), _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x, 1i, 27684i), ~vec3<i32>(var_2.b, -3495i, global3.x))), vec3<i32>(~(var_2.b | 0i), -var_3.x, var_2.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-424f, var_1.x, var_2.a, var_1.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(895f, -112f, 346f, 111f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -144f, 1000f, var_2.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1225f, -1764f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1202f, var_2.a, 160f, var_1.x))))), _wgslsmith_add_vec3_u32(~(~vec3<u32>(1u, var_5.x, var_4)) | vec3<u32>(~4294967295u, func_3(6043u, var_2), 0u), reverseBits(var_2.c.zyw)));
}

