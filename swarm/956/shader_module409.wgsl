struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>) -> f32 {
    var var_0 = u_input.a.x;
    var_0 = arg_0.a.b & -10160i;
    let var_1 = arg_1.x;
    let var_2 = var_1;
    let var_3 = ~vec2<u32>(arg_0.a.a.a.x, 81162u);
    return arg_0.d.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> vec4<i32> {
    var var_0 = vec4<bool>(true, any(vec3<bool>(!(arg_0.c & arg_1.c), true, arg_1.c)), arg_1.c, select(all(!select(vec4<bool>(arg_0.e.x, false, arg_0.e.x, arg_2.c), vec4<bool>(true, arg_1.c, arg_1.a.c, arg_0.c), vec4<bool>(true, arg_2.c, arg_1.a.c, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + arg_1.d.x) - -1521f) <= _wgslsmith_f_op_f32(func_1(Struct_3(arg_1.a, Struct_1(vec2<u32>(4294967295u, arg_0.a.a.x)), arg_1.c, arg_1.d), arg_0.e.zyx)), all(vec4<bool>(true, true, all(vec3<bool>(arg_0.c, arg_2.e.x, arg_1.a.e.x)), arg_2.e.x))));
    var var_1 = arg_1;
    var var_2 = var_1.a.a;
    let var_3 = vec4<bool>(any(var_0.xyw), var_1.a.e.x, true, !arg_0.e.x);
    let var_4 = select(~(~(~vec3<u32>(arg_0.d, arg_1.b.a.x, arg_0.d))), vec3<u32>(~(~arg_0.a.a.x), var_2.a.x, 1u), !any(!vec3<bool>(false, false, var_0.x)));
    return u_input.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.x + -116f);
    let var_1 = Struct_2(arg_1, _wgslsmith_dot_vec4_i32(u_input.a, func_3(Struct_2(arg_1, 63070i, false, reverseBits(22249u), !vec4<bool>(true, false, false, arg_2)), Struct_3(Struct_2(Struct_1(arg_1.a), -2147483647i, true, 1u, vec4<bool>(true, true, false, true)), Struct_1(arg_1.a), all(vec2<bool>(arg_2, false)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, -1000f, arg_0.x, 865f)))), Struct_2(arg_1, _wgslsmith_div_i32(-1i, u_input.a.x), select(arg_2, arg_2, arg_2), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 0u, arg_1.a.x), vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), vec4<bool>(true, arg_2, arg_2, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2025f), -309f)))), arg_2, ~_wgslsmith_mult_u32(1u, 63974u) << (~(~(~arg_1.a.x)) % 32u), !(!select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(false, true, arg_2, false))));
    var var_2 = Struct_4(Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.x, 43372u), arg_1.a), vec2<u32>(var_1.a.a.x, 1u) & vec2<u32>(1180u, 1u)) & (max(arg_1.a, var_1.a.a) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(99455u, arg_1.a.x), vec2<u32>(arg_1.a.x, 41620u), arg_1.a))));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.wzw)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.yyw))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xxx), vec3<f32>(var_0, var_0, -1000f))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_0, var_3.x, -1000f))))))) - vec4<f32>(1194f, -490f, _wgslsmith_f_op_f32(-var_3.x), -1946f));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(373f, -1724f), _wgslsmith_f_op_f32(round(492f)), -272f, _wgslsmith_f_op_f32(789f - -1921f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-370f, -577f, -1077f, 646f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-589f, 810f, -831f, 733f))))), Struct_1(select(vec2<u32>(1u, 1u), select(vec2<u32>(1u, 1u), vec2<u32>(9404u, 13415u), vec2<bool>(false, true)), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 0u)), u_input.a.x, true, 0u, vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(1u, 33255u)), false, vec4<f32>(1541f, 592f, -701f, 396f)), vec3<bool>(false, false, true))))) == 197f), -13036i, select(false, false & all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), true))), 1u, select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), true), vec4<bool>(true, true, true, true), true));
    var var_1 = true;
    var_1 = all(vec3<bool>(false, any(select(select(vec3<bool>(var_0.c, var_0.c, var_0.e.x), vec3<bool>(var_0.c, var_0.e.x, var_0.e.x), false), select(var_0.e.zzx, var_0.e.yxx, var_0.e.xyw), !var_0.c)), all(select(select(var_0.e.wxz, var_0.e.zxy, true), vec3<bool>(true, true, true), false))));
    var_1 = any(vec2<bool>(true, true));
    var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1198f, -1000f), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1697f)))), -1457f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-752f, -551f, 1383f))))))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 739f)))), vec3<f32>(-1000f, 350f, -315f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(var_2.x + var_2.x)))), !(!(!var_0.e.wzz))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a.zyw), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~(-u_input.a), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-39125i, var_0.b, u_input.a.x, 2147483647i), u_input.a, var_0.c), -vec4<i32>(38500i, -1i, var_0.b, var_0.b), vec4<i32>(35252i, -16852i, 38985i, u_input.a.x))), max(-(~u_input.a), ~_wgslsmith_mult_vec4_i32(vec4<i32>(19219i, u_input.a.x, 27919i, var_0.b), vec4<i32>(-9972i, u_input.a.x, 0i, 9938i)))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a.a, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.d, var_0.d), var_0.a.a)), abs(var_0.a.a)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, 3053u, 0u), vec3<u32>(var_0.d, var_0.a.a.x, 1u)))), _wgslsmith_add_i32(var_0.b, 35814i));
}

