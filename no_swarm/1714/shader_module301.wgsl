struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(0i, 1i, 0i, -1i), vec4<i32>(9883i, 8544i, -25361i, 72789i), vec4<i32>(69382i, 14813i, 33857i, 1i), vec4<i32>(0i, -21813i, -3633i, -1i), vec4<i32>(-14356i, -1i, -41586i, i32(-2147483648)), vec4<i32>(36572i, -32851i, -15521i, 1i), vec4<i32>(-17551i, 1i, 2147483647i, -4638i), vec4<i32>(33301i, -43255i, 0i, 17338i), vec4<i32>(-1i, 37565i, i32(-2147483648), 6736i), vec4<i32>(-1i, i32(-2147483648), 39683i, 5416i), vec4<i32>(-1i, 1i, -3501i, 0i), vec4<i32>(2147483647i, 46704i, i32(-2147483648), 2147483647i), vec4<i32>(-7588i, 33149i, 0i, 17122i), vec4<i32>(1i, -34422i, -68075i, 0i), vec4<i32>(-22322i, 15486i, 0i, 34240i), vec4<i32>(11985i, -53303i, 1i, -5537i), vec4<i32>(2617i, 23582i, i32(-2147483648), -31347i), vec4<i32>(-25920i, -35194i, 1689i, i32(-2147483648)), vec4<i32>(0i, -18467i, -1i, 1i), vec4<i32>(-37879i, 29025i, 34347i, -1i), vec4<i32>(-1542i, -11796i, -19118i, i32(-2147483648)), vec4<i32>(1i, -3190i, 1i, 28975i), vec4<i32>(1i, i32(-2147483648), 89403i, 1i), vec4<i32>(37519i, 2147483647i, 1i, -42946i), vec4<i32>(9492i, 99i, 2401i, -17192i), vec4<i32>(0i, 55674i, -1i, -48054i), vec4<i32>(-36496i, 2147483647i, i32(-2147483648), 40789i), vec4<i32>(-54268i, -1i, 23910i, 2147483647i));

var<private> global2: Struct_3 = Struct_3(-15556i, vec4<f32>(-506f, 1783f, 1487f, -369f), vec4<i32>(-12711i, 46055i, 0i, 0i), vec3<f32>(-1000f, -1885f, 531f), Struct_1(vec2<u32>(0u, 30978u), false, 737f, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = 57133u;
    var var_1 = 1i;
    var var_2 = max(-75102i, 2147483647i);
    var var_3 = global2.e;
    var_2 = _wgslsmith_mod_i32(~(~min(~global2.c.x, reverseBits(u_input.e.x))), global2.c.x);
    return !select(vec3<bool>(var_3.d, !all(vec3<bool>(var_3.d, var_3.b, false)), global2.e.d), select(select(select(vec3<bool>(var_3.d, var_3.d, var_3.d), vec3<bool>(var_3.d, global2.e.b, true), vec3<bool>(global2.e.b, false, true)), vec3<bool>(true, true, var_3.d), select(vec3<bool>(false, global2.e.b, var_3.d), vec3<bool>(global2.e.b, true, false), false)), vec3<bool>(any(vec4<bool>(true, var_3.d, var_3.d, global2.e.b)), true, select(false, true, true)), !vec3<bool>(false, true, global2.e.b)), any(vec3<bool>(false, true, false)));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    let var_0 = global2.e;
    let var_1 = !(!(!select(select(vec3<bool>(arg_1.e.b, arg_0, arg_1.e.d), vec3<bool>(var_0.b, false, arg_2.e.b), false), vec3<bool>(true, false, global2.e.b), func_3(arg_2.d.x, vec4<u32>(u_input.b, 20954u, global2.e.a.x, global2.e.a.x)))));
    var var_2 = vec2<bool>(!arg_1.e.d, true);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_2.b.xz))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    var var_4 = !(!vec2<bool>(arg_0, true));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.c))))));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = 19765u;
    var_1 = _wgslsmith_clamp_u32(min(~global2.e.a.x, 66392u), global2.e.a.x << (firstTrailingBit(1u) % 32u), _wgslsmith_add_u32(~global2.e.a.x, 4294967295u));
    let var_2 = arg_0;
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(~(-7785i), min(-2147483647i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(22668i, u_input.e.x, -1i), u_input.e.xzx)))), i32(-1i) * -13676i, 6490i, i32(-1i) * -1i);
    return Struct_3(~_wgslsmith_div_i32(abs(~58368i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(global2.e.a.x, 28u)], vec4<i32>(var_3.x, arg_2.x, arg_2.x, -1i)), arg_2.x & arg_2.x)), _wgslsmith_f_op_vec4_f32(global2.b + _wgslsmith_f_op_vec4_f32(global2.b - global2.b)), firstTrailingBit(reverseBits(vec4<i32>(arg_2.x, 0i, -10500i, -25579i) & global1[_wgslsmith_index_u32(u_input.a.x, 28u)]) ^ _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, 22765i, -1i, u_input.c) >> (vec4<u32>(u_input.a.x, u_input.b, global2.e.a.x, 50045u) % vec4<u32>(32u)), ~vec4<i32>(global2.a, global2.c.x, var_3.x, 0i))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(global2.d, vec3<f32>(_wgslsmith_f_op_f32(1519f - global2.b.x), _wgslsmith_f_op_f32(1590f + arg_0), _wgslsmith_f_op_f32(step(var_2, arg_0))), global2.e.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-465f, arg_0, 102f) * global2.b.xxz), _wgslsmith_f_op_vec3_f32(global2.b.ywz - vec3<f32>(var_2, -692f, -268f)))) - global2.d))), global2.e);
}

