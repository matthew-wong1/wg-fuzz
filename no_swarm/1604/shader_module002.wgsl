struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = countOneBits(arg_0.x);
    var_0 = _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(arg_0.x, u_input.c.x));
    let var_1 = _wgslsmith_mod_i32(u_input.c.x, arg_2.b.x & -1i);
    var var_2 = arg_2.c;
    var var_3 = firstTrailingBit(38716u);
    return select(select(vec4<bool>((true & arg_2.d.x) || !arg_2.d.x, true, all(arg_2.d), arg_2.d.x), !vec4<bool>(arg_2.d.x, any(vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x, false)), 917u <= arg_3.x, arg_2.d.x), true), select(select(vec4<bool>(u_input.b > 0u, !arg_2.d.x, arg_1 < arg_1, arg_2.d.x), vec4<bool>(arg_2.d.x, arg_2.d.x, true, select(arg_2.d.x, arg_2.d.x, arg_2.d.x)), any(vec4<bool>(arg_2.d.x, true, false, false))), arg_2.d, arg_2.d.x), !(any(!vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x, arg_2.d.x)) | !arg_2.d.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32) -> vec2<i32> {
    let var_0 = Struct_2(vec4<bool>(all(vec3<bool>(arg_0.x, func_3(vec2<i32>(7338i, u_input.c.x), -514f, Struct_1(vec4<i32>(0i, 0i, u_input.c.x, u_input.c.x), vec2<i32>(-2147483647i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 6943i), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), 41070i), vec3<u32>(1u, u_input.b, 17453u)).x, true)), u_input.c.x > ~(u_input.c.x | 31674i), false, all(vec3<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), true, true))), Struct_1(~(vec4<i32>(u_input.c.x, 1i, u_input.c.x, 16720i) & vec4<i32>(u_input.c.x, 2147483647i, 0i, u_input.c.x)), u_input.c, -reverseBits(~vec4<i32>(-9127i, 7745i, -36666i, -1i)), arg_0, ~reverseBits(-2147483647i) << (firstTrailingBit(~33270u) % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(663f * 524f), _wgslsmith_div_f32(-1157f, -1267f), -1372f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-248f, -1461f, -1391f), vec3<f32>(1014f, 660f, 1665f), arg_0.xyy)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-929f * 669f)), 1435f, -343f), arg_0.yyw)), _wgslsmith_clamp_vec2_u32(select(reverseBits(select(u_input.a.wz, u_input.a.xy, true)), vec2<u32>(~arg_1, ~0u), !arg_0.wy), u_input.a.zw, vec2<u32>(0u, 31894u)), -7834i);
    var var_1 = !arg_0.yz;
    let var_2 = var_0.b.a.zyx;
    var var_3 = Struct_3(-(~_wgslsmith_mod_vec3_i32(var_0.b.a.xyy, -var_0.b.c.wyx)), 45767u, var_0, _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_0.b.a, var_0.b.a), ~var_0.b.a)), _wgslsmith_div_i32(0i, _wgslsmith_add_i32(-var_2.x, _wgslsmith_dot_vec2_i32(u_input.c, var_0.b.c.yx)))), !select(var_0.a, select(vec4<bool>(true, arg_0.x, var_1.x, var_1.x), select(var_0.a, arg_0, vec4<bool>(false, true, var_0.a.x, arg_0.x)), vec4<bool>(arg_0.x, true, var_1.x, arg_0.x)), var_0.b.d.x));
    var var_4 = var_0.c.x;
    return vec2<i32>(countOneBits(firstTrailingBit(-21519i)), countOneBits(var_3.a.x));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(-select(abs(vec4<i32>(u_input.c.x, 2147483647i, -64299i, 2147483647i) << (u_input.a % vec4<u32>(32u))), (vec4<i32>(u_input.c.x, 1i, -10254i, 0i) << (vec4<u32>(u_input.b, 34435u, 4294967295u, u_input.a.x) % vec4<u32>(32u))) ^ vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x), true), select(-u_input.c, ~func_4(func_3(u_input.c, 106f, Struct_1(vec4<i32>(u_input.c.x, 0i, -10088i, 15032i), u_input.c, vec4<i32>(u_input.c.x, -115i, -1i, -15429i), vec4<bool>(false, false, true, false), u_input.c.x), vec3<u32>(u_input.b, u_input.a.x, 1u)), u_input.a.x), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false)))), abs(vec4<i32>(u_input.c.x, -1i, abs(func_4(vec4<bool>(true, true, true, true), u_input.a.x).x), i32(-1i) * -58110i)), func_3(~vec2<i32>(-1i, ~u_input.c.x), 536f, Struct_1(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -69551i, 16333i), vec4<i32>(-19475i, -4401i, -2147483647i, 17705i))), vec2<i32>(firstLeadingBit(u_input.c.x), -3020i), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 1i, 62954i), vec4<i32>(u_input.c.x, u_input.c.x, 3300i, u_input.c.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), -u_input.c.x), vec3<u32>(0u, 1u, 568u)), ~u_input.c.x);
    var_0 = Struct_1(-vec4<i32>(var_0.a.x ^ -1i, 1095i, 1i, func_4(select(var_0.d, vec4<bool>(false, var_0.d.x, true, true), var_0.d.x), select(1814u, 0u, var_0.d.x)).x), -(u_input.c ^ vec2<i32>(u_input.c.x & -1i, _wgslsmith_add_i32(var_0.b.x, var_0.a.x))), var_0.a, var_0.d, -91939i);
    var_0 = Struct_1(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.c.x, 1i, -2147483647i), vec4<i32>(14972i, -1i, u_input.c.x, -33623i))) ^ var_0.a, u_input.c << ((u_input.a.xx & vec2<u32>(firstLeadingBit(u_input.b), u_input.d.x & 4294967295u)) % vec2<u32>(32u)), ~(~_wgslsmith_mod_vec4_i32(~vec4<i32>(30233i, 1269i, 2147483647i, u_input.c.x), ~vec4<i32>(31549i, 15037i, -1i, var_0.c.x))), func_3(abs(var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1406f * 1659f)), Struct_1(var_0.c, func_4(select(var_0.d, var_0.d, var_0.d), 39051u), vec4<i32>(~15955i, u_input.c.x, 1i, var_0.e), var_0.d, -u_input.c.x >> (~22357u % 32u)), select(u_input.d, firstTrailingBit(u_input.d), all(vec2<bool>(var_0.d.x, var_0.d.x))) | _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.d.x, u_input.b, u_input.b), vec3<u32>(27737u, u_input.b, u_input.a.x), vec3<bool>(var_0.d.x, var_0.d.x, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 88777u, u_input.b), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), u_input.a.wyy & u_input.a.xxy)), ~(~(-9866i) ^ firstLeadingBit(~u_input.c.x)));
    var var_1 = u_input.a;
    let var_2 = var_1.zx;
    return Struct_2(!vec4<bool>(true, false, any(vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x)), all(var_0.d)), Struct_1(_wgslsmith_clamp_vec4_i32(-var_0.c, (vec4<i32>(u_input.c.x, var_0.c.x, -35254i, 2147483647i) & var_0.a) & abs(var_0.c), min(abs(vec4<i32>(var_0.a.x, u_input.c.x, -2656i, 0i)), -var_0.a)), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_0.c.yyw, var_0.c.zyw), max(-1i, var_0.c.x), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(41816i, -2147483647i))), 0i), select(_wgslsmith_add_vec4_i32(var_0.c & vec4<i32>(3266i, u_input.c.x, -2147483647i, u_input.c.x), var_0.c), vec4<i32>(~2147483647i, _wgslsmith_add_i32(u_input.c.x, 9000i), -1i, u_input.c.x), (u_input.c.x >= var_0.b.x) && var_0.d.x), vec4<bool>(true, var_0.d.x & (var_0.d.x && var_0.d.x), !var_0.d.x, !(!var_0.d.x)), ~(-4065i)), vec3<f32>(-412f, -403f, 1000f), u_input.d.xx, ~2147483647i);
}

