struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
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

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = ~arg_1.x >> (~38607u % 32u);
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b << (arg_1 % vec4<u32>(32u)), reverseBits(u_input.b)), select(u_input.b | vec4<i32>(2147483647i, 85175i, global0.c, -10293i), abs(u_input.b), vec4<bool>(global0.b, global0.b, true, false))), ~(-2147483647i), 1i, -2147483647i), u_input.b);
    global0 = Struct_1(_wgslsmith_mult_i32(select(~(-38985i), 54528i, _wgslsmith_f_op_f32(-2180f * 603f) == _wgslsmith_f_op_f32(-arg_0)), ~abs(var_1.x)), !global0.b & global0.b, _wgslsmith_dot_vec4_i32(select(vec4<i32>(global0.d.x, u_input.c.x, var_1.x, u_input.e.x) >> ((vec4<u32>(1u, 58467u, var_0, arg_1.x) >> (vec4<u32>(arg_1.x, var_0, var_0, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.b, !select(vec4<bool>(false, global0.b, global0.b, true), vec4<bool>(global0.b, global0.b, false, global0.b), true)), vec4<i32>(var_1.x, _wgslsmith_mult_i32(var_1.x, u_input.b.x), _wgslsmith_dot_vec2_i32(global0.d, vec2<i32>(14237i, var_1.x)), min(-70525i, global0.c)) | _wgslsmith_mult_vec4_i32(u_input.b, ~u_input.b)), u_input.b.wy);
    global0 = Struct_1(_wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, -2147483647i, var_1.x), ~u_input.e), u_input.b.x), global0.b, -_wgslsmith_mult_i32(~(~u_input.a), max(var_1.x, global0.d.x ^ var_1.x)), abs(min(u_input.e.zx, _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c, 2147483647i), vec2<i32>(-78243i, 1i), vec2<i32>(3050i, var_1.x))) >> (arg_1.xy % vec2<u32>(32u))));
    var var_2 = Struct_2(vec2<bool>(!(!select(global0.b, global0.b, true)), all(!vec4<bool>(false, global0.b, false, global0.b))), false);
    return select(-vec2<i32>(-2147483647i, (0i << (arg_1.x % 32u)) ^ -global0.c), firstTrailingBit(u_input.c.yx), var_2.a);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(min(~(~reverseBits(vec2<i32>(arg_0.c, global0.a))), vec2<i32>(0i, global0.a)), u_input.e);
    let var_1 = -var_0.a;
    let var_2 = Struct_3(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-740f - 1301f), _wgslsmith_f_op_f32(floor(-319f)), true))), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_vec3_i32(var_0.b >> (~select(vec3<u32>(0u, 83326u, 4294967295u), vec3<u32>(46890u, 1u, 1u), global0.b) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(~var_0.b, abs(u_input.c), vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_0.a.x, u_input.b.x, 7028i, arg_0.d.x)), ~global0.a))));
    var_0 = var_2;
    var var_3 = Struct_1(_wgslsmith_div_i32(~(~var_0.b.x) | ~countOneBits(var_1.x), ~(i32(-1i) * -2147483647i)), !(!any(vec4<bool>(arg_0.b, false, true, false))), 10760i, vec2<i32>(var_2.a.x, _wgslsmith_dot_vec4_i32(max(-vec4<i32>(var_0.b.x, 1i, var_1.x, -2147483647i), vec4<i32>(-2147483647i, 0i, -2147483647i, 0i)), ~vec4<i32>(arg_0.d.x, 64334i, 1i, 23052i))));
    return Struct_2(vec2<bool>(all(!vec4<bool>(true, global0.b, var_3.b, false)), true), !any(select(vec2<bool>(true, true), select(vec2<bool>(global0.b, true), vec2<bool>(true, false), vec2<bool>(false, true)), !vec2<bool>(true, global0.b))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_div_i32(1i, -25866i), select(u_input.c.x > -20078i, arg_2.x, !all(arg_1.ywz)) | true, global0.c, -func_3(-670f, vec4<u32>(~0u, 0u, ~4294967295u, 1u)));
    let var_0 = vec2<u32>(~_wgslsmith_add_u32(~17061u >> (~4294967295u % 32u), 1u), 1u);
    global0 = Struct_1(arg_0.x, !func_2(Struct_1(16328i, arg_1.x, -2147483647i, reverseBits(vec2<i32>(arg_0.x, global0.c)))).b, -72921i, global0.d);
    let var_1 = countOneBits(var_0.x);
    global0 = Struct_1(0i, arg_3.b, arg_0.x, abs(func_3(-816f, _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 4294967295u, var_0.x, var_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(20165u, var_0.x, 1u, var_1), vec4<u32>(4294967295u, var_1, 0u, 65839u), vec4<u32>(41424u, 12296u, var_0.x, var_1))))));
    return Struct_1(-24258i, !func_2(Struct_1(-u_input.d.x, all(arg_3.a), ~global0.c, max(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(global0.c, arg_0.x)))).b, -63871i, arg_0);
}

