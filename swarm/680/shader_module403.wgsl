struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<u32>(78257u, 4294967295u)), Struct_1(vec2<u32>(0u, 48440u)), Struct_1(vec2<u32>(261u, 36023u)), Struct_1(vec2<u32>(55715u, 4294967295u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(10335u, 4294967295u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(4294967295u, 17458u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(34695u, 4294967295u)), Struct_1(vec2<u32>(17688u, 100829u)), Struct_1(vec2<u32>(40931u, 1u)), Struct_1(vec2<u32>(19491u, 27049u)), Struct_1(vec2<u32>(0u, 16838u)), Struct_1(vec2<u32>(4294967295u, 32916u)), Struct_1(vec2<u32>(26553u, 45113u)), Struct_1(vec2<u32>(43063u, 0u)), Struct_1(vec2<u32>(29645u, 4294967295u)), Struct_1(vec2<u32>(23645u, 1u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(52094u, 1u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(50843u, 4294967295u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(73264u, 4294967295u)), Struct_1(vec2<u32>(85301u, 0u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    return ~(~(~4294967295u));
}

fn func_2() -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~1u), 1u, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2054f - -198f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-363f, -1310f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 116f)))), 28u)];
    global2 = array<Struct_1, 28>();
    return Struct_2(global2[_wgslsmith_index_u32(44239u, 28u)], Struct_1(var_0.a), Struct_1(var_0.a));
}

fn func_1() -> vec2<f32> {
    var var_0 = 1u;
    let var_1 = vec2<u32>(38207u, reverseBits(4294967295u));
    var var_2 = func_2();
    var_0 = 1u;
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(select(u_input.a.zx, firstLeadingBit(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(9360u, 27u)])) | -u_input.a.xy, all(vec4<bool>(true, true, false, false))), vec2<i32>(-2147483647i >> (1u % 32u), i32(-1i) * -22209i)), u_input.a.x, global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-401f, _wgslsmith_f_op_f32(select(-247f, 1628f, true)))) * _wgslsmith_f_op_f32(-203f - _wgslsmith_div_f32(-1000f, 898f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), vec3<f32>(-667f, -2281f, -832f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-106f, 737f, -583f))), true))), 27u)]);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(362f * -1591f), _wgslsmith_div_f32(957f, -976f)))), vec2<f32>(-150f, _wgslsmith_f_op_f32(round(1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(688f - -495f), _wgslsmith_f_op_f32(abs(-251f)), -700f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-581f, -1654f, -759f), vec3<f32>(1690f, -657f, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1230f, 563f, -241f) * vec3<f32>(896f, -1081f, 2374f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -396f, 2320f), vec3<f32>(555f, 948f, -873f))) + vec3<f32>(1000f, 994f, 702f)) * vec3<f32>(-1024f, -528f, _wgslsmith_f_op_f32(-449f - -1000f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    var var_2 = u_input.a.yx & -u_input.a.xz;
    let var_3 = select(false, false, false);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, var_0.x)))), vec4<i32>(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~1u, 27u)], -1i, 1i) ^ u_input.a.x, reverseBits(global0[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, -2147483647i, u_input.a.x, -18782i)), ~vec4<i32>(-14531i, u_input.a.x, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_div_i32(abs(var_2.x), -1i)), firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 50024u), _wgslsmith_dot_vec3_u32(vec3<u32>(4588u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u))), 27u)])), -968f, _wgslsmith_sub_u32(~1u, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_vec3_f32(var_0 + vec3<f32>(var_1.x, var_1.x, var_1.x)))), var_2.x);
}

