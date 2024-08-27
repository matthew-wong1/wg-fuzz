struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool>;

var<private> global2: vec2<i32> = vec2<i32>(-35052i, 2147483647i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(Struct_2(1773f, abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(17690u, u_input.c)))), global1.x), u_input.a.xx, reverseBits(_wgslsmith_div_u32(u_input.c, 72294u ^ u_input.c) & _wgslsmith_clamp_u32(u_input.c, ~u_input.c, ~4294967295u)), Struct_1(~(~abs(vec2<i32>(u_input.a.x, u_input.b.x))), select(global1.x, global1.x, select(!global1.x, false, true)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 35560u), min(vec4<u32>(u_input.c, 44843u, 1u, u_input.c), vec4<u32>(0u, 23870u, u_input.c, u_input.c))), _wgslsmith_sub_vec2_u32(~vec2<u32>(9537u, 19433u), countOneBits(~vec2<u32>(u_input.c, u_input.c)))), (-1i >> (~select(4294967295u, u_input.c, global1.x) % 32u)) & -57072i);
    let var_1 = Struct_3(var_0.a, firstLeadingBit(u_input.b), var_0.a.b.x, var_0.d, select(global2.x, _wgslsmith_clamp_i32(u_input.b.x, max(-u_input.b.x, global2.x), abs(u_input.b.x) << (select(u_input.c, 1u, var_0.a.c) % 32u)), all(vec3<bool>(true, false, u_input.b.x < 22044i))));
    global1 = vec3<bool>(true & global1.x, !(!(!global1.x)) != false, any(vec2<bool>(false, true)));
    return 50735i;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    global1 = !vec3<bool>(!(~0u < arg_1.b.x), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f + arg_0)) > 146f);
    global2 = ~vec2<i32>(global2.x, _wgslsmith_add_i32(func_3(), abs(_wgslsmith_mod_i32(-2147483647i, 12064i))));
    let var_0 = reverseBits(_wgslsmith_mult_vec3_u32(firstLeadingBit(~(~vec3<u32>(u_input.c, arg_1.b.x, 9585u))), abs(vec3<u32>(~u_input.c, 18839u, 7333u))));
    var var_1 = !select(vec4<bool>((global2.x ^ global2.x) <= 71728i, 4294967295u > var_0.x, any(!vec4<bool>(global1.x, false, arg_1.c, true)), !(u_input.a.x < u_input.b.x)), select(!select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, false, false, true), false), select(!vec4<bool>(false, global1.x, false, true), select(vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, false, true, arg_1.c), false), !global1.x), true), vec4<bool>(!all(global1.yy), select(global1.x, global1.x, true), false, all(select(vec3<bool>(true, false, global1.x), vec3<bool>(true, false, false), vec3<bool>(true, global1.x, true)))));
    var var_2 = Struct_3(Struct_2(arg_0, abs(vec2<u32>(max(4774u, u_input.c), var_0.x)), arg_1.c), vec2<i32>(2147483647i, -(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -12248i, global2.x, u_input.b.x), vec4<i32>(global2.x, 9241i, 0i, 2147483647i)) | _wgslsmith_div_i32(0i, u_input.a.x))), u_input.c, Struct_1(_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, global2.x), global2.x)), all(select(select(vec4<bool>(false, arg_1.c, arg_1.c, true), vec4<bool>(false, var_1.x, global1.x, global1.x), global1.x), !vec4<bool>(false, arg_1.c, global1.x, false), select(vec4<bool>(global1.x, true, false, false), vec4<bool>(true, var_1.x, arg_1.c, arg_1.c), var_1.x))), ~select(~vec4<u32>(u_input.c, 37007u, arg_1.b.x, var_0.x), vec4<u32>(51638u, 91029u, var_0.x, 4294967295u) << (vec4<u32>(0u, u_input.c, var_0.x, var_0.x) % vec4<u32>(32u)), var_1.x), vec2<u32>(u_input.c << (_wgslsmith_mult_u32(58676u, 1u) % 32u), min(~arg_1.b.x, ~48987u))), abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global2.x, global2.x), global2.x >> (0u % 32u)) & -10570i));
    return Struct_3(Struct_2(arg_1.a, ~vec2<u32>(4294967295u, 16511u) & min(_wgslsmith_mod_vec2_u32(var_2.d.c.xz, var_2.a.b), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.d.c.x, arg_1.b.x), arg_1.b)), all(vec2<bool>(global2.x > -2147483647i, select(var_2.d.b, false, var_1.x)))), var_2.d.a, u_input.c, Struct_1(var_2.d.a, (any(vec4<bool>(false, var_1.x, true, global1.x)) && false) != false, var_2.d.c, ~var_0.zx), firstLeadingBit(var_2.e) << (var_2.d.d.x % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(-423f, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-493f))), ~(~firstTrailingBit(vec2<u32>(18830u, 39382u))), true));
    return Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(~2147483647i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(global2.x, global2.x), global2.x << (var_0.c % 32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, global2.x) | select(var_0.b, vec2<i32>(global2.x, -5375i), global1.yz), vec2<i32>(u_input.b.x ^ -1i, var_0.d.a.x))), global1.x, var_0.d.c, abs(vec2<u32>(33989u, 1u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_3 {
    var var_0 = !(!select(!select(vec3<bool>(arg_2, arg_2, arg_1.b), vec3<bool>(true, false, false), vec3<bool>(arg_1.b, arg_2, false)), select(select(vec3<bool>(false, true, global1.x), vec3<bool>(arg_1.b, global1.x, true), true), select(vec3<bool>(arg_1.b, arg_2, false), vec3<bool>(arg_2, false, true), arg_2), select(vec3<bool>(arg_2, false, global1.x), vec3<bool>(global1.x, arg_2, arg_1.b), false)), u_input.a.x > ~u_input.b.x));
    global0 = any(select(!(!select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, global1.x, true), vec3<bool>(arg_1.b, true, global1.x))), select(vec3<bool>(true | var_0.x, var_0.x, arg_2), !(!vec3<bool>(arg_1.b, global1.x, false)), select(!vec3<bool>(false, false, arg_1.b), vec3<bool>(true, global1.x, true), vec3<bool>(false, arg_1.b, arg_2))), !vec3<bool>(all(vec3<bool>(true, false, false)), var_0.x, true)));
    var var_1 = vec4<u32>(max(firstTrailingBit(select(_wgslsmith_mult_u32(u_input.c, 5813u), arg_1.d.x, false)), u_input.c), arg_1.c.x, ~_wgslsmith_sub_u32(arg_1.c.x, 16617u), arg_0.x);
    global1 = vec3<bool>(u_input.a.x >= -4527i, !func_1().b, !(!(u_input.a.x <= 0i)) && all(select(!vec3<bool>(false, global1.x, global1.x), !vec3<bool>(true, global1.x, arg_1.b), !vec3<bool>(false, arg_2, false))));
    var var_2 = firstTrailingBit(firstLeadingBit(min(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-5282i, -51935i), vec2<i32>(arg_1.a.x, 1i))))) ^ _wgslsmith_div_i32(-_wgslsmith_mod_i32(global2.x, arg_1.a.x) & -min(-38470i, u_input.b.x), -global2.x);
    return Struct_3(func_2(_wgslsmith_div_f32(arg_3, arg_3), func_2(_wgslsmith_f_op_f32(-222f * 1000f), func_2(_wgslsmith_f_op_f32(-arg_3), func_2(arg_3, Struct_2(arg_3, vec2<u32>(arg_0.x, 46835u), arg_2)).a).a).a).a, abs(~(~vec2<i32>(global2.x, u_input.a.x) << (arg_0.xx % vec2<u32>(32u)))), (_wgslsmith_add_u32(select(4294967295u, 24949u, arg_2), 1u) ^ 45302u) ^ 4294967295u, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(963f + _wgslsmith_div_f32(arg_3, 1503f))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, 1000f, true))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -567f), Struct_2(-1821f, vec2<u32>(var_1.x, 19186u), arg_2)).a).a).d, global2.x);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3;
    global2 = vec2<i32>(reverseBits(-global2.x), 0i);
    global2 = vec2<i32>(arg_0, ~arg_0);
    global2 = vec2<i32>(arg_0, ~_wgslsmith_mult_i32(-2147483647i, func_2(-127f, arg_3).e));
    let var_1 = arg_3.a;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f - _wgslsmith_f_op_f32(1837f + 858f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1406f, -335f))))), vec2<u32>(1u, func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(-54848i, global2.x, global2.x), vec3<i32>(global2.x, 0i, global2.x)), func_4(vec4<u32>(u_input.c, 35180u, u_input.c, u_input.c) & vec4<u32>(4294967295u, u_input.c, 14546u, 0u), func_1(), global1.x, _wgslsmith_f_op_f32(365f - 779f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-492f, 206f, -167f))), Struct_2(-1368f, min(vec2<u32>(u_input.c, 1u), vec2<u32>(1u, 1u)), false))), !((-1i >= u_input.b.x) || (global1.x && any(vec3<bool>(global1.x, true, global1.x)))));
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(~u_input.b.x, abs(-1i)), min(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), countOneBits(u_input.b.x))), global2.x), func_4(~(vec4<u32>(1u, u_input.c, u_input.c, u_input.c) ^ firstLeadingBit(vec4<u32>(0u, var_0.b.x, 25414u, 30319u))), Struct_1(u_input.a.zy, func_5(4157i, Struct_3(Struct_2(var_0.a, vec2<u32>(0u, u_input.c), true), u_input.b, 1437u, Struct_1(vec2<i32>(-2147483647i, 2147483647i), global1.x, vec4<u32>(var_0.b.x, var_0.b.x, 4294967295u, 70622u), var_0.b), 42706i), vec3<f32>(1413f, var_0.a, -393f), Struct_2(-603f, var_0.b, global1.x)) >= ~u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(19679u, u_input.c, 1u, 24595u) & vec4<u32>(var_0.b.x, u_input.c, 61254u, var_0.b.x), countOneBits(vec4<u32>(14772u, 0u, u_input.c, var_0.b.x))), var_0.b), all(!(!vec2<bool>(global1.x, var_0.c))), _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-var_0.a)))).b);
    var_1 = vec2<i32>(-1i) * -((u_input.b & (vec2<i32>(-2147483647i, u_input.b.x) | u_input.a.yy)) & u_input.a.zx);
    let var_2 = ~(-vec2<i32>(var_1.x, abs(func_2(-162f, Struct_2(191f, vec2<u32>(4294967295u, var_0.b.x), true)).e)));
    var var_3 = func_2(var_0.a, func_4(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, u_input.c, var_0.b.x, 15233u), vec4<u32>(1u, 1u, 0u, 68695u)), func_4(func_1().c, func_4(~vec4<u32>(4294967295u, var_0.b.x, 51733u, var_0.b.x), func_1(), var_0.b.x != var_0.b.x, _wgslsmith_f_op_f32(903f + 167f)).d, !global1.x, 163f).d, var_0.c != false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1134f - _wgslsmith_f_op_f32(f32(-1f) * -118f)))).a).a;
    let var_4 = vec2<f32>(599f, var_3.a);
    var_3 = func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_4(func_1().c, Struct_1(var_2, global1.x, vec4<u32>(u_input.c, 1u, 14039u, var_3.b.x), var_3.b), func_4(vec4<u32>(var_3.b.x, var_0.b.x, 1u, u_input.c), Struct_1(vec2<i32>(u_input.b.x, 1i), true, vec4<u32>(var_3.b.x, 1u, var_3.b.x, 4294967295u), var_0.b), var_0.c, var_0.a).d.b, var_0.a).a).d.c & (~firstLeadingBit(vec4<u32>(15777u, 53849u, 0u, u_input.c)) & min(vec4<u32>(var_0.b.x, var_3.b.x, u_input.c, var_0.b.x), select(vec4<u32>(u_input.c, 52763u, var_3.b.x, u_input.c), vec4<u32>(var_3.b.x, u_input.c, 37415u, 101702u), vec4<bool>(false, true, var_3.c, true)))), func_1(), !(~(var_1.x ^ -2147483647i) != _wgslsmith_div_i32(global2.x, -10686i | var_1.x)), 1000f).a;
    let var_5 = !(!(!(u_input.a.x > func_2(var_4.x, Struct_2(763f, var_3.b, global1.x)).e)));
    global2 = vec2<i32>(12983i, ~(-7457i | var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~_wgslsmith_sub_u32(u_input.c, 4294967295u)), var_3.b.x, 4294967295u | (~var_0.b.x >> (~var_0.b.x % 32u)), firstLeadingBit(var_0.b.x)), func_2(func_4(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, var_0.b.x, var_3.b.x, 1u), ~vec4<u32>(54685u, 4294967295u, 5318u, 11013u)), Struct_1(firstTrailingBit(vec2<i32>(-1i, 2147483647i)), var_5, ~vec4<u32>(var_3.b.x, 43239u, u_input.c, 1u), ~vec2<u32>(55811u, var_0.b.x)), true, var_3.a).a.a, func_4(~vec4<u32>(4744u, var_3.b.x, var_3.b.x, var_3.b.x), Struct_1(countOneBits(vec2<i32>(var_1.x, u_input.a.x)), true, _wgslsmith_mod_vec4_u32(vec4<u32>(7047u, 26655u, var_0.b.x, var_3.b.x), vec4<u32>(40392u, 4294967295u, var_0.b.x, u_input.c)), select(var_0.b, var_0.b, vec2<bool>(var_5, global1.x))), _wgslsmith_f_op_f32(floor(-543f)) >= _wgslsmith_f_op_f32(445f - 697f), _wgslsmith_div_f32(var_4.x, 2101f)).a).a.b.x);
}

