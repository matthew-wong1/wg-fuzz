struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(17160u, 13286u, 39111u);

var<private> global1: array<i32, 14> = array<i32, 14>(0i, 0i, 0i, -4421i, 1i, 2317i, 1i, 20182i, 31577i, i32(-2147483648), 0i, -1i, -16976i, 2147483647i);

var<private> global2: i32;

var<private> global3: array<bool, 14> = array<bool, 14>(true, true, true, true, false, false, true, true, false, false, false, false, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(u_input.c.zxx, ~max(u_input.c.zxy, ~u_input.c.zwy)), arg_3, vec4<bool>(any(select(!vec4<bool>(false, false, arg_1.x, arg_1.x), !vec4<bool>(true, arg_1.x, false, global3[_wgslsmith_index_u32(u_input.d, 14u)]), any(vec2<bool>(arg_1.x, true)))), true, global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(~(~u_input.b | ~global0.x), 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3 - -248f))), _wgslsmith_f_op_f32(round(arg_3)), true))));
    global2 = -48489i;
    let var_1 = vec3<bool>(arg_1.x, select(!(_wgslsmith_f_op_f32(-arg_3) > arg_2.x), !var_0.c.x, all(vec2<bool>(arg_1.x, true))), true);
    let var_2 = Struct_1(vec3<u32>(18736u >> (~(1u << (var_0.a.x % 32u)) % 32u), global0.x, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(var_0.b - -1309f)), vec4<bool>(arg_1.x, select(true, !var_1.x, arg_1.x), var_1.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f) + _wgslsmith_f_op_f32(select(-540f, var_0.b, arg_1.x)))), var_0.b));
    let var_3 = vec3<bool>(var_1.x, false, !global3[_wgslsmith_index_u32(global0.x, 14u)]);
    return var_0.c;
}

