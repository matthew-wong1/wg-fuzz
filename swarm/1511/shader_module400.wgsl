struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 119805u, 0u);

var<private> global3: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-64146i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(1i, 6233i, i32(-2147483648), 2147483647i), vec4<i32>(-9824i, i32(-2147483648), -1i, -33147i), vec4<i32>(2268i, 29830i, 2147483647i, 2147483647i), vec4<i32>(12381i, -318i, 1i, 2147483647i), vec4<i32>(1i, 0i, 8369i, -9795i), vec4<i32>(-88903i, 0i, 60009i, 0i), vec4<i32>(0i, 20316i, -5753i, 28346i), vec4<i32>(-1i, 0i, -3371i, -36115i), vec4<i32>(-55482i, -68023i, -6992i, -9583i), vec4<i32>(-1i, 1i, 1i, 20602i), vec4<i32>(1i, i32(-2147483648), -23797i, -15812i), vec4<i32>(-13866i, 0i, 1i, i32(-2147483648)), vec4<i32>(-12204i, -1i, 57493i, -33187i), vec4<i32>(17257i, 2147483647i, 13671i, -1i), vec4<i32>(25070i, 959i, i32(-2147483648), -7495i), vec4<i32>(0i, 1i, 19960i, -1i), vec4<i32>(6617i, -6225i, 2147483647i, 1i), vec4<i32>(-30853i, 1i, 49215i, -1i), vec4<i32>(-30316i, 28994i, -13452i, i32(-2147483648)), vec4<i32>(-11556i, i32(-2147483648), -39236i, -1i), vec4<i32>(-8698i, -35574i, -8491i, -69311i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = 1329f;
    global2 = ~(~vec3<u32>(abs(global2.x), ~global2.x, global2.x)) ^ ~vec3<u32>(4294967295u, global2.x, ~55585u);
    global3 = array<vec4<i32>, 22>();
    var var_1 = (global2.xx >> (vec2<u32>(_wgslsmith_add_u32(abs(1u), global2.x), global2.x) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(vec2<u32>(38757u, ~(~global2.x)), ~vec2<u32>(_wgslsmith_clamp_u32(29827u, 4294967295u, 15609u), ~28839u));
    global1 = Struct_1(arg_2.a);
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(~var_1.x, global2.x), ~0u);
}

fn func_2(arg_0: i32, arg_1: u32) -> vec3<u32> {
    let var_0 = ~(-(~vec3<i32>(-22851i, global1.a.x, -52953i))) >> (vec3<u32>(1u, ~func_3(Struct_1(vec3<i32>(-8546i, u_input.a, arg_0)), vec4<i32>(0i, u_input.a, 4394i, -5005i), Struct_1(vec3<i32>(global1.a.x, -1i, global1.a.x)), true), 17675u) % vec3<u32>(32u));
    global1 = Struct_1(~abs(select(vec3<i32>(-2147483647i, arg_0, arg_0) ^ global1.a, min(vec3<i32>(u_input.a, 2147483647i, 41222i), var_0), true)));
    var var_1 = Struct_1(~vec3<i32>(select(-42633i, arg_0, true), 1i, 37687i) << (vec3<u32>(0u, 21513u & arg_1, arg_1) % vec3<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(arg_1, 11u)], ~(-1596i), -30447i), global1.a));
    global2 = vec3<u32>(_wgslsmith_mod_u32(arg_1, _wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, firstLeadingBit(1u)), abs(~1u))), arg_1, 4294967295u);
    return select(vec3<u32>(global2.x, arg_1, 1u), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_1, arg_1), min(vec3<u32>(global2.x, arg_1, 11929u), vec3<u32>(0u, global2.x, global2.x)))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(select(true, false, true), true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), true));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = ~func_2((_wgslsmith_mod_i32(arg_2.x, 1i) | global1.a.x) >> ((_wgslsmith_mod_u32(global2.x, global2.x) | _wgslsmith_dot_vec2_u32(global2.yy, vec2<u32>(global2.x, global2.x))) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 71036u), ~vec2<u32>(64995u, global2.x)), global2.yz));
    var var_1 = abs(~(~4294967295u));
    global2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ((_wgslsmith_sub_vec3_u32(var_0, vec3<u32>(var_0.x, var_0.x, var_0.x)) & var_0) ^ ((var_0 ^ vec3<u32>(461u, var_0.x, global2.x)) & var_0)) ^ _wgslsmith_add_vec3_u32(var_0, var_0), ~var_0);
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_sub_i32(arg_1.a.x, arg_1.a.x);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> vec3<i32> {
    global0 = array<i32, 11>();
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-357f, -664f)))), vec2<f32>(-1604f, _wgslsmith_f_op_f32(ceil(1366f)))))), arg_0, global1.a);
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a & _wgslsmith_mod_i32(-2147483647i, -1i), (35842i & u_input.a) << (global2.x % 32u), 51035i), countOneBits(vec3<i32>(global1.a.x, _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(global2.x, 22u)], global3[_wgslsmith_index_u32(arg_1.x, 22u)]), ~2147483647i))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1111f, -262f)) * 1f)))));
    let var_3 = -(global1.a.yx & -arg_0.a.zy);
    return var_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<i32, 11>();
    global2 = vec3<u32>(global2.x, global2.x, _wgslsmith_add_u32(global2.x, global2.x));
    let var_0 = Struct_1(-abs(func_4(arg_3, func_2(-429i, global2.x), global0[_wgslsmith_index_u32(global2.x, 11u)] << (global2.x % 32u), arg_2.x || false)));
    global2 = select(~(~(vec3<u32>(global2.x, global2.x, global2.x) ^ select(vec3<u32>(4294967295u, global2.x, global2.x), vec3<u32>(4294967295u, 39872u, global2.x), true))), max(abs(firstTrailingBit(vec3<u32>(global2.x, global2.x, 1u))), max(~vec3<u32>(52885u, global2.x, 36267u) >> (func_2(global0[_wgslsmith_index_u32(21278u, 11u)], global2.x) % vec3<u32>(32u)), ~vec3<u32>(global2.x, global2.x, 49703u) ^ (vec3<u32>(4294967295u, global2.x, 0u) ^ vec3<u32>(1u, global2.x, 26498u)))), false);
    var var_1 = _wgslsmith_sub_vec3_i32(min(firstTrailingBit(arg_3.a & vec3<i32>(global1.a.x, 68195i, -22160i)), vec3<i32>(max(global0[_wgslsmith_index_u32(global2.x, 11u)], global0[_wgslsmith_index_u32(global2.x, 11u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 14521i, arg_3.a.x, -18897i), global3[_wgslsmith_index_u32(global2.x, 22u)]), 3699i)), vec3<i32>(-47906i, _wgslsmith_clamp_i32(arg_3.a.x, arg_0.a.x, countOneBits(global1.a.x)), 1i)) ^ _wgslsmith_mult_vec3_i32(arg_3.a, var_0.a);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<i32>, 22>();
    var var_0 = vec2<u32>(global2.x, global2.x) << (vec2<u32>(global2.x, 4294967295u) % vec2<u32>(32u));
    let var_1 = false;
    global3 = array<vec4<i32>, 22>();
    let var_2 = func_5(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(43789u, 11u)], 0i) << (vec3<u32>(global2.x, global2.x, global2.x) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, select(-13027i, 2147483647i, false)), func_4(func_1(vec2<f32>(446f, -1625f), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], -48463i)), global1.a), ~vec3<u32>(var_0.x, var_0.x, 0u), 39350i, false && var_1))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f * -350f))))), !(!vec4<bool>(var_1, global0[_wgslsmith_index_u32(var_0.x, 11u)] < global1.a.x, var_1, true)), func_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1001f, -1027f, true)))), -855f), func_1(_wgslsmith_div_vec2_f32(vec2<f32>(317f, -745f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(181f, 376f))), Struct_1(global1.a), global1.a), -firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(38513u, 11u)], global0[_wgslsmith_index_u32(global2.x, 11u)])) | (-global1.a ^ func_1(vec2<f32>(2044f, 727f), Struct_1(vec3<i32>(-13757i, global0[_wgslsmith_index_u32(global2.x, 11u)], global1.a.x)), global1.a).a)));
    var var_3 = Struct_1(global1.a);
    global1 = Struct_1(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(var_3.a.x, 0i), countOneBits(max(countOneBits(vec4<u32>(global2.x, 1u, 4294967295u, global2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(38507u, 4294967295u, var_0.x, var_0.x), vec4<u32>(0u, 4294967295u, 1u, global2.x))) | (vec4<u32>(103765u, 1u, 4294967295u, 68645u) | firstTrailingBit(vec4<u32>(80661u, var_0.x, global2.x, global2.x)))), ~_wgslsmith_clamp_i32(-var_3.a.x, ~0i, global0[_wgslsmith_index_u32(global2.x, 11u)]));
}

