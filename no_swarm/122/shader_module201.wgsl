struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 6878u), vec2<u32>(29689u, 91051u), vec2<u32>(0u, 0u), vec2<u32>(58414u, 14398u), vec2<u32>(35561u, 18487u), vec2<u32>(0u, 39994u), vec2<u32>(4906u, 60040u), vec2<u32>(37120u, 0u), vec2<u32>(0u, 10466u), vec2<u32>(0u, 14551u), vec2<u32>(72360u, 79810u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(29615u, 5443u), vec2<u32>(0u, 1u), vec2<u32>(96320u, 1u), vec2<u32>(55951u, 8261u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 6297u), vec2<u32>(40517u, 60931u), vec2<u32>(1u, 12683u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(42339u, 0u), vec2<u32>(17061u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 32810u), vec2<u32>(55838u, 4294967295u), vec2<u32>(11809u, 10185u), vec2<u32>(1u, 0u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2.a.xy;
    var_0 = vec2<u32>(~1u, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(~21752u, _wgslsmith_dot_vec2_u32(vec2<u32>(25455u, 4294967295u), vec2<u32>(arg_2.a.x, 27416u))), var_0.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_2.e, 1000f)), _wgslsmith_f_op_f32(1211f * arg_0))), arg_1, any(select(vec3<bool>(false, arg_2.d, true), arg_2.c.wwy, arg_2.c.xxx)))))), arg_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.b.xx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b.wx * arg_2.b.yy)), true))));
    let var_3 = arg_2;
    return arg_1;
}

fn func_2(arg_0: i32, arg_1: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1622f, -432f, Struct_1(vec4<u32>(u_input.c.x, 105453u, 4294967295u, u_input.c.x), vec4<f32>(522f, -185f, 1083f, arg_1), vec4<bool>(false, global0.x, global0.x, global0.x), false, -403f)))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-1058f + arg_1))), _wgslsmith_f_op_f32(floor(arg_1))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, -510f, -923f))) * vec3<f32>(arg_1, arg_1, -380f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1534f, -1293f, arg_1))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, 248f, 1152f))))))));
    global0 = vec3<bool>(any(select(!vec4<bool>(false, false, global0.x, global0.x), !vec4<bool>(true, global0.x, global0.x, global0.x), global0.x)), false, !(!any(vec3<bool>(global0.x, false, true))));
    var var_1 = Struct_3(arg_1);
    let var_2 = ~(~(~(~vec3<i32>(arg_0, -1i, -2147483647i)))) | abs(select(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_0, 41315i), vec3<i32>(u_input.d, 18080i, arg_0)), ~vec3<i32>(u_input.b, u_input.a, 2147483647i)), vec3<i32>(~arg_0, -17159i, u_input.d), all(vec3<bool>(global0.x, global0.x, true))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-202f, arg_1), _wgslsmith_f_op_f32(select(276f, arg_1, global0.x)), var_1.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1460f, var_0.x, -1534f), vec3<f32>(var_0.x, -950f, -1065f), global0.x))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1000f, arg_1, global0.x))))), 451f, arg_1));
    return firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i >> (u_input.c.x % 32u)), vec2<i32>(_wgslsmith_clamp_i32(var_2.x, 1i, var_2.x), firstLeadingBit(u_input.b)))) << (u_input.c.zz % vec2<u32>(32u));
}

