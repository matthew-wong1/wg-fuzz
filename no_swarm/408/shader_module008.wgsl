struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 23> = array<i32, 23>(-13841i, 23346i, 2147483647i, i32(-2147483648), 0i, -29493i, 2147483647i, 2147483647i, 0i, -86227i, i32(-2147483648), 20132i, 1952i, 0i, i32(-2147483648), 6297i, 16573i, 27124i, 18984i, 1i, 0i, 2147483647i, -7228i);

var<private> global2: f32 = -1021f;

var<private> global3: vec4<u32>;

var<private> global4: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(626f, -871f, 102f) + vec3<f32>(321f, -792f, 288f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(623f, -1512f, 408f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(315f, 538f, -114f), vec3<f32>(976f, -607f, -777f), vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(611f, -1345f, -1400f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-435f, -306f, -1231f)))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(606f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(var_0.x + -744f)), -1409f) - vec3<f32>(1277f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1474f + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-758f, var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -884f)))));
    var var_2 = _wgslsmith_dot_vec4_u32(~abs(~max(vec4<u32>(69575u, u_input.b.x, 4294967295u, global3.x), vec4<u32>(47554u, global3.x, u_input.b.x, 5301u))), vec4<u32>(global3.x, 9497u, ~0u, ~global3.x));
    global2 = var_1.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(566f + 3488f)))))) + -1619f);
    return ~u_input.a;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = -1000f;
    global3 = ~vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, func_3()), global3.x, global3.x, _wgslsmith_div_u32(global3.x, ~_wgslsmith_sub_u32(global3.x, global3.x)));
    let var_1 = arg_0.a;
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(-var_0) < var_0, arg_0.a, any(vec2<bool>(true, true)), arg_0.a);
    let var_3 = !var_2.x;
    return ~u_input.b.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~global1[_wgslsmith_index_u32(func_2(Struct_1(false)), 23u)];
    var var_1 = Struct_1(!(83216u >= _wgslsmith_dot_vec3_u32(abs(global3.zzx), firstLeadingBit(global3.zwz))));
    let var_2 = global4[_wgslsmith_index_u32(global3.x | ~(~(~4294967295u)), 1u)];
    var var_3 = u_input.b;
    var var_4 = firstLeadingBit(43878u);
    return global4[_wgslsmith_index_u32(var_3.x, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true);
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-499f, -1245f) + vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -218f))))))), ~(-(i32(-1i) * -83314i)), global4[_wgslsmith_index_u32(u_input.a, 1u)]);
    var var_2 = Struct_1(false & ((43109u << (global3.x % 32u)) != (u_input.a << (0u % 32u))));
    var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(917f - -655f), _wgslsmith_f_op_f32(413f * 2289f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -439f), vec2<f32>(-167f, 2994f)))))), i32(-1i) * -63663i, Struct_1(true));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2050f, -1298f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(147f, 849f), vec2<f32>(-994f, -685f), !vec2<bool>(var_2.a, true))))));
    var var_4 = vec4<f32>(var_3.x, var_3.x, var_3.x, 1000f);
    var var_5 = global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(~1u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~28753u, ~4294967295u, ~0u), global3.x)), 1u)];
    let var_6 = global4[_wgslsmith_index_u32(4294967295u, 1u)];
    var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-977f, -121f, var_3.x, 559f) * vec4<f32>(var_4.x, var_4.x, var_4.x, var_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -1221f, 515f, var_4.x)))), vec4<f32>(var_4.x, _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(f32(-1f) * -665f), 430f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_3.x, var_3.x), _wgslsmith_f_op_f32(ceil(var_4.x)), var_4.x, -1000f)), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-2459f - _wgslsmith_f_op_f32(-314f * var_3.x)), var_3.x, _wgslsmith_f_op_f32(-var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xw, abs(vec2<u32>(countOneBits(_wgslsmith_mult_u32(23793u, global3.x)), 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-668f)))))));
}

