struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec2<u32>(30752u, 43992u), vec3<u32>(40357u, 0u, 4294967295u), vec4<f32>(-1044f, -188f, -1992f, -177f), 0i), Struct_2(vec2<u32>(0u, 12985u), vec3<u32>(0u, 4294967295u, 55042u), vec4<f32>(-593f, -969f, 355f, -581f), -1302i));

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(false, 91122u, 4294967295u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec3<i32>) -> i32 {
    let var_0 = vec2<bool>(global2.a, true || global2.a);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1415f + -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f + -173f)))), 583f));
    let var_2 = -6108i;
    let var_3 = (false | ((all(vec2<bool>(true, global2.a)) & global2.a) && true)) && false;
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.b.x, 88464u), 2u)];
    return firstTrailingBit(_wgslsmith_dot_vec3_i32(~abs(-vec3<i32>(1i, 46905i, -1i)), abs(arg_3 | vec3<i32>(27617i, var_2, arg_3.x))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = ~u_input.b;
    return Struct_2(vec2<u32>(0u | _wgslsmith_div_u32(var_0.x, arg_0 << (global2.c % 32u)), ~(~min(u_input.d, var_0.x))), u_input.b & vec3<u32>(u_input.c.x, global2.b, ~(9109u & global2.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(542f, -1288f, -704f, 1183f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2970f, -1062f, 867f, 746f) + vec4<f32>(-836f, 306f, 890f, -1374f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-224f, 1140f, 1038f, 1000f))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-757f, -1368f, 1585f, 813f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, -603f, -1074f, 836f) - vec4<f32>(2516f, 1714f, -350f, 1078f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-511f, -1000f, 140f, 1000f), vec4<f32>(1000f, 1124f, 136f, 236f))))))), func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1874f))), 681f, _wgslsmith_f_op_f32(max(427f, _wgslsmith_f_op_f32(223f - 1842f)))), max(~(~vec4<u32>(75340u, arg_0, var_0.x, arg_0)), vec4<u32>(89962u, 13756u, 58574u << (global2.c % 32u), ~u_input.b.x)), global0[_wgslsmith_index_u32(var_0.x, 2u)], _wgslsmith_div_vec3_i32(~vec3<i32>(-1i, arg_3, u_input.a), -select(vec3<i32>(-30216i, arg_3, 13133i), vec3<i32>(arg_3, -3801i, u_input.a), true))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = select(!select(vec4<bool>(true, true, true, global2.a & global2.a), !(!vec4<bool>(global2.a, false, true, global2.a)), !select(vec4<bool>(false, false, true, false), vec4<bool>(global2.a, global2.a, global2.a, global2.a), true)), select(select(!select(vec4<bool>(false, true, global2.a, global2.a), vec4<bool>(global2.a, global2.a, false, global2.a), false), !vec4<bool>(global2.a, true, true, false), select(select(vec4<bool>(global2.a, true, false, global2.a), vec4<bool>(global2.a, false, global2.a, true), global2.a), select(vec4<bool>(false, global2.a, true, false), vec4<bool>(true, global2.a, global2.a, global2.a), global2.a), !vec4<bool>(global2.a, global2.a, true, global2.a))), select(vec4<bool>(global2.a, !global2.a, true, any(vec4<bool>(global2.a, false, true, true))), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, global2.a, global2.a, global2.a), vec4<bool>(global2.a, true, global2.a, global2.a)), !vec4<bool>(false, global2.a, true, global2.a)), !vec4<bool>(!global2.a, false, global2.a, !global2.a)), true);
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    let var_1 = i32(-1i) * -_wgslsmith_div_i32(arg_1.d << ((arg_1.a.x >> (4294967295u % 32u)) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d, 30261i), vec2<i32>(u_input.a, -1i))));
    global0 = array<Struct_2, 2>();
    return global2.a;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    global1 = ~global2.b;
    global1 = 1u;
    return Struct_1(!(!func_4(31830i << (global2.b % 32u), func_2(u_input.b.x, true, vec3<bool>(false, global2.a, false), arg_0.d))), _wgslsmith_sub_u32(arg_2.x, _wgslsmith_mod_u32(countOneBits(min(35038u, arg_0.b.x)), max(_wgslsmith_div_u32(814u, arg_2.x), 0u))), 49514u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(reverseBits(global2.b ^ 24797u), 2u)], !(true == global2.a), ~(~u_input.b));
    var var_1 = select(all(select(!vec3<bool>(false, global2.a, var_0.a), vec3<bool>(true, false, true), var_0.a)), true, var_0.a);
    var var_2 = u_input.b;
    let var_3 = vec4<bool>(global2.a, !all(vec3<bool>(true, true, true)), var_0.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(select(u_input.b, ~u_input.b, false), max(u_input.b, u_input.b) >> (u_input.b % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1690f, -863f))))), var_2.x & (global2.c | 0u), vec4<u32>(var_2.x, ~23131u, _wgslsmith_clamp_u32(global2.c, ~(~52474u), 1u), _wgslsmith_sub_u32(~global2.c, 38306u)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-887f - 868f), -605f), _wgslsmith_f_op_f32(round(-1097f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-887f)) - -684f), 1939f), _wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(0u, global2.a, vec3<bool>(false, global2.a, var_0.a), -14042i).c.x - -714f), _wgslsmith_f_op_f32(f32(-1f) * -1618f))));
}