fn func_1() -> Struct_4 {
    global1 = array<vec2<u32>, 30>();
    let var_0 = func_2(u_input.a, -374f);
    var var_1 = vec2<u32>(u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u) % vec4<u32>(32u)), abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), false), max(~vec4<u32>(1u, u_input.c.x, u_input.c.x, 4294967295u), ~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 76329u))), firstTrailingBit(abs(u_input.c.x))));
    let var_2 = Struct_4(Struct_2((_wgslsmith_div_i32(u_input.b, var_0.x) >> (u_input.c.x % 32u)) != u_input.d), Struct_3(_wgslsmith_f_op_f32(min(-1266f, -2418f))), _wgslsmith_f_op_f32(select(-963f, -2226f, any(global0.zy))), Struct_2(global0.x), Struct_2(any(global0.zy)));
    let var_3 = var_2.d;
    return Struct_4(var_2.a, var_2.b, _wgslsmith_f_op_f32(ceil(1000f)), Struct_2(true), var_2.e);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    let var_0 = ~select(_wgslsmith_sub_vec2_i32(vec2<i32>(-37131i ^ u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, 41114i), vec2<i32>(-1i, u_input.b) << (u_input.c.xz % vec2<u32>(32u)))), vec2<i32>(~select(2147483647i, -2147483647i, global0.x), u_input.d), !(u_input.b >= func_2(u_input.a, 2350f).x));
    let var_1 = reverseBits(4904u);
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(~u_input.b) & (u_input.b & 0i), 456i, countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), var_0), vec2<i32>(1i, 1i))), u_input.d), reverseBits(max(~vec4<i32>(var_0.x, u_input.a, -1i, var_0.x), vec4<i32>(0i, 0i, u_input.a, var_0.x) & vec4<i32>(var_0.x, -28641i, 0i, 0i))));
    let var_3 = ~31952i | -firstTrailingBit(-1i);
    return 1626f;
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4) -> bool {
    global0 = !select(vec3<bool>(arg_0, false, !any(vec3<bool>(arg_2.e.a, false, true))), !select(vec3<bool>(true, true, arg_0), !vec3<bool>(global0.x, false, false), select(vec3<bool>(false, arg_0, global0.x), vec3<bool>(arg_2.a.a, global0.x, false), vec3<bool>(true, false, arg_2.d.a))), global0.x);
    global1 = array<vec2<u32>, 30>();
    global0 = !select(!(!vec3<bool>(global0.x, global0.x, arg_0)), select(!select(vec3<bool>(arg_2.d.a, global0.x, true), vec3<bool>(false, true, arg_0), vec3<bool>(true, arg_2.e.a, arg_2.a.a)), !select(vec3<bool>(arg_2.e.a, false, true), vec3<bool>(global0.x, arg_0, true), vec3<bool>(arg_2.a.a, arg_2.a.a, false)), true), true);
    let var_0 = countOneBits(6404i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(f32(-1f) * -920f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(select(arg_1.zx, vec2<f32>(-780f, arg_1.x), true)), Struct_4(Struct_2(arg_0), Struct_3(656f), arg_2.c, arg_2.d, arg_2.d), _wgslsmith_f_op_f32(arg_2.b.a - arg_1.x), u_input.c << (u_input.c % vec3<u32>(32u))))), -1000f)));
    return arg_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.c.x, u_input.c.x, _wgslsmith_clamp_u32(4294967295u, u_input.c.x, u_input.c.x), 52718u), abs(~max(vec4<u32>(u_input.c.x, 0u, 53316u, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x))), vec4<bool>(any(vec2<bool>(global0.x, global0.x)), _wgslsmith_add_i32(u_input.a, 29578i) != -2147483647i, u_input.c.x <= u_input.c.x, !(false || global0.x))), ~countOneBits(vec4<u32>(32081u, ~32552u, countOneBits(36302u), 18067u)));
    var var_1 = func_5(all(vec3<bool>(true, global0.x, false)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(func_4(vec2<f32>(1321f, _wgslsmith_f_op_f32(f32(-1f) * -168f)), func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(388f, -1439f, global0.x)) + -526f), ~min(u_input.c, var_0.ywy))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(538f - 900f), _wgslsmith_div_f32(1434f, -110f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f) * _wgslsmith_f_op_f32(f32(-1f) * -868f)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-312f + 128f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1851f + -161f) + _wgslsmith_f_op_f32(func_4(vec2<f32>(543f, -1000f), Struct_4(Struct_2(global0.x), Struct_3(-218f), 897f, Struct_2(global0.x), Struct_2(global0.x)), -787f, vec3<u32>(var_0.x, 81937u, u_input.c.x)))), Struct_1(vec4<u32>(4294967295u, 1u, u_input.c.x, 14739u), vec4<f32>(248f, 1000f, -783f, 709f), vec4<bool>(global0.x, false, global0.x, false), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_1());
    let var_2 = ~min(~(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(u_input.a, -2147483647i))), -vec2<i32>(firstTrailingBit(u_input.d), reverseBits(-32899i)));
    var var_3 = ~abs(var_0.yy);
    var var_4 = u_input.c.x;
    var var_5 = !(!select(vec4<bool>(true, global0.x, global0.x, all(global0.zx)), select(!vec4<bool>(global0.x, global0.x, true, global0.x), !vec4<bool>(global0.x, true, false, global0.x), global0.x), !(!vec4<bool>(true, global0.x, global0.x, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-21027i);
}

