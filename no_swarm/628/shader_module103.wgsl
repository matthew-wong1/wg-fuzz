struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = -14922i;
    let var_1 = arg_0.c;
    let var_2 = u_input.b;
    let var_3 = countOneBits(_wgslsmith_dot_vec2_i32(~select(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, -1i), vec2<i32>(5963i, -2147483647i)), vec2<i32>(1i, u_input.e) | vec2<i32>(-8986i, 0i), vec2<bool>(false, arg_0.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(22447i, u_input.e), -14600i), ~vec2<i32>(1i, 1i))));
    var var_4 = false;
    return select(max(12146u, var_1) << (_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xx) % 32u), u_input.b.x, false);
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = vec4<u32>(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1389f, 2034f, 189f, -1870f))), !arg_0, _wgslsmith_mult_u32(abs(u_input.a.x), _wgslsmith_add_u32(u_input.b.x, u_input.a.x)))), ~25075u, ~firstTrailingBit(35214u), ~u_input.c);
    let var_1 = -23655i;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(180f, 528f, -266f, 1015f), vec4<f32>(1f, 1f, 1f, 1f), !vec4<bool>(arg_0, false, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(952f, -606f, -194f, 1150f))))), false, countOneBits(0u)), ~firstTrailingBit(vec3<i32>(u_input.e, ~1i, _wgslsmith_mod_i32(0i, -56006i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-749f - 928f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -211f) * 339f))), vec3<bool>(true, arg_0, true));
    let var_3 = var_2.a;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_3.a, var_3.a)))), any(select(!vec4<bool>(true, false, true, var_3.b), vec4<bool>(arg_0, var_2.d.x, true, var_3.b), vec4<bool>(var_3.b, var_3.b, arg_0, arg_0))), 4294967295u), var_2.b, var_2.c, select(vec3<bool>(!var_2.a.b, false & !var_2.a.b, true), vec3<bool>(all(!vec4<bool>(true, arg_0, false, false)), (true || arg_0) | (false & arg_0), false), !any(vec4<bool>(false, var_3.b, var_2.a.b, true)) & any(vec4<bool>(true, false, var_2.a.b, false))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(708f + _wgslsmith_f_op_f32(abs(-311f))), 277f) * var_2.a.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = u_input.d;
    var var_1 = Struct_2(arg_1, arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(926f)), arg_0, arg_2.d.x)))), !vec3<bool>(select(true, !arg_2.d.x, all(vec2<bool>(true, arg_2.d.x))), arg_2.a.b, all(vec2<bool>(false, arg_2.a.b)) || arg_2.a.b));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-503f, _wgslsmith_f_op_f32(-1000f + 2792f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-196f, arg_0), -397f)) * _wgslsmith_div_f32(var_1.c, _wgslsmith_div_f32(arg_2.a.a.x, _wgslsmith_f_op_f32(ceil(arg_1.a.x))))));
    var_2 = -1820f;
    var_2 = arg_0;
    return firstTrailingBit(73014u);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(countOneBits(0u), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1717f * 1189f) + _wgslsmith_f_op_f32(select(1716f, -428f, true))))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), arg_2, ~firstTrailingBit(arg_0)), Struct_2(Struct_1(vec4<f32>(119f, -1357f, 1221f, -150f), true, 0u), ~vec3<i32>(u_input.e, 2147483647i, arg_3) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(-575f, _wgslsmith_f_op_f32(step(1138f, -1315f)), !arg_2)), !(!vec3<bool>(true, arg_2, false))), firstTrailingBit(arg_3) << (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u)));
    var var_1 = Struct_2(Struct_1(vec4<f32>(-1320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(345f, 2131f)) - _wgslsmith_f_op_f32(min(213f, -116f))), 112f, 762f), any(select(select(vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(arg_2, false, false, arg_2), false), !vec4<bool>(true, arg_2, arg_2, arg_2), true)), 4294967295u), _wgslsmith_sub_vec3_i32(~(~(~vec3<i32>(arg_3, arg_3, u_input.e))), vec3<i32>(-21174i ^ arg_3, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.e, arg_3, arg_3), vec4<i32>(arg_3, 0i, -2147483647i, arg_3)), reverseBits(vec4<i32>(2147483647i, 33289i, -1i, u_input.e))), select(u_input.e, _wgslsmith_clamp_i32(17477i, 6174i, arg_3), true))), -125f, !vec3<bool>(all(vec2<bool>(arg_2, arg_2)) || arg_2, !all(vec4<bool>(true, arg_2, false, true)), true));
    var var_2 = var_1.a.a.xw;
    var var_3 = all(var_1.d.xy);
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_1.a.a), vec4<f32>(var_1.c, var_1.c, var_1.c, 401f))) * vec4<f32>(_wgslsmith_f_op_f32(var_1.a.a.x - -1651f), 865f, _wgslsmith_f_op_f32(step(-1809f, var_1.c)), _wgslsmith_f_op_f32(var_2.x * -1000f))), !(!var_1.a.b), 34210u), vec3<i32>(-2147483647i, max(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-12375i, var_1.b.x), vec2<i32>(u_input.e, -44452i))), -select(37544i, _wgslsmith_sub_i32(25416i, 0i), any(var_1.d.yy))), _wgslsmith_f_op_f32(floor(var_2.x)), var_1.d);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1u, u_input.c << (_wgslsmith_dot_vec2_u32(u_input.b, firstTrailingBit(u_input.a.xy)) % 32u), false, -1i);
    let var_1 = Struct_2(func_1(~u_input.c, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.a.c, u_input.a.x, 4294967295u, 82877u) & vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.d), ~vec4<u32>(42652u, 0u, 48448u, 75899u), var_0.a.b), ~vec4<u32>(var_0.a.c, var_0.a.c, 26578u, var_0.a.c) | ~vec4<u32>(u_input.d, var_0.a.c, 5211u, 67224u)), true, var_0.b.x).a, abs(vec3<i32>(1i, -2147483647i, var_0.b.x & ~57019i)), -478f, select(vec3<bool>(false, true, !var_0.a.b), vec3<bool>(true, true, true), var_0.d));
    var var_2 = func_1(~(~(firstTrailingBit(4294967295u) | func_4(1463f, var_0.a, var_1, 1146i))), firstTrailingBit(~(48880u ^ ~u_input.a.x)), !(!any(func_1(38573u, 0u, false, 8130i).d)), var_1.b.x & countOneBits(0i ^ func_1(101421u, 1u, false, var_1.b.x).b.x));
    let var_3 = _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(firstTrailingBit(-15538i), -var_1.b.x), ~(-15811i << (var_1.a.c % 32u))) >> (~func_1(48286u, var_2.a.c, true, -1i).a.c % 32u));
    var var_4 = var_2.a;
    var var_5 = var_1.a;
    var var_6 = func_1(_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_sub_u32(func_3(func_1(var_0.a.c, 4294967295u, true, var_2.b.x).a), ~13382u)), firstLeadingBit(~_wgslsmith_div_u32(~1u, firstTrailingBit(4294967295u))), !select(func_1(var_1.a.c, 4294967295u, true, ~var_1.b.x).a.b, !var_2.d.x | func_1(var_0.a.c, u_input.c, var_0.d.x, 39185i).a.b, true), var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(0u), var_0.a.a, firstTrailingBit(vec4<i32>(u_input.e, select(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, var_6.b.x, 28434i), vec4<i32>(var_1.b.x, var_0.b.x, 0i, var_3)), false), ~(-6353i | u_input.e), ~(-2477i))), 34917i >> (var_0.a.c % 32u));
}

