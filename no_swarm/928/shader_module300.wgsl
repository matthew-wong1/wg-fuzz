struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: array<bool, 14>;

var<private> global2: bool;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = arg_0;
    var var_1 = vec2<i32>(u_input.c, ~_wgslsmith_div_i32(1i, 22077i)) >> (firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(u_input.a, ~u_input.a), ~(u_input.a << (u_input.a % 32u)))) % vec2<u32>(32u));
    global2 = !(global0.x && true);
    let var_2 = vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 14u)] & ((firstLeadingBit(1i) != ~u_input.b.x) & false), any(vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 14u)], true)));
    let var_3 = min(_wgslsmith_dot_vec2_u32(select(~firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), ~(~vec2<u32>(141521u, u_input.a)), select(var_2.zy, select(vec2<bool>(global0.x, var_2.x), vec2<bool>(false, global1[_wgslsmith_index_u32(69926u, 14u)]), vec2<bool>(global0.x, false)), all(var_2.xx))), vec2<u32>(u_input.a, ~1u)), ~(~u_input.a));
    return 4294967295u & _wgslsmith_dot_vec3_u32(~select(vec3<u32>(var_3, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 0u, u_input.a), vec3<bool>(var_2.x, true, global0.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(var_3, 10731u, var_3), countOneBits(~vec3<u32>(var_3, 20708u, 1u))));
}

fn func_4(arg_0: vec4<u32>) -> u32 {
    return 1u;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(func_4(vec4<u32>(u_input.a, u_input.a, ~func_3(_wgslsmith_div_vec3_f32(vec3<f32>(3289f, -209f, 570f), vec3<f32>(-474f, -349f, 948f))), ~1u)), 14u)];
    var var_1 = Struct_1(global0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(589f, -314f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1443f, -1073f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(499f, 360f) - vec2<f32>(1222f, -1000f))), vec2<f32>(-1509f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1217f)) - -357f))), max(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 4294967295u, 43254u)) >> ((34745u & u_input.a) % 32u)), ~(func_4(vec4<u32>(u_input.a, u_input.a, 11835u, 1u)) | ~16774u)));
    let var_2 = Struct_4(func_4(vec4<u32>(u_input.a, ~u_input.a >> (var_1.c % 32u), firstLeadingBit(~u_input.a), _wgslsmith_clamp_u32(0u, reverseBits(13470u), ~u_input.a))));
    let var_3 = ~_wgslsmith_div_i32(arg_1.a.x >> ((u_input.a & var_1.c) % 32u), -u_input.c);
    var_1 = Struct_1(global0.x, _wgslsmith_f_op_vec2_f32(step(var_1.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, -1121f))), _wgslsmith_f_op_vec2_f32(exp2(var_1.b)), !select(global0.zy, global0.xy, var_1.a))))), 53357u >> (~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 21130u), _wgslsmith_sub_u32(var_2.a, u_input.a)) % 32u));
    return -984f;
}

