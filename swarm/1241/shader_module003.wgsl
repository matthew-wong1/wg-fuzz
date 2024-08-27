struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<u32>(1u, 13774u, 0u), 0u, -113f, 612f, vec4<i32>(1i, -1i, 10981i, -91i)), 992f, Struct_1(vec3<u32>(1u, 26753u, 0u), 1u, 333f, -728f, vec4<i32>(-1i, -9165i, 5359i, -1i)), Struct_1(vec3<u32>(0u, 110784u, 0u), 0u, 1000f, 938f, vec4<i32>(i32(-2147483648), 2147483647i, 33233i, 2147483647i)), i32(-2147483648));

var<private> global1: vec4<i32> = vec4<i32>(1718i, 19576i, 1i, -1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: u32) -> vec3<i32> {
    var var_0 = Struct_1(global0.a.a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1464f))), -481f, -arg_0);
    let var_1 = arg_0.yz;
    var var_2 = true;
    let var_3 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.d))), var_0.e);
    var var_4 = vec4<f32>(global0.b, -422f, arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, -622f))), 1f));
    return var_0.e.wyz;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global0.c.a.xy, global0.d.a.yz), abs(~global0.d.a.zx)), _wgslsmith_sub_u32(32756u, 1u));
    global1 = ~min(-abs(vec4<i32>(11982i, global0.a.e.x, global0.a.e.x, 1i) & global0.c.e), _wgslsmith_mod_vec4_i32(~vec4<i32>(global0.e, -44871i, global1.x, 2147483647i), -vec4<i32>(arg_1, -17383i, global1.x, global1.x)));
    global0 = Struct_3(Struct_1(global0.a.a, select(~1u, ~1u, all(select(vec4<bool>(true, arg_0.x, arg_0.x, true), arg_0, vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)))), global0.a.d, -775f, ~(min(vec4<i32>(arg_1, arg_1, global1.x, global0.c.e.x), global0.a.e) & _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, global0.e, 15396i), global0.a.e))), _wgslsmith_f_op_f32(-global0.a.c), global0.a, global0.c, ~_wgslsmith_dot_vec3_i32(~func_3(global0.c.e, vec3<f32>(global0.d.c, global0.d.d, global0.c.c), 4294967295u), global1.zzw));
    global1 = ~global0.c.e;
    let var_1 = Struct_1(vec3<u32>(global0.d.a.x, 4294967295u, global0.c.b), ~(~global0.c.a.x), global0.d.d, 945f, -max(-select(global0.c.e, vec4<i32>(global0.a.e.x, arg_1, global1.x, global0.e), false), min(firstTrailingBit(global0.d.e), vec4<i32>(global1.x, global1.x, -50798i, -2275i))));
    return global0.a;
}

fn func_1() -> Struct_1 {
    global0 = Struct_3(func_2(vec4<bool>(true, true, true, true), 8306i), global0.d.c, func_2(vec4<bool>(false, true, (-25035i > global1.x) || any(vec4<bool>(false, true, false, false)), true), countOneBits(global0.a.e.x)), Struct_1(func_2(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true)), 2004i).a, firstTrailingBit(~_wgslsmith_sub_u32(global0.c.b, u_input.a)), 772f, _wgslsmith_div_f32(global0.b, func_2(vec4<bool>(true, false, false, true), firstTrailingBit(1i)).d), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(~1i, global1.x), _wgslsmith_clamp_i32(func_3(vec4<i32>(global0.a.e.x, global0.a.e.x, global0.a.e.x, global1.x), vec3<f32>(global0.c.d, 1583f, -389f), 22571u).x, abs(-61898i), -global0.a.e.x), ~(~(-81584i)))), i32(-1i) * -_wgslsmith_clamp_i32(~global1.x, global1.x, _wgslsmith_mod_i32(global1.x, global1.x)));
    global0 = Struct_3(func_2(vec4<bool>(-1540f < _wgslsmith_f_op_f32(global0.c.d - 933f), true, true, all(vec3<bool>(true, false, true)) | all(vec4<bool>(false, true, true, true))), select(_wgslsmith_add_i32(func_2(vec4<bool>(false, false, false, false), -9398i).e.x, -1i), _wgslsmith_mod_i32(global0.d.e.x >> (2003u % 32u), -2147483647i), true)), _wgslsmith_f_op_f32(-936f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1619f)) + _wgslsmith_f_op_f32(-918f * _wgslsmith_f_op_f32(-global0.b)))), global0.c, global0.d, global0.a.e.x);
    global1 = global0.a.e;
    var var_0 = abs(global1.x);
    let var_1 = _wgslsmith_f_op_f32(-715f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.d.d - 457f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.c, -488f) * _wgslsmith_f_op_f32(global0.d.c * global0.d.c))))));
    return Struct_1(func_2(vec4<bool>(true, true, true, true), min(1i, -(global1.x >> (global0.d.a.x % 32u)))).a, firstTrailingBit(select(u_input.a, 46471u, true) | ~(~global0.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(513f - global0.c.d)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.c * var_1), -438f))))), 792f, vec4<i32>((_wgslsmith_mod_i32(global1.x, global1.x) << (u_input.a % 32u)) >> ((u_input.a ^ ~79009u) % 32u), -(global0.e & global1.x) & -14663i, 2147483647i, firstTrailingBit(global0.d.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a, global0.a.d, global0.c, global0.d, -2147483647i);
    global0 = Struct_3(Struct_1(~min(max(vec3<u32>(21423u, global0.a.b, 1u), vec3<u32>(5397u, 63964u, 1u)), vec3<u32>(37585u, 29724u, 29956u)), 43009u, 348f, global0.c.c, _wgslsmith_mod_vec4_i32(global0.c.e, global0.d.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(970f, -690f))), func_1(), global0.c, global1.x);
    global0 = Struct_3(func_1(), global0.b, func_1(), Struct_1(func_2(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), 1i).a, ~select(27777u, u_input.a, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.d * -1000f))), 357f), _wgslsmith_f_op_f32(round(259f)), global0.d.e), _wgslsmith_add_i32(_wgslsmith_add_i32(abs(_wgslsmith_clamp_i32(global1.x, global1.x, global0.e)), -1i), 1i));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.b, 1f))));
    var var_1 = vec4<bool>(true, true, true, true);
    var var_2 = Struct_5(_wgslsmith_f_op_f32(abs(var_0)), -countOneBits(max(_wgslsmith_sub_vec4_i32(vec4<i32>(3845i, -2147483647i, global0.a.e.x, -91540i), vec4<i32>(-6163i, global0.c.e.x, 18602i, 2147483647i)), vec4<i32>(global1.x, 1i, -2260i, global1.x))));
    let var_3 = _wgslsmith_f_op_f32(floor(var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global0.d.a.x), 16454u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_2.a)))))), _wgslsmith_sub_i32(i32(-1i) * -1i, 22936i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a * global0.a.d))));
}

