struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1393f, -365f, -917f, 780f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1263f * -858f), 1264f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-556f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1676f)), _wgslsmith_div_f32(global0.x, -918f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), global0.x))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * 673f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - -1000f), global0.x))), global0.x, -1000f, global0.x);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(928f, 1000f)), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(var_0.x, var_0.x))) - _wgslsmith_div_f32(global0.x, var_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), -1107f);
    var var_1 = any(vec2<bool>(false, -u_input.b > _wgslsmith_mod_i32(-2147483647i, -25678i)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yw * global0.yz) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-398f, global0.x), var_0.zw))))), Struct_2(-select(countOneBits(vec3<i32>(u_input.a, 37148i, u_input.b)), -vec3<i32>(-1586i, 11766i, u_input.a), vec3<bool>(false, false, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1099f, 348f, global0.x, -525f) + vec4<f32>(var_0.x, -113f, var_0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -895f, var_0.x, -1945f)))))));
    return _wgslsmith_div_f32(641f, -534f);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = Struct_2(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_mult_i32(2147483647i, 1i)), ~29449i) ^ (_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, u_input.a, -1i), abs(vec3<i32>(u_input.a, u_input.a, -20332i))) ^ max(select(vec3<i32>(-1i, u_input.a, 1i), vec3<i32>(u_input.b, 22296i, -2147483647i), vec3<bool>(false, false, true)), vec3<i32>(u_input.b, -2147483647i, u_input.b))));
    var var_1 = 0i;
    let var_2 = var_0;
    var_1 = -var_2.a.x;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -2611f, 949f, 414f) * vec4<f32>(-808f, 1000f, 1019f, -1758f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, -3106f, global0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2188f, arg_1, arg_1, arg_0) + vec4<f32>(-321f, -1308f, -177f, -996f)))))) * vec4<f32>(_wgslsmith_f_op_f32(func_3()), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -326f)));
    return -reverseBits(-12643i);
}

fn func_4(arg_0: i32, arg_1: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1254f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_1 - -470f), -1000f)), vec4<f32>(-794f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - arg_1))), _wgslsmith_f_op_f32(-266f - global0.x), 568f))));
    var var_0 = vec3<bool>(all(vec4<bool>(false, false, true, !(u_input.b != -2147483647i))), !all(vec3<bool>(true, true, true)) || false, _wgslsmith_f_op_f32(floor(1f)) == -847f);
    var var_1 = var_0.x;
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, global0.x, arg_1, global0.x))) * vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, -337f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(176f, _wgslsmith_f_op_f32(ceil(170f)), _wgslsmith_f_op_f32(-global0.x), 286f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -538f, 1000f, global0.x) * vec4<f32>(1135f, global0.x, 860f, arg_1)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(454f, arg_1, global0.x, global0.x) + vec4<f32>(global0.x, 790f, -196f, arg_1)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f + -1000f)), arg_1, -525f)))));
    let var_2 = vec2<u32>(~min(~_wgslsmith_sub_u32(89469u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(33684u, 1u, 44567u))), firstTrailingBit(_wgslsmith_sub_u32(~47040u << (~4294967295u % 32u), 1u)));
    return Struct_1(~var_2.x, _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-19405i, 46965i, arg_0) ^ vec3<i32>(23954i, 1971i, 5067i), firstTrailingBit(vec3<i32>(u_input.a, u_input.a, -15006i))), -vec3<i32>(_wgslsmith_sub_i32(36253i, arg_0), arg_0, arg_0)), !vec2<bool>(var_0.x, !any(vec3<bool>(false, true, var_0.x))), select(select(!vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(any(vec2<bool>(var_0.x, false)), var_0.x != true, any(vec4<bool>(var_0.x, false, var_0.x, false)), var_0.x), vec4<bool>(var_0.x, var_0.x, false, true)), select(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, false, true)), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, true)), vec4<bool>(var_0.x, !var_0.x, var_0.x, all(vec3<bool>(true, var_0.x, false))), vec4<bool>(!var_0.x, !var_0.x, all(vec2<bool>(false, true)), var_0.x)), arg_1 < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))), select(select(vec4<bool>(var_2.x > 23569u, all(vec3<bool>(true, false, false)), var_0.x, true), vec4<bool>(397f >= global0.x, false, true, true), any(select(var_0.zx, var_0.yz, var_0.yx))), select(vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, false, true)), true, !var_0.x, all(vec3<bool>(true, true, var_0.x))), select(vec4<bool>(true, var_0.x, false, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), true), false), vec4<bool>(any(vec4<bool>(false, var_0.x, false, true)), !var_0.x, var_0.x | var_0.x, true)), !(!vec4<bool>(true, true, var_0.x, false))));
}

