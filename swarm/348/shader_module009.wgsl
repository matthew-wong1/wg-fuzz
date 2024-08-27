struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global1: u32;

var<private> global2: vec2<bool>;

var<private> global3: array<bool, 16>;

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    global0 = array<vec3<bool>, 14>();
    var var_0 = arg_2.zxw;
    var var_1 = 99483u;
    global2 = !vec2<bool>(global3[_wgslsmith_index_u32(~var_0.x << (27928u % 32u), 16u)], any(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 16u)], arg_0, global2.x, true), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.x, 16u)], global2.x, global2.x, false), !vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(var_0.x, 16u)], true))));
    return -173f;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: vec4<u32>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(25929u, 16u)];
    let var_1 = arg_2;
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(arg_3, vec4<u32>(arg_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(9034u, 9121u, 50454u) | arg_3.xxy, _wgslsmith_mod_vec3_u32(arg_3.zww, arg_3.yxw)), reverseBits(_wgslsmith_dot_vec2_u32(arg_3.zx, arg_3.zx)), _wgslsmith_div_u32(~arg_2.a.b, arg_2.a.b))), firstLeadingBit(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.b, 44889u, 0u, arg_2.a.b), arg_3), arg_3)));
    global0 = array<vec3<bool>, 14>();
    global4 = array<Struct_1, 9>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-700f, _wgslsmith_f_op_f32(func_1(select(global3[_wgslsmith_index_u32(var_1.a.b, 16u)], true, false), ~vec4<i32>(u_input.c, arg_0, 2147483647i, 1i), countOneBits(vec4<u32>(1u, var_1.a.b, 0u, 6904u)), _wgslsmith_f_op_f32(973f + arg_2.a.a)))))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(734f, _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(-1i, arg_1.x), arg_0.b << (0u % 32u), Struct_2(global4[_wgslsmith_index_u32(1u, 9u)]), vec4<u32>(arg_0.b, arg_0.b, 0u, arg_0.b)))), arg_0.b));
    var var_1 = Struct_2(Struct_1(-565f, ~(~arg_0.b)));
    var var_2 = var_1.a;
    global2 = !vec2<bool>((all(vec3<bool>(global2.x, true, false)) & false) || (false | all(vec2<bool>(false, global2.x))), any(select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_0.b, 16u)], false, true), vec4<bool>(false, global2.x, global2.x, global3[_wgslsmith_index_u32(var_0.a.b, 16u)]), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.b, var_2.b), 16u)])));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1132f - _wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(countOneBits(33272u), 16u)], vec4<i32>(arg_1.x, 2147483647i, u_input.b, 86i), vec4<u32>(var_1.a.b, 24848u, var_1.a.b, 0u) ^ vec4<u32>(4294967295u, 23985u, var_1.a.b, 4294967295u), _wgslsmith_f_op_f32(arg_0.a * 1276f))))), var_1.a.b);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(func_1(true, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -2147483647i, -51654i, 1i), vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x)), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_f32(215f, 1000f)))), ~4294967295u), u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1840f)), _wgslsmith_f_op_f32(f32(-1f) * -639f))), 2583f);
    let var_1 = ~firstLeadingBit(~vec3<u32>(0u, 14647u, var_0.a.b) << (vec3<u32>(~45162u, var_0.a.b ^ 0u, select(0u, 76584u, false)) % vec3<u32>(32u)));
    global4 = array<Struct_1, 9>();
    global2 = select(select(!(!select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(var_1.x, 16u)], global2.x), vec2<bool>(global2.x, global2.x))), select(!vec2<bool>(global3[_wgslsmith_index_u32(25785u, 16u)], true), vec2<bool>(all(vec4<bool>(global2.x, true, false, global2.x)), !global3[_wgslsmith_index_u32(0u, 16u)]), vec2<bool>(global2.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(var_0.a.b, 80701u, var_1.x)), 16u)])), vec2<bool>(!(!global2.x), 83629u != countOneBits(var_0.a.b))), !select(vec2<bool>(global2.x, !global3[_wgslsmith_index_u32(var_0.a.b, 16u)]), select(vec2<bool>(false, global2.x), !vec2<bool>(global2.x, false), select(vec2<bool>(true, true), vec2<bool>(true, global2.x), vec2<bool>(global3[_wgslsmith_index_u32(35766u, 16u)], global2.x))), vec2<bool>(true, true)), !(!select(!vec2<bool>(global3[_wgslsmith_index_u32(var_0.a.b, 16u)], global3[_wgslsmith_index_u32(var_0.a.b, 16u)]), vec2<bool>(true, true), !vec2<bool>(global3[_wgslsmith_index_u32(var_0.a.b, 16u)], false))));
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_sub_u32(var_2.b, 149274u);
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), 41854u) >> (~(_wgslsmith_dot_vec2_u32(var_1.yz, vec2<u32>(var_0.a.b, var_2.b)) | _wgslsmith_add_u32(var_2.b, 12203u)) % 32u), 23153u, -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, -51773i), countOneBits(vec2<i32>(-29533i, var_4.x))), var_4), ~min(~vec3<i32>(-2147483647i, 2147483647i, u_input.b), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 2147483647i, var_4.x), vec3<i32>(-2147483647i, -2147483647i, -20684i))), u_input.b);
}

