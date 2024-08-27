struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-373f, 811f, -1113f, -288f, 239f, 1035f, -1365f, -948f, 1278f, 990f, -1276f, -1000f, 1644f, 570f, 879f, -568f, 1234f, -118f, -1000f, -733f, 1187f);

var<private> global1: array<f32, 4>;

var<private> global2: vec3<f32> = vec3<f32>(1006f, 1000f, -1276f);

var<private> global3: array<i32, 18>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> bool {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_3.b, arg_3.b))));
    global3 = array<i32, 18>();
    var var_0 = _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, vec4<i32>(arg_1.a, u_input.c.x, -select(u_input.c.x, 1i, !arg_1.c.a.x), -arg_1.a));
    let var_1 = vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_mod_u32(26850u, u_input.e), arg_0, ~arg_0)), 18u)], _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(2308i, arg_1.a, 56499i, arg_1.a)) << (vec4<u32>(1u, arg_0, u_input.a.x, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(u_input.b, select(u_input.b, vec4<i32>(arg_1.a, arg_1.a, arg_1.a, u_input.b.x), arg_1.c.a.x)))) << (firstLeadingBit(vec2<u32>(~(~64847u), u_input.d << (~0u % 32u))) % vec2<u32>(32u));
    let var_2 = 1u;
    return all(arg_1.c.a);
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec2_i32(~(-_wgslsmith_mult_vec2_i32(u_input.b.wy, u_input.b.yx)) >> (vec2<u32>(reverseBits(0u) << (~arg_0 % 32u), 38703u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(-vec2<i32>(select(12623i, -29726i, false), ~u_input.b.x), reverseBits(firstTrailingBit(max(vec2<i32>(u_input.b.x, -1i), vec2<i32>(-1i, 2147483647i))))));
    let var_1 = -2205f;
    var var_2 = Struct_2(_wgslsmith_add_i32(-26795i, _wgslsmith_sub_i32(reverseBits(~12719i), -1i)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-315f, global1[_wgslsmith_index_u32(1u, 4u)]) - global2.xz)))))), Struct_1(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2040f))))));
    global3 = array<i32, 18>();
    let var_3 = select(select(vec4<bool>(true, var_2.c.a.x, false, true), !select(vec4<bool>(var_2.c.a.x, true, var_2.c.a.x, true), select(vec4<bool>(false, true, false, true), vec4<bool>(var_2.c.a.x, var_2.c.a.x, false, false), false), var_2.c.a.x && var_2.c.a.x), any(vec4<bool>(var_2.c.a.x, true, true, var_2.c.a.x))), select(!(!(!vec4<bool>(false, var_2.c.a.x, var_2.c.a.x, var_2.c.a.x))), vec4<bool>(true, false, select(true, func_1(4060u, Struct_2(0i, vec2<f32>(var_2.b.x, -467f), Struct_1(vec3<bool>(var_2.c.a.x, var_2.c.a.x, false), global2.x)), 2769f, Struct_3(vec4<f32>(global1[_wgslsmith_index_u32(55290u, 4u)], -1979f, var_2.c.b, 1190f), vec3<f32>(var_1, 1061f, 161f))), var_2.c.a.x), !var_2.c.a.x), !select(select(vec4<bool>(var_2.c.a.x, true, true, false), vec4<bool>(var_2.c.a.x, false, true, var_2.c.a.x), vec4<bool>(true, var_2.c.a.x, var_2.c.a.x, false)), !vec4<bool>(var_2.c.a.x, true, true, var_2.c.a.x), true)), false);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 21u)], var_1, 251f, global1[_wgslsmith_index_u32(0u, 4u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], var_1, global1[_wgslsmith_index_u32(arg_0, 4u)], global0[_wgslsmith_index_u32(50725u, 21u)]))))))));
}

fn func_2(arg_0: vec4<i32>) -> vec3<u32> {
    global0 = array<f32, 21>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(u_input.e, 21u)], _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 4u)], 1000f, false)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.e)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(78117u, 4u)], 1624f, -334f, 789f), vec4<f32>(global2.x, 517f, global2.x, global0[_wgslsmith_index_u32(1u, 21u)]))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global2.x)))))));
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(firstLeadingBit(u_input.d & u_input.e))).x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(53320u, 4u)] * 799f), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.d, 4u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.d, 21u)]))), _wgslsmith_f_op_f32(590f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 4u)]))))), _wgslsmith_f_op_f32(max(-1197f, _wgslsmith_f_op_f32(max(473f, _wgslsmith_f_op_f32(trunc(global2.x))))))), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(1u)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-267f, global0[_wgslsmith_index_u32(4294967295u, 21u)]), 1671f))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(abs(964u), u_input.a.x ^ 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xy, vec2<u32>(u_input.e, 9059u)), _wgslsmith_add_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, 1u)))), 21u)]));
    global1 = array<f32, 4>();
    let var_2 = firstLeadingBit(vec3<u32>(u_input.d, 68175u, u_input.e));
    return _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(6731u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 6733u, 1u), u_input.a << (vec3<u32>(79254u, 4294967295u, 47614u) % vec3<u32>(32u)))), ~u_input.d | reverseBits(4294967295u), var_2.x), vec3<u32>(~_wgslsmith_mult_u32(var_2.x, u_input.a.x << (1u % 32u)), 7087u, _wgslsmith_add_u32(34326u, u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), !func_1(u_input.a.x, Struct_2(-12752i, vec2<f32>(global0[_wgslsmith_index_u32(22280u, 21u)], -902f), Struct_1(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(u_input.e, 21u)])), global2.x, Struct_3(vec4<f32>(-1483f, global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(u_input.e, 4u)], 120f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 845f, global2.x))), !all(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(sign(-1144f)) > _wgslsmith_div_f32(global0[_wgslsmith_index_u32(49503u, 21u)], global1[_wgslsmith_index_u32(0u, 4u)])));
    var var_1 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), func_2(vec4<i32>(u_input.c.x, 0i, global3[_wgslsmith_index_u32(u_input.e, 18u)], 2147483647i))) & u_input.a);
    var var_2 = Struct_1(select(select(!select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, true, var_0), vec3<bool>(false, false, var_0)), vec3<bool>(any(vec3<bool>(var_0, var_0, true)), !var_0, 32682i == global3[_wgslsmith_index_u32(0u, 18u)]), var_0), !vec3<bool>(!var_0, true, true), !var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1272f + 1000f) - global1[_wgslsmith_index_u32(u_input.d, 4u)])) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 4u)] - -945f), _wgslsmith_f_op_f32(abs(601f))))));
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b - -503f))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -744f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 21u)] * -1127f), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-324f, 1697f, global1[_wgslsmith_index_u32(var_1.x, 4u)])) * vec3<f32>(-488f, 1308f, -180f)) * vec3<f32>(global0[_wgslsmith_index_u32(reverseBits(u_input.e), 21u)], 1f, global0[_wgslsmith_index_u32(4294967295u, 21u)]))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a))).wwx));
    let var_3 = Struct_1(select(select(var_2.a, var_2.a, false), select(var_2.a, select(!vec3<bool>(true, false, var_0), select(vec3<bool>(var_2.a.x, false, var_0), var_2.a, vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), true), !(!vec3<bool>(false, var_2.a.x, var_0))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.d, 21u)])));
    let var_4 = -562f;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

