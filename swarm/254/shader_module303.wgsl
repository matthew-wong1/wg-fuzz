struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: array<bool, 13>;

var<private> global2: array<u32, 30> = array<u32, 30>(40441u, 1u, 18949u, 27010u, 1u, 16975u, 80244u, 4294967295u, 4294967295u, 0u, 88825u, 98182u, 4294967295u, 48906u, 0u, 0u, 36848u, 17255u, 36239u, 69985u, 37507u, 0u, 14018u, 4294967295u, 42797u, 48972u, 14464u, 41828u, 4294967295u, 95664u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = abs(select(u_input.e.x, -1i, any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_3(Struct_1(~max(7282u | u_input.c, global2[_wgslsmith_index_u32(~4294967295u, 30u)]), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1637f, -1000f, 327f, -727f)), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(862f, -564f, -597f, -1447f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(564f, -1305f, 705f, 707f))))), 485f));
    global2 = array<u32, 30>();
    global2 = array<u32, 30>();
    let var_2 = vec2<bool>(true, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(516f, _wgslsmith_f_op_f32(select(var_1.a.c, -2176f, global1[_wgslsmith_index_u32(61586u, 13u)])))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_1(u_input.b.x | _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, 79024u, global2[_wgslsmith_index_u32(5543u, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)])), u_input.b), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59911u, 30u)], 13u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-381f))) * arg_1.x), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) - 1260f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(floor(arg_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))))));
    global1 = array<bool, 13>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, arg_1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1156f, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.x, -427f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, var_0.b.x), var_0.b.yw), var_0.b.xy, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a, 30u)], 13u)]))))))));
    let var_2 = Struct_3(Struct_1(~10854u, var_0.b, _wgslsmith_f_op_f32(-2905f * var_0.b.x)));
    global0 = array<Struct_2, 17>();
    return Struct_3(Struct_1(_wgslsmith_mod_u32(~(var_2.a.a >> (var_2.a.a % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.a, var_0.a, 80960u, global2[_wgslsmith_index_u32(var_0.a, 30u)]) & u_input.b, vec4<u32>(1u, var_2.a.a, 40619u, var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a.b) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(403f, var_1.x, 949f, arg_1.x), _wgslsmith_f_op_vec4_f32(var_0.b * var_0.b), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(8230u, 13u)], true)))), _wgslsmith_f_op_f32(var_0.c * var_0.b.x)));
}

fn func_1() -> Struct_1 {
    global2 = array<u32, 30>();
    let var_0 = u_input.c;
    let var_1 = func_2(reverseBits(~_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 3673i, u_input.d, 0i), vec4<i32>(-8083i, 1550i, u_input.e.x, u_input.a.x), vec4<i32>(-34812i, u_input.e.x, u_input.e.x, -1i)), ~vec4<i32>(19554i, u_input.e.x, u_input.e.x, u_input.e.x), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-695f, _wgslsmith_f_op_f32(197f * -305f))), _wgslsmith_f_op_f32(f32(-1f) * -384f))), _wgslsmith_f_op_f32(f32(-1f) * -1349f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(122f, -248f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-313f, -663f)) * -1344f))));
    return Struct_1(~countOneBits(_wgslsmith_dot_vec3_u32(max(vec3<u32>(52537u, 1u, var_0), u_input.b.wwx), _wgslsmith_mod_vec3_u32(u_input.b.zyw, u_input.b.xyy))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1757f, -373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1913f, -721f)))))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_1.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    var var_1 = func_1();
    let var_2 = vec2<i32>(countOneBits(firstLeadingBit(min(firstLeadingBit(var_0.x), select(2147483647i, u_input.d, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34638u, 30u)], 30u)], 13u)])))), 2147483647i);
    global2 = array<u32, 30>();
    var_1 = Struct_1(var_1.a, vec4<f32>(1000f, func_2(firstLeadingBit(vec4<i32>(var_0.x, u_input.a.x, 0i, var_2.x)), var_1.b.yyx).a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c)) - _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x)))), 1000f);
    let var_3 = func_2(reverseBits(select(countOneBits(~vec4<i32>(u_input.e.x, 0i, -10143i, var_0.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, u_input.d, var_0.x, -2147483647i), vec4<i32>(-1i, -391i, -1i, u_input.e.x)), !global1[_wgslsmith_index_u32(u_input.c, 13u)])), _wgslsmith_f_op_vec3_f32(var_1.b.xxx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-114f, var_1.c, _wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x ^ var_1.a, var_1.c);
}

