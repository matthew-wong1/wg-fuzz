struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec4<u32>;

var<private> global2: array<f32, 13> = array<f32, 13>(-1014f, -1045f, 792f, -683f, 796f, 232f, -758f, 324f, -889f, -575f, -1766f, -131f, 143f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec3<bool> {
    global2 = array<f32, 13>();
    var var_0 = -1553f;
    let var_1 = Struct_1(9446i);
    global1 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(1u), 17895u, countOneBits(20558u), 5843u), select(~(~(~vec4<u32>(u_input.a.x, global1.x, 4294967295u, 20303u))), ~(~(~vec4<u32>(4294967295u, 38771u, 21566u, u_input.a.x))), !vec4<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true, arg_0, arg_1 != -1i)));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a, -2147483647i, arg_1), vec3<i32>(-52401i, arg_1, -2147483647i), vec3<i32>(arg_1, -2147483647i, var_1.a)), firstTrailingBit(select(vec3<i32>(-2147483647i, -792i, -1i), vec3<i32>(arg_1, arg_1, 0i), false))) ^ var_1.a);
    return vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, firstTrailingBit(var_2.a), arg_1, -40676i), vec4<i32>(-14234i, min(-9865i, -1189i), arg_1 << (0u % 32u), _wgslsmith_clamp_i32(-2147483647i, var_1.a, 12681i))) != (30138i >> (abs(global1.x) % 32u)), select(arg_0, false, true), arg_0);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>) -> vec2<u32> {
    global2 = array<f32, 13>();
    var var_0 = vec2<i32>(-5074i, _wgslsmith_clamp_i32(-2147483647i << (global1.x % 32u), 0i, firstTrailingBit(1i)) | reverseBits(~(-2147483647i))) << (((~vec2<u32>(15466u, arg_2.x) ^ global1.wz) << (vec2<u32>(global1.x, arg_2.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = !(!select(false, -57550i == var_0.x, all(vec3<bool>(false, true, true)))) && !select(true, false, true);
    var var_2 = !(!func_3(true, ~var_0.x | 7723i));
    global2 = array<f32, 13>();
    return vec2<u32>(1u, 1u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = vec3<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), all(vec2<bool>(true, true)), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)), -266f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1771f - 817f), 700f, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -627f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(605f, -1191f, 115f, -788f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -535f, 1299f, -747f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 13u)], 1604f, 321f, global2[_wgslsmith_index_u32(1u, 13u)]) * vec4<f32>(-2160f, global0.x, global0.x, global2[_wgslsmith_index_u32(0u, 13u)]))))))));
    var var_2 = vec4<u32>(u_input.a.x << (0u % 32u), 2564u, ~(~_wgslsmith_dot_vec3_u32(~global1.wwy, vec3<u32>(0u, u_input.a.x, 69057u) & vec3<u32>(28605u, global1.x, u_input.a.x))), ~global1.x);
    var var_3 = var_0.x;
    let var_4 = ~global1.yyz;
    return vec2<i32>(-1i, _wgslsmith_sub_i32(~abs(-1i), 1i)) << (~(~func_2(vec2<u32>(1u, global1.x), _wgslsmith_f_op_f32(max(var_1.x, 1416f)), firstTrailingBit(vec4<u32>(u_input.a.x, global1.x, u_input.a.x, 55539u)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), func_1(Struct_1(-2147483647i), Struct_1(18871i))))));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~global1.yx, ~u_input.a), firstLeadingBit(vec2<u32>(58744u, 1u))), max(abs(min(u_input.a.x, global1.x)), 1u >> (u_input.a.x % 32u))), global1.x);
    var var_2 = Struct_1(var_0.a);
    global1 = vec4<u32>(1u, global1.x, global1.x, 65659u);
    var var_3 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(15354i, reverseBits(_wgslsmith_mod_i32(-2147483647i, 46455i)), ~(2147483647i << (0u % 32u))), var_0.a));
    let var_4 = Struct_1(~var_0.a);
    let var_5 = var_4;
    var var_6 = Struct_1(1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(43555i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, -546f, global0.x, -494f))) + vec4<f32>(_wgslsmith_div_f32(-827f, global2[_wgslsmith_index_u32(var_1, 13u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 13u)]), -1808f, -552f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(157f, -1097f)), _wgslsmith_f_op_f32(sign(688f)))))));
}

