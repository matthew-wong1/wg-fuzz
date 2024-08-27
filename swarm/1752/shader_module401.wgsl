struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32>;

var<private> global2: array<i32, 12> = array<i32, 12>(0i, 20812i, 30183i, -20313i, 29824i, -9842i, 1i, -1i, -1i, i32(-2147483648), -15952i, 2298i);

var<private> global3: i32;

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = select(arg_1.a, vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), arg_1.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-761f + 381f) * _wgslsmith_f_op_f32(select(-333f, 990f, false))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1678f)), _wgslsmith_f_op_f32(f32(-1f) * -755f))));
    let var_2 = u_input.b.xy & _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.zx, ~vec2<i32>(global2[_wgslsmith_index_u32(75338u, 12u)], global1.x)), u_input.d.zw);
    var var_3 = abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_2, 27957u, countOneBits(arg_0.x), arg_0.x)), vec4<u32>(4294967295u, ~_wgslsmith_div_u32(arg_2, arg_2), arg_0.x, arg_2)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-675f - -1119f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(519f)), _wgslsmith_f_op_f32(max(287f, 1088f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1542f)));
    return arg_1;
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> u32 {
    global2 = array<i32, 12>();
    let var_0 = arg_2;
    let var_1 = ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(7385u, 26923u, 0u, 0u), vec4<u32>(28183u, 52625u, 9008u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(24367u, 56203u), vec2<u32>(0u, 44976u))), 1u, _wgslsmith_mod_u32(countOneBits(4294967295u), countOneBits(1u))));
    let var_2 = false;
    global1 = ~vec2<i32>(-(arg_1 >> (~var_1.x % 32u)), reverseBits(3899i));
    return reverseBits(21273u);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<bool>(!(func_3(vec4<bool>(false, true, true, false), global2[_wgslsmith_index_u32(~38403u, 12u)], func_2(vec2<u32>(0u, 22033u), Struct_1(vec4<bool>(true, false, false, true)), 15475u, true)) >= 1u), true, true);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -272f) * _wgslsmith_f_op_f32(732f - -1945f)))) - 313f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-562f, 1670f)) - _wgslsmith_f_op_f32(round(-1491f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -585f))), 1131f))));
    let var_2 = _wgslsmith_sub_vec4_i32(u_input.a, (_wgslsmith_add_vec4_i32(countOneBits(u_input.d), abs(u_input.d)) & vec4<i32>(2147483647i, -global1.x, firstTrailingBit(global1.x), global2[_wgslsmith_index_u32(abs(63724u), 12u)])) << (~select(vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 49418u, 1u), true) % vec4<u32>(32u)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(var_1.x - 976f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.x, -150f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-429f, var_1.x, -1772f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, -552f, var_1.x)))))))));
    return Struct_1(vec4<bool>(var_0.x, false, var_0.x, !var_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    global3 = u_input.b.x;
    global3 = _wgslsmith_add_i32(i32(-1i) * -2388i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(_wgslsmith_mult_i32(1i, global1.x), -global2[_wgslsmith_index_u32(1u, 12u)])), firstTrailingBit(max(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(0u, 12u)], global1.x), arg_2))));
    var var_0 = vec4<f32>(151f, -1033f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-355f * -239f)))))), 1223f);
    global0 = 327f;
    let var_1 = -abs(vec2<i32>(u_input.d.x, _wgslsmith_mult_i32(global1.x, 5601i)) << (~vec2<u32>(1u, 91961u) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(ceil(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(954f - _wgslsmith_f_op_f32(trunc(813f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(global2[_wgslsmith_index_u32(3470u, 12u)], global2[_wgslsmith_index_u32(102918u, 12u)], global1.x), Struct_1(vec4<bool>(false, false, true, false)), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(1u, 12u)], u_input.a.x))))) * _wgslsmith_div_f32(1092f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(175f, 2080f)) + -1273f)))));
    global1 = u_input.b.zy;
    global1 = (vec2<i32>(-global2[_wgslsmith_index_u32(max(7490u, 4294967295u), 12u)], _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d.zwx, u_input.d.wwz), vec3<i32>(-1i, -2147483647i, global1.x) ^ vec3<i32>(0i, 0i, 20099i))) << (abs(~vec2<u32>(0u, 49120u)) % vec2<u32>(32u))) | min(vec2<i32>(0i, select(global2[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_dot_vec3_i32(u_input.a.ywx, u_input.d.xyw), -35920i > u_input.b.x)), vec2<i32>(global1.x, ~80454i));
    global1 = -(~(-select(min(u_input.d.xz, u_input.d.xw), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.x, -20441i), u_input.d.xz), func_1(u_input.c, -18711i, 1i).a.x)));
    var var_0 = Struct_1(!func_1(_wgslsmith_mult_i32(reverseBits(0i), max(1406i, global2[_wgslsmith_index_u32(64403u, 12u)])), min(abs(-858i), 1i), 43030i).a);
    var var_1 = u_input.a.ww << (vec2<u32>(~abs(4294967295u) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4106u, 0u, 42012u), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_div_u32(1u, 4294967295u) ^ select(1u, 1u, all(var_0.a.wx))) % vec2<u32>(32u));
    global2 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.x, firstTrailingBit(max(var_1.x, global2[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(global1.x), 9378i, _wgslsmith_clamp_i32(var_1.x, global2[_wgslsmith_index_u32(33171u, 12u)], 26197i)), vec3<i32>(var_1.x, u_input.a.x, 84211i) ^ abs(vec3<i32>(11713i, -18422i, -41920i))), ~27884i));
}

