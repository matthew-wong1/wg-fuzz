struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_1(vec2<i32>(1928i, 17703i), vec4<f32>(1151f, 1218f, -752f, -1000f), 951f), vec3<u32>(68597u, 4678u, 0u), Struct_1(vec2<i32>(-36665i, 0i), vec4<f32>(-1663f, -676f, -1224f, -2266f), -1000f)), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 37096i), vec4<f32>(-790f, 1000f, 1137f, -229f), -247f), vec3<u32>(9799u, 1u, 4294967295u), Struct_1(vec2<i32>(34433i, 1i), vec4<f32>(299f, 299f, -1000f, -1253f), 748f)), Struct_3(Struct_1(vec2<i32>(-9537i, 53440i), vec4<f32>(-1023f, 1962f, 322f, -202f), 820f), vec3<u32>(50334u, 19651u, 0u), Struct_1(vec2<i32>(-79408i, 36521i), vec4<f32>(564f, 524f, -588f, 460f), 1187f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_1(u_input.a.yx | -vec2<i32>(1i, -24723i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2352f, 384f, 1000f, -388f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(376f, 742f, 460f, 1729f))))), 354f), ~(~u_input.b.zzz ^ ~(vec3<u32>(u_input.c, 39646u, u_input.c) << (vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u)))), Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.a.x, 31557i) >> (vec2<u32>(59273u, u_input.d.x) % vec2<u32>(32u)), -u_input.a.yx), ~_wgslsmith_div_vec2_i32(u_input.a.xy, u_input.a.wy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, -432f, -250f, 1391f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(355f, 1832f, -872f, -169f), vec4<f32>(2111f, -770f, -788f, 659f))))), 635f));
    var var_1 = (-_wgslsmith_add_i32(19527i, 0i) & -var_0.c.a.x) != ~abs(-2147483647i);
    var_0 = Struct_3(Struct_1(vec2<i32>(~var_0.a.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), u_input.a.yw) << (~34701u % 32u)), vec4<f32>(930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c)), -381f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(exp2(var_0.c.b.x)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.c, var_0.c.c)))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(var_0.b.x), ~4294967295u, ~0u) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.yyx, vec3<u32>(62489u, 24744u, u_input.c)), abs(var_0.b), ~u_input.b.yxz) % vec3<u32>(32u)), firstLeadingBit(min(_wgslsmith_mod_vec3_u32(var_0.b, var_0.b), vec3<u32>(1u, var_0.b.x, var_0.b.x) | vec3<u32>(12207u, 0u, 0u)))), var_0.c);
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.d.x, 41593u, 4294967295u), ~vec4<u32>(1u, var_0.b.x, 0u, u_input.b.x)) << (abs(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.b.zx, vec2<u32>(0u, 31521u)), vec2<u32>(u_input.d.x, var_0.b.x)), ~u_input.b.x)) % 32u), 3u)];
    let var_2 = u_input.a;
    return 845f;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = arg_3.b.x;
    let var_1 = true;
    var var_2 = Struct_4(false, arg_2.b);
    let var_3 = u_input.a.yzw;
    var var_4 = -_wgslsmith_div_vec4_i32(~u_input.a, select(countOneBits(vec4<i32>(-40286i, -1i, arg_2.c.a.x, -1i)), min(~u_input.a, vec4<i32>(arg_0, -2147483647i, 1i, u_input.a.x)), all(!vec4<bool>(var_1, var_1, true, var_1))));
    return _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(-(vec2<i32>(arg_3.c.a.x, 2147483647i) << (vec2<u32>(4294967295u, var_0) % vec2<u32>(32u))), abs(-vec2<i32>(arg_3.a.a.x, 1i))) >> (vec2<u32>(abs(0u), arg_3.b.x) % vec2<u32>(32u)), var_4.xz);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = func_4(countOneBits(arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) + _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(min(-1328f, -267f))), Struct_3(Struct_1(-u_input.a.zw << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1423f, -1571f, -1910f, 119f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(972f, 1284f, -618f, 487f))), -284f), vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x, 1u), vec4<u32>(0u, u_input.b.x, u_input.d.x, 23950u)), u_input.b.x), Struct_1(_wgslsmith_sub_vec2_i32(max(vec2<i32>(-15118i, 0i), vec2<i32>(arg_2.x, arg_0)), vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1150f, 393f, -421f, 167f)), vec4<f32>(-2225f, -366f, 530f, 955f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-442f + -739f), -1663f))), global0[_wgslsmith_index_u32(u_input.c, 3u)]);
    var_0 = all(vec4<bool>((23114i >> (u_input.d.x % 32u)) >= (arg_0 << (select(u_input.c, 85123u, true) % 32u)), arg_1, all(vec3<bool>(true, any(vec2<bool>(arg_1, true)), !arg_1)), arg_1));
    var var_2 = -reverseBits(29658i & arg_2.x);
    let var_3 = Struct_1(-reverseBits(-vec2<i32>(var_1.x, u_input.a.x)) & var_1, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(260f - -904f), _wgslsmith_f_op_f32(-297f * -1970f), 1406f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1377f * -1265f)), -418f)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-778f, _wgslsmith_f_op_f32(step(563f, -792f))))))), var_3, Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_2, vec2<i32>(u_input.a.x, var_1.x)), var_1), ~(-var_3.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_3.b, vec4<f32>(var_3.b.x, var_3.b.x, var_3.b.x, -571f)))), _wgslsmith_f_op_vec4_f32(max(var_3.b, _wgslsmith_f_op_vec4_f32(var_3.b - var_3.b))), select(select(vec4<bool>(arg_1, true, true, true), vec4<bool>(false, arg_1, arg_1, arg_1), arg_1), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), !arg_1))), _wgslsmith_f_op_f32(abs(-1482f))), true);
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    return func_2(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-2147483647i, -2147483647i, 0i, u_input.a.x)), vec4<i32>(_wgslsmith_add_i32(14712i, 1i), u_input.a.x, -19658i, 36766i)), true, -(~(-vec2<i32>(u_input.a.x, u_input.a.x) & -u_input.a.xx)));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = vec2<u32>(94473u, 4294967295u);
    var var_1 = abs(var_0.x) >> (4294967295u % 32u);
    var_1 = _wgslsmith_mod_u32(1u, min(~(~(var_0.x << (u_input.b.x % 32u))), ~var_0.x));
    let var_2 = arg_0;
    var var_3 = -_wgslsmith_div_vec2_i32(arg_3.b.a, firstLeadingBit(_wgslsmith_div_vec2_i32(abs(vec2<i32>(arg_0.c.a.x, arg_3.b.a.x)), func_4(37382i, -948f, Struct_3(Struct_1(arg_3.b.a, vec4<f32>(-341f, arg_3.a, 412f, 657f), -2451f), u_input.b.yxz, arg_0.b), global0[_wgslsmith_index_u32(1u, 3u)]))));
    return vec2<i32>(~arg_3.b.a.x, -(~_wgslsmith_sub_i32(var_3.x, var_2.b.a.x)));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<u32>) -> StorageBuffer {
    global0 = array<Struct_3, 3>();
    let var_0 = Struct_2(-1000f, arg_0, arg_0, !(_wgslsmith_add_u32(min(4294967295u, 1u), _wgslsmith_add_u32(u_input.b.x, 4294967295u)) < 0u));
    var var_1 = vec3<i32>(-1i, firstTrailingBit(var_0.b.a.x), -1i);
    var var_2 = select(u_input.a, u_input.a, var_0.d);
    var_1 = var_2.zxx;
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-648f, -1140f)), _wgslsmith_f_op_f32(trunc(arg_0.c)))), 117f)), _wgslsmith_f_op_f32(ceil(-1302f))), arg_2.wz, ~(~1i & (~(-19674i) | arg_0.a.x)), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = func_6(Struct_1(func_5(func_1(-42982i <= u_input.a.x, Struct_4(true, vec3<u32>(u_input.c, 1u, u_input.b.x)), Struct_4(true, u_input.b.zww)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(385f)) * _wgslsmith_f_op_f32(1000f - 2398f)), all(vec4<bool>(true, true, true, true)), Struct_2(-473f, func_2(-2147483647i, false, vec2<i32>(u_input.a.x, u_input.a.x)).b, func_2(u_input.a.x, false, u_input.a.yw).c, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f + 467f), _wgslsmith_f_op_f32(f32(-1f) * -938f), -228f, -390f)), _wgslsmith_f_op_f32(f32(-1f) * -1673f)), u_input.a.xzz, abs(vec4<u32>(~1u, ~countOneBits(0u), _wgslsmith_sub_u32(u_input.b.x, ~40709u), ~u_input.b.x)));
}

