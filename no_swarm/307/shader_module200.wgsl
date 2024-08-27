struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global0 = select(67065i, 1i, all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true), u_input.d <= u_input.b), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false)))));
    global0 = 0i;
    global0 = -901i;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(316f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -899f)))), _wgslsmith_f_op_f32(539f * -1000f)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - 263f), _wgslsmith_f_op_f32(trunc(-1080f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, arg_2)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-725f, 357f, arg_2, arg_2), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-506f, 1979f, -1111f, arg_2))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, arg_2, 537f, -1128f))))));
    var var_1 = !vec4<bool>(!(countOneBits(u_input.b) >= u_input.b), !(!(u_input.e.x != -6084i)), !((u_input.a ^ u_input.d) <= firstLeadingBit(4294967295u)), true);
    global0 = u_input.c.x;
    global0 = arg_0.b.x;
    let var_2 = select(vec3<bool>(!(~u_input.d != ~0u), -1i != (-13583i ^ arg_0.b.x), -2147483647i >= arg_0.a), var_1.yyz, select(var_1.zyz, select(var_1.yxz, !select(var_1.zww, var_1.yxx, arg_1), all(!vec4<bool>(arg_1, false, false, true))), !vec3<bool>(any(vec2<bool>(false, arg_1)), any(vec4<bool>(false, true, arg_1, var_1.x)), arg_1)));
    return -(_wgslsmith_div_i32(u_input.e.x, ~arg_0.a) | max(i32(-1i) * -48074i, firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_0.b, u_input.c))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = firstLeadingBit(~select(~vec4<u32>(37768u, u_input.b, 6840u, 65177u), ~vec4<u32>(1u, u_input.a, u_input.a, u_input.d), true)) << (_wgslsmith_sub_vec4_u32(firstTrailingBit(firstTrailingBit(vec4<u32>(0u, u_input.a, 12662u, 14938u))), vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.d, 17072u), vec2<u32>(72694u, 8034u), vec2<bool>(false, false)), vec2<u32>(0u, 60105u)), reverseBits(~u_input.d), 4294967295u, u_input.b)) % vec4<u32>(32u));
    global0 = _wgslsmith_div_i32(firstLeadingBit(reverseBits(u_input.c.x)), min(arg_1.b.x, _wgslsmith_div_i32((45058i << (u_input.d % 32u)) ^ abs(arg_2.b.x), ~arg_0)));
    let var_1 = vec2<i32>(arg_0, ~reverseBits(_wgslsmith_mod_i32(arg_3.b.x, arg_3.a & -2147483647i)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.x, arg_1.a.x) - -655f) - arg_2.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), arg_2.c.x, all(vec3<bool>(true, false, true)))) - _wgslsmith_f_op_f32(abs(arg_2.a.x))), arg_1.a.x), 469f);
    var var_3 = ~firstTrailingBit(72223u);
    return _wgslsmith_add_u32(u_input.d, countOneBits(min(23500u, u_input.a)) | u_input.d);
}

