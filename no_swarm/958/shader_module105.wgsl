struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-311f, -413f), vec2<f32>(-644f, -1000f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1852f, -1000f), vec2<f32>(1401f, -273f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(348f, 1187f), vec2<f32>(-533f, -494f)) * vec2<f32>(1f, 1f)))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = !select(select(select(vec3<bool>(var_0.c.x, false, true), !vec3<bool>(false, arg_0.c.x, false), var_0.c.zyz), select(!var_0.c.wyy, vec3<bool>(false, false, false), !arg_0.c.x), !(!vec3<bool>(false, var_0.c.x, var_0.c.x))), var_0.c.xyw, false);
    var_2 = var_1.x;
    return select(firstTrailingBit(vec4<u32>(~(~45767u), ~7282u, max(4294967295u, arg_0.b) >> (4294967295u % 32u), min(~4008u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 4294967295u, 0u, var_0.b), vec4<u32>(arg_0.b, 4564u, 4294967295u, arg_0.b))))), (select(vec4<u32>(8281u, 0u, arg_0.b, 0u), ~vec4<u32>(71078u, 1u, 0u, var_0.b), arg_0.c.x) >> (vec4<u32>(0u & var_0.b, _wgslsmith_div_u32(arg_0.b, var_0.b), arg_0.b, 1u) % vec4<u32>(32u))) << ((_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.b, 4294967295u, var_0.b, var_0.b)), vec4<u32>(arg_0.b, 49374u, arg_0.b, var_0.b)) | vec4<u32>(~arg_0.b, ~1u, ~arg_0.b, arg_0.b)) % vec4<u32>(32u)), !vec4<bool>(true, all(vec4<bool>(true, var_0.c.x, arg_0.c.x, true)), true, (46810i <= var_0.a.x) | (arg_0.c.x && var_0.c.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = select(max(vec4<u32>(1u, firstLeadingBit(select(arg_0.b, 238u, arg_2.c.x)), 8400u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6566u, arg_2.b), vec2<u32>(22745u, arg_2.b)), ~51816u)), _wgslsmith_mod_vec4_u32(vec4<u32>(3965u, 0u, 4294967295u, arg_2.b), min(vec4<u32>(1u, 8206u, 1u, 0u), vec4<u32>(4294967295u, arg_0.b, 0u, 4294967295u))) & ~(vec4<u32>(1u, 72119u, arg_2.b, arg_2.b) ^ vec4<u32>(0u, 22906u, arg_0.b, arg_2.b))), _wgslsmith_mod_vec4_u32(func_3(arg_0) | abs(~vec4<u32>(19765u, 4294967295u, arg_0.b, 55021u)), vec4<u32>(arg_0.b & ~14844u, _wgslsmith_sub_u32(~arg_2.b, 1u ^ arg_0.b), ~arg_0.b, arg_2.b)), !(!select(arg_2.c, arg_2.c, true)));
    let var_1 = arg_0;
    let var_2 = firstLeadingBit(var_0.xyw);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.x, arg_1.x, 247f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -238f, arg_1.x, arg_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, -716f, 988f, -1237f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-512f, arg_1.x, 663f, arg_1.x) - vec4<f32>(arg_1.x, arg_1.x, 754f, -1052f)))))));
    let var_4 = vec2<u32>(_wgslsmith_mult_u32(reverseBits(var_1.b), 18785u), 35094u);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2909f - 395f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-435f, -259f)))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, arg_1.x, arg_1.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, -109f, -445f, var_3.x))))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1145f, -573f, 875f, -1887f)) - vec4<f32>(613f, 582f, -1577f, _wgslsmith_f_op_f32(-320f + -299f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(116f, -1318f, -1000f, -1153f) + vec4<f32>(-740f, 169f, 1217f, -1229f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1782f, -157f, -619f, -131f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1059f, -309f, 515f, -701f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(202f, -431f, -1000f, -1157f)), false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(arg_0, vec2<f32>(-1527f, 609f), arg_0)) + vec4<f32>(-2228f, 889f, -290f, 296f)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, -804f, _wgslsmith_f_op_f32(660f + -1194f), _wgslsmith_f_op_f32(-955f + -1618f))))));
    let var_1 = ~_wgslsmith_div_u32(arg_0.b, _wgslsmith_div_u32(arg_0.b, _wgslsmith_clamp_u32(0u, 0u, _wgslsmith_clamp_u32(arg_0.b, 0u, arg_0.b))));
    let var_2 = countOneBits(~countOneBits(1u)) << (~_wgslsmith_mod_u32(arg_0.b, ~0u) % 32u);
    var var_3 = _wgslsmith_f_op_vec4_f32(min(var_0, vec4<f32>(-883f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(102f, -1000f)))))));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2702f, var_0.x, var_0.x, -454f) - var_0)))));
    return ~var_1;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_3.a, arg_3.b, vec4<bool>(any(vec4<bool>(true, true, true, true)), any(select(select(arg_1.zz, vec2<bool>(false, false), false), vec2<bool>(arg_1.x, arg_1.x), any(vec2<bool>(false, true)))), all(arg_3.c), !arg_1.x));
    let var_1 = ~4294967295u;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x - arg_2.x))), 636f, arg_2.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.xz));
    var var_4 = Struct_1(var_0.a, ~_wgslsmith_mod_u32(arg_3.b, var_1), var_0.c);
    return Struct_1(arg_3.a, 0u, !var_4.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(~u_input.a.x, firstLeadingBit(0i));
    let var_1 = func_4(_wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, var_0.x), _wgslsmith_clamp_vec2_i32(var_0, vec2<i32>(var_0.x, u_input.b.x), u_input.a)), u_input.b.yx), vec3<bool>(countOneBits(func_1(Struct_1(u_input.b, 1u, vec4<bool>(true, true, false, true)), vec3<i32>(u_input.a.x, var_0.x, u_input.b.x))) == 4294967295u, true, true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-229f, 894f, 873f))), vec3<f32>(849f, 1000f, 497f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1673f, -1000f, 593f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-526f, 766f, 1598f), vec3<f32>(328f, 752f, 132f), true))))), Struct_1(abs(firstTrailingBit(~vec4<i32>(-1i, 1i, var_0.x, u_input.b.x))), _wgslsmith_add_u32(~func_3(Struct_1(u_input.b, 11312u, vec4<bool>(true, false, false, false))).x, firstLeadingBit(~1u)), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, false, true), select(false, true, false))));
    var var_2 = func_4(~(i32(-1i) * -_wgslsmith_sub_i32(-2147483647i, var_1.a.x)), !(!vec3<bool>(0i < var_0.x, any(vec3<bool>(var_1.c.x, false, var_1.c.x)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-242f, 2543f, -898f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-437f, 1240f, -1000f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(418f, 1474f, -1016f))), var_1.c.x))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(868f, -293f)), _wgslsmith_f_op_f32(-445f * 375f), -1046f)))), var_1);
    var_2 = Struct_1(vec4<i32>(var_1.a.x, -1i, var_1.a.x, reverseBits(~(var_0.x | var_2.a.x))), ~60656u, var_1.c);
    var var_3 = var_1;
    var_2 = func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_0.x), vec2<i32>(var_2.a.x, -1i)), vec2<i32>(1i, 19862i)), ~vec2<i32>(-75287i, u_input.a.x))), select(!(!(!vec3<bool>(false, false, var_3.c.x))), !vec3<bool>(all(var_3.c), var_2.c.x & var_1.c.x, true), any(var_1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-153f, -1001f, 534f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), var_1.c.x))), func_4(_wgslsmith_mod_i32(reverseBits(2147483647i), var_2.a.x), !(!vec3<bool>(false, var_3.c.x, var_1.c.x)), vec3<f32>(798f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(379f, -1084f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f))), func_4(-12872i, func_4(var_0.x, var_1.c.zzx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -534f, -1861f) + vec3<f32>(-150f, -851f, -461f)), var_1).c.xzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-512f, 209f, -289f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-280f, 1000f, -677f), vec3<f32>(-889f, -371f, 1386f)))), func_4(-var_0.x, select(var_2.c.zwy, var_3.c.xyy, var_3.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1672f, 617f, 1713f)), Struct_1(vec4<i32>(45372i, -13639i, -13178i, var_2.a.x), var_3.b, var_2.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(~0u, abs(~var_2.b))), vec4<u32>((var_3.b << (var_3.b % 32u)) ^ (var_3.b >> ((var_2.b >> (var_2.b % 32u)) % 32u)), 1u, ~select(countOneBits(47188u), _wgslsmith_div_u32(3038u, 3369u), var_1.c.x), var_2.b), vec3<f32>(_wgslsmith_f_op_f32(ceil(-336f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(881f + 1532f))), _wgslsmith_f_op_f32(-776f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + -1120f), -1407f)))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.b, var_2.b), vec2<u32>(1u, 1u)) | vec2<u32>(0u, var_3.b), vec2<u32>(var_1.b ^ 4294967295u, ~4294967295u)));
}

