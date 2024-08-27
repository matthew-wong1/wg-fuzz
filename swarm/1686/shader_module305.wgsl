struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(17025u);

var<private> global1: array<i32, 18> = array<i32, 18>(2147483647i, -84i, 1i, -1i, -17540i, i32(-2147483648), 994i, 89i, 0i, -44970i, 0i, 2147483647i, 0i, 3125i, 0i, -41772i, -8670i, 2147483647i);

var<private> global2: Struct_1 = Struct_1(0u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1077f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1739f)))))));
    global2 = arg_1;
    var var_1 = -_wgslsmith_mult_vec4_i32(select(vec4<i32>(global1[_wgslsmith_index_u32(0u, 18u)] ^ global1[_wgslsmith_index_u32(1u, 18u)], 1i, global1[_wgslsmith_index_u32(global0.a >> (u_input.a % 32u), 18u)], firstLeadingBit(-2147483647i)), reverseBits(abs(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(26999u, 18u)], -17474i, 0i))), vec4<bool>(!arg_3, var_0.x < arg_0.x, 4294967295u >= global2.a, !arg_2)), select(vec4<i32>(-14172i, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(73934u, 18u)], 12010i), firstTrailingBit(reverseBits(vec4<i32>(22098i, -1656i, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]))), vec4<bool>(false, true & arg_2, true, arg_2)));
    global2 = arg_1;
    let var_2 = true;
    return !select(select(!(!vec3<bool>(true, arg_2, arg_3)), !(!vec3<bool>(arg_3, var_2, var_2)), vec3<bool>(any(vec2<bool>(true, arg_2)), all(vec2<bool>(true, true)), false)), select(select(!vec3<bool>(true, var_2, true), vec3<bool>(arg_3, arg_2, false), select(vec3<bool>(true, arg_2, var_2), vec3<bool>(false, var_2, false), vec3<bool>(var_2, false, false))), vec3<bool>(all(vec4<bool>(false, false, var_2, false)), !var_2, true), !vec3<bool>(true, arg_2, false)), !(!vec3<bool>(arg_2, arg_3, arg_3)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(global0.a ^ (max(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, u_input.a, global2.a, 1u), vec4<u32>(4294967295u, global0.a, global2.a, global0.a)), ~1u) & 12387u));
    var var_1 = !select(arg_0, select(vec3<bool>(true, select(false, false, false), !arg_0.x), func_3(vec3<f32>(-1397f, -589f, 713f), Struct_1(0u), arg_0.x, !arg_0.x), true), !(!arg_0));
    global2 = Struct_1(4294967295u);
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, global2.a, 15834u, global2.a)), vec4<u32>(global2.a, u_input.a, u_input.a, 1u) << (vec4<u32>(global2.a, 0u, 0u, global2.a) % vec4<u32>(32u)), abs(vec4<u32>(0u, 1u, 1u, var_0.a))), ~(vec4<u32>(4294967295u, global0.a, global2.a, 0u) ^ vec4<u32>(global0.a, 1u, global2.a, global2.a))) | global0.a);
    global2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a, var_2.a, global0.a)), abs(abs(vec3<u32>(4294967295u, var_2.a, 1u)))), select(vec3<u32>(~u_input.a, var_2.a ^ 4294967295u, global2.a), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.a, var_0.a, 3657u), vec3<u32>(var_0.a, u_input.a, 1u)) & ~vec3<u32>(u_input.a, global2.a, u_input.a), arg_0)));
    return var_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<i32, 18>();
    var var_0 = ~(_wgslsmith_mult_u32(~(~u_input.a), max(_wgslsmith_dot_vec2_u32(vec2<u32>(20185u, global2.a), vec2<u32>(123396u, 4294967295u)), global0.a)) & _wgslsmith_div_u32(global0.a << (abs(4294967295u) % 32u), arg_1.a));
    var var_1 = vec4<f32>(1689f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-919f, -1057f))))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(trunc(-1578f))) * 328f));
    let var_2 = func_2(select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true || any(vec3<bool>(true, true, false))), select(vec3<bool>(false, true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(false, true, true)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, -15499i, 2147483647i)), ~vec3<i32>(global1[_wgslsmith_index_u32(40366u, 18u)], global1[_wgslsmith_index_u32(30211u, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)])) == (_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(arg_2.a, 18u)], 2147483647i) | _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(45834u, 18u)], global1[_wgslsmith_index_u32(34610u, 18u)]))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_div_f32(arg_0.x, -168f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.x, arg_0.x, true)), var_1.x, -48932i >= global1[_wgslsmith_index_u32(1688u, 18u)])), -1766f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1254f, var_1.x, -1525f, var_1.x))))))));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = select(select(!vec4<bool>(-1i <= global1[_wgslsmith_index_u32(arg_3.a, 18u)], true, true, true), select(vec4<bool>(true, true, any(vec4<bool>(true, true, false, true)), select(true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), true), vec4<bool>(select(false, true, false), all(vec4<bool>(true, true, true, true)), select(true, true, true), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))));
    let var_1 = select(~(~func_1(vec3<f32>(640f, 858f, 2595f), Struct_1(0u), arg_0).a) | 1719u, 1u, any(vec4<bool>(!var_0.x, var_0.x, var_0.x, true)) | false);
    global2 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-449f, 790f, 964f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(833f, -430f, 914f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-234f, 134f, 167f), vec3<f32>(691f, -819f, 2146f)))), any(select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(880f)), 1630f, -1681f))), Struct_1(_wgslsmith_add_u32(arg_3.a, global2.a | 1u)), arg_2);
    global1 = array<i32, 18>();
    global2 = func_2(var_0.xxz);
    return _wgslsmith_f_op_f32(616f * _wgslsmith_f_op_f32(-431f * _wgslsmith_f_op_f32(step(1222f, 338f))));
}

