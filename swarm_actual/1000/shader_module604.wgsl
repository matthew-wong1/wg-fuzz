struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>) -> i32 {
    let var_0 = !arg_0.e;
    return -arg_1.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> vec3<i32> {
    let var_0 = arg_1;
    global0 = array<i32, 31>();
    return (u_input.a >> (vec3<u32>(~7237u >> (0u % 32u), 46280u, 4294967295u) % vec3<u32>(32u))) | max(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, arg_1.a.x, 0i), arg_1.a)), firstLeadingBit(vec3<i32>(0i, -2147483647i, -43133i) | arg_1.a)), (vec3<i32>(-1i) * -arg_1.a) >> (var_0.d % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = func_4(arg_0.b, Struct_1(vec3<i32>(_wgslsmith_sub_i32(arg_0.a.x ^ -2147483647i, -93855i), ~2147483647i, _wgslsmith_sub_i32(var_0.a.x & 0i, -2147483647i)), vec2<u32>(~1u, min(_wgslsmith_sub_u32(0u, u_input.c.x), arg_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1875f, 1406f, var_0.d.x) + vec3<f32>(var_0.d.x, 211f, var_0.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1876f, -867f, arg_0.d.x)))) * _wgslsmith_f_op_vec3_f32(-arg_0.d.xxz)), ~u_input.c), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.a.xy, vec2<i32>(u_input.a.x, -26301i)), ~vec2<i32>(func_3(Struct_3(vec2<bool>(true, true), Struct_1(vec3<i32>(var_0.a.x, var_0.a.x, var_0.c.x), u_input.c.xy, var_0.d.xyz, u_input.c), Struct_1(vec3<i32>(-1i, var_0.c.x, var_0.c.x), vec2<u32>(4294967295u, 0u), vec3<f32>(-871f, 1283f, arg_0.d.x), vec3<u32>(107119u, 1537u, 4294967295u)), Struct_1(vec3<i32>(arg_0.a.x, -32847i, 41146i), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-527f, -306f, arg_0.d.x), u_input.c), vec3<bool>(true, false, false)), vec2<i32>(-20249i, -2147483647i)), 1i)), all(vec4<bool>(true, false, (arg_0.d.x < 1257f) | true, all(vec2<bool>(true, true)))));
    global0 = array<i32, 31>();
    let var_2 = Struct_3(vec2<bool>(u_input.a.x <= -arg_0.a.x, any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), Struct_1(abs(var_0.c), _wgslsmith_add_vec2_u32(u_input.c.xz, vec2<u32>(1u, ~u_input.c.x)), var_0.d.xwz, ~(~vec3<u32>(0u, u_input.c.x, u_input.c.x))), Struct_1(firstLeadingBit(u_input.a), _wgslsmith_sub_vec2_u32(u_input.c.yy, abs(u_input.c.xy)) | ~(~u_input.c.yx), vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x - var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - var_0.d.x)), _wgslsmith_f_op_f32(select(249f, -694f, false))), ~u_input.c), Struct_1(vec3<i32>(~(arg_0.a.x ^ u_input.a.x), max(arg_0.a.x, func_3(Struct_3(vec2<bool>(false, false), Struct_1(var_1, u_input.c.yy, var_0.d.zzy, vec3<u32>(u_input.c.x, 4294967295u, var_0.b)), Struct_1(var_1, vec2<u32>(5000u, u_input.b), vec3<f32>(171f, -637f, -960f), vec3<u32>(var_0.b, 4294967295u, arg_0.b)), Struct_1(vec3<i32>(var_1.x, global0[_wgslsmith_index_u32(25526u, 31u)], 26018i), u_input.c.yx, arg_0.d.wyz, vec3<u32>(4294967295u, 56517u, 0u)), vec3<bool>(false, false, false)), vec2<i32>(2147483647i, -1i))), _wgslsmith_mod_i32(firstLeadingBit(var_1.x), abs(2147483647i))), u_input.c.xx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, arg_0.d.x, 305f) - vec3<f32>(arg_0.d.x, 667f, arg_0.d.x)))), vec3<u32>((var_0.b ^ u_input.c.x) & ~var_0.b, ~(~var_0.b), (67815u ^ arg_0.b) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0.b), vec3<u32>(arg_0.b, 6912u, var_0.b)) % 32u))), !select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, true, true)));
    var var_3 = Struct_1(u_input.a & (reverseBits(vec3<i32>(var_0.c.x, var_1.x, -2147483647i)) >> (_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(0u, 20800u, var_0.b)), var_2.d.d | u_input.c) % vec3<u32>(32u))), vec2<u32>(var_2.c.d.x ^ ~(~0u), var_0.b), var_0.d.yyw, select(vec3<u32>(11114u, 4294967295u, u_input.b) | _wgslsmith_div_vec3_u32(vec3<u32>(var_2.c.b.x, var_0.b, u_input.c.x), var_2.b.d), vec3<u32>(var_2.b.b.x, min(18086u, 44467u), 4294967295u), !vec3<bool>(var_2.a.x, false, true)) & select(~u_input.c, _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(var_0.b, 14889u, arg_0.b)), ~vec3<u32>(var_2.d.d.x, u_input.b, arg_0.b)), !var_2.e.x));
    return Struct_3(!var_2.a, Struct_1(~(~(~vec3<i32>(u_input.a.x, var_3.a.x, 0i))), var_2.b.d.yz ^ max(var_3.d.xx, firstTrailingBit(vec2<u32>(46328u, var_2.d.b.x))), var_0.d.wyw, vec3<u32>(_wgslsmith_div_u32(~1u, ~69537u), 20205u, ~(~23903u))), var_2.b, var_2.c, var_2.e);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.c.xy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.c.c.xx)))), !func_2(Struct_2(vec2<i32>(1i, -15894i), 4294967295u, u_input.a, vec4<f32>(arg_1.c.c.x, arg_1.c.c.x, arg_1.d.c.x, arg_1.c.c.x))).a)));
    return func_2(Struct_2(vec2<i32>(-u_input.a.x, 1i >> (abs(u_input.c.x) % 32u)), arg_1.b.d.x, -(~arg_1.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1262f, 471f, -1712f, arg_1.b.c.x), vec4<f32>(arg_1.c.c.x, arg_1.b.c.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.c.x, var_0.x, arg_1.d.c.x, 2008f)))))).e.zy;
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-987f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f + _wgslsmith_f_op_f32(select(-126f, -1000f, true))))) - -240f);
    let var_1 = Struct_3(func_5(u_input.c.yz, func_2(Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), ~u_input.b, ~arg_0.xxy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(869f, -1341f, 824f, 229f))))), func_2(Struct_2(func_4(_wgslsmith_add_u32(16640u, u_input.c.x), func_2(Struct_2(arg_0.xw, u_input.b, vec3<i32>(arg_0.x, u_input.a.x, 0i), vec4<f32>(1455f, 2013f, 2187f, var_0))).d, _wgslsmith_clamp_vec2_i32(vec2<i32>(2838i, arg_0.x), vec2<i32>(arg_0.x, arg_0.x), arg_0.zz), any(vec3<bool>(false, true, true))).yx, min(u_input.c.x | u_input.b, u_input.c.x | u_input.b), ~arg_0.zzw, vec4<f32>(var_0, var_0, _wgslsmith_div_f32(-597f, var_0), _wgslsmith_f_op_f32(select(-411f, -1990f, false))))).c, func_2(Struct_2(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 31u)]) << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(u_input.b, 12512u)), arg_0.yyw, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1434f, 1305f, var_0, var_0))))))).d, Struct_1(-abs(max(u_input.a, arg_0.zyx)), min(vec2<u32>(71984u, 79771u), _wgslsmith_mult_vec2_u32(~vec2<u32>(21114u, u_input.b), _wgslsmith_mult_vec2_u32(u_input.c.zz, u_input.c.yz))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 1000f, -610f), vec3<f32>(var_0, var_0, 254f), vec3<bool>(true, true, false)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, var_0))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(513f, -834f, -1145f) + vec3<f32>(var_0, var_0, 595f)))), ~reverseBits(~vec3<u32>(0u, 1u, u_input.c.x))), select(vec3<bool>(any(vec3<bool>(true, true, true)), true, !all(vec4<bool>(true, false, true, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), !(!select(true, true, true))));
    let var_2 = var_1.e;
    return _wgslsmith_sub_i32(var_1.c.a.x, 9552i) | arg_0.x;
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = Struct_3(vec2<bool>(all(vec3<bool>(true, select(true, true, true), true)), false), func_2(Struct_2(func_4(arg_2.b.x, arg_2, arg_2.a.xx, any(vec4<bool>(false, false, true, true))).xz, ~(~u_input.b), ~func_2(Struct_2(arg_2.a.xy, arg_2.d.x, vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], -2147483647i, global0[_wgslsmith_index_u32(arg_2.d.x, 31u)]), vec4<f32>(arg_1.x, arg_1.x, arg_2.c.x, -489f))).b.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 219f)))))).d, func_2(Struct_2(~(~arg_0.zy), arg_2.b.x, arg_2.a << (firstLeadingBit(arg_2.d) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -170f, 1000f, -664f), vec4<f32>(arg_2.c.x, -1792f, arg_1.x, arg_2.c.x))))).b, arg_2, vec3<bool>(func_2(Struct_2(func_2(Struct_2(vec2<i32>(41840i, arg_0.x), 0u, u_input.a, vec4<f32>(-382f, arg_2.c.x, arg_1.x, 1184f))).b.a.xy, 62259u, arg_2.a, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, 2585f, arg_2.c.x, arg_1.x))))).e.x, true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false), true))));
    return StorageBuffer(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.d.x, ~arg_2.b.x, abs(3341u), 12447u), _wgslsmith_clamp_vec4_u32(vec4<u32>(89148u, u_input.c.x, var_0.c.b.x, 0u), vec4<u32>(66888u, 0u, var_0.b.b.x, 3821u), ~vec4<u32>(arg_2.b.x, var_0.c.d.x, arg_2.d.x, 4294967295u))), firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 7169u) ^ arg_2.d.yy, ~arg_2.b)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(vec3<i32>(-firstLeadingBit(-2147483647i), ~func_1(vec4<i32>(u_input.a.x, u_input.a.x, 27740i, u_input.a.x)), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1181f, _wgslsmith_f_op_f32(step(-439f, 1000f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -243f), 2044f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-508f, -1000f), _wgslsmith_f_op_f32(ceil(1495f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(832f)), -1006f)))), Struct_1(-u_input.a, ~min(vec2<u32>(33701u, u_input.c.x), reverseBits(u_input.c.zy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1276f, -993f, 686f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-640f, 439f, 1000f) * vec3<f32>(1000f, -1451f, -887f)))), ~u_input.c));
}