fn func_1() -> Struct_1 {
    global0 = (1i << (func_4(func_2(Struct_2(u_input.c.x, u_input.c), true, _wgslsmith_f_op_f32(224f - 1471f)), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1025f, -599f), vec2<f32>(408f, 1716f))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.e.x, 58343i, 0i), vec4<i32>(u_input.e.x, u_input.c.x, u_input.e.x, -48717i)), vec4<f32>(111f, 374f, 622f, -664f), vec3<i32>(0i, 37891i, -54219i)), Struct_1(vec2<f32>(-1321f, -1234f), -vec4<i32>(-1i, -5i, -34026i, u_input.c.x), vec4<f32>(281f, -1085f, -339f, -2577f), countOneBits(vec3<i32>(u_input.e.x, 25384i, -2147483647i))), Struct_2(u_input.c.x, vec3<i32>(-6119i, u_input.e.x, -2147483647i))) % 32u)) & _wgslsmith_dot_vec3_i32(-u_input.c, abs(vec3<i32>(u_input.e.x >> (u_input.a % 32u), u_input.e.x, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(534f, -592f), _wgslsmith_f_op_vec2_f32(vec2<f32>(203f, -779f) + vec2<f32>(-125f, -930f)), true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -159f), -932f), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1751f)) + _wgslsmith_f_op_f32(-323f - -1023f)), 220f))), vec4<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), u_input.c.xz), u_input.c.x)), u_input.c.x, u_input.e.x | 0i, 18994i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-910f, -500f))), 1514f, _wgslsmith_div_f32(_wgslsmith_div_f32(-2115f, _wgslsmith_f_op_f32(floor(-323f))), _wgslsmith_f_op_f32(trunc(-1189f))), -535f), ~u_input.c);
    var var_1 = Struct_2(1i, var_0.b.zzw);
    var var_2 = reverseBits(vec3<u32>(u_input.b, _wgslsmith_div_u32(1u, _wgslsmith_add_u32(0u, 33978u ^ u_input.d)), 4294967295u | u_input.b));
    global0 = u_input.c.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.zy * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(var_0.a)))))), vec4<i32>(i32(-1i) * -3262i, _wgslsmith_dot_vec4_i32(reverseBits(var_0.b), countOneBits(var_0.b)), _wgslsmith_sub_i32(var_1.b.x, var_1.b.x), var_1.b.x) >> (~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a, u_input.b, 80094u, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, 61287u), vec4<u32>(25801u, var_2.x, u_input.d, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(109f + 1221f) - var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))), _wgslsmith_f_op_f32(-1295f + var_0.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(var_0.c)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.c)), _wgslsmith_f_op_vec4_f32(min(var_0.c, vec4<f32>(-286f, -718f, var_0.a.x, var_0.c.x)))))), ~vec3<i32>(1i, -1i, u_input.c.x >> (_wgslsmith_add_u32(var_2.x, 7661u) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<f32>) -> f32 {
    let var_0 = ~vec3<i32>(func_1().d.x, u_input.e.x, arg_1.b.x);
    global0 = 24026i;
    let var_1 = abs(vec4<i32>(-1i) * -(~func_1().b));
    var var_2 = Struct_1(arg_1.a, arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-445f, arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(func_3()), -458f), _wgslsmith_clamp_vec3_i32(vec3<i32>(-3165i, ~(i32(-1i) * -54006i), u_input.e.x), vec3<i32>(abs(6239i), ~(-1i), _wgslsmith_sub_i32(-var_1.x, arg_0.d.x)), vec3<i32>(1i, abs(~arg_2.a), ~(-25742i))));
    var var_3 = func_1();
    return _wgslsmith_f_op_f32(select(935f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(119f, -640f, _wgslsmith_f_op_f32(sign(-177f)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + var_0.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(var_0.yy)), vec4<i32>(43423i, u_input.e.x, 7074i, 9389i) ^ vec4<i32>(2147483647i, u_input.c.x, u_input.e.x, 3834i), vec4<f32>(var_0.x, var_0.x, -1057f, -987f), u_input.c & vec3<i32>(-2147483647i, -2859i, 63033i)), Struct_2(u_input.c.x, _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 2147483647i, 27386i))), vec4<f32>(1578f, -508f, _wgslsmith_f_op_f32(-var_0.x), var_0.x))) * -1000f), func_1().a.x);
    var var_2 = 0u;
    global0 = u_input.e.x;
    global0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs((i32(-1i) * -u_input.e.x) | u_input.c.x), -u_input.c.x, vec3<i32>(u_input.e.x & (1i >> (_wgslsmith_div_u32(u_input.b, 4294967295u) % 32u)), _wgslsmith_add_i32(~min(0i, -1i), -9819i), firstTrailingBit(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(9232i, u_input.c.x), u_input.e.x))), max(~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), reverseBits(vec3<u32>(45347u, 4294967295u, u_input.b))), select(firstLeadingBit(vec3<u32>(u_input.b, 9271u, u_input.b)), max(vec3<u32>(4294967295u, 114113u, 6856u), reverseBits(vec3<u32>(1u, 52585u, u_input.d))), (u_input.d & u_input.d) > 37767u)));
}

