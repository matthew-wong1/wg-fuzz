struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(true, vec2<f32>(-151f, 106f), vec3<f32>(713f, -1717f, -1214f), vec2<u32>(14249u, 1u));

var<private> global2: vec2<u32>;

var<private> global3: u32 = 0u;

var<private> global4: array<f32, 22> = array<f32, 22>(-1060f, -195f, -773f, -1865f, -2438f, 116f, 446f, 188f, -577f, -1924f, 870f, -425f, 120f, -175f, 816f, 880f, -2646f, -658f, 823f, -1715f, -1158f, 2111f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(false, global1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(global1.b.x)), global0.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -271f, global0.x)))) * _wgslsmith_f_op_vec3_f32(global0.wyw - global1.c)), firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.a.zx, arg_0.a.yy)));
    global3 = var_0.d.x;
    let var_1 = var_0.b;
    var var_2 = var_0;
    global2 = _wgslsmith_add_vec2_u32(max(vec2<u32>(4294967295u, 11128u), firstLeadingBit(select(select(u_input.a.zz, u_input.a.xx, vec2<bool>(var_2.a, var_0.a)), vec2<u32>(0u, 5450u), !var_2.a))), arg_1.a.yx | min(arg_0.a.yz, vec2<u32>(4294967295u, _wgslsmith_mod_u32(arg_1.b, global1.d.x))));
    return select(!vec4<bool>(true, false, (21641u ^ arg_0.b) < 73422u, !(var_2.a & true)), select(!(!select(vec4<bool>(var_2.a, true, false, global1.a), vec4<bool>(global1.a, global1.a, var_2.a, true), var_2.a)), vec4<bool>(true, (-14135i > u_input.b.x) || var_2.a, false, true), var_0.a), vec4<bool>(false, true, var_0.a, !var_0.a));
}