fn func_2() -> bool {
    global0 = u_input.c.yyw;
    let var_0 = Struct_1(u_input.c.ywy, -315f, !func_3(~firstTrailingBit(0i), vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 14u)], global3[_wgslsmith_index_u32(49540u, 14u)] | false), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(406f, 697f, 2034f, 860f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(585f, 885f, -1713f, 646f))))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(round(1028f))))), _wgslsmith_f_op_f32(abs(-746f)));
    var var_1 = 1u;
    let var_2 = Struct_1(~u_input.c.ywy << (vec3<u32>(0u, var_0.a.x, ~global0.x) % vec3<u32>(32u)), var_0.b, !select(select(select(var_0.c, vec4<bool>(true, false, var_0.c.x, false), true), vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 14u)], true, false), select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(5208u, 14u)], var_0.c.x), var_0.c, var_0.c)), vec4<bool>(var_0.c.x, !var_0.c.x, any(var_0.c.xxz), true), vec4<bool>(var_0.b <= 388f, !global3[_wgslsmith_index_u32(global0.x, 14u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 4294967295u, 26203u), vec3<u32>(global0.x, 30832u, global0.x)), 14u)], false)), var_0.b);
    var var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -2069i, _wgslsmith_div_i32(-2147483647i, 1i), 0i), firstTrailingBit(vec4<i32>(-19065i, global1[_wgslsmith_index_u32(58571u, 14u)], global1[_wgslsmith_index_u32(44344u, 14u)], global1[_wgslsmith_index_u32(var_2.a.x, 14u)])) ^ ~vec4<i32>(global1[_wgslsmith_index_u32(8853u, 14u)], global1[_wgslsmith_index_u32(var_2.a.x, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(global0.x, 14u)]), select(_wgslsmith_mult_vec4_i32(vec4<i32>(17301i, global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(26867u, 14u)], 1i), vec4<i32>(global1[_wgslsmith_index_u32(58362u, 14u)], -27796i, -7206i, global1[_wgslsmith_index_u32(var_0.a.x, 14u)])), vec4<i32>(0i, 0i, global1[_wgslsmith_index_u32(global0.x, 14u)], 2707i), var_2.c)) << (vec4<u32>(1u, abs(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_0.a.x, 1u, var_0.a.x, 4294967295u))), ~1u, 0u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(-26360i, global1[_wgslsmith_index_u32(3224u, 14u)]), 50615i, global1[_wgslsmith_index_u32(abs(abs(40284u)), 14u)], ~global1[_wgslsmith_index_u32(5212u, 14u)]) ^ firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(29u, 14u)], global1[_wgslsmith_index_u32(global0.x, 14u)], 1i, global1[_wgslsmith_index_u32(0u, 14u)]), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(1117u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(global0.x, 14u)]), vec4<i32>(global1[_wgslsmith_index_u32(global0.x, 14u)], -2147483647i, 0i, 42483i))));
    return var_3.x <= (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(1824u, var_2.a.x), var_0.a.x) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 20276u, 5374u), ~vec3<u32>(u_input.b, 25703u, 8122u)) % 32u), 14u)] & global1[_wgslsmith_index_u32(4294967295u, 14u)]);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec2<u32> {
    global1 = array<i32, 14>();
    var var_0 = u_input.c;
    global2 = -58164i;
    var_0 = ~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 51626u, u_input.a.x), vec4<u32>(27977u, 4294967295u, global0.x, arg_1.a.x)), 92108u, _wgslsmith_mod_u32(u_input.c.x, 1u), ~(~global0.x)) << (vec4<u32>(0u, 1u, reverseBits(1u), ~(~var_0.x >> (32414u % 32u))) % vec4<u32>(32u));
    let var_1 = arg_1;
    return vec2<u32>(~(~17337u), abs(u_input.d));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> i32 {
    var var_0 = arg_0.d;
    var var_1 = func_4(!func_2(), arg_0);
    var var_2 = !(!func_3(-(~arg_2.x), arg_0.c.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.d, -963f, -1690f))), arg_0.b).zz);
    global1 = array<i32, 14>();
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.b, 1000f)))))), arg_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-191f))) - _wgslsmith_f_op_f32(-arg_0.b)));
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstTrailingBit(_wgslsmith_mult_i32(func_1(Struct_1(~vec3<u32>(1u, u_input.d, u_input.d), _wgslsmith_f_op_f32(-1662f * -182f), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 14u)], true, true, global3[_wgslsmith_index_u32(1u, 14u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 14u)], true, global3[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(global0.x, 14u)], global3[_wgslsmith_index_u32(11100u, 14u)], global3[_wgslsmith_index_u32(u_input.c.x, 14u)])), 963f), !global3[_wgslsmith_index_u32(1u, 14u)] && true, vec3<i32>(firstTrailingBit(-12629i), global1[_wgslsmith_index_u32(96u, 14u)] ^ global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, 67839u), 14u)])), global1[_wgslsmith_index_u32(1u, 14u)]));
    let var_0 = Struct_1(vec3<u32>(reverseBits(~(~global0.x)), ~_wgslsmith_sub_u32(abs(68410u), func_4(global3[_wgslsmith_index_u32(global0.x, 14u)], Struct_1(vec3<u32>(0u, 39734u, 0u), -1398f, vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.c.x, 14u)], false), 1329f)).x), u_input.e), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(577f, 2466f))), _wgslsmith_f_op_f32(499f * 208f)), -1509f), !func_3(min(global1[_wgslsmith_index_u32(0u, 14u)] | 9057i, countOneBits(1i)), select(func_3(global1[_wgslsmith_index_u32(global0.x, 14u)], vec2<bool>(global3[_wgslsmith_index_u32(global0.x, 14u)], global3[_wgslsmith_index_u32(global0.x, 14u)]), vec4<f32>(1000f, -720f, -818f, -1207f), 1000f).ww, vec2<bool>(true, true), !vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 14u)])), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(907f, 107f, 801f, 845f) - vec4<f32>(1155f, 412f, -753f, -963f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-505f + 2137f)))), _wgslsmith_f_op_f32(f32(-1f) * -785f));
    let var_1 = var_0;
    let var_2 = select(var_1.c.zz, !(!(!vec2<bool>(global3[_wgslsmith_index_u32(66790u, 14u)], true))), !(select(global3[_wgslsmith_index_u32(1660u, 14u)] && false, any(vec4<bool>(true, var_0.c.x, var_0.c.x, var_1.c.x)), true) || !var_0.c.x));
    let var_3 = _wgslsmith_f_op_f32(select(var_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(-var_1.b)), select(!global3[_wgslsmith_index_u32(~4294967295u, 14u)], !(_wgslsmith_f_op_f32(max(var_1.d, var_1.d)) <= -138f), _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(-var_1.d)) >= 1225f)));
    global3 = array<bool, 14>();
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_3) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, -160f), vec2<f32>(-302f, 1219f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(750f, 1023f) + vec2<f32>(1695f, -535f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_1.d)), true)), !vec2<bool>(all(var_2), any(var_1.c.zzz))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, global1[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1407f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f + var_3)))), ~vec4<u32>(u_input.a.x, ~u_input.b << (~var_1.a.x % 32u), firstLeadingBit(_wgslsmith_mult_u32(u_input.e, 0u)), _wgslsmith_div_u32(firstTrailingBit(var_0.a.x), ~u_input.d)), var_1.a.x);
}

