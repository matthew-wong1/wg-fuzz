struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec2<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d.x)) * _wgslsmith_f_op_f32(251f * -236f))))), _wgslsmith_f_op_f32(1072f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -133f), arg_0.d.x, 10983i > u_input.a.x))))), true));
    let var_1 = Struct_2(true, Struct_1(vec3<i32>(-(u_input.b.x << (4294967295u % 32u)), firstLeadingBit(arg_0.a.x), ~(-1i)), arg_0.b, !(!vec4<bool>(true, arg_1.x, arg_1.x, true)), arg_0.d));
    var_0 = var_1.b.d.x;
    var var_2 = arg_0.a.xz;
    let var_3 = var_1;
    return firstTrailingBit(-20333i | u_input.b.x);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_5) -> bool {
    let var_0 = _wgslsmith_add_i32(i32(-1i) * -4264i, min(arg_1.d.a.x, firstTrailingBit(_wgslsmith_mod_i32(func_3(arg_1.d, vec2<bool>(arg_1.a.x, arg_2.e.c.x), false), u_input.a.x))));
    let var_1 = 779f;
    let var_2 = arg_2.b;
    var var_3 = Struct_1(countOneBits(vec3<i32>(arg_2.e.a.x, var_2.d.a.x, arg_0) & firstLeadingBit(vec3<i32>(arg_0, var_0, arg_2.b.d.a.x))) | ((~arg_2.e.a >> (vec3<u32>(arg_2.b.c, 8770u, arg_2.b.d.b) % vec3<u32>(32u))) & vec3<i32>(func_3(Struct_1(arg_1.d.a, arg_2.e.b, vec4<bool>(true, true, false, arg_2.b.d.c.x), arg_2.b.d.d), vec2<bool>(arg_1.d.c.x, arg_1.d.c.x), arg_2.b.a.x), -1i, -arg_1.d.a.x)), 59167u, !arg_2.e.c, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -903f))))), _wgslsmith_f_op_f32(var_2.d.d.x - arg_2.d.x)));
    var var_4 = arg_2;
    return all(arg_2.e.c.yw) != (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) * -701f))) == var_2.d.d.x);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> vec2<i32> {
    let var_0 = arg_1.yx;
    var var_1 = vec3<bool>(any(vec4<bool>(true, true, true, true)), !all(vec2<bool>(4294967295u != arg_0, true)), all(vec4<bool>(false, true, all(vec2<bool>(true, true)), true)));
    var_1 = !vec3<bool>(true, func_4(func_3(Struct_1(vec3<i32>(26677i, 2372i, 8534i), 48438u, vec4<bool>(true, false, var_1.x, var_1.x), vec2<f32>(1413f, -291f)), vec2<bool>(false, false), !var_1.x), Struct_3(select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, true, var_1.x)), arg_0, arg_0, Struct_1(vec3<i32>(0i, 17465i, -50551i), 47466u, vec4<bool>(var_1.x, true, false, var_1.x), vec2<f32>(-1000f, 1000f)), arg_0), Struct_5(_wgslsmith_f_op_f32(-1000f + -1000f), Struct_3(vec4<bool>(var_1.x, var_1.x, false, true), 19354u, 81547u, Struct_1(vec3<i32>(var_0.x, u_input.b.x, arg_1.x), 24025u, vec4<bool>(true, var_1.x, false, var_1.x), vec2<f32>(-761f, 962f)), 72924u), vec2<i32>(31086i, u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, 1784f, 184f)), Struct_1(vec3<i32>(-1i, 6817i, 48485i), 76368u, vec4<bool>(false, true, var_1.x, true), vec2<f32>(-2142f, -663f)))), !all(vec3<bool>(false, false, false)));
    var var_2 = arg_1.x;
    return ~(arg_1.yz & _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a.x), arg_1.zx));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = -(~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(func_2(0u, u_input.a.zxw), ~vec2<i32>(u_input.b.x, u_input.a.x)), vec2<i32>(u_input.b.x, -8138i)));
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~(~(~vec2<u32>(1u, 1u))));
    var var_2 = 1u ^ (~(~(var_1.x | 4294967295u)) | 84312u);
    var_1 = vec2<u32>(_wgslsmith_mult_u32(~0u << (firstLeadingBit(var_1.x) % 32u), ~max(1u, var_1.x)), firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 0u), vec2<u32>(1u, 49350u)), ~vec2<u32>(5103u, 1u)))) & vec2<u32>(~29898u, var_1.x);
    var var_3 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_1.x, var_1.x, 4294967295u, var_1.x)), vec4<u32>(121439u, 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(44273u, var_1.x), vec2<u32>(18193u, 27428u)), _wgslsmith_mult_u32(var_1.x, firstTrailingBit(var_1.x)))) | select(select(firstLeadingBit(vec4<u32>(0u, 27290u, 134127u, var_1.x)), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), true) & vec4<u32>(_wgslsmith_mult_u32(var_1.x, 25205u), 1u & var_1.x, var_1.x, _wgslsmith_add_u32(127690u, var_1.x)), ~vec4<u32>(~var_1.x, _wgslsmith_mult_u32(var_1.x, var_1.x), _wgslsmith_sub_u32(6236u, var_1.x), var_1.x), vec4<bool>(true, true, any(vec4<bool>(false, false, false, arg_0)), all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-(func_1(true) | (i32(-1i) * -7865i)), ~(i32(-1i) * -(216i | u_input.b.x)), _wgslsmith_div_i32(-(~(-1i)), 1i) & _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(23582i, u_input.a.x, 2147483647i) >> (vec3<u32>(5878u, 0u, 1u) % vec3<u32>(32u)), countOneBits(u_input.a.zww), u_input.a.zyx), vec3<i32>(1i, ~47314i, u_input.b.x)));
    var var_1 = ~60546u;
    var_1 = 1u;
    let var_2 = !select(vec4<bool>(false, !all(vec4<bool>(false, true, true, false)), true, _wgslsmith_dot_vec2_u32(vec2<u32>(38053u, 4294967295u), vec2<u32>(20288u, 2801u)) > 1u), !vec4<bool>(true, true, all(vec4<bool>(true, true, false, false)), true), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f) * -2518f))));
    var var_4 = Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(4294967295u, 4294967295u), firstTrailingBit(reverseBits(4294967295u)), _wgslsmith_sub_u32(~10681u, 0u), ~6518u << (firstTrailingBit(26884u) % 32u)), ~(~vec4<u32>(47426u, 4294967295u, 61126u, 42177u) << (select(vec4<u32>(1u, 68452u, 44435u, 54922u), vec4<u32>(0u, 1u, 0u, 1u), true) % vec4<u32>(32u)))));
    let var_5 = Struct_5(_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(411f, var_3, var_2.x))))))), Struct_3(!(!(!vec4<bool>(var_2.x, var_2.x, false, var_2.x))), 33659u, ~(~(~var_4.a.x)), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, u_input.b.x, u_input.a.x), u_input.a.zxz) | u_input.a.xxx, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a.x, var_4.a.x, var_4.a.x, var_4.a.x), _wgslsmith_div_vec4_u32(var_4.a, vec4<u32>(4920u, var_4.a.x, 4258u, 26248u))), var_2, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-487f, -344f))))), 20309u ^ var_4.a.x), firstTrailingBit(select(var_0.yz, u_input.a.wx, select(var_2.xz, !var_2.zx, vec2<bool>(true, var_2.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, 1160f)))))), Struct_1(vec3<i32>(var_0.x, var_0.x, var_0.x), _wgslsmith_sub_u32(var_4.a.x << (var_4.a.x % 32u), ~0u), select(vec4<bool>(select(var_2.x, var_2.x, var_2.x), select(false, var_2.x, true), !var_2.x, var_2.x), select(var_2, !var_2, var_4.a.x == var_4.a.x), 1388f <= var_3), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3, 203f)))))))));
    var_0 = -(~u_input.a.zwz) & u_input.a.xwz;
    let x = u_input.a;
    s_output = StorageBuffer(-153f, 0u, select(~func_2(var_4.a.x ^ 4294967295u, u_input.a.xyx), vec2<i32>(-1i) * -vec2<i32>(-4154i, -31781i), !(!(!var_2.x))), 14055u, u_input.b);
}

