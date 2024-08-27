struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(Struct_1(0u, -1i), 2147483647i, -1674f, Struct_1(4294967295u, 23959i), 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = -1461f;
    global1 = Struct_2(Struct_1(36862u, 1i), abs(global1.b | _wgslsmith_dot_vec3_i32(vec3<i32>(-37744i, -16708i, arg_0.x), vec3<i32>(global1.a.b, -43437i, -83558i))), global1.c, global1.a, (~_wgslsmith_add_i32(global1.d.b, arg_0.x) ^ arg_0.x) >> (1u % 32u));
    var_0 = _wgslsmith_f_op_f32(sign(-455f));
    global0 = true;
    let var_1 = ~arg_0.x <= select(-21252i ^ arg_0.x, arg_0.x, any(vec2<bool>(any(vec2<bool>(false, true)), true)));
    return -1i;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_4(Struct_1(u_input.c.x, _wgslsmith_dot_vec4_i32(~(vec4<i32>(global1.e, global1.d.b, global1.b, 54015i) ^ vec4<i32>(-2147483647i, -38788i, global1.d.b, -416i)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.e, -2147483647i, 12416i, global1.e) << (vec4<u32>(0u, u_input.d, u_input.d, 11582u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 8003i, -2147483647i, global1.d.b), vec4<i32>(global1.d.b, global1.a.b, global1.e, global1.b))))), -2147483647i | _wgslsmith_sub_i32(~func_3(vec3<i32>(1i, -1i, global1.a.b), vec4<bool>(arg_0, true, arg_0, arg_0)), _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.e, -15637i, 29847i, -2147483647i), ~vec4<i32>(global1.e, global1.a.b, -37405i, global1.b))), ~vec2<u32>(_wgslsmith_mult_u32(u_input.b, global1.d.a), (0u << (0u % 32u)) & ~u_input.d), -_wgslsmith_mult_vec4_i32(countOneBits(~vec4<i32>(41370i, global1.a.b, global1.e, global1.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.d.b, 1i, -2147483647i, 1i) ^ vec4<i32>(global1.d.b, global1.a.b, global1.a.b, -66547i), _wgslsmith_mult_vec4_i32(vec4<i32>(19912i, global1.a.b, global1.b, global1.a.b), vec4<i32>(global1.b, 2147483647i, -1i, global1.e)))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + global1.c)), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, -688f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-660f, 139f, 1000f, global1.c)), vec4<f32>(global1.c, _wgslsmith_f_op_f32(step(-107f, global1.c)), _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(f32(-1f) * -3151f)))), !vec4<bool>(global1.d.b > -1i, !arg_0, false, true))), vec4<f32>(-999f, 1386f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c * -719f), -538f)), _wgslsmith_f_op_f32(floor(266f))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(536f + global1.c), -2330f)) + var_1.x) + -1000f));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, var_1.x, -814f, _wgslsmith_div_f32(894f, -949f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, var_1.x, global1.c, 1000f) + vec4<f32>(global1.c, -122f, 144f, global1.c)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1686f, 957f, 1266f, global1.c)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1141f, var_1.x, -125f, 1320f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(287f, var_1.x, global1.c, global1.c) * vec4<f32>(var_1.x, global1.c, -2018f, -340f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(448f, 940f, global1.c, var_1.x), vec4<f32>(102f, 607f, 971f, 1545f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, global1.c, 358f, 484f) * vec4<f32>(var_1.x, var_1.x, var_1.x, -106f))))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c, global1.c)))))), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.c, 288f)) + 1500f)), _wgslsmith_f_op_f32(exp2(var_1.x)));
    return Struct_3(firstTrailingBit(~var_0.c & ~vec2<u32>(4294967295u, u_input.b)) & (firstLeadingBit(~u_input.c) >> (select(vec2<u32>(global1.a.a, u_input.b), vec2<u32>(global1.a.a, 1u), vec2<bool>(true, true)) % vec2<u32>(32u))));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    let var_0 = u_input.a;
    global0 = false;
    global0 = true;
    var var_1 = func_2(~global1.d.a == var_0);
    var var_2 = vec3<u32>(var_0, u_input.a & _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.a, var_0), vec2<u32>(var_0, var_1.a.x)), _wgslsmith_sub_u32(var_1.a.x, abs(u_input.d | var_0))) << (~abs(~(~vec3<u32>(4294967295u, 1816u, 0u))) % vec3<u32>(32u));
    return abs(~vec2<i32>(~2147483647i, abs(1i))) >> (vec2<u32>(var_2.x, ~(~(~1u))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_5 {
    return Struct_5(-1i, ~abs(u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(floor(global1.c)))) + -1297f) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(2348f, -1389f))), 473f)), true);
}

