struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<bool> {
    global0 = ~(-(~(-43205i)));
    global0 = abs(u_input.a.x);
    global0 = 1i;
    var var_0 = ~min(vec2<u32>(~(u_input.b & u_input.b), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 2426u, 1u), 0u)), ~vec2<u32>(u_input.c, abs(u_input.c)));
    var_0 = countOneBits(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_0.x), select(vec2<u32>(4294967295u, 30083u), vec2<u32>(u_input.b, 0u), false)), reverseBits(vec2<u32>(4294967295u, 74806u)), select(vec2<bool>(true, true), vec2<bool>(true, false), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false)))));
    return vec3<bool>(true, true, !((u_input.a.x & u_input.a.x) <= ~_wgslsmith_div_i32(9001i, -2147483647i)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>) -> vec3<bool> {
    let var_0 = 2147483647i;
    global0 = arg_2.x;
    let var_1 = u_input.b;
    global0 = select(-72408i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -50002i), -arg_2), 1i, reverseBits(_wgslsmith_mod_i32(2147483647i, 18899i)), min(~var_0, -1i)), vec4<i32>(arg_2.x, arg_0.b, abs(u_input.a.x), countOneBits(i32(-1i) * -51123i))), false);
    return select(!vec3<bool>(all(select(vec3<bool>(false, false, arg_0.a.c), vec3<bool>(true, false, false), vec3<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c))), true, arg_0.a.c), !(!vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, arg_0.a.c)), !arg_0.a.c)), func_3());
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-624f * -662f) + 1995f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1048f)))))), ~reverseBits(~reverseBits(vec3<u32>(1u, 0u, u_input.c))), !select(true, all(vec4<bool>(true, true, true, false)), 1u < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(4294967295u, 4294967295u, 85826u))));
    global0 = abs(-u_input.a.x) & (i32(-1i) * -4073i);
    var var_1 = Struct_2(Struct_1(var_0.a, _wgslsmith_div_vec3_u32(~var_0.b, ~vec3<u32>(u_input.c, var_0.b.x, 4294967295u)), !var_0.c), 1i);
    var_1 = Struct_2(var_1.a, u_input.a.x);
    let var_2 = _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(-firstTrailingBit(vec3<i32>(arg_0, -18638i, var_1.b)), countOneBits(vec3<i32>(0i, u_input.a.x, arg_0))), select(vec3<i32>(15138i, 22301i, u_input.a.x), reverseBits(~vec3<i32>(1i, 30145i, u_input.a.x) | vec3<i32>(var_1.b, 2147483647i, 32184i)), !func_2(Struct_2(var_0, var_1.b), 2845f, u_input.a)));
    return 191f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~_wgslsmith_div_i32(u_input.a.x, ~_wgslsmith_mult_i32(u_input.a.x, 15332i)));
    var var_1 = select(select(vec3<bool>(true, !select(false, false, false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), !any(vec2<bool>(true, false))), vec3<bool>(!(u_input.b != 0u), false, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false)))), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, -38085i == u_input.a.x)), any(vec3<bool>(true, all(vec3<bool>(false, false, true)), true))), _wgslsmith_f_op_f32(func_1((u_input.a.x << (u_input.b % 32u)) & select(var_0, 38114i, false))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-351f + 1187f), -1288f) - _wgslsmith_f_op_f32(select(-520f, _wgslsmith_f_op_f32(round(-340f)), 14429i == var_0))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(891f, -216f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(1164f * -754f)))), vec3<u32>(1u, u_input.c, 81701u) >> (firstTrailingBit(vec3<u32>(abs(u_input.c), u_input.b, ~u_input.b)) % vec3<u32>(32u)), all(func_2(Struct_2(Struct_1(vec2<f32>(1528f, 802f), vec3<u32>(0u, u_input.b, 24599u), false), u_input.a.x), 1475f, _wgslsmith_sub_vec2_i32(u_input.a, u_input.a) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1567f, -382f)), vec2<f32>(-1292f, -563f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a - var_2.a) * var_2.a)))), min(abs(var_2.b) ^ vec3<u32>(33104u, 0u, u_input.c), var_2.b), (var_2.c | all(select(vec4<bool>(false, var_1.x, true, var_2.c), vec4<bool>(var_1.x, false, var_2.c, var_2.c), vec4<bool>(var_2.c, true, var_1.x, var_2.c)))) || all(func_2(Struct_2(Struct_1(vec2<f32>(var_2.a.x, -580f), vec3<u32>(var_2.b.x, 4294967295u, 0u), var_1.x), -33723i), var_2.a.x, max(vec2<i32>(var_0, u_input.a.x), u_input.a)).xy));
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(var_2.a)), var_2.b, var_2.c), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.a.x, var_3.a.x))))));
    var var_5 = select(!select(select(select(vec4<bool>(var_4.a.c, true, true, true), vec4<bool>(false, var_3.c, var_3.c, false), var_1.x), vec4<bool>(true, true, true, true), !vec4<bool>(true, false, var_1.x, true)), !vec4<bool>(var_4.a.c, false, var_4.a.c, var_2.c), var_1.x), select(!vec4<bool>(var_4.a.c && var_1.x, !var_4.a.c, false, all(vec2<bool>(true, var_2.c))), !(!vec4<bool>(true, var_2.c, var_2.c, var_3.c)), vec4<bool>(true, !(var_4.a.c | true), true, true)), !(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 11468i, 3162i, u_input.a.x), vec4<i32>(var_0, -2147483647i, -2147483647i, 256i)) <= (u_input.a.x << (u_input.c % 32u))) | true);
    let var_6 = !select(vec4<bool>(u_input.a.x > ~(-58551i), all(var_1.xy), false || var_2.c, var_3.c), !(!(!vec4<bool>(var_4.a.c, false, var_1.x, var_4.a.c))), !(!select(vec4<bool>(false, true, var_1.x, var_5.x), vec4<bool>(var_5.x, true, true, var_1.x), vec4<bool>(false, true, true, true))));
    var_1 = var_6.zww;
    var_5 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.zz, ~firstTrailingBit(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 33363i, 0i), vec4<i32>(u_input.a.x, -18047i, var_0, u_input.a.x)))), ~_wgslsmith_add_u32(reverseBits(abs(u_input.b)), max(var_4.a.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(23659u, var_3.b.x), var_4.a.b.zx))));
}

