struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32 = -932f;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1i), Struct_1(13273i), Struct_1(-1i), Struct_1(-52750i), Struct_1(-14555i), Struct_1(15407i), Struct_1(2147483647i), Struct_1(2147483647i));

var<private> global3: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(85062u, 4294967295u, 47714u), vec3<u32>(59942u, 0u, 4294967295u), vec3<u32>(0u, 1u, 11136u), vec3<u32>(70654u, 0u, 1u), vec3<u32>(26200u, 4294967295u, 18426u), vec3<u32>(39310u, 54992u, 1u), vec3<u32>(4294967295u, 0u, 39244u), vec3<u32>(63334u, 4294967295u, 4294967295u), vec3<u32>(34487u, 13930u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 31104u, 4294967295u), vec3<u32>(14512u, 1u, 4294967295u), vec3<u32>(26902u, 0u, 79050u), vec3<u32>(0u, 51730u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b.x, arg_0.b.x), vec2<f32>(arg_0.b.x, arg_0.b.x))), arg_0.b.xx, select(vec2<bool>(true, global0.x), global0.xw, vec2<bool>(true, global0.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.b.xx)))));
    global3 = array<vec3<u32>, 15>();
    var var_1 = ~u_input.b.xx;
    global3 = array<vec3<u32>, 15>();
    let var_2 = arg_0;
    return true;
}

fn func_3() -> f32 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(u_input.a, _wgslsmith_mod_i32(u_input.a, -18134i)), reverseBits(u_input.a), u_input.a, -1i);
    global2 = array<Struct_1, 8>();
    var_0 = vec4<i32>(select(1i, i32(-1i) * -2147483647i, global0.x), _wgslsmith_dot_vec3_i32(var_0.wyw & _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(var_0.yxx, vec3<i32>(var_0.x, 2147483647i, u_input.a)), var_0.yyy & vec3<i32>(-2147483647i, -20348i, u_input.a)), select(vec3<i32>(u_input.a, min(1i, 0i), countOneBits(1i)), var_0.wxy, global0.x)), _wgslsmith_mod_i32(select(var_0.x & -19923i, -u_input.a, global0.x), _wgslsmith_mod_i32(18232i, u_input.a) & -var_0.x) ^ -55233i, _wgslsmith_mult_i32(37631i, -u_input.a));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f)), _wgslsmith_f_op_f32(sign(-252f)), u_input.a > 49980i))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(713f, _wgslsmith_div_f32(_wgslsmith_div_f32(-488f, 1425f), _wgslsmith_f_op_f32(floor(-1854f)))))));
    var var_1 = global2[_wgslsmith_index_u32(59935u, 8u)];
    return _wgslsmith_f_op_f32(-132f + 1289f);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>) -> i32 {
    let var_0 = arg_0;
    var var_1 = u_input.b.x;
    var var_2 = vec2<bool>(true, arg_1.x);
    var var_3 = vec2<bool>(!(!(func_2(Struct_2(Struct_1(var_0.x), vec3<f32>(269f, -505f, 2702f), Struct_1(-2147483647i))) & func_2(Struct_2(global2[_wgslsmith_index_u32(1u, 8u)], vec3<f32>(459f, -203f, -1000f), Struct_1(-1i))))), select(true, _wgslsmith_f_op_f32(func_3()) <= -2038f, true));
    let var_4 = select(vec3<bool>(any(vec2<bool>(false, all(vec3<bool>(var_2.x, var_3.x, true)))), true, all(select(select(global0.yzw, global0.xwx, false), global0.yzy, var_3.x))), !global0.yzy, !any(!(!vec3<bool>(false, false, arg_1.x))));
    return min(var_0.x, firstLeadingBit(arg_0.x));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global2 = array<Struct_1, 8>();
    var var_0 = global0.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-510f, -321f, 532f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(2231f)), arg_2))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -669f)), arg_2, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, arg_2) + _wgslsmith_f_op_f32(f32(-1f) * -451f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-127f * arg_2))))), true));
    var var_2 = select(vec3<bool>(all(vec4<bool>(global0.x | global0.x, true, 1314f >= arg_2, select(false, false, global0.x))), all(vec2<bool>(global0.x, any(vec3<bool>(global0.x, false, global0.x)))), global0.x), vec3<bool>(global0.x, !global0.x, func_2(Struct_2(Struct_1(arg_0), _wgslsmith_f_op_vec3_f32(var_1.xwz - var_1.xxw), Struct_1(arg_3.a)))), !global0.zwz);
    global1 = _wgslsmith_f_op_f32(floor(arg_2));
    return Struct_2(global2[_wgslsmith_index_u32(max(arg_1.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 15112u), select(global3[_wgslsmith_index_u32(9763u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)], false)), 88135u)), 8u)], _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2, -248f, -1493f))), var_1.xyx)), vec3<f32>(1f, _wgslsmith_f_op_f32(arg_2 + -160f), var_1.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.yxz, vec3<f32>(-149f, -142f, var_1.x))), var_1.xxz))))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(min(vec3<u32>(u_input.c, u_input.c, arg_1.x), abs(arg_1)), vec3<u32>(~arg_1.x, 1u, arg_1.x), !(arg_1.x <= 42719u)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(20402u, 1u, arg_1.x)), abs(global3[_wgslsmith_index_u32(~u_input.b.x, 15u)]))), 8u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_dot_vec4_i32(~vec4<i32>(21155i, u_input.a & -31091i, -u_input.a, u_input.a), abs(vec4<i32>(-u_input.a, u_input.a, func_1(vec2<i32>(7217i, -1933i), global0.wx), -2147483647i))), ~vec3<u32>(1u, u_input.c, 1u), _wgslsmith_f_op_f32(func_3()), global2[_wgslsmith_index_u32(~u_input.b.x, 8u)]);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(662f, _wgslsmith_f_op_f32(886f - var_0.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(262f + 1772f))));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(2147483647i, 1i, u_input.a, -1i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(9297i, 1i, 0i, -2147483647i), vec4<i32>(u_input.a, u_input.a, 2147483647i, var_0.a.a), vec4<i32>(var_0.a.a, -8468i, 2147483647i, -30093i))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 32234i, -13581i, var_0.c.a), vec4<i32>(0i, var_0.a.a, -1i, 41610i)), vec4<i32>(37979i, -53586i, u_input.a, 2147483647i)) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 6124u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c, u_input.c, 64598u, 49636u), vec4<u32>(20263u, 25878u, 0u, 0u)) | abs(vec4<u32>(u_input.c, u_input.b.x, 18817u, 4294967295u))) % vec4<u32>(32u))), vec4<i32>(2147483647i, -firstTrailingBit(_wgslsmith_add_i32(u_input.a, var_0.a.a)), -1i, ~u_input.a));
    let var_2 = global0.x;
    let var_3 = Struct_1(18162i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1032f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -129f))), -vec4<i32>(_wgslsmith_div_i32(reverseBits(var_3.a), _wgslsmith_mult_i32(-46649i, var_1.x)), i32(-1i) * -54445i, ~firstLeadingBit(2147483647i), _wgslsmith_add_i32(var_1.x, 1i) & _wgslsmith_add_i32(1i, 1i)), vec2<i32>(var_1.x, 0i), var_0.b.x);
}

