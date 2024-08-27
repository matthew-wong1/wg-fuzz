struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<i32>(72876i, 1i, -22326i, 0i), vec3<bool>(true, false, false), vec4<u32>(4294967295u, 0u, 81622u, 19145u), vec4<i32>(-4441i, -9139i, -71121i, 0i)), Struct_1(vec4<i32>(1127i, 1i, -1i, 42280i), vec3<bool>(false, false, false), vec4<u32>(4294967295u, 28511u, 0u, 0u), vec4<i32>(1i, i32(-2147483648), 14529i, -1i)), Struct_1(vec4<i32>(27549i, 69776i, -5788i, 2147483647i), vec3<bool>(false, true, true), vec4<u32>(31654u, 1u, 4294967295u, 4294967295u), vec4<i32>(i32(-2147483648), 2147483647i, -24978i, -1i)), Struct_1(vec4<i32>(1i, -26803i, 29650i, -1i), vec3<bool>(true, false, true), vec4<u32>(4294967295u, 4294967295u, 29123u, 1u), vec4<i32>(-3238i, i32(-2147483648), 46365i, 2147483647i)));

var<private> global3: array<i32, 14> = array<i32, 14>(35594i, -6334i, 23529i, 1i, 2147483647i, 0i, -8131i, i32(-2147483648), 12519i, 1i, -25837i, -51866i, 3078i, -13684i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_3.x, -187f), all(!select(vec4<bool>(false, arg_1.x, global0.b.x, false), select(vec4<bool>(false, false, false, arg_2.b.x), vec4<bool>(global0.b.x, global0.b.x, arg_2.b.x, false), vec4<bool>(arg_2.b.x, true, arg_2.b.x, arg_2.b.x)), select(vec4<bool>(arg_2.b.x, true, false, global0.b.x), vec4<bool>(arg_2.b.x, arg_1.x, false, false), vec4<bool>(arg_2.b.x, true, true, arg_1.x))))));
    global3 = array<i32, 14>();
    let var_1 = u_input.c;
    global0 = global2[_wgslsmith_index_u32(36270u, 4u)];
    var var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(arg_2.c.x, _wgslsmith_dot_vec4_u32(arg_2.c, min(vec4<u32>(32670u, 16456u, 0u, 63936u), vec4<u32>(4294967295u, u_input.c.x, 191511u, global0.c.x)))) | 4294967295u), 4u)];
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(53126u, _wgslsmith_mod_u32(25052u, 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 35823u, u_input.c.x, u_input.c.x) ^ vec4<u32>(55826u, var_1.x, 1u, var_1.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_1.x, 0u, 0u), arg_2.c, vec4<u32>(u_input.c.x, 55959u, u_input.c.x, 0u))), u_input.c.x >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_2.c.ywy, arg_2.c.xyz), 0u) % 32u)), ~(abs(vec4<u32>(var_2.c.x, u_input.c.x, 0u, 52741u)) << (~arg_2.c % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(var_2.c.x, 4294967295u, global0.c.x, 0u), select(vec4<u32>(48682u, 1u, 3129u, global0.c.x) ^ arg_2.c, min(arg_2.c, global0.c), !vec4<bool>(false, var_2.b.x, var_2.b.x, false)), !select(vec4<bool>(false, var_2.b.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, var_2.b.x, arg_2.b.x), vec4<bool>(false, true, true, false))), countOneBits(min(global0.c, vec4<u32>(88429u, 0u, 0u, 4294967295u))) ^ arg_2.c));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_add_i32(0i, 23263i);
    let var_1 = -2147483647i;
    var var_2 = Struct_1(arg_0.d, arg_0.b, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2703f))), global0.b, Struct_1(vec4<i32>(arg_0.d.x, global0.d.x, var_1, var_1 << (30663u % 32u)), !(!vec3<bool>(global0.b.x, arg_0.b.x, arg_0.b.x)), firstLeadingBit(_wgslsmith_mod_vec4_u32(arg_0.c, global0.c)), vec4<i32>(firstTrailingBit(-15026i), arg_0.a.x, global0.d.x, -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1280f, 1998f, 1313f), vec3<f32>(1889f, -969f, -485f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1583f, 453f, -806f))))))), abs(countOneBits(abs(global0.d)) & _wgslsmith_mod_vec4_i32(arg_0.d, vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], -2147483647i, -8205i, u_input.b))));
    let var_3 = ~(~select(vec4<u32>(~global0.c.x, _wgslsmith_div_u32(1u, 9442u), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, var_2.c.x, 36839u, var_2.c.x), vec4<u32>(u_input.c.x, 7632u, u_input.c.x, 26478u))), vec4<u32>(u_input.c.x, func_3(-856f, arg_0.b, arg_0, vec3<f32>(480f, 742f, 707f)).x, func_3(-303f, vec3<bool>(false, global0.b.x, arg_0.b.x), Struct_1(vec4<i32>(var_2.a.x, global0.a.x, -33800i, -1i), arg_0.b, vec4<u32>(1u, global0.c.x, 1u, 4294967295u), arg_0.d), vec3<f32>(-292f, -861f, -1495f)).x, arg_1.x), !vec4<bool>(false, arg_0.b.x, true, true)));
    let var_4 = global2[_wgslsmith_index_u32(28241u, 4u)];
    return _wgslsmith_f_op_f32(873f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(914f, _wgslsmith_f_op_f32(select(669f, 1000f, true)))), _wgslsmith_f_op_f32(sign(2266f)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global1 = false;
    global3 = array<i32, 14>();
    var var_0 = select(select(vec4<bool>(!(true & arg_1.b.x), all(select(vec4<bool>(global0.b.x, true, arg_1.b.x, true), vec4<bool>(arg_1.b.x, arg_1.b.x, global0.b.x, true), true)), arg_1.b.x, arg_1.b.x | any(vec4<bool>(global0.b.x, global0.b.x, true, true))), !(!(!vec4<bool>(false, global0.b.x, true, arg_1.b.x))), false), select(select(vec4<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(arg_1.b.x, false, global0.b.x, arg_1.b.x)), all(global0.b), true), select(!vec4<bool>(false, arg_1.b.x, false, false), !vec4<bool>(global0.b.x, false, true, false), !vec4<bool>(arg_1.b.x, false, arg_1.b.x, global0.b.x)), true), !(!select(vec4<bool>(arg_1.b.x, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(arg_1.b.x, true, global0.b.x, global0.b.x))), select(!(!vec4<bool>(arg_1.b.x, global0.b.x, arg_1.b.x, global0.b.x)), vec4<bool>(select(global0.b.x, global0.b.x, false), false, true, global0.c.x != 0u), true)), !(!select(!vec4<bool>(true, arg_1.b.x, true, global0.b.x), !vec4<bool>(global0.b.x, arg_1.b.x, true, arg_1.b.x), !vec4<bool>(arg_1.b.x, global0.b.x, true, arg_1.b.x))));
    var var_1 = Struct_1(~vec4<i32>(-countOneBits(u_input.a.x), abs(global3[_wgslsmith_index_u32(26488u, 14u)]), _wgslsmith_mod_i32(u_input.d, 1i), reverseBits(~global3[_wgslsmith_index_u32(arg_1.c.x, 14u)])), vec3<bool>(true, global0.b.x, !all(select(var_0.yyx, vec3<bool>(false, false, arg_1.b.x), var_0.yzw))), global0.c, vec4<i32>(abs(44082i), ~(-min(global3[_wgslsmith_index_u32(global0.c.x, 14u)], 1i)), arg_1.a.x << (~4294967295u % 32u), abs(~countOneBits(global3[_wgslsmith_index_u32(global0.c.x, 14u)]))));
    let var_2 = ~(~var_1.c.x);
    return Struct_1(vec4<i32>(31258i, u_input.d << (_wgslsmith_clamp_u32(53314u, 1u, ~45409u) % 32u), ~1i, ~firstTrailingBit(_wgslsmith_sub_i32(-20506i, 0i))), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, arg_1.b.x), global0.b.xz)), all(var_1.b.zx), false), global0.c & vec4<u32>(~(~32873u), func_3(_wgslsmith_f_op_f32(max(arg_0, arg_0)), vec3<bool>(true, global0.b.x, false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, var_2, 9473u), vec3<u32>(arg_1.c.x, global0.c.x, var_2)), 4u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-517f, 1000f, -859f))).x, 0u, 97665u), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 64942i, u_input.b, arg_1.d.x), vec4<i32>(0i, 2147483647i, 5381i, global3[_wgslsmith_index_u32(arg_1.c.x, 14u)]), firstTrailingBit(vec4<i32>(u_input.a.x, global0.a.x, arg_1.a.x, 2147483647i))) | ~arg_1.d));
}

fn func_1(arg_0: i32) -> Struct_1 {
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-344f, 411f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(min(global0.c.x, 27625u), 4u)], ~global0.c.xxz)))), Struct_1(global0.a, vec3<bool>((global0.c.x & 24493u) == (0u | global0.c.x), !global0.b.x || any(vec4<bool>(global0.b.x, false, false, global0.b.x)), false), ~select(global0.c, ~vec4<u32>(4294967295u, global0.c.x, 83062u, global0.c.x), !global0.b.x), abs(select(-vec4<i32>(21380i, -27854i, -664i, u_input.a.x), _wgslsmith_add_vec4_i32(global0.a, global0.d), global0.b.x))));
}

fn func_5(arg_0: Struct_1) -> u32 {
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, true, !(func_5(func_1(2147483647i)) == u_input.c.x));
    var_0 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(14232u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(573f - 2710f) - -689f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 2266f) - _wgslsmith_f_op_f32(1113f + 832f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1123f))), -1565f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - -1799f)))), 2111u << ((global0.c.x << (global0.c.x % 32u)) % 32u), 1u);
}

