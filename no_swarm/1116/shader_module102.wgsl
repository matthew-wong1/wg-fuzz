struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<vec3<bool>, 4>;

var<private> global2: vec3<u32>;

var<private> global3: array<f32, 1> = array<f32, 1>(-367f);

var<private> global4: vec4<u32> = vec4<u32>(29704u, 16249u, 4294967295u, 2910u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(987f, true, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -274f), global3[_wgslsmith_index_u32(28196u, 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2667f, -144f)))), vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(22393u, global4.x), global2.x), 1u, 1u, select(63466u ^ global4.x, 4294967295u, true) ^ 4294967295u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(271f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(676f + -1000f))), var_0.c.x);
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global2.x, 1u, 49126u, 4294967295u) | ~var_0.d), _wgslsmith_div_vec4_u32(var_0.d, _wgslsmith_mod_vec4_u32(~vec4<u32>(11263u, 0u, var_0.d.x, global2.x), firstTrailingBit(var_0.d)))), countOneBits(global2.x), global2.x);
    var var_3 = Struct_2(global3[_wgslsmith_index_u32(var_0.d.x, 1u)], var_0.a);
    let var_4 = var_0.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.a, global3[_wgslsmith_index_u32(var_0.d.x, 1u)]), var_3.b))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-421f + var_1.b))) * -962f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(993f))))));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(reverseBits(~(~global4.x) & abs(firstLeadingBit(global4.x))), 1u)], false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(905f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 1u)] * global3[_wgslsmith_index_u32(1u, 1u)])))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(750f, 939f, global3[_wgslsmith_index_u32(8182u & global2.x, 1u)]) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 1u)], 1900f, global3[_wgslsmith_index_u32(global2.x, 1u)]))))), firstTrailingBit(vec4<u32>(select(1u, global4.x, false), global2.x, global2.x, global4.x) >> (countOneBits(vec4<u32>(10724u, arg_1, 37582u, global2.x)) % vec4<u32>(32u))));
    global2 = firstTrailingBit(vec3<u32>(~countOneBits(1u), 0u, arg_1));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3()), global3[_wgslsmith_index_u32(19068u, 1u)]);
    let var_2 = !(!any(global1[_wgslsmith_index_u32(~13739u, 4u)]));
    let var_3 = u_input.a;
    return Struct_2(_wgslsmith_f_op_f32(step(-1000f, 185f)), _wgslsmith_f_op_f32(func_3()));
}

fn func_1() -> Struct_2 {
    var var_0 = select(select(true, !all(vec2<bool>(false, true)), !(-global0[_wgslsmith_index_u32(global2.x, 1u)] < ~global0[_wgslsmith_index_u32(global2.x, 1u)])), global4.x >= (global2.x & 98285u), false);
    var var_1 = func_2(2147483647i, ~reverseBits(_wgslsmith_mult_u32(12593u, _wgslsmith_mod_u32(4294967295u, global4.x))));
    var var_2 = _wgslsmith_f_op_f32(-262f * 278f);
    let var_3 = countOneBits(_wgslsmith_div_vec4_i32(firstTrailingBit(~select(vec4<i32>(34993i, -1i, -1i, u_input.c), vec4<i32>(6770i, u_input.a.x, global0[_wgslsmith_index_u32(global4.x, 1u)], global0[_wgslsmith_index_u32(global2.x, 1u)]), vec4<bool>(true, false, false, false))), abs(max(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(32916u, 1u)], 0i, -32339i, global0[_wgslsmith_index_u32(global4.x, 1u)])), vec4<i32>(0i, -2147483647i, global0[_wgslsmith_index_u32(global4.x, 1u)], global0[_wgslsmith_index_u32(global4.x, 1u)])))));
    let var_4 = func_2(i32(-1i) * -global0[_wgslsmith_index_u32(4294967295u, 1u)], 18210u);
    return Struct_2(_wgslsmith_f_op_f32(min(-842f, -978f)), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~30934u, _wgslsmith_clamp_u32(0u, global4.x, 30742u), 13453u), 1u)], ~(~14930u)).b + 1893f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(2186f)), !any(vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -757f)))), _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -354f))), var_0.b), ~countOneBits(~min(vec4<u32>(global2.x, global2.x, 30777u, 1u), vec4<u32>(global4.x, 108845u, 53852u, 0u))));
    var var_2 = -u_input.c;
    let var_3 = -651f;
    global3 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + var_1.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-608f, var_0.b)) * -1064f))));
}

