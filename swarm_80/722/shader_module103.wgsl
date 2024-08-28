struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: i32;

var<private> global2: u32;

var<private> global3: array<u32, 11> = array<u32, 11>(15986u, 2583u, 66872u, 4294967295u, 53690u, 1u, 65627u, 10107u, 0u, 46309u, 11224u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = arg_3;
    var var_1 = var_0;
    global2 = min(73602u, ~arg_3.c.x & 1u) ^ ~var_1.c.x;
    let var_2 = !all(vec4<bool>(arg_1, any(vec3<bool>(false, false, arg_1)), !all(vec3<bool>(false, arg_2.b.x, false)), false));
    var var_3 = select(vec4<u32>(_wgslsmith_clamp_u32(abs(arg_3.c.x), ~(~0u), 17020u), firstLeadingBit(~56365u), global3[_wgslsmith_index_u32(1u, 11u)], 65635u), ~(vec4<u32>(54997u, arg_3.c.x, _wgslsmith_div_u32(var_1.c.x, 0u), var_0.c.x >> (0u % 32u)) | vec4<u32>(0u, max(32066u, var_1.c.x), min(arg_3.c.x, var_1.c.x), reverseBits(9708u))), var_1.d);
    return firstLeadingBit(firstLeadingBit(vec4<i32>(-1i, ~36203i, var_1.b, countOneBits(var_1.b << (global3[_wgslsmith_index_u32(var_1.c.x, 11u)] % 32u)))));
}

fn func_4(arg_0: vec4<i32>) -> vec2<i32> {
    var var_0 = vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(countOneBits(4294967295u), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)]), ~min(global3[_wgslsmith_index_u32(19707u, 11u)] << (global3[_wgslsmith_index_u32(6787u, 11u)] % 32u), 51255u)), 11u)], _wgslsmith_dot_vec2_u32(min(vec2<u32>(firstTrailingBit(6384u), select(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45736u, 11u)], 11u)], false)), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33245u, 11u)], 11u)], 8867u)), vec2<u32>(29797u, 1u))), min(vec2<u32>(0u, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(126887u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8780u, 11u)], 11u)], 11u)], 11u)]), 11u)]), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)]), vec2<u32>(global3[_wgslsmith_index_u32(49457u, 11u)], global3[_wgslsmith_index_u32(15026u, 11u)])), select(vec2<u32>(global3[_wgslsmith_index_u32(49513u, 11u)], global3[_wgslsmith_index_u32(1u, 11u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9819u, 11u)], 11u)], 11u)], 26578u), false)))));
    let var_1 = all(select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), vec3<bool>(true, true, any(vec4<bool>(false, true, false, true)))), select(vec3<bool>(true, true, true), vec3<bool>(true, 33047u < var_0.x, all(vec3<bool>(false, false, true))), false), vec3<bool>(any(vec4<bool>(false, true, true, true)), false, true)));
    global2 = max(((4294967295u | reverseBits(var_0.x)) << (4294967295u % 32u)) >> (12573u % 32u), firstLeadingBit(~(~(~var_0.x))));
    let var_2 = Struct_3(-arg_0.wx, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1547f, 329f, -1000f, -1538f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1463f, 695f, -1000f, 770f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-992f)), _wgslsmith_div_f32(556f, -1000f), 213f, _wgslsmith_f_op_f32(614f * 490f)))), ~((min(vec3<u32>(9574u, 35837u, 0u), vec3<u32>(57383u, var_0.x, 57504u)) & abs(vec3<u32>(55172u, 4294967295u, var_0.x))) & select(vec3<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50889u, 11u)], 11u)], 0u) << (vec3<u32>(var_0.x, 0u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(var_0.x, var_0.x, 0u), true)), Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(806f, -1000f))), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(var_1, true), var_1), select(vec2<bool>(var_1, true), vec2<bool>(true, var_1), true))), -22236i, vec2<u32>(var_0.x, ~abs(var_0.x)), all(!vec3<bool>(var_1, var_1, var_1))));
    var var_3 = !(!((var_2.d.a.b.x && (global3[_wgslsmith_index_u32(var_2.d.c.x, 11u)] > global3[_wgslsmith_index_u32(var_0.x, 11u)])) || !select(true, false, true)));
    return var_2.a;
}

fn func_2() -> bool {
    global1 = ~(-2147483647i);
    global3 = array<u32, 11>();
    global2 = ~(~1u);
    var var_0 = vec2<f32>(-509f, 1f);
    var var_1 = Struct_3(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -73147i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, 1i, 1i)), -vec4<i32>(36230i, u_input.a.x, -9997i, -34159i)), u_input.a.x & -6992i), func_4(func_3(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), true, Struct_1(495f, vec2<bool>(true, true)), Struct_2(Struct_1(var_0.x, vec2<bool>(true, false)), -1i, vec2<u32>(87670u, 30914u), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, 281f, 1000f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1310f, var_0.x, -1862f, 1092f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1734f, var_0.x)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(~1u, global3[_wgslsmith_index_u32(max(27660u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11372u, 11u)], 11u)], 11u)], 11u)]), 11u)], ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)]), min(_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54431u, 11u)], 11u)], 11u)]), vec3<u32>(4623u, 0u, global3[_wgslsmith_index_u32(1u, 11u)])), vec3<u32>(3858u, global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(1u, 11u)]) | vec3<u32>(28840u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4173u, 11u)], 11u)], global3[_wgslsmith_index_u32(15319u, 11u)]))), Struct_2(Struct_1(var_0.x, select(vec2<bool>(true, false), vec2<bool>(false, false), true)), 2147483647i, _wgslsmith_mult_vec2_u32((vec2<u32>(0u, 1u) & vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8090u, 11u)], 11u)], global3[_wgslsmith_index_u32(16864u, 11u)])) & vec2<u32>(1u, 4294967295u), firstLeadingBit(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 11u)], 4294967295u))), true));
    return !all(vec3<bool>(false, var_1.d.d, any(!vec3<bool>(true, true, var_1.d.d))));
}

