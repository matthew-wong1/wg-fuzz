struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -1i);

var<private> global1: vec4<f32>;

var<private> global2: i32 = -47250i;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_3(arg_2.b, arg_2.a, -_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -2147483647i, arg_2.d.x, arg_2.d.x), ~vec4<i32>(arg_2.d.x, -1i, global0.x, global0.x)) <= select(global0.x, ~3269i, arg_2.a.b.x), ~vec2<i32>(_wgslsmith_dot_vec3_i32(global0.zxz, vec3<i32>(2147483647i, 4676i, arg_2.d.x)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, arg_0), vec3<u32>(u_input.a, arg_0, arg_0)) % 32u), ~(-39337i)));
    var var_1 = _wgslsmith_clamp_u32(21515u, 40094u, _wgslsmith_add_u32(arg_0, 1u));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1282f, -138f, global1.x, 1356f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-301f, -583f, global1.x, global1.x))))));
    var_1 = u_input.b;
    var var_2 = var_0;
    return var_2.a.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_3 {
    global2 = countOneBits(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_mult_i32(global0.x, global0.x), 29755i)), ~(global0.ww | (vec2<i32>(0i, global0.x) >> (vec2<u32>(arg_0.x, u_input.b) % vec2<u32>(32u))))));
    let var_0 = ~(~u_input.a);
    let var_1 = global0.zwz;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)), _wgslsmith_f_op_f32(exp2(global1.x)), -600f, _wgslsmith_f_op_f32(abs(-803f))), arg_1, true)));
    let var_2 = !(!select(func_3(~4294967295u, vec2<bool>(true, true), Struct_3(Struct_2(true, vec3<bool>(true, true, true)), Struct_2(false, vec3<bool>(true, false, true)), false, vec2<i32>(global0.x, global0.x)), vec2<bool>(true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), true));
    return Struct_3(Struct_2(var_2.x | true, !(!var_2)), Struct_2(var_2.x, vec3<bool>(!(var_2.x && true), var_2.x, any(var_2.zz))), (false && (1i == global0.x)) == false, vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, -1i), _wgslsmith_div_i32(-2147483647i, -1i)), reverseBits(_wgslsmith_sub_i32(-18111i, global0.x) | (i32(-1i) * -2147483647i))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(countOneBits(firstTrailingBit(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a, 0u, 66253u, u_input.a), vec4<u32>(u_input.a, 16050u, 5694u, u_input.b)), vec4<u32>(u_input.a, u_input.b, 20160u, 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x)) * global1.x), _wgslsmith_f_op_f32(-1000f + -320f), _wgslsmith_f_op_f32(sign(-1175f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, global1.x), 570f))));
    var var_1 = !all(vec3<bool>(any(vec4<bool>(true, var_0.b.b.x, var_0.c, var_0.b.a)), var_0.b.b.x | any(vec4<bool>(var_0.b.a, var_0.b.b.x, var_0.a.b.x, false)), all(!var_0.b.b)));
    let var_2 = global0.x;
    return Struct_3(Struct_2((var_0.a.a | var_0.b.a) != true, func_2(vec4<u32>(9904u, ~u_input.b, 22078u, ~u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 992f, 1000f, global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, -673f, 1247f, 1283f)))).a.b), func_2(~vec4<u32>(16588u, u_input.a, u_input.a | u_input.b, u_input.a ^ u_input.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1071f, global1.x, _wgslsmith_f_op_f32(-global1.x), global1.x)))).a, _wgslsmith_f_op_f32(select(global1.x, global1.x, any(!vec3<bool>(var_0.b.a, false, true)))) <= _wgslsmith_f_op_f32(-global1.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-min(0i, global0.x), firstLeadingBit(-16621i)), ~select(min(vec2<i32>(23657i, var_0.d.x), var_0.d), global0.yx & global0.xy, vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    global2 = _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.x, arg_0.d.x, -2147483647i), global0.yzz), -17348i) << (0u % 32u), ~(~arg_0.d.x | ~6298i) & 0i);
    let var_0 = vec4<i32>(0i, ~(~(-2147483647i)), _wgslsmith_dot_vec3_i32(select(global0.zwy, ~vec3<i32>(-2147483647i, global0.x, -31446i), any(vec3<bool>(false, arg_0.b.b.x, arg_0.c))), _wgslsmith_div_vec3_i32(global0.wxy, ~(~global0.zzx))), 1i);
    global2 = firstLeadingBit(-1i);
    var var_1 = Struct_1(global1.x);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f - global1.x)), _wgslsmith_f_op_f32(round(var_1.a)) > _wgslsmith_f_op_f32(-global1.x))))));
    return Struct_3(arg_0.b, Struct_2(!(!any(vec2<bool>(false, arg_0.a.b.x))), select(vec3<bool>(true, true, true), arg_0.a.b, select(arg_0.a.b, select(vec3<bool>(arg_0.c, arg_0.a.a, false), vec3<bool>(arg_0.c, false, arg_0.a.b.x), true), arg_0.b.b))), arg_0.a.a, var_0.xy & arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(400f + -2803f)), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -850f)))));
    let var_0 = func_4(func_1(), 1i);
    var var_1 = !(1i == ((global0.x >> (~0u % 32u)) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 29908u)) % 32u)));
    global0 = reverseBits(vec4<i32>(~min(global0.x, 2147483647i), var_0.d.x, reverseBits(_wgslsmith_add_i32(-51170i, global0.x)), abs(var_0.d.x))) << (vec4<u32>(1u, 4794u, countOneBits(u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(max(43167u, u_input.a), u_input.b, 1u, firstLeadingBit(0u)), ~(~vec4<u32>(u_input.a, u_input.b, 25744u, 13291u)))) % vec4<u32>(32u));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -730f) + vec4<f32>(105f, 1038f, global1.x, 584f)) * vec4<f32>(-1264f, -1452f, -555f, -1853f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-587f, global1.x, global1.x, -1000f)))) * vec4<f32>(global1.x, -504f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1928f, global1.x)), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x - 2950f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-714f, global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-721f, 1467f, -1000f, global1.x) * vec4<f32>(global1.x, global1.x, global1.x, -716f))) + vec4<f32>(-1015f, _wgslsmith_f_op_f32(global1.x * 1772f), _wgslsmith_f_op_f32(step(-145f, 2034f)), -794f))));
    let x = u_input.a;
    s_output = StorageBuffer(~global0.zzy, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~0u, u_input.a), _wgslsmith_div_u32(~u_input.a, u_input.a)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, u_input.b)))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-743f)), -867f)))), _wgslsmith_f_op_f32(-970f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) - -2242f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x), -723f)), ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(39217u, u_input.b, 0u)), abs(~vec3<u32>(4294967295u, u_input.b, 1921u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f)));
}

