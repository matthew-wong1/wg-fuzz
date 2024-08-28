struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1i, 5935u, vec2<bool>(false, false)), Struct_1(-57348i, 95461u, vec2<bool>(true, true)), Struct_1(-48944i, 4294967295u, vec2<bool>(true, false)), Struct_1(i32(-2147483648), 57604u, vec2<bool>(true, true)), Struct_1(i32(-2147483648), 23767u, vec2<bool>(true, true)), Struct_1(1628i, 0u, vec2<bool>(false, true)), Struct_1(-40157i, 52989u, vec2<bool>(true, true)), Struct_1(0i, 39114u, vec2<bool>(true, false)), Struct_1(15911i, 11973u, vec2<bool>(true, true)), Struct_1(12710i, 4294967295u, vec2<bool>(false, true)), Struct_1(17702i, 25832u, vec2<bool>(true, true)), Struct_1(-1i, 0u, vec2<bool>(true, true)), Struct_1(-43086i, 4294967295u, vec2<bool>(true, false)), Struct_1(48711i, 0u, vec2<bool>(false, false)), Struct_1(-1i, 0u, vec2<bool>(true, true)), Struct_1(10516i, 0u, vec2<bool>(true, true)), Struct_1(0i, 4294967295u, vec2<bool>(false, false)), Struct_1(-7468i, 4294967295u, vec2<bool>(true, false)), Struct_1(-5163i, 0u, vec2<bool>(false, true)), Struct_1(-48302i, 19856u, vec2<bool>(true, false)), Struct_1(-37311i, 1u, vec2<bool>(true, false)), Struct_1(-1i, 23530u, vec2<bool>(false, false)), Struct_1(36690i, 1u, vec2<bool>(true, false)), Struct_1(17669i, 10785u, vec2<bool>(false, false)), Struct_1(-65036i, 4294967295u, vec2<bool>(false, false)), Struct_1(1i, 64044u, vec2<bool>(false, false)), Struct_1(2147483647i, 32934u, vec2<bool>(false, false)), Struct_1(-1i, 70615u, vec2<bool>(false, true)), Struct_1(i32(-2147483648), 17888u, vec2<bool>(true, false)), Struct_1(16353i, 28976u, vec2<bool>(false, true)));

var<private> global2: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(1000f, -289f), vec2<f32>(1331f, -184f), vec2<f32>(749f, -734f), vec2<f32>(346f, 1162f), vec2<f32>(187f, 697f), vec2<f32>(-1790f, -551f), vec2<f32>(-858f, -1163f), vec2<f32>(1177f, 1329f), vec2<f32>(1000f, -1721f), vec2<f32>(812f, 778f), vec2<f32>(-191f, 122f), vec2<f32>(708f, 1000f), vec2<f32>(147f, 295f), vec2<f32>(1208f, -732f), vec2<f32>(1484f, 1176f), vec2<f32>(-1228f, -356f), vec2<f32>(376f, -1000f), vec2<f32>(389f, 679f), vec2<f32>(2141f, -953f), vec2<f32>(241f, -936f), vec2<f32>(-693f, -831f), vec2<f32>(-307f, 2118f), vec2<f32>(-779f, 443f), vec2<f32>(-1000f, -719f), vec2<f32>(1000f, -549f), vec2<f32>(1300f, 2056f), vec2<f32>(-1069f, -1000f));

var<private> global3: u32 = 33043u;

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = vec2<i32>(-(5461i ^ firstTrailingBit(u_input.a.x << (u_input.b % 32u))), 17440i);
    global3 = _wgslsmith_add_u32(~abs(abs(32477u)), ~u_input.d);
    global3 = min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b << (0u % 32u), u_input.d, ~u_input.d) ^ countOneBits(~vec3<u32>(1u, u_input.b, u_input.b)), firstTrailingBit(~(~vec3<u32>(u_input.b, u_input.b, u_input.b)))), ~firstTrailingBit(4294967295u));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~abs(u_input.d << (~9569u % 32u)), 15845u), 30u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global4.x)));
    return !(!(!(!var_1.c.x)));
}

