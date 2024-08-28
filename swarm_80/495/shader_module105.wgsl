struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global0 = Struct_2(vec3<i32>(u_input.d, _wgslsmith_div_i32(select(~global0.a.x, -2147483647i & arg_0.x, all(vec2<bool>(false, false))), global0.a.x), 16229i ^ _wgslsmith_clamp_i32(abs(global0.a.x), 43394i & arg_0.x, abs(u_input.d))), arg_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -560f, global0.c.x, -587f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, 1610f, global0.c.x) + vec4<f32>(global0.c.x, global0.b, -243f, global0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(102f, global0.b, -1682f, arg_2))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, 145f, -503f, arg_2) - vec4<f32>(arg_2, 1257f, arg_2, 2015f))) * global0.c)));
    var var_0 = Struct_3(~_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.d, -2147483647i, global0.a.x), global0.a), arg_0.wxz ^ _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, arg_0.x, global0.a.x), vec3<i32>(global0.a.x, arg_0.x, -32756i))));
    global0 = Struct_2(var_0.a, -642f, vec4<f32>(-365f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-636f + _wgslsmith_f_op_f32(ceil(-817f))))), global0.b, _wgslsmith_f_op_f32(ceil(1000f))));
    var var_1 = Struct_3(countOneBits(vec3<i32>(2147483647i, -1i, u_input.d) >> (vec3<u32>(_wgslsmith_sub_u32(u_input.a, 4294967295u), 0u ^ u_input.c, 1u) % vec3<u32>(32u))));
    var var_2 = select(~(~(~vec3<u32>(arg_1.a.x, 14610u, arg_1.a.x))), _wgslsmith_mod_vec3_u32(min(arg_1.a, vec3<u32>(~0u, ~u_input.c, 4294967295u)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, arg_1.a.x, arg_1.a.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, u_input.a), vec3<u32>(u_input.a, 5363u, arg_1.a.x)))), true);
    return arg_1.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_3(arg_3.a | arg_3.a);
    var var_1 = arg_1.x;
    var_0 = Struct_3(var_0.a);
    global0 = Struct_2(_wgslsmith_clamp_vec3_i32(arg_2.a, ~(-vec3<i32>(arg_3.a.x, -1i, var_0.a.x)), ~select(_wgslsmith_mult_vec3_i32(global0.a, vec3<i32>(-2147483647i, u_input.d, -979i)), _wgslsmith_div_vec3_i32(arg_2.a, global0.a), vec3<bool>(true, true, true))), 607f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, 540f, arg_3.c.x, arg_1.x), _wgslsmith_f_op_vec4_f32(-arg_3.c)))), arg_3.c)));
    let var_2 = false;
    return arg_1.x;
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_2(~global0.a | vec3<i32>(_wgslsmith_div_i32(u_input.d, _wgslsmith_add_i32(u_input.d, u_input.d)), 2147483647i, max(global0.a.x, 0i) & global0.a.x), _wgslsmith_f_op_f32(select(-1186f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, -1183f))), true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, global0.b, global0.b, global0.c.x), vec4<f32>(global0.c.x, global0.b, global0.b, global0.c.x), vec4<bool>(false, true, false, false))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, global0.b, global0.b, -796f))))))));
    var var_1 = _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(f32(-1f) * -632f));
    var_1 = 836f;
    let var_2 = (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.x)) - -959f))) > _wgslsmith_div_f32(var_0.c.x, 1f)) && true;
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b)));
    return vec4<f32>(724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b)), _wgslsmith_f_op_f32(func_4(Struct_1(vec3<u32>(min(u_input.b, u_input.a), ~u_input.a, func_3(vec4<i32>(-10026i, global0.a.x, -42912i, global0.a.x), Struct_1(vec3<u32>(u_input.b, 4294967295u, u_input.c)), 811f))), vec2<f32>(global0.c.x, global0.b), Struct_3(abs(var_0.a >> (vec3<u32>(u_input.b, u_input.c, u_input.b) % vec3<u32>(32u)))), var_0)), _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(var_0.c.x * -644f)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    global0 = Struct_2(~(select(_wgslsmith_clamp_vec3_i32(arg_3.a, arg_1.a, vec3<i32>(-2147483647i, arg_1.a.x, 1i)), ~vec3<i32>(-1i, u_input.d, u_input.d), vec3<bool>(true, true, true)) | abs(vec3<i32>(arg_1.a.x, arg_1.a.x, global0.a.x))), arg_3.c.x, _wgslsmith_f_op_vec4_f32(ceil(global0.c)));
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(select(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), true), true), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true), _wgslsmith_f_op_f32(-arg_3.b) == arg_1.b), !vec2<bool>(any(vec2<bool>(false, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), 4294967295u != arg_2.x), vec2<bool>(true, true), !(-23387i > global0.a.x))));
    var_0 = vec2<bool>(~min(arg_2.x | u_input.b, ~80497u) <= (~_wgslsmith_clamp_u32(arg_2.x, arg_2.x, u_input.c) << (arg_2.x % 32u)), true);
    let var_1 = Struct_1(vec3<u32>(arg_2.x >> (4294967295u % 32u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(59258u, 7892u, arg_2.x, u_input.b), vec4<u32>(u_input.c, 54852u, arg_2.x, u_input.a)), firstTrailingBit(u_input.c)), ~_wgslsmith_sub_u32(~4294967295u, 0u)));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1319f, arg_0.x))), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(func_4(Struct_1(var_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-770f, 864f)), Struct_3(arg_1.a), Struct_2(arg_3.a, global0.b, vec4<f32>(-1000f, -1807f, -635f, -1359f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_3.c * arg_0))), _wgslsmith_f_op_vec4_f32(-arg_1.c))));
    return Struct_2(~(~(vec3<i32>(-1i) * -arg_1.a)), global0.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1445f), -1063f))) * global0.c));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    return func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.b, -1579f, 1162f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.c.x, 1513f, 782f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.c)) * _wgslsmith_f_op_vec4_f32(-global0.c))))), Struct_2(-vec3<i32>(65761i, u_input.d, arg_0.x) ^ ~vec3<i32>(1i, arg_0.x, u_input.d), global0.c.x, _wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b, global0.b, -1000f, -1000f), _wgslsmith_f_op_vec4_f32(ceil(global0.c)))))), vec2<u32>(~_wgslsmith_add_u32(u_input.c, u_input.b) << (4294967295u % 32u), _wgslsmith_clamp_u32(u_input.b, ~(~u_input.b), ~countOneBits(u_input.b))), Struct_2(select(-(~global0.a), global0.a, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2682f, _wgslsmith_div_f32(917f, global0.c.x), global0.b, _wgslsmith_f_op_f32(trunc(-464f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = true;
    global0 = func_1(global0.a.zx);
    var_1 = true;
    let var_2 = Struct_2(~global0.a, var_0, global0.c);
    let var_3 = ~abs((countOneBits(vec4<u32>(77931u, u_input.a, u_input.a, u_input.c)) ^ ~vec4<u32>(u_input.b, 16987u, u_input.b, u_input.a)) << ((abs(vec4<u32>(3879u, u_input.a, 1u, 44667u)) | ~vec4<u32>(u_input.b, u_input.a, 1u, u_input.c)) % vec4<u32>(32u)));
    var var_4 = -1023f;
    let var_5 = _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, ~0u, min(var_3.x, ~24494u)), ~var_3.wzw);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1765f, -2272f, global0.b, global0.c.x))))))));
}

