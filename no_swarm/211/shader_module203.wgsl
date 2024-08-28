struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(21238u, 0u);

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(1i, -1i, 1i, -45293i), vec4<i32>(28404i, -1i, 2147483647i, 50754i), vec4<i32>(-24669i, i32(-2147483648), 38963i, 1i), vec4<i32>(2147483647i, 2147483647i, -1i, -32360i), vec4<i32>(-63332i, 11073i, 1i, 1i), vec4<i32>(0i, -32965i, 2147483647i, 1i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    global1 = arg_3;
    var var_0 = reverseBits(1u);
    var var_1 = Struct_1(-26236i);
    global0 = select(vec2<u32>(~_wgslsmith_mod_u32(~13125u, 27440u), countOneBits(22504u)), _wgslsmith_mult_vec2_u32(~(~max(vec2<u32>(u_input.c, global0.x), vec2<u32>(u_input.d, u_input.b))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), firstTrailingBit(vec2<u32>(11215u, global0.x))), vec2<u32>(1u, global0.x), (vec2<u32>(1u, 0u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 23125u), vec2<u32>(0u, u_input.d)))), vec2<bool>(true, false));
    let var_2 = abs(~min(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_0.x, 0i, arg_3.a), ~vec4<i32>(0i, arg_1.a, 1i, arg_3.a)), _wgslsmith_div_vec4_i32(vec4<i32>(17553i, u_input.a, global1.a, arg_3.a), -vec4<i32>(1i, arg_0.x, var_1.a, -1i))));
    return vec2<bool>(false, !any(vec4<bool>(all(vec3<bool>(false, false, false)), true, !arg_2, false)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    global0 = abs(arg_3);
    global2 = array<vec4<i32>, 6>();
    global1 = Struct_1(~(-2147483647i));
    global0 = _wgslsmith_div_vec2_u32(arg_3, countOneBits(vec2<u32>(arg_3.x, ~(~71936u))));
    let var_0 = func_3(_wgslsmith_add_vec2_i32(reverseBits(-(~vec2<i32>(-2147483647i, global1.a))), vec2<i32>(~(-global1.a), countOneBits(arg_2))), Struct_1(-_wgslsmith_sub_i32(0i ^ u_input.a, ~(-57114i))), any(vec2<bool>(1u != ~arg_3.x, true)), arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -242f))))))));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-751f + _wgslsmith_f_op_f32(func_2(arg_0, 43380i, arg_0.a, vec2<u32>(u_input.d, 79080u)))), -646f) + vec2<f32>(-922f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1333f, -1242f)), _wgslsmith_f_op_f32(-1995f - 772f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1448f - 1436f))), _wgslsmith_f_op_f32(func_2(Struct_1(arg_0.a), -global1.a, reverseBits(2147483647i), vec2<u32>(138635u, u_input.d)))), vec2<f32>(1f, 1f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1455f)))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -992f) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1903f)) + var_1.x))));
    global1 = Struct_1(~_wgslsmith_dot_vec4_i32(-(global2[_wgslsmith_index_u32(global0.x, 6u)] | vec4<i32>(10205i, arg_0.a, arg_0.a, 35319i)), abs(vec4<i32>(31561i, u_input.a, -16243i, -1i)) | -vec4<i32>(-2754i, arg_0.a, u_input.a, -13156i)));
    let var_3 = arg_0;
    return (_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(u_input.b, 19713u) | _wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(4294967295u, 98379u)), vec2<u32>(reverseBits(0u), global0.x)) & _wgslsmith_mult_vec2_u32(vec2<u32>(54682u, global0.x) & (vec2<u32>(1u, 373u) >> (vec2<u32>(1u, global0.x) % vec2<u32>(32u))), firstTrailingBit(~vec2<u32>(35525u, global0.x)))) >> (((_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 10146u) >> (vec2<u32>(global0.x, u_input.d) % vec2<u32>(32u)), vec2<u32>(1u, 4294967295u) & vec2<u32>(global0.x, 80651u)) & ~(~vec2<u32>(14415u, 25852u))) | ~vec2<u32>(~4294967295u, ~global0.x)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0i);
    global0 = vec2<u32>(max(~abs(u_input.b), 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 40356u, global0.x), firstTrailingBit(vec3<u32>(3721u, global0.x, global0.x))) | _wgslsmith_div_u32(0u, u_input.c)) ^ (vec2<u32>(4294967295u, ~(~0u)) & _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, global0.x), vec2<u32>(global0.x, 4294967295u)) | _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(6370u, 4294967295u)), func_1(Struct_1(global1.a)) & _wgslsmith_add_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(1u, 4294967295u))));
    global1 = Struct_1(-var_0.a);
    var var_1 = Struct_1(abs(-12361i));
    var var_2 = ~((vec4<u32>(u_input.b ^ 50843u, global0.x, 1u, min(1u, 64948u)) ^ vec4<u32>(global0.x, 1u, ~global0.x, _wgslsmith_div_u32(u_input.b, global0.x))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, ~0u, u_input.b, ~u_input.c), ~vec4<u32>(1u, 4294967295u, global0.x, global0.x) | vec4<u32>(1u, u_input.b, global0.x, 0u)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1168f * -1058f) + -869f)) * _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -319f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -520f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(984f * _wgslsmith_div_f32(-542f, 1165f)))));
    var_1 = Struct_1(62321i);
    var var_4 = Struct_1(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec4_i32(countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(794u, 4294967295u), 6u)]), -global2[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(178f, -1011f, var_3.x), vec3<f32>(1286f, var_3.x, -1990f), vec3<bool>(false, true, false)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.x, var_3.x, var_3.x))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.x, 1691f, var_3.x))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -904f, -572f) - vec3<f32>(var_3.x, 2681f, 238f))))));
}

