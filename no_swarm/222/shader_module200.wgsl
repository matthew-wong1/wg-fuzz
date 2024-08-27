struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: array<i32, 13> = array<i32, 13>(9162i, -1i, i32(-2147483648), 6492i, -2889i, 1i, -8763i, -1i, -4438i, 12086i, 0i, 1i, 1i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec4<i32> {
    global1 = Struct_1(-global0.c.a, true, ~(-abs(-16049i)), abs(global0.c.d), global0.c.e);
    var var_0 = min(global0.a, vec3<i32>(_wgslsmith_sub_i32(0i, ~0i), 4210i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_0.x, 1i), max(0i, 24585i)), vec2<i32>(global1.a.x, -2147483647i))));
    return -_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global1.d, 13u)], -2147483647i, global1.a.x << (0u % 32u), ~global1.a.x), abs(vec4<i32>(0i, select(global0.b, -19231i, false), global0.c.a.x, max(1i, global2[_wgslsmith_index_u32(global0.c.d, 13u)]))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = 4294967295u;
    var var_1 = -func_3(_wgslsmith_clamp_vec2_i32(~(global1.a ^ global0.a.yy), min(-vec2<i32>(global2[_wgslsmith_index_u32(39421u, 13u)], global0.c.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -2147483647i))), abs(arg_1.a)));
    let var_2 = !any(vec3<bool>(global0.c.b, false, false && !global0.c.b));
    let var_3 = arg_2.zxy;
    let var_4 = func_3(~(~(~(~arg_0.wz)))).zzw;
    return Struct_2(~(select(arg_0.wxy, vec3<i32>(global1.c, -50009i, 16226i), global1.d != arg_1.d) << (abs(vec3<u32>(0u, 1u, 1u)) % vec3<u32>(32u))), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(21270u, 13u)], u_input.a), vec2<i32>(global0.b, 1i)) << (28061u % 32u)), Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(-21158i, 0i)), _wgslsmith_mod_vec2_i32(global1.a, vec2<i32>(arg_1.a.x, 2147483647i))), var_2, global0.b, 76700u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-198f + 323f))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<u32> {
    global2 = array<i32, 13>();
    let var_0 = any(vec3<bool>(false, global0.c.b & true, any(vec3<bool>(false, arg_0.c.b, false)) || !global0.c.b));
    global0 = func_2(firstLeadingBit(countOneBits(-func_3(vec2<i32>(arg_0.b, -2147483647i)))), Struct_1(_wgslsmith_mult_vec2_i32(-arg_1.a.yy, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a.x, global2[_wgslsmith_index_u32(1u, 13u)]), arg_1.a.xz), abs(vec2<i32>(95246i, -22261i)))), func_2(vec4<i32>(-arg_1.b, u_input.a | -8711i, _wgslsmith_div_i32(arg_0.c.a.x, global1.c), arg_0.b), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, global1.a.x), global1.a, global1.a), false, _wgslsmith_add_i32(global1.c, 31574i), global1.d, _wgslsmith_f_op_f32(-arg_1.c.e)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.e, global1.e, arg_1.c.e, -985f) + vec4<f32>(738f, 361f, global0.c.e, global1.e)), vec4<f32>(295f, global0.c.e, -145f, 1439f), vec4<bool>(false, global0.c.b, true, global0.c.b)))).c.b, max(-global0.c.c, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.a.yy, vec2<i32>(17241i, 46505i), vec2<i32>(arg_1.b, 20127i)), vec2<i32>(arg_0.a.x, u_input.a) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)))), ~countOneBits(~global0.c.d), 456f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -583f), global1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -822f) * _wgslsmith_div_f32(-979f, 679f)), _wgslsmith_f_op_f32(870f + _wgslsmith_f_op_f32(max(532f, -1457f))))));
    return vec4<u32>(abs(arg_1.c.d), firstLeadingBit(arg_1.c.d), _wgslsmith_mult_u32(select(~0u, 3387u << (arg_1.c.d % 32u), true), 14664u) | ~0u, (max(27956u, 4294967295u) << (~select(67322u, 0u, global0.c.b) % 32u)) >> (global0.c.d % 32u));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    let var_0 = ~(~(abs(arg_0 ^ 0u) ^ _wgslsmith_clamp_u32(~arg_1.d, _wgslsmith_clamp_u32(0u, 20212u, 4294967295u), ~42014u)));
    let var_1 = ~min(max(vec4<u32>(arg_0, 1u, global1.d, 59243u), func_4(Struct_2(vec3<i32>(-41034i, global0.c.c, 1i), global0.a.x, Struct_1(vec2<i32>(2147483647i, arg_2), true, 2147483647i, arg_1.d, 1000f)), func_2(vec4<i32>(arg_1.a.x, 21506i, u_input.a, u_input.a), arg_1, vec4<f32>(111f, -118f, 1012f, -2707f)), vec3<u32>(global1.d, arg_0, 22333u))), ~vec4<u32>(0u, 58449u, var_0, 4294967295u) << ((~vec4<u32>(1u, global1.d, var_0, 52915u) & vec4<u32>(1u, 35240u, 28222u, arg_0)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_mod_u32(select(0u, ~arg_0 | var_0, true), 85565u);
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_2, ~4294967295u, 8426u), _wgslsmith_sub_u32(1u, firstTrailingBit(global0.c.d)), var_0, 1u), (_wgslsmith_mod_vec4_u32(vec4<u32>(16463u, global0.c.d, var_0, 0u), ~var_1) << (_wgslsmith_div_vec4_u32(select(vec4<u32>(var_0, var_0, 4294967295u, 1u), vec4<u32>(4294967295u, 44427u, arg_0, 1u), vec4<bool>(true, true, false, global1.b)), firstTrailingBit(var_1)) % vec4<u32>(32u))) >> (var_1 % vec4<u32>(32u)));
    global2 = array<i32, 13>();
    return !(!(!vec3<bool>(global1.e <= -1081f, true || global0.c.b, false)));
}

