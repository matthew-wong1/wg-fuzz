struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: array<Struct_1, 19>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: bool) -> bool {
    global1 = array<Struct_1, 19>();
    global0 = array<vec3<i32>, 20>();
    global1 = array<Struct_1, 19>();
    global0 = array<vec3<i32>, 20>();
    var var_0 = u_input.a.x;
    return true;
}

fn func_3() -> vec2<bool> {
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-366f, 1737f, 1086f) + vec3<f32>(-109f, 738f, 857f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-638f, 1008f, 374f)))))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 303f) + _wgslsmith_f_op_f32(-223f + -1951f)), 201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-351f - 269f) - _wgslsmith_f_op_f32(trunc(196f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(751f, 1233f, 705f) * vec3<f32>(1000f, -1000f, -1091f)))))));
    let var_1 = i32(-1i) * -2147483647i;
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(~(firstTrailingBit(vec4<u32>(78488u, 140162u, 0u, 4294967295u)) << (vec4<u32>(47236u, 4294967295u, 34270u, 21041u) % vec4<u32>(32u))), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~1u, reverseBits(1u), ~4294967295u, max(1u, ~4294967295u))));
    var var_3 = _wgslsmith_clamp_vec2_u32(~var_2.a.xx, var_2.a.zy, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(1u), firstTrailingBit(61646u)), ~var_2.a.x), var_2.a.x));
    return !vec2<bool>(!func_2(true, true), !all(vec4<bool>(true, true, true, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(select(firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 29006u, 97737u, 4294967295u), vec4<u32>(0u, 49382u, 0u, 1u)) & 4294967295u, func_2(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), true)), 29521u);
    var_0 = reverseBits(_wgslsmith_mod_u32(1u, ~max(59043u, 0u >> (1u % 32u))));
    var var_1 = select(vec2<bool>(false, true), select(select(vec2<bool>(true, true), func_3(), vec2<bool>(true, true)), vec2<bool>(_wgslsmith_f_op_f32(ceil(318f)) != _wgslsmith_f_op_f32(min(105f, 111f)), true | any(vec4<bool>(false, true, true, false))), false), true);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(321f - _wgslsmith_f_op_f32(864f * -421f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1440f - 404f)))) - -106f));
    let var_3 = u_input.a.zx;
    return Struct_1(~min(vec4<u32>(~143491u, _wgslsmith_div_u32(21502u, 37488u), 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(max(vec4<u32>(~14673u, ~arg_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, 20077u), vec2<u32>(arg_0.a.x, arg_0.a.x)) | ~arg_0.a.x, 1u), arg_0.a));
    global1 = array<Struct_1, 19>();
    var_0 = Struct_1(arg_0.a);
    global1 = array<Struct_1, 19>();
    var_0 = global1[_wgslsmith_index_u32(1u, 19u)];
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    global0 = array<vec3<i32>, 20>();
    var var_1 = !vec2<bool>(any(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true))), false);
    let var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(-1f);
    var var_4 = _wgslsmith_mod_vec4_u32(abs(select(var_2.a, _wgslsmith_div_vec4_u32(var_0.a, var_2.a) << (max(vec4<u32>(var_2.a.x, 57375u, 4294967295u, var_0.a.x), var_0.a) % vec4<u32>(32u)), select(vec4<bool>(false, var_1.x, true, true), !vec4<bool>(false, false, var_1.x, false), select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x)))), ~vec4<u32>(~1u, 57151u ^ var_0.a.x, _wgslsmith_mod_u32(4294967295u, 16184u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.a.x, 2442u), var_2.a.xwz)) ^ var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_2.a.xy, vec3<i32>(0i, u_input.a.x, -u_input.a.x), var_4.xw, 4294967295u);
}

