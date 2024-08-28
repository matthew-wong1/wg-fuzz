struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<u32>(7470u, 0u), vec4<f32>(728f, 1330f, 507f, -416f)), Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(941f, 171f, 1000f, -1325f)), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(993f, -300f, 1349f, -588f)), Struct_1(vec2<u32>(1u, 10021u), vec4<f32>(-1373f, 1054f, -578f, -352f)), Struct_1(vec2<u32>(38321u, 1u), vec4<f32>(905f, 207f, 155f, -1596f)), Struct_1(vec2<u32>(3102u, 1u), vec4<f32>(2163f, 1000f, 203f, -955f)), Struct_1(vec2<u32>(4071u, 1u), vec4<f32>(-479f, -1026f, 1000f, -1380f)), Struct_1(vec2<u32>(1u, 75942u), vec4<f32>(-1000f, -1346f, 106f, -1098f)), Struct_1(vec2<u32>(30055u, 0u), vec4<f32>(-533f, 1579f, 601f, 2337f)), Struct_1(vec2<u32>(8187u, 8933u), vec4<f32>(-645f, 909f, 290f, 1584f)), Struct_1(vec2<u32>(50077u, 4294967295u), vec4<f32>(-126f, -825f, 223f, 1072f)), Struct_1(vec2<u32>(33351u, 0u), vec4<f32>(1778f, -1561f, 375f, 1017f)), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(1412f, 1745f, -146f, 653f)), Struct_1(vec2<u32>(14021u, 4294967295u), vec4<f32>(-1000f, 735f, 1023f, 316f)), Struct_1(vec2<u32>(25032u, 0u), vec4<f32>(1306f, -963f, -1025f, -395f)), Struct_1(vec2<u32>(20789u, 31697u), vec4<f32>(390f, -1959f, -1299f, 831f)), Struct_1(vec2<u32>(4339u, 41095u), vec4<f32>(123f, -533f, 230f, 1584f)), Struct_1(vec2<u32>(11009u, 9922u), vec4<f32>(-1737f, 889f, 892f, -299f)), Struct_1(vec2<u32>(4294967295u, 13747u), vec4<f32>(418f, -196f, -1995f, 989f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-970f, -1349f, -768f, 887f)), Struct_1(vec2<u32>(14079u, 1u), vec4<f32>(-1018f, 2389f, -207f, 1639f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-1458f, -252f, -1223f, -1096f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_4(Struct_1(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(9991u, 34175u, 0u, 4294967295u), min(vec4<u32>(4294967295u, 0u, 1u, 80023u), vec4<u32>(1u, 6133u, 0u, 16393u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_div_f32(arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1943f)) + arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f)))));
    var var_1 = !select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, 4294967295u > var_0.a.a.x, true), ~1i <= select(-1i, u_input.a.x, false)), vec3<bool>(true, true, true));
    return var_0.a.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = !any(vec2<bool>(true, true));
    var var_1 = Struct_1(vec2<u32>(~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(36875u, 26206u, 5303u), vec3<u32>(0u, 5741u, 4294967295u))), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 39000u, 8704u, 52232u), vec4<u32>(1u, 2504u, 1u, 0u)), vec4<u32>(35735u, 1u, ~1u, 47024u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2543f, -733f, -1038f, 187f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(781f, 639f, -403f, -1000f), vec4<f32>(-334f, 430f, 728f, -480f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-524f, 308f, 200f, 554f))))))), vec4<f32>(_wgslsmith_f_op_f32(-549f * _wgslsmith_f_op_f32(select(706f, 536f, true))), 128f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(floor(1616f)))), -1771f)));
    let var_2 = vec2<bool>(4294967295u != ~func_3(var_1.b.x), !any(vec2<bool>(any(vec4<bool>(false, var_0, var_0, var_0)), var_0)));
    global0 = array<Struct_1, 22>();
    var var_3 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.a, abs(~vec2<u32>(1u, var_1.a.x))) | ~var_1.a.x, 22u)]);
    return Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_3.a.a.x, 4294967295u), ~min(var_1.a, vec2<u32>(4731u, var_1.a.x)), var_3.a.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_3.a.b)), _wgslsmith_f_op_vec4_f32(step(var_3.a.b, var_3.a.b)))))), Struct_1(vec2<u32>(var_3.a.a.x, countOneBits(var_3.a.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), -378f, 548f, _wgslsmith_f_op_f32(trunc(-602f))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: Struct_5) -> u32 {
    var var_0 = func_2();
    global0 = array<Struct_1, 22>();
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(15815u, firstLeadingBit(1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_1, arg_1), arg_2.x) ^ 0u, 34460u), ~vec3<u32>(1u, arg_0.b.a.x, arg_0.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(-33970i > ((u_input.a.x ^ 1i) >> (func_1(Struct_2(Struct_1(vec2<u32>(79042u, 0u), vec4<f32>(-2089f, -969f, 1872f, 870f)), Struct_1(vec2<u32>(58185u, 0u), vec4<f32>(-512f, -1505f, 654f, 420f))), vec3<u32>(0u, 13989u, 32680u), vec2<u32>(47487u, 0u), Struct_5(31191u)) % 32u)), true), vec2<bool>(true, select(true, true, true) || true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    global0 = array<Struct_1, 22>();
    var var_1 = u_input.a.yyy >> (vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 27034u), abs(vec2<u32>(1u, 4294967295u))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(29900u, 9648u, 0u), vec3<u32>(130563u, 1u, 62314u)), ~vec3<u32>(23993u, 4294967295u, 1u)), 4294967295u) % vec3<u32>(32u));
    var var_2 = select(!var_0, select(select(select(!vec2<bool>(var_0.x, false), select(var_0, vec2<bool>(var_0.x, var_0.x), true), !var_0.x), !select(vec2<bool>(var_0.x, true), var_0, false), vec2<bool>(true, true)), !select(!var_0, var_0, var_0.x || var_0.x), var_0), all(vec3<bool>(true, var_0.x, var_0.x)));
    var_1 = -u_input.a.yzy;
    var var_3 = select(select(vec4<bool>(var_2.x, all(vec4<bool>(var_2.x, var_0.x, false, true)) & (-46240i == var_1.x), var_0.x, all(select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.x, var_2.x, var_2.x, false), vec4<bool>(true, false, var_2.x, var_2.x)))), select(!vec4<bool>(var_2.x, var_2.x, var_0.x, var_0.x), vec4<bool>(false, true, true, !var_0.x), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(true, false, var_0.x, var_2.x))), select(vec4<bool>(false, true, var_0.x, !var_2.x), select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(var_0.x, var_0.x, false, var_2.x), vec4<bool>(var_2.x, true, false, var_0.x), var_2.x), false), !all(var_0))), !vec4<bool>(any(select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(true, false, var_2.x, var_0.x))), !all(vec4<bool>(false, true, false, var_0.x)), !var_0.x && (var_0.x & var_0.x), true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(var_0.x, var_2.x, var_2.x)), true), vec3<bool>(all(vec2<bool>(false, var_0.x)), true, true))));
    var var_4 = vec2<u32>(_wgslsmith_sub_u32(0u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 21797u, 33551u), vec4<u32>(0u, 1u, 0u, 17765u)) | func_2().b.a.x)), max(8978u, ~_wgslsmith_mod_u32(abs(94960u), ~4121u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, _wgslsmith_f_op_f32(-103f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(834f, 170f)) + _wgslsmith_f_op_f32(step(192f, 314f)))), 570f, _wgslsmith_f_op_f32(sign(1532f))), var_4.x, ~(~firstTrailingBit(var_4.x << (var_4.x % 32u))));
}

