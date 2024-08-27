struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4;

var<private> global2: array<vec4<f32>, 19>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_3(global1.d, global1.a.a, ~32882u);
    let var_1 = global0.b;
    let var_2 = 1755f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-303f)));
    var var_4 = !any(select(select(vec4<bool>(var_1.x, global0.b.x, true, arg_0.a.b.x), vec4<bool>(true, false, true, false), arg_0.a.b.x), select(vec4<bool>(global1.a.b.x, arg_0.d.b.x, true, var_1.x), vec4<bool>(var_0.a.b.x, true, true, false), vec4<bool>(false, true, false, false)), !vec4<bool>(true, true, arg_1, true))) & all(vec3<bool>(var_1.x, true, ~53855u == u_input.d.x));
    return !vec3<bool>(_wgslsmith_sub_i32(countOneBits(u_input.c), global0.a.x) <= (2147483647i | ~arg_0.a.a.x), _wgslsmith_f_op_f32(-1f) < var_0.a.c, (true || !global0.b.x) & arg_1);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = vec4<bool>(true, 1i < global0.a.x, !(65238u < _wgslsmith_mod_u32(~7259u, global1.a.d.x)), global1.d.b.x || any(func_3(Struct_4(Struct_1(vec3<i32>(global0.a.x, 36494i, global0.a.x), global0.b, -1929f, vec2<u32>(global1.a.d.x, 0u)), u_input.b, vec4<u32>(global1.d.d.x, global1.b, 36185u, global1.d.d.x), Struct_1(global0.a, arg_3.xy, global0.c, global0.d)), u_input.c > -2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-504f, 519f) - vec2<f32>(-1236f, -348f))).zx));
    var var_1 = ~(global1.c.wwx | ~(~vec3<u32>(global1.c.x, global1.c.x, 1u) >> (vec3<u32>(20554u, 0u, global0.d.x) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_div_vec2_u32(~(~arg_2 & (vec2<u32>(global0.d.x, 348u) >> (arg_2 % vec2<u32>(32u)))) ^ ~u_input.d.yx, vec2<u32>(1u << (firstLeadingBit(abs(global1.a.d.x)) % 32u), firstLeadingBit(1u << (firstLeadingBit(7064u) % 32u))));
    let var_3 = Struct_2(vec4<u32>(_wgslsmith_add_u32(reverseBits(global0.d.x), ~0u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x ^ arg_2.x, global1.a.d.x, 0u, ~69219u), ~vec4<u32>(18977u, 89832u, global1.a.d.x, u_input.d.x)), 1u));
    global2 = array<vec4<f32>, 19>();
    return global0.b;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4) -> u32 {
    global1 = arg_1;
    return ~global0.d.x;
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = u_input.a;
    var var_1 = global1.a.c;
    let var_2 = func_5(!func_4(-global0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.c * 300f))), vec2<u32>(u_input.b, _wgslsmith_sub_u32(0u, global1.d.d.x)), func_3(Struct_4(Struct_1(global0.a, global0.b, global0.c, global1.c.xy), global1.c.x, global1.c, Struct_1(vec3<i32>(global1.d.a.x, u_input.a, global0.a.x), vec2<bool>(false, global0.b.x), global0.c, u_input.d.xx)), any(vec3<bool>(false, true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1958f, -184f)))), Struct_4(Struct_1(vec3<i32>(global1.d.a.x, _wgslsmith_div_i32(global1.a.a.x, -28516i), _wgslsmith_dot_vec4_i32(vec4<i32>(-15549i, 276i, u_input.c, -22701i), vec4<i32>(u_input.a, 50075i, -1i, -13038i))), func_3(Struct_4(Struct_1(global1.d.a, global1.a.b, global0.c, vec2<u32>(global0.d.x, 41673u)), global1.c.x, vec4<u32>(u_input.d.x, global0.d.x, 4294967295u, 0u), global1.a), true, vec2<f32>(global0.c, 611f)).zx, 487f, _wgslsmith_sub_vec2_u32(global1.d.d, ~u_input.d.yy)), ~(~max(1u, 3044u)), vec4<u32>(global1.a.d.x >> (1u % 32u), global0.d.x, u_input.d.x, ~4294967295u), Struct_1(abs(_wgslsmith_div_vec3_i32(global1.d.a, vec3<i32>(global0.a.x, global1.a.a.x, global1.d.a.x))), select(!vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, true), vec2<bool>(false, false)), -1196f, vec2<u32>(~global1.d.d.x, 0u))));
    var_0 = u_input.c;
    let var_3 = Struct_2(~global1.c);
    return _wgslsmith_dot_vec2_i32((reverseBits(vec2<i32>(2147483647i, global0.a.x)) & select(-global1.d.a.zx, firstTrailingBit(global0.a.yx), true)) & vec2<i32>(abs(global0.a.x), 2147483647i), global0.a.xx);
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_3 {
    global1 = Struct_4(Struct_1(global0.a, select(global1.d.b, vec2<bool>(true, global0.b.x & global1.a.b.x), true), _wgslsmith_f_op_f32(-1570f * 1239f), ~countOneBits(~vec2<u32>(global1.d.d.x, global0.d.x))), arg_2.a.x, min(_wgslsmith_mod_vec4_u32(firstLeadingBit(arg_2.a), global1.c), _wgslsmith_add_vec4_u32(arg_2.a, ~global1.c)), Struct_1(-firstTrailingBit(vec3<i32>(global0.a.x, 0i, 11227i)) & ~(vec3<i32>(30350i, u_input.a, -5934i) & global0.a), select(!select(vec2<bool>(global1.a.b.x, false), vec2<bool>(global0.b.x, global0.b.x), arg_1.zx), vec2<bool>(true, true), !arg_1.yz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global1.d.c)), 223f))), vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(global0.d.x, 1u, 32497u)), firstTrailingBit(1u))));
    var var_0 = global1.a;
    var var_1 = arg_2;
    global1 = Struct_4(Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c, -1728f)) * 1052f), vec2<u32>(var_0.d.x, 1u)), u_input.d.x, ~vec4<u32>(1u, 0u, u_input.b, arg_2.a.x), Struct_1(-var_0.a, !select(vec2<bool>(global1.d.b.x, global0.b.x), !var_0.b, select(var_0.b, vec2<bool>(false, false), global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -355f), var_0.d));
    global0 = global1.d;
    return Struct_3(Struct_1(var_0.a, !func_4(firstLeadingBit(global1.d.a.x), var_0.c, ~vec2<u32>(u_input.d.x, 0u), arg_1), var_0.c, ~vec2<u32>(abs(1u), arg_2.a.x)), -global0.a, _wgslsmith_mod_u32(global1.a.d.x, ~(~(76002u ^ var_1.a.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> Struct_3 {
    return func_6(func_2(vec2<bool>(all(vec3<bool>(false, arg_1.x, arg_1.x)), true)), select(func_3(Struct_4(Struct_1(vec3<i32>(global1.a.a.x, 1i, -1i), vec2<bool>(arg_1.x, false), 262f, global1.d.d), ~global1.a.d.x, min(vec4<u32>(u_input.d.x, 0u, 8948u, 1u), vec4<u32>(33219u, global0.d.x, global1.c.x, u_input.d.x)), global1.a), global0.b.x, vec2<f32>(-285f, global1.a.c)), !(!vec3<bool>(arg_1.x, arg_1.x, global1.d.b.x)), !select(!vec3<bool>(arg_1.x, global1.a.b.x, global0.b.x), !vec3<bool>(global1.a.b.x, global1.d.b.x, arg_1.x), vec3<bool>(arg_1.x, global0.b.x, true))), Struct_2(global1.c));
}

fn func_7(arg_0: Struct_3) -> Struct_1 {
    let var_0 = func_6(0i, select(vec3<bool>(false, true, func_6(-4864i, !vec3<bool>(true, false, arg_0.a.b.x), Struct_2(global1.c)).a.b.x), select(vec3<bool>(true, arg_0.a.c <= 2049f, arg_0.a.b.x & global1.d.b.x), vec3<bool>(-16197i == arg_0.a.a.x, arg_0.a.b.x, func_3(Struct_4(arg_0.a, 55255u, global1.c, Struct_1(arg_0.a.a, global0.b, arg_0.a.c, arg_0.a.d)), true, vec2<f32>(global1.a.c, arg_0.a.c)).x), global0.b.x), u_input.b <= ~0u), Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, global0.d.x, u_input.b, global0.d.x), ~vec4<u32>(5550u, global1.a.d.x, 1u, arg_0.a.d.x)), ~global1.c ^ vec4<u32>(arg_0.c, global0.d.x, 54191u, u_input.d.x), _wgslsmith_mult_vec4_u32(global1.c ^ vec4<u32>(0u, u_input.d.x, 0u, global0.d.x), vec4<u32>(global0.d.x, 36420u, arg_0.a.d.x, global0.d.x)))));
    var var_1 = global1.c.yyw;
    let var_2 = Struct_4(Struct_1(vec3<i32>(2147483647i, _wgslsmith_add_i32(0i, arg_0.b.x), arg_0.a.a.x), !global1.a.b, _wgslsmith_f_op_f32(-391f * _wgslsmith_f_op_f32(-1390f - _wgslsmith_f_op_f32(-global1.d.c))), select(vec2<u32>(30897u, 31956u), firstTrailingBit(global0.d), global0.b.x) | reverseBits(vec2<u32>(global0.d.x, 0u))), var_1.x, global1.c, global1.a);
    var var_3 = Struct_2(max(~(~global1.c), min(var_2.c, vec4<u32>(min(global0.d.x, var_0.a.d.x), var_0.a.d.x, ~var_0.c, ~28664u))));
    global0 = func_6(func_1(~_wgslsmith_sub_vec3_i32(var_0.b, arg_0.a.a), func_6(6470i, select(vec3<bool>(var_2.a.b.x, global1.d.b.x, var_2.d.b.x), vec3<bool>(false, global0.b.x, var_0.a.b.x), false), Struct_2(vec4<u32>(arg_0.a.d.x, 14596u, 16084u, 39139u))).a.b).a.a.x & select(var_0.b.x | global0.a.x, var_2.d.a.x, all(vec2<bool>(var_0.a.b.x, arg_0.a.b.x)) || (true == global1.a.b.x)), select(vec3<bool>(true, any(select(vec4<bool>(false, true, false, var_0.a.b.x), vec4<bool>(global1.a.b.x, global1.a.b.x, true, arg_0.a.b.x), vec4<bool>(false, false, false, var_2.a.b.x))), all(vec4<bool>(var_2.d.b.x, var_0.a.b.x, global1.d.b.x, false))), select(vec3<bool>(true, all(vec3<bool>(true, arg_0.a.b.x, false)), !var_2.a.b.x), vec3<bool>(true, all(vec4<bool>(global0.b.x, false, false, false)), !global1.d.b.x), _wgslsmith_f_op_f32(trunc(-366f)) == arg_0.a.c), false), Struct_2(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c, 2040u, 30903u, var_3.a.x), global1.c), max(vec4<u32>(42873u, u_input.b, var_1.x, 1u), var_2.c) & vec4<u32>(4294967295u, 26031u, u_input.d.x, global0.d.x)))).a;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f));
    var var_1 = ~(~(~countOneBits(max(global1.c.x, global0.d.x))));
    global0 = func_7(func_1(~firstTrailingBit(global0.a) >> (firstTrailingBit(u_input.d >> (vec3<u32>(global0.d.x, 1u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<bool>(true, !global1.d.b.x)));
    var_1 = func_7(func_1(vec3<i32>(-45097i, -2147483647i, func_7(func_1(global1.a.a, global1.a.b)).a.x), func_7(Struct_3(Struct_1(vec3<i32>(2147483647i, -49278i, u_input.a), global1.d.b, global0.c, global0.d), abs(global0.a), 18978u)).b)).d.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-573f, -864f)) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.c, -649f), vec2<f32>(235f, 1026f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1316f, -370f) + vec2<f32>(-1944f, global1.d.c))))) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(-1416f, global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + global0.c)))), _wgslsmith_f_op_f32(-var_0)));
    global2 = array<vec4<f32>, 19>();
    global1 = Struct_4(Struct_1(~(~(global1.d.a ^ global1.a.a)), func_3(Struct_4(func_1(vec3<i32>(-2147483647i, -1i, global1.a.a.x), vec2<bool>(false, true)).a, ~32107u, global1.c >> (vec4<u32>(u_input.d.x, 0u, u_input.b, 30577u) % vec4<u32>(32u)), Struct_1(vec3<i32>(95601i, 2147483647i, 1972i), global0.b, var_0, u_input.d.yy)), true != (global0.b.x != global1.d.b.x), vec2<f32>(_wgslsmith_f_op_f32(abs(-185f)), 434f)).zz, _wgslsmith_f_op_f32(round(-758f)), u_input.d.yx), global1.c.x, ~select(_wgslsmith_mod_vec4_u32(global1.c, countOneBits(global1.c)), ~(global1.c | global1.c), !vec4<bool>(true, false, global1.a.b.x, false)), Struct_1(-global1.d.a, vec2<bool>(global0.b.x, !(global1.d.b.x && false)), -1267f, vec2<u32>(firstLeadingBit(global1.a.d.x), 22975u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_vec4_i32(~vec4<i32>(-20984i, 38573i, 1i, u_input.c), firstLeadingBit(vec4<i32>(u_input.c, 1i, -3310i, global0.a.x))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.x, -2147483647i, global0.a.x, 18029i), ~vec4<i32>(-1i, u_input.c, global1.a.a.x, -30570i)), (vec4<i32>(global0.a.x, 17564i, u_input.c, -14893i) >> (~global1.c % vec4<u32>(32u))) | (firstLeadingBit(vec4<i32>(-20689i, u_input.c, -9097i, 0i)) << (vec4<u32>(4294967295u, 1u, global1.c.x, 0u) % vec4<u32>(32u))), true), _wgslsmith_f_op_f32(-var_0), global1.d.d.x, -global0.a.x >> (~u_input.b % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.c - _wgslsmith_f_op_f32(-func_1(global0.a, vec2<bool>(true, global0.b.x)).a.c)) + _wgslsmith_f_op_f32(-404f * global1.d.c)));
}

