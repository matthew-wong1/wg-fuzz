struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, -4271i);

var<private> global1: vec2<bool>;

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: f32) -> i32 {
    global2 = !select(select(!vec4<bool>(false, global2.x, false, global1.x), !vec4<bool>(global2.x, global2.x, true, global1.x), false), vec4<bool>(false, any(!global2.ww), global2.x, true), !(-4197i < _wgslsmith_dot_vec2_i32(vec2<i32>(-28589i, arg_0.a.x), arg_0.a.wz)));
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(501f, -266f))));
    let var_2 = arg_3;
    global0 = -arg_0.a.yx;
    return _wgslsmith_mult_i32(var_0.a.x, arg_0.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_i32(arg_1.a.b.a.x, ~(_wgslsmith_add_i32(arg_0.a, _wgslsmith_dot_vec2_i32(u_input.d, arg_0.b.a.xw)) | arg_1.a.b.a.x));
    global2 = vec4<bool>(any(select(select(!vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(global1.x, true, false, global2.x), true), !select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, false, false, true), vec4<bool>(global2.x, true, global1.x, false)), true)), global2.x, global1.x || all(!(!vec4<bool>(global2.x, true, global2.x, global2.x))), !(_wgslsmith_f_op_f32(-arg_0.c.x) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_1.a.c.x, arg_0.c.x))))));
    let var_1 = Struct_4(~u_input.a.x, ~firstTrailingBit(firstLeadingBit(~vec2<u32>(u_input.a.x, 0u))), 10893i);
    return -countOneBits(select(countOneBits(~arg_1.a.b.a), vec4<i32>(~0i, 1i ^ global0.x, _wgslsmith_clamp_i32(-2147483647i, -6263i, 0i), arg_0.b.a.x), vec4<bool>(global2.x, any(global2.wz), global1.x || true, true)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(func_4(Struct_2(func_3(Struct_1(vec4<i32>(global0.x, global0.x, global0.x, global0.x)), !global2.x, u_input.a, _wgslsmith_f_op_f32(round(1329f))), Struct_1(vec4<i32>(-1i, -1i, u_input.b, u_input.c) & vec4<i32>(u_input.b, 54399i, -23291i, -2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-915f, -776f, 450f, -298f), vec4<f32>(616f, -241f, -1619f, -1512f), false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2257f, -375f, 485f, 147f), vec4<f32>(425f, 1004f, -645f, 1112f), vec4<bool>(false, true, false, global1.x)))), 1u), Struct_3(Struct_2(global0.x, Struct_1(vec4<i32>(global0.x, global0.x, 19767i, 15569i)), _wgslsmith_div_vec4_f32(vec4<f32>(-473f, 1000f, 585f, 493f), vec4<f32>(841f, 1357f, 1644f, 1828f)), _wgslsmith_sub_u32(47678u, 0u)))));
    var_0 = Struct_1(vec4<i32>(func_4(Struct_2(-var_0.a.x, Struct_1(var_0.a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-218f, -366f, -2136f, 936f))), ~u_input.a.x), Struct_3(Struct_2(0i, Struct_1(vec4<i32>(var_0.a.x, var_0.a.x, -2147483647i, 31489i)), vec4<f32>(-1452f, 581f, 669f, -324f), 4294967295u))).x, -u_input.b, _wgslsmith_mod_i32(2147483647i, 1i), ~u_input.c));
    let var_1 = Struct_5(vec3<f32>(-627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -274f))), _wgslsmith_f_op_f32(f32(-1f) * -492f)), global2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -1390f))), _wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_add_u32(1u >> (1u % 32u), u_input.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1790f - _wgslsmith_f_op_f32(ceil(874f)))))));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(0u, ~(reverseBits(u_input.a.x) | u_input.a.x)), 4294967295u, _wgslsmith_add_u32(4294967295u, select(_wgslsmith_mod_u32(var_1.d, 1u), _wgslsmith_mod_u32(~var_1.d, 4294967295u), global2.x)), ~81719u);
    let var_3 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(var_0.a.x, _wgslsmith_sub_i32(select(30436i, -29784i, var_1.b), var_0.a.x)), _wgslsmith_dot_vec4_i32(func_4(Struct_2(var_0.a.x, Struct_1(var_0.a), vec4<f32>(var_1.e, var_1.a.x, var_1.e, 583f), u_input.a.x), Struct_3(Struct_2(0i, Struct_1(var_0.a), vec4<f32>(699f, -522f, -1103f, -381f), 4294967295u))), var_0.a), 1i << (_wgslsmith_dot_vec2_u32(min(vec2<u32>(var_2.x, u_input.a.x), vec2<u32>(64574u, 0u)), u_input.a) % 32u), u_input.b));
    return Struct_2(max(func_3(var_3, var_1.b, vec2<u32>(var_1.d, var_1.d), _wgslsmith_f_op_f32(var_1.c + var_1.c)) >> (_wgslsmith_div_u32(~u_input.a.x, ~var_1.d) % 32u), -var_3.a.x), var_3, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -662f), var_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.e, -759f)) + _wgslsmith_f_op_f32(round(var_1.a.x)))))), 16699u);
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_5 {
    var var_0 = func_2().b;
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-34648i, -2057i), reverseBits(select(16122i, -1i, global2.x)) >> (~20643u % 32u), _wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(u_input.e, arg_2.a)), abs(arg_2.b.a.x))), vec3<i32>(~global0.x, 0i, arg_2.b.a.x));
    var var_2 = Struct_4(~(~min(max(0u, 43396u), 29305u)), arg_3, 0i);
    let var_3 = func_2().b;
    global0 = vec2<i32>(_wgslsmith_dot_vec2_i32((vec2<i32>(46924i, var_0.a.x) >> (~u_input.a % vec2<u32>(32u))) << (abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), u_input.a)) % vec2<u32>(32u)), func_2().b.a.wx), (_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 2147483647i, -5910i, -56919i), -var_3.a) << (u_input.a.x % 32u)) | -2147483647i);
    return Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c.x, 1000f, arg_2.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x) + vec3<f32>(225f, arg_2.c.x, arg_2.c.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(trunc(arg_2.c.x)), -582f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-956f + arg_2.c.x), _wgslsmith_f_op_f32(774f * -350f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2047f) * _wgslsmith_f_op_f32(floor(arg_2.c.x)))) <= _wgslsmith_f_op_f32(f32(-1f) * -203f), arg_2.c.x, 82751u, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x * 2021f) - _wgslsmith_div_f32(-1000f, arg_2.c.x))))));
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = func_5(abs(12266u), vec3<bool>(global2.x, true, !all(!vec4<bool>(global1.x, false, false, global2.x))), func_2(), arg_0.yy);
    let var_1 = Struct_3(Struct_2(global0.x, func_2().b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.a.x, -197f, 241f) * vec4<f32>(var_0.e, 828f, var_0.e, var_0.c)))))), _wgslsmith_add_u32(reverseBits(0u), func_2().d)));
    global1 = global2.yz;
    global0 = max(var_1.a.b.a.zz, ~(~max(var_1.a.b.a.yx, select(u_input.d, vec2<i32>(u_input.b, 27808i), global2.wz))));
    let var_2 = func_2();
    return select(global2.yy, vec2<bool>(false, true), global2.x && all(select(vec3<bool>(global2.x, global2.x, true), global2.yzy, global2.wyx)));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_4 {
    let var_0 = ~(~_wgslsmith_mod_vec3_u32(select(firstTrailingBit(vec3<u32>(1u, u_input.a.x, 93203u)), ~vec3<u32>(u_input.a.x, arg_2, u_input.a.x), select(global2.xyw, global2.zyx, global2.xzw)), ~abs(vec3<u32>(42849u, 2786u, 5149u))));
    global1 = vec2<bool>(global1.x || true, global1.x);
    return Struct_4(41397u, u_input.a, -25791i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(abs(_wgslsmith_add_vec4_i32(~vec4<i32>(global0.x, 48270i, -1i, global0.x) & max(vec4<i32>(-18063i, global0.x, -27318i, -1i), vec4<i32>(global0.x, 2147483647i, u_input.d.x, 0i)), -abs(vec4<i32>(global0.x, -7311i, u_input.c, -26264i)))));
    var var_1 = func_6(vec3<bool>(any(func_1(~vec4<u32>(u_input.a.x, 32827u, u_input.a.x, u_input.a.x))), any(global2.yz) != false, false), func_2().b, 4294967295u << (u_input.a.x % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-306f - _wgslsmith_f_op_f32(floor(-1343f))) - _wgslsmith_f_op_f32(f32(-1f) * -1145f)))));
    var var_2 = vec3<u32>(u_input.a.x, ~u_input.a.x | 47670u, ~_wgslsmith_clamp_u32(~(~0u), u_input.a.x, u_input.a.x));
    var var_3 = func_2();
    var_3 = Struct_2(~firstLeadingBit(-2147483647i), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.a, var_3.b.a.x, var_3.b.a.x, countOneBits(2147483647i)), -var_3.b.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_3.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.c)), select(vec4<bool>(global2.x, false, global1.x, false), vec4<bool>(global1.x, global2.x, true, global1.x), all(vec2<bool>(false, global1.x)))))), ~var_1.b.x);
    let var_4 = func_2().b;
    var_1 = func_6(global2.xyz, var_4, countOneBits(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 10040u, var_1.a, var_1.b.x)), countOneBits(select(vec4<u32>(var_1.a, var_3.d, var_1.a, 2201u), vec4<u32>(var_1.a, var_1.a, u_input.a.x, 1u), true)))), _wgslsmith_div_f32(-117f, var_3.c.x));
    global2 = !vec4<bool>(_wgslsmith_div_i32(-71565i, ~0i) > ~u_input.d.x, true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d);
}