fn func_5(arg_0: i32, arg_1: Struct_5) -> bool {
    var var_0 = arg_1.b.x;
    let var_1 = Struct_2(!func_3(arg_1.c.b.b, _wgslsmith_f_op_f32(f32(-1f) * -1210f), arg_1.d.b, ~u_input.d), func_2().b, arg_1.c.c, ~(max(~vec2<u32>(u_input.d.x, 14680u), ~u_input.a.yz) >> (~countOneBits(vec2<u32>(u_input.d.x, 0u)) % vec2<u32>(32u))), u_input.c.x);
    var_0 = ~u_input.a.x;
    let var_2 = select(arg_1.d.b.d, var_1.a, func_2().b.d);
    let var_3 = arg_1.d;
    return !any(vec2<bool>(!(var_1.a.x || var_2.x), all(vec4<bool>(true, var_1.b.d.x, true, arg_1.d.b.d.x))));
}

fn func_1() -> i32 {
    let var_0 = ~8456u;
    var var_1 = true;
    let var_2 = var_0;
    var var_3 = Struct_2(vec4<bool>(true, all(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)))), func_5(select(u_input.c.x, 2516i, false) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 10612i, u_input.c.x, u_input.c.x), vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, -18567i)), Struct_5(u_input.c, abs(vec2<u32>(u_input.a.x, 35186u)), func_2(), Struct_4(false, Struct_1(vec4<i32>(u_input.c.x, -5157i, u_input.c.x, u_input.c.x), u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i), vec4<bool>(false, false, true, false), u_input.c.x), vec2<bool>(true, true)))), false), func_2().b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(388f * -1997f), _wgslsmith_f_op_f32(196f + 539f), _wgslsmith_f_op_f32(-1000f - -948f))), vec3<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1886f * -480f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -331f)))))), vec2<u32>(0u, 4294967295u), 1i);
    let var_4 = select(~var_3.b.c, var_3.b.c, func_3(firstTrailingBit(vec2<i32>(-2147483647i, var_3.b.c.x)), _wgslsmith_f_op_f32(-254f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c.x * 968f), -1118f)), var_3.b, ~((vec3<u32>(var_2, var_3.d.x, var_2) & vec3<u32>(0u, 4294967295u, var_0)) & ~u_input.a.yww)).x);
    return func_2().b.a.x;
}

