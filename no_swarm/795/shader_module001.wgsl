struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12>;

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(false, vec3<bool>(false, false, true)), Struct_3(false, vec3<bool>(true, true, false)), Struct_3(true, vec3<bool>(true, false, false)), Struct_3(false, vec3<bool>(true, true, false)), Struct_3(false, vec3<bool>(true, true, false)), Struct_3(true, vec3<bool>(true, false, true)), Struct_3(true, vec3<bool>(false, false, false)), Struct_3(false, vec3<bool>(true, true, false)), Struct_3(false, vec3<bool>(false, true, false)), Struct_3(false, vec3<bool>(false, true, false)), Struct_3(false, vec3<bool>(false, false, false)), Struct_3(false, vec3<bool>(false, false, true)), Struct_3(false, vec3<bool>(false, true, false)), Struct_3(false, vec3<bool>(true, false, false)), Struct_3(false, vec3<bool>(true, true, false)), Struct_3(false, vec3<bool>(false, false, true)), Struct_3(true, vec3<bool>(false, true, false)), Struct_3(false, vec3<bool>(true, true, true)));

var<private> global2: array<vec2<i32>, 26>;

var<private> global3: i32;

var<private> global4: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(true, vec3<bool>(false, true, false)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<f32> {
    global3 = 4008i;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1621f - 776f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1459f, 100f)) * _wgslsmith_f_op_f32(-356f - 683f))) * 966f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(688f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1215f) - _wgslsmith_f_op_f32(f32(-1f) * -1051f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_f32(max(337f, 1465f))))));
    global0 = array<Struct_4, 12>();
    let var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(76968u, 0u, 0u, u_input.b), vec4<u32>(4294967295u, u_input.b, 55993u, u_input.b)), vec4<u32>(u_input.b, u_input.b, 79147u, 44851u)), vec4<u32>(~42569u, u_input.b, u_input.b, u_input.b)), vec4<u32>(_wgslsmith_mod_u32(39636u, ~u_input.b), 4294967295u, _wgslsmith_clamp_u32(u_input.b, 30927u, u_input.b & 3410u), min(~0u, u_input.b))), u_input.b);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(470f + -1737f), _wgslsmith_f_op_f32(1492f - 1543f))) * -542f), 1141f)), _wgslsmith_div_f32(-1502f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-370f, -704f)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * vec2<f32>(-1283f, -485f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-353f, var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(round(-241f)), -1101f)))));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = -794f;
    var var_1 = vec3<i32>(firstLeadingBit(arg_0.x), select(_wgslsmith_mult_i32(u_input.c, max(-1i, -1i)), reverseBits(u_input.c), true), -1i);
    var var_2 = Struct_1(all(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true)), min(_wgslsmith_sub_i32(_wgslsmith_add_i32(0i, 1i) ^ -u_input.c, u_input.c), u_input.c), min(u_input.b, u_input.b) >> (1u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, -1254f), _wgslsmith_f_op_vec2_f32(func_3()))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1085f, var_0) - vec2<f32>(var_0, 939f)))))), vec2<f32>(-547f, var_0));
    var var_3 = !vec2<bool>(false, var_2.a);
    var_1 = abs(_wgslsmith_mod_vec3_i32(-reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, -29513i, arg_0.x), arg_0.xzy)), vec3<i32>(~u_input.a.x, 25065i, u_input.c)));
    return u_input.b;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    global1 = array<Struct_3, 18>();
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-302f, _wgslsmith_div_f32(1137f, arg_1), _wgslsmith_f_op_f32(-arg_0.e.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-331f, 341f)) - -849f), arg_0.e.x, arg_1) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.x, arg_0.d.x)), _wgslsmith_f_op_f32(exp2(arg_0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -474f)))));
    var var_1 = _wgslsmith_mod_u32(arg_0.c, u_input.b >> (~func_2(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a)) % 32u));
    let var_2 = !select(vec2<bool>(arg_0.a, u_input.b < func_2(vec4<i32>(arg_0.b, -1i, arg_0.b, arg_0.b))), select(!select(vec2<bool>(false, arg_0.a), vec2<bool>(false, false), arg_0.a), vec2<bool>(arg_0.a & arg_0.a, !arg_0.a), true), arg_0.a);
    var var_3 = global4[_wgslsmith_index_u32(~(~(u_input.b & u_input.b)) ^ ~arg_0.c, 1u)];
    return Struct_2(arg_0, arg_0.a);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = (_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(39411u, 65184u), max(vec2<u32>(0u, u_input.b), vec2<u32>(0u, 38078u))), vec2<u32>(~arg_3.a.c, arg_3.a.c ^ u_input.b)) | vec2<u32>(4294967295u, ~(u_input.b ^ 4294967295u))) << (firstLeadingBit(~vec2<u32>(~arg_3.a.c, u_input.b)) % vec2<u32>(32u));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.e.x, arg_3.a.d.x, arg_3.a.d.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.d.x, -558f, arg_3.a.d.x) - vec3<f32>(777f, -363f, arg_3.a.e.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.e.x + 1000f) + -1000f), -704f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.a.d.x + arg_3.a.d.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1463f, -552f, 258f))))))));
    global3 = abs(8151i >> (_wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_0.x, u_input.b, 8867u), vec4<u32>(u_input.b, 0u, var_0.x, 1u))), abs(vec4<u32>(var_0.x, 32801u, u_input.b, arg_3.a.c))) % 32u));
    let var_2 = arg_3.a;
    let var_3 = !(_wgslsmith_f_op_f32(select(271f, arg_3.a.d.x, _wgslsmith_add_u32(u_input.b, var_2.c) <= ~1u)) == _wgslsmith_f_op_f32(var_2.e.x - _wgslsmith_f_op_f32(exp2(var_1.x))));
    return vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-419f * -1037f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_div_f32(1000f, -1016f)) - _wgslsmith_f_op_f32(step(-1000f, 1046f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(452f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1454f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.e.x) * -814f)) * _wgslsmith_f_op_f32(exp2(var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec4<bool>(true, true, true, !all(vec4<bool>(true, false, false, false))));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.b, 1u), ~(~u_input.b) ^ select(_wgslsmith_mult_u32(u_input.b, 1u), 1u << (u_input.b % 32u), true)) != ~u_input.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(-44858i >> ((0u << (~u_input.b % 32u)) % 32u), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false)), any(vec2<bool>(true, u_input.c == 8847i)), func_1(Struct_1(all(vec2<bool>(false, true)), _wgslsmith_mod_i32(u_input.c, -1i), 29561u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-472f, 1177f) + vec2<f32>(-1000f, -507f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1226f, -2131f), vec2<f32>(601f, 789f)))), -956f))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 254f)) - _wgslsmith_f_op_f32(-1000f + 252f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(2451f, _wgslsmith_f_op_f32(1000f + -1286f), true)))), -388f));
    let var_3 = u_input.c;
    let var_4 = func_1(func_1(Struct_1(func_1(func_1(Struct_1(false, 32186i, u_input.b, vec2<f32>(1964f, var_2.x), var_2.xx), var_2.x).a, var_2.x).b, var_3 | 1i, ~6909u >> ((u_input.b << (1u % 32u)) % 32u), vec2<f32>(_wgslsmith_div_f32(692f, -329f), 393f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-893f, -1000f)))), 469f).a, 1493f);
    global3 = 14938i;
    var_0 = any(select(!(!select(vec4<bool>(var_4.b, var_4.b, var_4.b, var_4.b), vec4<bool>(var_4.a.a, var_4.b, var_4.a.a, var_4.b), false)), select(select(vec4<bool>(true, var_4.b, var_4.a.a, true), select(vec4<bool>(true, var_4.b, var_4.a.a, false), vec4<bool>(var_4.a.a, var_4.a.a, false, var_4.a.a), false), select(vec4<bool>(true, false, var_4.b, var_4.a.a), vec4<bool>(var_4.b, var_4.a.a, false, var_4.b), var_4.a.a)), select(!vec4<bool>(var_4.b, false, true, var_4.b), vec4<bool>(true, false, false, var_4.a.a), !vec4<bool>(var_4.b, var_4.b, true, var_4.a.a)), !var_4.b), true));
    global1 = array<Struct_3, 18>();
    let var_5 = select(!select(!vec3<bool>(true, false, var_4.a.a), select(select(vec3<bool>(var_4.b, var_4.a.a, false), vec3<bool>(true, false, var_4.b), vec3<bool>(false, true, var_4.b)), !vec3<bool>(var_4.a.a, var_4.a.a, true), func_1(var_4.a, var_2.x).b), (var_4.a.c == u_input.b) != var_4.a.a), !(!(!select(vec3<bool>(var_4.b, false, true), vec3<bool>(var_4.b, var_4.a.a, var_4.a.a), true))), var_4.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(max(11777u, 1u) & _wgslsmith_add_u32(2484u, u_input.b), max(u_input.b, 1u), ~var_4.a.c, _wgslsmith_mod_u32(u_input.b, ~var_4.a.c)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a.c, u_input.b, var_4.a.c, 7090u), ~vec4<u32>(u_input.b, var_4.a.c, u_input.b, 4294967295u)), ~select(u_input.b, u_input.b, var_4.a.a), 4294967295u, 0u)), abs(vec2<u32>(func_1(var_4.a, var_2.x).a.c, select(_wgslsmith_div_u32(1u, 1042u), ~var_4.a.c, all(var_5)))), vec4<f32>(937f, _wgslsmith_f_op_f32(-var_4.a.d.x), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.a.d.x)))), _wgslsmith_f_op_f32(-var_2.x)));
}

