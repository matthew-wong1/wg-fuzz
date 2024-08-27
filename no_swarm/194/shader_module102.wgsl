struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_1(abs(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(arg_1.a.a, arg_1.c.a.a.a)));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1271f * arg_1.b.a.c))))));
    global0 = array<Struct_3, 13>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) + var_1.a);
    global0 = array<Struct_3, 13>();
    return (abs(u_input.a.x) << (~firstLeadingBit(~15604u) % 32u)) >> (arg_1.b.d.x % 32u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-1770f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f * _wgslsmith_f_op_f32(arg_1.a + -1610f)))));
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    var var_1 = abs(max(vec4<i32>(-8096i, 21483i, -func_3(vec2<u32>(46942u, 136947u), Struct_4(Struct_1(vec3<i32>(u_input.a.x, -33118i, u_input.a.x)), global0[_wgslsmith_index_u32(4294967295u, 13u)], Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.a.x, 0i, -10043i)), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, -21791i)), var_0, Struct_1(vec3<i32>(-1i, u_input.a.x, 11650i))), arg_0.x, Struct_2(Struct_1(vec3<i32>(25342i, u_input.a.x, u_input.a.x)), Struct_1(vec3<i32>(38998i, u_input.a.x, 0i)), var_0, Struct_1(vec3<i32>(13804i, u_input.a.x, -6999i))), vec3<u32>(1u, 4294967295u, 50807u), u_input.a.x), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), firstTrailingBit(u_input.a.x)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(30592i, u_input.a.x, -5330i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, 2147483647i, -1i), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), ~vec4<i32>(0i, u_input.a.x, u_input.a.x, -20669i)), vec4<i32>(_wgslsmith_add_i32(1i, u_input.a.x), u_input.a.x, u_input.a.x, -21222i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-149f, -470f) + vec2<f32>(629f, arg_1.a))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.a, arg_1.a), vec2<f32>(1866f, arg_1.a))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a, var_0), vec2<f32>(arg_1.a, 183f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-216f, -1136f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1468f)))), -481f));
    return Struct_1(var_1.zww);
}

fn func_1(arg_0: u32) -> vec3<bool> {
    global0 = array<Struct_3, 13>();
    var var_0 = vec2<u32>(arg_0, ~(~52182u));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1116f)))))));
    let var_2 = Struct_4(func_2(select(vec2<bool>(true, all(vec4<bool>(true, true, false, false))), vec2<bool>(any(vec3<bool>(true, false, true)), all(vec4<bool>(false, false, true, true))), true), Struct_5(1045f)), Struct_3(Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-21294i, -12432i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_1(-vec3<i32>(u_input.a.x, -1239i, -15088i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-834f)), -1115f)), func_2(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_5(-488f))), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, false), vec2<bool>(true, true))), Struct_2(func_2(vec2<bool>(true, true), Struct_5(359f)), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-12778i, 22296i, 0i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -245f), Struct_1(vec3<i32>(1i, -1i, u_input.a.x))), ~vec3<u32>(~23008u, 1u & arg_0, reverseBits(var_0.x)), -1i), global0[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(func_2(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -888f))).a));
    var_0 = ~_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(var_2.c.d.x, arg_0), var_2.b.d.x & var_0.x)), max(var_2.c.d.yy, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(var_0.x, var_0.x)), vec2<u32>(var_0.x, 3424u), ~var_2.c.d.yy)), vec2<u32>(abs(~11552u), 4294967295u));
    return !vec3<bool>(var_2.b.b, var_2.c.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(u_input.a.x, -(~(-16805i)), -9811i, -abs(13731i));
    let var_1 = true && (!all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))) | all(select(vec3<bool>(true, true, true), func_1(1u), vec3<bool>(true, true, true))));
    var_0 = -_wgslsmith_add_vec4_i32(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-9697i, 0i, -2147483647i, var_0.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.x))), abs(firstLeadingBit(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-795f, 851f, 857f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(389f, 763f, 124f) * vec3<f32>(1495f, 230f, -601f))))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-142f, 545f, -1738f))))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(min(-851f, -1000f))) + -1000f)));
    var var_4 = false;
    var var_5 = vec3<bool>(!(!any(vec4<bool>(true, var_1, true, false))), true, var_1);
    global0 = array<Struct_3, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_mult_u32(1u, ~_wgslsmith_sub_u32(select(4294967295u, 4294967295u, var_1), 1u)), 0u, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(18150i, u_input.a.x), u_input.a), firstLeadingBit(-25310i))), 0i);
}

