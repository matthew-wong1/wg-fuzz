struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)));

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)));

var<private> global2: array<u32, 14> = array<u32, 14>(38601u, 1u, 3109u, 4294967295u, 4294967295u, 4294967295u, 1u, 14289u, 16098u, 4294967295u, 17064u, 4294967295u, 40002u, 17142u);

var<private> global3: array<vec3<i32>, 2>;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = global4.a.x;
    let var_1 = true;
    global1 = array<Struct_1, 3>();
    let var_2 = abs(~u_input.a) >> ((~min(u_input.a, countOneBits(u_input.b)) << (global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 14u)]), 14u)] % 32u)) % 32u);
    var var_3 = select(select(!select(!vec3<bool>(true, global4.a.x, true), vec3<bool>(false, var_1, global4.a.x), all(global4.a)), !select(select(vec3<bool>(global4.a.x, true, true), vec3<bool>(global4.a.x, true, var_1), global4.a.x), !vec3<bool>(global4.a.x, false, global4.a.x), vec3<bool>(var_1, false, var_1)), true), vec3<bool>(true, !var_1, var_1 || (true || var_1)), false & all(vec3<bool>(global4.a.x, true, any(vec2<bool>(var_1, true)))));
    return global4.a.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global2 = array<u32, 14>();
    var var_0 = ~1u;
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(reverseBits(4294967295u)), 4u)];
    var var_2 = Struct_1(select(vec2<bool>(select(global4.a.x, true, any(vec4<bool>(true, var_1.a.x, var_1.a.x, false))), func_3()), vec2<bool>(!global4.a.x, global4.a.x), global4.a.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, 128f))) - vec2<f32>(_wgslsmith_div_f32(-1304f, -923f), _wgslsmith_f_op_f32(abs(arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(979f, arg_0)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1157f, -1872f) * vec2<f32>(arg_0, 117f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(180f, arg_0)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0)))), arg_0)));
    return Struct_1(!global4.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<i32>(-1i, -(~(firstLeadingBit(-24695i) >> (1u % 32u))));
    var var_1 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50888u, 14u)], 4u)];
    global3 = array<vec3<i32>, 2>();
    var var_2 = !vec4<bool>(all(vec3<bool>(arg_1.a.x, arg_1.a.x, false && arg_1.a.x)), arg_1.a.x, arg_1.a.x, false);
    var var_3 = any(arg_1.a);
    return global0[_wgslsmith_index_u32(abs(~max(arg_0, 1u)), 4u)];
}

fn func_1(arg_0: u32) -> vec4<f32> {
    var var_0 = func_4(~_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), 19758u), arg_0), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1379f))) + 1346f)));
    var var_1 = Struct_1(func_4(1u, func_2(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(-1000f)))))).a);
    let var_2 = _wgslsmith_f_op_f32(trunc(-359f));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -459f, -422f, var_2)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(547f, 1000f, var_2, 361f))), select(vec4<bool>(true, true, var_0.a.x, global4.a.x), vec4<bool>(var_1.a.x, true, global4.a.x, var_0.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(trunc(var_2)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -548f)), true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_2, var_2, var_2), vec4<f32>(-328f, var_2, -1124f, var_2)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -300f, -1000f, -1000f) * vec4<f32>(var_2, -831f, var_2, -1000f)))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(-var_3.x)), var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_3.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1538f), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(1322f)))))));
    return vec4<f32>(846f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) + var_4.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(768f * var_3.x)))))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.x + -1786f), _wgslsmith_div_f32(629f, var_2))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-754f, 604f, var_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 3>();
    global3 = array<vec3<i32>, 2>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 901f))) + 429f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-139f, -1159f, 1000f, 1169f) + vec4<f32>(-378f, 2589f, 1061f, 460f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(global2[_wgslsmith_index_u32(0u, 14u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(752f, 1247f, 678f, 102f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(912f, 243f, 1314f, -603f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1135f, 1667f, 1102f, -1000f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(410f, 159f, 870f, -199f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(767f, -1000f, -473f, 1104f) + vec4<f32>(-512f, 1884f, 1884f, -513f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-540f, -306f, 1270f, -1000f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1086f, -2610f, 795f, 889f))))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -772f);
    global1 = array<Struct_1, 3>();
    global0 = array<Struct_1, 4>();
    var var_2 = Struct_1(!vec2<bool>(global4.a.x, (0u != u_input.b) | (705f >= var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) + var_1.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, -1000f, true)) - var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(global2[_wgslsmith_index_u32(0u, 14u)])).x) - _wgslsmith_f_op_f32(-427f * -384f)), -1010f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))), var_1.x);
}

