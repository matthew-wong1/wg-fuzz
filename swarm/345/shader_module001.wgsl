struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
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

var<private> global0: array<i32, 9>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    let var_0 = true;
    let var_1 = vec3<bool>(false, var_0, !arg_0.d.x);
    global0 = array<i32, 9>();
    let var_2 = select(min(~select(vec3<u32>(10619u, u_input.a, 90066u), vec3<u32>(arg_0.e.c.x, arg_0.e.c.x, 25500u), all(vec4<bool>(true, false, var_0, false))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_0.e.c.x, arg_0.e.c.x) | vec3<u32>(25326u, arg_0.e.c.x, arg_0.e.c.x), vec3<u32>(arg_0.e.c.x, 0u, 9858u) >> (vec3<u32>(arg_0.e.c.x, 4294967295u, 16100u) % vec3<u32>(32u))) << (reverseBits(~vec3<u32>(u_input.a, 0u, 22461u)) % vec3<u32>(32u))), ~(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 16391u), vec3<u32>(u_input.a, 32650u, 0u))) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.e.c.x, 9091u, 40212u), vec3<u32>(arg_0.e.c.x, arg_0.e.c.x, 66602u)), vec3<u32>(0u, 35414u, u_input.a), vec3<u32>(1u, arg_0.e.c.x, arg_0.e.c.x) << (vec3<u32>(46184u, arg_0.e.c.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<bool>(!(!arg_0.d.x), reverseBits(13128u) != _wgslsmith_add_u32(1105u, _wgslsmith_mult_u32(arg_0.e.c.x, 62265u)), true));
    let var_3 = Struct_1(arg_0.e.a.ww);
    return _wgslsmith_f_op_vec4_f32(-arg_0.e.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(134f, 1000f, -476f) - vec3<f32>(764f, 741f, 810f)), select(arg_0, arg_0, arg_0.x), vec2<bool>(arg_0.x, true), !vec3<bool>(arg_0.x, false, arg_0.x), Struct_2(vec4<f32>(452f, 1000f, 623f, -242f), arg_0, vec2<u32>(24165u, u_input.a), vec3<i32>(32133i, global0[_wgslsmith_index_u32(1u, 9u)], 2147483647i))))))), vec2<bool>(!(all(vec3<bool>(true, arg_0.x, false)) & any(vec3<bool>(true, arg_0.x, arg_0.x))), all(vec4<bool>(arg_0.x, u_input.a > 46446u, !arg_0.x, false))), select(~(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, u_input.a), vec2<bool>(all(vec2<bool>(arg_0.x, false)) != all(vec2<bool>(true, arg_0.x)), true)), ~arg_1);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(-793f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x * 1000f), -367f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1014f, var_0.a.x))))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.a.yzz))) * vec3<f32>(1109f, 673f, -1205f)), _wgslsmith_f_op_vec3_f32(-var_0.a.wzx), any(select(vec4<bool>(false, true, true, arg_0.x), !vec4<bool>(var_0.b.x, false, true, arg_0.x), vec4<bool>(true, false, var_0.b.x, false))))), select(var_0.b, !arg_0, var_0.b.x), var_0.b, select(vec3<bool>(arg_0.x, var_0.c.x <= ~15015u, !arg_0.x & !arg_0.x), !vec3<bool>(!arg_0.x, select(true, arg_0.x, arg_0.x), !arg_0.x), any(vec3<bool>(true, arg_0.x, true))), Struct_2(vec4<f32>(-1764f, 872f, -1000f, var_1.a.x), var_0.b, countOneBits(vec2<u32>(1u, u_input.a)) >> (_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.a, var_0.c.x), var_0.c), var_0.c) % vec2<u32>(32u)), _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, -7126i, global0[_wgslsmith_index_u32(u_input.a, 9u)]), -vec3<i32>(-31415i, arg_1.x, var_0.d.x)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<u32>(39369u, 4294967295u, u_input.a)), vec3<u32>(4294967295u, var_0.c.x, 50377u)) % vec3<u32>(32u))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_3.e.a), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec3<f32>(-143f, var_3.e.a.x, var_1.a.x), !vec2<bool>(var_3.d.x, arg_0.x), select(vec2<bool>(var_3.b.x, var_0.b.x), vec2<bool>(true, true), false), vec3<bool>(true, var_3.d.x, var_3.d.x), var_3.e))))), vec2<bool>(arg_0.x, var_3.b.x), vec2<u32>(var_0.c.x, var_0.c.x), vec3<i32>(var_3.e.d.x, var_3.e.d.x, max(_wgslsmith_div_i32(-var_3.e.d.x, 48204i >> (u_input.a % 32u)), u_input.c.x >> (4409u % 32u))));
    return _wgslsmith_f_op_f32(var_3.e.a.x * 1426f);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(925f)) - -972f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec2<bool>(arg_2.d.x, true), vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x)))))))));
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.e.a.wz), _wgslsmith_f_op_vec2_f32(min(arg_2.e.a.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.e.a.x, arg_2.a.x))) * _wgslsmith_f_op_vec2_f32(ceil(arg_2.e.a.yy)))))));
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), 1001f, var_0), arg_2.e.b, select(select(select(!arg_2.d.zz, select(arg_2.c, vec2<bool>(arg_2.e.b.x, arg_2.e.b.x), arg_2.c), arg_2.d.x), !arg_2.b, !select(vec2<bool>(true, true), arg_2.d.zz, vec2<bool>(arg_2.b.x, arg_2.e.b.x))), !(!vec2<bool>(arg_2.c.x, arg_2.b.x)), !(!vec2<bool>(false, arg_2.e.b.x))), select(!arg_2.d, arg_2.d, select(vec3<bool>(any(vec4<bool>(arg_2.c.x, false, false, true)), arg_2.e.d.x > -2147483647i, select(arg_2.e.b.x, arg_2.e.b.x, true)), !(!arg_2.d), vec3<bool>(all(vec4<bool>(arg_2.b.x, arg_2.e.b.x, false, arg_2.e.b.x)), arg_2.e.b.x, false))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-1065f - _wgslsmith_f_op_f32(trunc(241f))), _wgslsmith_f_op_f32(max(-466f, var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -972f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-904f + 512f) * _wgslsmith_div_f32(var_1.a.x, var_1.a.x))), !arg_2.c, vec2<u32>(~(~u_input.a), ~4294967295u), u_input.b));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(var_2.e.a.www, arg_2.e.a.zxz, var_2.d)))), select(var_2.b, vec2<bool>(any(select(vec4<bool>(var_2.b.x, true, arg_2.b.x, var_2.b.x), vec4<bool>(true, arg_2.b.x, false, var_2.e.b.x), vec4<bool>(arg_2.d.x, arg_2.b.x, false, var_2.d.x))), var_2.e.b.x), false), select(select(!select(var_2.b, vec2<bool>(true, arg_2.e.b.x), var_2.d.xx), var_2.d.yx, vec2<bool>(true, true)), var_2.c, vec2<bool>(true, all(arg_2.d))), arg_2.d, Struct_2(vec4<f32>(-442f, var_1.a.x, 204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(var_2.a, vec2<bool>(arg_2.b.x, arg_2.b.x), var_2.b, arg_2.d, var_2.e))).x)), !(!vec2<bool>(arg_2.d.x, var_2.c.x)), ~select(arg_2.e.c, vec2<u32>(44157u, 68227u), false) << (_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.e.c, arg_2.e.c, arg_2.e.c), _wgslsmith_sub_vec2_u32(vec2<u32>(174869u, 13718u), arg_2.e.c)) % vec2<u32>(32u)), -_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, global0[_wgslsmith_index_u32(arg_0.x, 9u)], var_2.e.d.x), -var_2.e.d)));
    let var_4 = vec3<u32>(var_2.e.c.x | ~_wgslsmith_clamp_u32(5478u, 30111u, arg_0.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(69725u, var_2.e.c.x, u_input.a, 31297u) << (vec4<u32>(8988u, arg_2.e.c.x, var_3.e.c.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(0u, 51369u, 0u, 80770u) << (vec4<u32>(0u, 0u, u_input.a, arg_2.e.c.x) % vec4<u32>(32u))), 59164u) ^ vec3<u32>(~(~4294967295u) & arg_2.e.c.x, 0u, arg_0.x);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.e.a.x, var_1.a.x, var_2.a.x) * var_2.e.a.xwy) - vec3<f32>(var_3.a.x, var_3.e.a.x, 1546f))) - var_3.e.a.wxz), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, var_3.e.b.x), -vec3<i32>(var_3.e.d.x, -26926i, u_input.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-604f, 1667f) * var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 9>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1127f, -1742f, 1550f)) - _wgslsmith_f_op_vec3_f32(func_1(firstLeadingBit(vec3<u32>(0u, 19536u, 0u)), u_input.b, Struct_3(vec3<f32>(-1707f, 648f, 347f), vec2<bool>(true, false), vec2<bool>(false, true), vec3<bool>(false, true, true), Struct_2(vec4<f32>(1355f, 1581f, -1790f, -891f), vec2<bool>(false, false), vec2<u32>(36949u, 4294967295u), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], u_input.b.x))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1902f, 293f, -507f)), vec2<bool>(true, true), vec2<bool>(true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), Struct_2(vec4<f32>(1000f, -1317f, 1906f, -207f), vec2<bool>(true, true), vec2<u32>(u_input.a, u_input.a), vec3<i32>(69429i, u_input.b.x, 1i))))).xzy));
    var var_1 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1648f)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, 427f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(894f, 1496f, 242f, var_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1394f, 364f, -970f))))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(var_0.x <= 1000f, true), true), ~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 61334u), vec3<u32>(u_input.a, u_input.a, u_input.a)), u_input.a)), -(u_input.b >> (vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), 28404u, abs(u_input.a)) % vec3<u32>(32u))));
    var_0 = var_1.a.yyw;
    var var_2 = var_1.c.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(var_1.a)))), !vec2<bool>(!(global0[_wgslsmith_index_u32(var_1.c.x, 9u)] != -1i), true), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 1u & var_1.c.x)), max(~_wgslsmith_clamp_vec2_u32(var_1.c, var_1.c, var_1.c), abs(var_1.c | vec2<u32>(u_input.a, 32633u)))), var_1.d);
    let var_4 = u_input.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

