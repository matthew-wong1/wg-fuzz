struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_3,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
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

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    global0 = ~u_input.d;
    var var_0 = max(max(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.x, 1u, u_input.b) & vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u), ~vec4<u32>(global0.x, 0u, u_input.b, u_input.d.x))), ~vec4<u32>(global0.x & 9043u, 4294967295u, ~65942u, ~u_input.d.x)), (max(~vec4<u32>(4294967295u, 1u, u_input.d.x, 16480u), vec4<u32>(39367u, 4294967295u, 4294967295u, 0u)) >> (vec4<u32>(~u_input.b, 1u, min(u_input.d.x, global0.x), abs(u_input.b)) % vec4<u32>(32u))) << (~vec4<u32>(~4294967295u, u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.b, 4294967295u, u_input.d.x), vec4<u32>(0u, 15967u, global0.x, global0.x)), ~12046u) % vec4<u32>(32u)));
    var var_1 = var_0.xx;
    global0 = (select(vec3<u32>(~var_1.x, ~var_0.x, 0u ^ u_input.d.x), _wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 1u, var_1.x)), reverseBits(vec3<u32>(var_0.x, 4294967295u, global0.x))), vec3<bool>(true, any(vec4<bool>(true, true, false, true)), false)) >> (~var_0.yyy % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, global0.x, 50089u), var_0.zxz, u_input.d)), ~u_input.d) % vec3<u32>(32u));
    var_0 = countOneBits(vec4<u32>(~27545u & _wgslsmith_add_u32(4294967295u, u_input.b), abs(~global0.x), abs(abs(4575u)), ~max(71695u, 37206u))) >> (vec4<u32>(abs(4294967295u), _wgslsmith_mult_u32(1u >> (1u % 32u), 0u << (u_input.b % 32u)) ^ 1u, global0.x, firstLeadingBit(4294967295u)) % vec4<u32>(32u));
    return vec3<u32>(_wgslsmith_sub_u32(u_input.d.x, select((var_1.x | global0.x) >> (_wgslsmith_add_u32(0u, var_0.x) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(48366u, 1u, 0u, var_1.x), reverseBits(vec4<u32>(45512u, var_1.x, 0u, var_0.x))), select(true, true, select(true, false, false)))), u_input.d.x, ~global0.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_1 {
    global0 = countOneBits(~(~u_input.d) << (firstTrailingBit(_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(u_input.b, u_input.d.x, 24240u), u_input.d)) % vec3<u32>(32u))) & vec3<u32>(u_input.d.x, 2859u, global0.x);
    global0 = func_3();
    var var_0 = _wgslsmith_mult_vec2_i32(abs(select(vec2<i32>(abs(-10079i), u_input.c.x), vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_mult_i32(arg_0.x, 15401i) >= _wgslsmith_mod_i32(0i, u_input.a.x))), abs(-u_input.c.yx));
    var var_1 = !(!(all(vec3<bool>(true, true, true)) || true));
    var_1 = all(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), vec2<bool>(false, false), vec2<bool>(true, select(false, true, false)))) & true;
    return Struct_1(~(vec2<i32>(reverseBits(13240i), ~u_input.a.x) << (_wgslsmith_div_vec2_u32(~u_input.d.xz, vec2<u32>(4294967295u, global0.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, 672f)) * arg_1))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-268f)), _wgslsmith_f_op_f32(arg_1 * -2428f), _wgslsmith_f_op_f32(f32(-1f) * -1224f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-353f, arg_1, arg_1), vec3<f32>(arg_1, arg_1, arg_1), false)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, arg_1))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: bool) -> vec4<bool> {
    var var_0 = 50372i;
    global0 = u_input.d;
    var var_1 = -295f;
    global0 = abs(u_input.d);
    var var_2 = 0i;
    return vec4<bool>(!(!any(vec3<bool>(true, arg_2.x, true)) | !all(vec4<bool>(true, false, arg_2.x, true))), any(select(vec4<bool>(arg_0.b < arg_0.c.x, true, true || arg_2.x, arg_3), !(!vec4<bool>(false, arg_2.x, arg_2.x, true)), true)), true, false);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)), func_4(func_2(u_input.a, -386f), -u_input.c.zz, vec2<bool>(false, true), true)), func_4(Struct_1(-u_input.a.yz, _wgslsmith_f_op_f32(step(-200f, arg_1.x)), _wgslsmith_f_op_vec3_f32(-arg_2.zyz)), u_input.a.zx, !func_4(Struct_1(vec2<i32>(u_input.a.x, arg_0), 1497f, arg_2.xwz), vec2<i32>(-16099i, 2147483647i), vec2<bool>(false, true), false).xy, false).x);
    global0 = (u_input.d ^ reverseBits(u_input.d)) & u_input.d;
    var_0 = !(!vec4<bool>(true, !(arg_2.x >= 727f), 7559i == func_2(u_input.a, -879f).a.x, select(arg_0 >= 1i, arg_3.x < -762f, var_0.x)));
    global0 = u_input.d;
    var var_1 = Struct_2(~44300u, -32324i, select(vec3<i32>(arg_0, arg_0 | arg_0, arg_0), -u_input.a, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-17851i, max(-u_input.a.x, 0i), _wgslsmith_sub_i32(min(arg_0, -1i), 0i), u_input.a.x), vec4<i32>(-arg_0, u_input.c.x, -16284i, u_input.c.x), vec4<i32>(7159i, firstLeadingBit(reverseBits(arg_0)), abs(1i), 38155i)), func_2(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return var_1.e;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = ~reverseBits(~(~45445u));
    let var_1 = arg_1;
    var_0 = _wgslsmith_add_u32(global0.x, abs(_wgslsmith_mult_u32(global0.x, 0u)));
    var_0 = u_input.d.x;
    let var_2 = u_input.c;
    return arg_0.c.x;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    global0 = vec3<u32>(~36677u, _wgslsmith_div_u32(~4294967295u, global0.x), ~_wgslsmith_div_u32(~u_input.d.x, ~_wgslsmith_sub_u32(4294967295u, 4294967295u)));
    let var_0 = 0u;
    global0 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(24840u, min(var_0, var_0), _wgslsmith_mod_u32(var_0, var_0)) | ~_wgslsmith_div_vec3_u32(u_input.d, u_input.d), abs(vec3<u32>(~0u, _wgslsmith_mod_u32(22717u, 39441u), var_0))), countOneBits(countOneBits(~u_input.d << (vec3<u32>(1u, 0u, u_input.b) % vec3<u32>(32u)))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_mult_vec2_i32(u_input.a.yy, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xy, arg_3.e.a), vec2<i32>(u_input.c.x, u_input.c.x))), -553f, arg_0.zwz), ~vec2<u32>(arg_3.a, var_0), Struct_3(arg_1.a, !(~arg_3.a > _wgslsmith_sub_u32(arg_3.a, u_input.d.x))), _wgslsmith_mult_vec4_u32(~(~abs(vec4<u32>(1u, 43440u, arg_3.a, 1u))), vec4<u32>(_wgslsmith_mod_u32(var_0, 0u), var_0, countOneBits(~var_0), _wgslsmith_dot_vec2_u32(~global0.yy, global0.zz))));
    let var_2 = all(!vec2<bool>(func_4(var_1.a, u_input.a.zx, func_4(Struct_1(vec2<i32>(arg_3.c.x, arg_3.d.x), arg_3.e.b, arg_0.zzx), vec2<i32>(2768i, 2147483647i), vec2<bool>(true, false), false).wz, true).x, var_1.c.a.x && true));
    return Struct_1(var_1.a.a | -(~vec2<i32>(-7892i, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_0.x)) - 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(436f, 1000f, arg_3.e.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.e.c.x, arg_2, arg_2) + arg_3.e.c), var_2)) + _wgslsmith_f_op_vec3_f32(func_2(u_input.a, arg_0.x).c - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, -385f, 1000f), arg_0.xwz)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.a.b, -375f) + _wgslsmith_f_op_vec3_f32(arg_0.zwz * vec3<f32>(arg_2, -147f, 157f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(select(true, true, true) | any(vec3<bool>(false, false, true))));
    global0 = vec3<u32>(0u, ~10925u, global0.x) >> (~u_input.d % vec3<u32>(32u));
    var var_1 = func_6(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(f32(-1f) * -486f))), _wgslsmith_f_op_f32(f32(-1f) * -1964f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(930f)) + 945f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1915f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -207f))))), Struct_3(!vec3<bool>(true, true, 7770u <= u_input.b), select(false, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f)) - _wgslsmith_f_op_f32(func_5(func_1(u_input.c.x, vec2<f32>(-1000f, 1478f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, 288f, -1534f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(423f, 1293f, 1186f) * vec3<f32>(-1646f, 534f, -337f))), true, -(~u_input.a.x)))), Struct_2(max(firstLeadingBit(~4294967295u), global0.x), reverseBits(u_input.c.x), vec3<i32>(u_input.c.x, -18989i, max(-2147483647i << (global0.x % 32u), ~76441i)), _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -36067i, -1i, u_input.c.x ^ -2147483647i, u_input.a.x), u_input.c), Struct_1(u_input.a.yx ^ _wgslsmith_add_vec2_i32(u_input.c.yz, u_input.a.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 979f) - -613f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-686f, -1936f, 484f)))))));
    let var_2 = vec3<f32>(273f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-513f)))))), _wgslsmith_f_op_f32(-316f * 1109f));
    var_0 = func_4(func_6(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, 1000f, 1224f, var_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(405f, -305f, -2110f, 2667f))))), Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true), _wgslsmith_div_f32(1931f, var_1.c.x), Struct_2(47749u, i32(-1i) * -44760i, vec3<i32>(0i, ~u_input.c.x, u_input.c.x), ~firstTrailingBit(u_input.c), func_1(-36736i, vec2<f32>(791f, var_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -129f, var_1.b, 671f) - vec4<f32>(var_1.c.x, -800f, var_1.c.x, var_2.x)), var_1.c))), vec2<i32>(var_1.a.x, -1i), vec2<bool>(false, true), true).x;
    var_1 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1000f, var_1.b, var_2.x)), vec4<f32>(1059f, var_2.x, var_1.b, -1202f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-622f, var_1.b, -2314f, 1550f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(913f, -522f, 519f, 247f), vec4<f32>(var_1.b, var_1.b, -1146f, 552f), false)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x * 400f), var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - func_2(vec3<i32>(u_input.a.x, -5235i, u_input.c.x), var_1.c.x).c.x), -1000f, var_1.b)), Struct_3(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, true, false)), !all(vec3<bool>(true, true, true))), var_2.x, Struct_2(global0.x, -countOneBits(2147483647i), vec3<i32>(14701i, ~(~var_1.a.x), u_input.c.x), u_input.c, Struct_1(vec2<i32>(var_1.a.x >> (global0.x % 32u), -8198i), var_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_1.b, var_1.b) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, var_2.x, var_2.x), vec3<f32>(-782f, 1000f, var_1.c.x))))));
    var var_3 = !(any(vec2<bool>(true, true)) && (false && (all(vec3<bool>(true, true, false)) || false)));
    let var_4 = Struct_4(Struct_1(_wgslsmith_mult_vec2_i32(-var_1.a ^ u_input.c.ww, ~(-vec2<i32>(40518i, 2147483647i))), var_1.b, var_1.c), firstLeadingBit(u_input.d.xz), Struct_3(!vec3<bool>(1i > u_input.c.x, any(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, true, false, true))), !(!any(vec4<bool>(true, true, true, true)))), reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, 26005u, u_input.b, 36828u), vec4<u32>(global0.x, 1u, global0.x, global0.x), vec4<bool>(true, false, true, true)), vec4<u32>(u_input.b, u_input.d.x, 1u, global0.x)), vec4<u32>(_wgslsmith_add_u32(u_input.b, 0u), ~global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, u_input.d.x), u_input.d), u_input.b), ~(vec4<u32>(global0.x, global0.x, u_input.d.x, 0u) & vec4<u32>(global0.x, 58768u, 0u, 64679u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, func_1(var_4.a.a.x, var_4.a.c.xx, vec4<f32>(-1094f, var_4.a.c.x, var_2.x, var_4.a.c.x), var_4.a.c).b, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -759f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-834f, var_1.c.x, var_1.c.x, -759f)))))));
}

