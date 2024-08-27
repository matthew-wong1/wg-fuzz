struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(4522u, vec2<f32>(-1000f, -1927f), 27718u, vec3<bool>(false, true, true)), Struct_1(14322u, vec2<f32>(2536f, -642f), 59363u, vec3<bool>(false, false, false)), Struct_1(1u, vec2<f32>(-1038f, -632f), 15326u, vec3<bool>(false, false, true)), Struct_1(4294967295u, vec2<f32>(1319f, -2219f), 0u, vec3<bool>(false, false, false)), Struct_1(0u, vec2<f32>(1752f, -1850f), 15041u, vec3<bool>(true, false, true)), Struct_1(35452u, vec2<f32>(643f, 1767f), 0u, vec3<bool>(false, false, false)), Struct_1(4294967295u, vec2<f32>(-104f, 1000f), 21074u, vec3<bool>(true, true, true)), Struct_1(1u, vec2<f32>(623f, 1128f), 32388u, vec3<bool>(false, false, false)), Struct_1(1u, vec2<f32>(2241f, 1616f), 4294967295u, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec2<f32>(-900f, -1125f), 0u, vec3<bool>(true, true, true)), Struct_1(7444u, vec2<f32>(228f, -289f), 33674u, vec3<bool>(false, false, false)), Struct_1(1u, vec2<f32>(1359f, -655f), 0u, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec2<f32>(286f, -733f), 23857u, vec3<bool>(true, false, false)), Struct_1(4294967295u, vec2<f32>(-189f, 1066f), 0u, vec3<bool>(false, false, false)), Struct_1(16406u, vec2<f32>(3182f, -888f), 41157u, vec3<bool>(true, false, false)), Struct_1(0u, vec2<f32>(-137f, 1000f), 0u, vec3<bool>(false, true, true)), Struct_1(64414u, vec2<f32>(1477f, -266f), 0u, vec3<bool>(true, true, true)), Struct_1(0u, vec2<f32>(-177f, -910f), 7761u, vec3<bool>(false, true, false)), Struct_1(125290u, vec2<f32>(138f, 1396f), 1u, vec3<bool>(true, true, false)), Struct_1(63381u, vec2<f32>(-1000f, -434f), 4294967295u, vec3<bool>(true, true, true)), Struct_1(28276u, vec2<f32>(-979f, -984f), 0u, vec3<bool>(true, false, true)), Struct_1(10260u, vec2<f32>(603f, -265f), 17696u, vec3<bool>(true, false, true)), Struct_1(0u, vec2<f32>(1851f, 1575f), 65188u, vec3<bool>(true, false, true)), Struct_1(0u, vec2<f32>(1146f, -1254f), 0u, vec3<bool>(true, false, true)), Struct_1(1u, vec2<f32>(2286f, -995f), 0u, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec2<f32>(-799f, 1463f), 62147u, vec3<bool>(false, false, true)), Struct_1(1u, vec2<f32>(294f, 505f), 4294967295u, vec3<bool>(true, true, false)), Struct_1(4294967295u, vec2<f32>(634f, 746f), 26304u, vec3<bool>(true, true, true)), Struct_1(34915u, vec2<f32>(-1211f, -2462f), 48344u, vec3<bool>(false, true, false)), Struct_1(1u, vec2<f32>(-247f, -183f), 4294967295u, vec3<bool>(true, true, true)));