fn func_5(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = global1.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(948f * -646f) - global0.c.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.e - -1317f)))));
    var var_2 = func_3(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.a, _wgslsmith_clamp_i32(global1.a.x, u_input.a, -48411i)) | min(-27305i, global2[_wgslsmith_index_u32(func_2(vec4<i32>(global2[_wgslsmith_index_u32(53898u, 13u)], u_input.a, var_0.x, global2[_wgslsmith_index_u32(global0.c.d, 13u)]), global0.c, vec4<f32>(1228f, 1917f, 659f, 859f)).c.d, 13u)]))).xyz;
    let var_3 = 12270u;
    var_2 = _wgslsmith_add_vec3_i32(~global0.a, max(-global0.a, global0.a));
    return Struct_2(global0.a, 70229i, Struct_1(var_2.xz, any(!vec2<bool>(arg_0.x, true)), -2147483647i, global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e) * 1029f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    global0 = Struct_2(global0.a, ~countOneBits(global0.a.x), global0.c);
    global0 = func_5(select(!(!(!vec3<bool>(global0.c.b, false, global0.c.b))), select(vec3<bool>(false != global1.b, true, true), select(vec3<bool>(false, true, global0.c.b), select(vec3<bool>(false, global1.b, false), vec3<bool>(false, global0.c.b, global1.b), true), func_1(global0.c.d, global0.c, -28658i)), func_1(global1.d, global0.c, ~var_0.x)), global1.b));
    global1 = Struct_1(vec2<i32>(global0.a.x, 33323i), true, _wgslsmith_mult_i32(~(-_wgslsmith_dot_vec3_i32(global0.a, global0.a)), u_input.a), ~func_4(Struct_2(-global0.a, _wgslsmith_mult_i32(global0.b, var_0.x), func_5(vec3<bool>(false, global1.b, false)).c), Struct_2(-global0.a, select(-2147483647i, 37082i, false), func_5(vec3<bool>(global1.b, true, global1.b)).c), ~vec3<u32>(global1.d, global0.c.d, global0.c.d)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.e - 693f) + -2749f)));
    global2 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(func_2(~(vec4<i32>(global1.c, -2147483647i, var_0.x, var_0.x) << (vec4<u32>(global1.d, global1.d, global1.d, global1.d) % vec4<u32>(32u))), func_5(!vec3<bool>(true, global0.c.b, global1.b)).c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-290f, -1225f, global1.e, global0.c.e))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.e, global0.c.e, global0.c.e, global1.e))), select(vec4<bool>(false, global1.b, false, true), vec4<bool>(global0.c.b, global0.c.b, global0.c.b, global1.b), vec4<bool>(global0.c.b, true, global0.c.b, global1.b))))).c.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1156f + _wgslsmith_f_op_f32(global1.e * 931f)) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.c.e, global1.e), _wgslsmith_f_op_f32(min(1000f, global0.c.e))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1498f, func_2(vec4<i32>(-2071i, global2[_wgslsmith_index_u32(global1.d, 13u)], global1.a.x, -1i), Struct_1(global0.a.yz, false, var_0.x, global1.d, global0.c.e), vec4<f32>(global0.c.e, global0.c.e, 1796f, global1.e)).c.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -487f))))));
}

