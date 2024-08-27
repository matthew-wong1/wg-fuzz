struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<i32>, 13>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = 1u;
    let var_1 = arg_0.b.zx;
    global0 = true;
    global1 = array<vec4<i32>, 13>();
    global0 = !arg_0.a.c.x;
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: f32) -> bool {
    let var_0 = arg_2.e;
    let var_1 = Struct_3(arg_2.a, arg_2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * arg_2.a.a) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(ceil(arg_3)), _wgslsmith_f_op_f32(-2149f * -771f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_2.c.x)))), arg_2.d, var_0);
    global0 = false;
    global1 = array<vec4<i32>, 13>();
    var var_2 = 4294967295u;
    return var_1.a.c.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = countOneBits(~abs(arg_3.c.x));
    let var_1 = vec4<i32>(arg_3.b, arg_3.b, abs(min(-u_input.b, -u_input.b)), firstTrailingBit(-(i32(-1i) * -1i))) ^ ~abs(~global1[_wgslsmith_index_u32(0u, 13u)]);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x)), 1000f, arg_2));
    var var_3 = !select(select(vec2<bool>(func_3(Struct_1(arg_1.x, -4691i, arg_3.c, false), arg_3.c.xx, Struct_3(Struct_2(vec4<f32>(-1660f, arg_2, -483f, -1091f), 0u, vec2<bool>(arg_3.d, false)), arg_1.zwz, var_2, var_2.zw, Struct_2(var_2, arg_3.c.x, vec2<bool>(true, false))), arg_0.x), !arg_1.x), !arg_1.xw, false), vec2<bool>(any(vec2<bool>(true, false)), func_3(Struct_1(arg_1.x, var_1.x, arg_3.c, arg_3.a), vec2<u32>(12029u, var_0), Struct_3(Struct_2(vec4<f32>(-1929f, -761f, var_2.x, var_2.x), u_input.a, vec2<bool>(arg_3.d, true)), arg_1.zzz, var_2, arg_0.yx, Struct_2(vec4<f32>(-717f, arg_2, var_2.x, arg_0.x), 4294967295u, vec2<bool>(false, arg_1.x))), var_2.x)), any(vec4<bool>(!arg_3.d, arg_3.a, true, true)));
    var var_4 = arg_3.b;
    return !(((firstLeadingBit(var_1.x) << (~arg_3.c.x % 32u)) <= 28034i) & false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 13>();
    let var_0 = vec3<u32>(u_input.a, ~_wgslsmith_add_u32(max(u_input.a, u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(75499u, u_input.a), vec2<u32>(24439u, 49378u))), ~0u);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, -303f, -552f, -739f)), vec4<f32>(1492f, -150f, -1655f, 552f))), var_0.x, select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), all(vec4<bool>(false, false, true, false))), vec3<bool>(all(vec2<bool>(true, false)), true, func_1(Struct_3(Struct_2(vec4<f32>(-275f, -956f, -1025f, 837f), var_0.x, vec2<bool>(false, false)), vec3<bool>(true, true, true), vec4<f32>(-1000f, 1763f, 797f, 434f), vec2<f32>(-967f, 841f), Struct_2(vec4<f32>(-1060f, -437f, -501f, 1375f), u_input.a, vec2<bool>(true, true))))), 1u >= _wgslsmith_sub_u32(u_input.a, var_0.x)), vec3<bool>(true, !func_2(vec3<f32>(-277f, -609f, -372f), vec4<bool>(true, true, true, false), -1000f, Struct_1(false, u_input.b, var_0, true)), any(vec2<bool>(true, true))), !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -306f, 589f, _wgslsmith_f_op_f32(-795f - 310f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1822f, 892f, -944f, -1750f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-159f, -745f, -809f, 446f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1479f, -313f, -383f, 534f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1394f, 327f) * vec2<f32>(-647f, 246f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1157f, -2085f), vec2<f32>(-1314f, 1000f), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-560f, -992f))))))))), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(2006f)), _wgslsmith_f_op_f32(209f - -758f), _wgslsmith_f_op_f32(select(-178f, -1421f, true)), _wgslsmith_f_op_f32(f32(-1f) * -711f)))), 30u & var_0.x, !select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, false), true)));
    var var_2 = -654f;
    var_2 = -250f;
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~(~u_input.a), ~(var_0.xx & ((vec2<u32>(4294967295u, var_0.x) & vec2<u32>(var_1.a.b, 0u)) | vec2<u32>(16423u, var_1.a.b))), var_0);
}

