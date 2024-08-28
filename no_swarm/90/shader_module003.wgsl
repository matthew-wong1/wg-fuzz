struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(60593i, 10807u, true);

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec2<f32>(-248f, -1036f)), Struct_3(vec2<f32>(842f, -990f)), Struct_3(vec2<f32>(951f, 815f)), Struct_3(vec2<f32>(-860f, -557f)), Struct_3(vec2<f32>(-476f, -109f)), Struct_3(vec2<f32>(550f, -959f)), Struct_3(vec2<f32>(-1000f, 131f)), Struct_3(vec2<f32>(1000f, -298f)), Struct_3(vec2<f32>(2354f, -873f)), Struct_3(vec2<f32>(-1897f, 667f)), Struct_3(vec2<f32>(-1000f, 1186f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_2(select(-1i, global0.a, global0.c), ~(~u_input.a.x), !any(vec3<bool>(!global0.c, true, true)));
    let var_1 = (-global0.a >= firstTrailingBit(-2147483647i)) & select(var_0.c, !any(select(vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(true, false, var_0.c))), select(select(global0.b, 4294967295u, true) > firstLeadingBit(22324u), true, global0.c));
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    let var_2 = true;
    return true | select(var_2, var_0.c, true);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3), 1000f, u_input.a.x >= 24951u)))));
    var var_1 = -1i;
    var var_2 = Struct_2(34358i, ~(~firstTrailingBit(1u ^ arg_2.a)), !select(all(vec2<bool>(true, global0.c)) && false, any(vec4<bool>(true, global0.c, true, true)), all(select(vec4<bool>(global0.c, false, true, global0.c), vec4<bool>(global0.c, global0.c, global0.c, global0.c), vec4<bool>(global0.c, true, true, true)))));
    let var_3 = all(select(select(!select(vec4<bool>(true, true, var_2.c, global0.c), vec4<bool>(true, global0.c, global0.c, global0.c), true), vec4<bool>(true, func_3(), any(vec3<bool>(global0.c, true, var_2.c)), !var_2.c), select(!vec4<bool>(global0.c, var_2.c, true, true), select(vec4<bool>(global0.c, false, false, var_2.c), vec4<bool>(global0.c, true, false, true), var_2.c), vec4<bool>(false, global0.c, global0.c, true))), vec4<bool>(var_0.x > _wgslsmith_div_f32(arg_3, -1642f), !(!var_2.c), !global0.c || (true && var_2.c), true), any(!(!vec4<bool>(false, false, var_2.c, var_2.c)))));
    var var_4 = arg_2;
    return _wgslsmith_div_i32(43333i, _wgslsmith_sub_i32(arg_0, arg_0));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    global0 = Struct_2(func_2(~(0i << (_wgslsmith_add_u32(u_input.a.x, 0u) % 32u)), ~(~1u), arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), 58905u, (global0.c || true) | all(select(vec4<bool>(global0.c, false, global0.c, false), select(vec4<bool>(global0.c, global0.c, true, global0.c), vec4<bool>(false, global0.c, false, false), global0.c), vec4<bool>(true, false, global0.c, false))));
    global0 = Struct_2(-(~arg_0.x) | select(~1833i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(global0.a, global0.a), vec2<i32>(3704i, arg_0.x)), vec2<i32>(arg_3.b.x, global0.a)), arg_2.x > 53043u), ~_wgslsmith_add_u32(abs(firstLeadingBit(1u)), ~u_input.a.x), !global0.c);
    let var_0 = Struct_2(2845i, select(~(~global0.b), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_2.x, 4294967295u), u_input.a.x), u_input.a.zz), 272f >= arg_1.a.x), _wgslsmith_mod_u32(reverseBits(firstTrailingBit(u_input.a.x)), arg_2.x) <= 4294967295u);
    global1 = array<Struct_3, 11>();
    global0 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-309f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(vec4<i32>(2147483647i, 2147483647i, global0.a, global0.a), global1[_wgslsmith_index_u32(1u, 11u)], vec4<u32>(global0.b, global0.b, u_input.a.x, 27722u), Struct_1(1834u, vec3<i32>(global0.a, -16333i, 23893i)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1659f - -1360f))))));
    global0 = Struct_2(select(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.a, 1i, -2147483647i), vec4<i32>(0i, -2147483647i, 2147483647i, -20061i)), global0.a, select(-2147483647i != global0.a, any(vec2<bool>(true, false)), global0.c | global0.c)) & global0.a, global0.b, -538f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(round(-787f)))));
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    var var_1 = Struct_1(max(39113u, 39920u), ~select(-select(vec3<i32>(80164i, global0.a, -62704i), vec3<i32>(-2147483647i, -2147483647i, global0.a), false), vec3<i32>(13724i, global0.a, reverseBits(global0.a)), !global0.c));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~min(1u, _wgslsmith_mult_u32(1u, 1u)), ~u_input.a.x, 35976u | select(1u, 1u, select(global0.c, false, global0.c))), min(~global0.b, u_input.a.x)), 11u)];
    let var_3 = select(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(3518i, var_1.b.x, global0.a, -1i), -vec4<i32>(global0.a, var_1.b.x, global0.a, global0.a), vec4<i32>(-34695i, -2147483647i, global0.a, var_1.b.x)) << (abs(abs(vec4<u32>(6817u, global0.b, 27466u, 33728u))) % vec4<u32>(32u))), vec4<i32>(var_1.b.x, -(~(-2147483647i)), -18658i | ~(~var_1.b.x), firstLeadingBit(var_1.b.x >> ((var_1.a >> (var_1.a % 32u)) % 32u))), select(!(!select(vec4<bool>(true, global0.c, false, global0.c), vec4<bool>(false, global0.c, false, false), vec4<bool>(global0.c, global0.c, global0.c, false))), vec4<bool>(true, true, true, true), select(select(!vec4<bool>(true, global0.c, global0.c, true), vec4<bool>(global0.c, global0.c, global0.c, global0.c), !vec4<bool>(false, global0.c, global0.c, global0.c)), select(select(vec4<bool>(global0.c, false, global0.c, global0.c), vec4<bool>(false, true, false, true), false), select(vec4<bool>(global0.c, global0.c, true, true), vec4<bool>(false, true, true, true), global0.c), any(vec4<bool>(global0.c, global0.c, false, global0.c))), select(vec4<bool>(false, true, global0.c, true), vec4<bool>(false, global0.c, true, false), true))));
    var var_4 = 19308u & ~min(_wgslsmith_sub_u32(var_1.a, 14485u), global0.b);
    var var_5 = _wgslsmith_dot_vec2_i32((~_wgslsmith_mod_vec2_i32(vec2<i32>(25964i, -1i), vec2<i32>(7867i, var_3.x)) << (vec2<u32>(40365u, ~u_input.a.x) % vec2<u32>(32u))) | vec2<i32>(countOneBits(global0.a) & -2147483647i, ~(2147483647i << (var_1.a % 32u))), var_1.b.xx & var_3.wy);
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(_wgslsmith_clamp_u32(39017u, ~var_1.a, abs(4294967295u)), global0.b, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1110f, 948f, 872f, 442f), vec4<f32>(var_0, -429f, 1754f, var_2.a.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, -1079f) + vec4<f32>(317f, -352f, -366f, var_2.a.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1075f, _wgslsmith_f_op_f32(sign(var_0)), var_0, var_2.a.x))));
}

