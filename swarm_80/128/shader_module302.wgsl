struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = -(~abs(vec4<i32>(36657i, countOneBits(0i), 0i, 2147483647i | u_input.b.x)));
    return select(vec4<bool>(!arg_0, all(vec2<bool>(arg_0, true)), true, arg_1), vec4<bool>(any(select(vec2<bool>(true, true), !vec2<bool>(true, arg_1), arg_0)), arg_0, all(select(select(vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_0, false, arg_1, arg_1), vec4<bool>(false, false, arg_0, arg_0)), !vec4<bool>(arg_0, true, true, arg_1), select(vec4<bool>(arg_0, arg_1, arg_0, arg_1), vec4<bool>(arg_1, arg_0, true, arg_1), vec4<bool>(true, false, true, arg_0)))), arg_1), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1f)), -462f)) - -275f);
    let var_1 = arg_0;
    global0 = u_input.a.yz;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1158f)) - -754f)) + 1286f) + -870f);
    return Struct_3(abs(0u), -1i, _wgslsmith_add_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(u_input.b.x, 1i, 1i, -17251i))), -vec4<i32>(-58938i, 29668i, -4386i, 1i)) >> (vec4<u32>(firstLeadingBit(var_1.b.x), abs(0u), countOneBits(global0.x), arg_0.b.x) % vec4<u32>(32u)), func_3(true, arg_1.x | arg_1.x, max(~_wgslsmith_div_vec3_u32(arg_0.b.zyz, var_1.b.ywy), var_1.b.wyy)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3) -> vec4<u32> {
    global0 = _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.x, 31332u), u_input.a.xx);
    global0 = vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.x, _wgslsmith_sub_u32(109021u, 1u)), 4294967295u), 18966u);
    var var_0 = arg_2;
    global0 = arg_1.xy;
    let var_1 = vec3<f32>(561f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1417f)))))), _wgslsmith_f_op_f32(step(1099f, -222f)));
    return vec4<u32>(~arg_2.a, _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u >> (var_0.a % 32u), ~51889u), max(arg_1.x, 46430u), var_0.a), 4294967295u, ~(~arg_1.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = ~arg_3.b.wz;
    let var_0 = ~(~firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 85307u, arg_3.b.x), arg_3.b.zww, vec3<u32>(0u, 0u, 81948u)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -533f);
    var var_2 = -2147483647i;
    let var_3 = Struct_1(-2147483647i, func_4(arg_3, ~(~var_0), func_2(Struct_1(~54748i, select(arg_3.b, vec4<u32>(global0.x, global0.x, global0.x, arg_3.b.x), false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true)))));
    return Struct_1(-var_3.a, firstTrailingBit(~(~reverseBits(vec4<u32>(0u, arg_2, 36608u, 51675u)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> StorageBuffer {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-318f, -1644f) - vec2<f32>(-864f, -283f)) * vec2<f32>(369f, 1000f)), vec2<f32>(386f, _wgslsmith_f_op_f32(abs(-1673f))))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(1041f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1187f, -264f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1520f, 734f, 1101f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(964f, 1370f, -369f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), ~58736u, Struct_1(_wgslsmith_clamp_i32(abs(_wgslsmith_div_i32(arg_0.a, -1i)), _wgslsmith_div_i32(-681i, -3984i), -4255i), ~vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(21173u, arg_1.x), vec2<u32>(arg_0.b.x, 1u)), ~u_input.a.x, 1u))).b.x;
    var_0 = _wgslsmith_clamp_u32(1u, max(41797u, _wgslsmith_add_u32(u_input.a.x, ~18064u)), global0.x);
    var var_1 = func_2(Struct_1(-_wgslsmith_dot_vec2_i32(-u_input.b, select(u_input.b, u_input.b, true)), arg_0.b), !(!vec4<bool>(false, func_3(true, false, arg_1).x, false, true)));
    var_0 = 2570u;
    let var_2 = func_3(true, all(func_3(all(!var_1.d), func_3(var_1.d.x, var_1.d.x, arg_0.b.www).x | false, arg_0.b.wzz).xy), arg_0.b.xyy);
    return StorageBuffer(u_input.b.x, -firstLeadingBit(var_1.c.wx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1584f, 362f)), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1819f) + -470f), -751f);
    var var_1 = -54181i;
    var_1 = ~countOneBits(1i);
    var_1 = abs(21863i);
    var var_2 = ~min(vec2<i32>(abs(u_input.b.x), ~u_input.b.x), vec2<i32>(_wgslsmith_add_i32(u_input.b.x, 6676i), -58168i)) & u_input.b;
    var_1 = _wgslsmith_add_i32(var_2.x, -(u_input.b.x << (~global0.x % 32u)));
    let var_3 = var_0.x;
    let x = u_input.a;
    s_output = func_5(func_1(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1557f), _wgslsmith_f_op_f32(min(-1582f, 2241f)), _wgslsmith_f_op_f32(abs(-858f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 223f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_3, 573f, var_3), vec3<f32>(702f, 1794f, var_0.x))), 11900i == u_input.b.x)), 1u, Struct_1(-23409i, ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, global0.x), vec4<u32>(2222u, u_input.a.x, 101787u, 28114u)))), vec3<u32>(u_input.a.x, 4294967295u >> (_wgslsmith_clamp_u32(u_input.a.x, 0u, global0.x) % 32u), global0.x) & ~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 33193u)), vec3<u32>(global0.x, u_input.a.x, 4294967295u)));
}

