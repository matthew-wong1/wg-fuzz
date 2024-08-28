struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(266f, -1475f, 361f), 32899u, vec4<u32>(20620u, 0u, 20606u, 2163u), false, vec4<f32>(-652f, 170f, -1376f, -443f));

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(15246i, -26843i), vec2<i32>(-14506i, 2147483647i), vec2<i32>(1i, 4243i), vec2<i32>(44183i, -1i), vec2<i32>(1i, 12354i), vec2<i32>(-16026i, 1i), vec2<i32>(-65026i, -34063i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-65686i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(32271i, -1909i), vec2<i32>(2147483647i, 15297i), vec2<i32>(i32(-2147483648), -76626i), vec2<i32>(2147483647i, 12648i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), -25120i), vec2<i32>(-1i, 20588i), vec2<i32>(1i, 0i), vec2<i32>(-19640i, 0i), vec2<i32>(-17117i, 350i), vec2<i32>(-25912i, 1i));

var<private> global3: vec3<f32> = vec3<f32>(720f, -146f, 1000f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_1(global1.a, ~0u, global0.c, true, vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), -376f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-131f, arg_2.e.x) * _wgslsmith_f_op_f32(arg_2.e.x + 786f)) - -998f), 1000f));
    let var_1 = _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(~arg_0.c.xy, vec2<u32>(~78349u, 68014u)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(max(13597u, global0.b), _wgslsmith_mult_u32(global1.c.x, u_input.a)), ~select(arg_0.c.zz, arg_2.c.xw, vec2<bool>(arg_0.d, global1.d))), vec2<u32>(_wgslsmith_add_u32(abs(var_0.b), 1u), ~arg_2.b)));
    let var_2 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-32726i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_1, 2147483647i, arg_3), _wgslsmith_div_i32(arg_1, 1i)), -min(-11613i, arg_1), select(arg_1, -4347i, false) ^ ~arg_3), vec4<i32>(min(-2110i >> (0u % 32u), 12276i), 39226i, -abs(2147483647i), arg_3), _wgslsmith_clamp_vec4_i32(-(vec4<i32>(0i, -48014i, arg_1, arg_3) & vec4<i32>(arg_1, arg_3, 0i, -1i)), -(vec4<i32>(-8350i, arg_3, arg_1, arg_1) ^ vec4<i32>(1i, arg_3, 5901i, arg_3)), vec4<i32>(~2147483647i, ~arg_1, _wgslsmith_div_i32(arg_1, -1i), 46113i)));
    let var_3 = 2147483647i;
    var var_4 = countOneBits(~(~abs(~var_0.c.x)));
    return vec2<bool>(!all(!select(vec2<bool>(false, global0.d), vec2<bool>(false, true), vec2<bool>(true, false))), all(select(vec4<bool>(var_0.d, true, true, global0.d), vec4<bool>(true, true, arg_2.d, false), vec4<bool>(var_2.x != arg_3, var_0.d, true, !global0.d))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1168f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.e.zzx)), reverseBits(abs(_wgslsmith_dot_vec4_u32(select(global1.c, arg_0.c, true), vec4<u32>(1u, 0u, 1u, global0.b)))), ~vec4<u32>(~35590u, u_input.a & 21679u, u_input.a, 4294967295u) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.c.x, u_input.a, arg_2.b, u_input.a), arg_0.c), any(!select(vec2<bool>(true, false), vec2<bool>(arg_2.d, false), vec2<bool>(global0.d, global0.d))), vec4<f32>(_wgslsmith_f_op_f32(-global3.x), 161f, _wgslsmith_f_op_f32(-global1.e.x), arg_0.a.x));
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(-720f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), -843f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, 129f) - 1101f)))), ~_wgslsmith_div_u32(u_input.a, ~4294967295u), ~arg_2.c, global1.d, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(847f))), var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.e.x, var_1.e.x, 1000f, 208f), vec4<f32>(1487f, -484f, -1788f, var_1.a.x)))))))));
    let var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(global0.a)))), _wgslsmith_sub_u32(~1u, ~1u), ~var_2.c, select(!(firstLeadingBit(-2147483647i) < firstLeadingBit(arg_1.x)), (_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1.x), vec2<i32>(arg_1.x, 1i)) << (_wgslsmith_mult_u32(global1.b, 4294967295u) % 32u)) < -2147483647i, arg_0.d), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.e, arg_2.e, global0.d)) - vec4<f32>(arg_0.e.x, 1450f, 670f, global3.x)) * _wgslsmith_f_op_vec4_f32(-global0.e)))));
    return var_1.c >> (firstLeadingBit(~(~(~vec4<u32>(arg_2.c.x, 0u, 25284u, 4294967295u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = ~0u;
    global0 = Struct_1(global1.e.yzy, firstLeadingBit(var_0), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global1.e.x, 1000f)), 4294967295u, global1.c, any(vec2<bool>(global0.d, true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(652f, global3.x, -175f, 356f), vec4<f32>(299f, 1010f, 816f, global1.e.x))))), firstLeadingBit(~vec3<i32>(-2147483647i, 41741i, arg_0)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e.xxx) * global1.e.xwz), 1u, firstTrailingBit(~vec4<u32>(global1.c.x, var_0, global0.b, global1.b)), any(func_3(Struct_1(vec3<f32>(global0.a.x, 480f, -844f), 11201u, vec4<u32>(u_input.a, 15081u, global1.c.x, global0.b), false, global0.e), arg_0, Struct_1(vec3<f32>(global0.a.x, global1.a.x, -1342f), 7454u, vec4<u32>(var_0, 43446u, 15838u, var_0), true, global1.e), arg_0)), global0.e)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-52033i, -26690i, arg_0, arg_0), vec4<i32>(arg_0, arg_0, arg_0, 26507i)) > (-select(arg_0, arg_0, false) << ((55773u ^ max(u_input.a, 24901u)) % 32u)), global0.e);
    return vec3<bool>(global0.d, true, reverseBits(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, 70008i)))) == -28046i);
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    global3 = _wgslsmith_f_op_vec3_f32(sign(arg_0.wxz));
    let var_0 = 1107f;
    var var_1 = _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32((~abs(global0.c.x) ^ ~_wgslsmith_mod_u32(global0.b, 1u)) >> (global1.b % 32u), 21u)], ~(-global2[_wgslsmith_index_u32(~global0.c.x, 21u)] & max(vec2<i32>(-2147483647i, 0i), vec2<i32>(1i, 1i))));
    var var_2 = Struct_1(global1.a, ~global0.c.x, select(global0.c, ~select(countOneBits(vec4<u32>(u_input.a, global1.c.x, global0.b, u_input.a)), ~vec4<u32>(1u, 17918u, 39818u, global0.c.x), true), !select(!vec4<bool>(false, false, false, global0.d), select(vec4<bool>(true, false, global1.d, global1.d), vec4<bool>(false, false, true, global1.d), vec4<bool>(true, false, false, false)), global0.d)), !all(select(func_2(25845i), select(vec3<bool>(global1.d, global1.d, true), vec3<bool>(true, true, false), false), !vec3<bool>(true, global0.d, false))), _wgslsmith_f_op_vec4_f32(global1.e + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, global1.a.x, global0.a.x, var_0) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, global0.a.x, arg_0.x, 850f)))))));
    let var_3 = _wgslsmith_mult_i32(~reverseBits(_wgslsmith_sub_i32(firstTrailingBit(-2147483647i), 0i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(-36045i, 3971i), 1i, 43774i, reverseBits(24643i)), max(max(~vec4<i32>(2147483647i, 0i, -1i, -1i), reverseBits(vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i))), vec4<i32>(_wgslsmith_mult_i32(1i, -17110i), -1147i, 1i, _wgslsmith_mod_i32(-13311i, 33333i)))));
    return StorageBuffer(abs(vec2<u32>(_wgslsmith_mult_u32(~var_2.b, 61945u), var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<f32>(-444f, _wgslsmith_div_f32(307f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-188f)), global1.a.x, false))), -526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2697f - global1.e.x)))));
}

