struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(1401f, vec3<bool>(false, false, true), 0u, vec4<f32>(-621f, 508f, -380f, 1921f), vec2<u32>(4948u, 0u)), Struct_1(994f, vec3<bool>(false, true, true), 15280u, vec4<f32>(-1000f, -1336f, 247f, 3383f), vec2<u32>(16493u, 1u)), Struct_1(1085f, vec3<bool>(true, false, true), 1u, vec4<f32>(174f, 427f, -938f, -608f), vec2<u32>(46714u, 1u)), Struct_1(1300f, vec3<bool>(false, true, true), 1u, vec4<f32>(-296f, 225f, 108f, 786f), vec2<u32>(6803u, 30707u)), Struct_1(1549f, vec3<bool>(true, false, true), 1u, vec4<f32>(280f, 758f, -1000f, -929f), vec2<u32>(33592u, 32915u)), Struct_1(1000f, vec3<bool>(true, false, false), 15014u, vec4<f32>(598f, 622f, -629f, -474f), vec2<u32>(1u, 1u)), Struct_1(-437f, vec3<bool>(false, true, false), 0u, vec4<f32>(-2089f, 1698f, 577f, -993f), vec2<u32>(42037u, 50570u)), Struct_1(-661f, vec3<bool>(false, false, true), 47437u, vec4<f32>(536f, 197f, -1022f, -2793f), vec2<u32>(78898u, 0u)), Struct_1(1061f, vec3<bool>(true, true, true), 19200u, vec4<f32>(-282f, 459f, 688f, -741f), vec2<u32>(21368u, 15347u)), Struct_1(628f, vec3<bool>(true, true, false), 1u, vec4<f32>(345f, 422f, -479f, 779f), vec2<u32>(79503u, 3951u)), Struct_1(564f, vec3<bool>(false, true, true), 4294967295u, vec4<f32>(-454f, 2016f, -3192f, -700f), vec2<u32>(18828u, 32512u)), Struct_1(144f, vec3<bool>(false, false, false), 33482u, vec4<f32>(1876f, 574f, -1137f, 508f), vec2<u32>(1u, 36380u)), Struct_1(1403f, vec3<bool>(true, false, true), 7808u, vec4<f32>(-975f, -2255f, 296f, 139f), vec2<u32>(3569u, 4294967295u)), Struct_1(404f, vec3<bool>(true, false, true), 0u, vec4<f32>(1444f, 702f, 253f, 369f), vec2<u32>(37742u, 60496u)), Struct_1(-993f, vec3<bool>(false, false, true), 1u, vec4<f32>(-180f, 1339f, -963f, -1185f), vec2<u32>(0u, 4294967295u)), Struct_1(663f, vec3<bool>(true, true, false), 90667u, vec4<f32>(-884f, 1670f, -385f, 1000f), vec2<u32>(4294967295u, 32342u)), Struct_1(1580f, vec3<bool>(false, true, false), 0u, vec4<f32>(-706f, 1112f, -233f, -526f), vec2<u32>(1u, 26824u)), Struct_1(-633f, vec3<bool>(true, true, false), 0u, vec4<f32>(-1861f, -1257f, 1202f, -1501f), vec2<u32>(4843u, 100504u)), Struct_1(769f, vec3<bool>(false, true, false), 19009u, vec4<f32>(602f, 146f, -1558f, -800f), vec2<u32>(0u, 1u)), Struct_1(-364f, vec3<bool>(false, true, true), 4294967295u, vec4<f32>(-145f, 1377f, -1625f, -393f), vec2<u32>(0u, 32142u)), Struct_1(-2189f, vec3<bool>(false, false, true), 4294967295u, vec4<f32>(1968f, -1061f, -1000f, 1010f), vec2<u32>(115960u, 1u)), Struct_1(832f, vec3<bool>(false, false, true), 4294967295u, vec4<f32>(-1075f, -151f, 1274f, 1154f), vec2<u32>(13501u, 1u)), Struct_1(-591f, vec3<bool>(true, true, false), 4294967295u, vec4<f32>(855f, 475f, 439f, -134f), vec2<u32>(0u, 4294967295u)), Struct_1(-354f, vec3<bool>(true, true, true), 0u, vec4<f32>(-663f, -513f, -1907f, -1000f), vec2<u32>(7380u, 1u)), Struct_1(1040f, vec3<bool>(false, true, true), 0u, vec4<f32>(-227f, -1367f, -1236f, 1506f), vec2<u32>(0u, 1u)), Struct_1(322f, vec3<bool>(true, true, true), 4294967295u, vec4<f32>(-439f, -426f, 557f, 179f), vec2<u32>(11205u, 0u)), Struct_1(-1077f, vec3<bool>(false, false, true), 0u, vec4<f32>(-891f, 454f, 792f, 888f), vec2<u32>(4294967295u, 66614u)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> bool {
    return false;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = ~0u;
    global0 = _wgslsmith_dot_vec4_u32(u_input.b, ~(~u_input.b));
    var var_1 = select(!vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), true, !any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)) || true), select(!vec4<bool>(func_3(113f), true, func_3(-409f), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), select(true, true, any(vec3<bool>(false, true, false)) != true)), true);
    var var_2 = firstTrailingBit(u_input.b.zww);
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1011f, -339f)) * 305f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1751f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(972f - 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f) * _wgslsmith_f_op_f32(1000f - -1660f)), false)))));
    return vec4<bool>(all(vec2<bool>(false, var_1.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(-2147483647i), -2147483647i, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -13074i), u_input.c.x >> (37976u % 32u)), abs(-vec4<i32>(u_input.c.x, 6033i, 21234i, 0i))) >= _wgslsmith_div_i32(~0i, _wgslsmith_clamp_i32(-2147483647i, -u_input.c.x, -55522i ^ u_input.c.x)), var_1.x, (~u_input.c.x & _wgslsmith_dot_vec2_i32(vec2<i32>(-36078i, u_input.c.x), u_input.c)) == (u_input.c.x >> (66222u % 32u)));
}

