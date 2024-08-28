struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: vec3<i32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    let var_0 = !select(vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec3<bool>(true, true, true))), vec3<bool>(true, ~global0[_wgslsmith_index_u32(u_input.a.x, 5u)] > _wgslsmith_dot_vec3_i32(vec3<i32>(-11287i, 9760i, global1.x), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], 2147483647i)), false), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))));
    var var_1 = vec4<f32>(260f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(172f * -2172f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f + -598f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-622f, _wgslsmith_f_op_f32(-899f - _wgslsmith_div_f32(551f, 459f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -499f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, 182f)), _wgslsmith_f_op_f32(select(953f, -362f, true)), -1975f, _wgslsmith_f_op_f32(-var_1.x)));
    return firstTrailingBit(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)))) == _wgslsmith_add_u32(max(abs(u_input.a.x) | (33496u >> (0u % 32u)), reverseBits(8354u)), _wgslsmith_mod_u32(~u_input.a.x, 70830u | u_input.a.x) ^ ~(u_input.a.x ^ u_input.a.x));
}

fn func_2() -> Struct_3 {
    global1 = select(vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 5u)], _wgslsmith_div_i32(-global1.x, global0[_wgslsmith_index_u32(~(1u ^ u_input.a.x), 5u)]), ~(-14381i)), vec3<i32>(global0[_wgslsmith_index_u32(abs(4294967295u), 5u)], max(i32(-1i) * -global0[_wgslsmith_index_u32(1u, 5u)], -1i), 9294i), any(select(vec4<bool>(select(false, false, true), all(vec3<bool>(true, false, true)), true, all(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, func_3()))));
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(554f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-958f, -838f, true)))))));
    let var_2 = -(~(~global1.x));
    global1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -45719i, global1.x, global1.x), -vec3<i32>(global0[_wgslsmith_index_u32(19482u, 5u)], global1.x, var_0)) ^ countOneBits(-vec3<i32>(0i, global1.x, var_2)), vec3<i32>(min(_wgslsmith_add_i32(var_0, var_2), -global1.x), ~(var_2 ^ -1i), -_wgslsmith_div_i32(abs(-2147483647i), 2147483647i)), -vec3<i32>(_wgslsmith_mult_i32(global1.x, 2804i) >> (102174u % 32u), select(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 2147483647i), countOneBits(-1i), any(vec4<bool>(true, false, false, false))), var_2));
    return Struct_3(firstTrailingBit(~(~u_input.a.x) << (u_input.a.x % 32u)), Struct_1(firstLeadingBit(vec2<u32>(~0u, ~1u)), vec4<bool>(!(u_input.a.x < u_input.a.x), all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), !any(vec2<bool>(true, true)))), true, Struct_2(var_1, vec4<i32>(firstTrailingBit(-2147483647i), _wgslsmith_mult_i32(abs(0i), ~(-20635i)), ~max(global0[_wgslsmith_index_u32(1u, 5u)], -1841i), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0, -58032i, var_0, global1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, global1.x, 1i, 0i), vec4<i32>(1i, global0[_wgslsmith_index_u32(65929u, 5u)], -1i, var_2))))), 4294967295u);
}

fn func_4(arg_0: Struct_3) -> i32 {
    global0 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -161f), -596f, _wgslsmith_f_op_f32(select(arg_0.d.a, 1000f, arg_0.b.b.x)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.a, arg_0.d.a, 148f)) - vec3<f32>(-938f, -174f, 121f)))), vec3<f32>(arg_0.d.a, _wgslsmith_f_op_f32(-arg_0.d.a), -223f)))));
    let var_1 = Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.a.x, arg_0.a, u_input.a.x), firstTrailingBit(vec3<u32>(arg_0.a, arg_0.b.a.x, 4294967295u)), !arg_0.b.b.x), firstTrailingBit(vec3<u32>(u_input.a.x, 38774u, arg_0.e)) >> (vec3<u32>(0u, 0u, 5026u) % vec3<u32>(32u))), max(~(~vec3<u32>(4294967295u, arg_0.a, arg_0.e)), _wgslsmith_sub_vec3_u32(~vec3<u32>(104774u, 15593u, u_input.a.x), vec3<u32>(1u, 1u, 1u)))), arg_0.b, true, func_2().d, countOneBits(reverseBits(_wgslsmith_clamp_u32(~arg_0.a, 44625u | u_input.a.x, 55148u))));
    global0 = array<i32, 5>();
    let var_2 = Struct_2(302f, func_2().d.b);
    return ~54995i | abs(~firstTrailingBit(-1i) ^ (-global0[_wgslsmith_index_u32(53141u, 5u)] | -var_2.b.x));
}

fn func_1() -> bool {
    let var_0 = ~(~(~select(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(46973u, 4294967295u, 27872u, 16337u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), vec4<bool>(true, true, true, true))));
    var var_1 = vec4<i32>(abs(func_4(func_2())), global1.x, _wgslsmith_div_i32(countOneBits(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), -22724i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(29935u, 5u)], global0[_wgslsmith_index_u32(var_0.x, 5u)]), -vec2<i32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(283u, 5u)])), global1.xx)) & vec4<i32>(i32(-1i) * -5888i, _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(8971i, -26062i, global0[_wgslsmith_index_u32(17229u, 5u)]), 2147483647i), reverseBits(func_2().d.b.x), 8771i);
    var var_2 = _wgslsmith_clamp_vec3_i32(var_1.zzy, var_1.xzx, var_1.zww);
    var_1 = vec4<i32>(abs(var_2.x), _wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(~func_2().d.b.x, ~var_1.x)), i32(-1i) * -15708i, func_4(Struct_3(select(~u_input.a.x, var_0.x | var_0.x, false), func_2().b, any(func_2().b.b), Struct_2(-2833f, vec4<i32>(var_1.x, -26384i, var_1.x, 26639i)), ~71919u & ~u_input.a.x)));
    var var_3 = Struct_2(-1665f, vec4<i32>(-2147483647i, -var_2.x, max(global1.x, select(-global1.x, abs(global1.x), any(vec2<bool>(true, true)))), _wgslsmith_div_i32(-(~var_2.x), var_2.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    let var_0 = vec4<bool>(global1.x == -1i, true, all(vec4<bool>(func_1(), true, false, true)), !any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))));
    var var_1 = !var_0.yzy;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-546f, -553f) - 169f))));
    global0 = array<i32, 5>();
    var var_3 = var_0.xww;
    global0 = array<i32, 5>();
    var var_4 = vec4<bool>(func_2().c, var_0.x, all(func_2().b.b.xx), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~(-37476i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1409f, 454f, -331f, -677f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1534f, 616f, -219f, 1251f))))));
}

