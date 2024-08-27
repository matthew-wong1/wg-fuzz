struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(603f, -1956f, -695f, -2079f);

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 1u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1462f, _wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) * 471f), -152f));
    let var_0 = Struct_2(Struct_1(-reverseBits(0i), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x * 559f)), (vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)) ^ _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(vec3<i32>(7770i, -2147483647i, -22534i))), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<bool>(true, false, false)), vec3<i32>(0i, _wgslsmith_div_i32(-2147483647i, -36142i), -2147483647i)), ~reverseBits(0i)), all(vec4<bool>(true, true, true, -14831i > u_input.a.x)) | !(!any(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(var_0.a.d, var_0.a.c), var_0.a.b, abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_0.a.d.x, 1i, var_0.a.e), _wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, 1i, var_0.a.e), vec3<i32>(var_0.a.c.x, var_0.a.c.x, u_input.a.x)), var_0.a.c)), vec3<i32>(reverseBits(_wgslsmith_mod_i32(75820i, var_0.a.a)), ~1i, ~u_input.a.x), i32(-1i) * -1i);
    global1 = ~u_input.b.xy;
    let var_2 = ~_wgslsmith_mod_vec2_i32(-firstTrailingBit(firstTrailingBit(var_1.d.zx)), min(-select(var_1.c.yy, vec2<i32>(var_0.a.a, 19390i), false), var_1.c.yy));
    return _wgslsmith_dot_vec3_u32(u_input.b.zzw, vec3<u32>(89362u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~19749u, u_input.b.x), 4294967295u), 4294967295u));
}

fn func_4(arg_0: vec3<u32>) -> f32 {
    let var_0 = countOneBits(reverseBits(func_3() << ((arg_0.x >> (global1.x % 32u)) % 32u))) >> (select(_wgslsmith_mult_u32(27136u, 0u), ~u_input.b.x, true) % 32u);
    global1 = arg_0.xx;
    global1 = _wgslsmith_mod_vec2_u32(arg_0.xz, vec2<u32>(countOneBits(_wgslsmith_mod_u32(0u, 88616u)), global1.x) ^ _wgslsmith_div_vec2_u32(~vec2<u32>(var_0, var_0) << (vec2<u32>(arg_0.x, 1u) % vec2<u32>(32u)), vec2<u32>(global1.x, global1.x)));
    let var_1 = select(select(max(~59667i, _wgslsmith_div_i32(-2147483647i, u_input.a.x)), min(u_input.a.x, -2217i), false) < u_input.a.x, true, true);
    let var_2 = all(!select(vec2<bool>(var_1, all(vec4<bool>(false, var_1, true, false))), select(!vec2<bool>(var_1, var_1), vec2<bool>(true, true), vec2<bool>(var_1, var_1)), !select(vec2<bool>(true, false), vec2<bool>(true, var_1), vec2<bool>(true, var_1))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f) + _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1035f))))))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -775f, _wgslsmith_f_op_f32(-global0.x), 1000f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1708f, 437f, global0.x, global0.x))))))));
    let var_0 = Struct_1(u_input.a.x, -872f, countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -37082i, u_input.a.x), vec3<i32>(1i, 1i, u_input.a.x)), firstTrailingBit(vec3<i32>(0i, -3235i, u_input.a.x))) ^ ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(u_input.a.x, 9855i, 1i))), firstTrailingBit(max(select(_wgslsmith_sub_vec3_i32(vec3<i32>(3546i, u_input.a.x, u_input.a.x), vec3<i32>(-19928i, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 46610i, 71058i), vec3<i32>(u_input.a.x, u_input.a.x, -14809i)), vec3<bool>(arg_0, arg_0, arg_0)), max(-vec3<i32>(-37618i, u_input.a.x, -9073i), _wgslsmith_mod_vec3_i32(vec3<i32>(-18321i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, -6080i))))), -2147483647i);
    var var_1 = var_0.b;
    var var_2 = Struct_1(firstLeadingBit(abs(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<u32>(func_3(), global1.x, ~u_input.b.x)))), select(vec3<i32>(~select(u_input.a.x, 1i, false), -u_input.a.x, 15737i << (firstLeadingBit(u_input.b.x) % 32u)), _wgslsmith_add_vec3_i32(-var_0.c, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, -2147483647i), abs(var_0.d))), !vec3<bool>(any(vec2<bool>(arg_0, arg_0)), true, u_input.b.x < 1u)), vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec2_i32(var_0.c.xz, -_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c.x, 34031i), var_0.d.xz)), var_0.d.x), max(abs(-21769i), 2147483647i));
    global1 = select(u_input.b.zy, _wgslsmith_div_vec2_u32(firstTrailingBit(abs(select(u_input.b.wx, vec2<u32>(u_input.b.x, global1.x), vec2<bool>(false, true)))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, global1.x), firstLeadingBit(vec2<u32>(0u, 0u)))), !vec2<bool>(!(global1.x < u_input.b.x), _wgslsmith_f_op_f32(-var_2.b) == global0.x));
    return Struct_2(Struct_1(0i, global0.x, abs(select(_wgslsmith_sub_vec3_i32(var_0.c, vec3<i32>(var_0.a, 1i, -49122i)), -vec3<i32>(var_2.c.x, var_2.c.x, 2147483647i), any(vec4<bool>(arg_0, false, arg_0, arg_0)))), var_0.c, var_2.d.x), arg_0);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> vec4<f32> {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, arg_2, arg_2, -1000f), vec4<f32>(arg_2, arg_2, arg_2, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(213f, arg_2, arg_2, 407f) * vec4<f32>(-1000f, arg_2, arg_2, -643f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, arg_2, arg_2, arg_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, global0.x, global0.x, 1461f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(506f, 495f, global0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, 403f, 650f, global0.x))))))));
    let var_2 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - -168f));
    let var_3 = global1.x ^ ~(~(~(u_input.b.x & 4294967295u)));
    let var_4 = func_2(false);
    return vec4<f32>(-935f, 1689f, 1303f, -738f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b.xz;
    var var_0 = global1.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(363f, -1480f, global0.x, 693f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1040f, -459f, global0.x, -326f) + vec4<f32>(242f, -706f, global0.x, 218f)))) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), global0.x)), _wgslsmith_f_op_f32(-466f * _wgslsmith_f_op_f32(trunc(2069f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(164397u, ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, -1i, 29718i), vec4<i32>(12320i, 1i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)))))), true));
    var_0 = _wgslsmith_add_u32(0u, u_input.b.x);
    let var_2 = select(vec4<bool>(true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), true, false), vec4<bool>(true, any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, false))), false, false), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-u_input.a.x, 0i, -(~(~u_input.a.x))));
}

