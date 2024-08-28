struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 7>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: bool) -> Struct_2 {
    let var_0 = ~(~u_input.b.x);
    var var_1 = abs(select(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2.a.yy, vec2<u32>(49895u, 0u)), arg_1.x), u_input.a.yz), u_input.a.zy, !select(vec2<bool>(true, arg_3), vec2<bool>(arg_3, arg_2.b.d.a), arg_3)));
    global0 = array<Struct_5, 7>();
    let var_2 = vec2<u32>(u_input.a.x, 1u);
    var var_3 = u_input.a;
    return arg_2.d;
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = Struct_4(u_input.b.xz, arg_1, vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(661f + -285f), _wgslsmith_f_op_f32(3067f * 586f), !arg_1.b))), arg_1.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1.c.x)))), arg_1.c.x), u_input.c, u_input.b.xx);
    let var_1 = Struct_1(arg_1.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1285f, var_0.c.x, -744f))), _wgslsmith_f_op_vec4_f32(-var_0.c), select(vec4<bool>(var_0.b.b, true, arg_1.b, arg_0), vec4<bool>(var_1.a, true, false, false), !arg_0)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(841f, 238f)))) - -420f), _wgslsmith_f_op_f32(-arg_1.c.x), -1850f, arg_1.c.x));
    let var_3 = var_2.x;
    return _wgslsmith_add_vec2_i32(abs(var_0.e), _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(var_0.e.x, 10748i)), ~countOneBits(vec2<i32>(u_input.b.x, 2147483647i))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: vec2<u32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.c, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-arg_0.c), any(!(!vec4<bool>(false, false, arg_0.a.a, arg_0.a.a))) || arg_0.b.a));
    var_0 = arg_0.c;
    global0 = array<Struct_5, 7>();
    var_0 = _wgslsmith_f_op_f32(arg_0.c * -196f);
    var var_1 = Struct_4(vec2<i32>(arg_2, -(1i | arg_2)), func_2(_wgslsmith_f_op_f32(max(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))), vec2<u32>(u_input.a.x, 4294967295u), Struct_5(abs(u_input.a), arg_0, arg_0.d, Struct_2(arg_0.d.a, !arg_0.b.a, vec3<f32>(1000f, arg_0.c, arg_0.c))), _wgslsmith_add_i32(-u_input.b.x, i32(-1i) * -38235i) <= -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 1205f, arg_0.c, 465f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, -653f, 256f, -1957f), vec4<f32>(1312f, arg_0.c, arg_0.c, arg_0.c))))), -2147483647i, max(~func_3(func_2(-1245f, arg_3, Struct_5(vec3<u32>(arg_1, 4294967295u, arg_3.x), Struct_3(Struct_1(arg_0.a.a), arg_0.b, -503f, arg_0.b), arg_0.b, Struct_2(true, true, vec3<f32>(973f, -1072f, -3571f))), arg_0.a.a).b, func_2(arg_0.c, vec2<u32>(u_input.a.x, 1u), global0[_wgslsmith_index_u32(3708u, 7u)], false)), u_input.b.yx));
    return Struct_5(abs(u_input.a), Struct_3(arg_0.d, Struct_1(any(vec3<bool>(true, true, var_1.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(511f + arg_0.c)), arg_0.b), arg_0.a, var_1.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5) -> u32 {
    var var_0 = _wgslsmith_div_i32(2147483647i, 7861i);
    let var_1 = -(~countOneBits(max(u_input.b, _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(36064i, 1i, u_input.c)))));
    var var_2 = ~vec2<u32>(~((arg_1.a.x ^ u_input.a.x) & (arg_1.a.x >> (arg_1.a.x % 32u))), 57558u);
    var var_3 = func_1(arg_1.b, 1u, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 2147483647i), var_1.xz), vec2<i32>(u_input.b.x, u_input.c)), -min(var_1.x, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_1.x, var_1.x, u_input.c), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -16059i)))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.a.zy, arg_1.a.xx | vec2<u32>(15617u, u_input.a.x)), select(select(arg_0, vec2<u32>(42777u, arg_1.a.x), vec2<bool>(false, false)), vec2<u32>(39219u, arg_1.a.x), vec2<bool>(true, true)), arg_1.a.xz)).c;
    let var_4 = arg_1.d.c.yz;
    return _wgslsmith_dot_vec4_u32(~(~(~(~vec4<u32>(100900u, u_input.a.x, 31187u, u_input.a.x)))), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, arg_1.a.x, 0u, 4294967295u) & vec4<u32>(arg_1.a.x, arg_1.a.x, 40034u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, arg_0.x, arg_0.x)) >> (_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 1u, arg_1.a.x, 4294967295u)), vec4<u32>(4294967295u, var_2.x, u_input.a.x, 14772u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(_wgslsmith_sub_u32(min(u_input.a.x, u_input.a.x), ~4294967295u), u_input.a.x) >> (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) % 32u);
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-20936i, ~_wgslsmith_mod_i32(u_input.c, u_input.c)), _wgslsmith_add_i32(-15155i, u_input.b.x), 2772i), 9102i, ~(-40801i), -_wgslsmith_sub_i32(-27102i, firstTrailingBit(-9822i)) >> (~(firstTrailingBit(0u) | ~4294967295u) % 32u));
    var var_2 = vec4<u32>(1u, firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 37239u) & (_wgslsmith_div_u32(12535u, 4294967295u) | u_input.a.x)), max(_wgslsmith_div_u32(_wgslsmith_div_u32(36354u, 4294967295u), u_input.a.x), func_4(~u_input.a.yz, func_1(Struct_3(Struct_1(false), Struct_1(false), 247f, Struct_1(true)), 52415u, 37360i, u_input.a.yy))) | u_input.a.x, 32478u);
    let var_3 = Struct_4(u_input.b.yz, Struct_2(~(-37918i) != abs(u_input.b.x), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1348f, 873f, -1000f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-944f, 1571f, 105f) - vec3<f32>(-648f, 1092f, -1000f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-300f, -1197f, 1000f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, -1156f, 217f, 353f) + vec4<f32>(-1000f, -267f, -575f, -1885f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1108f, -1000f, -792f, 430f), vec4<f32>(-882f, -1696f, -145f, -1440f), vec4<bool>(true, true, false, false)))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1018f, -939f, 1061f, -1314f) + vec4<f32>(123f, 902f, 828f, 1663f))))), -34332i, var_1.xy & max(_wgslsmith_mod_vec2_i32(vec2<i32>(-43520i, u_input.c), vec2<i32>(-1i, u_input.b.x)), ~max(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(var_1.x, -14367i))));
    global0 = array<Struct_5, 7>();
    var_2 = min(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 52990u, u_input.a.x, 1u) << (vec4<u32>(0u, u_input.a.x, var_2.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 11007u, 1u, var_2.x)) >> (vec4<u32>(max(40414u, var_2.x), 18922u, _wgslsmith_clamp_u32(1u, u_input.a.x, 0u), u_input.a.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, reverseBits(var_2.x), _wgslsmith_mult_u32(~var_2.x, ~46922u), _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(1u, 54377u)))), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, ~u_input.a.x, ~1u, 1u << (var_2.x % 32u)), min(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 21696u), vec4<u32>(u_input.a.x, u_input.a.x, var_2.x, var_2.x)) ^ ~vec4<u32>(var_2.x, var_2.x, var_2.x, u_input.a.x)));
    global0 = array<Struct_5, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c);
}

