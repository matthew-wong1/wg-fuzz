struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: f32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = false;
    return -1188f;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1439f, -118f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1037f, -1828f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-961f, 499f, 789f, 1000f) + vec4<f32>(1140f, -1169f, -1000f, -776f)))), arg_0))));
    global1 = countOneBits(abs(vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(21334i, u_input.a))) & (-vec2<i32>(-1i, -25548i) << (_wgslsmith_add_vec2_u32(vec2<u32>(0u, global0.c), vec2<u32>(4294967295u, global0.c)) % vec2<u32>(32u)))));
    let var_0 = Struct_1(~(~u_input.b & (max(u_input.b, 41477u) | select(u_input.b, global0.a, true))), ~u_input.b, global0.b, global0.d);
    var var_1 = vec3<bool>(true, any(vec3<bool>(select(any(global0.d), true, global0.d.x), !arg_0.d.x, false)), all(vec3<bool>(arg_0.d.x, all(select(vec2<bool>(false, true), var_0.d, global0.d)), false)));
    var var_2 = Struct_1(4294967295u, _wgslsmith_dot_vec4_u32(~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, 1u, var_0.a, 4294967295u), vec4<u32>(arg_0.b, 1u, 1u, 1u))), _wgslsmith_add_vec4_u32(vec4<u32>(76791u, var_0.a, var_0.b, var_0.b) | min(vec4<u32>(global0.b, arg_0.a, u_input.b, 1u), vec4<u32>(1u, global0.a, 76066u, 32934u)), abs(vec4<u32>(global0.b, var_0.a, global0.c, u_input.b)) & _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, global0.a, u_input.b), vec4<u32>(1u, var_0.c, 0u, 1u)))), countOneBits(select(_wgslsmith_dot_vec2_u32(vec2<u32>(14444u, 29777u), vec2<u32>(34491u, u_input.b)), ~arg_0.b, true)) ^ _wgslsmith_add_u32(0u, min(56033u, ~u_input.b)), select(vec2<bool>(var_0.d.x | !arg_0.d.x, false), select(vec2<bool>(var_0.d.x && false, true), !var_1.zx, var_0.d), vec2<bool>(true, any(vec4<bool>(false, var_0.d.x, false, global0.d.x)) | global0.d.x)));
    return firstLeadingBit(~(1u | global0.c));
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(16493u, _wgslsmith_mod_u32(53133u, 1u) << (global0.c % 32u), u_input.b, func_2(Struct_1(0u, global0.c, u_input.b, vec2<bool>(global0.d.x, true)))), vec4<u32>(_wgslsmith_div_u32(min(u_input.b, 4294967295u), min(24998u, u_input.b)), ~(~u_input.b), reverseBits(1u), 8730u)), _wgslsmith_dot_vec2_u32(~max(vec2<u32>(4294967295u, global0.c), vec2<u32>(23635u, 100481u)), ~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(global0.b, 4294967295u)) ^ (vec2<u32>(u_input.b, 19348u) | vec2<u32>(73640u, 4294967295u)))), global0.c, select(!vec2<bool>(all(global0.d), all(vec3<bool>(global0.d.x, false, true))), global0.d, !(!select(global0.d, vec2<bool>(true, global0.d.x), global0.d))));
    var var_1 = select(select(select(select(vec2<bool>(true, true), select(global0.d, vec2<bool>(var_0.d.x, true), vec2<bool>(false, true)), var_0.d.x), var_0.d, false), select(vec2<bool>(var_0.d.x, all(vec2<bool>(var_0.d.x, true))), select(var_0.d, global0.d, select(vec2<bool>(global0.d.x, false), var_0.d, var_0.d.x)), var_0.d.x), global0.d), vec2<bool>(!var_0.d.x & any(vec2<bool>(true, true)), var_0.d.x), !vec2<bool>(global0.d.x, var_0.d.x));
    global1 = vec2<i32>(-1i, firstTrailingBit(-min(firstLeadingBit(global1.x), abs(global1.x))));
    let var_2 = var_0.a;
    var var_3 = vec3<i32>(abs(-(~(~(-28736i)))), _wgslsmith_mult_i32(u_input.a, i32(-1i) * -(~u_input.a)), abs(0i));
    return vec2<bool>(!global0.d.x, true);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(~(~func_2(Struct_1(1u, 0u, arg_1.b, vec2<bool>(false, arg_1.d.x)))), arg_1.b, ~arg_1.c, vec2<bool>(!arg_1.d.x, !(arg_0.x <= (i32(-1i) * -2147483647i))));
    var var_1 = arg_0;
    var var_2 = vec3<u32>(abs(1u), 4294967295u, global0.a);
    let var_3 = arg_1;
    var var_4 = Struct_1(35764u, _wgslsmith_div_u32(~var_2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 30597u), min(firstLeadingBit(var_2.xy), ~var_2.xy))), _wgslsmith_mod_u32(6743u, var_0.b), !(!select(select(global0.d, vec2<bool>(var_3.d.x, true), var_3.d.x), vec2<bool>(global0.d.x, false), global0.d.x)));
    return Struct_1(69996u, 62210u, global0.c, var_4.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    global2 = 530f;
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 0u, 81640u), vec3<u32>(58704u, ~global0.a, u_input.b) ^ (~vec3<u32>(u_input.b, 0u, 28863u) ^ select(vec3<u32>(0u, 1u, 3956u), vec3<u32>(0u, u_input.b, u_input.b), false))), 1u, u_input.b, !select(global0.d, vec2<bool>(global0.d.x, var_0.x != 590f), vec2<bool>(true, false)));
    let var_2 = !vec2<bool>(true, any(select(select(vec4<bool>(true, false, false, global0.d.x), vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, global0.d.x), vec4<bool>(global0.d.x, false, false, false)), vec4<bool>(true, false, var_1.d.x, true), false)));
    var var_3 = func_4(-(select(~vec3<i32>(u_input.a, -168i, global1.x), vec3<i32>(8138i, global1.x, -13053i), vec3<bool>(global0.d.x, true, var_1.d.x)) & ~vec3<i32>(2147483647i, 2147483647i, global1.x)), Struct_1(global0.c, 1u, 0u ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 24688u, 4294967295u, var_1.c), vec4<u32>(global0.a, global0.a, u_input.b, 38236u)) & global0.a), func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -225f), -225f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1083f - 1481f), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 39838u, 4294967295u), vec3<u32>(1u, var_3.c, 4294967295u)), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global0.b, var_3.b, global0.a), vec3<u32>(1u, 54022u, 36444u)))) ^ _wgslsmith_add_vec3_u32(vec3<u32>(min(global0.a, 4294967295u), abs(0u), 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(25275u, 1u, u_input.b), vec3<u32>(980u, 0u, 22347u))), ~(~_wgslsmith_mult_u32(1u, firstLeadingBit(global0.a))));
}