var<private> global2: array<f32, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(~global0.c, 30u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1115f, -290f)) - _wgslsmith_f_op_f32(ceil(-1040f))))) >= _wgslsmith_f_op_f32(abs(-419f));
    return ~_wgslsmith_sub_i32(u_input.e.x, ~2147483647i);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_1(countOneBits(arg_2.c), _wgslsmith_f_op_vec2_f32(ceil(global0.b)), u_input.d.x, vec3<bool>(all(!(!vec2<bool>(arg_2.d.x, arg_3.x))), !(!(u_input.b.x > arg_1)), true));
    let var_1 = Struct_1(53917u, arg_2.b, ~global0.c >> (firstTrailingBit(~_wgslsmith_div_u32(arg_2.c, global0.a)) % 32u), !(!select(select(vec3<bool>(arg_2.d.x, false, false), arg_2.d, var_0.d), select(var_0.d, vec3<bool>(var_0.d.x, arg_2.d.x, arg_2.d.x), arg_3.x), global0.d)));
    let var_2 = Struct_1(4294967295u, _wgslsmith_div_vec2_f32(vec2<f32>(1189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1350f - -552f) - _wgslsmith_f_op_f32(sign(1951f)))), arg_2.b), ~(global0.a << (global0.a % 32u)), vec3<bool>(false, var_1.d.x, false));
    global2 = array<f32, 6>();
    global1 = array<Struct_1, 30>();
    return firstTrailingBit(~u_input.d);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(~(~(53140u ^ ~u_input.d.x)) >> (_wgslsmith_sub_u32(abs(abs(0u)), _wgslsmith_dot_vec3_u32(arg_1.zxw, ~(~arg_1.yxx))) % 32u), 30u)];
    var var_1 = firstTrailingBit(func_3(max(vec3<i32>(select(-1i, u_input.b.x, arg_0.x), -33671i, -2050i), vec3<i32>(-2147483647i, func_2(vec4<f32>(global2[_wgslsmith_index_u32(global0.c, 6u)], 493f, global2[_wgslsmith_index_u32(u_input.d.x, 6u)], 163f), 4294967295u), ~(-8210i))), min(abs(-u_input.e.x), min(~u_input.a.x, 42605i << (global0.a % 32u))), Struct_1(var_0.c, vec2<f32>(1000f, global2[_wgslsmith_index_u32(u_input.d.x, 6u)]), ~0u, !vec3<bool>(arg_0.x, global0.d.x, global0.d.x)), vec4<bool>(all(select(arg_0, global0.d.xx, vec2<bool>(arg_0.x, false))), any(var_0.d), (global0.c | u_input.d.x) < _wgslsmith_sub_u32(var_0.c, 0u), var_0.d.x & !arg_0.x)));
    let var_2 = _wgslsmith_mult_u32(38699u, 1u);
    global0 = Struct_1(_wgslsmith_mod_u32(firstTrailingBit(abs(u_input.d.x)), 73813u) | 1u, _wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_mult_u32(~30222u, (arg_1.x | arg_1.x) >> (_wgslsmith_mult_u32(57422u, 43999u) % 32u)), select(select(!select(global0.d, arg_2.wzx, true), select(var_0.d, select(vec3<bool>(global0.d.x, false, global0.d.x), global0.d, false), vec3<bool>(arg_0.x, false, global0.d.x)), true), select(global0.d, vec3<bool>(true, false, arg_0.x), arg_0.x), var_0.d));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -236f))) - var_0.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, var_0.b.x))), 1692f), 1364f)));
    return ~vec3<u32>(68363u, abs(u_input.d.x), min(_wgslsmith_mod_u32(27781u, ~var_0.a), ~(~98679u)));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~27490u, 30u)];
    global1 = array<Struct_1, 30>();
    let var_1 = u_input.c;
    global0 = global1[_wgslsmith_index_u32(9638u, 30u)];
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(func_1(vec2<bool>(false, var_0.d.x), vec4<u32>(u_input.d.x, 22731u, 0u, arg_1.x), vec4<bool>(true, true, true, var_0.d.x)).x, arg_0 | u_input.d.x, var_0.a)), ((vec3<u32>(u_input.d.x, var_0.c, arg_1.x) & arg_1) << ((vec3<u32>(10523u, 0u, 4294967295u) ^ vec3<u32>(4294967295u, arg_0, u_input.d.x)) % vec3<u32>(32u))) << (vec3<u32>(18670u >> (1u % 32u), 1u, ~0u) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global0.b.x, global2[_wgslsmith_index_u32(var_0.c, 6u)]), var_0.b.x)) + vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.x + -324f))), _wgslsmith_f_op_f32(632f * _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(1u, 6u)]))))), arg_1.x, vec3<bool>(all(select(var_0.d, select(vec3<bool>(var_0.d.x, true, global0.d.x), global0.d, false), false && global0.d.x)), any(global0.d), true));
    return Struct_1(~(max(firstLeadingBit(30345u), 1u) >> (~(~arg_1.x) % 32u)), _wgslsmith_f_op_vec2_f32(trunc(var_2.b)), arg_0, vec3<bool>(!select(var_0.d.x, global0.d.x, false) | (-var_1 < _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 2111i, var_1, 41053i), u_input.e)), var_0.d.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(0u, 6u)]));
    let var_1 = func_4(u_input.d.x, func_1(global0.d.yz, _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global0.c, 1u, global0.c, 0u)), max(~vec4<u32>(u_input.d.x, global0.c, global0.c, global0.a), ~vec4<u32>(4294967295u, 0u, 34573u, 4294967295u))), vec4<bool>(global0.d.x, global0.d.x, any(vec3<bool>(true, global0.d.x, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, 0u), vec3<u32>(4294967295u, 44076u, u_input.d.x)) < 41380u)));
    global2 = array<f32, 6>();
    var var_2 = u_input.c;
    var var_3 = vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-24335i, -29265i, u_input.a.x, -2147483647i), u_input.e)), ~(-vec3<i32>(-1i, -5659i, 81210i)))), _wgslsmith_dot_vec2_i32(u_input.b.yw, u_input.e.yy ^ -firstTrailingBit(vec2<i32>(u_input.e.x, -1i))), 2147483647i, _wgslsmith_mult_i32(abs(70061i ^ ~u_input.c), reverseBits(-8348i)));
    global0 = Struct_1(countOneBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.d.x), 0u), ~_wgslsmith_div_u32(4294967295u, 49276u))), global0.b, countOneBits(~global0.a), vec3<bool>(select(true, all(select(vec4<bool>(global0.d.x, var_1.d.x, true, true), vec4<bool>(global0.d.x, true, true, global0.d.x), global0.d.x)), true), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), select(global0.d, vec3<bool>(var_1.d.x, true, var_1.d.x), global0.d.x))), !(!global0.d.x) && var_1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(-func_2(vec4<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(global0.c, 6u)], -1050f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(23211u, 6u)] - global0.b.x), var_0, _wgslsmith_f_op_f32(min(2382f, 525f))), 20375u & global0.c), var_1.c);
}

