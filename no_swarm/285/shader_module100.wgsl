struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<u32>, 31>;

var<private> global2: array<Struct_3, 19>;

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(countOneBits(u_input.a.x >> (u_input.a.x % 32u)), ~_wgslsmith_mod_u32(66364u, u_input.a.x), reverseBits(1u)), ~(global1[_wgslsmith_index_u32(abs(~u_input.a.x), 31u)] | (~global1[_wgslsmith_index_u32(u_input.a.x, 31u)] ^ global1[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 31u)]))), 8u)];
    var var_1 = !(!(!vec4<bool>(true, true, true, all(vec2<bool>(true, false)))));
    let var_2 = !var_1.x;
    var var_3 = Struct_5(_wgslsmith_dot_vec3_u32(min(global1[_wgslsmith_index_u32(firstLeadingBit(27339u), 31u)], firstTrailingBit(select(var_0.a.ywy, vec3<u32>(1u, 35688u, 112602u), var_1.x))), vec3<u32>(11266u, var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.a.x), var_0.a)) | vec3<u32>(var_0.a.x | 1u, u_input.a.x, _wgslsmith_clamp_u32(1u, 0u, u_input.a.x))), Struct_3(vec4<bool>(all(select(vec4<bool>(true, false, var_1.x, var_2), vec4<bool>(var_1.x, true, var_1.x, var_2), var_2)), true, 2147483647i == global0.x, select(var_1.x, any(vec4<bool>(false, var_2, true, var_1.x)), !var_2))), Struct_1(vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(var_0.a.x, var_0.a.x)), abs(u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, 16876u, 57644u), vec3<u32>(16295u, var_0.a.x, u_input.a.x)), var_0.a.zyz), _wgslsmith_div_u32(66430u, var_0.a.x))), Struct_2(global3[_wgslsmith_index_u32(~7668u, 8u)]), true || all(vec4<bool>(false, any(var_1.wx), all(var_1.zzy), 0u <= u_input.a.x)));
    let var_4 = _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, ~1i), vec2<i32>(-1i, firstLeadingBit(firstTrailingBit(_wgslsmith_div_i32(1i, 21506i)))), vec2<i32>(-u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-12684i, global0.x | -1i, -u_input.b.x), vec3<i32>(min(-2147483647i, 2147483647i), global0.x, _wgslsmith_div_i32(6069i, global0.x)))));
    return 488f;
}

fn func_2(arg_0: Struct_5) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), -104f, _wgslsmith_f_op_f32(f32(-1f) * -341f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(236f * 538f), _wgslsmith_f_op_f32(-1194f + 1067f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1320f, -1214f, _wgslsmith_f_op_f32(floor(-2057f))), vec3<f32>(_wgslsmith_f_op_f32(529f + -384f), _wgslsmith_f_op_f32(sign(-1000f)), -503f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f) + _wgslsmith_f_op_f32(528f * -119f)), _wgslsmith_f_op_f32(f32(-1f) * -996f), _wgslsmith_f_op_f32(max(-168f, _wgslsmith_f_op_f32(floor(489f))))), vec3<f32>(-1041f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(303f))), _wgslsmith_f_op_f32(trunc(-228f))), arg_0.b.a.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1000f, var_0.x), vec3<f32>(118f, var_0.x, 478f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-185f, -933f, var_0.x) - vec3<f32>(303f, -1249f, var_0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-235f, -1881f, -226f) * vec3<f32>(1556f, -1000f, var_0.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-156f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 3185f, 1462f))))));
    var var_1 = ~(~_wgslsmith_mult_vec3_u32(min(abs(vec3<u32>(arg_0.d.a.a.x, arg_0.c.a.x, arg_0.a)), ~global1[_wgslsmith_index_u32(arg_0.c.a.x, 31u)]), global1[_wgslsmith_index_u32(~(arg_0.a << (84248u % 32u)), 31u)]));
    let var_2 = ~u_input.b.xw;
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1734f, _wgslsmith_f_op_f32(select(-599f, 368f, arg_0.b.a.x)), _wgslsmith_f_op_f32(-var_0.x)))))));
    return countOneBits(~vec4<u32>(~57197u, 4294967295u, ~4294967295u, 102361u));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global3 = array<Struct_1, 8>();
    global3 = array<Struct_1, 8>();
    let var_0 = Struct_4(~reverseBits(~vec2<u32>(arg_0.a.x, arg_0.a.x)), Struct_1(~func_2(Struct_5(19261u, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(48963u, 8u)], Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), true))), ~u_input.b.x, firstLeadingBit(~arg_0.a.zww));
    global1 = array<vec3<u32>, 31>();
    let var_1 = 1i;
    return 19879u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, func_1(global3[_wgslsmith_index_u32(0u, 8u)])), ~vec4<u32>(u_input.a.x, func_1(global3[_wgslsmith_index_u32(44132u, 8u)]), u_input.a.x, _wgslsmith_add_u32(countOneBits(10427u), select(4294967295u, u_input.a.x, true))));
    let var_2 = ~(min(var_1.zxx, max(~var_1.zwx, ~global1[_wgslsmith_index_u32(126421u, 31u)])) | vec3<u32>(35605u, 0u, select(1178u, var_1.x, false)));
    global3 = array<Struct_1, 8>();
    let var_3 = u_input.b.x;
    global0 = ~(~(-u_input.b.yy));
    let var_4 = -2147483647i;
    let var_5 = -select(u_input.b.wy, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(3041i, var_4, -1i, var_4), vec4<i32>(47882i, var_3, 1149i, global0.x)), 2852i), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(1u, -4741i | firstLeadingBit(u_input.b.x & (var_4 ^ var_3)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-970f * _wgslsmith_f_op_f32(func_3())), true)), 60264i);
}

