struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_3(28217u >> (arg_1.b.x % 32u), Struct_1(arg_1.e, ~firstTrailingBit(arg_0.b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_3.b.c - vec2<f32>(arg_3.b.c.x, arg_0.b.c.x)), vec2<f32>(arg_2, -1120f), select(vec2<bool>(true, arg_0.c), vec2<bool>(true, true), false)))), -1i, min(~(u_input.b.x >> (arg_1.b.x % 32u)), _wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), arg_1.e))), false);
    let var_1 = vec2<bool>(!arg_3.c, all(!select(vec2<bool>(true, true), !vec2<bool>(var_0.c, false), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.c.x, -531f, _wgslsmith_div_f32(-375f, arg_1.c.x)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.c.x - -1128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(139f, arg_2))))))), select(select(select(!vec3<bool>(true, false, arg_0.c), vec3<bool>(arg_0.c, arg_3.c, true), true), vec3<bool>(false, var_1.x && arg_3.c, true), !(0i >= arg_3.b.a)), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, arg_3.c, arg_0.c), var_0.c), vec3<bool>(any(vec3<bool>(true, var_1.x, arg_3.c)), true, arg_1.e <= -15624i), !(!vec3<bool>(arg_3.c, var_1.x, true))), select(!vec3<bool>(false, var_1.x, false), vec3<bool>(arg_3.c, all(vec2<bool>(arg_0.c, var_1.x)), false), !(!vec3<bool>(true, false, var_1.x))))));
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-971f, arg_2, 623f), vec3<f32>(arg_2, 1000f, arg_0.b.c.x)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(321f, arg_0.b.c.x, arg_1.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-820f, arg_2, arg_1.c.x), vec3<f32>(-1153f, 576f, arg_1.c.x), arg_0.c)), vec3<f32>(var_2.x, arg_3.b.c.x, 738f))), vec3<f32>(var_2.x, -339f, _wgslsmith_f_op_f32(arg_0.b.c.x + 1000f))), false)), !arg_3.c));
    var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(arg_0.b.c.x, 758f))))));
    return arg_3.b.d;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(1000f, Struct_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, 2147483647i), ~(u_input.b.x & 2147483647i)), _wgslsmith_clamp_vec2_u32((vec2<u32>(27078u, u_input.a.x) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) & abs(u_input.a.zz), select(vec2<u32>(67324u, 7742u), u_input.a.xx, vec2<bool>(false, false)) >> (~u_input.a.yz % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.a.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.zy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(336f, 1000f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-875f, -1000f), vec2<f32>(-133f, -694f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-921f, -1464f)))), func_3(Struct_3(~u_input.a.x, Struct_1(22520i, u_input.a.yx, vec2<f32>(454f, 904f), u_input.b.x, u_input.b.x), true), Struct_1(u_input.b.x, abs(vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-880f, -785f) + vec2<f32>(-149f, 1298f)), u_input.b.x & -13546i, max(u_input.b.x, 0i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-829f)), 1206f, 1u < u_input.a.x)), Struct_3(u_input.a.x, Struct_1(4738i, u_input.a.zx, vec2<f32>(-1528f, -330f), u_input.b.x, u_input.b.x), true)), u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(min(-1177f, 258f)), -470f, 203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1000f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f)), 528f)), vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), -1i, select(u_input.b.x, u_input.b.x, true))), _wgslsmith_add_i32((2533i & u_input.b.x) << (min(0u, u_input.a.x) % 32u), reverseBits(-1i) ^ u_input.b.x)));
    let var_1 = (-_wgslsmith_mult_i32(u_input.b.x, -15281i) | -2147483647i) << (var_0.b.b.x % 32u);
    let var_2 = var_0.b.b.x;
    return Struct_1(~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(30138i, 0i, -1i), _wgslsmith_mult_i32(-u_input.b.x, i32(-1i) * -1i), ~1i), select(max(firstTrailingBit(var_0.b.b), countOneBits(~vec2<u32>(4294967295u, 58396u))), ~u_input.a.zx, false), var_0.b.c, -(i32(-1i) * -2147483647i), var_0.e.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = !select(vec4<bool>(false, any(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), vec2<bool>(false, arg_0))), false, all(select(vec3<bool>(false, false, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, false)))), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(vec4<bool>(true, arg_0, false, false), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, true, true, arg_0), arg_0), !arg_0), select(select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(true, false, arg_0, true), true), vec4<bool>(arg_0, true, false, arg_0), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), arg_0);
    var var_2 = _wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(-arg_1.c.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(166f, 1250f, arg_1.c.x, -191f), vec4<f32>(arg_1.c.x, -147f, 241f, arg_1.c.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-143f, arg_1.c.x, arg_1.c.x, -821f) + vec4<f32>(391f, arg_1.c.x, arg_1.c.x, arg_1.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-769f, arg_1.c.x, 1537f, 487f) + vec4<f32>(603f, arg_1.c.x, arg_1.c.x, 840f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(812f, -1000f, arg_1.c.x, arg_1.c.x), vec4<f32>(arg_1.c.x, -353f, -1941f, -236f), false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(888f, 895f, -589f, 777f)))));
    var_2 = arg_1.c.x;
    return arg_1;
}