fn func_2(arg_0: bool) -> u32 {
    global1 = Struct_1(4294967295u > (~abs(global1.d.x) << (~0u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(4294967295u, 22u)], global4[_wgslsmith_index_u32(u_input.a.x, 22u)])), 1226f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(703f, -1798f, -1437f)))), vec3<f32>(147f, 674f, global0.x))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(~41964u, global2.x), u_input.a.zz));
    var var_0 = select(!select(!(!vec4<bool>(global1.a, arg_0, false, arg_0)), select(vec4<bool>(false, global1.a, global1.a, arg_0), vec4<bool>(global1.a, false, global1.a, false), !vec4<bool>(global1.a, arg_0, true, arg_0)), true), select(func_3(Struct_2(u_input.a, global2.x | 0u), Struct_2(max(u_input.a, u_input.a), ~28742u)), vec4<bool>(true, select(arg_0, true, -1491f > global0.x), true, any(vec4<bool>(true, arg_0, arg_0, false))), vec4<bool>(max(u_input.b.x, 2147483647i) >= 34939i, _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(global1.d.x, 22u)])) == -208f, false || (1i == u_input.b.x), 1u <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 47024u), vec2<u32>(u_input.a.x, global1.d.x)))), !vec4<bool>(true, false, arg_0, all(func_3(Struct_2(u_input.a, global1.d.x), Struct_2(vec3<u32>(global2.x, 16538u, global1.d.x), u_input.a.x)))));
    let var_1 = (~abs(global2.x) >> ((~firstLeadingBit(global1.d.x) ^ ~firstLeadingBit(4294967295u)) % 32u)) ^ reverseBits(u_input.a.x);
    var var_2 = ~_wgslsmith_dot_vec2_i32(u_input.b.yz ^ _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.zz, vec2<i32>(2147483647i, u_input.b.x)), vec2<i32>(u_input.b.x, -2147483647i)), vec2<i32>((1i | u_input.b.x) << (34769u % 32u), -u_input.b.x));
    var var_3 = Struct_1(true, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global1.c.zy * vec2<f32>(1000f, _wgslsmith_f_op_f32(floor(-1000f)))))), global1.c, global1.d);
    return u_input.a.x;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_2(abs(arg_2.yyx), func_2((max(1410i, 0i) | u_input.b.x) == -u_input.b.x));
    return countOneBits(abs(5041u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = u_input.b;
    var_1 = vec4<i32>(u_input.b.x, ~(var_1.x | -2147483647i) ^ firstTrailingBit(_wgslsmith_sub_i32(var_1.x, u_input.b.x)), 1i, _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.b.x, u_input.b.x, var_1.x) << (vec3<u32>(global1.d.x, 73529u, global1.d.x) % vec3<u32>(32u))), ~var_1.zyy)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(9627u, func_1(1516f, global0.x, vec4<u32>(global1.d.x, 8843u, 19088u, global2.x))), ~firstLeadingBit(vec2<u32>(u_input.a.x, global1.d.x))), 1u, global2.x, _wgslsmith_add_u32(1u, ~1u)) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1798f)), -913f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -427f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(1u, 22u)], 494f, global0.x, global1.b.x))), vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], 1013f, global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f))), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a.x, 22u)]) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1538f)))));
    let var_3 = _wgslsmith_mult_i32(-firstTrailingBit(1i), -6562i);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -896f, var_2.x, 582f)) * vec4<f32>(global1.b.x, -751f, global4[_wgslsmith_index_u32(82657u, 22u)], 453f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 162f, -1147f, global1.c.x), vec4<f32>(582f, global1.c.x, -1000f, global4[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c.x, -1000f, 851f, 646f), vec4<f32>(-1033f, global4[_wgslsmith_index_u32(11873u, 22u)], global0.x, 349f), vec4<bool>(true, global1.a, global1.a, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-840f, global0.x, global4[_wgslsmith_index_u32(global2.x, 22u)], global0.x) + vec4<f32>(-443f, var_2.x, 3002f, 842f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2370f, -1063f, global1.b.x, global4[_wgslsmith_index_u32(134302u, 22u)]))), _wgslsmith_f_op_f32(select(-259f, global1.b.x, true)) < _wgslsmith_f_op_f32(select(-509f, global0.x, true)))))));
    let var_4 = select(!select(func_3(Struct_2(u_input.a, 1u), Struct_2(vec3<u32>(50782u, 4294967295u, 43785u), 50979u)).wy, vec2<bool>(false, global1.a), func_3(Struct_2(u_input.a, u_input.a.x), Struct_2(vec3<u32>(u_input.a.x, global2.x, global1.d.x), 0u)).wx), !vec2<bool>(global1.d.x != (global1.d.x & u_input.a.x), (19261i <= var_3) & true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, global1.a), vec2<bool>(global1.a, true), true), any(vec2<bool>(true, true))), true), select(!(!vec2<bool>(global1.a, false)), !select(vec2<bool>(false, false), vec2<bool>(false, global1.a), vec2<bool>(global1.a, true)), select(select(vec2<bool>(true, global1.a), vec2<bool>(true, global1.a), vec2<bool>(global1.a, global1.a)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), all(vec2<bool>(global1.a, global1.a)))), vec2<bool>(global1.a, var_2.x != _wgslsmith_f_op_f32(f32(-1f) * -252f))));
    let var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(98834u, 29477u, 4294967295u, 4294967295u)), ~(vec4<u32>(global1.d.x, 47247u, u_input.a.x, 5164u) ^ vec4<u32>(global2.x, 4294967295u, 1u, 7787u))), max(~(~vec4<u32>(42423u, 125649u, 54448u, global2.x)), ~(~vec4<u32>(global1.d.x, global1.d.x, 56703u, 0u)))), _wgslsmith_mult_vec4_u32(~(max(vec4<u32>(global1.d.x, 46117u, 1u, 55616u), vec4<u32>(u_input.a.x, global2.x, 0u, 1u)) | ~vec4<u32>(u_input.a.x, 28302u, u_input.a.x, 4294967295u)), vec4<u32>(u_input.a.x, ~_wgslsmith_add_u32(global2.x, 1411u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(71706u, 4294967295u, 17616u), 1u), 1u)), reverseBits(u_input.a.x), 0i);
}

