struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_1(u_input.c.zz, arg_2.x);
    global0 = array<Struct_4, 10>();
    global0 = array<Struct_4, 10>();
    global0 = array<Struct_4, 10>();
    var var_1 = ~min(u_input.d >> (var_0.a.x % 32u), 0u);
    return select(!(!select(!vec4<bool>(var_0.b, true, false, arg_2.x), select(vec4<bool>(true, var_0.b, arg_2.x, true), vec4<bool>(false, false, false, var_0.b), false), !arg_2.x)), select(vec4<bool>(false, (var_0.b | false) != false, true, arg_2.x), !vec4<bool>(true, select(false, var_0.b, arg_2.x), select(true, false, arg_2.x), var_0.b), arg_2.x), vec4<bool>(var_0.b, all(!(!arg_2.wx)), false, var_0.b));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = select(!select(func_3(vec2<f32>(232f, 1000f), Struct_3(vec4<i32>(u_input.a, arg_0.b.x, arg_0.b.x, 0i)), vec4<bool>(arg_1.x, arg_1.x, false, false)), vec4<bool>(arg_1.x, false, !arg_1.x, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), false)), !(!vec4<bool>(true, arg_1.x, true, true)), !(!(arg_0.a.x > 22978u)) & !any(select(vec3<bool>(false, true, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x), arg_1.x)));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_u32(firstLeadingBit(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, arg_0.a.x), u_input.c.xx, arg_1), arg_0.a.wy, arg_0.a.wx)), arg_0.a.xy), false);
    var_0 = !(!select(vec4<bool>(arg_1.x, var_1.b, arg_1.x, select(false, true, var_0.x)), !vec4<bool>(true, false, false, arg_1.x), true & !arg_1.x));
    let var_2 = Struct_1(vec2<u32>(1u, _wgslsmith_add_u32(_wgslsmith_div_u32(42189u, arg_0.a.x), ~67538u) >> (reverseBits(~0u) % 32u)), true);
    var var_3 = Struct_2(var_2);
    return Struct_1(~firstTrailingBit(u_input.c.yy), all(!select(select(vec4<bool>(false, arg_1.x, true, var_3.a.b), vec4<bool>(var_2.b, arg_1.x, var_0.x, var_0.x), var_1.b), vec4<bool>(var_0.x, var_2.b, false, var_0.x), !vec4<bool>(arg_1.x, false, arg_1.x, false))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_4, 10>();
    let var_0 = ~arg_1.a.yyz;
    global0 = array<Struct_4, 10>();
    let var_1 = 1704f;
    var var_2 = Struct_4(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, u_input.c.x, arg_0.a.a.x, 25618u) >> (min(~vec4<u32>(u_input.d, 24069u, 0u, arg_0.a.a.x), vec4<u32>(u_input.c.x, 50149u, arg_0.a.a.x, arg_0.a.a.x) << (vec4<u32>(0u, u_input.c.x, 4294967295u, arg_0.a.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_0.a.a.x, ~u_input.c.x, 4294967295u | arg_0.a.a.x, ~u_input.c.x), ~firstLeadingBit(vec4<u32>(u_input.c.x, arg_0.a.a.x, 58994u, 104743u)))), vec4<i32>(abs(arg_1.a.x), abs(max(45131i, min(u_input.b.x, var_0.x))), -45220i, (-2147483647i & min(12091i, u_input.a)) | -_wgslsmith_add_i32(arg_2.x, -29028i)));
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    return func_4(Struct_2(func_4(Struct_2(func_4(Struct_2(arg_0), Struct_3(vec4<i32>(0i, u_input.b.x, 1i, -2527i)), vec2<i32>(-2147483647i, u_input.a))), Struct_3(min(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, -42715i, u_input.a))), max(firstTrailingBit(u_input.b), ~u_input.b))), Struct_3(~(~reverseBits(vec4<i32>(0i, u_input.b.x, -1i, u_input.b.x)))), (select(u_input.b, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), vec2<i32>(u_input.b.x, -49144i)), !arg_0.b) | (countOneBits(u_input.b) | abs(vec2<i32>(u_input.b.x, u_input.a)))) >> (abs(arg_0.a) % vec2<u32>(32u)));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(func_5(func_4(Struct_2(func_2(Struct_4(vec4<u32>(20938u, 1u, 16218u, 4294967295u), vec4<i32>(u_input.a, 2147483647i, u_input.b.x, u_input.a)), vec2<bool>(true, true), u_input.c.x)), Struct_3(vec4<i32>(2147483647i, u_input.a, u_input.b.x, u_input.a)), vec2<i32>(2147483647i ^ u_input.a, u_input.b.x)), u_input.c.yy ^ (u_input.c.zy >> (~vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)))));
    var var_1 = ~u_input.d;
    let var_2 = !(!vec3<bool>(var_0.a.b, !all(vec3<bool>(false, var_0.a.b, var_0.a.b)), true));
    var_0 = Struct_2(Struct_1(var_0.a.a, true));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -995f)), -966f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -468f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1125f + -286f) + _wgslsmith_f_op_f32(step(-833f, -196f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-112f)) * _wgslsmith_f_op_f32(f32(-1f) * -849f)), 687f)));
    let var_1 = Struct_4(~vec4<u32>(u_input.c.x, firstLeadingBit(max(1989u, u_input.c.x)), u_input.d, u_input.d), -firstTrailingBit(-vec4<i32>(5122i, u_input.a, -12380i, u_input.a) | abs(vec4<i32>(-20374i, u_input.a, u_input.b.x, u_input.b.x))));
    let var_2 = Struct_4(countOneBits(_wgslsmith_div_vec4_u32(var_1.a, var_1.a ^ ~var_1.a)), firstLeadingBit(~var_1.b));
    var var_3 = -(~countOneBits(max(vec3<i32>(49842i, var_2.b.x, var_1.b.x), vec3<i32>(var_2.b.x, 3418i, 0i))) << (var_1.a.xxy % vec3<u32>(32u)));
    var var_4 = var_1.b.x;
    var_3 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(-7334i, var_1.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_2.b.wxy, var_1.b.xyy), var_1.b.xyz)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a, 11326i) & 1i, u_input.b.x, 1i << (0u % 32u)), -_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 12076i, -43425i), vec3<i32>(0i, 18323i, var_3.x)) | vec3<i32>(var_3.x, -var_2.b.x, var_2.b.x)), firstTrailingBit(~_wgslsmith_mod_vec3_i32(min(var_2.b.wxw, var_2.b.zzw), var_1.b.wxx)));
    let var_5 = -1i;
    let var_6 = func_5(Struct_1(func_2(var_2, vec2<bool>(true, true), 1u).a, true), vec2<u32>(var_2.a.x << (4294967295u % 32u), var_1.a.x | ~(~4294967295u)));
    var var_7 = _wgslsmith_div_u32(62975u, u_input.d) ^ 27648u;
    let x = u_input.a;
    s_output = StorageBuffer(960f);
}

