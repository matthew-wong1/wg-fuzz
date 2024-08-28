struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = firstTrailingBit(u_input.a.x << (abs(~u_input.a.x) % 32u)) & _wgslsmith_add_u32(abs(_wgslsmith_mod_u32(_wgslsmith_add_u32(9065u, 0u), u_input.a.x)), ~u_input.a.x);
    var var_1 = ~u_input.d.x << (_wgslsmith_add_u32((41078u << (0u % 32u)) & ~u_input.a.x, 55761u) % 32u);
    var var_2 = Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -1000f) - vec2<f32>(623f, 1385f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-287f, arg_3))), _wgslsmith_div_vec2_f32(vec2<f32>(-204f, arg_3), vec2<f32>(arg_3, -603f)), select(vec2<bool>(arg_0.x, arg_2), vec2<bool>(true, true), vec2<bool>(arg_2, false)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, arg_3))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3 - arg_3))), 610f), vec2<u32>(0u, ~u_input.a.x & u_input.a.x), 4294967295u);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -192f);
    let var_4 = Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_2.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - 1018f)), -954f)), ~var_2.d, reverseBits(~_wgslsmith_clamp_u32(0u, var_0 >> (var_2.e % 32u), ~0u)));
    return ~15610u;
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    return 99745u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = all(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(all(vec2<bool>(true, true)), true, false), vec3<bool>(true, true, true), vec3<bool>(u_input.a.x <= u_input.a.x, true, true))));
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i << (u_input.a.x % 32u), u_input.c.x, u_input.b.x & 38721i, u_input.b.x), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, 38292i), u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b.x, 40736i, 0i), vec4<i32>(u_input.d.x, u_input.c.x, 0i, u_input.d.x))))), vec4<i32>(u_input.c.x, _wgslsmith_clamp_i32(countOneBits(u_input.c.x), _wgslsmith_sub_i32(~u_input.d.x, 8355i), reverseBits(-u_input.d.x)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_add_i32(u_input.c.x, u_input.c.x << (u_input.a.x % 32u)), u_input.c.x), -(u_input.c.x ^ firstLeadingBit(2147483647i))));
    var var_2 = u_input.d.x;
    var var_3 = !select(!select(!vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(false, var_0, true), vec3<bool>(false, true, var_0), false), all(vec4<bool>(false, true, var_0, false))), vec3<bool>(!(u_input.a.x == 4294967295u), var_0, _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) >= arg_0.x), select(vec3<bool>(false & var_0, false, true), !select(vec3<bool>(true, var_0, true), vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, var_0)), all(select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(false, true, true, var_0), var_0))));
    var var_4 = Struct_1(!var_3.x, arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1032f, -1000f) - vec3<f32>(-1013f, -472f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1115f, arg_0.x) - vec3<f32>(-224f, -332f, arg_0.x)))), vec3<f32>(1758f, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))))), ~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a.zz), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), ~u_input.a.wy)), func_3(-abs(~vec4<i32>(-2147483647i, -1i, u_input.b.x, -25774i))));
    return Struct_1(var_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(var_4.c.yx, var_4.b)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-205f, 438f)) * -1000f), arg_0.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-671f - var_4.c.x), 231f, _wgslsmith_f_op_f32(688f + var_4.b.x)) + vec3<f32>(_wgslsmith_div_f32(var_4.c.x, 1520f), var_4.b.x, -172f)))), vec2<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(94010u, 8038u), vec2<u32>(39264u, var_4.d.x) >> (vec2<u32>(0u, var_4.d.x) % vec2<u32>(32u))), ~reverseBits(0u))), ~(~(~63068u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = any(!vec4<bool>(_wgslsmith_clamp_u32(4294967295u, arg_1.e, 1u) >= firstTrailingBit(4294967295u), true, arg_1.a, arg_3.a));
    var_0 = true;
    let var_1 = ~(~u_input.a);
    var_0 = all(select(vec4<bool>(arg_3.e >= ~1u, all(vec3<bool>(false, arg_2.a, arg_3.a)), false, false), vec4<bool>(func_2(_wgslsmith_f_op_vec2_f32(arg_1.b * vec2<f32>(1277f, -1192f))).a, arg_1.a, true, true), !(!vec4<bool>(true, arg_2.a, arg_1.a, false))));
    let var_2 = var_1.x;
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.a;
    var var_1 = abs(1u);
    var var_2 = _wgslsmith_mult_vec3_u32(select(_wgslsmith_add_vec3_u32(firstLeadingBit(select(vec3<u32>(arg_0.d.x, 4294967295u, u_input.a.x), vec3<u32>(arg_0.d.x, 1u, 0u), vec3<bool>(var_0, arg_1.a, var_0))), vec3<u32>(arg_1.e << (1u % 32u), firstTrailingBit(arg_0.d.x), func_3(vec4<i32>(u_input.d.x, -3622i, -2147483647i, u_input.b.x)))), u_input.a.xwy, arg_1.a), _wgslsmith_mod_vec3_u32(max(u_input.a.zzz, _wgslsmith_sub_vec3_u32(u_input.a.yxy, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 42940u, u_input.a.x), u_input.a.yyz))), vec3<u32>(~arg_1.e, ~u_input.a.x, 1u)));
    let var_3 = !select(vec3<bool>(func_4(~0u, Struct_1(false, vec2<f32>(arg_0.b.x, -986f), arg_0.c, arg_0.d, 62258u), func_4(61082u, Struct_1(arg_0.a, vec2<f32>(516f, arg_1.c.x), vec3<f32>(arg_0.b.x, -1000f, arg_0.c.x), vec2<u32>(arg_1.d.x, arg_1.e), 0u), Struct_1(true, vec2<f32>(arg_1.b.x, arg_0.b.x), arg_1.c, arg_0.d, var_2.x), arg_0), arg_1).a, var_0 && all(vec4<bool>(var_0, false, false, arg_1.a)), true), select(select(vec3<bool>(false, true, true), vec3<bool>(var_0, false, var_0), any(vec4<bool>(arg_0.a, arg_0.a, true, arg_1.a))), vec3<bool>(true, !arg_0.a, func_2(arg_1.b).a), func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e, var_2.x, var_2.x), u_input.a.xxw), Struct_1(var_0, arg_1.c.xx, arg_0.c, vec2<u32>(17955u, arg_1.d.x), 0u), Struct_1(true, arg_0.b, vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec2<u32>(69643u, u_input.a.x), u_input.a.x), Struct_1(false, arg_1.b, arg_1.c, u_input.a.yy, 8516u)).a), !vec3<bool>(arg_1.a, false & arg_0.a, arg_0.a == true));
    var_2 = vec3<u32>(1u, 0u, firstLeadingBit(4294967295u));
    return Struct_1(all(!vec4<bool>(select(var_0, var_0, true), var_3.x, !var_0, var_0)), arg_1.c.yy, vec3<f32>(-622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1009f, 456f) + func_4(1u, Struct_1(true, arg_0.c.yy, vec3<f32>(-209f, 1246f, -1425f), vec2<u32>(0u, 38885u), arg_1.e), Struct_1(false, vec2<f32>(arg_0.c.x, 2473f), arg_1.c, vec2<u32>(1u, u_input.a.x), 4294967295u), arg_0).c.x)), arg_0.b.x), ~(~vec2<u32>(~15681u, 0u)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1457f, 1210f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(291f + 2098f), _wgslsmith_f_op_f32(-491f * -1125f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 367f, 1f))), ~u_input.a.yw, ~select(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x), 1u, true));
    let var_1 = var_0.c.x;
    var_0 = Struct_1(true, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f + var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(floor(-2809f))), _wgslsmith_f_op_vec3_f32(step(var_0.c, vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -192f), _wgslsmith_f_op_f32(trunc(var_0.c.x))))), ~var_0.d, 21625u);
    var_0 = func_5(func_4(firstTrailingBit(func_1(!vec4<bool>(false, false, var_0.a, var_0.a), true, var_0.a, -1599f)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.yy))), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(var_0.c.xx * var_0.b))), func_2(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(862f)), _wgslsmith_f_op_f32(-654f + var_0.c.x)))));
    var_0 = Struct_1(!(!(true | any(vec2<bool>(false, var_0.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.b, vec2<f32>(-1053f, var_0.b.x), false))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_0.b.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.c.xz, var_0.c.xy))), _wgslsmith_f_op_vec2_f32(var_0.b + var_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -1200f, var_0.b.x) * _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(1136f, 145f, 748f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-220f, 349f, -421f) - vec3<f32>(1443f, var_0.b.x, 1000f)))), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), ~firstLeadingBit(func_2(vec2<f32>(-820f, var_0.c.x)).d)), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.x, var_0.b.x, var_0.c.x, 701f), vec4<f32>(-2300f, 1076f, var_0.b.x, 220f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-671f, 176f, var_0.b.x, var_0.b.x))), select(vec4<bool>(false, false, true, var_0.a), vec4<bool>(false, true, var_0.a, false), var_0.a))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(560f, 398f, var_0.c.x, var_0.b.x), vec4<f32>(var_0.b.x, var_0.c.x, var_0.c.x, -975f)), vec4<f32>(-666f, var_0.b.x, -1081f, var_0.c.x))))), var_0.e, var_0.b);
}

