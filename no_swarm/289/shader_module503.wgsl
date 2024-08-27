struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> bool {
    let var_0 = arg_1.x;
    return arg_0.d <= ~arg_0.d;
}

fn func_2(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = ~(-_wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a, 78295i, u_input.a, -2147483647i) >> (vec4<u32>(1u, 60613u, 1u, 38943u) % vec4<u32>(32u))) & vec4<i32>(2147483647i, -1i, 59099i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 14591i, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, 80845i))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1f - arg_0.x), vec3<bool>(true, true, !all(vec4<bool>(false, true, false, false))), var_0, 34369u), Struct_1(arg_0.x, vec3<bool>(~5924u == _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 58745u), vec3<u32>(12310u, 32096u, 1u)), true, true), var_0, ~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(102872u, 4294967295u, 18568u)))), Struct_1(-658f, vec3<bool>(func_3(Struct_1(arg_0.x, vec3<bool>(false, true, false), -18504i, 72349u), vec3<bool>(true, false, false), all(vec3<bool>(true, false, true))), true, -17968i < (var_0 | 26352i)), 2147483647i, ~(~77527u) << (1u % 32u)), Struct_1(_wgslsmith_f_op_f32(-811f + _wgslsmith_f_op_f32(f32(-1f) * -622f)), vec3<bool>(all(vec2<bool>(true, true)), select(true, true, true), false), -var_0, 20973u));
    var var_2 = firstLeadingBit(abs(var_1.b.c));
    var var_3 = select(vec3<bool>(true, all(!var_1.a.b), var_1.b.b.x), select(!select(vec3<bool>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x), !var_1.b.b, true), var_1.d.b, !(!var_1.c.b.x)), !all(select(!vec3<bool>(var_1.d.b.x, true, var_1.c.b.x), select(var_1.b.b, vec3<bool>(false, true, false), var_1.b.b), all(vec3<bool>(var_1.a.b.x, true, true)))));
    var var_4 = ~min(_wgslsmith_add_vec2_u32(~select(vec2<u32>(2060u, 4294967295u), vec2<u32>(var_1.a.d, 1u), var_1.d.b.x), vec2<u32>(_wgslsmith_mult_u32(var_1.c.d, 57959u), max(45648u, var_1.d.d))), ~min(vec2<u32>(var_1.c.d, var_1.a.d), vec2<u32>(4294967295u, var_1.a.d)) | vec2<u32>(var_1.c.d, max(var_1.c.d, 1u)));
    return max(abs(vec4<u32>(var_1.c.d, 4294967295u, 1u, var_4.x) & vec4<u32>(min(36808u, var_4.x), ~var_1.a.d, var_4.x, var_4.x)), (max(vec4<u32>(var_4.x, 1u, 0u, var_4.x), vec4<u32>(57386u, 0u, 0u, 28984u)) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_4.x, var_1.a.d, 0u, 0u), vec4<u32>(var_1.d.d, 57455u, 1u, 1u)), select(vec4<u32>(var_4.x, var_4.x, 0u, var_1.d.d), vec4<u32>(4294967295u, 0u, 1u, var_4.x), true))) | vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_4.x, var_1.d.d, var_4.x, var_4.x), select(vec4<u32>(0u, var_1.d.d, 1u, 1u), vec4<u32>(4294967295u, 41647u, 18200u, var_4.x), var_1.b.b.x)), ~58033u, 0u | (20598u & var_4.x), ~var_4.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    let var_0 = ~(~((0u | arg_0.x) ^ 1u)) << (select(~(1u << (arg_0.x % 32u)), ~1u, true) % 32u);
    var var_1 = Struct_4(select(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(499f, 144f, -2185f) - vec3<f32>(1000f, 1000f, 1000f))), ~(~vec4<u32>(arg_0.x, 8436u, 63254u, var_0)), !arg_1) >> (((~vec4<u32>(arg_0.x, 4294967295u, 39025u, var_0) | (vec4<u32>(var_0, var_0, 17383u, 1u) << (vec4<u32>(1u, var_0, 52630u, var_0) % vec4<u32>(32u)))) & abs(~vec4<u32>(6373u, 72431u, 44650u, arg_0.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-941f)))), Struct_1(_wgslsmith_f_op_f32(ceil(-2097f)), !(!vec3<bool>(false, false, arg_1)), u_input.a, firstLeadingBit(15285u)));
    var var_2 = any(vec2<bool>(arg_1, !(all(vec2<bool>(arg_1, arg_1)) && true)));
    var var_3 = _wgslsmith_dot_vec4_i32(abs(~(-vec4<i32>(u_input.a, 0i, 4321i, u_input.a))) | max(_wgslsmith_mult_vec4_i32(vec4<i32>(49406i, u_input.a, u_input.a, 2147483647i), vec4<i32>(var_1.c.c, var_1.c.c, var_1.c.c, 1i)) & -vec4<i32>(-2147483647i, u_input.a, var_1.c.c, var_1.c.c), min(-vec4<i32>(var_1.c.c, u_input.a, u_input.a, -8905i), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, var_1.c.c), vec4<i32>(-2147483647i, u_input.a, u_input.a, -68039i), vec4<i32>(37634i, 0i, 16090i, 1i)))), -countOneBits((vec4<i32>(15316i, var_1.c.c, 0i, 1i) >> (var_1.a % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(61645u, var_0, var_1.c.d, var_0), vec4<u32>(var_1.a.x, 1u, var_1.c.d, var_0)) % vec4<u32>(32u))));
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a, var_1.c.a, -2211f, var_1.b) - vec4<f32>(var_1.b, -251f, var_1.c.a, 1144f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a, var_1.b, var_1.c.a, var_1.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-555f, var_1.c.a, -560f, -970f) + vec4<f32>(364f, 360f, var_1.b, var_1.c.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-242f, var_1.b, 134f, -1958f))), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_1.c.b.x, true, arg_1), false))))));
    return -24365i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(~(-83438i), _wgslsmith_mult_i32(u_input.a, _wgslsmith_clamp_i32(func_1(vec3<u32>(1u, 0u, 0u), true), u_input.a, 0i)), func_1(~(~vec3<u32>(7850u, 25649u, 1u)), any(vec3<bool>(true, true, true))), u_input.a) >> (vec4<u32>(firstTrailingBit(78531u) & (1u << (func_2(vec3<f32>(-100f, -385f, 784f)).x % 32u)), ~(~1u), 4294967295u, 1u) % vec4<u32>(32u));
    var var_1 = vec3<bool>(true != ((all(vec4<bool>(true, true, true, true)) & false) && true), any(vec2<bool>(true, true)), false);
    var var_2 = Struct_2(Struct_1(324f, vec3<bool>(var_1.x, all(vec4<bool>(var_1.x, true, var_1.x, true)) | var_1.x, false), 1i, 1u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(655f, -1245f)))), select(select(vec3<bool>(var_1.x, var_1.x, false), !vec3<bool>(false, var_1.x, true), true), vec3<bool>(false, true, false), vec3<bool>(true, true, all(vec3<bool>(false, false, var_1.x)))), 1i, _wgslsmith_div_u32(1u, ~1u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(287f - -1000f) + _wgslsmith_f_op_f32(sign(1480f))) + 1000f), vec3<bool>((false | var_1.x) == func_3(Struct_1(1227f, vec3<bool>(var_1.x, false, false), 1i, 11645u), vec3<bool>(false, var_1.x, var_1.x), var_1.x), var_1.x, var_1.x), u_input.a, ~12865u), Struct_1(-574f, !(!(!vec3<bool>(var_1.x, var_1.x, var_1.x))), 0i, 4294967295u));
    var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(~(-1i), _wgslsmith_clamp_i32(-37257i, var_2.c.c, var_2.b.c), _wgslsmith_dot_vec3_i32(var_0.zyx, vec3<i32>(var_0.x, u_input.a, var_0.x)), i32(-1i) * -40734i), vec4<i32>(28383i, _wgslsmith_dot_vec3_i32(var_0.yxy, var_0.wyz), ~var_0.x, u_input.a | 1i)), vec4<i32>(_wgslsmith_sub_i32(u_input.a | -13625i, var_2.d.c), var_0.x, u_input.a, 989i)), vec4<i32>(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), 2147483647i), reverseBits(var_0.x), reverseBits(firstTrailingBit(-1i) >> (_wgslsmith_sub_u32(4294967295u, 13675u) % 32u)), -44668i));
    var_0 = countOneBits(vec4<i32>(_wgslsmith_mod_i32(u_input.a, -2147483647i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_0.wxw, var_0.wyy) & firstTrailingBit(0i), countOneBits(0i) >> (var_2.a.d % 32u)), ~u_input.a, var_2.d.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xzz, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.c.d, 21826u), vec2<u32>(var_2.c.d, var_2.b.d)) >> (~vec2<u32>(var_2.d.d, var_2.a.d) % vec2<u32>(32u)), min(abs(vec2<u32>(var_2.b.d, var_2.a.d)), vec2<u32>(39805u, 25816u))));
}

