struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(7958i, 1i, 15924i);

var<private> global1: array<i32, 27>;

var<private> global2: array<Struct_1, 21>;

var<private> global3: vec4<i32> = vec4<i32>(-38550i, 2147483647i, 0i, 46098i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = ~(~_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.b, 3365u), vec2<u32>(644u, u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_0.c), reverseBits(vec2<u32>(arg_0.c, u_input.b)))));
    var_0 = select(vec2<u32>(~1u, 17327u), abs(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_0.x, 4294967295u) | vec2<u32>(var_0.x, 0u)), vec2<u32>(u_input.b, arg_0.c) & ~vec2<u32>(0u, 1036u), max(vec2<u32>(95995u, var_0.x), vec2<u32>(u_input.b, 4294967295u)))), any(select(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), vec3<bool>(true, true, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(arg_0.e.x * -501f) < arg_0.e.x)));
    var var_1 = false;
    var var_2 = vec2<bool>(false, any(vec3<bool>(true, true, true)) && any(vec4<bool>(true, true, true, true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-609f, -1553f, var_2.x)), _wgslsmith_f_op_f32(-1538f - arg_0.b), 716f));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(2253f, _wgslsmith_f_op_f32(round(-738f))));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(109499u, ~arg_2.c), 27u)] & global0.x, _wgslsmith_f_op_f32(arg_1.x + arg_2.b), 88974u, _wgslsmith_add_i32(_wgslsmith_sub_i32(22153i, 0i), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(arg_2.c, 21u)])))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1284f, -409f)) - _wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(40708u, 21u)])))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(step(var_0.b, arg_0)), _wgslsmith_f_op_f32(step(arg_1.x, -3616f)), _wgslsmith_f_op_f32(min(-414f, arg_2.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, -2264f, 937f, var_0.b))) - vec4<f32>(arg_1.x, -845f, arg_1.x, arg_0)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1108f * arg_2.e.x), _wgslsmith_f_op_f32(722f + arg_0), -232f, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(0i, -535f, 652u, 68303i, arg_1.xx))).x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1183f, -1000f, 1000f, arg_0), vec4<f32>(852f, var_0.e.x, arg_0, arg_1.x)))), true)));
    var_0 = Struct_1(19560i, _wgslsmith_f_op_f32(-arg_2.e.x), 1u, abs(15939i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.zy)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(u_input.c.x, arg_1.x, 41766u, var_0.a, arg_2.e))), vec2<f32>(_wgslsmith_f_op_f32(max(1000f, -280f)), var_1.x))), any(vec2<bool>(true, all(vec2<bool>(false, false)))))));
    var var_2 = arg_2;
    global3 = u_input.c;
    return Struct_1(_wgslsmith_sub_i32(global0.x, firstTrailingBit(arg_2.d ^ 1i)), -204f, firstTrailingBit(~var_2.c), arg_2.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_div_f32(var_0.b, -541f))))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    global3 = ~vec4<i32>(min(_wgslsmith_div_i32(_wgslsmith_mod_i32(52841i, -66136i), -40612i), -28930i), _wgslsmith_mult_i32(~(~2147483647i), arg_1.a), -40405i, _wgslsmith_div_i32(-17726i, 1i << (1u % 32u)));
    let var_0 = _wgslsmith_f_op_f32(-arg_1.e.x);
    global1 = array<i32, 27>();
    var var_1 = func_2(-122f, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(230f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(367f - arg_1.b)), arg_1.b))), global2[_wgslsmith_index_u32(arg_1.c, 21u)]);
    var var_2 = Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-783f, _wgslsmith_f_op_f32(ceil(-1030f))))), max(arg_1.c, var_1.c), -global1[_wgslsmith_index_u32(arg_1.c ^ ~_wgslsmith_add_u32(u_input.b, 17654u), 27u)], vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(220f)) + arg_1.b))));
    return vec2<i32>(-2147483647i, arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_1(reverseBits(min(u_input.c.x, -1i)) & -2147483647i, global2[_wgslsmith_index_u32(u_input.b, 21u)]));
    global0 = vec3<i32>(_wgslsmith_sub_i32(-22050i, global0.x), _wgslsmith_sub_i32(global3.x, -_wgslsmith_dot_vec2_i32(global3.zy, global0.yy)), var_0.x | -10824i) & vec3<i32>(var_0.x, -8118i, global3.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2433f, -296f, _wgslsmith_f_op_f32(floor(-263f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(862f, 982f, 911f) - vec3<f32>(125f, -930f, 1257f)), vec3<f32>(-826f, -568f, 1668f))))));
    var var_2 = min(~vec3<u32>(u_input.b, ~36743u, ~_wgslsmith_div_u32(u_input.b, u_input.b)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(17535u, u_input.b, 10599u) ^ countOneBits(vec3<u32>(u_input.b, 53418u, u_input.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), select(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(1u, 0u, 23788u), false))));
    global3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, 9322u), min(firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0.x, global1[_wgslsmith_index_u32(0u, 27u)], u_input.c.x), u_input.c))), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], max(1i, reverseBits(17647i)), global0.x, var_0.x)), func_2(_wgslsmith_f_op_f32(abs(463f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(950f)), func_2(func_2(-391f, var_1, Struct_1(u_input.a, var_1.x, 79886u, 11520i, vec2<f32>(1385f, -951f))).b, var_1, Struct_1(global3.x, var_1.x, u_input.b, -1i, vec2<f32>(-1586f, var_1.x))).e.x, 2075f), func_2(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(abs(-1089f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 16709u), 21u)])).c, var_2.x);
}

