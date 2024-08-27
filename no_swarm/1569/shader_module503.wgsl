struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec3<f32>(2579f, -1421f, 1687f));

var<private> global1: f32;

var<private> global2: array<bool, 6> = array<bool, 6>(true, false, false, false, true, false);

var<private> global3: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(42067i, 2147483647i, -44420i), vec3<i32>(2147483647i, 19996i, -1i), vec3<i32>(1i, i32(-2147483648), 55620i), vec3<i32>(0i, -27649i, 18067i), vec3<i32>(-68567i, 14871i, -34737i), vec3<i32>(46345i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-42623i, 24519i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(-29688i, 5361i, 15716i), vec3<i32>(0i, 4077i, -33552i), vec3<i32>(1i, -31959i, 1i), vec3<i32>(1i, -46629i, -30549i), vec3<i32>(-19042i, 0i, -23508i), vec3<i32>(-23877i, -37247i, 1807i), vec3<i32>(-1i, 2147483647i, 42650i), vec3<i32>(i32(-2147483648), -9262i, -91697i), vec3<i32>(1i, 19002i, -44213i), vec3<i32>(27651i, -40363i, -26056i), vec3<i32>(-33895i, i32(-2147483648), -55580i), vec3<i32>(-7936i, -2860i, -11261i), vec3<i32>(2147483647i, -8000i, 44606i), vec3<i32>(0i, -1i, -30484i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(-16575i, -792i, -4833i), vec3<i32>(1i, -1i, 0i), vec3<i32>(1i, 42797i, 2147483647i), vec3<i32>(0i, 64410i, 0i), vec3<i32>(-22471i, -23404i, -1i), vec3<i32>(1i, 1i, 22159i), vec3<i32>(1i, 2147483647i, -1402i), vec3<i32>(-16836i, 1i, 2147483647i));

var<private> global4: vec3<i32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_1(global0.a, select(!vec2<bool>(!global2[_wgslsmith_index_u32(arg_0.x, 6u)], global0.b.x), select(global0.a.zz, global0.a.yz, true), select(global0.b, select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)]), !vec2<bool>(global0.a.x, true), true), vec2<bool>(any(global0.b), false))), vec3<f32>(139f, -819f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global4 = select(vec3<i32>(_wgslsmith_div_i32(-1i, 8441i), ~u_input.a.x, u_input.a.x), vec3<i32>(global4.x | _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(38239u, 31u)], vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), -28380i, -23192i >> ((44991u | arg_0.x) % 32u)), select(vec3<bool>(false, var_0.a.x, all(vec2<bool>(true, var_0.b.x))), !(!global0.a.zxz), false)) | (global3[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, reverseBits(15555u)), max(59528u ^ u_input.b, 1u)), 31u)] ^ global3[_wgslsmith_index_u32(1u & firstTrailingBit(_wgslsmith_clamp_u32(u_input.b, arg_0.x, 1u)), 31u)]);
    global3 = array<vec3<i32>, 31>();
    var var_1 = vec4<i32>(min(global4.x, ~_wgslsmith_sub_i32(u_input.a.x, abs(u_input.a.x))), _wgslsmith_add_i32(-(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, global4.x, 77498i, -14263i), vec4<i32>(54407i, 1i, 20002i, global4.x))), firstTrailingBit(-4302i)), ~global4.x, _wgslsmith_dot_vec3_i32(-select(u_input.a.xwy ^ vec3<i32>(u_input.a.x, 1i, global4.x), vec3<i32>(u_input.a.x, -19161i, 10201i), true), vec3<i32>(-1i) * -global3[_wgslsmith_index_u32(~4294967295u, 31u)]));
    let var_2 = Struct_1(var_0.a, vec2<bool>(all(!vec3<bool>(global0.b.x, false, true)), any(!select(var_0.a.zwx, vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0.x, 6u)], true), false))), var_0.c);
    return global0.c.x;
}