fn func_1() -> Struct_3 {
    var var_0 = !(!vec4<bool>(select(true, true, true), true, false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    let var_1 = vec2<bool>(true, (!any(var_0.xyw) || true) & !select(any(var_0.xwz), any(var_0.zwz), var_0.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(-1458f, -1616f, true)), _wgslsmith_f_op_f32(round(640f)), -350f, -293f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2483f, 259f, -1822f, -1043f), vec4<f32>(-502f, -150f, 1357f, 811f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1564f, -948f, -332f, 230f) * vec4<f32>(387f, -758f, 137f, 970f)))))), all(vec2<bool>(all(var_0.xyz), func_2()))));
    let var_3 = min(vec4<u32>(~(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(66184u, 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44204u, 11u)], 11u)])), global3[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(min(6651u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), 11u)]), 11u)], abs(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(125248u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)] % 32u), 11u)], firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 11u)])), 11u)]), 4294967295u), vec4<u32>(countOneBits(min(0u << (global3[_wgslsmith_index_u32(134919u, 11u)] % 32u), global3[_wgslsmith_index_u32(63664u, 11u)])), global3[_wgslsmith_index_u32(max(abs(global3[_wgslsmith_index_u32(4294967295u, 11u)]) ^ (8089u ^ global3[_wgslsmith_index_u32(0u, 11u)]), global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(~1u, 11u)]), 11u)]), 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34011u, 11u)], 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(12691u, 63015u), 11u)], 11u)], 11u)], 11u)] >> (4294967295u % 32u), 11u)]));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1159f), !var_0.yz), 30720i, ~(~_wgslsmith_sub_vec2_u32(var_3.wz | var_3.ww, ~vec2<u32>(4294967295u, 28595u))), !(!func_2()));
    return Struct_3(-(~(~func_4(u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-217f, -1458f, var_2.x, 1f) - vec4<f32>(var_2.x, _wgslsmith_div_f32(1000f, var_2.x), -1000f, _wgslsmith_f_op_f32(var_4.a.a * var_4.a.a)))), abs(var_3.xzw | vec3<u32>(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(29859u, 11u)], 30679u), 34312u, select(var_3.x, var_3.x, var_1.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(var_4.a.a * _wgslsmith_f_op_f32(round(var_4.a.a))), var_4.a.b), 1i, abs(~vec2<u32>(32553u, global3[_wgslsmith_index_u32(var_4.c.x, 11u)])), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = true;
    var_0 = Struct_3(firstTrailingBit(-_wgslsmith_sub_vec2_i32(var_0.a, vec2<i32>(u_input.a.x, 3627i)) >> ((~var_0.d.c | var_0.c.zy) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(480f, -1219f, -1750f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(340f)) - _wgslsmith_f_op_f32(418f + 916f))))), vec3<u32>(~(~(global3[_wgslsmith_index_u32(var_0.c.x, 11u)] >> (4294967295u % 32u))), abs(global3[_wgslsmith_index_u32(4294967295u, 11u)]), 28486u), var_0.d);
    var_1 = true;
    let var_2 = select(func_4(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), u_input.a.x, u_input.a.x, 19754i)), -_wgslsmith_sub_vec2_i32(countOneBits(u_input.a.zw), u_input.a.xz ^ (vec2<i32>(-1i, var_0.d.b) >> (vec2<u32>(13625u, var_0.c.x) % vec2<u32>(32u)))), !var_0.d.a.b);
    global1 = func_4(u_input.a).x;
    let var_3 = _wgslsmith_f_op_f32(sign(1450f));
    var var_4 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32((var_4.c.x ^ 3156u) & func_1().d.c.x, var_0.c.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(33928u, var_0.c.x), var_0.d.c)), abs(global3[_wgslsmith_index_u32(7126u, 11u)]), 1228f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_3, -1665f)), -907f)), func_3(select(!vec4<bool>(var_4.a.b.x, false, var_4.d, var_0.d.d), select(vec4<bool>(true, var_0.d.a.b.x, true, false), vec4<bool>(var_0.d.d, false, true, false), true), !select(vec4<bool>(var_0.d.a.b.x, var_4.d, var_0.d.a.b.x, var_0.d.d), vec4<bool>(false, false, false, true), var_4.a.b.x)), all(var_0.d.a.b), var_4.a, var_0.d));
}

