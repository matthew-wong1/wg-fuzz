struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-1000f, -1472f, -197f, -1142f, 770f, -896f, -198f, -519f, 382f, -774f, -746f, -1734f, -346f, -316f, 1357f, -1000f, 585f, 710f, -963f, -509f, 1404f, -1000f, -1000f, -947f, -283f, -650f, -389f, -467f, -252f, -1082f);

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), 1i), Struct_1(vec3<i32>(34516i, -30209i, -1i), 12557i), Struct_1(vec3<i32>(47418i, 18842i, -32387i), -1i), Struct_1(vec3<i32>(18632i, 1i, 6025i), -27131i), Struct_1(vec3<i32>(i32(-2147483648), -1i, -1i), -28200i), Struct_1(vec3<i32>(11644i, 2147483647i, -1i), -8946i), Struct_1(vec3<i32>(10365i, 36282i, 8164i), -70995i));

var<private> global2: vec4<u32> = vec4<u32>(22231u, 1u, 39073u, 8769u);

var<private> global3: array<bool, 30>;

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 768f, 392f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1422f, global0[_wgslsmith_index_u32(38443u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1497f, 605f, global0[_wgslsmith_index_u32(0u, 30u)]), vec3<f32>(global0[_wgslsmith_index_u32(44363u, 30u)], global0[_wgslsmith_index_u32(93966u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a, 30u)]))))))));
    global0 = array<f32, 30>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(47822u, 30u)], var_0.x) * vec3<f32>(150f, -1000f, -178f))))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -1000f, global0[_wgslsmith_index_u32(abs(1u | global2.x), 30u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1441f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -797f))), !select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(1665u, 30u)], true), vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)], global4.x), select(vec3<bool>(false, global4.x, global3[_wgslsmith_index_u32(3094u, 30u)]), vec3<bool>(false, global4.x, global4.x), vec3<bool>(false, true, global3[_wgslsmith_index_u32(global2.x, 30u)]))))));
    let var_2 = ~(1u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(4328u, 1u, 4294967295u, global2.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(21381u, u_input.a, 0u, u_input.a), vec4<u32>(0u, 0u, u_input.a, u_input.a), vec4<u32>(0u, 8390u, 39165u, global2.x)), firstTrailingBit(vec4<u32>(global2.x, 1u, global2.x, global2.x)) & abs(vec4<u32>(5982u, global2.x, global2.x, u_input.a))) % 32u));
    global1 = array<Struct_1, 7>();
    return 1i;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = min(global2.yy, select(~select(~vec2<u32>(global2.x, 1u), ~global2.yx, true), select(global2.zx, vec2<u32>(~140069u, u_input.a), global3[_wgslsmith_index_u32(~u_input.a, 30u)] && (-1432f < global0[_wgslsmith_index_u32(34728u, 30u)])), true));
    let var_1 = true | !global4.x;
    var var_2 = vec4<i32>(max(arg_1.b, firstLeadingBit(arg_1.a.x)), abs(func_3()), -36466i & arg_1.a.x, _wgslsmith_sub_i32(2147483647i, 10364i));
    let var_3 = global1[_wgslsmith_index_u32(1u, 7u)];
    var var_4 = vec2<i32>(var_2.x, arg_1.b);
    return _wgslsmith_sub_vec3_i32(max(var_3.a, -vec3<i32>(~2147483647i, -23074i, i32(-1i) * -9186i)), var_3.a);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(-_wgslsmith_mod_vec3_i32(func_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], 1484f, global0[_wgslsmith_index_u32(18550u, 30u)], 1448f), global1[_wgslsmith_index_u32(~u_input.a, 7u)]), min(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, 15136i), vec3<i32>(34740i, 1i, 2147483647i)), -vec3<i32>(23385i, 1i, 969i))), -11322i);
    var var_1 = Struct_1(-var_0.a, _wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.b, func_2(vec4<f32>(1448f, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(global2.x, 30u)]), var_0).x << (global2.x % 32u)), min(-var_0.b, i32(-1i) * -2147483647i) << (~firstLeadingBit(global2.x) % 32u)));
    let var_2 = -1565f;
    let var_3 = var_1.a.x;
    var_1 = var_0;
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(1u >> (1u % 32u)), min(~_wgslsmith_dot_vec2_u32(global2.ww, global2.zw), reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, u_input.a, u_input.a), global2.xzz))), 0u), 7u)];
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a.x;
    let var_1 = abs(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(1i, -1i, arg_0.a.x, arg_0.b)), vec4<i32>(var_0, 2147483647i, var_0, var_0), ~vec4<i32>(-12660i, -2147483647i, -4093i, 1i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-213f)));
    var var_3 = !any(select(select(vec2<bool>(global4.x, true), select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, global4.x), vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 30u)], false)), true), vec2<bool>(true, global2.x < u_input.a), !all(vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a, 30u)]))));
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1506f, -241f, global0[_wgslsmith_index_u32(global2.x, 30u)], 1478f))), vec4<f32>(_wgslsmith_div_f32(1000f, global0[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_f_op_f32(max(-820f, global0[_wgslsmith_index_u32(u_input.a, 30u)])), _wgslsmith_f_op_f32(round(949f)), var_2))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-616f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 30u)] + _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 30u)] + global0[_wgslsmith_index_u32(1u, 30u)]))), 1000f)));
    return Struct_1(arg_0.a & -(~vec3<i32>(2421i, 2147483647i, arg_0.a.x)), 17985i);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(2074f, -1005f)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 30u)] - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1020f, global0[_wgslsmith_index_u32(39403u, 30u)]))), global3[_wgslsmith_index_u32(1u, 30u)]))));
    let var_1 = func_1();
    var var_2 = !(!select(vec3<bool>(global4.x, true, true), vec3<bool>(any(vec3<bool>(true, global4.x, global3[_wgslsmith_index_u32(4294967295u, 30u)])), true, all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 30u)], global4.x))), select(global3[_wgslsmith_index_u32(~arg_0, 30u)], false, global4.x)));
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, firstLeadingBit(abs(u_input.a))) << (select(~max(vec2<u32>(u_input.a, 0u), global2.xz), ~(global2.xy & vec2<u32>(global2.x, 35688u)), global4.x) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(3293u, _wgslsmith_clamp_u32(u_input.a, arg_0, 22296u)), ~max(global2.xx, vec2<u32>(6809u, u_input.a)), vec2<u32>(arg_0, ~global2.x))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_mult_u32(~select(25822u, ~1u, true), 0u), -2147483647i, global0[_wgslsmith_index_u32(50628u, 30u)], func_4(func_1()));
    global4 = vec2<bool>(((max(1u, global2.x) < global2.x) & true) | false, all(select(!vec4<bool>(true, global3[_wgslsmith_index_u32(global2.x, 30u)], false, global4.x), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global2.x), 30u)], var_0.a.x == var_0.a.x, false, false), !select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 30u)], global4.x, global4.x, true), vec4<bool>(global3[_wgslsmith_index_u32(0u, 30u)], false, false, true), true))));
    let var_1 = select(!vec2<bool>(global4.x, !(!global4.x)), vec2<bool>(((global4.x && global4.x) & all(vec2<bool>(false, true))) & !global4.x, !(!all(vec2<bool>(false, false)))), all(select(vec2<bool>(-2147483647i == var_0.a.x, all(vec3<bool>(false, global4.x, global4.x))), select(!vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 30u)], true), vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 30u)], true), u_input.a < 33586u), !(!vec2<bool>(global4.x, false)))));
    global0 = array<f32, 30>();
    var var_2 = select(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 30u)])) < 1724f, false, true), select(!select(vec3<bool>(false, global4.x, false), select(vec3<bool>(var_1.x, false, global4.x), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)]), global4.x), global3[_wgslsmith_index_u32(1u, 30u)]), !select(!vec3<bool>(false, false, var_1.x), select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(22848u, 30u)]), vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 30u)], global4.x, global3[_wgslsmith_index_u32(40976u, 30u)])), any(vec3<bool>(true, false, true))), !(!select(vec3<bool>(var_1.x, var_1.x, global3[_wgslsmith_index_u32(u_input.a, 30u)]), vec3<bool>(false, true, global3[_wgslsmith_index_u32(32626u, 30u)]), false))), any(!select(!vec3<bool>(global4.x, false, true), vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 30u)], false, global4.x), vec3<bool>(global4.x, var_1.x, var_1.x))));
    global4 = select(vec2<bool>(any(!vec4<bool>(var_2.x, true, var_1.x, true)), true || var_1.x), vec2<bool>(true, any(vec3<bool>(true, global4.x, var_1.x))), true);
    let var_3 = _wgslsmith_mod_i32(firstLeadingBit(2147483647i), 31778i >> ((43589u << ((select(u_input.a, 4985u, var_1.x) & ~global2.x) % 32u)) % 32u));
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global2.zwy, _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(var_4.a.zz, var_4.a.zy) | firstLeadingBit(-1i), 0i), var_4.a.zx, _wgslsmith_sub_u32(global2.x, 1u), -_wgslsmith_add_i32(max(var_4.b, -22754i), i32(-1i) * -26484i) >> (~global2.x % 32u));
}

