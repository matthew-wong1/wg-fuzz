struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> bool {
    var var_0 = ~(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 0i, 4427i), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c, arg_1.c, arg_1.c), vec3<i32>(26737i, arg_0.c, 68693i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.c, arg_0.c, 1i) << (vec3<u32>(14301u, arg_1.a, arg_0.a) % vec3<u32>(32u)), vec3<i32>(2147483647i, u_input.a, 7828i) >> (vec3<u32>(388u, 1u, arg_1.a) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_1.c, -42769i), vec3<i32>(0i, arg_1.c, -943i)))) ^ firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_0.c, -1i), vec3<i32>(arg_0.c, u_input.a, arg_0.c)) | firstTrailingBit(vec3<i32>(-2147483647i, -2147483647i, 2147483647i))));
    var_0 = abs(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(60785i, arg_1.c, 1i)), vec3<i32>(-45274i, -arg_0.c, arg_1.c | 68222i)), vec3<i32>(-_wgslsmith_mult_i32(2147483647i, var_0.x), select(_wgslsmith_dot_vec2_i32(var_0.yx, var_0.zy), -76918i ^ arg_0.c, !arg_0.b.x), select(arg_0.c, 28240i, true))));
    var_0 = abs(-_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-2147483647i, -30884i, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.c, arg_0.c, arg_1.c), vec3<i32>(-2147483647i, var_0.x, arg_1.c), vec3<i32>(-2147483647i, -27312i, -2147483647i))) >> (vec3<u32>(1u, arg_0.a, _wgslsmith_mod_u32(1u, arg_0.a)) % vec3<u32>(32u)));
    var var_1 = u_input.a;
    var var_2 = min(-vec3<i32>(min(-1i | var_0.x, select(arg_1.c, -36596i, true)), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.c, -5264i, var_0.x, var_0.x), vec4<i32>(48525i, 7419i, arg_0.c, 1i) << (vec4<u32>(arg_0.a, 79612u, 101735u, arg_1.a) % vec4<u32>(32u))), _wgslsmith_sub_i32(var_0.x, 1i)), vec3<i32>(min(-2147483647i, min(-2147483647i, 27828i) ^ ~arg_1.c), 38596i, u_input.a));
    return true;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: i32) -> vec3<u32> {
    let var_0 = vec4<f32>(558f, -1000f, -1147f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x - arg_1.x), arg_1.x)))));
    var var_1 = !all(select(vec3<bool>(true, func_3(Struct_3(30163u, vec4<bool>(false, true, true, false), u_input.a, Struct_1(arg_2.x), Struct_2(-1000f)), Struct_3(0u, arg_0, arg_3, Struct_1(var_0.x), Struct_2(-353f))), true), select(!vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, false, arg_0.x), arg_0.xzw), arg_0.www), func_3(Struct_3(1u, vec4<bool>(arg_0.x, false, arg_0.x, false), 0i, Struct_1(arg_2.x), Struct_2(var_0.x)), Struct_3(43882u, vec4<bool>(false, false, arg_0.x, true), -9915i, Struct_1(arg_1.x), Struct_2(-307f)))));
    var var_2 = false;
    let var_3 = arg_0.x;
    var var_4 = !(!(!select(vec3<bool>(true, var_3, var_3), select(arg_0.yyw, vec3<bool>(true, true, false), arg_0.zzx), !arg_0.x)));
    return _wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 35509u), select(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(13411u, 4294967295u, 39224u), arg_0.yww)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, 67149u, 0u), _wgslsmith_add_u32(1u, 34596u), _wgslsmith_div_u32(64363u, 56697u)) & ~abs(vec3<u32>(4294967295u, 2602u, 59668u)), vec3<u32>(max(~4294967295u, 1u), firstTrailingBit(4294967295u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 122049u), vec2<u32>(0u, 1u)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, 47037u)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-430f, -250f)) + _wgslsmith_f_op_f32(arg_2.d.a + arg_3.a)) - -554f)));
    var var_1 = select(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.c, arg_1.a, -51132i, 0i), vec4<i32>(-2147483647i, u_input.a, arg_1.a, -1i)), 2147483647i, -33934i, 3892i)), -vec4<i32>(arg_2.c, _wgslsmith_dot_vec2_i32(-vec2<i32>(-43919i, 11472i), firstTrailingBit(vec2<i32>(-17296i, u_input.a))), 16253i, u_input.a | ~arg_2.c), !arg_2.b.x);
    let var_2 = any(select(arg_2.b.xy, arg_2.b.zw, !(var_0.x == arg_2.e.a) && arg_2.b.x));
    var var_3 = ~(~(~vec2<u32>(4294967295u, arg_1.b.x)));
    let var_4 = arg_2.b.zyx;
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: bool) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1492f))));
    let var_1 = select(arg_0.x, !(!arg_0.x), true);
    var var_2 = true;
    var_2 = true;
    var_2 = all(select(vec2<bool>(func_2(vec4<bool>(true, arg_0.x, false, arg_1), vec4<f32>(-125f, 579f, var_0.a, -857f), vec3<f32>(var_0.a, 865f, -1120f), u_input.a).x > 13303u, true), select(vec2<bool>(true, true), arg_0.wz, arg_0.x), vec2<bool>(false, true)));
    return arg_1;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> vec2<u32> {
    var var_0 = (vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(~vec2<i32>(-23143i, -1i), vec2<i32>(-21473i, -19784i))) >> (vec2<u32>(_wgslsmith_mult_u32(arg_2.a, reverseBits(4294967295u)), 45u) % vec2<u32>(32u));
    var_0 = _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, arg_0.c) | _wgslsmith_mult_vec2_i32(vec2<i32>(-7673i, arg_2.c), vec2<i32>(var_0.x, -13647i)), ~countOneBits(vec2<i32>(arg_2.c, var_0.x))), vec2<i32>(arg_0.c, arg_0.c));
    var var_1 = vec2<i32>(abs(arg_2.c), -13206i);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(arg_3)));
    var var_3 = func_5(vec4<bool>(all(select(vec2<bool>(true, arg_2.b.x), arg_2.b.yz, false != arg_2.b.x)), !(!select(arg_0.b.x, arg_0.b.x, false)), true || arg_2.b.x, !(!arg_0.b.x)), func_4(func_2(vec4<bool>(arg_0.d.a > arg_0.d.a, select(false, false, arg_2.b.x), arg_0.b.x, arg_0.b.x && true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.a, 1061f, -541f, -1212f) + vec4<f32>(var_2.a, 644f, 1000f, arg_3)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.a, -756f, 136f, -978f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.d.a, var_2.a, 545f)))), -1i), Struct_4(-var_1.x, vec2<u32>(arg_2.a ^ arg_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.a), vec2<u32>(0u, 0u)))), Struct_3(~(arg_0.a & arg_1), vec4<bool>(arg_0.b.x, any(vec2<bool>(false, arg_0.b.x)), false, !arg_2.b.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, -44972i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_1.x, -47193i), vec3<i32>(11227i, arg_0.c, u_input.a))), Struct_1(_wgslsmith_div_f32(-1000f, var_2.a)), var_2), arg_2.e));
    return firstLeadingBit(_wgslsmith_sub_vec2_u32(select(vec2<u32>(37396u, firstTrailingBit(arg_2.a)), (vec2<u32>(arg_0.a, arg_0.a) << (vec2<u32>(76684u, 79916u) % vec2<u32>(32u))) >> (vec2<u32>(47082u, 118927u) % vec2<u32>(32u)), vec2<bool>(true, arg_0.b.x)), ~(~abs(vec2<u32>(arg_0.a, arg_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(abs(~_wgslsmith_sub_vec2_u32(~vec2<u32>(48135u, 0u), func_1(Struct_3(0u, vec4<bool>(false, false, true, true), u_input.a, Struct_1(785f), Struct_2(451f)), 69847u, Struct_3(4294967295u, vec4<bool>(false, true, false, true), u_input.a, Struct_1(-372f), Struct_2(1479f)), -428f))), max(func_2(vec4<bool>(false, true, false, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(458f, 1000f, 1000f, -673f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(417f, -216f, 1037f)), 0i).xx << (func_1(Struct_3(4294967295u, vec4<bool>(false, false, true, true), 741i, Struct_1(1315f), Struct_2(-1000f)), firstTrailingBit(4294967295u), Struct_3(6548u, vec4<bool>(true, true, false, true), u_input.a, Struct_1(1326f), Struct_2(-1041f)), 1f) % vec2<u32>(32u)), select(~vec2<u32>(4294967295u, 11312u), vec2<u32>(1u, 1u), vec2<bool>(true, false)) << (~(~vec2<u32>(4108u, 0u)) % vec2<u32>(32u))));
    var_0 = _wgslsmith_mult_u32(abs(~4408u), abs(1u));
    let var_1 = max(~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(6201u, 46092u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 23125u, 71800u, 37280u), vec4<u32>(1u, 291u, 1335u, 4294967295u)), _wgslsmith_mod_u32(59284u, 19428u))), reverseBits(_wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(20903u, 562u), vec2<u32>(1894u, 65359u)), func_2(vec4<bool>(false, false, false, false), vec4<f32>(-1330f, 304f, 813f, 401f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-559f, 625f, 200f))), u_input.a).yx)));
    var_0 = firstTrailingBit(~4294967295u) ^ 8735u;
    var var_2 = 1i;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2714f) - _wgslsmith_f_op_f32(min(1066f, -492f))), -702f)) + _wgslsmith_f_op_f32(ceil(-142f))));
    var_0 = ~var_1.x;
    var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_3.a)), _wgslsmith_f_op_f32(max(809f, 775f)))) + var_3.a)), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, -73076i ^ u_input.a, _wgslsmith_add_i32(-21471i, 0i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, -2147483647i, -18067i), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(2147483647i, 1i, u_input.a)))));
}

