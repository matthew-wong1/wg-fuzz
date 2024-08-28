struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_4, 26>;

var<private> global2: array<bool, 13> = array<bool, 13>(true, true, true, false, true, true, false, false, false, true, false, true, true);

var<private> global3: Struct_3 = Struct_3(Struct_1(vec2<bool>(true, false), vec2<bool>(true, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec4<i32>, arg_3: vec4<u32>) -> bool {
    var var_0 = 55918u;
    global0 = 1i;
    global3 = Struct_3(global3.a);
    global3 = Struct_3(Struct_1(!global3.a.b, !global3.a.b));
    global1 = array<Struct_4, 26>();
    return true;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_3(arg_1);
    let var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c), vec3<u32>(1u, 1u, u_input.c)), countOneBits(vec3<u32>(16663u, 4294967295u, u_input.c))), abs(countOneBits(vec3<u32>(0u, u_input.c, u_input.c) & vec3<u32>(19165u, 69996u, u_input.c)))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(2531u, 43313u) >> (u_input.c % 32u), min(0u, 19098u)), vec2<u32>(u_input.c | u_input.c, u_input.c)) % 32u);
    let var_2 = select(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.b, -1i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.b, -2147483647i, arg_0), vec4<i32>(u_input.a, arg_0, arg_0, arg_0))), abs(arg_0)), max(~(-vec2<i32>(u_input.a, u_input.a)), ~(min(vec2<i32>(-21426i, -24579i), vec2<i32>(arg_0, u_input.a)) ^ firstLeadingBit(vec2<i32>(2147483647i, u_input.a)))), select(vec2<bool>(true, !var_0.a.b.x), vec2<bool>(true, func_2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1, u_input.c, 75630u), 26u)], var_0.a.b.x && global3.a.b.x, -vec4<i32>(u_input.b, -61291i, -22259i, -2147483647i), vec4<u32>(4294967295u, 4294967295u, var_1, 4294967295u) & vec4<u32>(var_1, u_input.c, var_1, 770u))), arg_2.xy));
    var var_3 = var_2;
    let var_4 = -47240i;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-199f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1303f, _wgslsmith_f_op_f32(-512f * -139f))))), _wgslsmith_f_op_f32(-319f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, 2147483647i, -31698i), -vec4<i32>(-49756i, u_input.b, u_input.a, -19364i)), min(max(vec4<i32>(12760i, 10309i, 2079i, u_input.b), vec4<i32>(41047i, u_input.a, u_input.a, u_input.b)), vec4<i32>(u_input.b, -28702i, 0i, 0i) >> (vec4<u32>(u_input.c, u_input.c, 129132u, u_input.c) % vec4<u32>(32u))), select(vec4<bool>(false, global2[_wgslsmith_index_u32(34051u, 13u)], global3.a.a.x, global2[_wgslsmith_index_u32(u_input.c, 13u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 13u)], false, global2[_wgslsmith_index_u32(u_input.c, 13u)]), !global2[_wgslsmith_index_u32(u_input.c, 13u)])) >> (~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 1u, 15407u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)) % vec4<u32>(32u)), -1479f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1280f - 837f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-203f - _wgslsmith_f_op_f32(select(1437f, 242f, global3.a.a.x)))))), _wgslsmith_div_u32(~7204u, 4524u | u_input.c), vec4<f32>(_wgslsmith_f_op_f32(func_1(-u_input.a, Struct_1(global3.a.a, vec2<bool>(global2[_wgslsmith_index_u32(4022u, 13u)], global3.a.a.x)), select(vec3<bool>(global2[_wgslsmith_index_u32(19697u, 13u)], global2[_wgslsmith_index_u32(u_input.c, 13u)], global2[_wgslsmith_index_u32(37664u, 13u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 13u)], false, global2[_wgslsmith_index_u32(u_input.c, 13u)]), vec3<bool>(true, true, true)))), -1390f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1195f * 760f)), 1f));
}

