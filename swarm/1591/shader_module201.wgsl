struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<u32, 20> = array<u32, 20>(8636u, 10361u, 8823u, 3699u, 15424u, 4294967295u, 1u, 1u, 4294967295u, 53214u, 54619u, 0u, 1u, 1u, 4294967295u, 1u, 36618u, 28125u, 29949u, 1u);

var<private> global1: f32 = -115f;

var<private> global2: i32;

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    global2 = _wgslsmith_mult_i32(arg_0.a.x ^ ~reverseBits(_wgslsmith_mod_i32(u_input.a, 1i)), u_input.a << (arg_0.b % 32u));
    let var_0 = true;
    let var_1 = arg_0;
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(0u << (~_wgslsmith_add_u32(9688u, var_1.b) % 32u), 20u)], var_0, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-821f, _wgslsmith_f_op_f32(select(1515f, 525f, var_0)), global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-744f, -1275f))), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -241f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(982f, -978f) * 1f) - _wgslsmith_f_op_f32(108f * _wgslsmith_f_op_f32(trunc(-2194f))))));
    return Struct_3(~(~reverseBits(vec3<u32>(0u, var_2.a, 4294967295u))) | abs(~vec3<u32>(global0[_wgslsmith_index_u32(11982u, 20u)], 855u, 29099u)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> vec2<u32> {
    global3 = !select(vec4<bool>(any(select(vec4<bool>(false, true, global3.x, false), vec4<bool>(arg_2, global3.x, global3.x, false), true)), any(global3.xwy), true, false), !select(!vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(true, arg_2, arg_2, true), select(vec4<bool>(true, global3.x, true, true), vec4<bool>(global3.x, global3.x, true, true), arg_2)), vec4<bool>(all(!vec3<bool>(false, false, global3.x)), !(!arg_2), arg_2, false));
    let var_0 = false;
    let var_1 = Struct_1(vec4<i32>(1i, u_input.a, u_input.a, min(_wgslsmith_mult_i32(firstLeadingBit(-2147483647i), 0i), firstTrailingBit(abs(u_input.a)))), _wgslsmith_mod_u32(26891u, ~(~global0[_wgslsmith_index_u32(4294967295u, 20u)]) ^ max(_wgslsmith_add_u32(1u, arg_0.a.x), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 20u)])));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_div_i32(2147483647i, u_input.a), select(1i, -2147483647i, arg_2), -u_input.a), select(~reverseBits(vec3<i32>(5352i, -1i, -2147483647i)), ~firstLeadingBit(vec3<i32>(u_input.b, -2147483647i, 21687i)), vec3<bool>(select(var_0, var_0, global3.x), false, true))), -16245i);
    let var_3 = -2147483647i;
    return abs(arg_0.a.yy);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = ~(vec3<i32>(_wgslsmith_add_i32(u_input.a, -u_input.a), u_input.a ^ max(-2147483647i, -2697i), 4495i) << (~vec3<u32>(select(10578u, 0u, global3.x), global0[_wgslsmith_index_u32(10314u, 20u)] | 4294967295u, global0[_wgslsmith_index_u32(arg_1.a.x, 20u)]) % vec3<u32>(32u)));
    let var_1 = func_2(Struct_1(firstLeadingBit(select(vec4<i32>(var_0.x, 87018i, u_input.b, u_input.b), vec4<i32>(-35537i, -2147483647i, 0i, 3421i), false) & ~vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.b)), arg_1.a.x), global3.x);
    global2 = _wgslsmith_mod_i32(-9885i, var_0.x);
    var var_2 = var_0.x;
    let var_3 = ~func_3(Struct_3(firstTrailingBit(~vec3<u32>(global0[_wgslsmith_index_u32(76610u, 20u)], var_1.a.x, 13827u))), _wgslsmith_f_op_f32(287f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 1362f) * _wgslsmith_f_op_f32(-arg_0.x))), (i32(-1i) * -u_input.b) > var_0.x);
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1f)))), arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, 123f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(abs(reverseBits(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37508u, 20u)], 20u)], 20u)], 20u)]), 20u)], global0[_wgslsmith_index_u32(~0u, 20u)]))), 20u)], global3.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-131f, -763f, -1246f, -696f) - _wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(-402f, -714f, -1313f), Struct_3(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], 20u)], 477u)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-642f, 755f, 635f, -1349f), vec4<f32>(-1000f, 510f, 1236f, -1283f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-543f, -665f, 674f, 406f), vec4<f32>(1000f, 1877f, 150f, 1138f)))), vec4<f32>(-634f, _wgslsmith_f_op_f32(-488f - -735f), 1f, _wgslsmith_f_op_f32(sign(-848f)))))));
    let var_1 = _wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_0.a, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 20u)], 20u)], 20u)], 55582u) ^ vec3<u32>(var_0.a, var_0.a, 0u), func_2(Struct_1(vec4<i32>(u_input.b, 378i, u_input.a, u_input.b), 1u), false).a, vec3<u32>(global0[_wgslsmith_index_u32(0u, 20u)], 0u, 18019u)) | vec3<u32>(~global0[_wgslsmith_index_u32(10943u, 20u)], func_3(Struct_3(vec3<u32>(var_0.a, 11756u, var_0.a)), var_0.c.x, global3.x).x, max(global0[_wgslsmith_index_u32(0u, 20u)], 10515u))), func_2(Struct_1(vec4<i32>(~u_input.a, -76758i, -8986i, _wgslsmith_div_i32(1i, u_input.a)), var_0.a), any(select(global3.zw, select(vec2<bool>(var_0.b, var_0.b), global3.wx, vec2<bool>(true, true)), all(global3.xwz)))).a);
    var var_2 = var_0.c.yx;
    let var_3 = select(vec4<bool>(true, any(vec4<bool>(false, global3.x, false, global3.x)) & var_0.b, global3.x, !var_0.b), select(select(!(!vec4<bool>(true, global3.x, false, false)), !vec4<bool>(true, var_0.b, var_0.b, var_0.b), select(select(vec4<bool>(false, var_0.b, var_0.b, false), vec4<bool>(global3.x, global3.x, var_0.b, false), false), vec4<bool>(true, global3.x, true, var_0.b), global3.x)), select(select(select(vec4<bool>(var_0.b, false, false, true), vec4<bool>(global3.x, var_0.b, global3.x, var_0.b), global3.x), select(vec4<bool>(var_0.b, false, true, false), vec4<bool>(global3.x, false, var_0.b, global3.x), true), !vec4<bool>(false, false, global3.x, true)), vec4<bool>(true, u_input.a == u_input.b, any(vec3<bool>(var_0.b, true, true)), true), select(vec4<bool>(global3.x, false, true, false), select(vec4<bool>(global3.x, false, false, true), vec4<bool>(true, false, false, global3.x), vec4<bool>(false, true, true, var_0.b)), !vec4<bool>(false, global3.x, var_0.b, true))), true), !select(!select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, var_0.b, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(var_0.b, !global3.x, select(global3.x, var_0.b, true), var_0.b), var_0.b));
    let var_4 = !vec3<bool>(global3.x, true, any(!global3.yz) || (_wgslsmith_f_op_f32(min(var_2.x, var_0.c.x)) > 142f));
    var var_5 = vec3<i32>(~1i, ~1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-(vec2<i32>(u_input.b, 1i) ^ vec2<i32>(-6309i, 45947i)), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 942i), vec2<i32>(-1i, -2147483647i)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.b), ~vec4<i32>(u_input.a, u_input.b, u_input.b, u_input.a)), _wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.b, 24434i, u_input.a, u_input.b), vec4<i32>(u_input.a, u_input.b, 9940i, u_input.a), var_3.x), countOneBits(vec4<i32>(u_input.b, 5153i, u_input.b, 0i))))));
    global2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_5.x, u_input.a), -var_5.x), var_5.x, _wgslsmith_mult_i32(u_input.a, reverseBits(-21584i))), _wgslsmith_div_vec3_i32(vec3<i32>(-63613i, var_5.x ^ var_5.x, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(var_5.x, 1i, var_5.x), vec3<i32>(var_5.x, -2147483647i, -27496i)))), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

