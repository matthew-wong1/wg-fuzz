struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 0i, -10867i);

var<private> global1: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(348f * arg_1.a.e), _wgslsmith_f_op_f32(min(-219f, 627f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(673f, -136f) * vec2<f32>(arg_2.b, -809f)), vec2<f32>(arg_1.a.e, arg_2.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1224f, arg_1.a.b)))))));
    let var_1 = !select(select(vec2<bool>(arg_1.a.c, arg_1.a.c), !vec2<bool>(true, arg_2.c), arg_1.a.c), !(!(!vec2<bool>(arg_1.a.c, false))), arg_1.a.c);
    var var_2 = Struct_1(vec3<u32>(~max(arg_1.a.a.x, arg_2.a.x) ^ max(arg_1.a.d, arg_1.a.d), _wgslsmith_add_u32(2045u, _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, arg_1.a.d), ~arg_2.d)), 16255u), -384f, arg_1.a.c, firstLeadingBit((1u >> (1u % 32u)) ^ arg_1.a.d), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.e))), _wgslsmith_f_op_f32(min(-1552f, arg_1.a.e))), arg_2.b, var_1.x)));
    let var_3 = Struct_2(-(~(-_wgslsmith_div_i32(-15815i, -60072i))));
    return all(select(vec3<bool>(var_1.x, true, !arg_2.c), !select(vec3<bool>(arg_1.a.c, var_1.x, true), vec3<bool>(true, var_1.x, true), true), select(vec3<bool>(var_2.c, var_2.c, true), vec3<bool>(var_1.x, var_2.c, false), true))) | arg_1.a.c;
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = all(select(vec2<bool>(true, _wgslsmith_f_op_f32(trunc(930f)) > _wgslsmith_f_op_f32(1926f - 111f)), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), select(false, true, false)), vec2<bool>(func_3(u_input.c.x, Struct_3(Struct_1(vec3<u32>(4294967295u, 66638u, 21931u), -1321f, false, 56019u, 1143f)), Struct_1(vec3<u32>(4294967295u, 0u, 51837u), -1054f, true, 6421u, -1194f), vec4<i32>(-1i, arg_0.a, global1.a, global1.a)), true)), select(vec2<bool>(func_3(global1.a, Struct_3(Struct_1(vec3<u32>(6358u, 0u, 28332u), -1000f, false, 31571u, 413f)), Struct_1(vec3<u32>(44205u, 4740u, 45413u), -427f, true, 1u, -1188f), vec4<i32>(2147483647i, -2147483647i, global0.x, u_input.b)), true), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, true)), true))));
    var_0 = !func_3(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.x, u_input.a.x) ^ -global0.zx, reverseBits(vec2<i32>(9419i, -38959i))), Struct_3(Struct_1(~vec3<u32>(0u, 0u, 4294967295u), -388f, true, _wgslsmith_sub_u32(1u, 0u), -1000f)), Struct_1(firstLeadingBit(max(vec3<u32>(62322u, 16934u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u))), _wgslsmith_div_f32(-1440f, 398f), any(vec3<bool>(true, true, true)), 1u, 634f), -vec4<i32>(-1043i, reverseBits(-43306i), _wgslsmith_mod_i32(-34748i, 21064i), -global0.x));
    global0 = vec3<i32>(-2147483647i, _wgslsmith_mod_i32(-17323i, -u_input.a.x), -1i);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1071f, 1745f)) * _wgslsmith_f_op_f32(sign(-451f)))), _wgslsmith_f_op_f32(-123f - _wgslsmith_f_op_f32(f32(-1f) * -2144f))), _wgslsmith_f_op_f32(ceil(1000f)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1374f * 742f), var_1.x);
    return vec3<bool>(true, true & all(vec2<bool>(true, true)), false);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    let var_0 = ~u_input.a.yy;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.b, -927f, _wgslsmith_f_op_f32(-arg_0.a.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.e, -918f, arg_0.a.e)) - vec3<f32>(-2404f, arg_0.a.e, arg_0.a.e)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-833f, arg_0.a.b, arg_0.a.e)))))))), select(vec3<bool>(false, arg_0.a.c, !(arg_0.a.b <= 192f)), func_2(arg_1), !any(!vec4<bool>(arg_0.a.c, arg_0.a.c, true, arg_0.a.c)))));
    var var_2 = arg_0.a.b;
    global1 = Struct_2(select(14086i, -748i, arg_0.a.c));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-arg_0.a.b))), -605f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -654f), 1000f)), arg_0.a.e)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.e)), var_1.x)))));
    return Struct_2(var_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_2(Struct_2(0i << (countOneBits(reverseBits(56038u)) % 32u)));
    let var_1 = Struct_1(vec3<u32>(~(_wgslsmith_dot_vec3_u32(vec3<u32>(26162u, 59642u, arg_1), vec3<u32>(0u, 1u, arg_1)) >> (1u % 32u)), (arg_1 >> ((67899u >> (arg_1 % 32u)) % 32u)) | 37523u, ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, 0u), 93824u)), -1164f, _wgslsmith_mod_u32(88342u, ~select(arg_1, arg_1, var_0.x)) == arg_1, ~arg_1, 516f);
    let var_2 = firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_mod_vec2_i32(global0.xx, global0.yy)))) > -26571i;
    let var_3 = vec4<i32>(global0.x, 15055i, -(~firstTrailingBit(arg_0.a) | 33146i), 12606i);
    let var_4 = 1u >> (arg_1 % 32u);
    return Struct_1(select(reverseBits(vec3<u32>(30695u, min(0u, 4294967295u), ~79236u)), vec3<u32>(arg_1, ~abs(var_4), 1u), select(select(func_2(arg_2), select(vec3<bool>(var_1.c, true, false), var_0, var_0), var_1.c), vec3<bool>(var_0.x, true, !var_0.x), var_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(397f * var_1.e)))))), !any(vec4<bool>(!var_2, all(vec4<bool>(var_1.c, var_2, true, false)), func_3(u_input.c.x, Struct_3(Struct_1(vec3<u32>(arg_1, var_1.a.x, 27683u), -1712f, false, 0u, var_1.b)), var_1, var_3), any(var_0))), var_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1681f, -828f)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(~_wgslsmith_add_vec3_u32(arg_0.a.a ^ vec3<u32>(arg_0.a.a.x, 0u, arg_0.a.a.x), ~arg_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -185f), !all(arg_1.wxy) | arg_2, 21032u, arg_0.a.e));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(global0.yz, vec2<i32>(min(-11355i, reverseBits(global0.x)), global1.a)));
    global0 = firstLeadingBit(vec3<i32>(-1i) * -(~_wgslsmith_mod_vec3_i32(u_input.a, u_input.a)));
    var var_2 = _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_0.a.a.xy, reverseBits(~vec2<u32>(var_0.a.a.x, arg_0.a.a.x)) | ~(arg_0.a.a.zx & vec2<u32>(16629u, var_0.a.d))));
    let var_3 = arg_0.a;
    return func_4(Struct_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_1.a, global1.a), u_input.a), -vec3<i32>(var_1.a, -2147483647i, global0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(51241i, u_input.c.x, var_1.a, global0.x), select(vec4<i32>(-2147483647i, global0.x, u_input.a.x, 2783i), vec4<i32>(-24484i, -85877i, var_1.a, u_input.c.x), false)))), 2272u, Struct_2(u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = 4294967295u;
    global0 = -(~(~vec3<i32>(global0.x, 23227i, 658i << (var_1 % 32u))));
    global0 = vec3<i32>(_wgslsmith_mod_i32(global0.x, -u_input.c.x), -global1.a, u_input.a.x & u_input.c.x);
    global0 = u_input.a;
    let var_2 = Struct_3(func_5(Struct_3(func_4(func_1(Struct_3(Struct_1(vec3<u32>(1u, 1u, var_1), 847f, true, var_1, 430f)), Struct_2(u_input.a.x)), _wgslsmith_clamp_u32(var_1, 1u, var_1), func_1(Struct_3(Struct_1(vec3<u32>(1u, var_1, var_1), -752f, false, var_1, -552f)), Struct_2(26154i)))), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, var_0, var_0), all(!vec3<bool>(var_0, true, var_0))), true));
    global0 = ~(~vec3<i32>(global0.x, _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), abs(global1.a), reverseBits(-2147483647i)), 1i));
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2.a.b, var_2.a.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.e, -1197f, 1473f) + vec3<f32>(-1020f, -710f, var_2.a.e)))))), vec2<u32>(abs(1u), _wgslsmith_mod_u32(var_2.a.d, ~1u)), 490u, _wgslsmith_sub_u32(38252u, firstTrailingBit(~var_1)));
}