fn func_1() -> u32 {
    global0 = !vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(u_input.a, u_input.a, global0.x), 1u) << (u_input.a % 32u), 14u)], (1u ^ (1u | u_input.a)) != (u_input.a | (0u ^ u_input.a)), false);
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), u_input.b.xy), Struct_2(u_input.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1104f)))))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2525f + 1860f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(761f))))));
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1114f, 1141f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(235f, -1678f), vec2<f32>(-1383f, 697f), false)))), global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-458f, _wgslsmith_f_op_f32(sign(295f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2104f), -731f)), select(select(global0.wy, global0.yz, !vec2<bool>(false, global1[_wgslsmith_index_u32(5417u, 14u)])), vec2<bool>(global1[_wgslsmith_index_u32(28527u, 14u)], false), !vec2<bool>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 14u)])))), _wgslsmith_dot_vec3_u32(abs(select(abs(vec3<u32>(u_input.a, 32546u, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 7977u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), global0.zzy)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 6976u), vec3<u32>(u_input.a, 1u, 48867u) | vec3<u32>(u_input.a, u_input.a, 1u))));
    let var_1 = Struct_4(u_input.a | 0u);
    global1 = array<bool, 14>();
    return _wgslsmith_add_u32(~(_wgslsmith_div_u32(19489u, firstTrailingBit(var_0.c)) << (var_0.c % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 44052u, 1u, var_1.a), vec4<u32>(var_0.c, var_1.a, 491u, 5471u)), ~(~vec4<u32>(1u, var_1.a, var_0.c, 40571u))), func_4(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 19820u, var_0.c, 26777u), ~vec4<u32>(77539u, u_input.a, 12381u, 54678u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1());
    var var_1 = 17547i;
    var var_2 = vec2<i32>(u_input.c, u_input.b.x);
    var var_3 = true | !select(true, global0.x && !global0.x, true);
    var var_4 = select(!vec4<bool>((-40755i & var_2.x) >= (u_input.c << (0u % 32u)), !all(vec4<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(6216u, 14u)], true)), global0.x, global1[_wgslsmith_index_u32(u_input.a, 14u)]), select(!select(select(vec4<bool>(global0.x, true, global1[_wgslsmith_index_u32(u_input.a, 14u)], global0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 14u)], true, false), vec4<bool>(true, global0.x, false, true)), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 14u)], global0.x), any(vec4<bool>(global1[_wgslsmith_index_u32(44958u, 14u)], false, global1[_wgslsmith_index_u32(64920u, 14u)], true))), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global0.x, true, global1[_wgslsmith_index_u32(u_input.a, 14u)]), select(vec4<bool>(global0.x, true, true, global1[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<bool>(false, true, false, true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 14u)], true, true)), true), select(vec4<bool>(true, all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 14u)], false, true)), global0.x, false), select(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.a, 14u)], false, true, false), vec4<bool>(false, global0.x, true, true), !vec4<bool>(global0.x, false, global1[_wgslsmith_index_u32(var_0.a, 14u)], global0.x)), !select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], global0.x, global1[_wgslsmith_index_u32(4294967295u, 14u)], global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), true))), select(select(!(!vec4<bool>(global0.x, global1[_wgslsmith_index_u32(28500u, 14u)], global0.x, global0.x)), vec4<bool>(global0.x, any(global0.wz), true, global1[_wgslsmith_index_u32(var_0.a, 14u)] != false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_0.a, 14u)], global0.x)), vec4<bool>(true, true && global1[_wgslsmith_index_u32(~61742u, 14u)], !any(global0.yy), all(select(global0.yzy, vec3<bool>(false, false, true), global0.zyw))), vec4<bool>(any(vec4<bool>(false, true, false, true)) || true, true, global0.x | global0.x, false)));
    var var_5 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1576f - 1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-437f)), _wgslsmith_div_f32(-2072f, -1482f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2082f + 1007f) + _wgslsmith_f_op_f32(sign(-796f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-679f)), -780f, 1f)), (i32(-1i) * -18869i) >= _wgslsmith_dot_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(18751i, 38316i, var_2.x), u_input.b, vec3<i32>(-1i, 0i, -52222i)), vec3<i32>(-2147483647i, u_input.c, 1i), vec3<bool>(false, var_4.x, false)), ~u_input.b));
    var_3 = 1u < _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), firstLeadingBit(vec2<u32>(var_0.a, 4294967295u) ^ vec2<u32>(1u, 1u)));
    let var_6 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_i32(1i, 78965i, _wgslsmith_sub_i32(u_input.b.x, 13228i)) | ~(_wgslsmith_mult_i32(-2147483647i, u_input.c) & ~(-1i)), var_5.b.x, vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(var_2.x, -2147483647i, u_input.b.x)), u_input.b & u_input.b), min(~var_0.a << (var_0.a % 32u), 1u), _wgslsmith_div_f32(-1000f, var_6.x));
}

