struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: f32 = 1212f;

var<private> global2: array<Struct_3, 2>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_3) -> vec2<f32> {
    global1 = 919f;
    return vec2<f32>(-239f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.x), -340f)));
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = vec4<bool>(!arg_0.a.c, all(vec4<bool>(true, true, true, true)), arg_0.a.e.x, arg_0.a.e.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1382f, -1197f)), _wgslsmith_f_op_vec2_f32(arg_0.a.b.xy + _wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(0i, u_input.b.x, 1i, -1i), vec4<f32>(-1558f, arg_0.a.b.x, 356f, arg_0.a.b.x), arg_0.a, Struct_3(arg_0.a, vec3<bool>(var_0.x, var_0.x, var_0.x), u_input.a, Struct_1(8881u, arg_0.a.b, true, 8722u, var_0.yw))))), all(select(vec4<bool>(true, false, arg_0.a.c, true), var_0, true)))))));
    global0 = array<u32, 26>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.b.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(820f, 842f) + vec2<f32>(arg_0.a.b.x, arg_0.a.b.x)))));
    var var_3 = global2[_wgslsmith_index_u32(1u & arg_0.a.a, 2u)];
    return vec3<f32>(_wgslsmith_f_op_f32(round(547f)), var_3.a.b.x, -254f);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(~1u)), _wgslsmith_div_u32(25527u, ~(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(arg_0.a, 26u)], 28742u), 26u)]))), 2u)];
    var var_1 = arg_0.b.x;
    global1 = _wgslsmith_f_op_f32(ceil(var_0.d.b.x));
    let var_2 = Struct_3(arg_0, var_0.b, ~_wgslsmith_div_u32(33793u, 4294967295u) | arg_0.a, var_0.a);
    var var_3 = Struct_2(var_2.a);
    return _wgslsmith_div_f32(467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1529f, 408f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 2>();
    let var_0 = global2[_wgslsmith_index_u32(17254u << (firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(59002u, 26u)], global0[_wgslsmith_index_u32(u_input.c, 26u)], u_input.d) & ~vec4<u32>(58403u, 1u, global0[_wgslsmith_index_u32(u_input.e, 26u)], 4294967295u), ~vec4<u32>(u_input.e, 1354u, u_input.e, 4294967295u))) % 32u), 2u)];
    let var_1 = 2147483647i;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(var_0.a))) + vec3<f32>(665f, -1587f, var_0.d.b.x)), var_0.a.b, !(true | var_0.a.c))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(-669f, _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(83046u, var_0.a.b, !var_0.d.c, var_0.c, select(vec2<bool>(var_0.a.c, true), var_0.b.xz, vec2<bool>(true, var_0.a.c))), vec2<bool>(var_0.a.e.x, var_0.a.e.x)))), _wgslsmith_f_op_f32(min(var_0.a.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f) - _wgslsmith_f_op_f32(1078f * var_2.x)))))), var_0.a.b.x);
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(645f, -195f)), _wgslsmith_f_op_f32(floor(-1714f))))));
    global2 = array<Struct_3, 2>();
    var var_4 = vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 26u)], min(countOneBits(0u), global0[_wgslsmith_index_u32(abs(var_0.c), 26u)])) << (~select(u_input.e, 1u, true) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e, u_input.a), 26u)], ~10729u), max(4294967295u, 0u), ~_wgslsmith_mod_u32(31351u, 4294967295u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.a.a, 17530u)), ~vec2<u32>(var_0.c, u_input.d))), abs(vec4<u32>(4294967295u, 1u, 0u, 1u)) | reverseBits(vec4<u32>(var_0.c, 1u, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 26u)], 26u)]) ^ vec4<u32>(var_0.a.d, 95894u, 4294967295u, var_0.a.a))), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(1040f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(abs(vec4<i32>(1i, 0i, 1i, -2147483647i)), var_3, var_0.d, global2[_wgslsmith_index_u32(~1u, 2u)])).x * _wgslsmith_f_op_f32(sign(-874f)))), var_0.d.b.yx, vec2<u32>(_wgslsmith_clamp_u32(reverseBits(var_4.x) >> (~26730u % 32u), ~var_4.x, ~var_4.x), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 38107u), vec2<u32>(u_input.e, 5128u)) & 1u, 26u)]), vec3<u32>(~(~global0[_wgslsmith_index_u32(~var_0.d.d, 26u)]), var_0.a.d, global0[_wgslsmith_index_u32(41312u, 26u)]));
}

