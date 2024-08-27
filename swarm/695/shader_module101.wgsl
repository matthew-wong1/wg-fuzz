struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(2045f, -1252f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec2<bool>) -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_1.c, _wgslsmith_div_f32(arg_1.c, -152f))), _wgslsmith_div_f32(464f, _wgslsmith_f_op_f32(-global0.x)))), vec2<f32>(_wgslsmith_f_op_f32(1375f - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_1.a.a))), global0.x));
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-251f)), _wgslsmith_f_op_f32(f32(-1f) * -742f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 0i, 4392i), vec3<i32>(-23137i, -1i, -4757i), vec3<i32>(0i, 35517i, 57235i)), Struct_5(Struct_1(global0.x), vec3<i32>(2147483647i, -3836i, 6905i), 569f, global0.x), vec2<bool>(true, false)))))));
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), -727f)))), vec2<f32>(_wgslsmith_f_op_f32(1542f * global0.x), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-622f, global0.x)), -500f)))), _wgslsmith_f_op_f32(min(1660f, 445f)) > global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, 197f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, global0.x)))))));
    var var_0 = !all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~firstLeadingBit(select(vec4<i32>(-2147483647i, -1i, 16358i, -2147483647i), vec4<i32>(2147483647i, 2147483647i, -2147483647i, -21749i), vec4<bool>(true, false, true, false))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(1i, -14429i, -11139i, 1i), vec4<i32>(1i, 1i, 1i, 1i), false), -select(vec4<i32>(-1i, 38396i, -72539i, -2147483647i), vec4<i32>(-12189i, 9338i, 6199i, 80981i), false), firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)))), ~13406i >> (_wgslsmith_div_u32(~35167u >> (u_input.a % 32u), ~u_input.a & countOneBits(1u)) % 32u), abs(16396i));
    return _wgslsmith_f_op_f32(f32(-1f) * -103f);
}

fn func_1() -> u32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.x, 550f))) + _wgslsmith_f_op_f32(func_2()))), global0.x);
    let var_0 = Struct_5(Struct_1(global0.x), vec3<i32>(-1i) * -reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(27897i, 1i, -4663i), vec3<i32>(20486i, -2147483647i, 1i), vec3<i32>(-2147483647i, 2147483647i, -1i))), global0.x, _wgslsmith_div_f32(global0.x, 323f));
    let var_1 = -var_0.b.x;
    var var_2 = var_0.a;
    var var_3 = select(vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), true)), !all(vec4<bool>(true, true, true, true)), true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, any(vec3<bool>(true, true, true))), !(var_0.b.x >= -6077i)), true);
    return _wgslsmith_mod_u32(abs(16672u), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), ~(~u_input.a))) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(59883u, 1u, u_input.a)), ~(vec3<u32>(1u, u_input.a, u_input.a) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u)))), ~(u_input.a & _wgslsmith_mult_u32(u_input.a, 0u)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec3<u32> {
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))));
    var var_0 = true;
    var_0 = true;
    var var_1 = Struct_2(41457i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, arg_2, -872f), vec3<f32>(arg_2, 531f, 551f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-829f, -1790f, arg_2))))), vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-arg_2), global0.x))), ~(-vec4<i32>(1i, 1i, 1i, 1i)), arg_0, reverseBits(max(1i, _wgslsmith_div_i32(i32(-1i) * -100092i, 1i))));
    var var_2 = Struct_3(var_1.c.xxx, 1i, false, _wgslsmith_f_op_f32(step(-1444f, _wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(firstTrailingBit(-53237i), var_1.e, 10469i), Struct_5(Struct_1(arg_2), vec3<i32>(-1i, var_1.c.x, var_1.a), -276f, _wgslsmith_f_op_f32(ceil(-882f))), vec2<bool>(true, all(vec3<bool>(true, false, true))))).x)));
    return reverseBits(vec3<u32>(1u, arg_1, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(!vec3<bool>(global0.x != 793f, true, true)), any(!vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, any(vec2<bool>(false, true)))));
    let var_1 = func_4(Struct_1(global0.x), 40212u & func_1(), global0.x);
    let var_2 = !(!var_0.x);
    global0 = vec2<f32>(-1368f, _wgslsmith_f_op_f32(exp2(global0.x)));
    let var_3 = 16795u;
    var_0 = vec2<bool>(true, !var_0.x);
    var var_4 = reverseBits(~max((vec2<u32>(var_1.x, 0u) | vec2<u32>(var_1.x, u_input.a)) & select(var_1.xy, vec2<u32>(var_1.x, 0u), vec2<bool>(true, false)), var_1.yy));
    var var_5 = abs(_wgslsmith_add_vec3_u32(~var_1, ~var_1));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -max(vec2<i32>(917i, 2147483647i), ~vec2<i32>(31360i, -31252i)), var_3);
}

