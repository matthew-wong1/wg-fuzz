struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(2635u, 4294967295u, 1u, 1u, 39527u, 18952u, 45440u, 68901u, 6319u, 7569u, 1u, 3194u, 0u, 0u, 4294967295u, 104388u, 26463u, 4294967295u, 13081u, 0u, 1u, 18460u, 4294967295u, 4294967295u, 11341u, 17260u, 4294967295u, 4294967295u, 1u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec4<bool> {
    global0 = array<u32, 29>();
    let var_0 = select(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 34268i, u_input.d.x, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(32055i, u_input.d.x, -32128i, u_input.d.x), vec4<i32>(u_input.d.x, 12195i, -64058i, u_input.d.x))), vec4<i32>(11528i, u_input.d.x | (~u_input.d.x ^ u_input.d.x), countOneBits(1i), u_input.d.x), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-390f)) - -1256f) >= 1f));
    let var_1 = Struct_2(~global0[_wgslsmith_index_u32(select(1u, 1u, false), 29u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-799f - _wgslsmith_f_op_f32(1000f + -804f)), -384f)), Struct_1(vec4<i32>(firstLeadingBit(-9235i), _wgslsmith_dot_vec3_i32(u_input.d >> (u_input.a % vec3<u32>(32u)), vec3<i32>(1i, -1i, u_input.d.x) ^ vec3<i32>(14844i, var_0.x, u_input.d.x)), reverseBits(~u_input.d.x), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f - 250f) + 1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1833f - -1797f) * _wgslsmith_f_op_f32(1851f + -989f))), vec3<i32>(-var_0.x, var_0.x, 2147483647i)), Struct_1(vec4<i32>(-(~(-15489i)), _wgslsmith_clamp_i32(-1i, -2147483647i, 2147483647i), var_0.x, u_input.d.x ^ -37593i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) - _wgslsmith_f_op_f32(f32(-1f) * -337f))), select(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -3741i), vec3<i32>(u_input.d.x, -2147483647i, var_0.x)), vec3<i32>(_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, u_input.d.x), ~var_0.x, var_0.x), vec3<bool>(true, true, var_0.x <= 11942i))), Struct_1(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1181f, 694f, true)), _wgslsmith_f_op_f32(trunc(522f)), true)) * -1000f), ~min(-var_0.wzw, _wgslsmith_sub_vec3_i32(vec3<i32>(-21065i, -2147483647i, var_0.x), u_input.d))));
    return vec4<bool>(any(vec3<bool>(!(var_0.x >= var_1.e.a.x), true, false)), select(select(!(var_1.e.b != var_1.e.b), true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), !any(vec3<bool>(true, true, true)), select(any(vec3<bool>(true, true, true)) | false, true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))))), var_1.d.b > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_1.d.b)), var_1.e.b, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)))), !(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1215f)))) > _wgslsmith_f_op_f32(sign(var_1.d.b))));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    var var_0 = (1u ^ ~u_input.c.x) >> (select(min(max(4294967295u, abs(global0[_wgslsmith_index_u32(20712u, 29u)])), ~u_input.c.x), 48430u, all(select(func_3(), vec4<bool>(false, true, false, false), select(true, false, false)))) % 32u);
    var var_1 = arg_0;
    var var_2 = ~arg_0.b;
    let var_3 = ~(vec3<i32>(-1i) * -firstLeadingBit(firstLeadingBit(vec3<i32>(var_1.b, 54254i, -2147483647i))));
    var var_4 = ~(~vec4<u32>(global0[_wgslsmith_index_u32(reverseBits(1u), 29u)] << (global0[_wgslsmith_index_u32(1u, 29u)] % 32u), ~_wgslsmith_mult_u32(0u, arg_2.x), reverseBits(1u), arg_2.x));
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: f32) -> vec4<i32> {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1002f)));
    var var_2 = firstLeadingBit(22603u);
    let var_3 = u_input.d.x;
    var var_4 = firstLeadingBit(vec4<i32>(-var_3, 14467i, u_input.d.x, -2147483647i));
    return vec4<i32>(-36284i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, firstLeadingBit(~11948i)), u_input.d.zz), 2147483647i, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), u_input.d.zx) >> (abs(~var_0.x) % 32u)));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = vec4<i32>(0i, -2147483647i, arg_2, ~(arg_2 >> (u_input.c.x % 32u)) | countOneBits(arg_1.e.a.x)) | func_4(arg_1.e.c.x & 1i, _wgslsmith_div_f32(106f, _wgslsmith_f_op_f32(func_2(Struct_3(-1i, arg_2), arg_1.c.b, vec4<u32>(u_input.a.x, u_input.c.x, 57310u, 4294967295u)))));
    global0 = array<u32, 29>();
    let var_1 = Struct_3(~(-31624i), 1i);
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)];
    var_0 = any(select(select(func_1(1f, Struct_2(u_input.b, vec2<f32>(-430f, 617f), Struct_1(vec4<i32>(1i, -25483i, u_input.d.x, u_input.d.x), -539f, vec3<i32>(69555i, -62676i, u_input.d.x)), Struct_1(vec4<i32>(2147483647i, 0i, -19917i, -1i), -752f, u_input.d), Struct_1(vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.d.x), -683f, u_input.d)), ~u_input.d.x, select(vec2<bool>(false, true), vec2<bool>(false, false), false)), func_1(424f, Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72630u, 29u)], 29u)], vec2<f32>(-637f, -2003f), Struct_1(vec4<i32>(u_input.d.x, 106865i, u_input.d.x, u_input.d.x), 1672f, vec3<i32>(1i, 0i, u_input.d.x)), Struct_1(vec4<i32>(-19871i, u_input.d.x, u_input.d.x, 1i), -1266f, vec3<i32>(45694i, u_input.d.x, u_input.d.x)), Struct_1(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -51510i), -1377f, vec3<i32>(-2147483647i, u_input.d.x, 18507i))), ~1i, select(vec2<bool>(true, true), vec2<bool>(false, false), true)), !func_1(-906f, Struct_2(4294967295u, vec2<f32>(562f, -1000f), Struct_1(vec4<i32>(1i, 101113i, 2147483647i, u_input.d.x), -1168f, vec3<i32>(u_input.d.x, 55827i, 2147483647i)), Struct_1(vec4<i32>(-2147483647i, -12291i, u_input.d.x, 27466i), -447f, vec3<i32>(0i, u_input.d.x, u_input.d.x)), Struct_1(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x), -776f, vec3<i32>(u_input.d.x, u_input.d.x, -1i))), 0i, vec2<bool>(false, false)).x), !vec4<bool>(all(vec3<bool>(false, false, true)), true, true, true), func_1(_wgslsmith_f_op_f32(step(-966f, _wgslsmith_f_op_f32(f32(-1f) * -168f))), Struct_2(0u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1680f, 928f))), Struct_1(vec4<i32>(u_input.d.x, 98197i, 48624i, u_input.d.x), 1689f, vec3<i32>(2147483647i, 2147483647i, 51230i)), Struct_1(vec4<i32>(19068i, 1i, -1i, u_input.d.x), -589f, vec3<i32>(0i, u_input.d.x, -11688i)), Struct_1(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), 669f, u_input.d)), u_input.d.x, func_3().xy)));
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    var var_2 = Struct_3(_wgslsmith_dot_vec2_i32(u_input.d.yz, _wgslsmith_mod_vec2_i32(u_input.d.xx, vec2<i32>(1i, u_input.d.x) ^ vec2<i32>(0i, 17129i))), _wgslsmith_mod_i32(21767i, 10894i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(select(19515u, u_input.c.x, all(vec3<bool>(false, false, false))), u_input.a.x, firstTrailingBit(abs(~1u)), abs(global0[_wgslsmith_index_u32(4605u >> (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(28011u, 29u)], 29u)] % 32u), 29u)])), _wgslsmith_mult_u32(~u_input.a.x, ~_wgslsmith_div_u32(1u & u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-528f + 263f), _wgslsmith_f_op_f32(-804f - 483f))) - _wgslsmith_f_op_f32(1617f - _wgslsmith_f_op_f32(f32(-1f) * -240f))) * _wgslsmith_f_op_f32(701f + 534f)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i | var_2.a, (i32(-1i) * -25349i) >> ((global0[_wgslsmith_index_u32(55314u, 29u)] >> (15044u % 32u)) % 32u)), u_input.d.yx), max(_wgslsmith_mult_u32(3187u, ~u_input.a.x), u_input.b));
}

