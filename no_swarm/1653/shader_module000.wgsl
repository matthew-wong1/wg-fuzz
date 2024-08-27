struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<vec2<i32>, 7>;

var<private> global3: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(-426f, _wgslsmith_div_f32(-336f, 692f))), -281f, _wgslsmith_f_op_f32(sign(-1240f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -1000f, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-670f, 494f, 1651f))) * vec3<f32>(1f, 1f, 1f)))))));
    var var_1 = Struct_1(vec2<u32>(global0.x, 0u), vec3<bool>(false, !any(vec4<bool>(true, false, false, true)) && true, true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(141f, 2181f, var_0.x, 331f), vec4<f32>(var_0.x, var_0.x, 1550f, var_0.x))) + vec4<f32>(1837f, 1677f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(815f, 122f, 548f, 1155f), vec4<f32>(-1000f, 922f, -597f, var_0.x)) + vec4<f32>(var_0.x, 460f, 2807f, var_0.x))))), -354f, abs(_wgslsmith_add_vec3_i32(-(~u_input.b.wzz), u_input.e)));
    var var_2 = global1[_wgslsmith_index_u32((1u << (_wgslsmith_clamp_u32(32939u, ~9155u, 37858u) % 32u)) << (select(_wgslsmith_div_u32(global0.x, 0u), global0.x, true) % 32u), 29u)];
    let var_3 = ~u_input.d.x;
    var_1 = Struct_1(abs(_wgslsmith_sub_vec2_u32(~var_2.a, vec2<u32>(_wgslsmith_mult_u32(61298u, 42960u), 1u))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(reverseBits(_wgslsmith_mod_u32(global0.x, 113508u)), var_2.a.x), ~countOneBits(var_2.a.x)), 20u)], var_2.c, _wgslsmith_f_op_f32(select(var_2.c.x, -705f, var_2.b.x)), reverseBits(_wgslsmith_clamp_vec3_i32(firstLeadingBit(abs(u_input.b.yyw)), -vec3<i32>(var_2.e.x, u_input.d.x, var_3), vec3<i32>(_wgslsmith_clamp_i32(u_input.d.x, -1i, 1i), -8064i, ~u_input.e.x))));
    return select(!(!(!select(vec4<bool>(var_1.b.x, var_2.b.x, var_1.b.x, false), vec4<bool>(true, true, var_1.b.x, true), true))), select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.b.x, false, var_1.b.x, false), vec4<bool>(false, var_1.b.x, true, var_1.b.x)), select(vec4<bool>(false, var_2.b.x, false, var_1.b.x), vec4<bool>(false, var_2.b.x, var_2.b.x, var_2.b.x), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, var_1.b.x, var_2.b.x), vec4<bool>(false, false, true, true), vec4<bool>(var_2.b.x, var_1.b.x, false, var_1.b.x)), false), vec4<bool>(true, var_1.b.x, var_1.b.x, var_2.b.x), select(true, true, var_1.b.x)), ~max(_wgslsmith_div_u32(u_input.a, 4294967295u), select(u_input.c.x, var_1.a.x, false)) < global0.x);
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_3(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1510f, -866f), vec2<f32>(-1157f, 250f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, -710f))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, -1902f)), 1000f, var_0.b.x);
    var var_2 = Struct_2(select(func_3(), vec4<bool>(true, true, var_0.a, true), var_0.a));
    var_2 = Struct_2(var_2.a);
    var var_3 = u_input.c.xyx;
    return select(u_input.c.xw, vec2<u32>(21265u, reverseBits(_wgslsmith_clamp_u32(4294967295u, max(18375u, 4294967295u), ~var_3.x))), var_0.a);
}

fn func_1() -> Struct_3 {
    global2 = array<vec2<i32>, 7>();
    global3 = array<vec3<bool>, 20>();
    global0 = min(u_input.c.wz, ~func_2()) | _wgslsmith_div_vec2_u32(firstLeadingBit(u_input.c.xy), vec2<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.a, 24492u, 0u, 0u))));
    var var_0 = _wgslsmith_mod_u32(2041u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(~u_input.c.yzz, ~vec3<u32>(global0.x, global0.x, u_input.c.x))) ^ ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 1u), global0.x));
    var var_1 = u_input.a;
    return Struct_3(!(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-449f)))) >= -1517f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-628f * -370f), 767f)))));
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    global3 = array<vec3<bool>, 20>();
    global3 = array<vec3<bool>, 20>();
    let var_0 = global1[_wgslsmith_index_u32(~(~8684u), 29u)];
    var var_1 = -firstLeadingBit(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.e.x, var_0.e.x, -2147483647i), u_input.b.xxw) & _wgslsmith_sub_vec3_i32(u_input.e, vec3<i32>(-20492i, 1i, var_0.e.x) ^ var_0.e));
    let var_2 = var_0.e.x;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 7>();
    global2 = array<vec2<i32>, 7>();
    var var_0 = u_input.e.x;
    let var_1 = Struct_1(vec2<u32>(~(~u_input.c.x ^ _wgslsmith_mod_u32(50100u, u_input.a)), ~(~global0.x)), select(select(vec3<bool>(true, all(vec4<bool>(true, false, false, true)), global0.x > 36229u), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, 1u), 20u)], !select(global3[_wgslsmith_index_u32(u_input.c.x, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], true)), !func_4(func_1()), select(all(vec2<bool>(true, true)), func_4(Struct_3(true, vec2<f32>(928f, 742f))).x | select(true, false, false), !func_4(Struct_3(false, vec2<f32>(-1547f, -515f))).x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(338f - 575f), _wgslsmith_f_op_f32(floor(1271f)), _wgslsmith_f_op_f32(f32(-1f) * -1504f), _wgslsmith_f_op_f32(sign(1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1569f, -1000f, -1823f, 1420f) + vec4<f32>(1062f, -1000f, -362f, -844f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1028f, 283f, 226f, -1845f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), vec3<i32>(1i, -2147483647i, 0i));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 19018u), 29u)];
    global3 = array<vec3<bool>, 20>();
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d, -117f, true)) + var_1.d))), vec2<u32>(_wgslsmith_mult_u32(51880u, global0.x), max(_wgslsmith_dot_vec4_u32(~u_input.c, abs(vec4<u32>(0u, 0u, var_1.a.x, global0.x))), 30168u)), ~var_1.e.x ^ -16733i, ~(_wgslsmith_clamp_vec3_u32(u_input.c.xwy | vec3<u32>(var_1.a.x, u_input.c.x, u_input.a), vec3<u32>(23159u, global0.x, var_2.a.x), ~vec3<u32>(0u, 4294967295u, 4164u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.x, 55388u, 4294967295u) | u_input.c.yww, _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a.x, u_input.a, 0u), vec3<u32>(global0.x, 1u, 4294967295u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_1().b.x, 1268f)))));
}

