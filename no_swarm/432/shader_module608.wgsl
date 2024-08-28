struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(145f, -609f);

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> u32 {
    let var_0 = true;
    var var_1 = arg_0.a.a;
    var_1 = Struct_3(arg_0.a.c, Struct_2(max(-19512i >> (arg_1 % 32u), arg_0.a.a.b.a)), countOneBits(firstLeadingBit(abs(~vec3<u32>(arg_1, 31406u, u_input.c.x)))));
    var var_2 = Struct_1(-8770i);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x))))));
    return var_1.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: u32) -> vec4<u32> {
    var var_0 = Struct_1(29331i);
    var var_1 = u_input.a.x;
    let var_2 = var_0.a;
    global0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 813f)));
    var var_3 = vec3<bool>(all(select(vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !(firstTrailingBit(~70097u) != ~77168u), !any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))));
    return min((_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3, u_input.b, arg_3, 36994u), vec4<u32>(0u, arg_3, 78u, u_input.b)), vec4<u32>(4294967295u, 25143u, 1u, 25602u)) ^ ~min(vec4<u32>(1u, arg_3, 14699u, 4294967295u), vec4<u32>(arg_3, 1u, 76186u, 4294967295u))) & ~(~(vec4<u32>(u_input.b, 37509u, u_input.c.x, arg_3) & vec4<u32>(arg_3, arg_3, 84285u, 4294967295u))), abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(49496u, 1u, 61993u, arg_3) & vec4<u32>(arg_3, arg_3, 0u, 93167u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), abs(vec4<u32>(arg_3, 34343u, u_input.c.x, 1u)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = u_input.c & ~((vec2<u32>(u_input.b, u_input.c.x) & vec2<u32>(9642u, u_input.b)) >> (u_input.c % vec2<u32>(32u)));
    var var_1 = u_input.c.x;
    let var_2 = ~firstLeadingBit(~37592u);
    var var_3 = -_wgslsmith_div_vec4_i32(-vec4<i32>(arg_1.a, 36047i, -16325i, -64037i), ~(vec4<i32>(arg_1.a, u_input.a.x, 35083i, 2147483647i) ^ vec4<i32>(18650i, -3334i, -52300i, u_input.a.x)) << (func_4(Struct_1(u_input.d.x), global0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(-375f, global0.x)), func_3(Struct_5(Struct_4(Struct_3(arg_1, Struct_2(2404i), vec3<u32>(var_0.x, 11782u, 22186u)), u_input.a, arg_1, true, Struct_2(arg_1.a)), false), u_input.c.x)) % vec4<u32>(32u)));
    let var_4 = Struct_3(arg_1, Struct_2(u_input.d.x), ~vec3<u32>(firstTrailingBit(4294967295u), 1u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(14333u, 1u))) ^ func_4(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, -43507i), vec4<i32>(arg_1.a, var_3.x, 2147483647i, u_input.d.x))), _wgslsmith_f_op_f32(813f - 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 401f)), 4294967295u).zzx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 1072f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(973f - 366f), _wgslsmith_div_f32(global0.x, global0.x)))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec2<bool>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_1.x, arg_3.x, false, false), Struct_1(2147483647i))), global0.x))));
    var var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~4294967295u, u_input.b), _wgslsmith_mult_vec2_u32(u_input.c, _wgslsmith_clamp_vec2_u32(vec2<u32>(12780u, u_input.c.x), u_input.c, abs(vec2<u32>(4294967295u, u_input.c.x)))));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_0, -arg_2.x), -select(select(1i, 2147483647i, arg_3.x), ~28218i, true), abs(-28721i)));
    var var_2 = ~vec4<u32>(~_wgslsmith_add_u32(4294967295u | var_0.x, select(4294967295u, 15115u, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, var_0.x), min(0u, u_input.b)), ~u_input.c), u_input.c.x, ~26558u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f));
    return vec3<bool>(!(true == arg_1.x), !(0i == (-arg_2.x ^ (11848i << (var_0.x % 32u)))), !(arg_1.x & true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(vec3<bool>(true, true, true), func_1(u_input.a.x, vec4<bool>(false, false, true, true), ~vec3<i32>(u_input.a.x, u_input.a.x, -8412i), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), all(vec4<bool>(false, true, false, true))), select(vec3<bool>(all(vec2<bool>(false, true)), select(false, false, true), any(vec2<bool>(false, false))), vec3<bool>(true, true, func_1(-18277i, vec4<bool>(false, false, false, true), vec3<i32>(u_input.a.x, 0i, u_input.d.x), vec2<bool>(true, false)).x), true), vec3<bool>(!(u_input.a.x < -46263i), u_input.d.x == abs(-22171i), true)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1804f))), var_0)), 1268f);
    var var_1 = Struct_2(i32(-1i) * -u_input.d.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(max(-172f, global0.x))))) - 341f);
    var_1 = Struct_2(-_wgslsmith_dot_vec3_i32(~select(vec3<i32>(u_input.d.x, 0i, u_input.a.x), vec3<i32>(41777i, u_input.a.x, u_input.a.x), vec3<bool>(false, var_0, var_0)), -vec3<i32>(-27981i, -12294i, 33876i)));
    var var_3 = Struct_4(Struct_3(Struct_1(var_1.a), Struct_2(1i), ~select(vec3<u32>(u_input.b, 62720u, u_input.c.x), vec3<u32>(1u, 1u, 1u), var_0)), u_input.d, Struct_1(2147483647i), !func_1(-(i32(-1i) * -1i), !(!vec4<bool>(var_0, false, false, true)), firstTrailingBit(vec3<i32>(41477i, var_1.a, 19165i)), func_1(abs(-32237i), !vec4<bool>(var_0, var_0, true, true), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a, u_input.a.x, -2147483647i), vec3<i32>(var_1.a, 88161i, -1039i), vec3<i32>(-30181i, 0i, 4699i)), func_1(var_1.a, vec4<bool>(var_0, false, true, true), vec3<i32>(2147483647i, 0i, var_1.a), vec2<bool>(var_0, var_0)).xz).xx).x, Struct_2(var_1.a));
    let var_4 = 0u ^ ~var_3.a.c.x;
    var var_5 = Struct_5(Struct_4(Struct_3(Struct_1(max(27421i, 25239i)), Struct_2(1i << (var_3.a.c.x % 32u)), var_3.a.c), reverseBits(vec2<i32>(-u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_3.e.a, 0i, var_1.a), vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, 25379i)))), var_3.a.a, !var_3.d, Struct_2(_wgslsmith_sub_i32(var_3.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-14633i, -27538i, 50104i), vec3<i32>(-1i, 0i, 628i))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(countOneBits(-81279i)), ~(~select(vec4<u32>(var_4, 4294967295u, var_5.a.a.c.x, var_4), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 47872u, var_4, 4294967295u), vec4<u32>(1u, 9212u, 22601u, 4230u)), !vec4<bool>(var_3.d, var_3.d, true, false))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(240f, _wgslsmith_f_op_f32(floor(-1519f)), -809f, -994f))), vec2<i32>(~_wgslsmith_clamp_i32(u_input.a.x, var_3.b.x ^ var_3.e.a, var_1.a), _wgslsmith_sub_i32(var_1.a, var_3.a.b.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-620f - 493f), _wgslsmith_f_op_f32(ceil(1000f))) * _wgslsmith_f_op_f32(floor(global0.x))), 595f));
}

