struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: i32 = 39081i;

var<private> global2: Struct_2 = Struct_2(vec4<u32>(46747u, 4294967295u, 1u, 34737u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> u32 {
    global2 = Struct_2(firstTrailingBit(u_input.a));
    let var_0 = select(vec2<bool>(0u != global2.a.x, !arg_0), vec2<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(-161f + -843f), arg_0 && true)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(223f, -1059f)) + _wgslsmith_f_op_f32(step(1000f, 962f))), arg_0), !vec2<bool>(!arg_0, false));
    var var_1 = Struct_2(~u_input.a);
    let var_2 = Struct_2(u_input.a);
    let var_3 = !(!any(select(!vec2<bool>(var_0.x, var_0.x), select(var_0, vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)), !vec2<bool>(true, arg_0))));
    return _wgslsmith_sub_u32(abs(24233u), ~select(82342u, 4294967295u & (global2.a.x | 4294967295u), true));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = ~(~(~func_3(false)) << (_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(u_input.a.x, 47866u)), ~_wgslsmith_dot_vec3_u32(u_input.c.xwz, vec3<u32>(arg_0, 0u, 0u))) % 32u));
    let var_1 = Struct_1(vec4<i32>(-1i, u_input.b, reverseBits(2147483647i), -2147483647i) << ((vec4<u32>(5979u, 11340u, arg_0, ~24936u) << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(8511u), ~29757u, ~0u, ~(-u_input.b));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-452f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-531f, -1898f)) - _wgslsmith_f_op_f32(round(774f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-166f, -640f)))))), 822f);
    let var_2 = _wgslsmith_f_op_f32(ceil(-2545f));
    var var_3 = var_1;
    return 38087u;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = (arg_0.zz & ~vec2<u32>(reverseBits(13645u), 47651u)) ^ ~_wgslsmith_sub_vec2_u32(global2.a.zy, vec2<u32>(_wgslsmith_mod_u32(44217u, arg_2.x), firstTrailingBit(57444u)));
    var_0 = global2.a.zx;
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -150f)));
    var_0 = ~select(vec2<u32>(arg_2.x, _wgslsmith_dot_vec2_u32(min(u_input.a.yw, arg_0.zz), _wgslsmith_add_vec2_u32(arg_0.xy, vec2<u32>(4081u, 4294967295u)))), vec2<u32>(_wgslsmith_dot_vec4_u32(arg_2, global2.a), _wgslsmith_clamp_u32(4294967295u, 1u & arg_0.x, firstTrailingBit(var_0.x))), true);
    var var_1 = func_2(~(~(~abs(0u))));
    return 1u;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(select(abs(vec4<u32>(1u, 4294967295u, u_input.c.x, 0u)) ^ ~(~global2.a), min(vec4<u32>(1u, func_1(u_input.c.wyz, vec3<u32>(12946u, arg_3, global2.a.x), u_input.c), ~arg_3, 103466u << (global2.a.x % 32u)), vec4<u32>(~u_input.c.x, _wgslsmith_add_u32(arg_3, 26518u), firstLeadingBit(0u), ~59461u)), vec4<bool>(all(arg_1), select(arg_1.x, arg_1.x, arg_1.x) & !arg_2, false, arg_2)));
    global2 = var_0;
    global2 = Struct_2(u_input.c);
    let var_1 = select(vec2<bool>(arg_2, !(all(vec4<bool>(true, arg_1.x, false, false)) | all(vec4<bool>(arg_2, arg_1.x, arg_2, arg_2)))), vec2<bool>(all(vec3<bool>(arg_1.x, -2147483647i > arg_0, true)), !(!select(arg_2, true, true))), vec2<bool>(!(!arg_2), all(vec4<bool>(true, arg_0 == 0i, all(vec3<bool>(true, arg_1.x, true)), 23968u <= u_input.e))));
    global0 = -740f;
    return Struct_1(reverseBits(-u_input.d), abs(4294967295u), global2.a.x, 1u, ~_wgslsmith_sub_i32(-1i, -arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_add_vec4_u32(firstTrailingBit(countOneBits(u_input.a)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, u_input.a.x, 4294967295u, u_input.a.x)), select(global2.a, global2.a, false)), vec4<u32>(global2.a.x >> (4294967295u % 32u), ~22403u, global2.a.x ^ u_input.e, ~4294967295u))));
    var var_1 = ~u_input.d.xw;
    global1 = u_input.d.x;
    var var_2 = func_4(0i, select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(true, true, true, true)))), true, _wgslsmith_mult_u32(countOneBits(_wgslsmith_mult_u32(func_1(global2.a.zwx, global2.a.wwx, vec4<u32>(u_input.a.x, 10997u, global2.a.x, global2.a.x)), 0u)), 7163u));
    let var_3 = all(vec4<bool>(!(!select(true, false, true)), false, true && all(vec4<bool>(false, false, false, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec3_u32(abs(global2.a.xzx), vec3<u32>(47624u, var_0.a.x, global2.a.x))), abs(var_1.x), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1987u, 16201u, var_2.d) ^ vec3<u32>(136192u, 80435u, var_0.a.x), vec3<u32>(45855u, 4294967295u, var_0.a.x) ^ vec3<u32>(var_2.d, var_2.c, u_input.e), _wgslsmith_div_vec3_u32(u_input.c.zwy, global2.a.yyz)), u_input.c.wwy, select(!vec3<bool>(false, false, var_3), select(vec3<bool>(true, true, true), vec3<bool>(false, var_3, var_3), vec3<bool>(false, var_3, var_3)), select(vec3<bool>(var_3, false, var_3), vec3<bool>(false, true, true), false))) << ((select(u_input.c.zwx, vec3<u32>(4294967295u, 27723u, u_input.c.x), true) & firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b, 4330u, global2.a.x), vec3<u32>(var_2.d, 59713u, u_input.a.x)))) % vec3<u32>(32u)), var_2.a.yxx, _wgslsmith_add_vec3_u32(var_0.a.zzy, vec3<u32>(var_2.c, 29433u, select(1u, 20567u, var_3))));
}

