struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.x * _wgslsmith_f_op_f32(-1000f * arg_0.a.b.x)) - 643f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(137f + 676f) + 1193f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.b.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1379f)), _wgslsmith_f_op_f32(f32(-1f) * -524f), select(true, false, true))))));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(~(~_wgslsmith_div_vec3_u32(u_input.a.xzw, vec3<u32>(arg_1, arg_1, 37172u))), _wgslsmith_div_vec3_u32(min(vec3<u32>(47782u, arg_1, 11613u) | vec3<u32>(u_input.a.x, u_input.a.x, arg_1), vec3<u32>(1u, 71777u, 36164u)), firstTrailingBit(firstLeadingBit(vec3<u32>(arg_1, 41591u, u_input.a.x)))), u_input.a.yxw);
    var var_2 = select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), true)), vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true, true), !vec4<bool>(false, !any(vec4<bool>(true, false, false, false)), false, true));
    let var_3 = Struct_4(Struct_2(Struct_1(u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + 541f), _wgslsmith_f_op_f32(arg_0.a.b.x * var_0.x))), select(vec3<i32>(arg_0.b.x, 0i, _wgslsmith_sub_i32(40411i, -43159i)), min(select(vec3<i32>(-28179i, 18624i, 20923i), vec3<i32>(37578i, u_input.b, -24052i), var_2.x), u_input.c), !var_2.wxz)), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(0u, 4294967295u, 14008u)) >> (vec3<u32>(~0u, 19078u, ~arg_1) % vec3<u32>(32u)), u_input.a.xzx), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-13079i, -36549i, 1i, 1i), vec4<i32>(u_input.b, -3184i, u_input.d, u_input.c.x))), var_2.wy);
    let var_4 = select(vec4<bool>(any(vec3<bool>(false, var_3.d.x, true)), var_2.x, !any(var_2.yy), var_2.x), select(!vec4<bool>(var_2.x, true, true, true), !select(select(vec4<bool>(false, true, true, var_3.d.x), vec4<bool>(false, true, var_3.d.x, false), true), !vec4<bool>(false, true, false, var_2.x), select(vec4<bool>(var_2.x, false, var_3.d.x, true), vec4<bool>(var_3.d.x, var_2.x, var_3.d.x, false), var_3.d.x)), !vec4<bool>(all(vec2<bool>(var_2.x, var_2.x)), true, u_input.c.x <= var_3.a.a.a, var_2.x)), var_3.d.x);
    return -27798i;
}

fn func_4(arg_0: i32, arg_1: u32) -> vec2<u32> {
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    var var_0 = select(vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), all(vec2<bool>(true, false)))), !(46015u >= _wgslsmith_sub_u32(u_input.a.x, 21856u)), true), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), true);
    var var_1 = select(var_0.zy, select(!var_0.zz, var_0.yy, true), var_0.x);
    var_1 = var_0.zz;
    return countOneBits(u_input.a.wz);
}

fn func_2(arg_0: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec2_u32(func_4(func_3(Struct_2(Struct_1(u_input.b, vec3<f32>(-701f, 424f, -579f)), firstLeadingBit(u_input.c)), _wgslsmith_mod_u32(u_input.a.x, arg_0.x & u_input.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, arg_0.x, 8707u, arg_0.x), ~vec4<u32>(arg_0.x, arg_0.x, 13543u, 7802u)), select(u_input.a, u_input.a, vec4<bool>(false, true, false, false)))), countOneBits(u_input.a.wy) << (vec2<u32>(~12379u, u_input.a.x) % vec2<u32>(32u)));
    var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, ~(~var_0.x)), countOneBits(~max(u_input.a.zy, u_input.a.yw)));
    let var_1 = 1i;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2152f, -115f, -603f, -324f), vec4<f32>(1990f, 237f, 528f, -857f))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f)), 157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(547f - 1148f) + -729f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1641f - 194f))))));
    var var_3 = !select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, true)), true));
    return select(-(_wgslsmith_div_vec2_i32(u_input.c.xx & u_input.c.zy, u_input.c.xy) << (max(arg_0.zy, u_input.a.yx) % vec2<u32>(32u))), u_input.c.zx, select(!(!select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, var_3.x), var_3.x)), !vec2<bool>(var_3.x, var_3.x || false), vec2<bool>(any(vec2<bool>(var_3.x, var_3.x)), false)));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_4, 2>();
    var var_0 = _wgslsmith_div_vec2_i32(~u_input.c.xz, vec2<i32>(-9162i, firstTrailingBit(arg_0.a.b.x)) & ~(~u_input.c.xy)) | ~_wgslsmith_div_vec2_i32(func_2(u_input.a.xwz), u_input.c.yx);
    var_0 = firstTrailingBit(u_input.c.xx);
    global0 = array<Struct_4, 2>();
    var var_1 = vec2<bool>(false, !(arg_0.c.x >= arg_0.a.a.a));
    return arg_0.a.a;
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), ~(u_input.a << (u_input.a % vec4<u32>(32u)))) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x) ^ u_input.a.wwz, u_input.a.zyz), 2u)], !vec4<bool>(all(vec2<bool>(false, false)), !all(vec2<bool>(false, true)), true, false));
    var var_1 = ~arg_0.a;
    var_1 = i32(-1i) * -22602i;
    var var_2 = Struct_2(arg_0, u_input.c);
    var_0 = Struct_1(_wgslsmith_mult_i32(var_2.a.a, var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1173f, var_2.a.b.x, -225f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(54744u, func_5(func_1(Struct_4(Struct_2(Struct_1(u_input.b, vec3<f32>(-261f, 379f, 469f)), vec3<i32>(u_input.b, u_input.d, -1i)), _wgslsmith_mult_u32(u_input.a.x, 4294967295u), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 1i, 76486i, u_input.b), vec4<i32>(15401i, -2147483647i, u_input.d, u_input.d)), vec2<bool>(true, true)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, false), any(vec2<bool>(true, false))))), 4294967295u);
    var_0 = vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(var_0.yy, firstLeadingBit(vec2<u32>(150626u, 4294967295u)))) << (22525u % 32u), u_input.a.x, var_0.x);
    let var_1 = false;
    let var_2 = -select(_wgslsmith_mult_vec2_i32(u_input.c.xz, vec2<i32>(~u_input.c.x, -5341i)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.d, u_input.d), vec2<i32>(-2147483647i, u_input.b) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(23260i, u_input.d, -41680i), u_input.b)), vec2<bool>(var_1, select(false, var_0.x != var_0.x, all(vec2<bool>(var_1, var_1)))));
    var_0 = u_input.a.zxw;
    let var_3 = Struct_1(-u_input.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1146f, -880f, -1000f))))))));
    global0 = array<Struct_4, 2>();
    var_0 = vec3<u32>(var_0.x, var_0.x, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_sub_u32(abs(var_0.x), _wgslsmith_sub_u32(37130u, var_0.x)) ^ firstTrailingBit(u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(1i, 0i))), min((vec2<i32>(u_input.c.x, 28087i) ^ u_input.c.xz) | _wgslsmith_add_vec2_i32(min(vec2<i32>(14302i, u_input.d), var_2), vec2<i32>(-11294i, var_2.x)), vec2<i32>(min(11453i << (u_input.a.x % 32u), -16787i), min(firstTrailingBit(var_2.x), ~(-1i)))), ~_wgslsmith_mult_u32(var_0.x, 31577u), -var_2.x);
}