fn func_2() -> u32 {
    global3 = 1u;
    var var_0 = select(select(vec2<bool>((2147483647i < u_input.a.x) != true, true), vec2<bool>(false, func_3()), !vec2<bool>(select(false, false, true), true)), !vec2<bool>(select(u_input.a.x <= -2147483647i, true, true), any(vec4<bool>(false, true, true, false))), vec2<bool>(~(37226u ^ u_input.d) == u_input.d, true));
    var var_1 = vec3<bool>((-(u_input.a.x ^ u_input.a.x) == ~(16131i << (1u % 32u))) != (_wgslsmith_f_op_f32(-global4.x) != _wgslsmith_f_op_f32(f32(-1f) * -1001f)), any(!select(!vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, var_0.x, true, var_0.x), false)), var_0.x);
    global3 = ~min(u_input.d, u_input.b);
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(0u, reverseBits(_wgslsmith_mod_u32(~18190u, 4294967295u)), ~_wgslsmith_mod_u32(1u, u_input.d | u_input.d), 4294967295u), select(reverseBits(vec4<u32>(9614u, 1u, _wgslsmith_clamp_u32(u_input.d, u_input.d, 53307u), u_input.d)), vec4<u32>(min(max(4294967295u, u_input.b), u_input.d), u_input.d, u_input.d, u_input.d), !(!var_1.x)));
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<u32>) -> Struct_1 {
    global2 = array<vec2<f32>, 27>();
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b, min(u_input.b, 4294967295u), reverseBits(u_input.d)) ^ abs(vec3<u32>(1u, arg_2.x, u_input.b)), vec3<u32>(26978u, 14771u, 36739u)), ~min(vec3<u32>(4294967295u << (arg_2.x % 32u), arg_2.x, arg_0.b), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b), vec3<u32>(arg_0.b, arg_0.b, arg_0.b)))));
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(abs(arg_0.b), 27u)] + global2[_wgslsmith_index_u32(~var_0.x, 27u)])));
    var var_1 = ~arg_1;
    var_0 = _wgslsmith_sub_vec3_u32(firstTrailingBit(abs(~(~vec3<u32>(32887u, arg_0.b, u_input.d)))), vec3<u32>(1u, 65280u, u_input.b));
    return Struct_1(-(~(12904i ^ arg_0.a)) ^ ~arg_1.x, _wgslsmith_add_u32(~max(arg_0.b & 33108u, var_0.x ^ 0u), 25584u), !arg_0.c);
}

fn func_1() -> u32 {
    let var_0 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, func_2()), 30u)], u_input.a.zxz, ~vec2<u32>(abs(4294967295u) ^ _wgslsmith_div_u32(1u, u_input.b), 35102u));
    var var_1 = _wgslsmith_add_u32(~u_input.b, (abs(~var_0.b) & ~15272u) >> (10880u % 32u));
    let var_2 = var_0.a;
    var var_3 = func_4(global1[_wgslsmith_index_u32(u_input.b, 30u)], u_input.c, abs(~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u), 59869u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.x, global4.x))), vec2<f32>(global4.x, -427f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) + global2[_wgslsmith_index_u32(var_0.b, 27u)]))))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~min(func_1(), u_input.d);
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_sub_i32(firstLeadingBit(u_input.c.x), -1i)) << (_wgslsmith_mult_u32(1u, 4613u) % 32u), -34689i, i32(-1i) * -1i);
    let var_1 = Struct_1(1i, func_1(), !vec2<bool>(any(vec4<bool>(true, true, false, true)) | true, true));
    var var_2 = Struct_1(1i, ~var_1.b, var_1.c);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1613f)) * _wgslsmith_f_op_f32(floor(global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.x))) * -2020f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - _wgslsmith_div_f32(global4.x, global4.x)))), global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 14u)]), select(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(27693u, 64056u, 10996u), vec3<u32>(36682u, var_2.b, 49735u), vec3<u32>(12858u, 14599u, var_1.b)) ^ vec3<u32>(var_2.b, u_input.b, var_2.b)), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(71249u, u_input.d, 1u), vec3<u32>(93708u, var_2.b, 1u), vec3<u32>(53580u, 35535u, 1u))), !var_1.c.x), ~(-1i), var_2.b & firstLeadingBit(var_1.b));
}

