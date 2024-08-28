struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(1095f, 1030f, 2562f), vec3<f32>(950f, -155f, -459f), vec3<f32>(-1048f, 400f, 1375f), vec3<f32>(1101f, -514f, 980f), vec3<f32>(-1671f, 187f, 1386f), vec3<f32>(-1321f, -696f, -625f), vec3<f32>(2109f, 338f, 1000f), vec3<f32>(-806f, -1935f, 280f), vec3<f32>(-163f, -1002f, -1034f), vec3<f32>(1682f, -1077f, -302f), vec3<f32>(-649f, 1447f, -877f), vec3<f32>(-838f, 185f, 622f), vec3<f32>(-559f, -1229f, -953f), vec3<f32>(1126f, -602f, 1393f), vec3<f32>(-1064f, 231f, 761f), vec3<f32>(2532f, 1298f, 1000f), vec3<f32>(-569f, -1808f, -368f), vec3<f32>(-335f, -113f, -109f), vec3<f32>(-118f, -1852f, -1203f), vec3<f32>(-1771f, 392f, 1000f), vec3<f32>(-934f, -655f, 736f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec3<bool> {
    let var_0 = all(select(vec3<bool>(false, all(vec3<bool>(false, false, true)), !any(vec2<bool>(false, false))), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, true))), true));
    global0 = array<vec3<f32>, 21>();
    let var_1 = vec4<bool>(var_0, !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -867f))) < 694f), any(vec4<bool>(var_0, !select(var_0, var_0, false), true, true)), true);
    var var_2 = Struct_1(u_input.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f) * 1f), _wgslsmith_f_op_f32(floor(2326f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(259f, _wgslsmith_f_op_f32(step(948f, -823f)))))));
    var_2 = Struct_1(vec2<i32>(-u_input.b, countOneBits(-select(u_input.e.x, 2147483647i, var_1.x))), vec3<f32>(648f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b.x, var_2.b.x))), var_2.b.x)), _wgslsmith_f_op_f32(ceil(958f))));
    return var_1.yyw;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_div_vec3_i32(max(~(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 8366i), vec3<i32>(u_input.e.x, u_input.b, -2147483647i)) | u_input.e.zwz), u_input.e.yzy), u_input.e.xxy);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -763f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-314f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2236f)) - _wgslsmith_f_op_f32(f32(-1f) * -1060f))));
    var var_2 = false;
    let var_3 = select(select(select(vec3<bool>(true, true, all(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, true), !all(vec4<bool>(true, false, false, true))), select(vec3<bool>(any(vec3<bool>(false, true, true)), true, true), !func_3(), vec3<bool>(true, true, true)), any(!func_3())), !(!func_3()), true);
    global0 = array<vec3<f32>, 21>();
    return !(!var_3.x);
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(1966u >> (u_input.d % 32u), 21u)], _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.d, 21u)] * global0[_wgslsmith_index_u32(0u, 21u)]))))))) + vec3<f32>(arg_0, -660f, _wgslsmith_f_op_f32(1101f - arg_0)));
    let var_1 = true;
    global0 = array<vec3<f32>, 21>();
    global0 = array<vec3<f32>, 21>();
    global0 = array<vec3<f32>, 21>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(select(var_0.xy, _wgslsmith_f_op_vec2_f32(var_0.xy * _wgslsmith_f_op_vec2_f32(-var_0.zy)), vec2<bool>(func_2(reverseBits(u_input.b)), var_1))), true, abs(((vec3<u32>(13339u, u_input.d, 53198u) << (vec3<u32>(1u, u_input.d, 0u) % vec3<u32>(32u))) & (vec3<u32>(u_input.d, 4294967295u, u_input.d) ^ vec3<u32>(1u, u_input.d, u_input.d))) & vec3<u32>(min(u_input.d, 38975u), 1u, ~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(849f, 1000f)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -943f)) * -1305f));
    let var_2 = func_1(_wgslsmith_f_op_f32(max(-2398f, _wgslsmith_f_op_f32(-680f + var_0))));
    var var_3 = vec4<i32>(-reverseBits(_wgslsmith_div_i32(u_input.b, i32(-1i) * -23694i)), ~(_wgslsmith_clamp_i32(-1i, u_input.e.x, 48703i) << (82053u % 32u)) & 91928i, u_input.a.x, i32(-1i) * -14306i);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f - _wgslsmith_f_op_f32(-var_2.a.x)))) - var_0);
    var_1 = -1963f;
    let var_4 = vec4<bool>(1324f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1706f, _wgslsmith_f_op_f32(round(var_2.a.x))) + _wgslsmith_f_op_f32(max(-647f, var_0))), _wgslsmith_f_op_f32(var_2.a.x + 102f) == _wgslsmith_f_op_f32(-var_0), var_2.b, var_2.b);
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_2.a.x)) + _wgslsmith_div_f32(-1341f, _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(round(-1902f)), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -668f)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(countOneBits(~vec2<u32>(var_2.c.x, u_input.d)))), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_2.c.x, u_input.d, 1u)), vec3<u32>(~4294967295u, reverseBits(30769u), func_1(var_5.x).c.x)), -1i | _wgslsmith_mod_i32(-2905i, min(_wgslsmith_mod_i32(61204i, var_3.x), u_input.e.x)), u_input.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1339f)), 1889f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-463f))), -788f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1164f, -759f), var_5.x))));
}

