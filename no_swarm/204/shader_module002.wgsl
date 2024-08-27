struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<f32>(-704f, -900f, 395f)), Struct_1(vec3<f32>(-136f, 2170f, 1046f)), Struct_1(vec3<f32>(433f, -1000f, -1000f)), Struct_1(vec3<f32>(-164f, 330f, 1256f)), Struct_1(vec3<f32>(183f, -1001f, 420f)), Struct_1(vec3<f32>(299f, 852f, -330f)), Struct_1(vec3<f32>(-906f, 265f, 971f)), Struct_1(vec3<f32>(-2855f, -1587f, -1368f)), Struct_1(vec3<f32>(175f, -539f, 1588f)), Struct_1(vec3<f32>(-1000f, 654f, -1144f)), Struct_1(vec3<f32>(-1772f, -1000f, 979f)), Struct_1(vec3<f32>(1058f, -1308f, 1643f)), Struct_1(vec3<f32>(-1012f, 1990f, -501f)), Struct_1(vec3<f32>(101f, 407f, -1109f)), Struct_1(vec3<f32>(-191f, 1297f, 1705f)), Struct_1(vec3<f32>(-588f, 580f, -628f)), Struct_1(vec3<f32>(-1826f, -148f, -651f)), Struct_1(vec3<f32>(479f, 498f, 1214f)), Struct_1(vec3<f32>(-404f, 245f, 138f)), Struct_1(vec3<f32>(-1000f, 1645f, -316f)));

var<private> global1: bool = true;

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(2609u, 16631u, 45182u, 56062u), vec4<u32>(4294967295u, 4294967295u, 54916u, 22483u), vec4<u32>(17087u, 34022u, 4294967295u, 14891u), vec4<u32>(1u, 43837u, 4294967295u, 75362u), vec4<u32>(54044u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 29181u, 62260u, 4294967295u), vec4<u32>(4294967295u, 21200u, 41782u, 4294967295u), vec4<u32>(4294967295u, 1u, 34708u, 55792u), vec4<u32>(0u, 4294967295u, 32187u, 63881u), vec4<u32>(1u, 718u, 44697u, 5462u), vec4<u32>(87638u, 0u, 0u, 1u), vec4<u32>(1u, 0u, 50299u, 0u), vec4<u32>(1u, 4294967295u, 1u, 5669u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(7375u, 58532u, 26323u, 41705u), vec4<u32>(0u, 1u, 0u, 31892u), vec4<u32>(4294967295u, 6417u, 6495u, 4294967295u), vec4<u32>(1u, 85023u, 4294967295u, 20923u), vec4<u32>(1u, 0u, 8365u, 27977u), vec4<u32>(45775u, 13352u, 22144u, 0u), vec4<u32>(1u, 11352u, 27648u, 0u));

var<private> global3: f32 = -1006f;

var<private> global4: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 20>();
    let var_0 = global0[_wgslsmith_index_u32(~firstTrailingBit(~abs(~49027u)), 20u)];
    var var_1 = Struct_1(var_0.a);
    global0 = array<Struct_1, 20>();
    return 82383u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global4 = true;
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(20180u, ~4294967295u), 20u)];
    let var_1 = max(func_3(), ~(~1u)) & ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(~4294967295u, func_3()));
    let var_2 = vec2<i32>(-1i) * -u_input.a;
    global1 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(step(var_0.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), vec3<f32>(var_0.a.x, 713f, -725f)), _wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(-var_0.a)))))));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = func_2(u_input.a.x);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(421f - _wgslsmith_f_op_f32(sign(-317f))), _wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(369f + var_0.a.x)), var_0.a.x), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1348f))) + var_0.a.x), 1f, var_0.a.x));
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), vec2<u32>(~(~66255u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 32691u, 83131u), vec3<u32>(4294967295u, 1u, 33574u)))), firstTrailingBit(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(51751u, 1u)), vec2<u32>(1u, 1u), ~vec2<u32>(0u, 1u))));
    global2 = array<vec4<u32>, 21>();
    var_2 = vec2<u32>(var_2.x, min(4294967295u, min(var_2.x, var_2.x)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 0u, 0u), 20u)];
    global4 = all(vec2<bool>(true, true));
    let var_1 = vec3<i32>(-(-1i ^ u_input.a.x), u_input.a.x & (u_input.a.x | u_input.a.x), ~(-u_input.a.x));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 56307u, 22429u, 45737u), global2[_wgslsmith_index_u32(1u, 21u)]))) << (~1u % 32u), 20u)];
    var var_3 = select(25131i == _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -2147483647i, var_1.x, -32965i), -vec4<i32>(-2147483647i, var_1.x, u_input.a.x, var_1.x))), false, !any(vec3<bool>(true, true, true)));
    var var_4 = ~firstTrailingBit(_wgslsmith_clamp_u32(~firstLeadingBit(31917u), ~(~16445u), _wgslsmith_sub_u32(~0u, min(77794u, 30374u))));
    let var_5 = ~_wgslsmith_clamp_i32(-func_1(true), func_1(true), 1i);
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, 1072f, var_0.a.x, 1109f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, var_0.a.x, -380f, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 310f, var_0.a.x, -362f)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.a.x), func_2(var_1.x).a.x, var_2.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-833f, 488f, var_2.a.x, -425f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -2201f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, -423f, 1676f), vec4<f32>(-773f, var_2.a.x, 1244f, var_2.a.x))), true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_5), ~(firstLeadingBit(vec3<u32>(1u, 1u, 1u)) | firstTrailingBit(vec3<u32>(0u, 1034u, 4294967295u))), global2[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(39444u, 23063u), vec2<u32>(0u, 0u)))), 21u)], var_6.x);
}

