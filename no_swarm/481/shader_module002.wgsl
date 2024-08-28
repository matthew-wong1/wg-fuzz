struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_3,
    d: vec3<i32>,
    e: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(15557u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(3642u, 107407u), vec2<u32>(51604u, 1u), vec2<u32>(1u, 50508u), vec2<u32>(71124u, 21507u), vec2<u32>(1u, 14144u), vec2<u32>(48228u, 16509u), vec2<u32>(50136u, 53194u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_1(1070f, u_input.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-369f - 542f))), 1284f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1123f, 1000f) + _wgslsmith_f_op_f32(round(-1142f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-604f, -379f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1724f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -107f))))), ~vec4<u32>(max(_wgslsmith_dot_vec3_u32(u_input.b.zyy, vec3<u32>(u_input.b.x, u_input.b.x, 12132u)), firstLeadingBit(u_input.a)), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u), u_input.b | u_input.b), 1u));
    var var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.d.x) * -1359f) + _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, -789f)))), Struct_4(vec3<i32>(0i, 34044i, select(u_input.d.x, -34756i, u_input.c.x <= u_input.c.x)), !select(!vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, false, arg_0), false), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-981f, 469f, var_0.a, var_0.c.x)), var_0.c, arg_0 && arg_0)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(-2147483647i, -54011i, 1i), u_input.c.wzw), vec3<i32>(-2147483647i, -2147483647i, 1i) & u_input.c.wwz, vec3<i32>(u_input.c.x, u_input.c.x, 1i))), firstTrailingBit(abs(u_input.c.wxx ^ u_input.c.yxz)), ~_wgslsmith_dot_vec4_u32(~var_0.e, abs(u_input.b))), 31895i, ~u_input.c.x, u_input.c.x);
    global0 = array<Struct_2, 5>();
    var var_2 = vec2<bool>(true, arg_0);
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.x, var_0.d.x, var_0.a, 1144f), var_0.c)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(select(var_0.c.x, 454f, true)), _wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(-var_0.a))), var_0.c, vec4<bool>((true & arg_0) & (1u <= u_input.b.x), arg_0, true, var_2.x))), Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i), firstLeadingBit(-20061i), 40083i), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.d.x, var_1.e), 2147483647i, u_input.d.x)), vec3<bool>(!(0u == var_1.b.e), any(var_1.b.b.zx), any(!var_1.b.b)), var_1.b.c, _wgslsmith_div_vec3_i32(countOneBits(u_input.c.xzz), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, -1i, var_1.b.a.x), u_input.c.wyz)) << (~min(vec3<u32>(4294967295u, var_0.e.x, 58467u), vec3<u32>(0u, var_1.b.e, var_1.b.e)) % vec3<u32>(32u)), 3232u), -1i, _wgslsmith_div_i32(u_input.c.x, var_1.e) ^ -var_1.b.c.b.x, -(~(-_wgslsmith_sub_i32(var_1.b.a.x, 1i))));
    return select(var_3.b.b.zy, var_3.b.b.xy, !(!vec2<bool>(arg_0, false)));
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = all(!func_3(u_input.c.x < -30997i)) || false;
    global1 = array<vec2<u32>, 13>();
    let var_1 = Struct_2(Struct_1(arg_0, _wgslsmith_add_vec4_u32(~u_input.b, ~u_input.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(280f, 656f, 927f, -2649f)), vec4<f32>(-854f, arg_0, 951f, arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(floor(-433f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(25910u, u_input.b.x, u_input.a, 4294967295u), vec4<u32>(u_input.a, 7342u, 1u, u_input.a)) | vec4<u32>(u_input.b.x, 38760u, u_input.a, 1720u))), u_input.c.yx);
    return var_1.b.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = arg_2;
    global0 = array<Struct_2, 5>();
    let var_1 = vec4<bool>(true, false, arg_2, var_0);
    let var_2 = arg_3.a.c;
    let var_3 = Struct_4(arg_1.yzw, !select(var_1.zyx, vec3<bool>(true, var_0, var_1.x | var_0), !vec3<bool>(var_0, arg_2, var_1.x)), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)), u_input.c.wyy), reverseBits(_wgslsmith_add_vec3_i32(arg_1.zzx, max(vec3<i32>(17056i, -7718i, 2147483647i), ~arg_1.wzy))), 1u);
    return var_3.c;
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), -u_input.c.yz) & 10897i, firstLeadingBit(~2147483647i), -1894i, u_input.d.x), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 1i, _wgslsmith_mult_i32(u_input.d.x, u_input.d.x), 7374i & u_input.d.x), vec4<i32>(~1i, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.c.x, -52410i, -8414i), u_input.c), ~6279i)));
    global0 = array<Struct_2, 5>();
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(round(arg_0.wy)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, var_0.x), select(var_0.x << (1u % 32u), func_2(-1000f), arg_0.x >= -824f), var_0.x, u_input.d.x), u_input.c), ~4393u > countOneBits(~(~u_input.b.x)), Struct_2(Struct_1(1000f, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.a, 1u, u_input.a)), ~u_input.b), arg_0, arg_0.xz, vec4<u32>(_wgslsmith_mod_u32(1u, 14392u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 53100u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(1u, 13u)], u_input.b.xx))), reverseBits(vec2<i32>(-1i, var_0.x) >> ((vec2<u32>(u_input.b.x, 4294967295u) & global1[_wgslsmith_index_u32(u_input.b.x, 13u)]) % vec2<u32>(32u)))));
    var var_2 = func_3(false).x;
    var_0 = vec4<i32>((23225i | var_0.x) & -2147483647i, -(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c.ywy, var_1.b), var_0.xzz) >> (_wgslsmith_dot_vec3_u32(u_input.b.zyy, max(vec3<u32>(u_input.a, 33667u, u_input.b.x), vec3<u32>(u_input.a, u_input.b.x, 1211u))) % 32u)), -reverseBits(~min(u_input.d.x, 2147483647i)), -2147483647i);
    return Struct_4(var_0.xyy, vec3<bool>(false, !any(vec3<bool>(true, true, true)), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true))), Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-846f, arg_0.x, 473f, var_1.a.x))), -(~abs(var_0.zxx))), var_0.zwy, min(_wgslsmith_mult_u32(select(4294967295u, ~u_input.b.x, any(vec2<bool>(true, false))), u_input.a), ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 5>();
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-946f, 615f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(599f - -3023f) - _wgslsmith_f_op_f32(1428f * 2446f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(819f)) - _wgslsmith_div_f32(-998f, 2329f)), _wgslsmith_f_op_f32(f32(-1f) * -1031f))));
    let var_1 = vec2<i32>(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(903f - 104f) + var_0.c.a.x) - var_0.c.a.x)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.c.a.yw))), vec4<i32>(-57936i, -var_0.d.x, firstTrailingBit(var_0.d.x) & ~(-1i), u_input.d.x ^ _wgslsmith_sub_i32(u_input.d.x, -57331i)), !var_0.b.x, Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_div_vec4_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-707f, var_0.c.a.x, 1492f, var_0.c.a.x) + var_0.c.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.a.x, var_0.c.a.x))), vec4<u32>(var_0.e, var_0.e, 0u, u_input.a)), vec2<i32>(reverseBits(-2485i), _wgslsmith_add_i32(2147483647i, u_input.c.x)))).b.x);
    var var_2 = var_0.b;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1828f)))), vec4<u32>(u_input.b.x, abs(1u), abs(select(u_input.b.x, 21422u, var_2.x)), var_0.e), _wgslsmith_f_op_vec4_f32(exp2(var_0.c.a)), var_0.c.a.wy, select(u_input.b, ~u_input.b, true) | u_input.b), var_0.d.yx & -(~_wgslsmith_mod_vec2_i32(vec2<i32>(-30477i, -26633i), var_1)));
    let var_4 = vec2<f32>(1000f, var_3.a.d.x);
    let var_5 = abs(var_3.b.x) << (~((u_input.b.x ^ var_3.a.b.x) << (max(39593u, firstLeadingBit(var_0.e)) % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-58874i, firstLeadingBit(-(vec2<i32>(var_3.b.x, var_3.b.x) >> (u_input.b.xy % vec2<u32>(32u))) >> (countOneBits(abs(u_input.b.zw)) % vec2<u32>(32u))), ~41103u);
}

