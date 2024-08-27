struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> u32 {
    var var_0 = 3520i;
    var_0 = _wgslsmith_clamp_i32(arg_0.c.a.x, arg_0.c.a.x, 79691i) | ~(-u_input.b.x);
    let var_1 = select(13012i, 0i, false);
    var var_2 = _wgslsmith_mult_i32(~1i, -38745i);
    var var_3 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(~(~arg_0.b), 54965u | arg_1.b)), _wgslsmith_add_vec2_u32(firstLeadingBit(~vec2<u32>(arg_0.b, arg_0.b)), firstLeadingBit(_wgslsmith_clamp_vec2_u32(~vec2<u32>(11400u, 15812u), ~vec2<u32>(1u, 45358u), ~vec2<u32>(arg_1.b, 18003u)))), firstLeadingBit(~(~vec2<u32>(arg_0.b, 0u))) ^ vec2<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(~0u, 30u)]), 30u)], ~firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)])));
    return ~25037u;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1742f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(944f - arg_0.c.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b))), arg_3.b), vec4<f32>(_wgslsmith_f_op_f32(min(776f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(362f))))), arg_0.c.b, arg_3.b, arg_3.b));
    var var_1 = Struct_3(false && !all(select(vec4<bool>(arg_1.x, arg_0.a, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, true, false), vec4<bool>(false, arg_1.x, false, false))), 34432i, Struct_1(abs(-arg_3.a), _wgslsmith_f_op_f32(select(-1000f, var_0.x, !arg_1.x || true))));
    return max(arg_0.b, arg_3.a.x);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = ~(vec4<u32>(func_2(arg_2, arg_2), arg_0, abs(_wgslsmith_div_u32(3083u, global0[_wgslsmith_index_u32(1u, 30u)])), arg_2.b) ^ ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, global0[_wgslsmith_index_u32(67214u, 30u)], arg_0, arg_2.b), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 30u)], 30u)], arg_2.b, 0u, arg_0), vec4<u32>(arg_2.b, arg_2.b, arg_0, global0[_wgslsmith_index_u32(arg_0, 30u)])) & firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 9035u, arg_2.b))));
    var var_1 = arg_3.x;
    let var_2 = Struct_1(_wgslsmith_sub_vec4_i32(~min(firstLeadingBit(arg_3), countOneBits(vec4<i32>(4655i, arg_2.a.x, arg_3.x, arg_2.a.x))), firstTrailingBit(-vec4<i32>(arg_3.x, u_input.c.x, arg_2.a.x, arg_3.x))), arg_2.c.b);
    var_1 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-reverseBits(1i), reverseBits(arg_3.x) & arg_3.x, -var_2.a.x), -arg_2.a.x);
    var var_3 = arg_1;
    return Struct_1(vec4<i32>(24529i, u_input.b.x >> (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(arg_0, 30u)], _wgslsmith_add_u32(arg_0, arg_0)), 30u)] % 32u), min(13278i, -2147483647i), _wgslsmith_mod_i32(func_3(Struct_3(false, var_2.a.x, Struct_1(vec4<i32>(0i, -2147483647i, arg_3.x, -2147483647i), 1392f)), arg_1, vec3<u32>(4294967295u, 6581u, 1u) << (vec3<u32>(arg_0, 79216u, 46637u) % vec3<u32>(32u)), Struct_1(vec4<i32>(-8161i, arg_3.x, u_input.c.x, arg_3.x), -353f)), 1i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1186f, _wgslsmith_f_op_f32(trunc(-596f))) - _wgslsmith_f_op_f32(round(var_2.b))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> bool {
    var var_0 = !vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0)), !any(vec2<bool>(true, true)), true, !(!all(vec2<bool>(true, false))));
    var var_1 = abs(-1i);
    var_0 = select(!select(select(vec4<bool>(true, var_0.x, arg_2, false), select(vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, arg_0, false, false), true), arg_2), !(!vec4<bool>(arg_0, var_0.x, false, true)), any(!vec4<bool>(true, false, arg_2, true))), !(!vec4<bool>(false, arg_2, arg_0, false)), !(!select(!vec4<bool>(arg_0, arg_0, true, false), select(vec4<bool>(arg_0, var_0.x, arg_2, true), vec4<bool>(arg_0, false, true, false), var_0.x), !arg_2)));
    var_0 = select(!(!select(vec4<bool>(false, true, var_0.x, arg_2), vec4<bool>(true, arg_2, arg_2, arg_2), !vec4<bool>(arg_2, true, true, false))), select(select(vec4<bool>(true, false, false, arg_2), select(select(vec4<bool>(true, false, false, true), vec4<bool>(arg_2, false, false, false), arg_0), vec4<bool>(arg_2, var_0.x, arg_0, true), vec4<bool>(arg_0, true, arg_2, var_0.x)), select(select(vec4<bool>(arg_0, true, arg_2, var_0.x), vec4<bool>(arg_0, true, arg_2, false), arg_2), !vec4<bool>(var_0.x, false, true, true), arg_0)), vec4<bool>(all(var_0.zxw) && true, false, arg_2, false), true), true);
    var_0 = vec4<bool>(!(!(select(true, arg_0, arg_0) || true)), arg_2, false, arg_2);
    return arg_2;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    global0 = array<u32, 30>();
    var var_0 = arg_1.b;
    var var_1 = Struct_4(vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(-u_input.c.x), func_1(1u, select(vec2<bool>(true, arg_0), vec2<bool>(true, false), true), Struct_4(arg_1.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], arg_1), abs(arg_1.a)).a.x), u_input.c.x, _wgslsmith_add_i32(i32(-1i) * -arg_1.a.x, -min(21190i, arg_1.a.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_1.a.yxw, firstLeadingBit(arg_1.a.yyw)), reverseBits(-vec3<i32>(arg_1.a.x, arg_1.a.x, u_input.a.x)))), global0[_wgslsmith_index_u32(~(select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 30u)], 1u), 30u)], _wgslsmith_mod_u32(584u, global0[_wgslsmith_index_u32(4294967295u, 30u)]), any(vec2<bool>(false, true))) & ~global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)]), 30u)]), 30u)], Struct_1(abs(~arg_1.a), _wgslsmith_f_op_f32(exp2(arg_1.b))));
    let var_2 = vec2<bool>(arg_0, true);
    var var_3 = !arg_0 != true;
    return Struct_2(-select(-vec2<i32>(6990i, var_1.a.x), countOneBits(vec2<i32>(1i, 1i)) ^ arg_1.a.wz, vec2<bool>(true, !arg_0)), 24015i, vec2<i32>(-18896i, 0i), var_1.c);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = arg_1.c.a.yz;
    let var_1 = Struct_4(u_input.c, 0u, func_1(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(41273u, global0[_wgslsmith_index_u32(1u, 30u)], 47490u), vec3<u32>(17521u, 19653u, global0[_wgslsmith_index_u32(1u, 30u)])), 30u)], ~select(global0[_wgslsmith_index_u32(4294967295u, 30u)], 0u, true)), !select(select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, false), false), !vec2<bool>(false, arg_1.a), !vec2<bool>(false, arg_1.a)), Struct_4(func_5(arg_1.a | arg_1.a, Struct_1(vec4<i32>(-7861i, u_input.b.x, 57151i, 1i), arg_1.c.b)).d.a, ~max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), Struct_1(u_input.c, _wgslsmith_f_op_f32(select(-1319f, arg_1.c.b, true)))), arg_1.c.a));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2073f);
    var var_3 = arg_0.d;
    var var_4 = var_2;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.d.b, 306f, -2818f, arg_1.c.b)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.b, -849f, -776f, 549f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(func_5(func_4(false, func_1(31943u, vec2<bool>(false, false), Struct_4(vec4<i32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.c.x), 37911u, Struct_1(vec4<i32>(-6372i, u_input.a.x, 2147483647i, u_input.c.x), -1282f)), vec4<i32>(u_input.c.x, 59801i, u_input.a.x, 1i)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1107f, 1439f))), Struct_1(-vec4<i32>(-1i, 0i, u_input.b.x, 2147483647i), _wgslsmith_div_f32(372f, -941f))), Struct_3(all(vec2<bool>(false, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(-39156i, u_input.a.x), -u_input.c.xx), Struct_1(select(vec4<i32>(u_input.c.x, 13955i, 38161i, u_input.b.x), vec4<i32>(u_input.b.x, -7738i, -1i, u_input.b.x), vec4<bool>(false, false, false, false)), -164f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, 1526f, -416f, -2383f)) + _wgslsmith_f_op_vec4_f32(func_6(Struct_2(vec2<i32>(-16305i, u_input.a.x), 2147483647i, vec2<i32>(u_input.c.x, u_input.a.x), Struct_1(vec4<i32>(u_input.a.x, u_input.c.x, 0i, 0i), -138f)), Struct_3(false, u_input.b.x, Struct_1(vec4<i32>(1i, u_input.b.x, -2147483647i, 30067i), 1000f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -821f, 879f, 757f)), vec4<f32>(740f, -707f, -340f, 400f), global0[_wgslsmith_index_u32(131u, 30u)] < 1u))))));
    var var_1 = _wgslsmith_div_vec3_i32(u_input.c.wwz, func_1(abs(60857u), vec2<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85395u, 30u)], 30u)], 30u)] < 11659u, select(false, false, false)), Struct_4(u_input.c ^ u_input.c, 1u, func_1(global0[_wgslsmith_index_u32(1u, 30u)], vec2<bool>(true, false), Struct_4(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36442u, 30u)], 30u)], Struct_1(u_input.c, var_0.x)), vec4<i32>(u_input.c.x, 51235i, -23912i, u_input.a.x))), firstTrailingBit(vec4<i32>(u_input.c.x, u_input.a.x, 0i, u_input.b.x))).a.yxz ^ -vec3<i32>(firstLeadingBit(u_input.a.x), -2147483647i, 1685i >> (global0[_wgslsmith_index_u32(13005u, 30u)] % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31197u, 30u)], 30u)], global0[_wgslsmith_index_u32(1u, 30u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)]), vec4<u32>(global0[_wgslsmith_index_u32(45994u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 18324u))), vec4<u32>(~1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 30u)], 30u)], global0[_wgslsmith_index_u32(0u, 30u)], ~47006u)), abs(global0[_wgslsmith_index_u32(abs(1u), 30u)])), _wgslsmith_f_op_vec4_f32(sign(var_0)), u_input.a.x);
}

