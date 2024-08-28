struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-10242i, -1000f, vec4<i32>(20668i, 66433i, -8105i, -37322i), vec3<bool>(false, true, false), vec2<u32>(5870u, 4294967295u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global0 = Struct_1(global0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))))), _wgslsmith_add_vec4_i32(global0.c, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d.x, u_input.c), abs(u_input.c)), _wgslsmith_sub_i32(u_input.d.x, 1i), ~(~u_input.d.x), -1i)), global0.d, ~vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 0u, u_input.b, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(10907u, 42923u, u_input.b, global0.e.x), vec4<u32>(u_input.b, global0.e.x, 14558u, u_input.b)))));
    global0 = Struct_1(abs(min(-27644i, ~global0.c.x)) & firstTrailingBit(global0.a), _wgslsmith_f_op_f32(-global0.b), global0.c, global0.d, countOneBits(countOneBits(~vec2<u32>(global0.e.x, 92814u))) & reverseBits(vec2<u32>(0u, ~34350u)));
    var var_0 = Struct_1(global0.c.x | ~(-1i), _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-849f + global0.b)), global0.c, global0.d, vec2<u32>(u_input.b << (_wgslsmith_clamp_u32(24863u, 0u, _wgslsmith_mult_u32(45252u, u_input.b)) % 32u), 4294967295u));
    var_0 = Struct_1(abs(~(_wgslsmith_dot_vec3_i32(var_0.c.yzy, global0.c.zzz) << (~5844u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1338f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(step(407f, 1000f)))))), var_0.c, global0.d, global0.e);
    let var_1 = select(select(vec2<bool>(true, var_0.d.x), select(vec2<bool>(true, !global0.d.x), select(!vec2<bool>(var_0.d.x, global0.d.x), !vec2<bool>(var_0.d.x, true), vec2<bool>(var_0.d.x, true)), _wgslsmith_f_op_f32(min(var_0.b, -672f)) != _wgslsmith_f_op_f32(818f + 285f)), true), !(!var_0.d.xz), select(!select(global0.d.yz, !global0.d.xz, global0.d.xz), vec2<bool>(true, any(select(vec4<bool>(false, global0.d.x, true, false), vec4<bool>(global0.d.x, var_0.d.x, var_0.d.x, false), var_0.d.x))), !select(!var_0.d.yy, vec2<bool>(global0.d.x, global0.d.x), any(var_0.d))));
    return any(vec2<bool>(all(global0.d), any(vec2<bool>(1u == var_0.e.x, -1435f != global0.b))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = ~2147483647i >> (_wgslsmith_add_u32(countOneBits(~(~17922u)), arg_0.e.x >> (~arg_0.e.x % 32u)) % 32u);
    var var_2 = select(vec3<i32>(var_1, 52677i, u_input.a.x), global0.c.xyy, select(select(!(!arg_0.d), vec3<bool>(var_0.d.x, var_0.d.x, true), !(!vec3<bool>(true, true, global0.d.x))), vec3<bool>(func_3(), arg_0.d.x, all(select(vec4<bool>(var_0.d.x, global0.d.x, var_0.d.x, true), vec4<bool>(false, false, var_0.d.x, global0.d.x), vec4<bool>(true, arg_0.d.x, false, true)))), any(select(global0.d.yx, arg_0.d.zx, false && arg_0.d.x))));
    var var_3 = firstLeadingBit(min(14357u, arg_0.e.x));
    var var_4 = var_0.b == -669f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b - 242f), _wgslsmith_f_op_f32(ceil(var_0.b))) + _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(round(var_0.b))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> vec4<f32> {
    var var_0 = ~(~abs(~4294967295u)) & ~(1u ^ (_wgslsmith_sub_u32(arg_1.e.x, 15468u) >> ((92480u ^ arg_1.e.x) % 32u)));
    var_0 = 1u;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1052f)))))), _wgslsmith_f_op_f32(ceil(arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1000f, -356f, arg_1.d.x)), -850f, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(arg_3 * -115f), global0.e.x >= 1u)), 1143f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1104f * global0.b) * _wgslsmith_f_op_f32(-1775f * arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3 - -200f), arg_1.b, !arg_1.d.x))), global0.b, arg_1.b));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(-reverseBits(1i), Struct_1(-u_input.c >> (firstLeadingBit(global0.e.x >> (u_input.b % 32u)) % 32u), _wgslsmith_f_op_f32(func_2(Struct_1(-1i, _wgslsmith_f_op_f32(global0.b * global0.b), global0.c ^ global0.c, select(global0.d, global0.d, global0.d), reverseBits(global0.e)))), max(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(global0.c, vec4<i32>(1i, u_input.c, global0.a, u_input.c)), global0.c), ~global0.c), vec3<bool>(any(global0.d.zy), !global0.d.x, global0.b != -898f), ~(vec2<u32>(72587u, global0.e.x) >> (global0.e % vec2<u32>(32u))) >> (vec2<u32>(global0.e.x, ~4264u) % vec2<u32>(32u))), !vec3<bool>(global0.d.x, false, false), global0.b));
    let var_1 = _wgslsmith_f_op_f32(var_0.x + -481f);
    let var_2 = var_1;
    global0 = Struct_1(max(-1i, -abs(reverseBits(global0.c.x))), -706f, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, arg_0, 0i, min(max(77647i, arg_0), _wgslsmith_div_i32(global0.a, 36311i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, firstLeadingBit(arg_0), -u_input.c, _wgslsmith_mod_i32(global0.a, -12546i)), _wgslsmith_sub_vec4_i32(global0.c, max(vec4<i32>(global0.c.x, global0.a, global0.a, global0.a), vec4<i32>(-15409i, u_input.a.x, -60457i, -30467i))), global0.c)), global0.d, firstLeadingBit(firstTrailingBit(vec2<u32>(u_input.b >> (41009u % 32u), u_input.b))));
    global0 = Struct_1(~(-(~2147483647i)), 1306f, select(global0.c, min(global0.c, select(global0.c, vec4<i32>(global0.a, u_input.d.x, global0.a, 0i) & global0.c, !vec4<bool>(global0.d.x, false, global0.d.x, false))), false), vec3<bool>(true, false, global0.d.x), global0.e);
    return Struct_1(~min(_wgslsmith_mod_i32(1i, 10006i), -1i), global0.b, vec4<i32>(-countOneBits(-1i >> (global0.e.x % 32u)), _wgslsmith_mod_i32(u_input.c, u_input.d.x), -_wgslsmith_mult_i32(0i, 2147483647i) << (global0.e.x % 32u), 0i >> (min(_wgslsmith_sub_u32(14645u, u_input.b), global0.e.x) % 32u)), !(!select(vec3<bool>(global0.d.x, global0.d.x, true), select(global0.d, global0.d, vec3<bool>(false, false, false)), true)), ~_wgslsmith_add_vec2_u32(~(~global0.e), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.e.x, 0u), global0.e)));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    global0 = arg_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_4(u_input.a.x, func_1(~u_input.a.x), global0.d, _wgslsmith_f_op_f32(floor(func_1(-1i).b)))).x)) + 189f);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_1(func_1(0i).a);
    global0 = func_1(arg_1.a);
    var var_1 = global0.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.b, 216f)))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(104f, var_2.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * 1398f)), var_2.x))));
    return func_1(-(_wgslsmith_dot_vec3_i32(var_0.c.yxw, vec3<i32>(0i, u_input.c, var_0.a)) << (82087u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -728f), max(global0.c, firstLeadingBit(min(global0.c, min(global0.c, vec4<i32>(u_input.a.x, global0.c.x, u_input.a.x, -28672i))))), global0.d, global0.e);
    global0 = var_0;
    let var_1 = global0.c.wz;
    global0 = func_6(!(!var_0.d.xz), Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 2147483647i, var_0.a), var_0.c.ywz) & u_input.d.x, var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(global0.a, 780f, !global0.d, func_1(8482i)))), ~firstTrailingBit(vec4<i32>(u_input.d.x, 1i, global0.c.x, -2147483647i)), vec3<bool>(true, true, true), vec2<u32>(~u_input.b, global0.e.x)));
    var var_2 = Struct_1(2147483647i, _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(global0.b - global0.b)), func_6(!vec2<bool>(select(global0.d.x, global0.d.x, true), select(var_0.d.x, var_0.d.x, false)), func_6(func_6(vec2<bool>(true, false), Struct_1(-1i, global0.b, global0.c, vec3<bool>(var_0.d.x, true, true), vec2<u32>(var_0.e.x, 35890u))).d.yy, Struct_1(-var_0.a, global0.b, vec4<i32>(var_1.x, var_1.x, u_input.c, global0.a), vec3<bool>(true, true, true), firstLeadingBit(vec2<u32>(4294967295u, u_input.b))))).c, global0.d, abs(_wgslsmith_sub_vec2_u32(global0.e ^ var_0.e, var_0.e)) & select(~vec2<u32>(0u, u_input.b), vec2<u32>(~31318u, ~4294967295u), var_0.d.x));
    var_2 = func_1(~u_input.a.x);
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(global0.c.xxx)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i, 0i, 67864i), max(var_1.x, var_1.x), 47451i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1592f, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + 914f) - _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b)))))), 5199i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, _wgslsmith_f_op_f32(ceil(global0.b)), _wgslsmith_f_op_f32(-var_2.b))))));
}

