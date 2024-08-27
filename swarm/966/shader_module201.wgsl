struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = select(vec4<bool>(all(select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, true), arg_0.a)) | (false && all(vec3<bool>(false, arg_0.a, arg_0.a))), !(true & select(false, arg_0.a, arg_0.a)), arg_0.a, true), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), true);
    global0 = (abs(_wgslsmith_clamp_u32(~u_input.d, 56793u, _wgslsmith_clamp_u32(29060u, arg_0.c.x, arg_0.c.x))) ^ arg_0.c.x) << (_wgslsmith_mod_u32(min(arg_0.c.x, u_input.a.x), arg_0.c.x << (u_input.a.x % 32u)) % 32u);
    var var_1 = !select(select(select(!vec2<bool>(var_0.x, true), select(var_0.zw, vec2<bool>(true, true), true), !var_0.zz), select(var_0.xz, !var_0.yy, select(vec2<bool>(true, arg_0.a), var_0.wz, var_0.x)), var_0.yz), vec2<bool>(arg_0.a && true, -u_input.e != arg_0.b.x), arg_0.a);
    var_0 = vec4<bool>(false, select(var_0.x, any(var_0.zx), true == (~u_input.b < u_input.e)), true, !any(vec3<bool>(true, true, true)) | (select(var_0.x && false, true, true) & !arg_0.a));
    var_0 = !(!select(vec4<bool>(all(vec4<bool>(var_0.x, var_1.x, true, false)), true, false, var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x), !(!vec4<bool>(var_1.x, false, arg_0.a, false))));
    return ~(~u_input.a);
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(true, vec3<i32>(u_input.b, -64813i, 1i) >> (vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(arg_0, u_input.d), arg_0) % vec3<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(~arg_0, ~u_input.d), ~(~u_input.a.xx))), Struct_1(!(2939i == (u_input.c >> (0u % 32u))), countOneBits(vec3<i32>(~2147483647i, 20852i, u_input.b)), u_input.a.zx), _wgslsmith_mult_u32(abs(u_input.a.x), select(u_input.d, u_input.d, !(0u >= u_input.a.x))), -242f, 703f);
    var var_1 = func_3(var_0.b);
    let var_2 = -(~var_0.b.b.xz);
    var_1 = vec3<u32>(~arg_0, 1u, ~(~countOneBits(u_input.a.x)) >> (var_1.x % 32u));
    let var_3 = _wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.x, ~1025u), u_input.a.zx | ~(~(~var_0.a.c)));
    return Struct_2(Struct_1(true, var_0.b.b >> (u_input.a % vec3<u32>(32u)), var_1.xz), Struct_1(true | var_0.a.a, ~var_0.b.b, u_input.a.xz), ~var_0.b.c.x, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * var_0.d) * _wgslsmith_f_op_f32(sign(709f))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = vec3<bool>(true, all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, false, true), any(vec2<bool>(true, true)))) && true, any(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, false), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), (u_input.b > u_input.b) || true)));
    let var_1 = max(abs(abs(~(u_input.a.zx ^ vec2<u32>(u_input.d, u_input.d)))), u_input.a.yy);
    let var_2 = 1i;
    let var_3 = func_2(_wgslsmith_dot_vec2_u32(var_1, ~var_1));
    var var_4 = _wgslsmith_dot_vec2_u32(arg_0, ~(~(~min(var_1, u_input.a.zy))));
    return ~(~firstTrailingBit(firstLeadingBit(64268u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(_wgslsmith_sub_u32(u_input.d, ~(~4294967295u)));
    global0 = _wgslsmith_div_u32(func_1(u_input.a.xz), u_input.a.x);
    let var_0 = Struct_1(!any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec4<bool>(true, false, true, true)))), firstTrailingBit(vec3<i32>(abs(u_input.b), u_input.c, _wgslsmith_clamp_i32(u_input.b, -u_input.e, 8166i))), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), ~vec2<u32>(5279u, ~u_input.a.x)));
    let var_1 = firstLeadingBit(func_2(u_input.a.x).a.b.x);
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(23683i), _wgslsmith_mult_i32(-2147483647i, var_1), -29835i, u_input.e), select(vec4<i32>(68554i, var_0.b.x, 21131i, var_0.b.x) >> (vec4<u32>(4294967295u, var_0.c.x, 13523u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, 0i, u_input.c, -473i), vec4<i32>(24822i, -7566i, 0i, 34661i)), true)) & -(_wgslsmith_clamp_vec4_i32(vec4<i32>(43261i, u_input.b, var_1, var_1), vec4<i32>(2147483647i, var_1, 1i, var_1), vec4<i32>(var_0.b.x, -2147483647i, -14303i, 28681i)) >> (countOneBits(vec4<u32>(2533u, 28797u, 141u, u_input.a.x)) % vec4<u32>(32u))), select(min(abs(vec4<i32>(-1i, u_input.b, 1i, 40856i)), vec4<i32>(~u_input.b, var_1, firstLeadingBit(u_input.b), -8030i)), vec4<i32>(-40314i, ~(-18336i), func_2(var_0.c.x).b.b.x, var_0.b.x), !select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), select(vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(var_0.a, true, true, var_0.a)), !var_0.a)));
    let var_3 = firstTrailingBit(-vec2<i32>(-(var_1 >> (var_0.c.x % 32u)), select(u_input.b, -27946i | var_0.b.x, select(var_0.a, var_0.a, false))));
    var var_4 = Struct_4(var_0.c.x, _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b, -22416i, var_3.x ^ max(var_0.b.x, var_0.b.x), -1i), abs(vec4<i32>(-31584i, -7466i, 43500i, var_1)) << (~vec4<u32>(4294967295u, var_0.c.x, 26596u, 25540u) % vec4<u32>(32u))), !select(!select(vec3<bool>(false, var_0.a, false), vec3<bool>(true, true, false), var_0.a), vec3<bool>(func_2(6020u).b.a, any(vec3<bool>(var_0.a, var_0.a, var_0.a)), var_0.a), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(select(495f, 1264f, true))), -429f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1075f, 827f, 615f) + vec3<f32>(-1129f, 172f, 126f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-262f, 450f, -1688f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(755f, 1452f, 358f), vec3<f32>(1751f, 1692f, -359f)), vec3<f32>(549f, -1276f, 1231f), true))), !select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, false), var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c.x, ~_wgslsmith_sub_vec3_u32(~u_input.a, ~(~u_input.a)), u_input.a.x, var_1);
}

