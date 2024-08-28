struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 25> = array<f32, 25>(-1000f, -1216f, 735f, 604f, 921f, -475f, -1018f, -1580f, -367f, -1158f, 222f, 528f, -754f, -1000f, -167f, -407f, 1332f, 1583f, 2151f, 339f, -891f, 137f, 1691f, 435f, 1584f);

var<private> global2: f32 = -1000f;

var<private> global3: array<Struct_1, 25>;

var<private> global4: vec2<f32> = vec2<f32>(-419f, -313f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_4(-60582i, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_sub_u32(u_input.b, u_input.b))), 25u)], Struct_2(Struct_1(arg_1.ww, _wgslsmith_sub_u32(1u << (u_input.b % 32u), _wgslsmith_clamp_u32(1u, u_input.b, 4294967295u)), u_input.b, ~(~vec2<u32>(53510u, u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(626f, arg_2, 159f, global4.x) - vec4<f32>(-683f, -2331f, -1209f, arg_2)))), _wgslsmith_mult_u32(1u, u_input.b), Struct_1(vec2<bool>(arg_1.x, true), countOneBits(reverseBits(u_input.b)), (4294967295u << (u_input.b % 32u)) << ((4294967295u & u_input.b) % 32u), ~countOneBits(vec2<u32>(0u, 4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(230f, global4.x, -256f, -127f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_2, arg_2, -279f), vec4<f32>(-687f, global1[_wgslsmith_index_u32(u_input.b, 25u)], arg_0, global4.x))))), global3[_wgslsmith_index_u32(~abs(max(1u, u_input.b)), 25u)]), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(3247u, _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 23949u)), vec2<u32>(_wgslsmith_sub_u32(0u, u_input.b), _wgslsmith_add_u32(u_input.b, 4294967295u))), ~(~(~1u))), 25u)]);
    var var_1 = 1u & _wgslsmith_mult_u32(_wgslsmith_mod_u32(~1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.b.c, 4294967295u), countOneBits(0u))), 70725u);
    let var_2 = vec4<f32>(282f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * global4.x), global4.x), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(431f, global4.x)) * _wgslsmith_f_op_f32(-var_0.d.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.b, 25u)])) + _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(var_0.b.e.xww * var_2.wxw), arg_1.wz, !vec2<bool>(!(global4.x <= var_0.d.e.x), true), !(((0u | u_input.b) >= (7u | u_input.b)) && false));
    global3 = array<Struct_1, 25>();
    return var_0.c;
}

