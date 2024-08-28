struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3;

var<private> global2: array<bool, 17>;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<bool>(false, true, true, false), 886f, 66586u, 327f), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 39651u), vec4<bool>(false, true, true, true), 305f, 0u, -1634f)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 24158u, 0u), vec4<bool>(false, false, true, true), 953f, 4294967295u, 814f), Struct_1(vec4<u32>(1u, 68652u, 0u, 10847u), vec4<bool>(true, true, false, true), 1418f, 4294967295u, -275f)), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 35427u, 67061u), vec4<bool>(false, false, true, false), 103f, 51748u, 395f), Struct_1(vec4<u32>(9181u, 63002u, 31250u, 0u), vec4<bool>(false, true, false, true), -2242f, 39782u, -1219f)), Struct_2(Struct_1(vec4<u32>(57572u, 49860u, 4294967295u, 23828u), vec4<bool>(false, true, false, false), -219f, 4294967295u, 1168f), Struct_1(vec4<u32>(0u, 22215u, 70273u, 62680u), vec4<bool>(false, false, false, true), 1504f, 0u, -1219f)), Struct_2(Struct_1(vec4<u32>(1u, 39008u, 45035u, 1u), vec4<bool>(true, true, false, false), 370f, 0u, 1674f), Struct_1(vec4<u32>(36180u, 0u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, true), -812f, 1u, 1000f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -904f);
    let var_1 = vec3<bool>(true, (~34079u >= global1.a.x) || false, false);
    var var_2 = u_input.b;
    global0 = Struct_4(global0.a, all(vec4<bool>(any(global0.a.zxy), false, true, all(select(vec4<bool>(global0.b, false, global2[_wgslsmith_index_u32(0u, 17u)], false), vec4<bool>(false, arg_0, global0.a.x, true), global0.b)))), arg_1);
    let var_3 = ~(~(reverseBits(u_input.c) << (arg_2.a.x % 32u)));
    return reverseBits(1i);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: f32) -> vec4<bool> {
    let var_0 = arg_0 << (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(_wgslsmith_div_u32(10577u, u_input.d.x), max(u_input.c, 1u), _wgslsmith_div_u32(u_input.d.x, 0u), ~global1.a.x) & (global1.a & countOneBits(vec4<u32>(global1.a.x, u_input.c, 46270u, 4294967295u)))) % 32u);
    let var_1 = Struct_3(min(~u_input.d, ~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.d.x, global1.a.x, 132744u), u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(f32(-1f) * -682f)), arg_1))));
    global0 = Struct_4(global0.a, true, -2147483647i);
    let var_2 = !(_wgslsmith_sub_u32(var_1.a.x, ~var_1.a.x) < 68794u);
    var var_3 = -_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(abs(-vec3<i32>(-1i, 1i, -102255i)), vec3<i32>(abs(-1i), arg_0, -var_0)), vec3<i32>(global0.c, -global0.c | ~arg_0, arg_0));
    return select(vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~global1.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), var_1.a.zx), 4294967295u)), 17u)], false, !(true && global0.a.x)), global0.a, select(!select(!vec4<bool>(global2[_wgslsmith_index_u32(21693u, 17u)], global2[_wgslsmith_index_u32(55665u, 17u)], false, false), select(global0.a, global0.a, vec4<bool>(global0.a.x, true, true, false)), global0.a), !select(select(global0.a, vec4<bool>(var_2, global2[_wgslsmith_index_u32(8862u, 17u)], false, global2[_wgslsmith_index_u32(var_1.a.x, 17u)]), vec4<bool>(true, true, false, global0.b)), !vec4<bool>(false, global0.a.x, global2[_wgslsmith_index_u32(u_input.c, 17u)], true), global0.a), global0.a));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(global1.a.x, 17u)];
    var var_1 = Struct_4(func_4(~func_3(true, _wgslsmith_div_i32(arg_1, u_input.a.x), Struct_3(vec4<u32>(4294967295u, u_input.d.x, 1u, u_input.d.x), 1000f), _wgslsmith_f_op_f32(138f * -1025f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-508f)))), -234f), global0.b, -3900i & _wgslsmith_mod_i32(-16765i, (u_input.b & u_input.a.x) << (~global1.a.x % 32u)));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(global1.a.yxy, u_input.d.yww), ~u_input.c, 42845u), vec4<u32>(_wgslsmith_mult_u32(global1.a.x, u_input.d.x), min(18445u, global1.a.x), _wgslsmith_dot_vec4_u32(global1.a, vec4<u32>(4294967295u, u_input.d.x, global1.a.x, 100001u)), 35095u)), select(u_input.c, 0u, false), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(26745u, 1u), ~22290u)), global1.a.x);
    var var_3 = Struct_2(Struct_1(~global1.a, vec4<bool>(!any(var_1.a), all(global0.a.zz), global0.a.x & false, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -284f))), abs(~_wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.d.xx)), _wgslsmith_f_op_f32(floor(1f))), Struct_1(vec4<u32>(0u << (u_input.d.x % 32u), var_2, min(global1.a.x, global1.a.x), countOneBits(u_input.c)) | vec4<u32>(~1u, firstLeadingBit(u_input.d.x), 6432u, u_input.c), vec4<bool>(func_4(2147483647i, 637f, -183f).x, any(func_4(-2147483647i, arg_0.x, arg_0.x)), true, var_1.b), _wgslsmith_f_op_f32(exp2(global1.b)), 22164u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + arg_0.x))));
    var var_4 = _wgslsmith_add_vec4_i32(-(~(-reverseBits(vec4<i32>(arg_1, -1i, 26523i, 0i)))), ~_wgslsmith_sub_vec4_i32(u_input.a, u_input.a));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_4.x, global0.c, var_1.c), var_4.xxx)), ~min(vec3<i32>(arg_1, arg_1, -19532i), var_4.zwy))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~select(var_4.xx, vec2<i32>(1i, -1i), var_1.a.wy), u_input.a.xz), -_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zz, var_4.xw), -var_4.xz)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: bool) -> Struct_3 {
    let var_0 = ~_wgslsmith_mult_i32(-2147483647i, ~func_2(vec3<f32>(-1041f, -925f, -211f), ~2147483647i));
    var var_1 = Struct_3(select(vec4<u32>(countOneBits(max(1u, 41129u)), ~_wgslsmith_sub_u32(u_input.d.x, 15645u), abs(global1.a.x >> (global1.a.x % 32u)), ~global1.a.x), ~u_input.d, !global0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1030f, arg_2, true))) - global1.b))));
    return Struct_3(~_wgslsmith_sub_vec4_u32(select(_wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(1u, 4294967295u, var_1.a.x, u_input.c)), vec4<u32>(18335u, global1.a.x, global1.a.x, 4294967295u) & global1.a, global0.a), vec4<u32>(_wgslsmith_clamp_u32(global1.a.x, 1u, u_input.c), 4294967295u, var_1.a.x << (34337u % 32u), ~1u)), _wgslsmith_f_op_f32(floor(arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) + vec2<f32>(_wgslsmith_f_op_f32(max(global1.b, global1.b)), _wgslsmith_f_op_f32(floor(global1.b)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, _wgslsmith_f_op_f32(sign(1034f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(576f, 3255f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(164f, global1.b) - vec2<f32>(1333f, global1.b))))));
    global0 = Struct_4(!global0.a, global2[_wgslsmith_index_u32(~(11255u ^ firstTrailingBit(~u_input.d.x)), 17u)], u_input.b);
    global1 = func_1(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(1160f - -716f)))), -_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.a.zy, u_input.a.xy), u_input.a.yw | u_input.a.yx), _wgslsmith_f_op_f32(min(global1.b, global1.b)), true);
    let var_1 = ~max(global1.a, u_input.d & _wgslsmith_mult_vec4_u32(vec4<u32>(74285u, 0u, 32352u, u_input.d.x), u_input.d)) << (abs(global1.a) % vec4<u32>(32u));
    var var_2 = ~(~0u) > global1.a.x;
    let var_3 = Struct_2(Struct_1(~(~(~u_input.d)), global0.a, var_0.x, ~abs(global1.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2192f)))), Struct_1(max(vec4<u32>(var_1.x, global1.a.x, u_input.c, 1u) | vec4<u32>(4294967295u, 39805u, var_1.x, 0u), func_1(vec3<f32>(-1698f, global1.b, var_0.x), u_input.a.yx, 1412f, global0.a.x).a) | vec4<u32>(~14420u, ~15427u, firstLeadingBit(u_input.c), global1.a.x), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(829f, 608f)))), func_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-692f * global1.b), -397f), firstTrailingBit(vec2<i32>(global0.c, u_input.b) ^ vec2<i32>(-18680i, u_input.a.x)), var_0.x, false & global2[_wgslsmith_index_u32(4294967295u, 17u)]).a.x, func_1(vec3<f32>(_wgslsmith_f_op_f32(abs(1831f)), _wgslsmith_f_op_f32(round(var_0.x)), var_0.x), _wgslsmith_div_vec2_i32(u_input.a.xw, select(vec2<i32>(global0.c, -2147483647i), u_input.a.yx, vec2<bool>(global0.b, true))), -941f, global2[_wgslsmith_index_u32(0u, 17u)]).b));
    let var_4 = u_input.a.wx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_3.b.a.x, var_3.a.d, abs(0u)), 1000f, (~_wgslsmith_dot_vec2_u32(var_1.zy, var_1.xz) | var_3.a.d) & ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.d, global1.a), ~global1.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yyy >> (var_1.xzw % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(global0.c, 17755i, -41346i))) | (_wgslsmith_clamp_i32(global0.c, global0.c, 41614i) & ~global0.c), _wgslsmith_sub_i32((i32(-1i) * -2147483647i) | firstTrailingBit(22095i), ~var_4.x), firstLeadingBit(_wgslsmith_dot_vec4_i32(select(u_input.a, vec4<i32>(1i, -1i, global0.c, 1i), vec4<bool>(true, var_3.b.b.x, var_3.b.b.x, true)), u_input.a << (vec4<u32>(1u, 1u, global1.a.x, global1.a.x) % vec4<u32>(32u))))), global1.b);
}

