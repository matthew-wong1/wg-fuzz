struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(30675u, 1u, 116587u);

var<private> global1: Struct_1 = Struct_1(true, vec2<bool>(false, true));

var<private> global2: array<vec2<f32>, 14>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_0.a, !arg_0.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1171f, 2057f, 1686f, 1427f)), vec4<f32>(329f, 815f, -207f, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1093f, -298f, -414f, -1046f) + vec4<f32>(1130f, 120f, -1042f, -599f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 618f, 804f, 347f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-697f, -309f, 1195f, -1150f))), _wgslsmith_div_vec4_f32(vec4<f32>(387f, -1000f, 721f, -1000f), vec4<f32>(364f, -1703f, -1000f, 1281f)))))))));
    global1 = arg_0;
    let var_2 = vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, -u_input.b.x), ~u_input.a));
    var var_3 = arg_0;
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(select(~global0.x, ~global0.x, var_0.a), ~(~global0.x)), global0.x) << (_wgslsmith_add_u32(global0.x, (global0.x | 0u) << (_wgslsmith_add_u32(~4294967295u, firstLeadingBit(1u)) % 32u)) % 32u);
}

fn func_2() -> vec4<bool> {
    var var_0 = ~func_3(Struct_1(global1.a == true, !vec2<bool>(global1.b.x, global1.b.x))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(global0.x, global0.x), ~min(global0.x, 49228u), 29413u, global0.x), max(~max(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(global0.x, 1u, global0.x, 54649u)), firstTrailingBit(abs(vec4<u32>(44971u, 4294967295u, 4294967295u, global0.x))))) % 32u);
    global0 = ~(_wgslsmith_add_vec3_u32(select(vec3<u32>(45780u, global0.x, global0.x), vec3<u32>(global0.x, global0.x, 4294967295u) | vec3<u32>(global0.x, global0.x, global0.x), select(vec3<bool>(false, true, false), vec3<bool>(false, global1.b.x, false), vec3<bool>(false, true, global1.b.x))), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(global0.x, 4294967295u, global0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, 83360u), vec3<u32>(global0.x, 4294967295u, 37137u)))) >> (vec3<u32>(38678u, ~global0.x, _wgslsmith_clamp_u32(4294967295u, ~1u, global0.x)) % vec3<u32>(32u)));
    var var_1 = Struct_1(true, select(vec2<bool>(true, true), vec2<bool>(true, all(select(global1.b, vec2<bool>(global1.a, global1.b.x), global1.b.x))), global1.b.x == true));
    let var_2 = firstLeadingBit(firstLeadingBit(u_input.a.x));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.x, global0.x), 4294967295u);
    return !(!select(!(!vec4<bool>(false, false, true, var_1.a)), vec4<bool>(true, false, false, true), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~(~vec4<u32>(4480u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, arg_2.x, global0.x) << (vec3<u32>(global0.x, 1u, arg_2.x) % vec3<u32>(32u)), abs(vec3<u32>(arg_2.x, 4294967295u, arg_2.x))), arg_2.x, arg_2.x));
    global1 = Struct_1(true, vec2<bool>(true, all(vec4<bool>(true, true, true, arg_3.b.x))));
    global1 = Struct_1(true || arg_1.x, global1.b);
    var var_1 = arg_3;
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global0.x, global0.x), ~1u, 104939u, global0.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 9537u, global0.x, 94092u), vec4<u32>(4542u, global0.x, 2965u, global0.x))));
    var var_1 = func_4(Struct_1(true, select(arg_0.b, vec2<bool>(true, u_input.a.x > u_input.b.x), !func_2().x)), !func_2(), ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0, 126789u), vec3<u32>(4294967295u, var_0, var_0)), firstTrailingBit(vec3<u32>(1u, var_0, var_0)))), func_4(Struct_1(true, !(!arg_3.b)), select(!select(vec4<bool>(arg_0.b.x, true, global1.a, false), vec4<bool>(false, false, arg_3.b.x, true), arg_3.a), vec4<bool>(arg_3.b.x, all(vec3<bool>(false, true, arg_2.b.x)), true, global0.x < var_0), vec4<bool>(1u < var_0, false, arg_2.b.x, any(vec3<bool>(true, false, false)))), vec3<u32>(var_0, 42775u, _wgslsmith_add_u32(66364u, 86081u) << ((4294967295u | global0.x) % 32u)), func_4(func_4(arg_0, select(vec4<bool>(arg_2.b.x, arg_2.a, false, true), vec4<bool>(arg_2.b.x, true, arg_3.a, arg_0.a), true), _wgslsmith_div_vec3_u32(vec3<u32>(6054u, 4294967295u, 1u), vec3<u32>(1u, var_0, global0.x)), func_4(arg_2, vec4<bool>(arg_0.a, arg_2.a, arg_2.b.x, arg_2.b.x), vec3<u32>(global0.x, 72971u, var_0), arg_2)), select(vec4<bool>(true, false, false, arg_0.b.x), vec4<bool>(arg_1, arg_1, arg_2.a, global1.a), !vec4<bool>(false, arg_2.b.x, arg_2.b.x, true)), ~(~vec3<u32>(1u, 1u, var_0)), func_4(arg_2, vec4<bool>(arg_1, true, true, false), ~vec3<u32>(global0.x, var_0, 4294967295u), Struct_1(arg_2.b.x, global1.b)))));
    global1 = Struct_1(true, func_2().xz);
    let var_2 = func_4(Struct_1(true, select(var_1.b, func_2().wy, !vec2<bool>(true, arg_0.a))), !vec4<bool>(all(!vec4<bool>(arg_3.a, arg_3.a, arg_1, true)), true, !var_1.a & func_2().x, var_1.b.x), ~countOneBits(select(vec3<u32>(0u, var_0, 1u) & vec3<u32>(var_0, 1u, var_0), ~vec3<u32>(global0.x, global0.x, var_0), !vec3<bool>(arg_3.b.x, true, arg_0.b.x))), Struct_1(arg_3.b.x, vec2<bool>(arg_1, false)));
    let var_3 = -(1i | (u_input.a.x & (i32(-1i) * -7596i)));
    return ~var_0;
}

