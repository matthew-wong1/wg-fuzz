struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2 = Struct_2(Struct_1(2147483647i), vec3<u32>(69471u, 3288u, 0u), Struct_1(-24904i), Struct_1(3138i));

var<private> global2: Struct_4;

var<private> global3: array<Struct_5, 2>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec3<bool> {
    var var_0 = global1.a;
    var var_1 = abs(select(arg_1, arg_1, true)) >> (countOneBits(u_input.b.x) % 32u);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(1173f)), _wgslsmith_f_op_f32(min(-1512f, -799f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1525f + -1443f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, 643f, -1221f))), vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1957f, -1000f)))), 1362f, 779f))), arg_0));
    return !select(select(vec3<bool>(false, any(vec4<bool>(arg_0, arg_0, false, arg_0)), false), vec3<bool>(all(vec4<bool>(global2.a, true, global0.x, arg_0)), arg_0, any(vec4<bool>(global0.x, global0.x, true, global2.a))), vec3<bool>(u_input.a.x < global1.a.a, true, true)), vec3<bool>(true, true, (u_input.a.x > global1.c.a) && !arg_0), any(vec4<bool>(any(global0.zz), arg_0, global2.a, true)));
}

fn func_2() -> vec3<bool> {
    global0 = !select(!select(!vec3<bool>(true, global0.x, global2.a), !vec3<bool>(true, global0.x, true), !vec3<bool>(global2.a, global0.x, global0.x)), select(!func_3(true, 1395u), select(func_3(false, global1.b.x), !vec3<bool>(global0.x, global2.a, true), false), func_3(true, countOneBits(0u))), global2.a);
    let var_0 = u_input.b.x;
    return !func_3(true, ~(abs(global1.b.x) >> (_wgslsmith_clamp_u32(global1.b.x, 1u, global1.b.x) % 32u)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-351f, _wgslsmith_f_op_f32(-arg_0)), arg_0, true)) - 880f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1044f)))));
    global0 = !(!func_2());
    var var_1 = global1.c;
    var_1 = global1.a;
    var var_2 = vec4<u32>(global1.b.x, ~global1.b.x, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, reverseBits(71132u))), 4294967295u) & _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(1u, global1.b.x, u_input.b.x, global1.b.x)) | vec4<u32>(global1.b.x, u_input.b.x, arg_1.x, u_input.b.x), select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 0u), vec4<u32>(19329u, arg_1.x, u_input.b.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 22511u, global1.b.x, arg_1.x), vec4<u32>(u_input.b.x, 19738u, 0u, arg_1.x)), arg_2.a), select(firstTrailingBit(vec4<u32>(u_input.b.x, 18373u, u_input.b.x, arg_1.x)), ~vec4<u32>(0u, 1u, u_input.b.x, arg_1.x), vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_div_u32(u_input.b.x, 0u), global1.b.x, global1.b.x), vec4<u32>(0u, firstTrailingBit(4294967295u), _wgslsmith_mod_u32(0u, arg_1.x), ~1u)));
    return Struct_3(vec4<bool>(global0.x || any(!vec3<bool>(false, arg_2.a, false)), !arg_2.a, global0.x, !func_2().x), Struct_2(Struct_1(-1i), ~vec3<u32>(firstLeadingBit(1u), ~76260u, arg_1.x >> (global1.b.x % 32u)), global1.d, Struct_1(-(i32(-1i) * -2147483647i))), 72594u, Struct_2(global1.d, vec3<u32>(16456u, global1.b.x, ~0u >> (~global1.b.x % 32u)), Struct_1(1i ^ global1.a.a), Struct_1(0i)), select(select(vec4<bool>(false, global2.a | true, true, global0.x), !vec4<bool>(arg_2.a, false, arg_2.a, true), !vec4<bool>(false, global2.a, true, arg_2.a)), !(!(!vec4<bool>(false, false, global2.a, global2.a))), true));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = Struct_3(select(vec4<bool>(false, all(arg_2.a.zwx), !arg_2.a.x, false), vec4<bool>(arg_2.a.x, true, arg_2.a.x, global0.x), select(vec4<bool>(true, false, true, global2.a), func_1(arg_0, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b.b.x, 47876u, 45984u), arg_2.b.b), Struct_4(global2.a)).e, arg_2.e)), arg_2.b, _wgslsmith_add_u32(~(~_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, 13508u))), u_input.b.x), func_1(_wgslsmith_f_op_f32(abs(arg_3.x)), ~((vec3<u32>(arg_2.c, arg_2.b.b.x, 57681u) >> (global1.b % vec3<u32>(32u))) ^ ~vec3<u32>(65004u, 5491u, 63298u)), Struct_4(global2.a)).d, !arg_2.a);
    var_0 = arg_2;
    var var_1 = select(vec3<bool>(arg_2.a.x, var_0.e.x, -508f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1430f - arg_0)))), select(arg_2.a.zzz, func_2(), vec3<bool>(~var_0.d.a.a < -1i, any(vec4<bool>(false, global2.a, false, global2.a)), arg_3.x == arg_3.x)), func_1(_wgslsmith_div_f32(1039f, arg_0), var_0.b.b, Struct_4(true)).a.wyw);
    var_0 = arg_2;
    var var_2 = _wgslsmith_mod_i32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_f32(-1937f * arg_3.x)), u_input.b, Struct_4(true)).b.d.a, -_wgslsmith_mult_i32(-1i, 10335i));
    return (max(~(~vec4<u32>(0u, arg_2.c, global1.b.x, var_0.c)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, 112134u, 68893u), ~vec4<u32>(0u, 84896u, var_0.c, 4294967295u))) >> (((~vec4<u32>(16201u, global1.b.x, 33815u, 45589u) | vec4<u32>(var_0.d.b.x, 81241u, 29972u, u_input.b.x)) & ~(vec4<u32>(83969u, 4294967295u, arg_2.c, 28974u) ^ vec4<u32>(1u, global1.b.x, var_0.b.b.x, 0u))) % vec4<u32>(32u))) ^ ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.d.b.x, arg_2.b.b.x, 1u, 2350u) ^ vec4<u32>(arg_2.d.b.x, global1.b.x, global1.b.x, 84027u), ~vec4<u32>(0u, 0u, 26917u, global1.b.x), ~vec4<u32>(var_0.c, 1u, arg_2.d.b.x, var_0.d.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = firstLeadingBit(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2064f - 729f))), ~countOneBits(~vec3<i32>(u_input.a.x, 39016i, 10377i)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-846f - 128f) - -688f), global1.b | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), global1.b), Struct_4(true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1151f, 927f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1146f, 2095f) - vec2<f32>(-195f, -810f)))))));
    var var_2 = ~vec2<u32>(~var_1.x, u_input.b.x);
    var var_3 = func_1(-403f, u_input.b, Struct_4(var_0)).e;
    var_2 = vec2<u32>(1u, 43697u);
    global3 = array<Struct_5, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.zw, max(global1.b.yx, u_input.b.xx), select(!any(var_3.xwx), all(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global2.a, false, false), vec4<bool>(true, false, var_3.x, false))), _wgslsmith_f_op_f32(step(724f, 1000f)) < _wgslsmith_f_op_f32(ceil(1338f)))), vec3<i32>(7029i, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(62144i, -1i, u_input.a.x, u_input.a.x)), ~(~vec4<i32>(global1.a.a, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c.a, 0i, 12239i, global1.d.a), vec4<i32>(u_input.a.x, global1.a.a, global1.a.a, global1.d.a)) << (~vec4<u32>(48136u, var_2.x, 4294967295u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(global1.c.a, 1i, u_input.a.x, global1.a.a))), vec4<u32>(u_input.b.x, var_2.x, 0u, func_1(_wgslsmith_div_f32(-205f, 1497f), var_1.wxz, Struct_4(any(var_3.yyz))).d.b.x), u_input.a.x ^ ~_wgslsmith_mult_i32(-1581i, min(26389i, global1.c.a)), var_1);
}

