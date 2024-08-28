struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-185f, -1125f), vec2<f32>(1206f, 230f), vec3<bool>(true, true, false));

var<private> global1: vec2<i32> = vec2<i32>(-10946i, -25627i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = arg_0;
    global1 = select(abs(reverseBits(-vec2<i32>(var_0.d.b, -1i))), vec2<i32>(var_0.d.b, _wgslsmith_clamp_i32(u_input.c, arg_0.d.b, -2147483647i)), global0.c.x & true);
    let var_1 = select(true, min(~(-1658i), countOneBits(1i)) != arg_0.d.b, global0.c.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f + -1521f)), ~arg_0.b, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.a, u_input.b, 1u, arg_0.d.a), vec4<u32>(u_input.b, 37487u, arg_0.c, var_0.d.a)) % 32u), u_input.b), arg_0.b.x, abs(18545u)), Struct_1(arg_0.c, reverseBits(i32(-1i) * -5208i), arg_0.d.c));
    global0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(157f, arg_0.d.c.x), vec2<f32>(696f, global0.a.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.d.c.zz) * _wgslsmith_f_op_vec2_f32(arg_1.xy * vec2<f32>(global0.b.x, arg_0.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d.c.x, global0.b.x), arg_1.xw, any(vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_2.d.c.zw)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.d.c.x, 1144f), global0.a), true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-361f, _wgslsmith_f_op_f32(abs(var_2.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1042f, -1600f) + _wgslsmith_f_op_vec2_f32(min(global0.b, vec2<f32>(var_2.d.c.x, arg_1.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a))), !select(!global0.c, !global0.c, any(select(vec4<bool>(var_1, global0.c.x, var_1, var_1), vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x), global0.c.x))));
    return select(vec3<bool>(var_1, any(!select(vec4<bool>(var_1, global0.c.x, var_1, var_1), vec4<bool>(false, true, global0.c.x, global0.c.x), vec4<bool>(true, true, global0.c.x, global0.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0.a.x)))) >= 988f), global0.c, global0.c);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec2<f32> {
    global0 = Struct_3(global0.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(277f * arg_1.a) + _wgslsmith_f_op_f32(floor(-631f)))), 1308f), select(select(!func_3(arg_1, arg_1.d.c), !(!arg_3.yzw), vec3<bool>(global0.c.x, arg_0.x, false)), !vec3<bool>(false, arg_3.x, true), vec3<bool>(arg_3.x || (global0.c.x & global0.c.x), all(vec2<bool>(arg_3.x, false)), any(arg_3))));
    let var_0 = -countOneBits(reverseBits(-1i & ~u_input.c));
    let var_1 = arg_1.d;
    var var_2 = !(!arg_0.x);
    let var_3 = Struct_1(~arg_1.d.a, 46163i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_div_f32(global0.b.x, arg_1.a)), _wgslsmith_f_op_f32(trunc(arg_1.d.c.x)), _wgslsmith_div_f32(-301f, global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(floor(var_1.c.x)))))));
    return vec2<f32>(var_1.c.x, _wgslsmith_div_f32(global0.a.x, var_1.c.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(global0.c.xz, arg_1, arg_1.b.xy, vec4<bool>(true, global0.c.x, global0.c.x, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1797f, global0.a.x) - global0.a)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.d.c.wz + _wgslsmith_f_op_vec2_f32(-arg_1.d.c.yw)))) - _wgslsmith_f_op_vec2_f32(-arg_1.d.c.xw)), !global0.c);
    let var_1 = !select(var_0.c.zy, !vec2<bool>(global1.x > -1i, !var_0.c.x), vec2<bool>(any(select(var_0.c.zz, vec2<bool>(false, global0.c.x), var_0.c.x)), true));
    return vec2<i32>(-2147483647i, abs(~(~47438i))) | ~arg_0.yx;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = ~(~vec2<u32>(select(~u_input.b, _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.b), true), u_input.a));
    let var_1 = Struct_2(global0.b.x, ~vec3<u32>(_wgslsmith_mult_u32(4294967295u & var_0.x, 4294967295u), var_0.x & 41256u, ~var_0.x), _wgslsmith_mod_u32(var_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 93902u), vec2<u32>(var_0.x, var_0.x)) ^ u_input.a, ~1u)), Struct_1(var_0.x, ~_wgslsmith_div_i32(-1i, u_input.c) << (_wgslsmith_add_u32(var_0.x, var_0.x >> (var_0.x % 32u)) % 32u), vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.b.x) - -595f), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-132f, 353f))));
    var var_3 = var_1.d;
    global0 = arg_2;
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(firstLeadingBit(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(0i, u_input.c), func_1(vec4<i32>(global1.x, u_input.c, u_input.c, global1.x), Struct_2(897f, vec3<u32>(u_input.a, 4294967295u, 52648u), 4294967295u, Struct_1(28347u, -1i, vec4<f32>(global0.b.x, 1059f, global0.a.x, 876f))), u_input.c, vec2<u32>(u_input.a, 4488u)), true), -(vec2<i32>(1i, u_input.c) & vec2<i32>(u_input.c, u_input.c)), select(abs(vec2<i32>(global1.x, u_input.c)), firstLeadingBit(vec2<i32>(-2147483647i, 16027i)), func_3(Struct_2(1000f, vec3<u32>(2077u, 23898u, u_input.b), 20815u, Struct_1(13085u, global1.x, vec4<f32>(-382f, global0.a.x, global0.a.x, global0.a.x))), vec4<f32>(global0.a.x, global0.b.x, -524f, 351f)).xz))), func_3(Struct_2(_wgslsmith_f_op_f32(min(299f, _wgslsmith_f_op_f32(step(-1000f, -515f)))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.b, 28324u), vec3<u32>(12163u, u_input.b, 25244u)), reverseBits(4294967295u), Struct_1(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global1.x, u_input.c), vec3<i32>(1i, 0i, -1i)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, -405f, 185f, 378f), vec4<f32>(-912f, global0.a.x, -437f, global0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.b.x, global0.a.x, -436f)) * vec4<f32>(-898f, global0.b.x, 314f, -101f)))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.a))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.b.x)), 404f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(false, global0.c.x), Struct_2(225f, vec3<u32>(u_input.b, u_input.b, 78712u), 4294967295u, Struct_1(u_input.a, global1.x, vec4<f32>(global0.b.x, 566f, 3876f, 352f))), vec2<u32>(u_input.a, 51114u), vec4<bool>(global0.c.x, true, global0.c.x, global0.c.x))) * _wgslsmith_f_op_vec2_f32(-global0.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, -1000f) - global0.b)), global0.c));
    var var_1 = Struct_1(u_input.a, u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(ceil(var_0.c.x))), -1000f)));
    var var_2 = Struct_2(1000f, vec3<u32>(abs(1u) & firstTrailingBit(var_0.a), 103385u, ~39120u), 1u << (select(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a, var_1.a), ~22901u), ~_wgslsmith_mult_u32(0u, var_0.a), select(all(vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), !global0.c.x, global0.c.x)) % 32u), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(16490u, ~20412u, ~u_input.a), vec3<u32>(u_input.b >> (19582u % 32u), ~4294967295u, ~6135u)), -57528i, var_1.c));
    var_0 = func_4(abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.b | -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, global1.x), vec3<i32>(-6269i, u_input.c, -21877i))), vec2<i32>(var_2.d.b, var_2.d.b))), !select(global0.c, vec3<bool>(false, global0.c.x, all(vec2<bool>(global0.c.x, global0.c.x))), all(vec3<bool>(global0.c.x, true, true))), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(152f, var_1.c.x) * var_0.c.yw))), var_2.d.c.yz), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2924f, -1622f))), global0.c));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))))), 1f));
    var var_4 = vec2<u32>(54694u, _wgslsmith_clamp_u32(~0u ^ var_0.a, ~0u, var_2.d.a));
    var_0 = func_4(reverseBits(-reverseBits(vec2<i32>(var_0.b, 0i)) | abs(vec2<i32>(-1i, -2147483647i))), global0.c, Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-226f, var_1.c.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.d.c.zw, global0.a, vec2<bool>(global0.c.x, global0.c.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(749f - 514f))), !select(!vec3<bool>(global0.c.x, false, true), func_3(Struct_2(var_2.d.c.x, vec3<u32>(24378u, 1u, 4294967295u), var_0.a, var_2.d), vec4<f32>(-887f, -1000f, 162f, var_0.c.x)), !global0.c)));
    var_1 = var_2.d;
    var var_5 = Struct_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1740f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3), var_0.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.x), global0.a.x))), vec2<f32>(618f, -1000f), select(func_3(Struct_2(-862f, ~var_2.b, _wgslsmith_mult_u32(var_2.b.x, var_2.c), var_2.d), vec4<f32>(func_4(vec2<i32>(1i, u_input.c), global0.c, Struct_3(vec2<f32>(-378f, var_0.c.x), vec2<f32>(564f, var_0.c.x), vec3<bool>(false, global0.c.x, false))).c.x, _wgslsmith_f_op_f32(-var_1.c.x), -634f, _wgslsmith_f_op_f32(floor(697f)))), global0.c, vec3<bool>(global0.c.x, true, all(vec4<bool>(true, true, global0.c.x, global0.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(397f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_5.a - var_5.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, 1023f) - vec2<f32>(-1000f, var_5.a.x))))), var_4.x, var_2.b.x);
}