fn func_6(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = Struct_4(false, arg_2.c.b, arg_2.c.a.yy);
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), arg_2.b);
    let var_3 = func_2().b.d;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c.c.yy * vec2<f32>(arg_2.c.c.x, arg_2.c.c.x))) - _wgslsmith_f_op_vec2_f32(select(arg_2.c.c.yx, _wgslsmith_div_vec2_f32(vec2<f32>(-647f, -258f), vec2<f32>(arg_0.x, -1988f)), true)))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), vec3<bool>(u_input.b < 29927u, any(vec2<bool>(true, true)), !any(vec2<bool>(false, false))), vec3<bool>(true, true, all(vec3<bool>(true, false, false))));
    var var_1 = Struct_2(select(!vec4<bool>(false, true, -2147483647i == u_input.c.x, false), !select(!vec4<bool>(true, false, false, var_0.x), select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(false, true, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !var_0.x), true), func_6(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(210f, 602f, 1552f)), vec3<f32>(773f, -651f, 230f)))), func_1(), Struct_3(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) << (~u_input.d % vec3<u32>(32u)), 19107u, Struct_2(func_3(u_input.c, 2168f, Struct_1(vec4<i32>(49952i, u_input.c.x, -6703i, 0i), vec2<i32>(u_input.c.x, 2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(true, true, false, false), 13292i), u_input.d), func_2().b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1405f, 772f, -222f)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 62268u), vec2<u32>(0u, u_input.b)), _wgslsmith_add_i32(u_input.c.x, u_input.c.x)), max(_wgslsmith_div_i32(0i, -4068i), -u_input.c.x), func_3(u_input.c, -1683f, func_2().b, ~u_input.d)), ~_wgslsmith_add_u32(~u_input.a.x, u_input.a.x << (77377u % 32u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1861f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1368f)) - _wgslsmith_f_op_f32(step(-525f, -499f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-830f * -1644f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1907f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1288f)), -342f)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, ~0u), ~reverseBits(u_input.d.yx << (u_input.d.zz % vec2<u32>(32u)))), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_div_i32(u_input.c.x << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), 2147483647i)));
    var_1 = func_2();
    var_0 = var_1.b.d.xxy;
    let var_2 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.x, min(u_input.a.x, _wgslsmith_add_u32(~var_1.d.x, ~var_1.d.x)) >> (var_1.d.x % 32u), max(~(~u_input.a), ~vec4<u32>(select(12162u, 4294967295u, true), ~u_input.a.x, u_input.a.x, var_1.d.x)), u_input.c.x);
}

