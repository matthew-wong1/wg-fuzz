struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 28109i, 49527i, 1i);

var<private> global1: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(-36708i, 10207i, -13049i), vec3<i32>(2147483647i, -19106i, 1i));

var<private> global2: vec3<i32> = vec3<i32>(0i, -9936i, 22280i);

var<private> global3: vec4<u32> = vec4<u32>(7238u, 1u, 1u, 68324u);

var<private> global4: array<vec2<bool>, 7>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    global2 = vec3<i32>(~min(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global2.x), global2.zy), -52899i | global0.x) >> (u_input.a.x % 32u), global0.x, i32(-1i) * -reverseBits(global2.x));
    let var_0 = Struct_1(~global0.x > -6136i, -_wgslsmith_add_i32(reverseBits(global0.x & -5486i), -(0i >> (global3.x % 32u))));
    let var_1 = ~(~firstLeadingBit(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(25056u, global3.x), vec2<u32>(4294967295u, arg_0)))));
    let var_2 = var_0;
    var var_3 = 242f;
    return true;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_2(global0.x, Struct_1(!func_3(global3.x << (1u % 32u), _wgslsmith_f_op_f32(floor(-3273f))), _wgslsmith_mod_i32(global2.x, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(564f, _wgslsmith_f_op_f32(select(371f, -228f, true))))))));
    var var_1 = !(!(!vec3<bool>(false, var_0.b.a, !var_0.b.a)));
    let var_2 = _wgslsmith_mod_i32(5478i, firstLeadingBit(_wgslsmith_dot_vec2_i32(global2.yz, -global0.zz)));
    var var_3 = var_1.yy;
    global0 = (-vec4<i32>(-32862i | var_0.a, 0i, max(-16973i, var_0.a), 2147483647i) ^ ~countOneBits(abs(vec4<i32>(-2147483647i, 2147483647i, 6555i, var_2)))) ^ abs(-min(-vec4<i32>(var_0.a, 0i, var_2, global2.x), -vec4<i32>(global2.x, var_0.a, -62502i, global2.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -686f);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, global3.xzx), countOneBits(_wgslsmith_div_vec3_u32(~vec3<u32>(global3.x, 0u, global3.x), u_input.a & vec3<u32>(4294967295u, 1u, global3.x))) | vec3<u32>(~_wgslsmith_sub_u32(13591u, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global3.x, 4294967295u, global3.x) & vec4<u32>(global3.x, global3.x, global3.x, global3.x), select(vec4<u32>(global3.x, 54817u, global3.x, global3.x), vec4<u32>(u_input.a.x, global3.x, 1u, 44359u), vec4<bool>(false, arg_1.b.a, true, true)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(~min(vec4<u32>(1u, global3.x, 1u, u_input.a.x), vec4<u32>(0u, 99023u, 18251u, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_1.c, arg_1.c))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-832f, arg_1.c))));
    var var_2 = -27248i;
    var var_3 = ~(vec3<i32>(max(-1i, max(-1i, 0i)), _wgslsmith_div_i32(global0.x, global0.x), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2.x, arg_0), global1[_wgslsmith_index_u32(global3.x, 2u)]), -global0.x)) << ((firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 55640u)) & (~vec3<u32>(global3.x, 1u, u_input.a.x) ^ vec3<u32>(1u, 4294967295u, global3.x))) % vec3<u32>(32u)));
    let var_4 = vec3<bool>(arg_1.b.a, !all(global4[_wgslsmith_index_u32(u_input.a.x, 7u)]), all(vec3<bool>(arg_1.b.a, true, true)));
    return -1667f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(703f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-650f + -822f), _wgslsmith_f_op_f32(select(537f, -1032f, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-1i, Struct_2(global2.x, Struct_1(false, 18277i), 140f))) - -1729f))));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, -2147483647i), 3208i & global0.x), global0.x), global1[_wgslsmith_index_u32(reverseBits(1u), 2u)]), Struct_1(all(vec4<bool>(true, true, true, true)), -min(global2.x, -1i) >> (1u % 32u)), _wgslsmith_f_op_f32(-var_0));
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -firstTrailingBit(global0.x)) << (firstLeadingBit(_wgslsmith_mod_u32(firstLeadingBit(global3.x), global3.x)) % 32u), ~(-_wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(global3.x, 2u)], vec3<i32>(-1i, -3710i, var_1.a))));
}

