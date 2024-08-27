struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
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

var<private> global0: Struct_4 = Struct_4(vec2<u32>(4294967295u, 23514u), Struct_3(Struct_2(vec3<i32>(90891i, 2147483647i, 43911i), 1u, Struct_1(false, -631f, -1i, 1u, vec3<i32>(19992i, 21380i, i32(-2147483648))), vec3<f32>(613f, -734f, 940f), 298f)), -34528i, vec3<u32>(4294967295u, 4294967295u, 0u), vec4<i32>(i32(-2147483648), -18732i, -1i, i32(-2147483648)));

var<private> global1: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = vec4<bool>(global0.b.a.c.a, select(!(!global0.b.a.c.a || all(vec4<bool>(global0.b.a.c.a, global0.b.a.c.a, false, true))), !all(select(vec4<bool>(false, true, true, global0.b.a.c.a), vec4<bool>(true, true, global0.b.a.c.a, global0.b.a.c.a), global0.b.a.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.a.e, global0.b.a.d.x))) == arg_1.x), !global0.b.a.c.a, global0.b.a.c.a);
    var var_1 = arg_1.x;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-389f)));
    var_1 = -331f;
    global0 = Struct_4(global0.d.xy, Struct_3(Struct_2(~(-global0.b.a.c.e), abs(~global0.d.x), Struct_1(true, global0.b.a.e, 1115i, 1u, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_0.x, arg_0.x), vec3<i32>(arg_2.x, 11759i, -2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(774f, -954f, global0.b.a.d.x)) + _wgslsmith_f_op_vec3_f32(-arg_1)), global0.b.a.c.b)), arg_0.x, ~(~(~firstLeadingBit(global0.d))), abs(~vec4<i32>(max(arg_2.x, arg_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.e.x, 0i), global0.b.a.a.yz), 5578i, _wgslsmith_sub_i32(global0.b.a.c.c, global0.e.x))));
    return ~(~u_input.b);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    global1 = -100f;
    var var_0 = arg_1.a.d;
    let var_1 = select(vec4<bool>(any(vec3<bool>(any(vec3<bool>(false, false, global0.b.a.c.a)), arg_3.d >= arg_3.d, u_input.a <= global0.b.a.c.e.x)), _wgslsmith_f_op_f32(max(global0.b.a.e, _wgslsmith_f_op_f32(1411f - arg_3.b))) == 701f, arg_2, any(select(select(vec4<bool>(true, arg_3.a, arg_3.a, false), vec4<bool>(arg_1.a.c.a, arg_2, arg_1.a.c.a, arg_2), true), !vec4<bool>(false, false, false, global0.b.a.c.a), true))), vec4<bool>(arg_2, select(all(select(vec4<bool>(true, arg_2, arg_2, arg_1.a.c.a), vec4<bool>(true, false, global0.b.a.c.a, arg_3.a), vec4<bool>(arg_1.a.c.a, false, true, false))), all(vec2<bool>(true, global0.b.a.c.a)), true), true || all(vec3<bool>(false, arg_2, true)), (!global0.b.a.c.a == any(vec4<bool>(arg_3.a, false, true, true))) | !(arg_2 == false)), !select(global0.b.a.d.x <= 839f, true, any(vec2<bool>(true, false))));
    var var_2 = Struct_4(~reverseBits(global0.d.yy), arg_1, u_input.a, _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.d, u_input.d.yxw, _wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 29804u, arg_3.d), u_input.d.yww, vec3<bool>(true, false, arg_1.a.c.a)), global0.d)), select(max(_wgslsmith_add_vec3_u32(u_input.d.xzx, vec3<u32>(arg_1.a.c.d, global0.b.a.c.d, 1u)), select(vec3<u32>(4294967295u, global0.b.a.b, 4294967295u), u_input.d.wxw, arg_3.a)), vec3<u32>(~arg_1.a.c.d, max(global0.d.x, 4294967295u), min(44137u, u_input.e.x)), global0.b.a.c.a)), vec4<i32>(24215i, global0.e.x, abs(_wgslsmith_clamp_i32(arg_1.a.a.x, global0.c, 0i)) & -firstLeadingBit(arg_3.c), -19755i));
    var_2 = Struct_4(~vec2<u32>(31129u, abs(var_2.b.a.c.d) >> (var_2.d.x % 32u)), arg_1, -(arg_3.c >> (12283u % 32u)), ~u_input.d.yxy, (var_2.e << (reverseBits(~vec4<u32>(global0.a.x, 1u, 0u, 1u)) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.e.yww, var_2.b.a.a), u_input.a, arg_3.e.x, (arg_1.a.c.c ^ var_2.e.x) << (global0.a.x % 32u)));
    return vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(79779u, global0.b.a.c.d, arg_1.a.b) >> (~1u % 32u), _wgslsmith_add_u32(u_input.e.x, 1u)), u_input.c), ~107211u);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: u32) -> i32 {
    var var_0 = Struct_4(_wgslsmith_mult_vec2_u32((_wgslsmith_clamp_vec2_u32(u_input.d.wz, arg_2, vec2<u32>(1u, arg_0.d)) >> (~arg_2 % vec2<u32>(32u))) << (max(countOneBits(global0.a), ~vec2<u32>(arg_0.d, 10247u)) % vec2<u32>(32u)), max(vec2<u32>(0u, 0u), ~vec2<u32>(global0.a.x, 56012u)) ^ _wgslsmith_div_vec2_u32(~u_input.e.yx, global0.a)), global0.b, 2824i, max(global0.d, u_input.d.wxz), ~select(vec4<i32>(_wgslsmith_mod_i32(arg_0.c, global0.e.x), ~1i, global0.b.a.c.c >> (u_input.e.x % 32u), -20613i), ~select(vec4<i32>(arg_0.c, arg_0.c, arg_0.e.x, -18259i), vec4<i32>(-27106i, 2147483647i, arg_0.e.x, global0.c), global0.b.a.c.a), true));
    var var_1 = arg_0;
    let var_2 = select(select(arg_1.zy, select(select(arg_1.yx, arg_1.xx, arg_1.x), arg_1.xy, vec2<bool>(true, !global0.b.a.c.a)), true), select(select(arg_1.yy, !vec2<bool>(arg_0.a, false), select(select(vec2<bool>(arg_0.a, true), arg_1.zz, arg_1.xy), vec2<bool>(arg_1.x, false), !vec2<bool>(var_0.b.a.c.a, true))), select(arg_1.xy, vec2<bool>(true, true), arg_1.xy), select(arg_1.yx, select(!vec2<bool>(var_1.a, true), vec2<bool>(false, global0.b.a.c.a), select(vec2<bool>(true, var_1.a), arg_1.yz, vec2<bool>(false, false))), arg_1.xy)), true);
    var var_3 = 7122u;
    let var_4 = max(_wgslsmith_dot_vec2_u32(arg_2, firstTrailingBit(firstLeadingBit(vec2<u32>(arg_3, 1u)))), arg_3);
    return reverseBits(u_input.a);
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    let var_0 = u_input.e.x;
    var var_1 = -22367i;
    var_1 = arg_0.x;
    var_1 = func_5(Struct_1(global0.b.a.c.a, global0.b.a.c.b, u_input.a, _wgslsmith_mult_u32(~(~u_input.e.x), _wgslsmith_div_u32(~4294967295u, ~u_input.b)), firstLeadingBit(-vec3<i32>(arg_0.x, -12648i, global0.b.a.a.x) & ~arg_0)), vec3<bool>(global0.b.a.c.a, global0.b.a.c.a, select(global0.b.a.c.a, all(select(vec4<bool>(false, global0.b.a.c.a, global0.b.a.c.a, global0.b.a.c.a), vec4<bool>(global0.b.a.c.a, global0.b.a.c.a, false, false), vec4<bool>(global0.b.a.c.a, true, false, false))), true)), _wgslsmith_clamp_vec2_u32(countOneBits(global0.d.zx), abs(_wgslsmith_sub_vec2_u32(u_input.e.zy, u_input.d.zy)), global0.d.zx), _wgslsmith_dot_vec2_u32(~firstLeadingBit(~global0.d.yy), func_4(func_3(global0.e.yx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a.c.b, 362f, -689f)), vec2<i32>(-41569i, -20638i)), global0.b, true, global0.b.a.c)));
    var var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(9228u, 45312u, ~_wgslsmith_clamp_u32(u_input.e.x, var_0, 31190u)), vec3<u32>(_wgslsmith_mult_u32(1u, global0.a.x), abs(u_input.c), 1u), ~reverseBits(vec3<u32>(4294967295u, 40644u, 81903u) & vec3<u32>(var_0, global0.b.a.b, u_input.d.x)));
    return global0.d.xz;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_add_vec2_u32(select(vec2<u32>(56161u, global0.b.a.b) >> (vec2<u32>(arg_1.b, 44800u) % vec2<u32>(32u)), ~u_input.e.zy, any(vec3<bool>(global0.b.a.c.a, arg_1.c.a, true))), _wgslsmith_mult_vec2_u32(~global0.d.yy, vec2<u32>(65704u, arg_1.b))) ^ func_2(vec3<i32>(arg_1.c.c | arg_0.a.x, i32(-1i) * -31362i, 10540i)), global0.b, arg_0.c.e.x, global0.d, global0.e);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.c.b - _wgslsmith_f_op_f32(329f * -1127f)), -968f)), _wgslsmith_f_op_f32(var_0.b.a.c.b - var_0.b.a.d.x));
    return Struct_2(reverseBits(vec3<i32>(_wgslsmith_div_i32(arg_1.a.x, var_0.b.a.c.c >> (arg_1.b % 32u)), -_wgslsmith_dot_vec2_i32(arg_1.c.e.yz, vec2<i32>(global0.e.x, var_0.e.x)), arg_1.a.x)), _wgslsmith_sub_u32(arg_0.c.d, u_input.b), Struct_1(!(true & var_0.b.a.c.a), _wgslsmith_f_op_f32(-626f - _wgslsmith_f_op_f32(max(1080f, _wgslsmith_f_op_f32(-arg_1.d.x)))), 47083i, arg_0.b, vec3<i32>(8743i, -9398i, _wgslsmith_mod_i32(arg_0.c.e.x, i32(-1i) * -1i))), _wgslsmith_f_op_vec3_f32(arg_1.d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-590f, var_0.b.a.d.x, 595f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -400f), 206f, _wgslsmith_f_op_f32(min(arg_1.e, 1344f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(161f)) + global0.b.a.d.x))));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: bool) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e - -1296f) - _wgslsmith_f_op_f32(f32(-1f) * -350f))));
    var var_0 = func_1(Struct_2(select(vec3<i32>(-25155i, ~arg_1.x, 1i), vec3<i32>(i32(-1i) * -1i, -37669i, abs(-34018i)), vec3<bool>(true, true, !global0.b.a.c.a)), arg_0.b, arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(f32(-1f) * -1350f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(219f)) * _wgslsmith_f_op_f32(-global0.b.a.c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(126f + arg_0.c.b))) * _wgslsmith_f_op_f32(-1693f + _wgslsmith_f_op_f32(-global0.b.a.c.b)))), arg_0).c.e.yy;
    let var_1 = global0.b;
    var_0 = firstTrailingBit(vec2<i32>(_wgslsmith_div_i32(-9797i, 17227i), 0i)) << (countOneBits(~countOneBits(vec2<u32>(0u, u_input.b)) << ((select(u_input.d.xy, global0.a, arg_3) >> (vec2<u32>(9922u, 111319u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = !select(!select(select(vec4<bool>(false, false, true, global0.b.a.c.a), vec4<bool>(arg_3, arg_0.c.a, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, arg_3, var_1.a.c.a, false), vec4<bool>(arg_0.c.a, arg_0.c.a, var_1.a.c.a, false), arg_0.c.a), false || var_1.a.c.a), !select(select(vec4<bool>(arg_3, true, true, true), vec4<bool>(arg_0.c.a, var_1.a.c.a, var_1.a.c.a, arg_0.c.a), vec4<bool>(true, true, true, false)), !vec4<bool>(true, true, var_1.a.c.a, arg_0.c.a), global0.b.a.c.a), select(select(vec4<bool>(false, arg_0.c.a, arg_0.c.a, true), !vec4<bool>(false, false, global0.b.a.c.a, false), vec4<bool>(true, true, arg_3, true)), vec4<bool>(!arg_0.c.a, -169f > global0.b.a.e, global0.b.a.c.a, var_1.a.c.a), -arg_0.c.e.x <= arg_2.x));
    return arg_0;
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> u32 {
    global1 = arg_2.b;
    let var_0 = Struct_4(vec2<u32>(firstLeadingBit(func_2(-arg_1.a).x), (~arg_2.d & ~53933u) & _wgslsmith_sub_u32(4294967295u, arg_1.b & arg_2.d)), Struct_3(func_1(arg_1, Struct_2(vec3<i32>(58679i, arg_2.e.x, arg_2.c), 63031u, func_6(Struct_2(arg_2.e, 20309u, Struct_1(false, 670f, global0.c, arg_2.d, vec3<i32>(-15443i, 240i, 2147483647i)), vec3<f32>(392f, 197f, -639f), arg_1.d.x), vec3<i32>(u_input.a, -2147483647i, arg_2.c), arg_1.c.e.zy, false).c, global0.b.a.d, _wgslsmith_f_op_f32(select(arg_1.d.x, global0.b.a.e, arg_2.a))))), u_input.a, _wgslsmith_div_vec3_u32(u_input.d.wxw, _wgslsmith_add_vec3_u32(~select(vec3<u32>(arg_2.d, u_input.d.x, 21224u), vec3<u32>(1u, 51117u, 38951u), global0.b.a.c.a), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(global0.d, vec3<u32>(global0.a.x, global0.a.x, u_input.c)), global0.d))), -global0.e);
    let var_1 = Struct_1(arg_1.c.a, -732f, arg_1.a.x, ~global0.d.x, ~(~_wgslsmith_mod_vec3_i32(var_0.e.zxw, -arg_1.c.e)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-440f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.e + -702f))) + arg_1.d.x)), -826f);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(870f - var_0.b.a.c.b)));
    return ~arg_1.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e.yyw;
    var var_1 = ~(-(_wgslsmith_mod_i32(1i, 33560i) << (1u % 32u)) << ((1684u << (((global0.d.x ^ u_input.b) >> (_wgslsmith_mult_u32(global0.d.x, 15776u) % 32u)) % 32u)) % 32u));
    var var_2 = Struct_2(global0.b.a.a, 0u << (_wgslsmith_mod_u32(1u, global0.b.a.c.d) % 32u), Struct_1(select(!(!global0.b.a.c.a), _wgslsmith_f_op_f32(round(global0.b.a.e)) != 926f, global0.b.a.c.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.a.d.x, -607f))))), global0.e.x, func_7(vec3<bool>(global0.b.a.c.a, false, !global0.b.a.c.a), func_6(func_1(global0.b.a, global0.b.a), vec3<i32>(-2147483647i, var_0.x, 34227i) | vec3<i32>(0i, -2147483647i, 22204i), abs(var_0.zx), global0.b.a.c.a), global0.b.a.c, !all(vec3<bool>(true, global0.b.a.c.a, global0.b.a.c.a))), ~_wgslsmith_div_vec3_i32(global0.e.wzz, global0.e.zxx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.b.a.d.x, 793f, -1986f), global0.b.a.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a.d.x, global0.b.a.e, -1079f)), false)) * func_6(func_1(Struct_2(vec3<i32>(-46659i, u_input.a, -5860i), global0.a.x, global0.b.a.c, global0.b.a.d, -449f), Struct_2(global0.e.yzz, u_input.d.x, global0.b.a.c, global0.b.a.d, -165f)), global0.b.a.a, global0.b.a.a.zx, true).d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.c.b) * _wgslsmith_f_op_f32(select(-1049f, _wgslsmith_f_op_f32(710f - 407f), true))) * func_1(func_1(Struct_2(global0.e.ywx, u_input.c, Struct_1(global0.b.a.c.a, -269f, u_input.a, 24208u, vec3<i32>(global0.e.x, 0i, -1i)), global0.b.a.d, 443f), func_6(Struct_2(global0.e.yzw, 1u, Struct_1(global0.b.a.c.a, 729f, 1i, u_input.c, vec3<i32>(u_input.a, -2147483647i, var_0.x)), global0.b.a.d, global0.b.a.d.x), global0.e.zzx, global0.e.wy, global0.b.a.c.a)), Struct_2(~vec3<i32>(var_0.x, u_input.a, u_input.a), _wgslsmith_sub_u32(2916u, 1u), Struct_1(global0.b.a.c.a, global0.b.a.c.b, global0.c, global0.b.a.c.d, global0.e.yxx), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.a.e, global0.b.a.d.x, 452f) - global0.b.a.d), global0.b.a.d.x)).d.x));
    var var_3 = Struct_4(~global0.d.yy, Struct_3(Struct_2(vec3<i32>(var_0.x, ~var_2.a.x, countOneBits(u_input.a)), global0.b.a.c.d, var_2.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, var_2.d.x, 2866f) - _wgslsmith_f_op_vec3_f32(step(var_2.d, vec3<f32>(global0.b.a.c.b, var_2.e, global0.b.a.e)))), _wgslsmith_f_op_f32(global0.b.a.d.x * _wgslsmith_f_op_f32(global0.b.a.e - -433f)))), ~(-1i ^ ~var_2.c.e.x), ~vec3<u32>(var_2.b, ~(36654u >> (var_2.c.d % 32u)), ~var_2.c.d), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(global0.e, min(global0.e, _wgslsmith_sub_vec4_i32(global0.e, global0.e))), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_2.a.x, global0.b.a.a.x, global0.c, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 3930i, global0.b.a.c.e.x, global0.c), global0.e)) << (~(vec4<u32>(var_2.c.d, var_2.b, 0u, 4294967295u) & u_input.d) % vec4<u32>(32u))));
    let var_4 = ~(-select(firstTrailingBit(var_0.zx), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.xz, vec2<i32>(global0.e.x, u_input.a)), ~var_2.c.e.yy), false));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f * -626f) * var_2.d.x);
    var_3 = Struct_4((vec2<u32>(u_input.d.x, 4294967295u) << (vec2<u32>(func_1(Struct_2(vec3<i32>(var_0.x, u_input.a, 2147483647i), var_2.b, var_2.c, vec3<f32>(-461f, var_3.b.a.c.b, var_3.b.a.d.x), var_2.d.x), global0.b.a).c.d, var_3.a.x) % vec2<u32>(32u))) ^ vec2<u32>(844u, 31691u), Struct_3(global0.b.a), _wgslsmith_div_i32(0i, 1i), abs(~u_input.e), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_2.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(713f)))))));
}

