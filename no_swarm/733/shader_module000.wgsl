struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    global0 = vec2<bool>(any(!select(vec3<bool>(global0.x, false, true), !vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, true)))), global0.x);
    return vec2<bool>(reverseBits(-33394i) != u_input.a.x, true);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec3<i32> {
    global0 = !vec2<bool>(true, !global0.x);
    let var_0 = arg_1.x;
    global0 = !select(!(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x))), vec2<bool>(abs(u_input.d) <= ~var_0, true), false);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -742f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-778f)))), -1864f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(108f, -1356f, -120f))))))));
    var var_2 = _wgslsmith_f_op_f32(round(777f));
    return ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, -59590i, 1i), max(-u_input.a, ~vec3<i32>(arg_0, arg_0, arg_0))));
}

fn func_2() -> u32 {
    var var_0 = vec2<f32>(281f, 786f);
    let var_1 = Struct_1(-(func_3(~1727i, ~vec4<u32>(u_input.d, 33578u, u_input.b, u_input.b)) | (vec3<i32>(-6799i, u_input.a.x, 39620i) & vec3<i32>(14336i, u_input.c, 22111i))));
    var var_2 = select(select(vec3<bool>(any(!vec2<bool>(false, global0.x)), global0.x | global0.x, all(vec3<bool>(true, false, false))), vec3<bool>(all(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, global0.x, true, false), vec4<bool>(global0.x, true, global0.x, global0.x))), global0.x, global0.x), func_1(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(1u, u_input.d)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 86638u), vec2<u32>(1137u, u_input.b))), var_1).x), vec3<bool>(false, global0.x, false), vec3<bool>(global0.x && !(!global0.x), false, global0.x));
    let var_3 = Struct_1(u_input.a);
    var var_4 = 0u;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.d), 55055u, min(1u, 4294967295u), select(755u, 5223u, var_2.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.b, u_input.b), vec4<u32>(0u, u_input.d, u_input.b, u_input.b) >> (vec4<u32>(49720u, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.d, u_input.b, 36307u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(37064u, 76890u, u_input.d, 0u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), _wgslsmith_sub_u32(52546u, u_input.b), 6436u, ~0u)), ~(~vec4<u32>(9351u, u_input.b, u_input.d, 4294967295u) << (vec4<u32>(43530u, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_add_u32(min(25826u >> (u_input.b % 32u), 53679u ^ u_input.d), ~4294967295u), 0u, 1u, u_input.d));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(countOneBits(~4294967295u << (0u % 32u)));
    let var_1 = ~(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, arg_2.a.x), vec2<i32>(arg_2.a.x, 37238i), -arg_0.a.zx));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, 1039f, 1406f)), vec3<f32>(-1427f, 206f, -210f))))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-613f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -131f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1482f, _wgslsmith_f_op_f32(-263f - 175f), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1484f)) + _wgslsmith_div_f32(-268f, 1663f))), _wgslsmith_f_op_f32(ceil(-1254f))));
    var var_3 = arg_0;
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * -169f), -1552f, 1938f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1777f, var_2.x, var_2.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(516f, var_2.x)), _wgslsmith_f_op_f32(1037f * _wgslsmith_f_op_f32(var_2.x - 1112f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-841f - 625f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, 1000f, -2678f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(224f, -1160f, -448f))))));
    return Struct_1(abs(-(var_3.a ^ vec3<i32>(arg_0.a.x, 17451i, 1i)) >> (vec3<u32>(arg_1, u_input.d, 0u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!global0.x != global0.x, all(!select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, global0.x)), vec3<bool>(true, false, false), any(vec3<bool>(false, false, global0.x)))));
    global0 = select(!select(select(vec2<bool>(true, var_0.x), vec2<bool>(global0.x, var_0.x), select(vec2<bool>(false, true), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x))), vec2<bool>(true, true), select(func_1(u_input.d, Struct_1(u_input.a)), vec2<bool>(false, global0.x), true)), func_1(u_input.b, func_4(Struct_1(u_input.a), _wgslsmith_div_u32(u_input.b, func_2()), Struct_1(u_input.a >> (vec3<u32>(u_input.d, 30878u, 28378u) % vec3<u32>(32u))))), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.d, u_input.b, ~(~25256u)), firstLeadingBit(~(~vec2<u32>(34112u, 15104u))), _wgslsmith_mod_vec2_u32(~min(abs(vec2<u32>(0u, u_input.d)), ~vec2<u32>(u_input.d, 17065u)), ~(~vec2<u32>(119612u, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1871f * -1000f)))), _wgslsmith_sub_vec4_i32(firstTrailingBit(-max(vec4<i32>(u_input.a.x, -44525i, u_input.c, 46165i), vec4<i32>(u_input.c, u_input.a.x, u_input.c, u_input.c))), select(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, -2147483647i), vec4<i32>(u_input.c, u_input.a.x, u_input.c, 0i))), vec4<i32>(-u_input.c, u_input.c, i32(-1i) * -2715i, ~u_input.c), all(vec4<bool>(false, false, global0.x, global0.x)) | true)));
}

