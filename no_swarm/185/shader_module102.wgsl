struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(1i, 2147483647i, -1921i, i32(-2147483648)), vec4<i32>(2878i, 2147483647i, 0i, -22848i), vec4<i32>(0i, 1i, 1i, 0i), vec4<i32>(i32(-2147483648), -1i, 18726i, -1i), vec4<i32>(0i, 12184i, 2147483647i, -13306i), vec4<i32>(i32(-2147483648), 42941i, 0i, 24109i), vec4<i32>(-28112i, 1i, -47754i, -49558i), vec4<i32>(-22369i, -1i, -1i, 2147483647i));

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<f32>(-2832f, 153f, 1375f, -591f)), Struct_1(vec4<f32>(-1744f, 383f, 554f, -2015f)), Struct_1(vec4<f32>(-465f, -944f, -842f, -1307f)), Struct_1(vec4<f32>(711f, -2354f, 211f, -402f)), Struct_1(vec4<f32>(-316f, 530f, -837f, 1611f)), Struct_1(vec4<f32>(-168f, -1000f, -1743f, -202f)), Struct_1(vec4<f32>(-638f, -498f, 488f, 538f)), Struct_1(vec4<f32>(1804f, 2582f, -199f, -114f)), Struct_1(vec4<f32>(1687f, -1989f, -1326f, -509f)), Struct_1(vec4<f32>(-929f, -1591f, -1551f, -152f)), Struct_1(vec4<f32>(506f, -352f, -267f, 1354f)), Struct_1(vec4<f32>(749f, -1506f, -1038f, 1149f)), Struct_1(vec4<f32>(594f, 475f, 709f, 1000f)), Struct_1(vec4<f32>(-124f, -1362f, -1647f, 1688f)), Struct_1(vec4<f32>(1032f, 304f, 645f, 986f)), Struct_1(vec4<f32>(-652f, 561f, 842f, -782f)), Struct_1(vec4<f32>(-360f, 1000f, -973f, 1340f)), Struct_1(vec4<f32>(567f, -971f, -1075f, 1000f)), Struct_1(vec4<f32>(-1557f, 720f, -1079f, -1669f)), Struct_1(vec4<f32>(-494f, -466f, -1028f, 135f)), Struct_1(vec4<f32>(-380f, 202f, 1000f, 205f)));

var<private> global2: array<vec4<u32>, 2>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<f32> {
    global0 = array<vec4<i32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1464f + -384f));
    var var_1 = u_input.a;
    global1 = array<Struct_1, 21>();
    var var_2 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(~u_input.a, 8u)], vec4<i32>(35711i, u_input.b.x, 12306i, u_input.b.x) ^ firstTrailingBit(vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x))), ~_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(21416u, 8u)], ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -36427i)), 2599i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, 782f, var_0, 339f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 765f, var_0, -648f) + vec4<f32>(var_0, var_0, 1000f, var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, var_0, var_0, var_0) + vec4<f32>(var_0, var_0, var_0, var_0)) - vec4<f32>(var_0, -119f, var_0, 988f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-363f, 1272f, 359f, -644f)))))));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(vec4<f32>(-232f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1108f)))))), _wgslsmith_f_op_f32(floor(149f)), 305f));
    global0 = array<vec4<i32>, 8>();
    global1 = array<Struct_1, 21>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))), -817f, var_0.a.x, 534f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(vec4<f32>(709f, _wgslsmith_f_op_f32(step(var_1.a.x, -535f)), _wgslsmith_div_f32(1080f, 1000f), _wgslsmith_f_op_f32(var_1.a.x - 867f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(var_1.a.x, var_0.a.x, 218f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1090f, var_0.a.x, var_0.a.x, -1065f)))), !(23725i >= u_input.b.x))));
    return var_1.a.x;
}

fn func_1(arg_0: vec3<u32>) -> vec2<bool> {
    var var_0 = select(all(select(vec3<bool>(true, true, true), vec3<bool>(u_input.b.x <= 54866i, true, any(vec4<bool>(false, false, false, true))), false)), any(!vec3<bool>(true, any(vec2<bool>(true, true)), true)), true && !(all(vec2<bool>(false, true)) | true));
    var var_1 = _wgslsmith_div_f32(-387f, -1000f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f)), 765f))) - _wgslsmith_f_op_f32(func_2()));
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 21u)];
    global2 = array<vec4<u32>, 2>();
    return !vec2<bool>(!select(select(true, true, false), true, true), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec2<bool>(true, true), func_1(vec3<u32>(u_input.a, 1u, u_input.a)), u_input.b.x == 17130i), vec2<bool>(true, true), true), vec2<bool>(true || !any(vec2<bool>(true, false)), true), func_1(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), max(vec3<u32>(u_input.a, 1u, 74016u), vec3<u32>(u_input.a, 9407u, 0u)))));
    let var_1 = global1[_wgslsmith_index_u32(0u, 21u)];
    global0 = array<vec4<i32>, 8>();
    let var_2 = global1[_wgslsmith_index_u32(~firstTrailingBit(0u), 21u)];
    let var_3 = ~(u_input.b.xww >> (~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)));
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(var_2.a, var_2.a))) * var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(-1i, _wgslsmith_mod_i32(-u_input.b.x, _wgslsmith_sub_i32(-2147483647i, u_input.b.x)), func_1(vec3<u32>(101716u, u_input.a, u_input.a)).x), 7614i, 2147483647i, min(_wgslsmith_sub_i32(-20254i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.b.x), vec3<i32>(1i, var_3.x, -1i))), ~(-28297i))), _wgslsmith_clamp_u32(10224u, _wgslsmith_dot_vec2_u32((vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) | vec2<u32>(0u, 26446u), ~max(vec2<u32>(u_input.a, 75207u), vec2<u32>(27446u, 4294967295u))), u_input.a), _wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(u_input.a, 2u)], ~global2[_wgslsmith_index_u32(31750u, 2u)]));
}

