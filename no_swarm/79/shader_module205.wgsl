struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), 4294967295u);

var<private> global1: array<f32, 30> = array<f32, 30>(140f, -864f, 2286f, -397f, 1000f, -426f, -1428f, -882f, 1138f, 1324f, 2146f, -334f, -579f, -1883f, -936f, 1280f, 139f, 661f, 405f, 1096f, 806f, 374f, 441f, -791f, -1000f, -580f, 1255f, 665f, -558f, -1259f);

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 1u, 31854u);

var<private> global4: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = arg_0;
    global1 = array<f32, 30>();
    global4 = global3.x;
    let var_1 = select(vec3<bool>(false, true, ~select(9695u, 4294967295u, global2.x) <= (~0u ^ countOneBits(var_0.a.x))), select(!global2.xxz, !(!vec3<bool>(true, false, global2.x)), true), !global2.x);
    var_0 = Struct_1(~select(vec3<u32>(_wgslsmith_mod_u32(global3.x, 47929u), 1u, ~5404u), _wgslsmith_div_vec3_u32(~vec3<u32>(74437u, 0u, 27362u), min(vec3<u32>(var_0.a.x, 1741u, 0u), var_0.a)), var_1.x), _wgslsmith_add_u32(28161u, global3.x | 7826u));
    return ~(select(_wgslsmith_div_vec3_u32(abs(vec3<u32>(0u, var_0.b, global3.x)), var_0.a), vec3<u32>(~88797u, ~2138u, abs(4294967295u)), true) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, 9644u, arg_0.a.x) ^ var_0.a, vec3<u32>(global0.a.x, 16701u, global3.x), select(var_0.a, vec3<u32>(5225u, arg_0.a.x, 0u), true)) % vec3<u32>(32u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global3 = countOneBits(func_3(Struct_1(global0.a, ~global0.b)));
    var var_0 = Struct_1(global0.a, _wgslsmith_add_u32(~global0.b, 0u));
    let var_1 = 66530u;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(237f * _wgslsmith_f_op_f32(sign(1753f))))), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 9442u, var_0.a.x), var_0.a), 30u)]))));
    return Struct_1(firstTrailingBit(firstLeadingBit(var_0.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.b, global3.x, global0.b, var_0.a.x)), select(select(vec4<u32>(var_0.a.x, var_1, global0.a.x, global0.a.x), vec4<u32>(global0.b, global0.a.x, 58608u, 87014u), vec4<bool>(false, true, true, false)), reverseBits(vec4<u32>(4294967295u, var_1, 1u, var_1)), vec4<bool>(global2.x, arg_0, false, global2.x))), max(1u, firstLeadingBit(var_1 ^ 16230u))));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = false;
    return func_2(u_input.a >= u_input.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    global2 = select(!select(select(select(vec4<bool>(global2.x, true, true, false), vec4<bool>(false, true, false, global2.x), vec4<bool>(false, global2.x, global2.x, false)), select(vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(global2.x, true, global2.x, global2.x), true), select(vec4<bool>(false, true, true, global2.x), vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(false, global2.x, true, false))), vec4<bool>(true, true, global2.x, true), any(select(vec2<bool>(false, false), vec2<bool>(true, false), global2.xz))), select(!vec4<bool>(true, global2.x, all(vec2<bool>(global2.x, global2.x)), global2.x), select(vec4<bool>(true, false, true, any(vec3<bool>(global2.x, true, true))), !vec4<bool>(global2.x, true, false, true), vec4<bool>(u_input.a >= u_input.a, global2.x, !global2.x, true)), vec4<bool>(!global2.x, global2.x, false || (global2.x || false), false)), vec4<bool>(all(select(select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, true, global2.x, false), global2.x), select(vec4<bool>(global2.x, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(global2.x, global2.x, false, true)), any(global2.ywy))), true, global2.x, true));
    var var_0 = arg_3;
    let var_1 = -1i;
    var var_2 = 2147483647i;
    var var_3 = vec4<bool>(any(global2.zy), true, global2.x, select(global2.x, false, true));
    return global1[_wgslsmith_index_u32(~(~min(_wgslsmith_add_u32(1u, 96859u), max(4294967295u, 29083u) ^ (arg_3.a.x | 29379u))), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(~(~global0.a), func_1(_wgslsmith_add_i32(-27801i, u_input.a), global2.x), -vec4<i32>(u_input.a, u_input.a, 7219i, u_input.a) ^ (vec4<i32>(1i, 45523i, -18619i, u_input.a) ^ vec4<i32>(1i, -2147483647i, u_input.a, -10375i)), func_2(true))), -196f));
    global4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -322f)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.x, global0.b, 3540u, 10691u), firstLeadingBit(vec4<u32>(1u, global3.x, 33831u, 62481u))), ~28701u), 30u)], -2209f), 3674u, reverseBits(u_input.a));
}