fn func_2(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(!(!(!(!global0.a))), global0.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c.x * global0.c.x))) + global0.c.x), global0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - -483f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(35339u, 4294967295u), vec2<u32>(arg_0.x, 45588u), arg_0.xx))))));
    global1 = 105f;
    let var_1 = _wgslsmith_f_op_f32(select(var_0.c.x, -1000f, u_input.b <= ~firstLeadingBit(max(u_input.b, u_input.b))));
    global4 = firstTrailingBit(max(min(~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.a.x), vec3<i32>(global4.x, global4.x, global4.x)), u_input.a.yyy), u_input.a.xwy));
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u | u_input.b, ~(~arg_0.x)), 31u)];
    return vec4<bool>(any(select(vec4<bool>(true, true, true, true), !global0.a, _wgslsmith_f_op_f32(-global0.c.x) != _wgslsmith_f_op_f32(func_3(vec2<u32>(7545u, 1u))))), true, true, (!global2[_wgslsmith_index_u32(0u, 6u)] | ((i32(-1i) * -41315i) <= _wgslsmith_mult_i32(u_input.a.x, 0i))) & all(var_0.a.zx));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<u32> {
    let var_0 = ~6244u;
    let var_1 = select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b, 78548u), 6u)], global0.a.x, true), vec3<bool>(~(0u & var_0) > 58152u, any(!select(vec2<bool>(false, true), global0.a.xx, vec2<bool>(global2[_wgslsmith_index_u32(var_0, 6u)], false))), !all(vec3<bool>(false, global0.a.x, arg_0.b.x))), countOneBits(var_0 & 16596u) <= 0u);
    let var_2 = _wgslsmith_mod_vec4_i32(-u_input.a, vec4<i32>(0i, ~select(~global4.x, 2147483647i, any(arg_0.a)), ~u_input.a.x, -22390i));
    var var_3 = Struct_1(func_2(~(~vec3<u32>(73172u, 76527u, 4294967295u) << (min(vec3<u32>(u_input.b, 8903u, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u)) % vec3<u32>(32u)))), arg_1.b, vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(339f, _wgslsmith_f_op_f32(-global0.c.x)) * 302f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x))));
    let var_4 = vec3<i32>(var_2.x >> (var_0 % 32u), 1i, 152i);
    return vec3<u32>(u_input.b, ~var_0, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b, 23648u, 0u)), ~(~vec3<u32>(var_0, 0u, 0u)))) & _wgslsmith_add_vec3_u32(~max(_wgslsmith_add_vec3_u32(vec3<u32>(45520u, var_0, u_input.b), vec3<u32>(var_0, 1u, u_input.b)), firstLeadingBit(vec3<u32>(69111u, var_0, u_input.b))), vec3<u32>(u_input.b, abs(~var_0), 1u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    global2 = array<bool, 6>();
    let var_0 = arg_1.c.zy;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.c.x)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec2_u32(~(~arg_0.zz), ~(~arg_0.yz)))));
    let var_2 = _wgslsmith_mod_vec3_i32(u_input.a.wzz, ~u_input.a.xxy);
    let var_3 = vec3<u32>(4445u, ~(~abs(u_input.b)), _wgslsmith_clamp_u32(0u, abs(u_input.b), countOneBits(1u) ^ (countOneBits(0u) ^ (u_input.b >> (arg_0.x % 32u)))));
    return !(!select(func_2(var_3).zw, vec2<bool>(global2[_wgslsmith_index_u32(u_input.b | var_3.x, 6u)], false), arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!vec4<bool>(global0.a.x, (global0.b.x & true) & (global0.a.x == global2[_wgslsmith_index_u32(27256u, 6u)]), true, false || !global2[_wgslsmith_index_u32(u_input.b, 6u)]), func_4(~(~func_1(Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec3<f32>(global0.c.x, global0.c.x, 1016f)), Struct_1(global0.a, vec2<bool>(global2[_wgslsmith_index_u32(35236u, 6u)], false), vec3<f32>(global0.c.x, global0.c.x, global0.c.x)), vec3<f32>(global0.c.x, global0.c.x, -1808f))), Struct_1(!vec4<bool>(true, global0.a.x, global2[_wgslsmith_index_u32(23764u, 6u)], true), global0.b, global0.c), u_input.b > firstLeadingBit(~u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(-1099f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1224f, -2180f))), _wgslsmith_f_op_f32(global0.c.x * global0.c.x), global0.c.x));
    var var_1 = vec2<u32>(u_input.b, ~u_input.b);
    let var_2 = Struct_1(select(vec4<bool>(global0.a.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 37063u, u_input.b), vec3<u32>(0u, 88869u, var_1.x)), 6u)] || false, global0.b.x, all(vec2<bool>(global0.b.x, false))), vec4<bool>(true, true, true, true), 12736u <= (73580u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(4294967295u, var_1.x)))), vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 6u)], global0.a.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-308f, _wgslsmith_f_op_f32(round(global0.c.x)), _wgslsmith_f_op_f32(exp2(var_0.c.x))) - vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -756f), var_0.c.x)))));
    var var_3 = -1443f;
    let var_4 = !vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-933f, -421f)) >= _wgslsmith_f_op_f32(897f - global0.c.x), true, ((10015u ^ u_input.b) ^ var_1.x) != var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(trunc(1549f)))), var_2.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, var_0.c.x, var_0.c.x, global0.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-753f, 197f, -241f, var_0.c.x) * vec4<f32>(791f, -758f, global0.c.x, global0.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x + -1796f), var_2.c.x, -155f, 590f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-728f, var_0.c.x, global0.c.x, -108f) + vec4<f32>(var_2.c.x, var_2.c.x, 1470f, var_0.c.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(1557f, var_0.c.x, global0.c.x, -125f), vec4<f32>(global0.c.x, global0.c.x, 1444f, 1094f))))), _wgslsmith_f_op_vec2_f32(max(var_0.c.xx, _wgslsmith_f_op_vec2_f32(-var_2.c.zz))));
}

