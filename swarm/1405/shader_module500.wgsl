struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: array<u32, 14> = array<u32, 14>(0u, 10812u, 5615u, 69152u, 29033u, 0u, 19419u, 34902u, 4294967295u, 24291u, 4294967295u, 75941u, 35212u, 36681u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = Struct_2(vec2<f32>(-381f, _wgslsmith_div_f32(-971f, -1043f)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(global0[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(69724u, 14u)], 18919u), 21u)], 2147483647i, _wgslsmith_add_i32(-1i, 0i), 1i), ~vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b, 21u)], 21972i, -2101i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], 6877i, 1i), -vec4<i32>(u_input.a, -3958i, u_input.a, u_input.a))), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(min(u_input.b, global1[_wgslsmith_index_u32(107283u, 14u)]), 1u, 51968u << (u_input.b % 32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], 60556u, 43502u), vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(92899u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)])))), Struct_1(-1000f, ~global1[_wgslsmith_index_u32(countOneBits(~u_input.b), 14u)], -456f, u_input.a));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.c))));
    let var_2 = _wgslsmith_f_op_f32(exp2(var_0.a.x));
    global1 = array<u32, 14>();
    global1 = array<u32, 14>();
    return any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    global1 = array<u32, 14>();
    var var_0 = vec2<bool>(true, true);
    var var_1 = func_3();
    var var_2 = 11392i;
    var var_3 = 656f;
    return Struct_3(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, select(_wgslsmith_sub_u32(40765u, 1u), arg_0.x, all(vec2<bool>(true, true))), u_input.b), reverseBits(abs(vec3<u32>(global1[_wgslsmith_index_u32(arg_0.x, 14u)], 103307u, global1[_wgslsmith_index_u32(0u, 14u)])))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -155f))) - _wgslsmith_f_op_f32(-153f + _wgslsmith_f_op_f32(f32(-1f) * -256f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1846f * _wgslsmith_f_op_f32(round(1249f)))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32) -> vec4<f32> {
    var var_0 = func_2(vec4<u32>(global1[_wgslsmith_index_u32(0u, 14u)], min((arg_2 << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29145u, 14u)], 14u)] % 32u)) | global1[_wgslsmith_index_u32(~arg_2, 14u)], abs(~0u)), 1u, global1[_wgslsmith_index_u32(countOneBits(~_wgslsmith_mod_u32(40914u, 4294967295u)), 14u)]));
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, reverseBits(_wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.zww), firstLeadingBit(vec3<i32>(-4753i, u_input.a, 15396i)))), -(1i | -arg_0.x)), vec3<i32>(countOneBits(i32(-1i) * -1i), global0[_wgslsmith_index_u32(21318u, 21u)], -19254i >> ((global1[_wgslsmith_index_u32(arg_1.a.x, 14u)] << ((global1[_wgslsmith_index_u32(50268u, 14u)] & 1u) % 32u)) % 32u)));
    let var_2 = Struct_3(max(var_0.a, vec3<u32>(var_0.a.x, 1u, 1u)) | vec3<u32>(~firstLeadingBit(arg_1.a.x), _wgslsmith_mod_u32(~96691u, global1[_wgslsmith_index_u32(19441u, 14u)]), 46757u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, arg_1.a.x, 24524u), vec4<u32>(1u, 35554u, 1u, arg_2))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)))));
    global0 = array<i32, 21>();
    let var_3 = Struct_3(min(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2, global1[_wgslsmith_index_u32(var_2.a.x, 14u)], u_input.b), vec4<u32>(64265u, global1[_wgslsmith_index_u32(var_2.a.x, 14u)], var_0.a.x, arg_1.a.x)), min(global1[_wgslsmith_index_u32(u_input.b, 14u)], u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 0u, 1u) & vec3<u32>(var_0.a.x, arg_1.a.x, 47070u), var_2.a), 7171u & select(global1[_wgslsmith_index_u32(var_2.a.x, 14u)], u_input.b, false)), var_0.a), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-923f, 1425f, var_2.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-336f, var_0.b.x, arg_1.b.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.b.x, -1831f) - var_2.b))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x - 997f), _wgslsmith_f_op_f32(536f * arg_1.b.x), arg_1.b.x), _wgslsmith_f_op_vec3_f32(ceil(var_2.b))))));
    return vec4<f32>(677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + var_0.b.x)), var_0.b.x, func_2(~vec4<u32>(1u, 0u, 0u, var_0.a.x) >> (firstLeadingBit(abs(vec4<u32>(74596u, 4294967295u, arg_1.a.x, global1[_wgslsmith_index_u32(8370u, 14u)]))) % vec4<u32>(32u))).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(778f, 1120f, 247f, 521f), vec4<f32>(-514f, 1053f, -1450f, 615f))) * _wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(0i, 0i, -52204i, -2147483647i) | vec4<i32>(-2147483647i, u_input.a, -2147483647i, 10652i), Struct_3(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(28671u, 14u)], global1[_wgslsmith_index_u32(3628u, 14u)]), vec3<f32>(-133f, -288f, 219f)), 0u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-750f, 692f, 300f, -244f) + vec4<f32>(1127f, -526f, 771f, 1027f))))))));
    let var_1 = !vec3<bool>(select(true, true, any(vec4<bool>(false, true, false, true))), true, false);
    global1 = array<u32, 14>();
    global1 = array<u32, 14>();
    var var_2 = global0[_wgslsmith_index_u32(~u_input.b, 21u)];
    global0 = array<i32, 21>();
    var_2 = ~firstTrailingBit(-firstTrailingBit(1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(5354i << (global1[_wgslsmith_index_u32(4294967295u, 14u)] % 32u)) ^ global0[_wgslsmith_index_u32(func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(96871u, 14u)], global1[_wgslsmith_index_u32(28286u, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)], u_input.b), vec4<u32>(global1[_wgslsmith_index_u32(0u, 14u)], 19420u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19823u, 14u)], 14u)], u_input.b), vec4<u32>(4294967295u, 0u, 42116u, global1[_wgslsmith_index_u32(0u, 14u)]))).a.x, 21u)], 44758i), firstLeadingBit(abs(~vec4<u32>(1u, 34069u, 1u, u_input.b) | (vec4<u32>(u_input.b, 41938u, 0u, 8060u) << (vec4<u32>(1326u, global1[_wgslsmith_index_u32(177780u, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(12926u, 14u)]) % vec4<u32>(32u))))), ~(~select(vec2<i32>(-98528i, global0[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_mult_vec2_i32(vec2<i32>(18515i, global0[_wgslsmith_index_u32(u_input.b, 21u)]), vec2<i32>(-3201i, u_input.a)), !var_1.zy)), ~min(global1[_wgslsmith_index_u32(u_input.b, 14u)], u_input.b), abs(firstTrailingBit(vec4<i32>(13013i, u_input.a, -67773i, global0[_wgslsmith_index_u32(u_input.b, 21u)]) ^ vec4<i32>(2051i, -36526i, -98i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 21u)])) ^ -vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], u_input.a, 2147483647i, -9426i)));
}

