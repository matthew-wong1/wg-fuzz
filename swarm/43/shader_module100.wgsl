struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<u32>;

var<private> global2: vec3<u32> = vec3<u32>(77510u, 88002u, 0u);

var<private> global3: array<Struct_1, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = true;
    var var_1 = Struct_2(4294967295u, Struct_1(select(select(!vec2<bool>(arg_3.d.b.a.x, true), select(vec2<bool>(arg_2.x, true), vec2<bool>(arg_1.a.x, arg_2.x), false), arg_2.x), select(vec2<bool>(false, arg_1.a.x), !arg_2.xz, !arg_3.d.d.a.x), vec2<bool>(!arg_1.a.x, arg_1.a.x))), true, global3[_wgslsmith_index_u32(countOneBits(u_input.c), 23u)], ~_wgslsmith_add_u32(~0u, 0u) != global2.x);
    let var_2 = _wgslsmith_sub_i32(-_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 5641i), ~vec3<i32>(-57119i, -41569i, u_input.e)), ~select(u_input.e, -2147483647i, var_1.b.a.x)), min(firstTrailingBit(-4240i), u_input.e));
    global2 = min(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, ~(~global2.x), 24666u), ~(~(global1.zwx >> (global1.xwx % vec3<u32>(32u))))), global1.yyz);
    let var_3 = Struct_3(Struct_1(select(select(arg_2.zx, vec2<bool>(true, arg_2.x), !var_1.d.a), arg_3.d.d.a, var_1.b.a)), _wgslsmith_f_op_f32(sign(arg_3.b)), 12602u, Struct_2(reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.xz, global2.yy, global2.yz), reverseBits(global1.wy))), Struct_1(arg_3.a.a), any(vec4<bool>(-1060f >= arg_0, !arg_2.x, true, true)), Struct_1(select(select(arg_2.xx, vec2<bool>(arg_2.x, false), true), !var_1.b.a, arg_1.a.x)), true));
    return select(select(select(vec4<bool>(true, false | arg_2.x, true, true), !vec4<bool>(var_3.a.a.x, true, var_1.d.a.x, true), false), vec4<bool>(!all(vec3<bool>(true, true, false)), var_3.d.c, any(vec4<bool>(arg_1.a.x, var_1.d.a.x, false, arg_1.a.x)), any(vec2<bool>(var_3.d.b.a.x, false))), !vec4<bool>(var_1.d.a.x, true, var_3.a.a.x & var_1.e, arg_2.x)), select(!vec4<bool>(all(vec4<bool>(arg_2.x, arg_3.a.a.x, arg_3.d.c, true)), true, !arg_2.x, arg_1.a.x), select(vec4<bool>(arg_1.a.x, arg_2.x & arg_1.a.x, true, true), select(vec4<bool>(arg_2.x, true, false, var_3.a.a.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, arg_1.a.x, false, var_1.b.a.x), var_1.b.a.x), select(vec4<bool>(false, true, var_1.c, arg_2.x), vec4<bool>(true, arg_1.a.x, false, true), false)), any(vec4<bool>(false, arg_2.x, true, true))), all(arg_2)), all(select(select(vec3<bool>(arg_3.a.a.x, arg_1.a.x, var_1.c), select(arg_2, arg_2, arg_1.a.x), select(arg_2, arg_2, arg_1.a.x)), arg_2, arg_2.x)));
}

fn func_2() -> Struct_3 {
    global3 = array<Struct_1, 23>();
    var var_0 = !vec4<bool>((0i < (6462i & u_input.e)) & all(func_3(778f, global3[_wgslsmith_index_u32(119463u, 23u)], vec3<bool>(false, false, false), Struct_3(Struct_1(vec2<bool>(false, true)), -684f, u_input.c, Struct_2(u_input.c, Struct_1(vec2<bool>(false, false)), true, global3[_wgslsmith_index_u32(45901u, 23u)], false)))), false, true, any(vec4<bool>(true, all(vec4<bool>(false, true, true, false)), false, true)));
    var var_1 = _wgslsmith_f_op_f32(2682f + _wgslsmith_f_op_f32(f32(-1f) * -511f));
    var var_2 = _wgslsmith_mult_i32(~(-u_input.b), -14701i);
    return Struct_3(Struct_1(!(!vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1012f * _wgslsmith_div_f32(-722f, -600f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(833f, -822f) + _wgslsmith_f_op_f32(-1430f - -681f)))))), global2.x, Struct_2(0u | u_input.c, global3[_wgslsmith_index_u32(~u_input.d, 23u)], abs(u_input.e) == u_input.b, Struct_1(!func_3(-1604f, global3[_wgslsmith_index_u32(1u, 23u)], var_0.yxw, Struct_3(Struct_1(vec2<bool>(var_0.x, var_0.x)), 789f, 17492u, Struct_2(u_input.d, Struct_1(var_0.wx), var_0.x, global3[_wgslsmith_index_u32(67861u, 23u)], var_0.x))).yy), !var_0.x));
}

fn func_1() -> u32 {
    var var_0 = ~(global1.zyy & vec3<u32>(global1.x, global2.x, ~(~4294967295u)));
    var var_1 = func_2();
    var_0 = (_wgslsmith_sub_vec3_u32(~(vec3<u32>(2475u, global1.x, 24585u) ^ global1.xwy), global1.zzz) ^ _wgslsmith_add_vec3_u32(vec3<u32>(abs(7863u), countOneBits(1u), 4294967295u), ~(~vec3<u32>(var_0.x, global2.x, 50047u)))) | ~min(firstTrailingBit(~global1.zzz), vec3<u32>(~global2.x, ~global2.x, abs(global1.x)));
    global1 = abs(select(~(vec4<u32>(var_1.c, 0u, 46522u, 52798u) ^ vec4<u32>(1228u, 76199u, 26959u, global2.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global1.x, global2.x, var_1.d.a), vec4<u32>(global1.x, var_1.d.a, 10814u, 4294967295u)), var_1.a.a.x) | select(_wgslsmith_clamp_vec4_u32(vec4<u32>(30107u, global2.x, global2.x, 31406u) ^ vec4<u32>(var_1.d.a, 4294967295u, var_0.x, u_input.d), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, var_0.x, global2.x, var_0.x), vec4<u32>(4294967295u, global1.x, global2.x, 84492u)), firstTrailingBit(vec4<u32>(var_1.c, global1.x, var_0.x, 32198u))), vec4<u32>(var_1.c, 53675u, 4294967295u, 0u) | min(vec4<u32>(var_1.c, u_input.d, 29760u, var_0.x), vec4<u32>(11405u, var_0.x, 4294967295u, 1u)), false));
    global2 = global1.wyy;
    return _wgslsmith_mod_u32(~32791u, 56614u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.x, 0u, abs(0u), min(func_1(), ~max(u_input.d, global1.x))), abs(vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(global1.x), ~0u), 20307u, _wgslsmith_mod_u32(~u_input.d, func_1()), firstTrailingBit(global2.x ^ u_input.c))));
    var var_1 = Struct_3(func_2().a, 1365f, 28430u, Struct_2(global1.x, global3[_wgslsmith_index_u32(1u >> (0u % 32u), 23u)], !(2147483647i != u_input.a) && true, func_2().d.d, all(vec4<bool>(true, false, false, true)) | true));
    let x = u_input.a;
    s_output = StorageBuffer(~25466u);
}