fn func_1(arg_0: i32, arg_1: f32) -> f32 {
    global2 = array<vec2<f32>, 14>();
    global1 = Struct_1((-6478i >> (1u % 32u)) == ((u_input.a.x << (~3562u % 32u)) & 0i), vec2<bool>(true, !global1.b.x));
    let var_0 = ~(~func_5(Struct_1(all(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x)), global1.b), all(select(vec3<bool>(global1.a, false, global1.b.x), vec3<bool>(global1.a, global1.a, true), vec3<bool>(true, global1.b.x, false))), func_4(Struct_1(false, vec2<bool>(global1.b.x, false)), func_2(), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(4294967295u, 59286u, 53965u)), Struct_1(true, global1.b)), Struct_1(global1.a, vec2<bool>(global1.a, false))));
    global2 = array<vec2<f32>, 14>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(~(i32(-1i) * -u_input.a.x) >> (global0.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1312f - 1f))));
    var var_1 = vec3<bool>(global1.a, all(!func_2().wyz) == all(!(!vec3<bool>(false, global1.a, false))), all(select(vec4<bool>(false, global1.b.x, true, global1.a), !vec4<bool>(true, global1.b.x, false, false), !vec4<bool>(true, global1.b.x, global1.a, global1.b.x))) && global1.b.x);
    let var_2 = select(all(!vec3<bool>(any(vec3<bool>(var_1.x, global1.a, var_1.x)), all(var_1.zx), true)), false, select(!var_1.x, !var_1.x, var_1.x));
    var var_3 = Struct_1(!var_1.x, global1.b);
    var var_4 = func_4(Struct_1((var_1.x == true) & true, var_3.b), !select(select(!vec4<bool>(false, false, var_3.b.x, false), !vec4<bool>(false, false, var_1.x, var_3.a), select(vec4<bool>(false, global1.a, var_2, var_1.x), vec4<bool>(global1.a, true, var_3.b.x, false), true)), func_2(), true), ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, global0.x, global0.x)))), Struct_1(var_1.x, vec2<bool>(!var_3.b.x, all(vec2<bool>(var_2, true)) || false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 0u, 1u), vec3<u32>(global0.x, 11259u, global0.x)), reverseBits(reverseBits(vec3<u32>(17865u, global0.x, global0.x)))), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(65162u, global0.x, 23382u, global0.x))), global0.x, 4294967295u), 4294967295u);
}

