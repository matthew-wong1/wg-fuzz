struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(350f - -1410f), -319f, -966f);
    let var_1 = arg_0;
    let var_2 = !vec4<bool>(true, any(vec2<bool>(!arg_0.a, false)), any(!(!vec2<bool>(var_1.a, true))), var_1.a);
    var var_3 = Struct_1(all(!var_2));
    var_3 = Struct_1(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-284f))) <= 2067f, arg_1, var_3.a));
    return abs(~(~countOneBits(vec4<u32>(1u, 1u, 1u, 1u))));
}

fn func_2() -> Struct_1 {
    let var_0 = -738f;
    let var_1 = select(func_3(Struct_1(true), true, Struct_1(true)), vec4<u32>(~firstTrailingBit(1u), ~(max(11177u, 4294967295u) << (0u % 32u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(max(vec2<u32>(0u, 13001u), vec2<u32>(20903u, 4294967295u))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u))), 215u), all(vec3<bool>(false, true, true)));
    var var_2 = (firstTrailingBit(~min(2147483647i, u_input.b)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(20693u, var_1.x, 35545u, 19602u), vec4<u32>(var_1.x, 23110u, 42687u, 0u)) % 32u)) ^ -_wgslsmith_mult_i32(u_input.a.x, 0i);
    var var_3 = Struct_1(false);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -264f), vec2<f32>(var_0, 665f), var_3.a)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(478f, var_0)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, -1457f))) - _wgslsmith_div_vec2_f32(vec2<f32>(450f, var_0), vec2<f32>(-1865f, var_0))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, -714f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(-734f)), _wgslsmith_f_op_f32(sign(var_0)))))));
    return Struct_1(var_3.a);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 5>();
    global0 = array<vec3<bool>, 5>();
    var var_0 = arg_0;
    let var_1 = 1178f;
    var var_2 = (firstTrailingBit(select(abs(vec4<u32>(0u, 0u, 67200u, 47690u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a))) & ~(~(~vec4<u32>(92869u, 41903u, 110637u, 0u)))) & (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~45227u, abs(0u), 1u), vec4<u32>(1u, 1u, 38026u, _wgslsmith_dot_vec4_u32(vec4<u32>(65807u, 4810u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 50003u)))) & firstLeadingBit(select(vec4<u32>(1u, 41020u, 0u, 46357u), _wgslsmith_div_vec4_u32(vec4<u32>(80111u, 7009u, 0u, 2084u), vec4<u32>(63390u, 4294967295u, 4294967295u, 66686u)), vec4<bool>(var_0.a, false, true, true))));
    return func_2();
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    global0 = array<vec3<bool>, 5>();
    var var_0 = abs(u_input.b);
    global0 = array<vec3<bool>, 5>();
    let var_1 = func_1(arg_2);
    let var_2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    return select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(select(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(39438u, 1u), vec2<u32>(1u, 1u), abs(vec2<u32>(4294967295u, 21136u))), ~select(vec2<u32>(23760u, 1876u), vec2<u32>(1u, 4294967295u), false)), true), 5u)], vec3<bool>(firstTrailingBit(-2147483647i) < (i32(-1i) * -u_input.b), true, !arg_0));
}

fn func_5(arg_0: vec3<bool>) -> i32 {
    var var_0 = 312f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1961f * 616f), -925f))));
    var var_1 = vec4<f32>(-311f, -951f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-767f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-792f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2753f + 2045f))))));
    var var_2 = select(u_input.b | min(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_div_i32(0i, 14244i), 2147483647i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.xx), u_input.b)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 55860i, 2147483647i, u_input.a.x) << (vec4<u32>(49085u, 52045u, 4294967295u, 1u) % vec4<u32>(32u)), ~(~vec4<i32>(u_input.b, 0i, u_input.a.x, u_input.a.x))), true);
    var var_3 = func_2();
    return 59172i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 5>();
    let var_0 = func_5(func_4(all(vec3<bool>(15418i <= u_input.b, all(vec4<bool>(false, true, false, true)), any(global0[_wgslsmith_index_u32(1u, 5u)]))), -462f, func_1(Struct_1(false))));
    global0 = array<vec3<bool>, 5>();
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(922f, 227f, -1214f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1744f, 948f, 1043f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-124f, 115f, -1728f), vec3<f32>(-455f, 983f, -705f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -895f, 1000f))))));
    var_1 = true;
    var_2 = vec3<f32>(-1964f, 618f, _wgslsmith_f_op_f32(-337f * var_2.x));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, -658f, -1000f, -1919f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(952f, var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, -775f, var_2.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, var_2.x, -158f, var_2.x), vec4<f32>(var_2.x, var_2.x, -1712f, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 426f, 225f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1152f, -352f, -992f, -258f) + vec4<f32>(var_2.x, -1651f, var_2.x, -256f))))), -738f, var_0);
}

