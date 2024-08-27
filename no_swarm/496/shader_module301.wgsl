struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(0u, 4294967295u, 19735u, 8949u, 0u, 10040u, 51385u, 137022u, 53030u, 1u, 96466u);

var<private> global1: vec2<i32> = vec2<i32>(-23417i, -40543i);

var<private> global2: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_1(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(-852f)), -countOneBits(~global1.x ^ -u_input.a));
    var var_1 = false;
    let var_2 = false && var_0.a.x;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(_wgslsmith_sub_u32(select(u_input.b, u_input.b, all(var_0.a)), ~u_input.b), global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.b), 11u)]), firstLeadingBit(~u_input.b) >> (firstLeadingBit(_wgslsmith_sub_u32(countOneBits(global0[_wgslsmith_index_u32(0u, 11u)]), 1u)) % 32u)), 11u)];
    var var_4 = var_0;
    return -388f;
}

fn func_2() -> Struct_1 {
    return Struct_1(!vec3<bool>(all(vec3<bool>(true, true, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-311f, 335f)))), _wgslsmith_f_op_f32(trunc(-1500f)), true)), 1406f), select(firstTrailingBit(global1.x), 1i, true));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(0i, -1i, global1.x) > global1.x;
    var var_1 = func_2();
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(~13241u), abs(max(global0[_wgslsmith_index_u32(u_input.b, 11u)], 36736u)), abs(_wgslsmith_clamp_u32(33635u, u_input.b, 20370u)), _wgslsmith_clamp_u32(~1u, global0[_wgslsmith_index_u32(u_input.b, 11u)] ^ global0[_wgslsmith_index_u32(1u, 11u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 11u)], 11u)])), abs(vec4<u32>(u_input.b | u_input.b, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], u_input.b))), min(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(45897u, u_input.b, 15744u), vec3<u32>(u_input.b, 66591u, global0[_wgslsmith_index_u32(0u, 11u)]) | vec3<u32>(17838u, 4294967295u, u_input.b)), 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], ~52669u, 1u), _wgslsmith_mod_vec4_u32(abs(max(vec4<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 11u)], u_input.b), vec4<u32>(u_input.b, 0u, 6548u, global0[_wgslsmith_index_u32(u_input.b, 11u)]))), abs(vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b)))));
    global1 = -u_input.c | vec2<i32>(abs(-61326i), _wgslsmith_sub_i32(abs(1i), u_input.d.x));
    let var_3 = Struct_1(select(var_1.a, !select(vec3<bool>(true, true, false), var_1.a, select(var_1.a, var_1.a, false)), !var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b)))), _wgslsmith_add_i32(2147483647i, ~(32617i << (u_input.b % 32u)) | reverseBits(func_2().c)));
    return Struct_1(!vec3<bool>(~137379u < global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(41973u, 11u)]), 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)] <= _wgslsmith_div_u32(u_input.b, global0[_wgslsmith_index_u32(536u, 11u)]), true), _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(var_1.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(947f + -646f), _wgslsmith_f_op_f32(f32(-1f) * -183f)))), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1615f, _wgslsmith_div_f32(3037f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(280f * -1194f), _wgslsmith_f_op_f32(ceil(301f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1467f * -284f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -220f, 941f)), _wgslsmith_div_vec3_f32(vec3<f32>(1088f, 817f, -211f), vec3<f32>(942f, 325f, -392f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1699f, 2348f, 311f) - vec3<f32>(537f, -363f, -1000f)) - vec3<f32>(1486f, -814f, -991f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(211f, 1195f, -565f) + _wgslsmith_div_vec3_f32(vec3<f32>(-1634f, -603f, 1470f), vec3<f32>(-454f, 277f, -744f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-787f, 1418f, -1543f)))))));
    let var_1 = func_1();
    var var_2 = -12057i;
    var var_3 = _wgslsmith_div_vec4_i32(u_input.d, u_input.d);
    var_2 = ~global1.x;
    global2 = false;
    let var_4 = firstLeadingBit(91746u) & select(~(u_input.b << (u_input.b % 32u)) >> (_wgslsmith_mod_u32(u_input.b, 1u) % 32u), 0u, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) - _wgslsmith_f_op_vec3_f32(floor(var_0)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(var_0, var_0)))))))), 0u, -_wgslsmith_dot_vec3_i32(-vec3<i32>(var_3.x, 2147483647i, -25749i), ~(~vec3<i32>(var_1.c, 2013i, 8002i))), ~(firstTrailingBit(0u) | _wgslsmith_mult_u32(0u, 1u)) & ~(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, global0[_wgslsmith_index_u32(0u, 11u)], u_input.b), 11u)] ^ _wgslsmith_add_u32(2701u, global0[_wgslsmith_index_u32(var_4, 11u)])));
}

