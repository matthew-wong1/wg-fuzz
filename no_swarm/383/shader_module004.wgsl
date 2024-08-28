struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec2<i32>, 28>;

var<private> global2: u32 = 24530u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_2(global0.c.a, Struct_1(select(countOneBits(vec4<u32>(1u, 87390u, global0.c.a.a.x, u_input.a.x)), countOneBits(_wgslsmith_clamp_vec4_u32(global0.c.b.a, global0.c.a.a, vec4<u32>(0u, u_input.a.x, 0u, arg_1))), vec4<bool>(true, global0.d.b, false, any(arg_0.xx))), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, 34387i, arg_3.x), vec4<i32>(0i, global0.d.a.x, 652i, global0.d.a.x))) >> (firstTrailingBit(vec4<u32>(global0.e, 4294967295u, arg_1, 23651u)) % vec4<u32>(32u))), max(abs(global0.d.a >> (max(vec4<u32>(676u, u_input.e.x, global0.a, 4294967295u), u_input.a) % vec4<u32>(32u))), -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(global0.c.a.b, vec4<i32>(-2147483647i, -1i, u_input.d, -1i)), _wgslsmith_add_vec4_i32(global0.d.a, vec4<i32>(-11961i, -18375i, global0.d.a.x, arg_3.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2352f, -349f, 1153f) * vec3<f32>(-1000f, -220f, 665f)), vec3<f32>(1132f, -674f, -910f), vec3<bool>(true, arg_2, arg_2)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, 945f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1071f, 1007f, 539f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(680f, -1345f, 373f), vec3<f32>(-122f, -2266f, 175f), arg_2)) - vec3<f32>(-1297f, 1119f, 148f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, _wgslsmith_f_op_f32(trunc(1105f)), 214f))), !(!(!select(arg_0, arg_0, false)))));
    global0 = Struct_5(u_input.b.x << (~reverseBits(var_0.a.a.x << (4294967295u % 32u)) % 32u), true, Struct_2(var_0.b, Struct_1(vec4<u32>(_wgslsmith_mult_u32(1u, global0.c.a.a.x), ~var_0.b.a.x, _wgslsmith_mod_u32(arg_1, 44951u), ~0u), vec4<i32>(1i, global0.c.c.x, ~(-8385i), abs(var_0.b.b.x))), select(global0.d.a, _wgslsmith_sub_vec4_i32(~var_0.b.b, ~var_0.b.b), true)), Struct_3(-_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.c.x, arg_3.x, 0i), global0.c.a.b), abs(vec4<i32>(u_input.d, 5837i, 2147483647i, global0.d.a.x))), true & arg_2), select(48347u, 0u, select(!all(vec3<bool>(arg_2, arg_2, global0.b)), true, global0.d.a.x >= abs(-10259i))));
    var var_2 = select(vec2<i32>(arg_3.x, u_input.c) | -(abs(var_0.c.wy) >> ((vec2<u32>(78770u, 39220u) ^ vec2<u32>(arg_1, 0u)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(40818i, 7135i)), firstLeadingBit(vec2<i32>(-29247i, arg_3.x))) << (var_0.a.a.yy % vec2<u32>(32u)), select(select(arg_0.zz, vec2<bool>(true, true), !select(arg_0.yz, arg_0.xz, vec2<bool>(true, true))), vec2<bool>(4294967295u != ~var_0.a.a.x, true), arg_0.yx));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.c.b.a.x, var_0.a.a.x), 28u)];
    return var_1.x;
}

