struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.a)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, arg_0.a.x), vec2<f32>(-469f, 388f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_0.a, vec2<f32>(633f, 853f)), arg_0.a))) - var_0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1426f, 113f)))))), ~var_0.c);
    var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_div_vec2_f32(var_1.a, arg_0.a)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(657f, var_1.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a))), arg_0.a.x, max(min(54946u, 78806u ^ arg_0.c), var_1.c | (36532u & var_1.c)) ^ _wgslsmith_add_u32(0u, 1u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(ceil(var_0.a.x)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), arg_0.b))) + 1285f);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-857f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(709f - -1946f), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(-1616f, -1243f), 3922f, arg_1.x)))))), -1141f, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(631f, 2039f))), _wgslsmith_f_op_f32(floor(-731f)), ~3089u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xz * vec2<f32>(507f, var_0.x))))), vec2<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x)), vec2<bool>(any(vec3<bool>(true, true, true)), (arg_1.x | 1u) >= ~arg_1.x))), -153f, ~1u);
    var_1 = Struct_1(var_0.zx, -361f, var_1.c & 7406u);
    let var_2 = reverseBits(max(countOneBits(_wgslsmith_mult_vec3_u32(max(vec3<u32>(73180u, var_1.c, arg_0), vec3<u32>(var_1.c, var_1.c, 1u)), vec3<u32>(var_1.c, var_1.c, 52058u) ^ vec3<u32>(781u, arg_0, 38502u))), vec3<u32>(var_1.c, ~4294967295u, ~36030u)));
    var var_3 = !(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)) & all(vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(-837f)), var_0.x))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(abs(32733u), vec2<u32>(41993u, 37094u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1063f, -856f)), vec2<f32>(-382f, -912f)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false))))), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(f32(-1f) * -101f), ~(4327u >> (1u % 32u))))), ~1u);
    let var_1 = ~var_0.c;
    var var_2 = 1u;
    let var_3 = vec2<u32>(_wgslsmith_clamp_u32(var_1, _wgslsmith_add_u32(~(~var_0.c), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.c, 143814u, 111699u)), vec3<u32>(0u, var_1, 24094u) << (vec3<u32>(var_1, 16809u, var_1) % vec3<u32>(32u)))), 10160u), ~(var_0.c & var_1));
    var var_4 = vec3<u32>(var_3.x, 5466u, _wgslsmith_add_u32(firstTrailingBit(4294967295u), ~select(var_3.x, firstTrailingBit(30071u), true)));
    return 611f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_1()), 908f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(415f))), countOneBits(abs(1u)));
    var var_1 = Struct_1(vec2<f32>(1000f, -1147f), -659f, ~4294967295u);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(step(451f, 1f)))));
    var var_3 = countOneBits(u_input.a.wwy ^ u_input.a.xww);
    var_0 = Struct_1(var_0.a, 261f, var_1.c);
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-138f, var_0.a.x, 101f), vec3<f32>(var_2, -239f, var_0.b), vec3<bool>(true, false, false))))), vec3<f32>(-115f, _wgslsmith_f_op_f32(abs(-149f)), var_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, 429f, 284f), vec3<f32>(860f, -999f, var_0.a.x))), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, var_0.a.x, var_1.b), vec3<f32>(963f, var_2, 1330f))))), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_4.x, 1009f)));
}

