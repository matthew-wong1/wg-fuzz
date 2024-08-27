struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, true)), vec3<u32>(1u, 97838u, 30106u), Struct_2(vec3<bool>(true, true, true)));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> vec3<u32> {
    global1 = select(select(vec4<bool>(true, (global0.c.x << (4294967295u % 32u)) >= 0u, global1.x, true), vec4<bool>(all(!global0.a.a.xx), true, !(arg_0 != global0.c.x), false), !(!global1.x | global0.a.a.x)), vec4<bool>(false, -(u_input.b.x >> (4294967295u % 32u)) <= -23898i, !all(!vec4<bool>(global1.x, false, false, false)), _wgslsmith_mult_u32(countOneBits(global0.c.x), 23749u) == ~(~4294967295u)), !select(select(select(vec4<bool>(global1.x, true, global0.a.a.x, global0.a.a.x), vec4<bool>(false, global0.b.a.x, global1.x, global1.x), false), vec4<bool>(global0.b.a.x, global1.x, false, false), !vec4<bool>(false, false, global0.a.a.x, true)), select(!vec4<bool>(true, true, global1.x, global1.x), !vec4<bool>(true, global0.a.a.x, false, global1.x), vec4<bool>(true, true, false, global1.x)), vec4<bool>(arg_1.x >= 525f, false, global1.x, global0.d.a.x || global0.d.a.x)));
    global0 = Struct_3(global0.a, global0.d, _wgslsmith_div_vec3_u32(global0.c, ~global0.c), Struct_2(!vec3<bool>(any(global0.d.a), true, all(global0.a.a))));
    let var_0 = !(!select(vec3<bool>(global1.x, true, global0.a.a.x || global0.d.a.x), select(select(vec3<bool>(true, true, global1.x), vec3<bool>(true, global1.x, true), true), global0.a.a, global0.a.a), global1.x));
    var var_1 = Struct_1(u_input.b.x, vec4<bool>(false, select(!select(true, true, global0.d.a.x), select(u_input.b.x > u_input.a, global0.d.a.x, global1.x), global1.x), var_0.x, false), u_input.b, all(vec4<bool>(!(!global0.a.a.x), !(global1.x && global0.d.a.x), all(!vec4<bool>(false, true, global1.x, var_0.x)), false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, -1451f, 2024f, 747f))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(792f * -1511f)), 1968f, -1000f)));
    global0 = Struct_3(global0.a, global0.d, ~vec3<u32>(4294967295u, global0.c.x, ~arg_0), Struct_2(select(vec3<bool>(var_1.b.x, true, var_1.d), select(select(var_0, global1.xzw, vec3<bool>(global1.x, global0.d.a.x, var_1.d)), !global0.a.a, arg_1.x < arg_1.x), vec3<bool>(var_0.x, true, !global1.x))));
    return ~abs((vec3<u32>(58656u, 4294967295u, global0.c.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c.x, 45523u, global0.c.x), vec3<u32>(global0.c.x, arg_0, global0.c.x)) % vec3<u32>(32u))) >> (abs(_wgslsmith_mod_vec3_u32(global0.c, vec3<u32>(arg_0, global0.c.x, global0.c.x))) % vec3<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_2(arg_1.b.wwz);
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = ~vec2<u32>(0u, global0.c.x);
    let var_3 = select(vec3<bool>(arg_1.d, arg_1.d, false | (global0.c.x != 1u)), global0.b.a, vec3<bool>(false, arg_0, !select(all(vec2<bool>(false, true)), !global0.d.a.x, true)));
    return Struct_3(Struct_2(vec3<bool>(arg_1.a < -2147483647i, 55205u != _wgslsmith_add_u32(global0.c.x, 4294967295u), true)), global0.b, select(vec3<u32>(~abs(var_2.x), 20233u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, 47281u), global0.c.yx) ^ ~global0.c.x), (func_3(global0.c.x, vec4<f32>(arg_2.x, arg_1.e.x, var_1.e.x, arg_1.e.x)) | ~vec3<u32>(28876u, 0u, 0u)) | ((vec3<u32>(var_2.x, var_2.x, 0u) & vec3<u32>(var_2.x, 4294967295u, global0.c.x)) ^ ~vec3<u32>(global0.c.x, global0.c.x, 16427u)), !select(select(vec3<bool>(var_1.b.x, true, var_1.b.x), vec3<bool>(var_3.x, true, true), var_0.a.x), vec3<bool>(var_3.x, false, var_1.b.x), true)), Struct_2(!var_0.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec4<f32> {
    var var_0 = ~select(vec3<u32>(~(0u ^ global0.c.x), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(arg_0.c.x, 4294967295u)), reverseBits(select(global0.c.x, 0u, global0.b.a.x))), vec3<u32>(~global0.c.x << (~global0.c.x % 32u), arg_0.c.x, _wgslsmith_div_u32(14306u, 340u)), any(select(!vec4<bool>(false, arg_3, arg_2.a.x, false), vec4<bool>(true, true, false, false), !vec4<bool>(false, false, arg_0.b.a.x, arg_2.a.x))));
    let var_1 = firstTrailingBit(reverseBits(vec3<u32>(global0.c.x, var_0.x, 27420u)));
    let var_2 = !arg_0.a.a.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-282f, -272f, -485f, -734f), vec4<f32>(-576f, 446f, -1394f, -754f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1120f, 2105f, -367f, 318f) * vec4<f32>(-1000f, 233f, 799f, 928f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-999f, -438f, 1324f, 1100f)), vec4<f32>(259f, 207f, -494f, -1938f), select(vec4<bool>(false, arg_0.d.a.x, false, var_2), vec4<bool>(false, true, arg_2.a.x, true), vec4<bool>(arg_2.a.x, arg_3, global1.x, arg_1.a.x)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1324f, 2674f, 2187f, 1814f), vec4<f32>(-1247f, 194f, 497f, -542f)))))));
    let var_4 = 15185i << (var_0.x % 32u);
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1005f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1803f + var_3.x)))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-1583f - 540f)), _wgslsmith_f_op_f32(-var_3.x))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_1 {
    global0 = func_2(any(!(!arg_0.b)) && ((-417i > -arg_1.x) == (any(global1.zzz) && (global1.x || true))), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(345f, arg_0.e.x)), _wgslsmith_div_f32(348f, -600f), _wgslsmith_div_f32(arg_0.e.x, arg_0.e.x), _wgslsmith_div_f32(arg_0.e.x, 305f)))));
    let var_0 = Struct_1(min(-(i32(-1i) * -arg_0.a), arg_0.a), select(vec4<bool>(!(arg_0.a < -45811i), !all(vec3<bool>(arg_0.b.x, global0.b.a.x, global1.x)), any(global1.zyy), false), vec4<bool>(global0.d.a.x, global1.x && any(vec3<bool>(arg_0.b.x, true, true)), false, true), arg_0.e.x >= _wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(-227f - arg_0.e.x))), ~arg_0.c, !((global0.d.a.x != (global0.c.x != global0.c.x)) && true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(max(791f, 2258f)), _wgslsmith_f_op_f32(1135f * arg_0.e.x), -657f)), vec4<f32>(arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(global0.d, Struct_2(global1.ywy), global0.c, global0.b), global0.b, Struct_2(global1.zxw), false)).x * arg_0.e.x), 1000f, -2345f)));
    return Struct_1(select(-2147483647i, reverseBits(_wgslsmith_clamp_i32(arg_0.c.x, min(arg_0.a, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, arg_1.x, 1i), arg_2.www))), true), vec4<bool>(global1.x, global0.d.a.x, arg_0.b.x, select(any(vec3<bool>(false, false, true)) & !arg_0.d, var_0.b.x, arg_0.b.x)), arg_0.c, arg_0.d | any(global0.a.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_0.e + var_0.e), vec4<f32>(arg_0.e.x, arg_0.e.x, -594f, -659f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.e, vec4<f32>(arg_0.e.x, -793f, -589f, -891f), arg_0.b)) + vec4<f32>(var_0.e.x, 501f, 1000f, 714f))))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = func_5(Struct_1(countOneBits(-1i), !vec4<bool>(true, !global1.x, u_input.b.x != 3796i, true), vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -264i, 68068i), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))), -13819i, ~880i | ~u_input.a, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a)), global0.b.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) - vec4<f32>(arg_0, arg_0, 1000f, arg_0))) + _wgslsmith_f_op_vec4_f32(func_4(func_2(false, Struct_1(-23982i, vec4<bool>(global1.x, global0.d.a.x, global1.x, true), vec4<i32>(2147483647i, -1i, -27676i, -94842i), global1.x, vec4<f32>(-247f, -1087f, -749f, 293f)), vec4<f32>(-1325f, 1221f, arg_0, arg_0)), func_2(global0.a.a.x, Struct_1(u_input.a, vec4<bool>(false, false, global1.x, true), vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.a), global1.x, vec4<f32>(1130f, 644f, arg_0, -1075f)), vec4<f32>(-589f, 1000f, 1096f, -746f)).d, global0.d, global1.x)))), select(-(~u_input.b.yz), abs(select(u_input.b.zy, vec2<i32>(430i, -13505i), global0.a.a.yx)) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(global0.c.zz, global0.c.xy), _wgslsmith_mult_u32(0u, global0.c.x)) % vec2<u32>(32u)), func_2(_wgslsmith_div_f32(arg_0, 350f) > arg_0, Struct_1(-11152i, !vec4<bool>(global0.b.a.x, global1.x, false, true), vec4<i32>(-16245i, 2147483647i, -22990i, u_input.a) | vec4<i32>(u_input.a, -2147483647i, u_input.b.x, u_input.a), true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1090f, arg_0, 1077f, arg_0), vec4<f32>(arg_0, arg_0, -1294f, -667f), global0.a.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(step(arg_0, -631f)), -531f)).d.a.xy), u_input.b);
    return global0.b;
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = u_input.b.wzy;
    let var_1 = select(vec2<i32>(~(-1i), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)) >> (1u % 32u)), select(_wgslsmith_mod_vec2_i32(u_input.b.yw, -_wgslsmith_sub_vec2_i32(u_input.b.yz, vec2<i32>(-1i, u_input.b.x))), u_input.b.yy, global1.yx), global0.b.a.xz);
    var var_2 = Struct_1(i32(-1i) * -min(-var_1.x, func_5(Struct_1(var_0.x, vec4<bool>(false, true, global0.a.a.x, false), vec4<i32>(2147483647i, -1i, -86429i, u_input.a), arg_0.a.x, vec4<f32>(-896f, -464f, 1000f, -1210f)), vec2<i32>(18042i, -19533i), u_input.b).c.x), func_5(func_5(func_5(Struct_1(var_1.x, vec4<bool>(false, false, global1.x, global1.x), vec4<i32>(-2147483647i, 43615i, var_1.x, -66833i), global1.x, vec4<f32>(-1833f, 168f, -1000f, 1000f)), -vec2<i32>(var_0.x, var_1.x), u_input.b), u_input.b.zz, u_input.b), vec2<i32>(_wgslsmith_mod_i32(~8903i, var_1.x), var_0.x), countOneBits(func_5(Struct_1(28532i, vec4<bool>(false, global1.x, true, true), u_input.b, global0.d.a.x, vec4<f32>(1099f, -133f, 165f, 1381f)), vec2<i32>(u_input.a, var_0.x), -vec4<i32>(var_0.x, u_input.a, var_0.x, -32930i)).c)).b, u_input.b, global1.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-434f, 1001f, 502f, 128f)), vec4<f32>(415f, -335f, 1000f, 890f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-269f, 1367f, 182f, -632f) - vec4<f32>(-1454f, 938f, 663f, -1391f)))))));
    var_0 = vec3<i32>(u_input.a, min(abs(_wgslsmith_mult_i32(-26884i, var_0.x)) << ((1u | ~global0.c.x) % 32u), var_0.x), _wgslsmith_clamp_i32(1i, min(var_2.c.x, 26805i), countOneBits(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b.x, var_1.x), 1i << (global0.c.x % 32u)))));
    var var_3 = vec4<bool>(true, true, true, !global1.x & (reverseBits(48690i) != (firstLeadingBit(-25809i) << (reverseBits(global0.c.x) % 32u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(global0.c.x | 101061u);
    global0 = Struct_3(global0.b, func_6(func_1(1583f)), vec3<u32>(global0.c.x, global0.c.x, ~(~(~var_0))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -2087f)));
    var var_1 = 645f;
    let var_2 = func_2(global0.b.a.x, Struct_1(_wgslsmith_mult_i32(~1i, u_input.b.x), !vec4<bool>(60455u <= global0.c.x, global0.b.a.x | global1.x, true, true), u_input.b, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(-497f - 846f), _wgslsmith_div_f32(-1055f, -876f), _wgslsmith_f_op_f32(-533f + -1000f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 767f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-121f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1513f, func_5(Struct_1(20398i, vec4<bool>(true, false, global0.d.a.x, global1.x), u_input.b, true, vec4<f32>(2644f, 822f, 1280f, -350f)), u_input.b.zz, u_input.b).e.x, global1.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-2662f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-482f, 124f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(598f + -577f)))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -567f);
    let x = u_input.a;
    s_output = StorageBuffer(~global0.c.x | var_0, _wgslsmith_mult_u32(83065u, ~(~var_0)), ~func_5(Struct_1(u_input.b.x ^ -2147483647i, !vec4<bool>(true, false, false, global1.x), vec4<i32>(17968i, -3928i, -25727i, 1i) >> (vec4<u32>(0u, global0.c.x, var_2.c.x, global0.c.x) % vec4<u32>(32u)), global0.a.a.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1357f, 385f, -1018f, 347f)))), u_input.b.zx, ~u_input.b).c.wyy, u_input.a);
}