fn func_5(arg_0: Struct_5, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = ~_wgslsmith_add_vec4_i32(vec4<i32>(-(arg_0.a >> (global1.a.a % 32u)), -1i, -14868i, firstTrailingBit(i32(-1i) * -1i)), reverseBits(-(vec4<i32>(48223i, 54688i, global1.a.b, global1.e) >> (vec4<u32>(14798u, 19251u, global1.d.a, 0u) % vec4<u32>(32u)))));
    global0 = arg_1.x == 4294967295u;
    global1 = Struct_2(global1.d, 19687i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-1572f - _wgslsmith_f_op_f32(sign(global1.c)))), Struct_1(abs(arg_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -30456i, ~var_0.x), vec3<i32>(arg_0.a, global1.a.b, global1.a.b) >> (vec3<u32>(0u, 67436u, 85385u) % vec3<u32>(32u)))), _wgslsmith_add_i32(~global1.b, global1.e));
    global0 = !(!((any(vec2<bool>(true, arg_0.d)) && arg_0.d) || arg_0.d));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + _wgslsmith_div_f32(global1.c, global1.c)) * _wgslsmith_f_op_f32(sign(242f))), global1.c)), _wgslsmith_f_op_f32(global1.c + global1.c));
    return func_2(!arg_0.c);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1) -> Struct_5 {
    let var_0 = select(_wgslsmith_mult_vec3_i32(vec3<i32>(74976i, -58827i, ~(2147483647i ^ arg_1.b)), -(~_wgslsmith_mult_vec3_i32(vec3<i32>(-11230i, 0i, -1i), vec3<i32>(1i, -2375i, global1.d.b)))), vec3<i32>(_wgslsmith_add_i32(abs(global1.e) >> (reverseBits(u_input.a) % 32u), global1.e), arg_1.b, _wgslsmith_add_i32(global1.b << (u_input.b % 32u), -117139i)), vec3<bool>(false, any(vec2<bool>(true, true)), !(!func_4(vec3<u32>(u_input.b, u_input.b, arg_0.a.x), vec2<i32>(1i, 1i), Struct_3(vec2<u32>(global1.a.a, 72115u)), vec4<u32>(9490u, 5543u, 84338u, 72740u)).c)));
    var var_1 = -var_0;
    var_1 = var_0;
    var var_2 = true;
    let var_3 = Struct_2(Struct_1(arg_0.a.x << (0u % 32u), global1.e), var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-638f, -517f) + _wgslsmith_div_f32(_wgslsmith_div_f32(global1.c, 1093f), 539f)))), arg_1, _wgslsmith_dot_vec3_i32(var_0, -(vec3<i32>(var_0.x, global1.d.b, -274i) >> (vec3<u32>(4294967295u, arg_1.a, 0u) % vec3<u32>(32u))) | var_0));
    return Struct_5(var_3.e, 1u << (global1.d.a % 32u), true, all(vec4<bool>(!(global1.a.a == 27350u), false, func_1(false).x != 41831i, !any(vec4<bool>(false, true, true, true)))));
}

fn func_7(arg_0: Struct_5, arg_1: Struct_5, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_2(global1.d, -16628i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) * _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(arg_2 - -1144f), arg_0.c)))), global1.d, ~_wgslsmith_sub_i32(i32(-1i) * -arg_1.a, arg_1.a));
    var_0 = Struct_2(Struct_1(var_0.d.a, _wgslsmith_clamp_i32(countOneBits(2147483647i), 2147483647i, func_6(Struct_3(vec2<u32>(4294967295u, 87529u)), global1.d).a) | arg_1.a), ~(firstTrailingBit(select(var_0.a.b, -14165i, true)) | ~_wgslsmith_sub_i32(-15420i, var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(select(-355f, global1.c, false))), arg_2))), Struct_1(func_5(Struct_5(-2147483647i, var_0.d.a, arg_1.d, false), _wgslsmith_div_vec2_u32(u_input.c, u_input.c)).a.x | 1u, countOneBits(firstLeadingBit(var_0.b))), global1.a.b);
    global1 = Struct_2(var_0.a, -1463i, _wgslsmith_f_op_f32(min(var_0.c, -335f)), global1.d, (~(arg_1.a >> (u_input.b % 32u)) >> (0u % 32u)) | arg_0.a);
    let var_1 = Struct_1(0u, -firstLeadingBit(var_0.b));
    let var_2 = _wgslsmith_mod_u32(4294967295u, ~func_6(func_2(!arg_0.d), var_1).b);
    return func_5(arg_0, vec2<u32>(1u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 0u, 34816u, 0u), vec4<u32>(var_2, var_2, arg_1.b, var_2)), firstTrailingBit(firstLeadingBit(var_0.d.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !any(!vec2<bool>(any(vec3<bool>(false, true, false)), true));
    var var_0 = func_7(func_6(func_5(func_4(vec3<u32>(u_input.d, global1.d.a, global1.a.a), func_1(false), Struct_3(u_input.c), select(vec4<u32>(24164u, 0u, 6452u, u_input.d), vec4<u32>(0u, 10268u, u_input.b, u_input.c.x), false)), u_input.c), global1.a), func_4(vec3<u32>(~_wgslsmith_sub_u32(u_input.b, 42676u), 61745u, ~global1.a.a), vec2<i32>(-1i, global1.d.b), Struct_3(~(vec2<u32>(1u, 0u) << (vec2<u32>(global1.a.a, 17724u) % vec2<u32>(32u)))), vec4<u32>(0u, _wgslsmith_mod_u32(abs(u_input.a), u_input.b | u_input.a), _wgslsmith_div_u32(~u_input.d, u_input.b & 1u), 4294967295u)), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, ~4294967295u, 4294967295u));
}