fn func_1() -> f32 {
    let var_0 = !(!func_2(u_input.a));
    var var_1 = ~reverseBits(u_input.b.x) << (_wgslsmith_mult_u32(u_input.d ^ _wgslsmith_sub_u32(firstLeadingBit(u_input.d), ~16565u), u_input.b.x) % 32u);
    global1 = array<Struct_1, 27>();
    global0 = ~_wgslsmith_dot_vec2_u32(~min(u_input.b.yw, ~u_input.b.ww), ~vec2<u32>(~59032u, 1u));
    var var_2 = all(!var_0.zy);
    return 647f;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(~(~(~arg_0.x)), 27u)];
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(max(u_input.d, 3140u), 4294967295u, u_input.a, ~56636u)), vec2<bool>(-372f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -539f), (_wgslsmith_f_op_f32(select(-424f, -552f, false)) >= 974f) | !any(vec3<bool>(true, false, false))));
    global0 = 24075u;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(178f)) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-826f, _wgslsmith_f_op_f32(-254f - -440f)))), vec3<bool>(false, any(select(!vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_0, false), !vec3<bool>(var_0, var_0, true))), all(vec2<bool>(true, func_2(u_input.d).x))), u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-867f, 835f, -597f, 568f) + vec4<f32>(-1000f, -1456f, 912f, -761f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 920f, -924f, 916f))) + vec4<f32>(405f, _wgslsmith_f_op_f32(sign(425f)), _wgslsmith_f_op_f32(ceil(-372f)), 1607f))), u_input.b.wy);
    let var_2 = var_1.b.x;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.d.xxy, _wgslsmith_f_op_vec3_f32(-var_1.d.yyz), select(var_1.b, var_1.b, var_1.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(2052f, -569f)), 1613f, _wgslsmith_f_op_f32(-var_1.d.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.d.wzy)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1377f, -103f, 676f), vec3<f32>(var_1.a, var_1.a, 1000f)))) - var_1.d.xwx) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.d.xyx + var_1.d.yyw))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-869f, var_1.d.x, var_1.d.x) + vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

