struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = true;
    let var_1 = Struct_1(vec3<i32>(~(max(0i, u_input.b.x) | u_input.a.x), -34039i, _wgslsmith_add_i32(u_input.b.x, u_input.a.x & _wgslsmith_clamp_i32(2147483647i, u_input.a.x, u_input.b.x))), _wgslsmith_mod_vec3_u32(abs(abs(vec3<u32>(4294967295u, u_input.d.x, 100435u))) ^ min(u_input.d, u_input.d), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.e, 0u, u_input.c.x), vec3<u32>(_wgslsmith_sub_u32(86256u, u_input.e), 1u & u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(60425u, u_input.d.x, u_input.e, u_input.c.x), vec4<u32>(5075u, u_input.e, u_input.c.x, u_input.e))))));
    let var_2 = var_1.a.yx;
    var_0 = false || !(true && !all(vec3<bool>(false, false, false)));
    let var_3 = vec2<i32>(-5241i, _wgslsmith_div_i32(-2147483647i, ~(~71666i)));
    return 15315u;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = 1000f;
    let var_1 = Struct_1(u_input.b.yxz, vec3<u32>(~func_3(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true))), min(~arg_1, firstTrailingBit(u_input.c.x)), firstLeadingBit(~u_input.d.x) ^ select(_wgslsmith_sub_u32(arg_1, u_input.e), arg_1, false)));
    var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(sign(arg_0.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))))))));
    return abs(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(4294967295u, 0u, 3793u, 1u), vec4<u32>(4294967295u, 1u, 48750u, var_1.b.x), vec4<bool>(false, true, false, false)) & ~reverseBits(vec4<u32>(1u, u_input.e, arg_1, 0u)), reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 21816u, u_input.c.x, u_input.c.x), vec4<u32>(arg_1, 4294967295u, 1u, 26625u)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_vec2_i32(arg_2.a.yy | _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.b.x, arg_2.a.x), arg_2.a.x), arg_0.a.zz), -(~arg_0.a.xz), vec2<i32>(-1i, -11075i));
    var var_1 = arg_1;
    let var_2 = u_input.b ^ min(u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(9517i, 1i, arg_0.a.x, 28973i) << (func_2(vec3<f32>(var_1.x, -351f, -651f), arg_2.b.x, arg_2.a.yz) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(u_input.b | vec4<i32>(arg_2.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_0.a.x, arg_2.a.x, arg_0.a.x, -2147483647i) ^ u_input.b), u_input.b));
    var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), 294f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(abs(arg_1)), all(vec3<bool>(true, true, true)))))))));
    var var_3 = vec4<u32>(0u, reverseBits(22228u), 1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(2435u, 1u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(22679u, 42800u), arg_2.b.x), u_input.e)));
    return select(select(select(vec2<bool>(false, arg_3), !(!vec2<bool>(arg_3, arg_3)), vec2<bool>(true, true)), select(select(!vec2<bool>(false, arg_3), vec2<bool>(arg_3, true), true && arg_3), !select(vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3), vec2<bool>(false, false)), any(vec3<bool>(false, arg_3, arg_3))), select(!select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, arg_3), vec2<bool>(true, true)), select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, true), select(vec2<bool>(arg_3, false), vec2<bool>(true, true), vec2<bool>(true, arg_3))), select(!vec2<bool>(arg_3, arg_3), vec2<bool>(true, true), !arg_3))), select(!vec2<bool>(true || arg_3, arg_3), select(vec2<bool>(false, true), !(!vec2<bool>(false, arg_3)), !all(vec3<bool>(arg_3, false, arg_3))), vec2<bool>(!arg_3 & arg_3, !arg_3)), any(vec4<bool>(!(arg_3 && arg_3), !arg_3, arg_3, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = !vec2<bool>(true, arg_0.x);
    var_0 = vec2<bool>(true, true);
    var_0 = arg_0.wx;
    var_0 = !select(select(arg_0.zw, vec2<bool>(arg_1.a.a.x != arg_2.a.a.x, true), arg_1.d), !(!select(vec2<bool>(false, var_0.x), vec2<bool>(true, false), arg_0.zz)), select(arg_0.xz, arg_0.yy, all(vec4<bool>(var_0.x, arg_2.d, true, false))));
    var var_1 = Struct_1(reverseBits(_wgslsmith_add_vec3_i32(select(vec3<i32>(55215i, 0i, arg_3.a.x), arg_2.b.a, var_0.x), abs(arg_1.a.a)) >> (vec3<u32>(~u_input.c.x, firstLeadingBit(1u), 1u) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_mod_u32(~13725u, _wgslsmith_mod_u32(arg_1.c, arg_1.a.b.x)), 0u, u_input.d.x));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    var var_1 = func_4(select(vec4<bool>(true, true, all(func_1(Struct_1(u_input.b.zzw, u_input.d), vec2<f32>(-2049f, -877f), Struct_1(u_input.b.yzx, vec3<u32>(u_input.d.x, 4294967295u, 24399u)), true)), true), vec4<bool>(true, u_input.b.x != _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 22005i, u_input.a.x), u_input.b.zyw), true, true), true), Struct_2(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(44978i, 41615i, 0i), vec3<i32>(u_input.b.x, 0i, u_input.b.x)) >> (~vec3<u32>(u_input.e, u_input.e, u_input.e) % vec3<u32>(32u)), u_input.d >> (u_input.d % vec3<u32>(32u))), Struct_1(vec3<i32>(-1i, 12139i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), min(u_input.d, ~vec3<u32>(u_input.c.x, 39989u, u_input.d.x))), 7235u, true), Struct_2(Struct_1(select(-u_input.b.xww, u_input.b.xzw & u_input.b.wzy, vec3<bool>(true, true, true)), vec3<u32>(~u_input.d.x, 4294967295u << (u_input.d.x % 32u), u_input.d.x)), Struct_1(reverseBits(abs(u_input.b.www)), ~u_input.d), _wgslsmith_mult_u32(~reverseBits(0u), min(u_input.d.x, u_input.e)), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false))), Struct_1(_wgslsmith_sub_vec3_i32(select(-vec3<i32>(u_input.b.x, 19853i, u_input.b.x), select(u_input.b.wxy, vec3<i32>(53934i, u_input.a.x, -3628i), false), select(false, true, true)), ~select(vec3<i32>(1i, 2147483647i, 3528i), u_input.b.wyz, true)), ~(~(~u_input.d))));
    var var_2 = -940f;
    let var_3 = Struct_2(func_4(!vec4<bool>(!var_1.d, !var_1.d, var_1.d & false, func_1(Struct_1(var_1.b.a, vec3<u32>(47581u, var_1.a.b.x, u_input.c.x)), vec2<f32>(987f, -184f), var_1.a, true).x), func_4(!vec4<bool>(true, false, var_1.d, true), Struct_2(var_1.a, func_4(vec4<bool>(var_1.d, false, false, false), Struct_2(Struct_1(var_1.a.a, vec3<u32>(4294967295u, var_1.a.b.x, 54397u)), Struct_1(vec3<i32>(-2147483647i, 25281i, u_input.a.x), vec3<u32>(4294967295u, 74438u, u_input.e)), u_input.c.x, true), Struct_2(var_1.a, Struct_1(var_1.a.a, vec3<u32>(u_input.d.x, 40705u, 1u)), 4294967295u, var_1.d), var_1.a).a, 0u, var_1.d), Struct_2(Struct_1(var_1.b.a, vec3<u32>(var_1.a.b.x, 11464u, 24803u)), var_1.b, ~u_input.c.x, func_1(var_1.a, vec2<f32>(293f, -231f), Struct_1(vec3<i32>(50026i, var_1.b.a.x, var_1.b.a.x), vec3<u32>(u_input.e, 11835u, u_input.d.x)), true).x), Struct_1(func_4(vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec3<i32>(var_1.b.a.x, 1i, -31715i), var_1.a.b), Struct_1(vec3<i32>(var_1.a.a.x, var_1.a.a.x, 2147483647i), u_input.d), 62618u, true), Struct_2(Struct_1(u_input.b.yyz, vec3<u32>(var_1.c, var_1.a.b.x, 0u)), var_1.a, 1u, var_1.d), Struct_1(var_1.b.a, vec3<u32>(var_1.c, u_input.e, 4294967295u))).a.a, ~u_input.d)), func_4(vec4<bool>(var_1.d, var_1.d, true, any(vec3<bool>(true, var_1.d, var_1.d))), Struct_2(Struct_1(u_input.b.yxx, vec3<u32>(var_1.c, var_1.b.b.x, 895u)), func_4(vec4<bool>(var_1.d, false, true, false), Struct_2(var_1.b, var_1.b, 1u, var_1.d), Struct_2(var_1.b, Struct_1(vec3<i32>(var_1.a.a.x, var_1.b.a.x, u_input.b.x), vec3<u32>(u_input.e, u_input.e, var_1.b.b.x)), var_1.a.b.x, var_1.d), Struct_1(var_1.a.a, var_1.b.b)).b, ~u_input.c.x, false), func_4(!vec4<bool>(false, var_1.d, false, var_1.d), Struct_2(Struct_1(u_input.b.xzy, vec3<u32>(4294967295u, 0u, var_1.c)), var_1.b, var_1.c, var_1.d), func_4(vec4<bool>(true, var_1.d, true, var_1.d), Struct_2(Struct_1(vec3<i32>(var_1.b.a.x, u_input.b.x, 13688i), vec3<u32>(3632u, 0u, 1u)), Struct_1(vec3<i32>(-23535i, 1i, 2147483647i), var_1.a.b), var_1.b.b.x, false), Struct_2(Struct_1(u_input.b.zww, vec3<u32>(var_1.c, 78276u, u_input.e)), var_1.a, 1u, var_1.d), var_1.a), var_1.a), Struct_1(firstLeadingBit(var_1.b.a), firstLeadingBit(vec3<u32>(u_input.e, 0u, 1u)))), func_4(vec4<bool>(var_1.c >= var_1.b.b.x, var_1.d, var_1.d, false), Struct_2(var_1.b, func_4(vec4<bool>(var_1.d, var_1.d, var_1.d, var_1.d), Struct_2(var_1.b, var_1.b, u_input.c.x, var_1.d), Struct_2(var_1.b, var_1.b, 40370u, false), Struct_1(vec3<i32>(-17232i, u_input.b.x, u_input.a.x), vec3<u32>(var_1.a.b.x, u_input.d.x, 10907u))).a, var_1.b.b.x, false), func_4(vec4<bool>(var_1.d, var_1.d, true, false), func_4(vec4<bool>(true, var_1.d, var_1.d, true), Struct_2(Struct_1(u_input.b.zwy, vec3<u32>(u_input.c.x, 0u, var_1.a.b.x)), Struct_1(u_input.b.zxx, vec3<u32>(36177u, 1u, 18707u)), var_1.c, var_1.d), Struct_2(var_1.a, Struct_1(vec3<i32>(u_input.a.x, u_input.b.x, -5478i), var_1.b.b), 0u, false), Struct_1(var_1.b.a, u_input.d)), func_4(vec4<bool>(var_1.d, var_1.d, var_1.d, true), Struct_2(var_1.b, var_1.b, 0u, false), Struct_2(var_1.a, Struct_1(vec3<i32>(1i, 0i, u_input.a.x), u_input.d), var_1.a.b.x, true), Struct_1(vec3<i32>(u_input.b.x, 0i, -39221i), var_1.b.b)), func_4(vec4<bool>(true, var_1.d, var_1.d, false), Struct_2(var_1.a, var_1.a, var_1.a.b.x, var_1.d), Struct_2(Struct_1(u_input.b.xwz, var_1.a.b), Struct_1(u_input.b.wyx, var_1.a.b), u_input.d.x, var_1.d), Struct_1(var_1.a.a, u_input.d)).b), func_4(vec4<bool>(var_1.d, true, true, false), func_4(vec4<bool>(var_1.d, var_1.d, var_1.d, false), Struct_2(var_1.a, Struct_1(vec3<i32>(var_1.b.a.x, u_input.b.x, 2147483647i), var_1.a.b), 1u, true), Struct_2(var_1.a, Struct_1(u_input.b.yyz, var_1.b.b), 0u, var_1.d), Struct_1(vec3<i32>(var_1.b.a.x, u_input.b.x, var_1.b.a.x), vec3<u32>(14383u, var_1.c, u_input.d.x))), Struct_2(var_1.b, Struct_1(u_input.b.zxx, vec3<u32>(0u, var_1.a.b.x, var_1.c)), 41042u, false), Struct_1(vec3<i32>(var_1.a.a.x, var_1.a.a.x, var_1.b.a.x), var_1.a.b)).a).b).a, func_4(vec4<bool>(var_1.d, var_1.d, false, (var_1.d && false) | false), Struct_2(var_1.b, func_4(vec4<bool>(false, var_1.d, false, var_1.d), Struct_2(Struct_1(vec3<i32>(2204i, u_input.b.x, u_input.a.x), var_1.b.b), var_1.a, var_1.c, var_1.d), Struct_2(var_1.b, var_1.a, u_input.d.x, var_1.d), Struct_1(var_1.a.a, var_1.a.b)).b, abs(~var_1.a.b.x), var_1.d), func_4(select(vec4<bool>(true, var_1.d, var_1.d, true), select(vec4<bool>(var_1.d, true, var_1.d, true), vec4<bool>(true, var_1.d, true, false), var_1.d), any(vec3<bool>(false, var_1.d, var_1.d))), func_4(vec4<bool>(false, var_1.d, true, false), Struct_2(var_1.a, Struct_1(vec3<i32>(var_1.a.a.x, -32775i, 0i), vec3<u32>(u_input.e, var_1.c, var_1.a.b.x)), 0u, true), Struct_2(var_1.b, Struct_1(u_input.b.wzw, u_input.d), var_1.b.b.x, var_1.d), Struct_1(vec3<i32>(0i, u_input.b.x, 3284i), var_1.a.b)), func_4(!vec4<bool>(true, var_1.d, var_1.d, false), func_4(vec4<bool>(var_1.d, true, false, var_1.d), Struct_2(Struct_1(u_input.b.wzw, var_1.b.b), var_1.b, 0u, true), Struct_2(Struct_1(var_1.a.a, var_1.a.b), Struct_1(vec3<i32>(-40406i, 2147483647i, var_1.a.a.x), vec3<u32>(15524u, 4865u, u_input.d.x)), 29371u, var_1.d), Struct_1(u_input.b.wyz, u_input.d)), Struct_2(var_1.b, Struct_1(u_input.b.zzw, u_input.d), u_input.c.x, true), Struct_1(u_input.b.xww, vec3<u32>(var_1.b.b.x, 6109u, 4294967295u))), var_1.a), var_1.a).b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_clamp_u32(4294967295u, u_input.c.x, 0u)), func_4(vec4<bool>(false, var_1.d, false, var_1.d), Struct_2(var_1.b, var_1.b, var_1.a.b.x, false), Struct_2(Struct_1(var_1.a.a, vec3<u32>(var_1.b.b.x, 4294967295u, 50356u)), Struct_1(vec3<i32>(3531i, var_1.b.a.x, u_input.a.x), vec3<u32>(var_1.a.b.x, 45010u, 1u)), var_1.a.b.x, true), Struct_1(var_1.b.a, u_input.d)).a.b.x), var_1.b.b.x), false);
    let var_4 = _wgslsmith_f_op_f32(-571f * 1000f);
    var_0 = ~(~firstTrailingBit(~_wgslsmith_mult_u32(4294967295u, 1u)));
    let var_5 = 0i;
    var var_6 = Struct_1(~u_input.b.wyz, u_input.d);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(614f * _wgslsmith_f_op_f32(trunc(1232f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4))))) + var_4);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(vec4<u32>(var_3.b.b.x, 42740u, 0u, u_input.d.x) >> (vec4<u32>(1u, var_3.c, var_6.b.x, 4294967295u) % vec4<u32>(32u)))), u_input.d.xy, firstLeadingBit(u_input.b.x), -764f);
}