fn func_1(arg_0: i32) -> vec4<i32> {
    global2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.b.x)) * global2.b.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global2.e.d, Struct_3(6452i, global2.b, u_input.e, vec3<f32>(1197f, 200f, global2.d.x), Struct_1(vec2<u32>(4294967295u, global2.e.a.x), true, global2.e.c, global2.e.b)), Struct_3(arg_0, global2.b, vec4<i32>(-1i, 1i, u_input.d, global2.a), vec3<f32>(-286f, 227f, -648f), global2.e))) * global2.e.c)))), _wgslsmith_clamp_vec3_u32(u_input.a.xzw, firstTrailingBit(max(abs(u_input.a.yyz), ~vec3<u32>(21317u, u_input.b, 4294967295u))), vec3<u32>(~u_input.a.x, ~1u, 11514u) >> (~firstLeadingBit(u_input.a.zwy) % vec3<u32>(32u))), select(~_wgslsmith_clamp_vec2_i32(global2.c.zy, vec2<i32>(global2.c.x, arg_0), global2.c.zz) ^ global2.c.wx, vec2<i32>(u_input.d, arg_0) | vec2<i32>(i32(-1i) * -61622i, arg_0), vec2<bool>(global2.e.b, all(!vec3<bool>(global2.e.b, true, global2.e.b)))));
    let var_0 = Struct_2(select(vec4<bool>(abs(-2147483647i) <= firstLeadingBit(arg_0), !all(vec2<bool>(global2.e.d, global2.e.b)), all(vec2<bool>(false, true)), !select(global2.e.d, false, global2.e.d)), select(!(!vec4<bool>(true, true, global2.e.d, true)), select(select(vec4<bool>(global2.e.d, true, false, global2.e.b), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, global2.e.b, global2.e.d, true), vec4<bool>(global2.e.b, global2.e.b, global2.e.d, global2.e.b), vec4<bool>(global2.e.b, true, true, global2.e.b)), select(vec4<bool>(true, global2.e.d, false, global2.e.d), vec4<bool>(global2.e.d, global2.e.b, global2.e.d, false), false)), any(select(vec3<bool>(true, global2.e.b, false), vec3<bool>(global2.e.b, false, false), true))), select(select(!vec4<bool>(global2.e.d, false, true, global2.e.d), select(vec4<bool>(true, global2.e.d, global2.e.d, global2.e.b), vec4<bool>(global2.e.b, false, global2.e.d, global2.e.b), vec4<bool>(global2.e.d, false, global2.e.b, false)), true), select(select(vec4<bool>(global2.e.d, global2.e.d, false, global2.e.d), vec4<bool>(true, global2.e.d, true, false), global2.e.d), !vec4<bool>(global2.e.b, global2.e.b, false, false), global2.b.x >= -358f), global2.e.b)), 55567u, _wgslsmith_mult_u32(global2.e.a.x, u_input.b), global2.a);
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1551f)) - _wgslsmith_f_op_f32(f32(-1f) * -2419f)), u_input.a.xxw, ~vec2<i32>(u_input.c, max(arg_0, ~1i)));
    let var_2 = var_0;
    let var_3 = global2.e.a.x;
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, 3028u), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.d.xz)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(global2.d.xy)), global2.b.zx, !(!select(vec2<bool>(true, true), vec2<bool>(global2.e.b, global2.e.b), vec2<bool>(false, global2.e.d))))));
    let var_1 = global2.e;
    global0 = false;
    let var_2 = Struct_3(abs(8690i), vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-1515f - _wgslsmith_div_f32(-755f, -1000f))), var_1.c, var_0.x, -766f), func_1(u_input.c) >> (~select(vec4<u32>(var_1.a.x, u_input.b, u_input.a.x, 4294967295u), u_input.a, select(vec4<bool>(false, true, var_1.b, var_1.d), vec4<bool>(var_1.b, true, global2.e.d, var_1.b), false)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(global2.d - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.b.zxw, global2.d, global2.e.b)) * global2.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1289f, global2.d.x, var_1.c)))), select(!vec3<bool>(global2.e.d, var_1.b, true), vec3<bool>(true, true, true), func_3(var_1.c, u_input.a))))), global2.e);
    var var_3 = vec2<i32>(_wgslsmith_clamp_i32(~1i, -29894i, -var_2.c.x), -_wgslsmith_add_i32(1i, func_1(global2.a >> (4969u % 32u)).x));
    var var_4 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -613f), var_2.e.c), vec3<u32>(1u << (var_2.e.a.x % 32u), abs(global2.e.a.x), firstLeadingBit(~44332u)), var_2.c.xy).c;
    var var_5 = Struct_4(vec4<bool>(global2.e.d, true, !func_4(func_4(var_2.b.x, u_input.a.xxy, vec2<i32>(var_2.a, 13680i)).d.x, ~vec3<u32>(34491u, 12269u, var_1.a.x), var_2.c.zy).e.d, global2.e.d), Struct_1(u_input.a.xz, ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) < ~(~64670u), var_0.x, false), _wgslsmith_div_u32(((var_2.e.a.x ^ 4294967295u) ^ var_2.e.a.x) & global2.e.a.x, u_input.b), ~global2.e.a.x, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-121f, func_4(_wgslsmith_f_op_f32(f32(-1f) * -282f), min(u_input.a.wxw, u_input.a.wzw), _wgslsmith_mult_vec2_i32(global2.c.xz, vec2<i32>(var_2.a, var_2.c.x))).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1667f))))));
}

