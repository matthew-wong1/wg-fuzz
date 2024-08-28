struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-666f, 239f, -1000f, -833f, 547f, 1355f, -345f);

var<private> global1: u32 = 4294967295u;

var<private> global2: array<i32, 23> = array<i32, 23>(-1i, 910i, 0i, -28770i, 25956i, 2147483647i, 0i, 1i, 35153i, -31655i, -41952i, 1i, 33594i, -43181i, 2147483647i, 2147483647i, 1i, -39474i, -11267i, 0i, 1i, 17646i, -17262i);

var<private> global3: array<bool, 31> = array<bool, 31>(true, false, true, false, false, true, false, true, false, true, false, false, false, false, false, false, true, true, false, true, true, false, false, true, false, false, false, false, true, true, false);

var<private> global4: array<f32, 21> = array<f32, 21>(1055f, -376f, 295f, -1012f, 674f, 2273f, 747f, 1449f, 110f, 2143f, -1810f, -1239f, -2693f, 1300f, -1139f, 523f, 1216f, 851f, -1801f, 124f, 2272f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    global4 = array<f32, 21>();
    let var_0 = -41977i;
    global2 = array<i32, 23>();
    let var_1 = 1i;
    var var_2 = vec3<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(85570u), select(11845u, 9256u, global3[_wgslsmith_index_u32(arg_0, 31u)])), 31u)], false, false)), any(vec4<bool>(true, true, true, true)), true);
    return -abs(vec3<i32>(var_1 | _wgslsmith_clamp_i32(-1i, -61109i, 14824i), firstLeadingBit(-7230i), 30288i));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(32570u, ~u_input.b);
    let var_1 = ~(u_input.a.yy << ((vec2<u32>(4294967295u, 18630u) << (countOneBits(vec2<u32>(var_0.a, 3191u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = array<f32, 7>();
    var var_2 = global2[_wgslsmith_index_u32(~(var_0.b.x | (1u >> (~(~u_input.b.x) % 32u))), 23u)];
    let var_3 = firstLeadingBit(~(-func_3(0u)));
    return var_0;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(func_2(u_input.c), Struct_1(7456u, u_input.b));
    global1 = 0u;
    global2 = array<i32, 23>();
    var var_1 = reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, var_0.a.a, 42148u) & vec4<u32>(4294967295u, var_0.b.a, 64154u, 4294967295u), ~vec4<u32>(u_input.b.x, var_0.b.a, var_0.b.b.x, var_0.b.a), _wgslsmith_add_vec4_u32(~vec4<u32>(38943u, 61380u, u_input.b.x, 19340u), ~vec4<u32>(var_0.b.b.x, u_input.b.x, 1u, u_input.b.x))), vec4<u32>(u_input.b.x | u_input.b.x, 1u, max(80656u, 33840u), ~u_input.b.x) | vec4<u32>(var_0.b.b.x, ~36363u, ~u_input.b.x, func_2(-7710i).b.x)));
    let var_2 = func_2(_wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(28307i, u_input.a.x, u_input.c)), func_3(~4294967295u)) & _wgslsmith_dot_vec2_i32(u_input.a.wx, u_input.a.wy));
    return Struct_2(func_2(-reverseBits(u_input.c) ^ -global2[_wgslsmith_index_u32(4294967295u, 23u)]), var_2);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = vec3<i32>(u_input.a.x, abs(abs(~1i) << (_wgslsmith_add_u32(1u ^ arg_0.a.a, 35997u) % 32u)), 2147483647i);
    let var_2 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u << (var_0.b.a % 32u), 7u)] - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~(~110672u), 21u)]));
    let var_3 = (firstLeadingBit(vec3<u32>(1u, _wgslsmith_mult_u32(var_0.a.b.x, arg_0.a.b.x), _wgslsmith_sub_u32(16732u, 1u))) >> (~vec3<u32>(abs(4294967295u), var_0.a.b.x >> (u_input.b.x % 32u), ~22015u) % vec3<u32>(32u))) ^ func_1().b.b;
    global4 = array<f32, 21>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), max(func_3(~(u_input.b.x | 1u)).x, ~32626i));
    var var_1 = func_4(var_0, ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, 2147483647i, 13501i)), abs(u_input.a.yxx)));
    let var_2 = -149f;
    var var_3 = func_1().a;
    var_1 = Struct_2(var_0.a, var_0.b);
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(989f * -1172f), var_2) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1052f, global4[_wgslsmith_index_u32(var_0.b.b.x, 21u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(abs(var_2)))), !vec2<bool>(true, 94364u > var_3.a)))));
    let var_5 = firstTrailingBit(~min(-vec2<i32>(-1i, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec2<i32>(global2[_wgslsmith_index_u32(83434u, 23u)], -11579i))) >> (var_3.b.xy % vec2<u32>(32u));
    let var_6 = var_0.b.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1137f), global0[_wgslsmith_index_u32(reverseBits(~(4294967295u & var_6.x)), 7u)]), -(~_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(0u, 23u)]), var_5), var_5, vec2<i32>(var_5.x, -11142i))), vec4<i32>(~global2[_wgslsmith_index_u32(20046u, 23u)], _wgslsmith_mod_i32(-30423i, _wgslsmith_clamp_i32(abs(u_input.c), 34010i, ~(-2147483647i))), 41189i, 1i));
}

