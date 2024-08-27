struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 39202i);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1044f, -1000f, -1470f), true, vec2<u32>(68359u, 43329u)), -13654i, vec3<bool>(false, false, true));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(1000f, -503f, -558f), false, vec2<u32>(0u, 1u));

var<private> global3: vec2<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = vec2<bool>(true, !global1.a.b);
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a.a), global0.x <= ~(~1i), ~_wgslsmith_add_vec2_u32(global2.c, vec2<u32>(global2.c.x, 53948u)) << (~(vec2<u32>(1u, global1.a.c.x) ^ vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u))), _wgslsmith_mod_i32(global1.b, abs(global0.x)), vec3<bool>(true, false, global1.a.b));
    var var_1 = false;
    var var_2 = -vec3<i32>(2147483647i, -2147483647i, abs(_wgslsmith_mult_i32(~(-1i), 0i)));
    var var_3 = true;
    return abs(reverseBits(64766u));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: i32) -> vec3<f32> {
    global0 = -vec2<i32>(arg_2, global1.b);
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), true));
    let var_1 = select(global1.c.x, !arg_0 && !select(global1.a.b, arg_0, false), ~4294967295u == ~func_3());
    let var_2 = select(select(!(!select(vec4<bool>(arg_1.x, false, false, var_1), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), select(select(!vec4<bool>(arg_0, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(global1.c.x, true, false, arg_1.x), vec4<bool>(global2.b, arg_0, false, global2.b), true)), vec4<bool>(var_1, all(vec2<bool>(global2.b, var_1)), true, true), (1i <= arg_2) | var_1), vec4<bool>(all(!global1.c), all(vec4<bool>(true, arg_0, var_1, global2.b)), !(global1.b != -2147483647i), !(!arg_1.x))), !select(select(!vec4<bool>(var_1, arg_1.x, false, false), vec4<bool>(true, global1.c.x, var_1, true), var_1), select(vec4<bool>(false, arg_0, global2.b, arg_1.x), vec4<bool>(var_1, true, global2.b, global2.b), any(vec2<bool>(false, arg_1.x))), !any(vec3<bool>(false, global1.c.x, global1.a.b))), vec4<bool>(!(true | arg_1.x) || all(!global1.c), global2.b, arg_1.x, false));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(select(713f, 917f, var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a.x, global1.a.a.x, global2.b)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1.a.a.x, -1715f), _wgslsmith_f_op_f32(1033f - 1000f))))));
    return global1.a.a;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    global2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + global2.a.x) + -1183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), true, max(vec2<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(arg_2.c, vec2<u32>(31661u, 32473u))), 53300u), ~vec2<u32>(1u, ~4294967295u)));
    let var_0 = Struct_2(arg_3, -_wgslsmith_sub_i32(~global0.x, global1.b) & -40390i, vec3<bool>(!any(!vec4<bool>(true, arg_1.x, false, false)), all(vec2<bool>(true, true)), false));
    global3 = vec2<f32>(global3.x, -170f);
    let var_1 = vec3<f32>(-855f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a.x)) * _wgslsmith_div_f32(1330f, -1288f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f)));
    let var_2 = vec3<bool>(arg_3.b, global1.a.b, arg_2.b);
    return arg_2.a.xy;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(-2147483647i, !vec3<bool>(true, false, all(global1.c)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - -1070f), -282f, -1000f), all(!vec3<bool>(false, global1.c.x, true)), select(~global1.a.c, arg_0.c, 5476u < arg_3)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_0.b, vec2<bool>(false, false), -1i)) + vec3<f32>(499f, 1850f, -214f)), true, select(vec2<u32>(arg_3, arg_0.c.x), ~arg_0.c, !global1.c.xx)))));
    var var_0 = ~(-1i);
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1585f, arg_0.a.x, -2598f) * global2.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(856f, 864f, global3.x) - vec3<f32>(-803f, 1354f, 1318f)))))), all(!(!global1.c.yz)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(78322u), ~40890u), select(~vec2<u32>(global2.c.x, 85985u), max(global1.a.c, vec2<u32>(4294967295u, 12581u)), vec2<bool>(global2.b, false))), max(arg_0.c, ~vec2<u32>(arg_2.x, arg_0.c.x)) | _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 20650u), vec2<u32>(4294967295u, 93564u)), true | global2.b));
    let var_1 = -countOneBits(vec2<i32>(-1i) * -(~vec2<i32>(-1i, global0.x)));
    var var_2 = ~vec4<u32>(78638u, ~(~1u), arg_0.c.x, firstTrailingBit(26028u));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global2.a))), true, vec2<u32>(_wgslsmith_sub_u32(arg_3, 4294967295u), 6042u) ^ vec2<u32>(var_2.x, func_3())), global0.x, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(global1.a.a, !all(select(global1.c.yz, vec2<bool>(true, true), vec2<bool>(global2.b, global1.a.b))), ~vec2<u32>(u_input.a.x ^ u_input.a.x, global2.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-378f, global2.a.x, -1000f))) + global1.a.a))), ~(~(vec3<u32>(global1.a.c.x, 4294967295u, 24031u) >> (u_input.a % vec3<u32>(32u)))) >> (vec3<u32>(_wgslsmith_clamp_u32(25911u, abs(global2.c.x), ~33585u), 1u, u_input.a.x) % vec3<u32>(32u)), 41530u);
    let var_1 = any(!vec2<bool>(countOneBits(global1.a.c.x) < 1u, true));
    global3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.a.x)) - -993f), _wgslsmith_f_op_vec3_f32(func_2(true, vec2<bool>(true, true), var_0.b)).x);
    var var_2 = func_1(global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.x + 1110f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-570f)), _wgslsmith_f_op_vec2_f32(func_4(2147483647i, var_0.c, Struct_1(vec3<f32>(var_0.a.a.x, var_0.a.a.x, global3.x), var_0.a.b, global2.c), var_0.a)).x), global2.a.x) - global2.a), u_input.a, countOneBits(~global2.c.x));
    let var_3 = vec4<i32>(6904i, global1.b, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-18370i, min(38171i, 1i), 2147483647i | global0.x, global0.x), select(vec4<i32>(global0.x, global1.b, var_2.b, 0i) << (vec4<u32>(33301u, 12153u, global2.c.x, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(-1i, var_0.b, 1i, 1i), func_1(Struct_1(global1.a.a, global1.c.x, var_2.a.c), vec3<f32>(542f, global3.x, var_2.a.a.x), vec3<u32>(var_0.a.c.x, global1.a.c.x, var_0.a.c.x), u_input.a.x).c.x)), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, -2147483647i, global0.x, var_0.b), vec4<i32>(6417i, -12584i, 2147483647i, global0.x))), _wgslsmith_mult_i32(var_2.b, countOneBits(_wgslsmith_div_i32(~2147483647i, -2147483647i))));
    let var_4 = func_1(func_1(var_0.a, global2.a, vec3<u32>(firstLeadingBit(0u ^ global1.a.c.x), _wgslsmith_div_u32(u_input.a.x & var_0.a.c.x, var_2.a.c.x), global2.c.x & _wgslsmith_mod_u32(4294967295u, var_2.a.c.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(0u, 4294967295u)), ~global2.c & (u_input.a.yy ^ vec2<u32>(39912u, 28366u)))).a, var_2.a.a, vec3<u32>(67042u, 0u, reverseBits(~global2.c.x)), var_2.a.c.x);
    var var_5 = Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(func_1(Struct_1(vec3<f32>(-612f, 344f, var_0.a.a.x), true, vec2<u32>(1u, var_0.a.c.x)), global1.a.a, vec3<u32>(29115u, u_input.a.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(49800u, u_input.a.x, 1u, global2.c.x), vec4<u32>(9970u, 26766u, var_0.a.c.x, 24252u))).b, _wgslsmith_sub_i32(global1.b, var_4.b), var_3.x, -35156i), firstTrailingBit(var_3)), select(vec4<bool>(!var_4.a.b, true, var_2.c.x, false), !(!vec4<bool>(true, var_1, var_0.c.x, var_4.c.x)), var_2.c.x));
    global0 = firstLeadingBit(var_5.a.yy) << (max(var_0.a.c, ~u_input.a.yz) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_1(var_4.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.a.x, -2411f, global2.a.x) * vec3<f32>(-145f, 335f, -1432f)) - _wgslsmith_f_op_vec3_f32(round(global1.a.a))), u_input.a, 7466u).b, -61102i, _wgslsmith_mod_i32(var_4.b, _wgslsmith_add_i32(reverseBits(-1i), _wgslsmith_add_i32(-26773i, 1i)))), var_0.a.a.x);
}

