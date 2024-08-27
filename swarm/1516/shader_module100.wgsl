struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, true), 1746f);

var<private> global2: f32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = ~(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 0u, 4294967295u)), u_input.b) << (u_input.b % vec3<u32>(32u)));
    var var_1 = !any(!vec4<bool>(true, arg_1.b, !arg_1.b, true));
    let var_2 = Struct_2(select(arg_0, vec2<bool>(false, any(vec2<bool>(arg_0.x, arg_0.x)) || true), arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) - _wgslsmith_f_op_f32(f32(-1f) * -404f)) - global1.b));
    let var_3 = vec2<f32>(-1696f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-582f, var_2.b), _wgslsmith_f_op_f32(-var_2.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b))))));
    var var_4 = ~u_input.e.xw;
    return _wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, 7659i), countOneBits(-2147483647i), 20810i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, 47105i, 2488i), vec4<i32>(u_input.a, u_input.a, -3577i, u_input.a))), -(~vec4<i32>(-2147483647i, 19722i, u_input.a, u_input.a))), ~_wgslsmith_div_vec4_i32(vec4<i32>(11450i, u_input.a, 0i, -32850i) ^ vec4<i32>(-21107i, u_input.a, 107645i, 0i), abs(vec4<i32>(1i, 0i, u_input.a, u_input.a))), select(arg_1.b, false, true)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(1i, u_input.a, -15829i, u_input.a)) | vec4<i32>(~u_input.a, -25306i, 1i, u_input.a), firstTrailingBit(vec4<i32>(abs(u_input.a), abs(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(62826i, 26737i, u_input.a)), 1i))));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_3 {
    var var_0 = global1.a;
    var var_1 = Struct_3(firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0, 3386i, arg_0), vec4<i32>(-2147483647i, 2147483647i, u_input.a, -32880i)), -vec4<i32>(u_input.a, u_input.a, -9729i, arg_0)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-882f + global1.b), (countOneBits(29169u) >> (_wgslsmith_add_u32(~0u, arg_1) % 32u)) != 4294967295u);
    var var_3 = Struct_3(vec4<i32>(-14836i, _wgslsmith_mult_i32(1i, -func_3(vec2<bool>(var_2.b, false), Struct_1(var_2.a, var_0.x))), min(-(~4174i), 1453i), 0i));
    let var_4 = Struct_2(vec2<bool>(false && all(select(vec4<bool>(global1.a.x, var_2.b, global1.a.x, var_0.x), vec4<bool>(false, var_2.b, true, true), vec4<bool>(var_2.b, false, var_0.x, false))), select(true, true, any(!global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global1.b)))) * global1.b)));
    return Struct_3(var_1.a);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    global1 = Struct_2(vec2<bool>(!(global1.a.x && true), global1.a.x | !arg_3.x), _wgslsmith_f_op_f32(-arg_2.a));
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.a, 1089f))) * vec2<f32>(arg_2.a, -171f)), vec2<f32>(-125f, arg_2.a))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.a, global1.b))))))));
    var var_2 = any(!arg_3);
    let var_3 = _wgslsmith_f_op_f32(global1.b * var_1.x);
    return -(-_wgslsmith_sub_i32(-58217i, 11901i) & arg_0.a.x);
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * global1.b)), _wgslsmith_f_op_f32(global1.b + global1.b), -890f);
    let var_1 = Struct_3(vec4<i32>(~(-23098i), ~(-u_input.a) | u_input.a, func_4(func_2(1i, u_input.b.x >> (245u % 32u)), ~_wgslsmith_mult_u32(u_input.b.x, u_input.c), Struct_1(_wgslsmith_f_op_f32(round(global1.b)), global1.a.x), !arg_0), _wgslsmith_clamp_i32(22046i, 13843i, i32(-1i) * -2147483647i)));
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))), -629f));
    global0 = global1.b;
    return Struct_2(select(vec2<bool>(any(select(arg_0, vec3<bool>(false, true, false), true)), (global1.b != -305f) == (true | arg_0.x)), global1.a, !(!vec2<bool>(arg_0.x, global1.a.x))), global1.b);
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    global1 = func_1(vec3<bool>(func_1(vec3<bool>(func_1(vec3<bool>(arg_0.a.x, false, false)).a.x, false, true)).a.x, false, arg_0.a.x));
    global2 = _wgslsmith_f_op_f32(sign(global1.b));
    global1 = arg_0;
    global0 = global1.b;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b + 927f))), -513f), true)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1492f);
    let var_0 = true;
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)));
    let var_1 = ~(~vec2<i32>(max(1i, 2147483647i), 2147483647i)) | -firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(5940i, u_input.a)) & _wgslsmith_sub_vec2_i32(vec2<i32>(9901i, -1i), vec2<i32>(0i, 2147483647i)));
    var var_2 = u_input.b.x | 4294967295u;
    global1 = func_5(func_1(!vec3<bool>(any(vec4<bool>(false, false, global1.a.x, var_0)), var_1.x < u_input.a, global1.a.x & var_0)), _wgslsmith_f_op_f32(-1197f * -113f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(714f)), 245f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.b, global1.b)))), global1.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * global1.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global1.b, -1000f, global1.a.x)), -1040f)))), select(_wgslsmith_sub_i32(func_3(func_1(vec3<bool>(false, false, true)).a, Struct_1(global1.b, var_0)), 10945i), 2147483647i, global1.a.x), max(abs(~(~vec2<u32>(28769u, 0u))), vec2<u32>(max(1u, ~u_input.e.x), min(u_input.d, 1u))));
}