fn func_1() -> bool {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(sign(global0.x)), global0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(30293u, 0u), vec2<u32>(20201u, 4294967295u), vec2<u32>(12135u, 50252u)) | ~vec2<u32>(54551u, 1u), ~vec2<u32>(1u, 1u))), -710f);
    var_0 = Struct_1(~var_0.a, _wgslsmith_mod_i32(var_0.b, _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, -92i), u_input.b)), var_0.c, !vec4<bool>(any(var_0.d), true || (var_0.d.x == var_0.d.x), true, true), !var_0.e);
    var var_1 = 363f;
    let var_2 = Struct_2(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, 54504i), -1i), vec3<i32>(2147483647i, _wgslsmith_add_i32(var_0.b, select(u_input.b, 29968i, true)), -55834i), vec3<i32>(u_input.a, var_0.b, ~(-u_input.a))));
    let var_3 = Struct_2(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_2.a.x) | var_2.a.xz, ~var_2.a.xx), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, var_0.b), var_2.a.yy), var_2.a.yy), u_input.a));
    return all(vec3<bool>(!all(vec3<bool>(var_0.d.x, var_0.e.x, true)), var_0.c.x, var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_u32(~34611u, _wgslsmith_mod_u32(~reverseBits(42373u), ~1u)), u_input.b | -45154i, vec2<bool>(true, true), vec4<bool>(false, func_1(), all(vec2<bool>(true, true)), func_4(_wgslsmith_sub_i32(u_input.a, -2147483647i), -2234f).d.x), vec4<bool>(any(func_4(1i, -1245f).e.yyz), select(true, true, true), any(func_4(_wgslsmith_sub_i32(u_input.a, u_input.a), -439f).c), 22825i != _wgslsmith_sub_i32(u_input.b, 19212i)));
    var_0 = Struct_1(_wgslsmith_clamp_u32(var_0.a, var_0.a, 1u), 9774i, var_0.d.wz, !(!vec4<bool>(all(vec2<bool>(false, var_0.c.x)), var_0.d.x, all(vec3<bool>(true, false, var_0.e.x)), select(true, false, true))), func_4(max(-73811i, firstTrailingBit(var_0.b)), -1000f).e);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1360f))) * -804f), global0.x, _wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 1027f) - _wgslsmith_f_op_f32(-global0.x)))));
    var var_2 = firstTrailingBit(vec3<u32>(select(var_0.a, select(~var_0.a, 0u, var_1.x <= var_1.x), true), var_0.a, 0u));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(abs(global0.x)))) * 436f), vec4<u32>(firstLeadingBit(~select(1u, 41898u, true)), ~0u, 0u, _wgslsmith_mod_u32(max(var_0.a, 1u) << (26414u % 32u), ~var_0.a)), vec3<u32>(~(~4294967295u), _wgslsmith_mult_u32(reverseBits(var_0.a), countOneBits(0u)) >> (~firstLeadingBit(var_2.x) % 32u), _wgslsmith_clamp_u32(4294967295u >> (~var_0.a % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, var_0.a, 65936u, var_0.a), ~vec4<u32>(var_0.a, 11602u, 0u, 35465u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_2.x, 24463u, var_0.a)), abs(vec3<u32>(24537u, 0u, var_0.a))))), abs(var_2.x), ~firstTrailingBit(vec3<i32>(-var_0.b, -u_input.b, 2147483647i)));
}

