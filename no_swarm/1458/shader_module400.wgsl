struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(14534u, 53637u, 9833u, 32329u, 22083u, 0u, 34116u, 24967u, 4294967295u, 4294967295u, 0u, 1u, 20720u, 27677u, 1u, 0u, 0u, 62015u, 66874u, 1u, 51760u, 1u, 69506u, 4294967295u, 44437u, 1u);

var<private> global1: Struct_1 = Struct_1(vec4<u32>(37191u, 1u, 44847u, 0u), vec2<u32>(4294967295u, 34588u), 15913i);

var<private> global2: bool = false;

var<private> global3: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1045f, _wgslsmith_div_f32(_wgslsmith_div_f32(-286f, 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(442f * -346f))))) * _wgslsmith_f_op_f32(f32(-1f) * -401f));
    global1 = Struct_1(vec4<u32>(~max(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(global1.b.x, 26u)]), global1.a.x), 46481u, _wgslsmith_dot_vec4_u32((global1.a & vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.b.x, 26u)], 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a.x, 26u)], 26u)], global0[_wgslsmith_index_u32(global1.a.x, 26u)])) >> (global1.a % vec4<u32>(32u)), ~(~vec4<u32>(global1.b.x, global0[_wgslsmith_index_u32(0u, 26u)], 56628u, global1.b.x))), ~4294967295u), abs(max(select(select(global1.b, global1.a.yw, vec2<bool>(true, true)), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(11469u, 26u)]), vec2<bool>(true, true)), ~(~vec2<u32>(0u, 4294967295u)))), u_input.a.x);
    var var_1 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec4_u32(global1.a, global1.a) << (_wgslsmith_add_u32(3538u, _wgslsmith_dot_vec4_u32(vec4<u32>(79472u, 22511u, 12608u, 1u), vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(global1.b.x, 26u)], global1.b.x))) % 32u), ~global0[_wgslsmith_index_u32(46290u, 26u)], _wgslsmith_clamp_u32(countOneBits(global1.a.x), ~4294967295u, 89260u | global0[_wgslsmith_index_u32(global1.b.x, 26u)]) ^ max(~1u, _wgslsmith_dot_vec2_u32(global1.a.zy, vec2<u32>(49328u, 8373u))), 0u), ~global1.a.xy, -2147483647i);
    global0 = array<u32, 26>();
    global3 = any(vec4<bool>(!(!(var_0 <= -180f)), global1.c <= global1.c, all(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), all(vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(-652f + var_0) != var_0;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = select(_wgslsmith_mod_u32(firstLeadingBit(~65825u), 1u) <= firstTrailingBit(global0[_wgslsmith_index_u32(reverseBits(~global1.a.x), 26u)]), true, all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, func_3(), true, false), vec4<bool>(true, 1u < arg_3.b.x, all(vec2<bool>(true, false)), all(vec3<bool>(true, false, true))))));
    let var_1 = global1.a;
    let var_2 = vec2<bool>(any(vec2<bool>(true, true)), false);
    global1 = arg_0;
    var var_3 = min(firstTrailingBit(_wgslsmith_mod_vec2_i32(-u_input.a.xx, vec2<i32>(6906i, arg_1) | vec2<i32>(1i, -1497i))), _wgslsmith_mult_vec2_i32(-(u_input.a.ww >> (vec2<u32>(var_1.x, 4294967295u) % vec2<u32>(32u))), u_input.a.xw)) << (reverseBits(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 3004u, var_1.x), global0[_wgslsmith_index_u32(global1.a.x, 26u)])) % vec2<u32>(32u));
    return _wgslsmith_sub_vec3_u32(global1.a.wzw >> (select(arg_0.a.xzw, arg_0.a.yxw, _wgslsmith_f_op_f32(-arg_2) <= 215f) % vec3<u32>(32u)), firstTrailingBit(arg_0.a.yzx));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_1 {
    global0 = array<u32, 26>();
    let var_0 = _wgslsmith_clamp_vec3_u32(~firstTrailingBit(global1.a.yyy), firstTrailingBit(countOneBits(func_2(Struct_1(vec4<u32>(arg_0.x, arg_0.x, 50295u, arg_0.x), global1.b, 15399i), 2147483647i, 1650f, Struct_1(vec4<u32>(global1.a.x, arg_0.x, global1.a.x, 1u), vec2<u32>(40962u, global0[_wgslsmith_index_u32(global1.b.x, 26u)]), global1.c)))), (arg_0 ^ global1.a.wyx) << (vec3<u32>(22162u, abs(10943u), 0u) % vec3<u32>(32u)));
    var var_1 = Struct_1((global1.a << (~global1.a % vec4<u32>(32u))) << ((((vec4<u32>(4294967295u, 4294967295u, 39225u, arg_0.x) >> (global1.a % vec4<u32>(32u))) ^ vec4<u32>(4294967295u, 4294967295u, 25171u, var_0.x)) >> (~global1.a % vec4<u32>(32u))) % vec4<u32>(32u)), func_2(Struct_1(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a.x, 26u)], 26u)], global1.a.x, global1.b.x, 0u), vec4<u32>(18403u, 1u, 45682u, global0[_wgslsmith_index_u32(var_0.x, 26u)]))), vec2<u32>(global1.b.x, ~global1.a.x), u_input.a.x), global1.c, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-145f)), 929f, any(vec2<bool>(false, true))))), Struct_1(global1.a, vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26886u, 26u)], 26u)], ~global1.b.x), _wgslsmith_clamp_i32(u_input.a.x << (19756u % 32u), global1.c, -2147483647i))).xx, 1i);
    global1 = Struct_1(global1.a, global1.b, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, abs(var_1.c)), abs(-34111i)));
    var var_2 = Struct_1(var_1.a, vec2<u32>(77810u ^ (global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(67751u, 26u)]), 26u)] | ~var_1.b.x), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(global1.b.x, 26u)], arg_0.x), abs(arg_0.zx))), 1i);
    return Struct_1(vec4<u32>(var_2.a.x & var_0.x, global1.a.x, var_2.a.x, ~max(4294967295u, global1.a.x)), vec2<u32>(72160u, ~arg_0.x) ^ vec2<u32>(arg_0.x, countOneBits(10184u)), 42967i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true & (_wgslsmith_f_op_f32(-794f * _wgslsmith_f_op_f32(trunc(-1160f))) <= 1018f);
    var var_0 = func_1(global1.a.wwy, select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = array<u32, 26>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(656f + 1994f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) * _wgslsmith_f_op_f32(step(-818f, -1376f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -993f), 613f))), _wgslsmith_f_op_f32(-612f - 1582f), 1076f);
    let x = u_input.a;
    s_output = StorageBuffer(28275u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(-293f, var_1.x, var_1.x)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.zxx))))))), -(53908i & _wgslsmith_add_i32(global1.c, 21190i)) | (_wgslsmith_mod_i32(select(-1i, u_input.a.x, true), 1i) ^ -2147483647i));
}