fn func_2() -> bool {
    let var_0 = Struct_4(vec4<f32>(736f, 796f, _wgslsmith_f_op_f32(floor(-2116f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(global0.d.b, global0.d.b, global0.b), 52538u, global0.d.b, global0.d.a.xw)), -910f))), u_input.a.x, select(!select(select(vec4<bool>(global0.b, true, false, global0.b), vec4<bool>(false, global0.d.b, true, global0.b), false), !vec4<bool>(global0.d.b, false, true, global0.d.b), select(vec4<bool>(global0.d.b, global0.d.b, true, true), vec4<bool>(global0.d.b, global0.d.b, false, global0.b), false)), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(global0.b, global0.b, false, false)), select(vec4<bool>(true, true, global0.d.b, true), vec4<bool>(true, global0.d.b, true, global0.b), false), true), global0.d.b), select(select(select(select(vec4<bool>(true, global0.b, global0.b, true), vec4<bool>(global0.b, false, true, false), vec4<bool>(global0.b, global0.d.b, global0.d.b, false)), !vec4<bool>(global0.d.b, global0.b, true, global0.b), global0.d.b && global0.b), !select(vec4<bool>(true, false, global0.d.b, global0.d.b), vec4<bool>(global0.b, true, global0.d.b, false), false), select(select(vec4<bool>(true, true, false, false), vec4<bool>(global0.d.b, global0.d.b, false, global0.b), true), !vec4<bool>(global0.b, global0.d.b, global0.b, true), select(vec4<bool>(global0.d.b, true, true, global0.b), vec4<bool>(true, global0.d.b, global0.b, global0.b), global0.b))), vec4<bool>(global0.b, global0.d.b, true, global0.d.b), global0.d.b), abs(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 41978i, u_input.c, global0.d.a.x), _wgslsmith_div_vec4_i32(global0.c.c, global0.c.a.b), _wgslsmith_mult_vec4_i32(vec4<i32>(-15501i, -1i, 0i, -44620i), vec4<i32>(global0.c.a.b.x, u_input.c, global0.c.a.b.x, u_input.c))))));
    global2 = var_0.b;
    var var_1 = global0.c.a.a.zzz;
    var_1 = vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.a.x, ~0u), 4294967295u), 4294967295u, select(0u, 8004u, var_0.c.x != true) >> (~(24231u << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.c.b.a.x), vec2<u32>(1u, 32611u)) % 32u)) % 32u));
    var var_2 = select(vec4<bool>(select(true, true, global0.b), (true && !global0.d.b) & global0.b, var_0.c.x, !(global0.d.b && (u_input.c >= 30873i))), var_0.d, select(any(select(vec3<bool>(false, global0.b, var_0.d.x), select(var_0.d.xwx, var_0.d.xxy, global0.b), !var_0.d.zwz)), global0.b, all(select(vec4<bool>(false, global0.b, var_0.d.x, false), vec4<bool>(false, var_0.d.x, var_0.c.x, var_0.c.x), true))));
    return !var_2.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<u32>) -> bool {
    global1 = array<vec2<i32>, 28>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1903f, -1443f, 1494f), _wgslsmith_f_op_vec3_f32(vec3<f32>(150f, -1403f, -353f) - vec3<f32>(371f, 795f, 1619f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(325f, 182f, -675f), vec3<f32>(602f, -289f, -1000f), arg_0.ywx)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(429f, 323f, 654f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-710f, -1833f, -1367f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1748f, -1081f, 122f)), select(vec3<bool>(true, true, true), arg_0.xwy, vec3<bool>(true, arg_1, true)))), !select(vec3<bool>(arg_1, true, arg_0.x), arg_0.ywx, true))), !all(select(vec2<bool>(false, false), arg_0.yz, vec2<bool>(true, arg_1))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-953f, 855f, _wgslsmith_f_op_f32(613f + -257f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1410f, -1485f, -459f) * vec3<f32>(1216f, -225f, -1013f))))), vec3<f32>(2873f, _wgslsmith_div_f32(-952f, _wgslsmith_f_op_f32(f32(-1f) * -1026f)), _wgslsmith_f_op_f32(trunc(317f)))));
    let var_1 = arg_0;
    global1 = array<vec2<i32>, 28>();
    let var_2 = !arg_0;
    return all(vec3<bool>(!(~u_input.c < -global0.c.c.x), !all(var_2.wz), func_2() & true));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5) -> Struct_5 {
    var var_0 = select(!select(select(!vec3<bool>(global0.d.b, false, arg_1.b), vec3<bool>(arg_1.b, global0.b, false), select(vec3<bool>(global0.b, global0.b, arg_1.d.b), vec3<bool>(global0.b, false, arg_1.b), true)), !vec3<bool>(arg_1.b, arg_1.b, false), !all(vec3<bool>(true, global0.d.b, false))), !vec3<bool>(!(!arg_1.b), arg_1.d.b, true), vec3<bool>(true, all(select(select(vec2<bool>(true, false), vec2<bool>(arg_1.d.b, true), vec2<bool>(false, global0.d.b)), vec2<bool>(global0.b, arg_1.b), arg_0.x == -262f)), true));
    global0 = arg_1;
    var var_1 = abs(_wgslsmith_div_u32(abs(~4294967295u), 1u));
    var_1 = 37307u;
    let var_2 = any(!select(select(select(vec3<bool>(false, false, global0.b), vec3<bool>(var_0.x, var_0.x, global0.b), vec3<bool>(var_0.x, global0.b, false)), !vec3<bool>(global0.b, var_0.x, global0.d.b), func_2()), !select(vec3<bool>(var_0.x, true, false), vec3<bool>(arg_1.b, false, global0.d.b), vec3<bool>(true, var_0.x, false)), !all(var_0.zy)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(662f, 2627f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(853f, 2164f) * vec2<f32>(-562f, -1450f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1708f, 1877f))))) - vec2<f32>(1f, 1f)), Struct_5(4294967295u, func_1(!vec4<bool>(global0.b, true, false, global0.b), select(true, true || global0.b, u_input.e.x >= 1u), vec2<u32>(~61u, ~u_input.b.x)), global0.c, Struct_3(_wgslsmith_mult_vec4_i32(-vec4<i32>(7579i, u_input.c, global0.d.a.x, u_input.c), global0.d.a), global0.d.b), ~global0.a));
    var var_1 = global0.d.b;
    global1 = array<vec2<i32>, 28>();
    let var_2 = global0.c;
    var var_3 = Struct_5(~(~(~var_0.e)), false, Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1250f, -559f)))), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-366f, 673f) + vec2<f32>(-1000f, 998f)), var_0)).c.b, func_4(vec2<f32>(1f, 1f), Struct_5(var_0.a, any(vec3<bool>(true, var_0.b, true)), Struct_2(Struct_1(u_input.a, vec4<i32>(global0.d.a.x, var_2.c.x, 0i, var_2.c.x)), var_0.c.a, vec4<i32>(2147483647i, 1i, 1i, var_0.c.a.b.x)), var_0.d, 4294967295u)).c.a, min(-_wgslsmith_mod_vec4_i32(var_2.c, vec4<i32>(var_0.c.c.x, var_2.b.b.x, global0.d.a.x, u_input.d)), ~var_0.c.b.b)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-449f, -1180f) + vec2<f32>(2520f, 537f))))), func_4(vec2<f32>(1f, -895f), var_0)).d, 0u);
    let var_4 = !all(vec4<bool>(~19138u > ~u_input.a.x, true, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(575f, 1997f, 1000f, 436f) * vec4<f32>(-1226f, -598f, 1000f, -296f)), _wgslsmith_div_vec4_f32(vec4<f32>(-872f, 785f, -722f, -935f), vec4<f32>(145f, -1000f, -2429f, -366f)), var_4)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1128f, -384f, 2020f, 362f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -2466f, -490f, -895f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-112f, -1374f, -1519f, -992f), vec4<f32>(-1388f, 2278f, 175f, 3089f), var_4)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1615f, _wgslsmith_f_op_f32(f32(-1f) * -1620f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1175f), _wgslsmith_div_f32(486f, 1314f))))), ~_wgslsmith_sub_u32(1u, var_0.e), select(~1u, _wgslsmith_clamp_u32(~u_input.e.x, var_2.a.a.x, _wgslsmith_sub_u32(var_2.b.a.x, abs(var_2.b.a.x))), var_4), global0.c.b.b.xww);
}

