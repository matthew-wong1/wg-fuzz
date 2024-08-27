struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = Struct_3(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 293f))))) * 344f), !all(vec2<bool>(true, all(vec4<bool>(true, true, false, false)))), 0i);
    var_0 = Struct_3(!var_0.a, _wgslsmith_div_f32(-1251f, _wgslsmith_f_op_f32(-var_0.b)), true, ~((_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 12659i, u_input.b), u_input.c.xyy) | (512i >> (u_input.d % 32u))) & firstTrailingBit(firstTrailingBit(1i))));
    var var_1 = Struct_3(true, var_0.b, countOneBits(~u_input.a.x) <= 1u, _wgslsmith_dot_vec3_i32(select(~vec3<i32>(u_input.c.x, var_0.d, u_input.c.x), -(~vec3<i32>(u_input.e, 1i, -2147483647i)), var_0.a), u_input.c.wyx));
    var var_2 = 16496i;
    var_2 = 52112i;
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, 44915u) ^ vec4<u32>(0u, u_input.d, u_input.a.x, 58837u)), ~vec4<u32>(u_input.d, 70901u, u_input.a.x, 55763u) & (vec4<u32>(u_input.d, u_input.a.x, 1u, 34779u) ^ vec4<u32>(u_input.d, 1u, 12147u, u_input.a.x))), abs(1u), ~select(reverseBits(75304u), 37059u, var_1.c)) < ~u_input.a.x;
}

fn func_2() -> Struct_3 {
    let var_0 = !vec2<bool>(!func_3(vec4<f32>(325f, -344f, -385f, 355f)) == true, all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = Struct_4(Struct_3(all(vec3<bool>(var_0.x, true, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(573f))), any(select(!vec2<bool>(var_0.x, true), !var_0, var_0.x & false)), u_input.c.x), vec4<i32>((i32(-1i) * -6249i) | max(abs(u_input.e), countOneBits(u_input.b)), -2147483647i, u_input.c.x, min(-16647i, _wgslsmith_add_i32(u_input.c.x, _wgslsmith_add_i32(u_input.e, 1i)))), 3542u, Struct_2(Struct_1(vec2<bool>(true, -6661i == u_input.e))), Struct_2(Struct_1(var_0)));
    let var_2 = var_1.d.a;
    var var_3 = !vec4<bool>(false, (false || (var_0.x && true)) | true, all(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, true, true, true), vec4<bool>(var_1.a.a, var_1.a.a, var_0.x, true))), select(!select(var_1.e.a.a.x, var_1.d.a.a.x, false), var_0.x, false));
    var var_4 = var_1.a;
    return Struct_3(var_2.a.x && ((var_1.c & u_input.a.x) >= firstLeadingBit(_wgslsmith_sub_u32(4294967295u, u_input.a.x))), var_4.b, _wgslsmith_clamp_u32(u_input.d, ~(~1u), u_input.a.x) <= abs(u_input.d), countOneBits(var_1.a.d));
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = true;
    let var_1 = var_0;
    return Struct_4(func_2(), vec4<i32>(-_wgslsmith_add_i32(u_input.e, 28071i), u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, -(32917i & u_input.b)), -u_input.e ^ -32412i), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(16345u), 2799u, _wgslsmith_dot_vec4_u32(vec4<u32>(4884u, 1u, u_input.a.x, u_input.d), vec4<u32>(u_input.a.x, 1u, 1u, u_input.d))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 4328u), vec3<u32>(u_input.d, u_input.a.x, 4294967295u))) | reverseBits(1u), Struct_2(Struct_1(vec2<bool>(all(arg_0), true))), Struct_2(Struct_1(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = true;
    let var_1 = arg_3.c;
    let var_2 = arg_2.xx;
    let var_3 = _wgslsmith_mult_vec3_u32(min(_wgslsmith_add_vec3_u32(~vec3<u32>(9201u, var_1, 0u), arg_0.www), ~(vec3<u32>(1u, arg_3.c, 0u) << (vec3<u32>(arg_0.x, 18935u, 29785u) % vec3<u32>(32u)))), arg_0.wxw);
    var_0 = -1387f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) + arg_1) * arg_1);
    return func_1(arg_2.wwx).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.d, 0u, 51385u, 41308u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(2612u, 81775u, 0u, 53892u), vec4<u32>(u_input.d, 0u, 4294967295u, 53322u)))), 252f, !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, false)), true, true), vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), any(vec2<bool>(true, false)))), func_1(vec3<bool>(all(vec3<bool>(true, true, false)), !any(vec4<bool>(false, false, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))))));
    let var_1 = _wgslsmith_f_op_f32(-1561f + -607f);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<u32>(u_input.d, 3984u, 1u, 70592u), var_1, vec4<bool>(var_0.a, true, var_0.a, true), Struct_4(var_0, u_input.c, 0u, Struct_2(Struct_1(vec2<bool>(true, var_0.c))), Struct_2(Struct_1(vec2<bool>(var_0.c, true))))).b + func_2().b))), func_1(vec3<bool>(!var_0.a, false, !var_0.a)).a.b);
    var var_3 = Struct_5(Struct_1(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_2().b), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-838f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(select(vec3<bool>(var_0.a, false, false), vec3<bool>(true, true, var_0.c), vec3<bool>(false, true, false))).a.b)), min(vec4<u32>(~u_input.a.x, abs(4294967295u), 4294967295u, u_input.a.x), vec4<u32>(_wgslsmith_div_u32(~0u, 20582u ^ u_input.a.x), 1u & u_input.a.x, ~func_1(vec3<bool>(true, var_0.c, true)).c, ~(~6787u))));
    let var_4 = select(_wgslsmith_mod_vec3_i32(abs(func_1(select(vec3<bool>(false, var_0.a, true), vec3<bool>(var_3.a.a.x, var_3.a.a.x, true), vec3<bool>(var_3.a.a.x, true, true))).b.wyy), vec3<i32>(_wgslsmith_sub_i32(-22409i, 1i), -var_0.d ^ _wgslsmith_sub_i32(u_input.c.x, 1i), -2147483647i)), vec3<i32>(~abs(1i), i32(-1i) * -2147483647i, min(_wgslsmith_div_i32(1i, i32(-1i) * -2147483647i), var_0.d)), !(!all(!vec4<bool>(var_3.a.a.x, true, var_0.a, false))));
    var var_5 = vec4<f32>(-267f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-561f, 765f)), _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(var_2.x - 386f))))) - func_4(~var_3.d, _wgslsmith_f_op_f32(trunc(var_0.b)), vec4<bool>(!var_0.c, true, var_0.d < var_4.x, all(vec2<bool>(var_3.a.a.x, true))), Struct_4(func_2(), u_input.c, var_3.d.x ^ var_3.d.x, Struct_2(var_3.a), Struct_2(Struct_1(vec2<bool>(true, true))))).b), var_3.c, var_2.x);
    let var_6 = var_3.b.x;
    let var_7 = u_input.c;
    let var_8 = var_3.d.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_3.b.x)));
}

