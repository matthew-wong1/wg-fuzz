struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1u, vec2<f32>(-132f, -330f), vec2<bool>(true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_clamp_i32((~reverseBits(0i) ^ arg_1.b) & select(abs(arg_1.a), 42740i, any(vec2<bool>(false, false))), 1i & arg_1.a, ~_wgslsmith_dot_vec2_i32(select(-vec2<i32>(arg_1.b, arg_1.a), vec2<i32>(-1i, 47958i), 730f < global0.b.x), vec2<i32>(-1i, ~u_input.a)));
    var_0 = 0i;
    global0 = Struct_4(~_wgslsmith_add_u32(arg_3.x >> (~arg_0 % 32u), arg_2), global0.b, select(vec2<bool>(select(-48704i > arg_1.b, false != global0.c.x, global0.c.x), _wgslsmith_div_f32(192f, global0.b.x) < _wgslsmith_f_op_f32(-2886f * global0.b.x)), select(vec2<bool>(global0.c.x & false, true | global0.e.x), global0.c, !global0.c), global0.c.x), select(select(!global0.d, select(global0.e, global0.e, select(vec4<bool>(global0.d.x, true, true, global0.d.x), global0.e, global0.e)), global0.c.x), vec4<bool>(global0.d.x, global0.c.x, !global0.d.x, true), !select(select(global0.e, vec4<bool>(global0.e.x, false, global0.c.x, false), true), select(vec4<bool>(true, true, global0.e.x, global0.e.x), vec4<bool>(global0.e.x, global0.e.x, false, true), global0.c.x), true)), vec4<bool>(false, true, !any(global0.d.yzz), global0.d.x));
    let var_1 = Struct_2(select(firstTrailingBit(arg_3), select(select(vec3<u32>(arg_0, 10400u, 39323u), arg_3, global0.e.zyw) ^ firstLeadingBit(vec3<u32>(arg_3.x, arg_0, arg_0)), max(max(vec3<u32>(arg_0, global0.a, arg_3.x), arg_3), arg_3 ^ vec3<u32>(15631u, 4294967295u, 1u)), all(select(vec4<bool>(global0.d.x, global0.d.x, global0.e.x, global0.c.x), global0.e, vec4<bool>(global0.e.x, global0.c.x, true, global0.c.x)))), vec3<bool>(!(49969i <= arg_1.b), false, any(vec4<bool>(global0.e.x, false, global0.c.x, global0.e.x)))));
    var var_2 = Struct_1(firstLeadingBit(1878i), min(2147483647i, -50985i));
    return min(i32(-1i) * -1i, -16685i);
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(127f, _wgslsmith_f_op_f32(sign(-2917f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.b, vec2<f32>(global0.b.x, 2056f)))) - global0.b) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-676f, global0.b.x))))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-210f * global0.b.x), _wgslsmith_f_op_f32(global0.b.x * -1713f))))));
    var var_1 = u_input.a;
    let var_2 = max(~vec4<i32>(func_3(~33374u, Struct_1(-1i, u_input.a), 4294967295u, vec3<u32>(global0.a, global0.a, global0.a) << (vec3<u32>(global0.a, 1u, global0.a) % vec3<u32>(32u))), _wgslsmith_div_i32(i32(-1i) * -6097i, 1i), -firstTrailingBit(u_input.a), (2147483647i << (global0.a % 32u)) >> (1u % 32u)), firstLeadingBit(-(~vec4<i32>(13433i, -13554i, 12899i, 2147483647i)) | abs(vec4<i32>(u_input.a, u_input.a, 21502i, 2147483647i) ^ vec4<i32>(-22402i, 0i, -2147483647i, 0i))));
    return Struct_4(global0.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1101f)) + _wgslsmith_f_op_f32(sign(1564f))), var_0.x))), !(!(!global0.d.xw)), global0.e, vec4<bool>(!global0.d.x, !(global0.d.x & (u_input.a <= 2147483647i)), true, global0.c.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_4, arg_3: vec3<i32>) -> i32 {
    global0 = func_2();
    global0 = Struct_4(1u, vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(arg_2.b.x, func_2().b.x))), global0.b.x), vec2<bool>(arg_2.b.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * _wgslsmith_f_op_f32(sign(global0.b.x))), _wgslsmith_f_op_f32(trunc(850f)) > -180f), !vec4<bool>(any(vec3<bool>(global0.d.x, true, false)), !global0.c.x, all(select(vec2<bool>(global0.e.x, true), vec2<bool>(true, true), true)), true), arg_2.d);
    var var_0 = Struct_2(max(vec3<u32>(select(~arg_2.a, arg_2.a, global0.d.x), ~80981u, _wgslsmith_sub_u32(~global0.a, global0.a)), min(vec3<u32>(_wgslsmith_sub_u32(1u, 1u), ~global0.a, arg_1), vec3<u32>(firstTrailingBit(68652u), func_2().a, 1u))));
    var var_1 = true;
    var var_2 = -1000f;
    return u_input.a;
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> bool {
    var var_0 = Struct_1(min(-max(_wgslsmith_div_i32(-1i, u_input.a), -1i), func_4(firstTrailingBit(reverseBits(vec2<i32>(u_input.a, u_input.a))), _wgslsmith_add_u32(1u, ~global0.a), func_2(), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 7909i, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i)), vec3<i32>(8412i, 1i, u_input.a)))), firstLeadingBit(u_input.a));
    let var_1 = arg_1.b.x;
    let var_2 = Struct_3(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a, arg_1.a, 1u, global0.a), vec4<u32>(1u, arg_1.a, arg_0, global0.a) >> (vec4<u32>(1u, arg_1.a, global0.a, arg_1.a) % vec4<u32>(32u)))), arg_1.b, select(true, !all(vec2<bool>(global0.c.x, arg_1.d.x)), false) | (true | !arg_1.c.x), (_wgslsmith_div_u32(arg_0, global0.a >> (arg_1.a % 32u)) > arg_0) && global0.c.x, _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(55267u, global0.a, arg_1.a, global0.a) | vec4<u32>(global0.a, 1u, 0u, 49510u)), ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<u32>(1u, 45280u, 69267u, 1u), global0.d), countOneBits(vec4<u32>(65824u, 0u, global0.a, arg_1.a)))));
    global0 = arg_1;
    var var_3 = arg_1.c.x;
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(select(max(34299u, ~(global0.a ^ 1u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(19124u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, global0.a), vec3<u32>(global0.a, global0.a, global0.a))), ~(~0u)), true & !all(vec4<bool>(false, global0.c.x, global0.c.x, global0.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)))), global0.e.xy, !vec4<bool>(global0.c.x, false | func_1(4294967295u, Struct_4(22435u, global0.b, global0.d.xy, vec4<bool>(false, false, true, global0.d.x), vec4<bool>(true, false, global0.d.x, true))), global0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(67334i, u_input.a, 2830i), vec3<i32>(-2147483647i, u_input.a, u_input.a)) < _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -14087i), vec2<i32>(4114i, -6551i))), select(global0.e, func_2().d, u_input.a != u_input.a));
    let var_0 = abs(~(~vec4<i32>(_wgslsmith_mod_i32(u_input.a, 3145i), 21493i, 0i, -2147483647i)));
    global0 = Struct_4(0u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(161f * _wgslsmith_f_op_f32(f32(-1f) * -877f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.x, global0.b.x)))), select(vec2<bool>(global0.d.x, global0.d.x), !(!vec2<bool>(global0.c.x, true)), !(global0.a == (16733u << (global0.a % 32u)))), func_2().d, select(vec4<bool>(true, true, true, true), vec4<bool>(!global0.d.x, true, !global0.e.x || !global0.e.x, func_2().c.x), vec4<bool>(global0.c.x, func_1(20331u, Struct_4(global0.a, vec2<f32>(global0.b.x, global0.b.x), vec2<bool>(true, global0.e.x), vec4<bool>(global0.e.x, true, global0.e.x, false), global0.d)) & (u_input.a >= 43430i), global0.d.x, _wgslsmith_add_u32(1u, global0.a) > 79460u)));
    var var_1 = vec4<u32>(reverseBits(~global0.a), ~global0.a, global0.a, 1u);
    var_1 = _wgslsmith_div_vec4_u32(min(~abs(vec4<u32>(10769u, var_1.x, 0u, global0.a)), vec4<u32>(~(~24707u), global0.a, 4294967295u, _wgslsmith_mod_u32(1u, var_1.x) ^ ~global0.a)), vec4<u32>(39863u, 24450u, var_1.x, ~var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wy);
}

