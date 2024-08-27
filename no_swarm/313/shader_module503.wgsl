struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    var var_0 = arg_2.c.x;
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_div_u32(1u, 1u), _wgslsmith_div_u32(arg_2.a.x, 70820u), arg_1.x), -1272f, _wgslsmith_f_op_vec3_f32(min(arg_2.c, vec3<f32>(arg_2.b, -693f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - arg_2.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1521f)))))));
    var_1 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_2.b, _wgslsmith_f_op_f32(step(183f, -130f)), false)))) * arg_2.d), vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(371f - var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 1511f)) - _wgslsmith_f_op_f32(trunc(arg_2.b))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_2.b, arg_2.b, arg_3.x)), _wgslsmith_f_op_f32(201f - var_1.d))))), -1043f);
    let var_2 = _wgslsmith_dot_vec2_u32(~(~(min(var_1.a.zz, vec2<u32>(var_1.a.x, 12230u)) >> (vec2<u32>(1u, 18746u) % vec2<u32>(32u)))), firstLeadingBit(_wgslsmith_div_vec2_u32(select(vec2<u32>(4294967295u, 132443u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 25576u), var_1.a.zy), vec2<bool>(false, arg_3.x)), ~vec2<u32>(arg_0.x, 1u))));
    var var_3 = reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~arg_2.a.zz, ~vec2<u32>(1u, u_input.c)), countOneBits(vec2<u32>(u_input.c, var_2))), arg_2.a.x, arg_0.x, 0u));
    return 1071f;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> f32 {
    global0 = array<vec3<f32>, 7>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1528f)), _wgslsmith_f_op_f32(1000f + -1068f), _wgslsmith_f_op_f32(-1000f + -1000f), -1298f) - vec4<f32>(_wgslsmith_f_op_f32(sign(-410f)), -128f, _wgslsmith_div_f32(559f, -864f), -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1641f))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(32422u, u_input.b.x)), ~u_input.b), firstLeadingBit(vec2<u32>(u_input.c, 4294967295u)), Struct_1(~vec3<u32>(3906u, 4294967295u, u_input.c), -223f, vec3<f32>(851f, -877f, -633f), _wgslsmith_f_op_f32(f32(-1f) * -762f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(763f, 1102f) + _wgslsmith_f_op_f32(1078f + -155f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b, vec2<u32>(u_input.c, 15133u) >> (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)), Struct_1(vec3<u32>(4294967295u, u_input.b.x, u_input.c), 751f, global0[_wgslsmith_index_u32(u_input.c, 7u)], -366f), vec3<bool>(true, true, true))))));
    global0 = array<vec3<f32>, 7>();
    let var_1 = Struct_1(vec3<u32>(~4294967295u & (_wgslsmith_sub_u32(8282u, u_input.c) << (reverseBits(4294967295u) % 32u)), 55997u, 4294967295u), 212f, _wgslsmith_f_op_vec3_f32(-var_0.xzz), var_0.x);
    global0 = array<vec3<f32>, 7>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(513f)) - -1336f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1146f, -1791f)))))) + _wgslsmith_f_op_f32(-var_1.c.x));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<vec3<f32>, 7>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(944f, -739f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -566f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(func_2(1i, vec2<i32>(-46706i, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -868f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1740f, -228f) + vec2<f32>(-2001f, -633f)))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1056f, 1718f)))))));
    let var_1 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, select(true, true, true)), vec3<bool>(false, all(vec4<bool>(false, false, true, true)), true)), !select(vec3<bool>(true, 0i > u_input.a, u_input.b.x <= arg_0), vec3<bool>(true, true, 3978i >= u_input.a), vec3<bool>(true, true, true)), vec3<bool>(!select(true, true, true), !(true && all(vec3<bool>(true, false, false))), true));
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    return Struct_1(vec3<u32>(29223u, ~select(15572u ^ arg_0, _wgslsmith_add_u32(1u, arg_0), var_1.x), ~_wgslsmith_mod_u32(arg_0, u_input.c)), -807f, global0[_wgslsmith_index_u32(u_input.b.x >> (reverseBits(4294967295u) % 32u), 7u)], _wgslsmith_f_op_f32(trunc(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = u_input.b;
    var var_2 = func_1(4294967295u);
    let var_3 = !select(!vec2<bool>(false, var_2.a.x > var_1.x), vec2<bool>(true, true), !(!any(vec3<bool>(false, true, false))));
    let var_4 = func_1(firstTrailingBit(~var_2.a.x));
    global0 = array<vec3<f32>, 7>();
    var var_5 = _wgslsmith_f_op_f32(max(var_2.b, _wgslsmith_f_op_f32(floor(var_4.b))));
    var_5 = var_2.c.x;
    let var_6 = _wgslsmith_div_vec3_f32(var_2.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_4.c, vec3<f32>(-157f, -1000f, 596f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(-568f, var_2.b, var_2.c.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.d, 585f, -121f))))), var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, var_0, u_input.a), vec4<i32>(2147483647i, 1i, 2147483647i, u_input.a), vec4<bool>(true, var_3.x, var_3.x, false)), ~vec4<i32>(u_input.a, u_input.a, -15396i, u_input.a)), vec4<i32>(countOneBits(u_input.a), _wgslsmith_mult_i32(-38719i, -30973i), -1i, ~(-2147483647i))) >> (select(vec4<u32>(u_input.b.x, abs(var_2.a.x), ~1u, 0u), _wgslsmith_mult_vec4_u32(~vec4<u32>(10970u, var_4.a.x, 45665u, u_input.c), ~vec4<u32>(5485u, var_2.a.x, var_4.a.x, var_2.a.x)), var_3.x) % vec4<u32>(32u)), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec4_u32(max(~vec4<u32>(var_2.a.x, 20042u, var_2.a.x, var_2.a.x), min(vec4<u32>(738u, 0u, 0u, u_input.c), vec4<u32>(var_4.a.x, 4294967295u, var_1.x, 49479u))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.b.x, 1u, var_1.x, 17854u)), ~vec4<u32>(4294967295u, var_2.a.x, 4294967295u, var_2.a.x)))));
}