fn func_5(arg_0: vec3<f32>) -> Struct_1 {
    global2 = Struct_1(20471u);
    global1 = array<i32, 18>();
    return Struct_1(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-129f, 923f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1246f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(290f)), _wgslsmith_f_op_f32(round(-1337f))), _wgslsmith_f_op_f32(func_4(Struct_1(u_input.a), 19466u, func_1(vec3<f32>(-111f, 2033f, 718f), Struct_1(13035u), Struct_1(16065u)), Struct_1(37904u))), _wgslsmith_div_f32(-928f, -1000f)))));
    var var_1 = select(any(vec4<bool>(select(any(vec2<bool>(false, false)), all(vec2<bool>(true, false)), false), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), (global1[_wgslsmith_index_u32(0u, 18u)] >= 2147483647i) & true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))))), _wgslsmith_f_op_f32(-178f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(573f)) - _wgslsmith_f_op_f32(-2365f * -527f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(930f + 669f))), false);
    global2 = Struct_1(4294967295u);
    var var_2 = !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))));
    var var_3 = 1246f;
    var var_4 = ~(_wgslsmith_add_vec4_u32(vec4<u32>(6127u, var_0.a, 4294967295u, global0.a) & vec4<u32>(3129u, 42851u, global2.a, 0u), max(vec4<u32>(30228u, 100812u, 6029u, global2.a), vec4<u32>(5040u, u_input.a, global2.a, u_input.a))) << (vec4<u32>(_wgslsmith_mod_u32(global0.a, u_input.a), 1u, ~u_input.a, 14457u) % vec4<u32>(32u))) << ((((select(vec4<u32>(global0.a, 0u, var_0.a, var_0.a), vec4<u32>(1u, 0u, 40779u, 0u), var_2.x) ^ vec4<u32>(global0.a, 1u, 91520u, 18333u)) >> (vec4<u32>(_wgslsmith_add_u32(1u, global0.a), global0.a >> (var_0.a % 32u), _wgslsmith_clamp_u32(4294967295u, 69594u, global0.a), 1u >> (global0.a % 32u)) % vec4<u32>(32u))) & vec4<u32>(var_0.a, ~39282u, global0.a, ~4294967295u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(select(vec4<i32>(-global1[_wgslsmith_index_u32(13495u, 18u)], _wgslsmith_sub_i32(1i, -28546i), _wgslsmith_clamp_i32(2147483647i, -10740i, -11275i), ~global1[_wgslsmith_index_u32(1u, 18u)]), min(vec4<i32>(-27278i, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(var_0.a, 18u)], global1[_wgslsmith_index_u32(global2.a, 18u)]), reverseBits(vec4<i32>(4612i, global1[_wgslsmith_index_u32(var_4.x, 18u)], global1[_wgslsmith_index_u32(28691u, 18u)], 1i))), !(!vec4<bool>(var_2.x, false, var_2.x, true))), vec4<i32>(-(global1[_wgslsmith_index_u32(4294967295u, 18u)] & global1[_wgslsmith_index_u32(u_input.a, 18u)]), -12215i, global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(var_4.xyx, var_4.yzz), 2613u), 18u)], global1[_wgslsmith_index_u32(func_1(vec3<f32>(995f, 520f, 1480f), Struct_1(var_0.a), Struct_1(20767u)).a, 18u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-171f, -878f, -1544f) + vec3<f32>(1127f, -632f, 372f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-169f, -619f, 1354f) - vec3<f32>(-120f, 427f, -1815f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(843f, 1000f, -1455f) - vec3<f32>(1782f, -220f, 1495f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(254f, 1000f, -655f))), vec3<f32>(1319f, 287f, 1000f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0, 28161u, Struct_1(global0.a), Struct_1(u_input.a)))) * _wgslsmith_f_op_f32(f32(-1f) * -913f)))), ~(-vec4<i32>(global1[_wgslsmith_index_u32(36484u, 18u)], _wgslsmith_mult_i32(-2119i, 2054i), 2147483647i, -14155i)));
}

