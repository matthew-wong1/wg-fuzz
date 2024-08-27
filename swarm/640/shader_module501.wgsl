struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(-36857i, -8314i), vec2<i32>(-35002i, 12495i), vec2<i32>(2147483647i, 520i), vec2<i32>(-25513i, -12915i), vec2<i32>(1i, 7732i), vec2<i32>(-40184i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(24324i, 29003i), vec2<i32>(-17060i, i32(-2147483648)), vec2<i32>(-37484i, 0i), vec2<i32>(-3895i, 26168i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-2834i, i32(-2147483648)), vec2<i32>(60285i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, -13326i), vec2<i32>(-33844i, -19995i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(3697i, -1i), vec2<i32>(-14304i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(-2993i, -43412i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    global0 = array<vec2<i32>, 23>();
    global0 = array<vec2<i32>, 23>();
    let var_0 = vec2<u32>(min(4294967295u, 4294967295u), _wgslsmith_div_u32(~max(arg_1.a, 0u), ~(~13137u)) << (arg_1.a % 32u));
    global0 = array<vec2<i32>, 23>();
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(min(~(u_input.a.x >> (arg_1.a % 32u)), var_0.x), var_0.x), vec2<u32>(_wgslsmith_div_u32(47079u, arg_1.a), u_input.c.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<f32>) -> i32 {
    global0 = array<vec2<i32>, 23>();
    var var_0 = Struct_1(arg_0.x, ~_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(9558u, ~1u, arg_0.x << (52276u % 32u)), 23u)], ~max(global0[_wgslsmith_index_u32(arg_0.x, 23u)], vec2<i32>(15444i, u_input.d))), firstTrailingBit(select(-vec4<i32>(u_input.d, 1i, 19390i, 1i), u_input.b, !vec4<bool>(arg_1, arg_1, true, true))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -539f) - _wgslsmith_f_op_f32(f32(-1f) * -144f)), _wgslsmith_f_op_f32(func_2(1i, Struct_1(_wgslsmith_sub_u32(4294967295u, var_0.a), reverseBits(0i), min(var_0.c, var_0.c)), u_input.b))))));
    var var_2 = Struct_1(firstTrailingBit(~arg_0.x), u_input.b.x, _wgslsmith_mult_vec4_i32(firstTrailingBit(u_input.b), var_0.c));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, _wgslsmith_div_f32(var_1, 915f), _wgslsmith_f_op_f32(f32(-1f) * -2115f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), -1402f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1261f, arg_2.x, -1494f, var_1)), select(vec4<bool>(false, arg_1, false, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), false))), arg_1))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 1524f, -1236f, var_1) * vec4<f32>(var_1, 164f, arg_2.x, -660f)))))))));
    return ~u_input.b.x;
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(210f))), _wgslsmith_f_op_f32(func_2(u_input.b.x, Struct_1(u_input.c.x, u_input.d, u_input.b), ~vec4<i32>(u_input.b.x, i32(-1i) * -7357i, u_input.d, u_input.d))), -178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(932f))))) * -155f));
    global0 = array<vec2<i32>, 23>();
    global0 = array<vec2<i32>, 23>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = ~(-_wgslsmith_div_i32(_wgslsmith_div_i32(-24777i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 17244i, u_input.d, u_input.d), u_input.b)), ~0i));
    return Struct_1(select(u_input.c.x | _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(74821u, u_input.a.x), u_input.a), 7215u), ~countOneBits(firstLeadingBit(17515u)), true), _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), func_3(u_input.c, true, vec4<f32>(var_1, var_1, var_1, var_1)), 1i), firstTrailingBit(u_input.b.yxw) & u_input.b.zwx)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec3<f32>(1f, 1f, 1f);
    global0 = array<vec2<i32>, 23>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))))) - _wgslsmith_f_op_f32(-864f - var_1.x));
    var var_3 = select(!(!vec2<bool>(all(vec4<bool>(true, true, true, false)), true)), vec2<bool>(false && any(vec3<bool>(true, true, true)), true & !all(vec4<bool>(true, true, false, false))), select(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, select(true, true, false)), !select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, select(var_0.c, ~var_0.c, select(select(select(vec4<bool>(var_3.x, true, var_3.x, true), vec4<bool>(true, true, var_3.x, true), vec4<bool>(true, var_3.x, var_3.x, true)), select(vec4<bool>(true, true, var_3.x, var_3.x), vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(false, var_3.x, false, var_3.x)), !vec4<bool>(var_3.x, true, var_3.x, true)), select(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, true), select(vec4<bool>(false, var_3.x, var_3.x, true), vec4<bool>(false, true, var_3.x, var_3.x), vec4<bool>(true, false, true, false))), !select(vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(var_3.x, true, true, true), true))), -931f);
}