fn func_1(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_3(~(~58410u), func_4(!any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), func_2()), all(!vec4<bool>(any(vec2<bool>(true, true)), true, false, true)));
    let var_1 = Struct_2(var_0.b.c.x, func_2(), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_0.b.c.x, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, var_0.b.c.x, 923f, arg_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, var_0.b.c.x, arg_0.x), vec4<f32>(arg_0.x, var_0.b.c.x, var_0.b.c.x, -1228f), vec4<bool>(var_0.c, false, var_0.c, true))), select(vec4<bool>(var_0.c, var_0.c, true, true), vec4<bool>(true, false, true, true), vec4<bool>(var_0.c, var_0.c, var_0.c, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -210f, 628f, -274f) * vec4<f32>(1000f, var_0.b.c.x, var_0.b.c.x, var_0.b.c.x)))), vec4<f32>(_wgslsmith_div_f32(func_2().c.x, _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), -152f, -144f, -1073f))), var_0.b.c.x, vec3<i32>(countOneBits(_wgslsmith_div_i32(~var_0.b.d, _wgslsmith_mod_i32(2147483647i, var_0.b.e))), _wgslsmith_mod_i32(24458i, ~25076i & (var_0.b.e ^ 24182i)), -1i));
    let var_2 = var_1;
    var var_3 = var_0;
    var var_4 = max(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b.b.x, 80591u, 69217u, 5148u), vec4<u32>(var_2.b.b.x, 9683u, 4294967295u, 51086u)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.b.x, var_2.b.b.x, u_input.a.x, 4294967295u), vec4<u32>(var_2.b.b.x, 0u, 1u, 0u)))) & ~(_wgslsmith_div_vec4_u32(vec4<u32>(28030u, var_2.b.b.x, 10048u, var_2.b.b.x), vec4<u32>(32708u, var_3.b.b.x, 0u, 12463u)) >> (vec4<u32>(u_input.a.x, var_2.b.b.x, var_0.a, 4294967295u) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.b.x, 25868u & var_2.b.b.x, var_0.a, var_2.b.b.x), abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, var_0.b.b.x, 0u), vec4<u32>(53054u, 4294967295u, var_1.b.b.x, var_3.a)))));
    return _wgslsmith_f_op_vec2_f32(-var_1.b.c);
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>) -> Struct_2 {
    return Struct_2(1722f, func_4(any(vec4<bool>(true, true, true, true)), func_2()), vec4<f32>(arg_1.x, func_2().c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2().c.x, _wgslsmith_f_op_f32(-arg_1.x))), -1179f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1747f - -701f), _wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(arg_1.x, arg_1.x))).x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(true, Struct_1(arg_0, u_input.a.zy, arg_1, 1i, -1i)).c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f)))), ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, u_input.b.x, u_input.b.x) & ~vec3<i32>(arg_2.x, 32593i, u_input.b.x), vec3<i32>(reverseBits(40987i), i32(-1i) * -32802i, 10292i), max(arg_2.yxy | vec3<i32>(-10784i, arg_0, arg_0), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, arg_2.x, arg_2.x), arg_2.zzz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.b.x, _wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(1f, 1f))), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), -firstLeadingBit(~1i), abs(_wgslsmith_div_i32(11219i, -50172i) ^ select(-14577i, u_input.b.x, true)), _wgslsmith_mult_i32(9295i, firstLeadingBit(-4185i))));
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(69359u, select(var_0.b.b.x, var_0.b.b.x, true), var_0.b.b.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, u_input.a.x), var_0.b.b.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(1u, var_0.b.b.x)), 4294967295u, abs(max(u_input.a.x, 20279u)))));
    let var_2 = vec3<i32>(max(var_0.e.x, _wgslsmith_sub_i32(1i, -4266i)), -11125i, max(reverseBits(abs(30513i)), -2147483647i));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-923f, _wgslsmith_f_op_f32(-func_2().c.x), 749f))));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.wwx + vec3<f32>(-383f, 203f, _wgslsmith_f_op_f32(ceil(-956f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1016f, -1000f, _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.xzx))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 487f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, true)), var_0.a))));
    let var_4 = vec4<f32>(var_0.b.c.x, var_3.x, _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.zx)) + var_0.b.c))).x, _wgslsmith_f_op_f32(max(var_0.a, var_0.d)));
    let var_5 = select(abs(firstTrailingBit(~vec4<i32>(0i, -2147483647i, -1i, 9352i))), -firstLeadingBit(~(~vec4<i32>(2147483647i, 2147483647i, var_2.x, var_2.x))), select(vec4<bool>(true, _wgslsmith_f_op_f32(sign(1840f)) != _wgslsmith_f_op_f32(step(-1316f, -351f)), true, func_4(true, Struct_1(u_input.b.x, vec2<u32>(0u, u_input.a.x), vec2<f32>(2020f, var_4.x), u_input.b.x, -13274i)).a >= _wgslsmith_clamp_i32(2147483647i, -2147483647i, 1i)), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), any(vec2<bool>(true, true))), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), false));
    var_3 = var_4.ywx;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xw, select(var_1.wxx, ~select(vec3<u32>(4294967295u, 31588u, 12371u), countOneBits(u_input.a), true), all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), false))));
}

