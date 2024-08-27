struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<vec2<bool>, 18>;

var<private> global2: f32 = -1650f;

var<private> global3: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(11725u, 21729u), vec2<u32>(58346u, 83562u), vec2<u32>(22758u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    global3 = array<vec2<u32>, 3>();
    global1 = array<vec2<bool>, 18>();
    let var_0 = countOneBits(~1i);
    let var_1 = -u_input.a.x;
    let var_2 = arg_0;
    return ~max(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(45875u, 1u, 4294967295u), vec3<u32>(4294967295u, 38263u, global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), 63028u), ~u_input.b.x);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(abs(abs(_wgslsmith_sub_vec3_u32(u_input.b.yxw, vec3<u32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 0u)))), vec3<u32>(u_input.b.x, func_3(Struct_2(Struct_1(vec2<f32>(arg_0.x, 186f))), vec3<f32>(-637f, arg_0.x, -1388f), 34313i), min(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])) ^ _wgslsmith_div_vec3_u32(u_input.b.zxx, vec3<u32>(40415u, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 4294967295u))), select(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], u_input.b.x, u_input.b.x), ~(u_input.b.yzw ^ vec3<u32>(35295u, 22757u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)])), vec3<bool>(true, true, true)) << (select(vec3<u32>(~1u, 0u & global0[_wgslsmith_index_u32(51365u, 15u)], 26730u), ~reverseBits(vec3<u32>(4294967295u, 87862u, global0[_wgslsmith_index_u32(1u, 15u)])), vec3<bool>(select(false, false, true), true, true)) % vec3<u32>(32u)), ~u_input.b.wwy);
    global0 = array<u32, 15>();
    global2 = arg_0.x;
    let var_1 = vec4<bool>(-121f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-343f)) + _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(1612f + 2549f))), !(countOneBits(u_input.a.x) < 6621i), true, true);
    global3 = array<vec2<u32>, 3>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1324f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1147f, -1464f))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a * arg_1.a.a) * _wgslsmith_f_op_vec2_f32(sign(arg_0.a))));
}

fn func_1(arg_0: vec4<f32>) -> vec3<f32> {
    var var_0 = Struct_2(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zw) + vec2<f32>(arg_0.x, arg_0.x))), Struct_2(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1307f, arg_0.x) + vec2<f32>(707f, arg_0.x)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, 1420f)))));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.a.x)), 274f))));
    global2 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    global0 = array<u32, 15>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.xxw, arg_0.zwy, true))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(arg_0.xxw))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2792f, arg_0.x, var_0.a.a.x), arg_0.xww)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.wyz, vec3<f32>(1000f, arg_0.x, 805f)))), vec3<bool>(all(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, false, true, true)), false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-559f)), _wgslsmith_f_op_f32(-758f * 1532f), _wgslsmith_f_op_f32(abs(arg_0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1138f, 992f, arg_0.x), vec3<f32>(1532f, arg_0.x, var_0.a.a.x))) - _wgslsmith_f_op_vec3_f32(-arg_0.wyy)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1175f + 452f)), _wgslsmith_f_op_f32(floor(-1194f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-425f, 1184f, false)))))) + _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(393f, 1000f, 1006f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2070f, -203f, 1021f, 553f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 826f, -126f, 714f) - vec4<f32>(134f, 1795f, 338f, -443f)))))));
    global3 = array<vec2<u32>, 3>();
    var var_1 = vec2<bool>(false, true);
    var var_2 = vec3<u32>(103229u, 1u, abs(~(abs(3241u) ^ firstTrailingBit(u_input.b.x))));
    global2 = -1205f;
    global1 = array<vec2<bool>, 18>();
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(135f, _wgslsmith_f_op_f32(var_0.x - 191f), reverseBits(vec4<i32>(firstTrailingBit(~u_input.a.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-37344i, -1i, 13133i, 61382i)), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), ~(-5761i), ~(u_input.a.x | u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

