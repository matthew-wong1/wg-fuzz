struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 536f;

var<private> global1: bool = false;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> bool {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-211f, arg_0.a.b, arg_0.d, -310f), vec4<f32>(arg_0.d, arg_0.a.b, arg_0.a.a, arg_0.a.b))) + vec4<f32>(-665f, arg_0.b, arg_0.d, arg_0.a.a)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, -1278f, arg_0.a.b, 504f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.d, arg_0.a.a, arg_0.a.a, arg_0.a.b))))))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.a.b))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), vec3<u32>(arg_0.a.c.x, _wgslsmith_dot_vec2_u32(arg_0.a.c.yx >> (vec2<u32>(u_input.c.x, u_input.a) % vec2<u32>(32u)), u_input.c.yz & arg_0.a.c.yz), reverseBits(16299u >> (u_input.a % 32u)))), Struct_1(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(147f)))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.c.x, 4294967295u, 6959u), arg_0.a.c | arg_0.a.c, vec3<u32>(20537u, 1u, u_input.c.x)), arg_0.a.c)));
    let var_3 = Struct_2(var_2.b, arg_0.a);
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a.b, var_3.b.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = 58790u;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1830f) * 166f), -1249f, ~vec3<u32>(~(arg_2.x & arg_2.x), 10135u, firstLeadingBit(arg_2.x)));
    let var_2 = false;
    let var_3 = arg_2.x;
    var var_4 = all(!vec4<bool>(func_3(Struct_4(Struct_1(var_1.a, var_1.a, arg_2), var_1.a, vec4<i32>(u_input.b, 3255i, u_input.b, -3992i), var_1.b), u_input.b), any(vec4<bool>(true, false, var_2, false)), !any(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), !any(vec4<bool>(arg_1.x, arg_1.x, true, var_2))));
    return Struct_1(-1485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a))))), abs(var_1.c));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(func_2(_wgslsmith_mult_vec2_u32(u_input.c.wz, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 55052u)) << (vec2<u32>(56681u, u_input.a) % vec2<u32>(32u))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), all(vec3<bool>(true, true, true))), u_input.c.wzx, ~_wgslsmith_clamp_i32(1i, -2147483647i, u_input.b) ^ u_input.b), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(3410f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-883f)), _wgslsmith_f_op_f32(f32(-1f) * -398f)))))), vec4<i32>(u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b, -_wgslsmith_mult_i32(-u_input.b, firstTrailingBit(u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f, true))))));
    var var_1 = func_2(~countOneBits(~vec2<u32>(var_0.a.c.x, u_input.c.x) >> (select(var_0.a.c.xz, var_0.a.c.xx, vec2<bool>(false, true)) % vec2<u32>(32u))), select(vec2<bool>(false, all(vec3<bool>(true, true, true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(true, true)), vec3<u32>(_wgslsmith_mult_u32(func_2(select(u_input.c.wz, var_0.a.c.zz, vec2<bool>(false, true)), vec2<bool>(true, false), abs(var_0.a.c), min(var_0.c.x, 5468i)).c.x, max(_wgslsmith_dot_vec3_u32(var_0.a.c, vec3<u32>(var_0.a.c.x, 6201u, 0u)), u_input.c.x)), 4294967295u, ~firstTrailingBit(var_0.a.c.x)), -44996i);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1345f, 1401f) + var_0.b) + -1349f), max(var_0.a.c, ~u_input.c.zyw));
    global0 = var_1.a;
    let var_2 = ~_wgslsmith_mod_vec2_u32(u_input.c.yz, reverseBits(~vec2<u32>(0u, 25630u) ^ vec2<u32>(var_1.c.x, var_1.c.x)));
    return Struct_2(Struct_1(_wgslsmith_div_f32(-577f, -156f), var_0.a.a, var_0.a.c), var_0.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    global0 = -270f;
    var var_0 = arg_3.b;
    let var_1 = arg_2;
    var var_2 = func_1().a;
    let var_3 = arg_1.a.x;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(~u_input.a >= min(u_input.a, _wgslsmith_mult_u32(min(62669u, u_input.a), 4294967295u)));
    var var_0 = Struct_3(vec2<f32>(267f, 371f), func_4(vec4<u32>(u_input.a, u_input.c.x, ~33132u, 17169u), Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, 1120f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-821f, 773f)))), func_1()), vec4<i32>(~(-u_input.b), ~(-27541i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-23979i, 6429i, u_input.b), vec3<i32>(u_input.b, u_input.b, -31095i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.b, -1i, 26441i))), ~(-2147483647i)), Struct_2(func_1().a, func_1().a)));
    var var_1 = u_input.b ^ _wgslsmith_clamp_i32(u_input.b, countOneBits(0i), -u_input.b & u_input.b);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), func_4(~countOneBits(u_input.c), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * var_0.a), Struct_2(var_0.b.a, Struct_1(-1008f, -1034f, var_0.b.b.c))), -(vec4<i32>(0i, -17840i, -36304i, u_input.b) | vec4<i32>(0i, -2147483647i, u_input.b, u_input.b)) ^ ((vec4<i32>(-2147483647i, 10765i, 46526i, -9559i) | vec4<i32>(12979i, -683i, u_input.b, 1357i)) ^ vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), var_0.b));
    var var_3 = Struct_2(Struct_1(var_2.a.x, 570f, vec3<u32>(31426u | var_0.b.b.c.x, ~97327u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.b.b.c.x, var_2.b.a.c.x, u_input.c.x), vec4<u32>(0u, 67082u, 0u, var_2.b.a.c.x))) << (~vec3<u32>(84549u, 54867u, 34123u) % vec3<u32>(32u))), func_4(u_input.c, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.b.a.a))), Struct_2(func_2(var_0.b.a.c.yy, vec2<bool>(true, true), u_input.c.zzx, -3595i), Struct_1(var_2.a.x, 334f, u_input.c.ywz))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 25646i, u_input.b, u_input.b), vec4<i32>(1i, u_input.b, -2147483647i, -4285i)) | -vec4<i32>(u_input.b, 23936i, u_input.b, 10524i), firstLeadingBit(max(vec4<i32>(u_input.b, 1i, -1i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -23214i))), any(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(var_0.b.a.a)), _wgslsmith_f_op_f32(-var_2.b.b.a), _wgslsmith_mod_vec3_u32(var_0.b.b.c, vec3<u32>(var_0.b.b.c.x, 4294967295u, var_0.b.b.c.x))), var_0.b.b)).b);
    let x = u_input.a;
    s_output = StorageBuffer(-((select(u_input.b, 1i, false) << (func_2(var_0.b.b.c.yx, vec2<bool>(true, true), vec3<u32>(var_3.b.c.x, u_input.a, var_2.b.b.c.x), u_input.b).c.x % 32u)) >> (~min(13113u, 7107u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1862f, var_0.a.x, var_2.b.b.b), vec3<f32>(var_2.b.a.b, 550f, var_2.a.x)))))), u_input.b);
}

