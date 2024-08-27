struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: Struct_4,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-40778i, vec4<u32>(0u, 1u, 4294967295u, 25529u));

var<private> global1: array<vec3<u32>, 21>;

var<private> global2: vec4<f32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<f32>) -> u32 {
    var var_0 = any(select(!select(!vec4<bool>(arg_2.x, arg_2.x, arg_0.a.c, false), vec4<bool>(true, arg_2.x, false, arg_0.a.c), arg_0.a.c), vec4<bool>(!arg_2.x, ~u_input.b.x == 4294967295u, true, arg_0.a.c), select(!vec4<bool>(arg_2.x, arg_0.a.c, arg_2.x, false), !select(vec4<bool>(arg_2.x, arg_0.a.c, arg_0.a.c, true), vec4<bool>(arg_2.x, false, arg_0.a.c, false), vec4<bool>(arg_0.a.c, false, arg_2.x, false)), ~u_input.b.x >= abs(arg_1.c))));
    var var_1 = !select(!select(!vec3<bool>(arg_0.a.c, arg_2.x, arg_0.a.c), vec3<bool>(false, false, true), any(vec2<bool>(true, arg_0.a.c))), vec3<bool>(any(select(vec4<bool>(true, arg_0.a.c, true, arg_2.x), vec4<bool>(false, arg_2.x, arg_0.a.c, false), arg_0.a.c)), all(vec3<bool>(arg_2.x, true, arg_0.a.c)) != (arg_1.a.x >= 1018f), all(vec4<bool>(true, arg_2.x, arg_0.a.c, false)) & (384f <= arg_1.a.x)), true);
    let var_2 = firstTrailingBit(vec2<u32>(20647u, u_input.b.x));
    global1 = array<vec3<u32>, 21>();
    global0 = Struct_2(arg_0.a.b.a, _wgslsmith_add_vec4_u32(abs(~vec4<u32>(0u, u_input.b.x, arg_0.a.b.b.x, 32304u)), _wgslsmith_add_vec4_u32(reverseBits(global0.b >> (vec4<u32>(16382u, u_input.b.x, 4294967295u, 0u) % vec4<u32>(32u))), abs(u_input.b))));
    return _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0.a.b.b.x), vec2<u32>(global0.b.x, arg_0.a.a.b.x)) << ((_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zx) & vec2<u32>(4294967295u, 77149u)) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_add_u32(arg_1.c, arg_1.c), 18442u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_4) -> f32 {
    global0 = Struct_2(_wgslsmith_dot_vec2_i32(countOneBits(~(arg_0 << (vec2<u32>(46123u, 32050u) % vec2<u32>(32u)))), vec2<i32>(u_input.a, countOneBits(-arg_0.x))), ~select(arg_1, vec4<u32>(countOneBits(1u), func_3(Struct_4(arg_2.a), Struct_1(vec3<f32>(693f, global2.x, 680f), global0.b.x, global0.b.x), vec2<bool>(true, false), vec3<f32>(1184f, 838f, -1667f)), global0.b.x, _wgslsmith_div_u32(1u, u_input.b.x)), true));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(select(-381f, global2.x, true))))) - 1401f)));
    global0 = Struct_2(global0.a, u_input.b);
    let var_1 = 474i;
    var var_2 = arg_2.a.a;
    return _wgslsmith_f_op_f32(round(global2.x));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = firstLeadingBit(abs(_wgslsmith_mult_u32(firstTrailingBit(1u), _wgslsmith_mod_u32(1u, 4294967295u)) & 0u));
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, global2.x, global2.x, 1807f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(842f, global2.x, global2.x, global2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2480f, global2.x, -205f, -2488f), vec4<f32>(-1081f, global2.x, global2.x, global2.x))))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(abs(global2.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(2147483647i, 1i), u_input.b, Struct_4(Struct_3(Struct_2(u_input.a, global0.b), Struct_2(0i, u_input.b), true))))))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) * -1323f) - 262f)), !vec4<bool>(true, !arg_0, false, false)));
    var var_1 = Struct_4(Struct_3(Struct_2(-12025i, firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, global0.b.x))), Struct_2(_wgslsmith_mult_i32(global0.a, -15928i ^ global0.a), global0.b | reverseBits(vec4<u32>(1u, 51363u, global0.b.x, global0.b.x))), !(~u_input.a == global0.a)));
    let var_2 = 53481u;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1207f, 1019f, global2.x, -739f)))))))));
    return ~5769u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f) * global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -1321f) - 135f), global2.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.zyw))), 0u, ~abs(u_input.b.x));
    var var_1 = vec3<bool>(all(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), vec2<bool>(true, true), !any(vec2<bool>(false, true)))), ~func_1(any(vec3<bool>(false, false, true))) > ~(~(~47154u)), !(!(!(-4576i == u_input.a))));
    global0 = Struct_2(-u_input.a, ~vec4<u32>(_wgslsmith_add_u32(abs(global0.b.x), countOneBits(u_input.b.x)), u_input.b.x, (69155u << (1u % 32u)) & (var_0.b ^ 1u), max(~1u, func_1(true))));
    global1 = array<vec3<u32>, 21>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(-909f, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))))), 23979u, global0.b.x);
    var var_3 = vec3<i32>(global0.a, 26175i, abs(-63420i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-(~2147483647i), abs(u_input.a & 0i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(global0.a, u_input.a, var_3.x)), vec3<i32>(1i, u_input.a, global0.a)), min(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, global0.a, -2147483647i), vec3<i32>(2147483647i, -19012i, -10468i)), vec3<i32>(var_3.x, u_input.a, var_3.x))), select(~(-1i), countOneBits(~global0.a), !select(var_1.x, var_1.x, var_1.x))), _wgslsmith_clamp_u32(144748u, var_2.c, 10495u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1004f, 1142f)) - -1822f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2082f + global2.x), _wgslsmith_f_op_f32(global2.x * global2.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * var_2.a.x)))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(global0.b.x, u_input.b.x & var_0.b), abs(var_2.b | global0.b.x)), 1u), ~53505u);
}

