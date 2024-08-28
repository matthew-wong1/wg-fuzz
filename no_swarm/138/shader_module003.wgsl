struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: f32 = -399f;

var<private> global2: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> Struct_3 {
    let var_0 = arg_1;
    global2 = max(4294967295u, 1u);
    let var_1 = arg_0.x;
    let var_2 = Struct_3(vec2<i32>(-1i) * -vec2<i32>(reverseBits(0i), min(10316i, 33168i)), abs(vec2<u32>(abs(51476u), u_input.b)));
    let var_3 = firstTrailingBit(~(u_input.a.x & 52554u));
    return Struct_3(-var_2.a, u_input.a);
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-175f * _wgslsmith_div_f32(1000f, -1358f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2382f, 742f)), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-813f)), -1100f), -1277f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1243f + 1792f)))), u_input.b, !vec4<bool>(arg_0, !arg_0, all(vec4<bool>(false, false, true, false)), any(vec4<bool>(global0[_wgslsmith_index_u32(27800u, 13u)], true, false, true))), _wgslsmith_clamp_u32(~u_input.a.x, ~32523u, ~u_input.a.x) < 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-672f))), vec3<f32>(-877f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -822f) - -724f))), -1000f), 960f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -760f), 1781f)));
    var var_1 = var_0.a.e;
    global0 = array<bool, 13>();
    var var_2 = min(-8826i, ~(-2184i));
    var_1 = var_0.a.d.x || false;
    return _wgslsmith_f_op_f32(-571f * var_0.d);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(1404f - _wgslsmith_div_f32(321f, 251f))), -2276f, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~(~4294967295u), 13u)])), _wgslsmith_f_op_f32(-1534f * 1723f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 13u)] & true)), 683f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2722f * 438f), -537f)))))), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.b, 1u, u_input.b)), 0u, u_input.b), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 1u, u_input.b, 1u), vec4<u32>(u_input.a.x, u_input.b, 1u, 4294967295u))), vec4<bool>(true, !global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1722f, -751f, 1161f, 1481f) * vec4<f32>(372f, -678f, -1339f, 1469f)), -1479f).b.x, 13u)], any(!vec3<bool>(global0[_wgslsmith_index_u32(32838u, 13u)], global0[_wgslsmith_index_u32(28107u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])) & false, false), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, ~(~u_input.b ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.b, 22113u, 12878u, 1u)))), 13u)]);
    global1 = _wgslsmith_f_op_f32(-1022f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -975f)));
    let var_1 = countOneBits(u_input.a);
    var var_2 = var_0.d.zy;
    global0 = array<bool, 13>();
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~_wgslsmith_sub_u32(0u, u_input.b);
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2518f, 431f, -619f, -300f))), vec4<f32>(_wgslsmith_f_op_f32(round(-1518f)), _wgslsmith_f_op_f32(f32(-1f) * -1220f), _wgslsmith_f_op_f32(-1290f + 233f), _wgslsmith_f_op_f32(select(308f, 441f, true)))))), -1074f);
    var var_1 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(var_0.a.x, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-886f, -1414f, 600f, -212f)), _wgslsmith_f_op_f32(trunc(-1050f))).a.x, var_0.a.x << ((var_0.b.x ^ var_0.b.x) % 32u)), -vec3<i32>(-var_0.a.x, var_0.a.x, var_0.a.x ^ 2147483647i), vec3<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], true)), min(vec3<i32>(-1i, ~(var_0.a.x >> (var_0.b.x % 32u)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.a.x, var_0.a.x), _wgslsmith_add_i32(-33021i, -217i))), vec3<i32>(var_0.a.x, ~(~var_0.a.x), var_0.a.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-889f, 736f), _wgslsmith_f_op_f32(-1059f * -464f), _wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-776f, 408f, -818f, -1305f)) + vec4<f32>(-766f, -114f, -819f, -191f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, 933f)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, u_input.b, 1u) >> (vec3<u32>(8438u, 0u, 10609u) % vec3<u32>(32u)), vec3<u32>(var_0.b.x, 38664u, var_0.b.x)) | u_input.a.x, !vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.b.x, 13u)], !(!global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), global0[_wgslsmith_index_u32(min(0u, firstTrailingBit(0u)), 13u)]), _wgslsmith_f_op_f32(func_3(false)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-426f, _wgslsmith_f_op_f32(f32(-1f) * -770f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1464f - -486f)))));
    global2 = ~countOneBits(22823u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.x, 1225f, ~(~vec3<u32>(_wgslsmith_clamp_u32(15633u, u_input.a.x, u_input.b), min(1u, u_input.a.x), ~u_input.b)), abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0.b.x, 14768u), vec3<u32>(var_2.c, 24436u, 0u))) & ((_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, 0u, 4294967295u), vec3<u32>(0u, 26878u, 0u)) << (~vec3<u32>(4294967295u, var_0.b.x, var_0.b.x) % vec3<u32>(32u))) << (~(~vec3<u32>(4294967295u, 14656u, 43212u)) % vec3<u32>(32u))), vec3<u32>(select(20376u, ~12373u, var_2.d.x), 0u, _wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(var_0.b.x, 6066u))) << (vec3<u32>(4294967295u, ~countOneBits(u_input.a.x), 4294967295u) % vec3<u32>(32u)));
}

