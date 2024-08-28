struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(77158u, 1u, 56701u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1443f, 275f, 1725f))) - _wgslsmith_f_op_vec3_f32(arg_3 - arg_3)), _wgslsmith_f_op_vec3_f32(-arg_3)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1465f, _wgslsmith_f_op_f32(floor(arg_3.x)), 1598f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_3))));
    var_0 = _wgslsmith_div_vec3_f32(arg_3, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1619f)) * arg_3.x) - 794f), var_0.x, 332f));
    let var_1 = ~vec3<u32>(4294967295u, 47522u, firstLeadingBit(~0u));
    let var_2 = Struct_5(Struct_3(~global0.x, Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_3 + vec3<f32>(656f, 491f, 428f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-775f, arg_3.x, 885f) - arg_3)))), _wgslsmith_f_op_f32(floor(var_0.x)), Struct_2(vec2<bool>(select(arg_0, arg_0, arg_0), true), arg_3.xy), Struct_2(vec2<bool>(15395i >= u_input.c, true), _wgslsmith_f_op_vec2_f32(var_0.xz + _wgslsmith_f_op_vec2_f32(trunc(var_0.xz))))), max(19289u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(u_input.b.x, 1u)), 0u)), Struct_3(24775u, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(arg_3))), _wgslsmith_f_op_f32(-arg_3.x), Struct_2(!arg_2.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(121f, var_0.x)) + arg_3.yz)), Struct_2(vec2<bool>(any(vec2<bool>(arg_1, false)), all(vec2<bool>(arg_1, false))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_3.xy - arg_3.yy))))), var_1.x);
    global0 = vec3<u32>(44257u, ~0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(59111u, 5646u, u_input.a.x, 13174u), vec4<u32>(var_1.x, global0.x, 4294967295u, 57438u), true), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, 8769u, global0.x), vec4<u32>(10187u, var_1.x, 14u, 37305u)), ~vec4<u32>(0u, var_1.x, global0.x, u_input.a.x)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, var_2.a.a))), var_2.c.a));
    return ~(~1u);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> Struct_5 {
    return Struct_5(Struct_3(func_3(true, true, vec3<bool>(false, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, 1000f, -1259f))) & global0.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-508f - 798f), _wgslsmith_f_op_f32(abs(-371f)), _wgslsmith_f_op_f32(step(-1582f, -686f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1147f - 581f)))), Struct_2(vec2<bool>(true, false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1529f, -144f) + vec2<f32>(-371f, -1068f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-973f, -278f), vec2<f32>(253f, 544f))))), Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(337f, 1313f), vec2<f32>(-267f, 523f), vec2<bool>(false, false)))))), abs(abs((0u & arg_0) & firstTrailingBit(0u))), Struct_3(arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(395f, -1000f, -1154f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1775f, -1000f, -999f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1281f + _wgslsmith_f_op_f32(1430f * 529f))), Struct_2(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(411f, -530f) - vec2<f32>(-383f, 236f)) + vec2<f32>(-1157f, 2564f))), Struct_2(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, true), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-154f, 100f) + vec2<f32>(-740f, -205f)))), _wgslsmith_mult_u32(firstLeadingBit(min(1326u, arg_1.x)) >> (4294967295u % 32u), ~(arg_0 << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u), global0.zy) % 32u))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>, arg_3: u32) -> bool {
    var var_0 = func_2(_wgslsmith_mod_u32(~35530u, ~(~global0.x)), vec4<u32>(u_input.a.x, ~(5602u & _wgslsmith_mult_u32(u_input.a.x, arg_3)), u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, arg_3) | ~u_input.b.x, ~8630u)));
    var_0 = func_2(1u | arg_3, ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(28820u, var_0.d, 1186u, arg_3) << (vec4<u32>(arg_0.a, 0u, 1u, arg_0.a) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(4559u, 66399u, var_0.c.a, 0u))), ~vec4<u32>(29680u, 0u, var_0.a.a, 0u) & ~vec4<u32>(45072u, 488u, 3252u, 0u)));
    let var_1 = func_2(2613u, ~vec4<u32>(arg_3, 1u, ~u_input.b.x, ~0u) << (vec4<u32>(0u, _wgslsmith_mult_u32(func_2(var_0.a.a, vec4<u32>(var_0.b, 20908u, 47722u, 4294967295u)).c.a, 1u), ~29181u, _wgslsmith_mod_u32(func_3(var_0.a.e.a.x, arg_0.e.a.x, vec3<bool>(var_0.c.d.a.x, var_0.a.d.a.x, var_0.a.d.a.x), var_0.c.b.a), min(1u, 1u))) % vec4<u32>(32u))).c.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.d.b) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.e.b + vec2<f32>(-1518f, arg_0.c)))));
    let var_3 = u_input.a;
    return any(!select(select(vec4<bool>(arg_0.e.a.x, true, var_0.c.d.a.x, var_0.c.e.a.x), vec4<bool>(true, arg_0.e.a.x, true, false), vec4<bool>(true, var_0.a.d.a.x, true, var_0.a.e.a.x)), !vec4<bool>(var_0.a.e.a.x, var_0.c.e.a.x, true, arg_0.d.a.x), !vec4<bool>(var_0.c.d.a.x, true, true, arg_0.d.a.x))) && (-_wgslsmith_add_i32(arg_2.x, 0i) <= select(u_input.c, -2147483647i, !(arg_0.d.a.x && false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(u_input.b.x), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(111893u, 0u), vec2<u32>(4294967295u, 4294967295u))), 14892u >> (_wgslsmith_div_u32(global0.x, u_input.a.x) % 32u)), vec3<u32>(1u, 27675u, u_input.b.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b.x, 0u), vec3<u32>(u_input.a.x, global0.x, 0u)), ~(~vec3<u32>(0u, u_input.a.x, global0.x))), firstLeadingBit(global0.x)), ~(~1u ^ ~_wgslsmith_add_u32(u_input.a.x, 28185u)));
    let var_0 = !vec4<bool>(true, all(vec4<bool>(true, true, true, func_1(Struct_3(0u, Struct_1(vec3<f32>(-689f, 583f, 1608f)), 502f, Struct_2(vec2<bool>(true, true), vec2<f32>(1764f, -866f)), Struct_2(vec2<bool>(true, true), vec2<f32>(1000f, 295f))), 141f, vec3<i32>(1i, 15619i, 0i), global0.x))), false, u_input.d <= (2147483647i << (select(global0.x, 0u, true) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1953f * -483f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1556f + _wgslsmith_f_op_f32(sign(-859f))) * 131f))));
    global0 = firstLeadingBit(abs(_wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 22955u), vec3<u32>(global0.x, 0u, global0.x))), ~vec3<u32>(global0.x, u_input.a.x, 0u))));
    var var_2 = Struct_4(min(u_input.c & _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, -4399i, 12389i, u_input.d)), ~vec4<i32>(u_input.c, -2147483647i, u_input.c, -28483i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.d, 78744i), _wgslsmith_mod_i32(u_input.d, u_input.c), ~2147483647i, 1i), ~vec4<i32>(1i, -71421i, u_input.d, u_input.d))), var_1, func_2(_wgslsmith_mod_u32(~(~104608u), min(abs(u_input.a.x), 1u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(7524u, 33414u, 1u, 1u), vec4<u32>(4928u, 4294967295u, global0.x, u_input.a.x)) & abs(vec4<u32>(1u, global0.x, 4294967295u, 84884u))).a.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(77659u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 68926u, global0.x, u_input.b.x), vec4<u32>(u_input.a.x, global0.x, 34370u, 23317u)) | ~_wgslsmith_div_u32(1u, global0.x)), select(vec2<u32>(select(12505u, countOneBits(u_input.a.x), any(var_0.wz)), u_input.a.x), vec2<u32>(countOneBits(_wgslsmith_add_u32(23890u, 1u)), abs(1u) | (global0.x >> (4294967295u % 32u))), false), max(~_wgslsmith_mod_i32(-2147483647i, u_input.c) ^ _wgslsmith_mod_i32(min(0i, 1i), -u_input.c), -u_input.d), _wgslsmith_sub_vec2_i32(-vec2<i32>(-var_2.a, ~19845i), countOneBits(vec2<i32>(_wgslsmith_div_i32(-18940i, var_2.a), 24424i | var_2.a))));
}

