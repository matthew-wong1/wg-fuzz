struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: f32;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, false, true)));

var<private> global3: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(1i, i32(-2147483648), 46117i, 0i), vec4<i32>(-3499i, 2051i, 1i, -270i), vec4<i32>(-19412i, i32(-2147483648), 1i, -11054i), vec4<i32>(13777i, 0i, 5405i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, -9000i, 0i), vec4<i32>(-7544i, 2147483647i, 18310i, i32(-2147483648)), vec4<i32>(12468i, -9117i, 29323i, 2147483647i), vec4<i32>(i32(-2147483648), -42261i, i32(-2147483648), -4626i), vec4<i32>(-50333i, i32(-2147483648), -1503i, 1i), vec4<i32>(i32(-2147483648), -1i, -1i, 1i), vec4<i32>(-18088i, -14663i, 0i, 1026i), vec4<i32>(1i, -31083i, -1i, -1i), vec4<i32>(1i, i32(-2147483648), -1i, 1i), vec4<i32>(1i, -1i, -44078i, -70296i), vec4<i32>(i32(-2147483648), 2147483647i, -19439i, -1i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -29934i), vec4<i32>(27510i, 0i, 26360i, -18642i), vec4<i32>(3893i, -1i, -36170i, 46990i), vec4<i32>(-1i, 81407i, -11198i, 2147483647i), vec4<i32>(0i, i32(-2147483648), -5709i, 39562i), vec4<i32>(0i, -1i, -56672i, i32(-2147483648)), vec4<i32>(-10424i, -45002i, -35052i, i32(-2147483648)), vec4<i32>(-1i, -19226i, -3681i, 2147483647i), vec4<i32>(i32(-2147483648), 6683i, -10310i, -1i), vec4<i32>(41327i, i32(-2147483648), -1i, -39304i), vec4<i32>(-32659i, 15670i, -38450i, 2147483647i), vec4<i32>(-31731i, -1i, 48405i, 2163i), vec4<i32>(-1i, -23170i, -25376i, i32(-2147483648)), vec4<i32>(1i, 1i, -1i, -2509i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 0i));

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> bool {
    global2 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(max(arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-157f, 281f, arg_0.x), arg_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-348f, 508f, 1039f) * vec3<f32>(-1344f, arg_0.x, arg_0.x))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(max(arg_0.x, 1569f)), _wgslsmith_f_op_f32(step(-1000f, 231f))))))));
    let var_1 = ~countOneBits(vec2<u32>(1u, 1u) << (~firstTrailingBit(vec2<u32>(1u, 25381u)) % vec2<u32>(32u)));
    let var_2 = Struct_1(global4.a, !(!global4.b));
    global0 = arg_1;
    return true;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> bool {
    let var_0 = select(arg_1, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2047f, -2080f) + vec3<f32>(1f, 1f, 1f)), u_input.b), true) || false;
    let var_1 = Struct_1(arg_0.xyw, !global4.b);
    return true;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    global2 = array<Struct_1, 20>();
    let var_0 = i32(-1i) * -min(~(-1i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(60084u, 38558u), vec2<u32>(1u, 1u)) % 32u), -(~u_input.b));
    var var_1 = global2[_wgslsmith_index_u32(1u, 20u)];
    var var_2 = vec3<bool>(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1310f, arg_1)), arg_2.x, arg_1)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-34092i, _wgslsmith_dot_vec2_i32(u_input.a.xw, u_input.a.wx)), _wgslsmith_div_i32(u_input.b, var_0) | -2147483647i)), var_1.a.x & select(true, _wgslsmith_f_op_f32(-593f + arg_2.x) > _wgslsmith_div_f32(arg_2.x, arg_1), all(vec4<bool>(var_1.b.x, arg_3, global4.b.x, arg_3))), any(!(!select(vec3<bool>(true, arg_3, true), vec3<bool>(arg_0, global4.b.x, true), global4.b.x))));
    global2 = array<Struct_1, 20>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = vec3<bool>(true, false, true || arg_2.a.x);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_div_u32(25821u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 1u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(58372u, 52012u), select(vec2<u32>(4294967295u, 89473u), vec2<u32>(8272u, 26901u), vec2<bool>(false, arg_2.a.x))))) ^ _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, min(1u, 45718u)), _wgslsmith_mult_u32(40743u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, 63617u), vec2<u32>(32700u, 8482u)), vec2<u32>(6442u, 1u))));
    var var_3 = Struct_1(vec3<bool>(var_1.a.x, !var_1.a.x, true), select(var_1.a, vec3<bool>(true, all(vec4<bool>(true, false, false, false)) != var_1.b.x, !(var_2 < 28485u)), !arg_0.a.x));
    var_3 = Struct_1(select(vec3<bool>(any(!var_1.a.xy), true, var_1.b.x), vec3<bool>(any(vec3<bool>(global4.b.x, false, false)), any(select(vec4<bool>(arg_0.a.x, true, var_0.x, global4.a.x), vec4<bool>(false, arg_2.a.x, global4.a.x, arg_2.b.x), vec4<bool>(true, global4.b.x, false, arg_0.a.x))), var_0.x), ~87000u <= var_2), !arg_2.b);
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -775f), _wgslsmith_f_op_f32(func_4(true, _wgslsmith_div_f32(_wgslsmith_div_f32(-1198f, -348f), _wgslsmith_f_op_f32(trunc(909f))), vec4<f32>(-1000f, 723f, 190f, _wgslsmith_f_op_f32(step(-142f, -537f))), func_2(!vec4<bool>(var_1.b.x, false, var_1.a.x, var_3.b.x), true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(326f, -2033f) + _wgslsmith_div_vec2_f32(vec2<f32>(374f, 1325f), vec2<f32>(-473f, 1659f))) - vec2<f32>(1f, 1f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-424f, -517f), -445f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~1u, 0u, 48789u | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18942u), vec2<u32>(0u, 29013u))), 20u)], u_input.a.x ^ 2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(44571u, ~55065u), 20u)]));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(404f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + -273f))) + 695f);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~1u), max(~(17039u >> (1u % 32u)), min(select(~6429u, 4294967295u, u_input.b == 43484i), 1u))), 20u)];
    let var_3 = ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~4294967295u), ~(vec2<u32>(28268u, 1u) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(1744f, var_3, vec4<i32>(-31612i, _wgslsmith_mult_i32(2147483647i, u_input.b), -8572i, 1i) ^ vec4<i32>(i32(-1i) * -u_input.b, _wgslsmith_mult_i32(-33095i, ~21474i), u_input.b, u_input.a.x ^ u_input.b), ~(~vec3<u32>(var_3 & var_3, _wgslsmith_dot_vec2_u32(vec2<u32>(30978u, var_3), vec2<u32>(var_3, 0u)), 4294967295u)));
}

