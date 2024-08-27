struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-538f, -109f)));
    let var_1 = global0[_wgslsmith_index_u32(41280u, 24u)];
    return 1u;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    global0 = array<f32, 24>();
    let var_0 = ((false || all(vec2<bool>(true, arg_2.a.x))) || true) != true;
    global0 = array<f32, 24>();
    var var_1 = arg_1.b.x;
    global0 = array<f32, 24>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(20753u, 24u)] - -1000f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_1.a, 24u)], 709f)))) + arg_0);
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1829f, 537f, global0[_wgslsmith_index_u32(u_input.d.x, 24u)], 671f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-649f, global0[_wgslsmith_index_u32(u_input.a, 24u)], 940f, global0[_wgslsmith_index_u32(1u, 24u)]))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], 441f, -1524f, 406f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(38106u, 24u)], global0[_wgslsmith_index_u32(125u, 24u)], 1338f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(1u, 24u)], 142f, -1000f, -531f))), Struct_2(1u, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 2876u), vec2<u32>(u_input.c, u_input.d.x))), Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec2<bool>(true, true), countOneBits(vec4<i32>(-2147483647i, u_input.b, u_input.b, 24234i))))) * vec4<f32>(_wgslsmith_f_op_f32(1489f + _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.c, 24u)], -1566f))), -726f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(44269u), 24u)] * _wgslsmith_f_op_f32(f32(-1f) * -1185f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 24u)] * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(6081u, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)])))));
    global0 = array<f32, 24>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-195f))))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 24u)]) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 24u)])), -552f), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(14737u, _wgslsmith_sub_u32(u_input.c, 16680u) ^ _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), 24u)]));
    var_1 = global0[_wgslsmith_index_u32(1u, 24u)];
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(631f * global0[_wgslsmith_index_u32(~u_input.d.x, 24u)])));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.xxx), vec3<f32>(-884f, var_0.x, -556f))) - var_0.zyz), _wgslsmith_f_op_vec3_f32(vec3<f32>(102f, 549f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(46302u, 24u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.yxz, vec3<f32>(var_0.x, 798f, global0[_wgslsmith_index_u32(0u, 24u)])))))) + _wgslsmith_f_op_vec3_f32(var_0.wzz - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 24u)], global0[_wgslsmith_index_u32(4895u, 24u)], var_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 24u)] + global0[_wgslsmith_index_u32(func_1(Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, false), vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), u_input.b) << (_wgslsmith_clamp_u32(44653u, u_input.c, u_input.a) % 32u), 24u)]), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_f_op_f32(2495f - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(39994u, 24u)]))), select(all(vec4<bool>(true, true, true, true)), u_input.a <= u_input.a, global0[_wgslsmith_index_u32(4294967295u, 24u)] <= 897f)))), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(0u), 24u)]), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.c, 24u)])))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1491f + _wgslsmith_f_op_f32(1543f * -1014f))))));
    var var_2 = u_input.d.ww;
    global0 = array<f32, 24>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 24u)]), _wgslsmith_f_op_f32(var_0.x + var_0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, global0[_wgslsmith_index_u32(u_input.d.x, 24u)]))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(80906u, 24u)], 372f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_2.x, 24u)], -1579f), vec2<f32>(-863f, global0[_wgslsmith_index_u32(u_input.d.x, 24u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(21360u, 24u)], 1420f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(func_2());
    var var_4 = ~(_wgslsmith_mod_vec2_u32(select(~vec2<u32>(1u, 42396u), ~vec2<u32>(64220u, u_input.c), true), u_input.d.xw) & vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, 1u), u_input.d.xz)));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(982f + _wgslsmith_f_op_f32(floor(var_3.x))));
    let var_6 = Struct_2(46369u, vec2<u32>(~var_2.x, func_1(Struct_1(vec3<bool>(true, true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec4<i32>(u_input.b, u_input.b, u_input.b, -16743i), vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<bool>(false, false, true, false))), 17i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(956f - -481f) - _wgslsmith_f_op_f32(sign(var_5))) * _wgslsmith_div_f32(var_5, 369f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), -1564f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1847f), _wgslsmith_f_op_f32(f32(-1f) * -1075f))))), ~(~1u), max(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(-10160i, u_input.b, u_input.b), -vec3<i32>(u_input.b, -8525i, u_input.b), true), select(select(vec3<i32>(-15524i, u_input.b, u_input.b), vec3<i32>(-49058i, u_input.b, -3537i), vec3<bool>(true, true, false)), vec3<i32>(u_input.b, 1i, -8851i), vec3<bool>(false, true, true))), firstLeadingBit(abs(-2147483647i)) >> (select(var_6.b.x, ~9444u, true) % 32u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, reverseBits(8249u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u >> (var_4.x % 32u), var_4.x), u_input.d.yw)));
}