fn func_3() -> u32 {
    global1 = array<f32, 25>();
    var var_0 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1563f, 680f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 25u)] * -879f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(293f, global4.x, global1[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<f32>(global4.x, global1[_wgslsmith_index_u32(25960u, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)])))))), vec3<f32>(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.b, 25u)])) + _wgslsmith_div_f32(1307f, global1[_wgslsmith_index_u32(1u, 25u)])), -712f)), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(true, true, false)), !vec2<bool>(any(vec3<bool>(false, false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 25u)] + global1[_wgslsmith_index_u32(98745u, 25u)]), vec4<bool>(true, true, true, true), -1280f).a.a)), !select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), func_1(global1[_wgslsmith_index_u32(u_input.b, 25u)], vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(26094u, 25u)]).c.a, true), func_1(169f, vec4<bool>(true, false, false, true), -773f).a.a, any(vec3<bool>(true, true, true))), true);
    var var_1 = Struct_4(-u_input.c.x, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~select(0u, 96912u, var_0.d), u_input.b), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, 18539u)), ~vec2<u32>(4294967295u, u_input.b))), 25u)], func_1(var_0.a.x, !select(select(vec4<bool>(true, var_0.d, var_0.b.x, false), vec4<bool>(var_0.b.x, var_0.d, false, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.c.x, var_0.b.x)), select(vec4<bool>(true, true, var_0.d, false), vec4<bool>(var_0.b.x, false, false, var_0.b.x), vec4<bool>(true, var_0.b.x, true, false)), true), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~u_input.b), 25u)])), global3[_wgslsmith_index_u32(1u, 25u)]);
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(ceil(var_1.d.e.wzw)), var_1.c.c.a, !vec2<bool>(!var_1.c.c.a.x, any(vec4<bool>(true, var_1.c.c.a.x, true, false))), var_1.d.a.x);
    global2 = var_2.a.x;
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(8421u, ~var_1.c.d.d.x, ~(~u_input.b)), ~(~vec3<u32>(var_1.d.b, u_input.b, var_1.b.c)));
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    global2 = _wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2151f + arg_0.a.e.x))))));
    let var_0 = !vec4<bool>(arg_0.a.a.x, arg_0.d.a.x, true != (u_input.a >= countOneBits(u_input.c.x)), all(vec4<bool>(7403i > u_input.c.x, 1u != arg_0.c.c, false, true)));
    var var_1 = Struct_3(arg_0.a.d, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~func_3()), 4294967295u >> (~firstTrailingBit(arg_0.a.b) % 32u)), 25u)], arg_0.d.e.wzz, _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 30887i, ~(u_input.c.x ^ -49227i), u_input.c.x), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(22191i, u_input.c.x, u_input.a, u_input.c.x), vec4<i32>(2147483647i, u_input.c.x, 2147483647i, 1i)))), firstLeadingBit(u_input.c.x >> (53985u % 32u)));
    let var_2 = Struct_4(2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~select(~vec3<u32>(49806u, 4294967295u, arg_0.a.c), vec3<u32>(1u, u_input.b, u_input.b) << (vec3<u32>(4294967295u, 1u, arg_0.a.d.x) % vec3<u32>(32u)), -1i != var_1.e), vec3<u32>(~_wgslsmith_mult_u32(0u, 16591u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1470u, arg_0.a.d.x, u_input.b)), firstLeadingBit(vec3<u32>(var_1.b.d.x, var_1.b.b, var_1.b.b))), ~(~u_input.b))), 25u)], Struct_2(global3[_wgslsmith_index_u32(1u, 25u)], func_1(-423f, vec4<bool>(true, true, false, arg_0.b > var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.e.x, 2056f)))).b, var_1.b, Struct_1(select(arg_0.d.a, func_1(global1[_wgslsmith_index_u32(1u, 25u)], var_0, 643f).d.a, vec2<bool>(var_1.b.a.x, true)), u_input.b, ~u_input.b, var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b.e)))), arg_0.d);
    let var_3 = Struct_1(arg_0.d.a, _wgslsmith_clamp_u32(arg_0.b, 16432u, ~1u << (0u % 32u)), arg_0.b, ~vec2<u32>(var_1.a.x, countOneBits(arg_0.b) & 54544u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, 483f, global4.x, 921f) * vec4<f32>(global1[_wgslsmith_index_u32(arg_0.c.c, 25u)], global4.x, global4.x, 1201f))), arg_0.a.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-168f, arg_0.a.e.x, -468f, global4.x), arg_0.d.e))) + _wgslsmith_f_op_vec4_f32(-arg_0.d.e)), vec4<bool>(all(select(var_0, vec4<bool>(false, var_2.c.d.a.x, var_2.c.d.a.x, true), var_0)), ~var_1.e <= firstLeadingBit(-1i), true, var_1.b.a.x))));
    return arg_0.d.e.wwz;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(Struct_2(arg_0.b, u_input.b, Struct_1(select(!vec2<bool>(true, arg_3.d.a.x), select(arg_0.b.a, vec2<bool>(false, arg_3.b.a.x), false), func_1(arg_3.b.e.x, vec4<bool>(arg_3.d.a.x, arg_0.b.a.x, false, arg_3.d.a.x), 883f).a.a), arg_2, arg_3.b.b, ~arg_3.b.d, vec4<f32>(_wgslsmith_div_f32(-1000f, arg_0.c.x), -2536f, _wgslsmith_div_f32(717f, -857f), -319f)), Struct_1(vec2<bool>(false, false), abs(~4294967295u), ~select(arg_0.b.d.x, 0u, false), reverseBits(arg_0.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(54435u, 25u)], -1750f, global4.x, 317f)), vec4<f32>(-294f, -1254f, global4.x, global1[_wgslsmith_index_u32(arg_0.a.x, 25u)]))))))).x;
    var var_1 = vec4<bool>(arg_0.b.a.x, !((true & (false || arg_3.d.a.x)) || all(select(vec4<bool>(false, true, arg_3.b.a.x, arg_3.c.c.a.x), vec4<bool>(arg_3.b.a.x, arg_3.c.d.a.x, arg_0.b.a.x, arg_3.c.a.a.x), arg_3.c.d.a.x))), all(!vec2<bool>(arg_0.b.a.x, true)) & (false || !arg_0.b.a.x), select(true, arg_3.d.a.x, false == all(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.b.a.x, true, arg_0.b.a.x), vec3<bool>(arg_0.b.a.x, true, arg_3.d.a.x)))));
    var var_2 = select(!select(select(vec4<bool>(arg_0.b.a.x, true, false, arg_0.b.a.x), !vec4<bool>(true, arg_3.d.a.x, false, arg_0.b.a.x), !vec4<bool>(arg_3.c.c.a.x, var_1.x, arg_3.c.a.a.x, false)), !vec4<bool>(false, arg_3.d.a.x, var_1.x, true), vec4<bool>(all(vec3<bool>(false, false, var_1.x)), 166f <= var_0, -18266i >= u_input.c.x, arg_0.b.a.x && var_1.x)), vec4<bool>(var_1.x, _wgslsmith_mult_i32(countOneBits(13442i), abs(0i)) > _wgslsmith_mult_i32(arg_1.x, -arg_0.e), true, !((-74647i >> (0u % 32u)) <= arg_0.e)), !select(!select(vec4<bool>(var_1.x, var_1.x, true, arg_0.b.a.x), vec4<bool>(arg_3.d.a.x, false, false, arg_3.b.a.x), vec4<bool>(arg_3.b.a.x, arg_3.b.a.x, true, arg_3.d.a.x)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(arg_0.b.a.x, var_1.x, var_1.x, true), true), select(vec4<bool>(false, arg_3.c.a.a.x, var_1.x, true), vec4<bool>(var_1.x, arg_0.b.a.x, true, var_1.x), vec4<bool>(true, arg_3.d.a.x, true, var_1.x))), true));
    var var_3 = arg_3;
    global4 = vec2<f32>(func_1(_wgslsmith_div_f32(func_1(func_1(global1[_wgslsmith_index_u32(33562u, 25u)], vec4<bool>(false, false, true, true), var_3.b.e.x).d.e.x, select(vec4<bool>(arg_3.d.a.x, var_1.x, false, var_3.c.a.a.x), vec4<bool>(false, true, true, var_3.d.a.x), vec4<bool>(var_3.b.a.x, false, arg_0.b.a.x, var_2.x)), var_0).d.e.x, _wgslsmith_f_op_f32(-1f)), !select(!vec4<bool>(arg_0.b.a.x, true, arg_3.b.a.x, var_1.x), select(vec4<bool>(arg_0.b.a.x, var_3.d.a.x, arg_3.c.d.a.x, var_3.d.a.x), vec4<bool>(arg_3.d.a.x, arg_0.b.a.x, true, false), vec4<bool>(arg_3.d.a.x, false, false, true)), any(vec4<bool>(true, true, var_1.x, arg_0.b.a.x))), _wgslsmith_f_op_vec3_f32(func_2(func_1(_wgslsmith_f_op_f32(-var_0), select(vec4<bool>(var_1.x, false, false, arg_0.b.a.x), vec4<bool>(true, false, var_2.x, false), vec4<bool>(true, true, var_3.b.a.x, var_3.d.a.x)), _wgslsmith_f_op_f32(global4.x * -533f)))).x).a.e.x, -361f);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(!vec2<bool>(all(vec2<bool>(true, true)), false)), all(!vec2<bool>(true, all(vec4<bool>(false, true, false, true)))));
    var var_1 = -_wgslsmith_div_vec4_i32(vec4<i32>(~(~u_input.c.x), -u_input.a, 1i, u_input.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, max(-37173i, u_input.c.x), 0i, ~u_input.c.x), vec4<i32>(u_input.a, u_input.a, 1i, -1i ^ u_input.c.x)));
    global0 = (31879u | firstTrailingBit(select(~u_input.b, 11430u, var_0.x))) << (~u_input.b % 32u);
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~48416u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 4294967295u))), ~4625u) ^ func_4(Struct_3(~_wgslsmith_mod_vec2_u32(vec2<u32>(120445u, 0u), vec2<u32>(u_input.b, u_input.b)), global3[_wgslsmith_index_u32(u_input.b, 25u)], _wgslsmith_f_op_vec3_f32(func_2(func_1(global1[_wgslsmith_index_u32(u_input.b, 25u)], vec4<bool>(true, false, true, var_0.x), -486f))), vec4<i32>(i32(-1i) * -2147483647i, u_input.c.x, var_1.x, -var_1.x), 0i), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.c.x, var_1.x, 1i, 3470i) >> (vec4<u32>(1u, u_input.b, 43975u, u_input.b) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(1i, 11737i, u_input.a, 2147483647i)), vec4<bool>(false, var_0.x, var_0.x, false)), reverseBits(vec4<i32>(1i, 9485i, var_1.x, u_input.a) ^ vec4<i32>(0i, -2147483647i, u_input.c.x, 0i)), -(vec4<i32>(44779i, var_1.x, u_input.a, -6102i) & vec4<i32>(var_1.x, -14396i, 2147483647i, var_1.x))), ~(~0u << (func_3() % 32u)), Struct_4(_wgslsmith_sub_i32(-2147483647i, u_input.a), global3[_wgslsmith_index_u32(~u_input.b, 25u)], func_1(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.b, 25u)], 1000f)), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, false, true, false)), _wgslsmith_f_op_f32(-global4.x)), Struct_1(func_1(global1[_wgslsmith_index_u32(u_input.b, 25u)], vec4<bool>(true, var_0.x, false, var_0.x), global4.x).d.a, _wgslsmith_sub_u32(4294967295u, 42109u), 41555u << (u_input.b % 32u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(31209u, 38172u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(22563u, 25u)], -578f, 120f) - vec4<f32>(global4.x, -192f, global4.x, 585f))))), 25u)];
    var var_3 = u_input.b;
    global4 = var_2.e.zy;
    var var_4 = -2013f <= global4.x;
    global0 = u_input.b;
    var var_5 = all(vec3<bool>(false, var_2.a.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.d.x, var_2.e, u_input.b, ~countOneBits(2689i));
}

