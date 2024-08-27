struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_2, 27>;

var<private> global2: f32 = 1285f;

var<private> global3: vec4<u32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global3 = vec4<u32>(0u, ~_wgslsmith_div_u32(7901u, u_input.a.x), 6938u, firstTrailingBit(~1u));
    var var_0 = 59021u;
    global0 = vec4<bool>(!select(!(!global0.x), !(false & global0.x), true), any(!select(select(vec2<bool>(false, true), global0.ww, global0.x), select(global0.yw, global0.wx, vec2<bool>(global0.x, false)), true)), global0.x, all(!select(global0.zwz, vec3<bool>(global0.x, false, false), !global0.ywz)));
    var var_1 = u_input.c | _wgslsmith_sub_vec2_i32(-vec2<i32>(-u_input.c.x, u_input.b), -reverseBits(vec2<i32>(-36446i, -79164i) ^ vec2<i32>(13183i, u_input.b)));
    var var_2 = _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(global3.x), 4294967295u, abs(17259u), ~9256u), ~(~vec4<u32>(10694u, u_input.a.x, 18333u, 42081u))), ~(0u << (u_input.a.x % 32u))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1000f) - _wgslsmith_f_op_f32(-471f + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1253f, -111f), -804f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2102f), _wgslsmith_f_op_f32(min(699f, -1350f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(114f)) - _wgslsmith_f_op_f32(max(-911f, 758f)))) + _wgslsmith_div_f32(548f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1806f))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - -644f))));
    global2 = _wgslsmith_f_op_f32(arg_2.x * -344f);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1340f * _wgslsmith_f_op_f32(-1276f - -420f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1718f)))));
    global3 = reverseBits(vec4<u32>(min(global3.x ^ _wgslsmith_div_u32(1u, u_input.d), firstLeadingBit(1u)), 66569u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global3.wyw, vec3<u32>(u_input.a.x, global3.x, global3.x)) & ~global3.x, global3.x), 1u));
    global3 = ~select(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, global3.x, global3.x, 1u), ~max(vec4<u32>(4294967295u, 74302u, 4294967295u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u))), ~min(~vec4<u32>(0u, 4294967295u, 4294967295u, 0u), abs(vec4<u32>(global3.x, u_input.a.x, 21959u, global3.x))), !select(select(vec4<bool>(global0.x, false, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, global0.x, false, true), false), vec4<bool>(false, true, global0.x, true)));
    return _wgslsmith_f_op_f32(122f * _wgslsmith_f_op_f32(func_3()));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    global0 = !vec4<bool>(!(!(!global0.x)), global0.x, any(select(!vec3<bool>(true, false, global0.x), global0.yzw, any(vec3<bool>(true, global0.x, arg_3.x)))), global0.x);
    let var_0 = !(!(!global0.zwz));
    let var_1 = reverseBits(abs(global3.x));
    let var_2 = false & any(vec3<bool>(any(!vec4<bool>(true, true, arg_3.x, var_0.x)), all(!vec4<bool>(true, true, global0.x, global0.x)), arg_3.x));
    global0 = !select(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_0.x, global0.x, arg_3.x, false)), !(!vec4<bool>(false, global0.x, true, var_2))), !vec4<bool>(true, global0.x, true, all(vec3<bool>(true, arg_3.x, global0.x))), vec4<bool>(any(select(arg_3.xy, vec2<bool>(false, var_2), false)), any(select(vec3<bool>(false, var_2, global0.x), vec3<bool>(var_2, arg_3.x, true), vec3<bool>(true, true, var_2))), true, all(vec3<bool>(var_0.x, true, true))));
    return 61951u;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = vec4<bool>(true, true, true, !(!global0.x));
    return func_4(_wgslsmith_div_vec4_f32(vec4<f32>(758f, 168f, 1182f, -293f), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1924f, -422f)))), 562f, -1563f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.c.x, 19151i, -2147483647i), 31198i, vec4<f32>(-549f, 1000f, 110f, 1293f), vec3<i32>(u_input.b, arg_0.x, -106802i))))))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(169f, _wgslsmith_f_op_f32(ceil(842f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-452f, 1178f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1579f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(arg_0.wxx, -1i, vec4<f32>(-525f, 1145f, -321f, 921f), arg_0.zwz)))))), select(select(vec3<bool>(true, global0.x, true), select(select(global0.wyw, vec3<bool>(global0.x, true, true), global0.yww), global0.wwy, true), !global0.wzz), global0.zwx, any(!(!vec3<bool>(global0.x, global0.x, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(global3.x, 15685u), ~u_input.d) | ~86514u, _wgslsmith_sub_u32(61473u, global3.x), u_input.d, func_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-27548i, u_input.c.x, 75977i, -1i), vec4<i32>(u_input.b, u_input.b, 0i, -1i)), vec4<i32>(2147483647i, 69849i, u_input.b, -26563i) & vec4<i32>(-1i, u_input.c.x, u_input.b, u_input.c.x))));
    var var_0 = Struct_1(vec2<f32>(-2195f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1181f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_f_op_f32(func_3()), true)))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -156f), 1626f)), var_0.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - 1334f));
    var var_2 = reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-u_input.c.x, ~(-2147483647i), max(~1i, ~u_input.c.x)), -vec3<i32>(_wgslsmith_sub_i32(-1i, -2147483647i), u_input.b, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), vec3<i32>(_wgslsmith_add_i32(u_input.c.x, countOneBits(u_input.b)), (u_input.b & u_input.b) & 0i, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.c), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 10438i), u_input.c)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(var_0.a - var_0.a), global0.xx)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, u_input.a);
}