fn func_1() -> Struct_1 {
    global0 = func_4(global0.d, !vec4<bool>(global0.b, true, global0.b | select(true, false, global0.b), !(global0.b | global0.b)), !vec2<bool>(global0.b, global0.b), func_2(Struct_1(20195i, true, global0.c, global0.d)));
    let var_0 = func_2(func_4(~vec2<i32>(1i, -2147483647i), !select(vec4<bool>(global0.b, false, false, global0.b), vec4<bool>(global0.b, global0.b, global0.b, false), all(vec3<bool>(global0.b, true, true))), !vec2<bool>(global0.b, !global0.b), Struct_2(vec2<bool>(false, true), any(vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1107f);
    global0 = func_4(vec2<i32>(_wgslsmith_div_i32(global0.c, _wgslsmith_dot_vec2_i32(-global0.d, -u_input.b.wx)), -abs(u_input.a)), !vec4<bool>(global0.b, !func_2(Struct_1(global0.d.x, false, u_input.d.x, global0.d)).b, all(vec3<bool>(false, false, global0.b)) || true, false), !vec2<bool>(!(global0.b | var_0.b), true), func_2(func_4(vec2<i32>(-u_input.a, u_input.b.x), select(vec4<bool>(global0.b, true, true, var_0.a.x), vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(false, false, true, false)), vec2<bool>(var_0.b | false, any(vec4<bool>(global0.b, false, var_0.a.x, true))), func_2(Struct_1(0i, true, 25171i, u_input.c.zz)))));
    var var_2 = reverseBits(_wgslsmith_div_u32(~(~45680u) << (_wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_clamp_u32(38893u, 4294967295u, 4294967295u)) % 32u), ~0u));
    return func_4(vec2<i32>(global0.c, -(~_wgslsmith_sub_i32(u_input.e.x, global0.a))), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.a.x, !var_0.b, !var_0.a.x, true), var_0.b), vec2<bool>(true, true), func_2(Struct_1(35069i, true, i32(-1i) * -u_input.a, global0.d)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = ~vec4<u32>(1u, 1u, 1u, 1u);
    var var_1 = _wgslsmith_add_vec4_i32(u_input.b, firstTrailingBit(u_input.b));
    var_1 = vec4<i32>(var_1.x, -(~(~1i)), countOneBits(select(_wgslsmith_dot_vec2_i32(global0.d, vec2<i32>(global0.a, 1i)), ~0i, var_0.x > var_0.x)), 0i) ^ ((u_input.b & ((u_input.b >> (vec4<u32>(var_0.x, 1u, 1u, 12673u) % vec4<u32>(32u))) | firstTrailingBit(u_input.b))) ^ vec4<i32>(var_1.x, u_input.a, arg_0.c, -2147483647i));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1118f + 236f) + -560f) - _wgslsmith_f_op_f32(f32(-1f) * -2405f)))), _wgslsmith_f_op_f32(-1f), 1f);
    global0 = func_4(vec2<i32>(min(select(~global0.d.x, arg_0.d.x, !arg_0.b), func_1().c), -1i), !select(!vec4<bool>(true, true, false, arg_1.b), !vec4<bool>(true, global0.b, global0.b, true), !global0.b), select(!vec2<bool>(!arg_1.b, arg_0.b), vec2<bool>(!arg_1.b && false, arg_0.b), !any(vec4<bool>(arg_1.b, false, false, true)) == true), Struct_2(vec2<bool>(!(arg_0.b & arg_1.b), true), false));
    return select(select(!select(select(vec4<bool>(global0.b, true, true, global0.b), vec4<bool>(false, global0.b, arg_0.b, false), vec4<bool>(arg_0.b, global0.b, false, false)), select(vec4<bool>(arg_0.b, true, arg_1.b, false), vec4<bool>(global0.b, true, false, false), vec4<bool>(true, true, arg_0.b, false)), select(vec4<bool>(arg_1.b, arg_0.b, true, arg_0.b), vec4<bool>(global0.b, arg_1.b, global0.b, global0.b), vec4<bool>(false, arg_0.b, arg_1.b, arg_0.b))), vec4<bool>(true, true, true, !select(global0.b, true, arg_0.b)), true != any(vec4<bool>(arg_1.b, arg_1.b, false, true))), !(!select(select(vec4<bool>(true, arg_1.b, global0.b, true), vec4<bool>(arg_1.b, global0.b, true, true), true), !vec4<bool>(global0.b, false, false, arg_1.b), true)), vec4<bool>(func_4(firstTrailingBit(vec2<i32>(-19444i, var_1.x)), select(!vec4<bool>(arg_0.b, false, false, true), select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), vec4<bool>(arg_0.b, false, true, true), global0.b), true), vec2<bool>(func_1().b, var_2.x == var_2.x), func_2(func_1())).b, select(!all(vec3<bool>(true, true, arg_0.b)), !global0.b, arg_0.b), arg_0.b, false & !any(vec3<bool>(arg_0.b, arg_0.b, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(16409i, all(func_5(func_1(), Struct_1(func_3(561f, vec4<u32>(4294967295u, 22458u, 1u, 8226u)).x, func_4(vec2<i32>(u_input.e.x, u_input.c.x), vec4<bool>(global0.b, global0.b, global0.b, global0.b), vec2<bool>(true, true), Struct_2(vec2<bool>(global0.b, global0.b), global0.b)).b, ~u_input.a, global0.d))), 1i << (_wgslsmith_div_u32(~_wgslsmith_div_u32(0u, 1u), 4294967295u) % 32u), abs(reverseBits(u_input.d & u_input.d)));
    var var_0 = select(global0.b, select(!global0.b, all(vec3<bool>(false, false, false)) || !global0.b, any(vec2<bool>(false, true)) || global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-330f, -190f))) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f * -480f)))));
    var_0 = !select(true, func_1().b, global0.b) & !func_4(_wgslsmith_add_vec2_i32(min(vec2<i32>(-2147483647i, u_input.e.x), u_input.d), firstTrailingBit(vec2<i32>(2147483647i, -15207i))), vec4<bool>(global0.b == true, true, !global0.b, global0.b), select(func_2(Struct_1(global0.c, global0.b, -1i, vec2<i32>(global0.a, 0i))).a, !vec2<bool>(global0.b, false), global0.b), func_2(func_4(global0.d, vec4<bool>(global0.b, global0.b, false, true), vec2<bool>(true, false), Struct_2(vec2<bool>(global0.b, true), global0.b)))).b;
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), vec4<i32>(-2147483647i, u_input.d.x, u_input.e.x, -26209i) >> (vec4<u32>(4294967295u, 1u, 4294967295u, 20293u) % vec4<u32>(32u))), u_input.b | abs(vec4<i32>(-23054i, 2147483647i, u_input.d.x, 37324i))), _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(2147483647i, 87572i | u_input.d.x, u_input.b.x << (4294967295u % 32u), global0.c))), true, global0.c, vec2<i32>(~firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), -_wgslsmith_mult_i32(~(-16331i), -51497i)));
    var var_2 = (min(firstTrailingBit(4294967295u) >> (4294967295u % 32u), firstLeadingBit(_wgslsmith_div_u32(27471u, 60985u))) | ~0u) | 0u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1257f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1265f) + _wgslsmith_div_f32(1618f, -538f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1301f, _wgslsmith_f_op_f32(ceil(383f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(966f, -332f)))))) - 169f);
    var var_4 = var_1;
    let var_5 = 242f;
    let x = u_input.a;
    s_output = StorageBuffer(var_5);
}

