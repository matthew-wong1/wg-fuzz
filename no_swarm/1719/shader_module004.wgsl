struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(20359u, 545u), vec2<u32>(0u, 28561u), vec2<u32>(0u, 81057u), vec2<u32>(1u, 34393u), vec2<u32>(4294967295u, 0u), vec2<u32>(13637u, 0u), vec2<u32>(52752u, 20517u), vec2<u32>(77334u, 0u), vec2<u32>(1u, 5311u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(16245u, 4294967295u), vec2<u32>(28554u, 21484u), vec2<u32>(4294967295u, 4696u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 33624u), vec2<u32>(1832u, 33653u), vec2<u32>(4294967295u, 81072u), vec2<u32>(1u, 22541u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 69022u), vec2<u32>(0u, 1u), vec2<u32>(38999u, 31614u), vec2<u32>(2831u, 1u), vec2<u32>(0u, 62505u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 28093u), vec2<u32>(0u, 0u));

var<private> global2: vec3<f32>;

var<private> global3: i32 = 31894i;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(abs(global2.x));
}

fn func_2(arg_0: i32) -> f32 {
    global4 = vec2<bool>(select(global4.x, !(_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a, -44133i, 1i, 43492i), 673f, global0[_wgslsmith_index_u32(0u, 13u)])) == _wgslsmith_f_op_f32(global2.x + 980f)), global4.x), false);
    global1 = array<vec2<u32>, 29>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.x));
    global4 = !vec2<bool>(global4.x, true);
    global4 = vec2<bool>(true | all(!(!vec4<bool>(global4.x, false, global4.x, false))), _wgslsmith_f_op_f32(982f - var_0.a) == -554f);
    return var_0.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    let var_0 = !arg_0.yz;
    let var_1 = firstTrailingBit(~vec3<u32>(u_input.b, 18556u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, 4294967295u), 66561u)));
    global3 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(max(vec3<i32>(37324i, -48806i, u_input.a), vec3<i32>(-45579i, u_input.a, u_input.a)), vec3<i32>(0i, u_input.a, 0i) >> (vec3<u32>(58610u, 7449u, u_input.b) % vec3<u32>(32u))), abs(vec3<i32>(33202i, u_input.a, 20445i))))));
    var var_3 = false;
    return select(!select(select(vec4<bool>(false, global4.x, false, global4.x), vec4<bool>(true, false, false, arg_3), false), vec4<bool>(true, any(vec2<bool>(false, global4.x)), var_0.x | var_0.x, false), !vec4<bool>(false, arg_3, global4.x, arg_3)), !vec4<bool>(max(74434u, u_input.b) <= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 15448u, 1u), vec3<u32>(22313u, var_1.x, 135174u)), false, true, _wgslsmith_f_op_f32(709f + 118f) < _wgslsmith_f_op_f32(-arg_2.a)), !select(!select(vec4<bool>(arg_3, false, false, false), vec4<bool>(false, global4.x, global4.x, var_0.x), true), select(!vec4<bool>(arg_0.x, global4.x, false, arg_0.x), !vec4<bool>(true, true, var_0.x, var_0.x), arg_0.x), !vec4<bool>(arg_3, arg_0.x, var_0.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 13u)];
    var var_1 = global2.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1014f, var_0.a)))))))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(1071f)));
    var var_3 = global4.x;
    var_3 = (_wgslsmith_mod_u32(4294967295u, ~firstTrailingBit(u_input.b)) >= _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c.x, 78580u, u_input.b), u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 17750u, u_input.b, u_input.c.x) & u_input.c, u_input.c))) || true;
    let var_4 = select(!(!(!select(vec4<bool>(global4.x, global4.x, global4.x, false), vec4<bool>(true, true, global4.x, global4.x), true))), select(!(!vec4<bool>(false, global4.x, true, false)), !vec4<bool>(any(vec4<bool>(false, global4.x, global4.x, global4.x)), global4.x || false, !global4.x, global4.x), true), select(!select(func_1(vec3<bool>(global4.x, false, true), vec4<f32>(var_2.a, global2.x, var_2.a, -1493f), global0[_wgslsmith_index_u32(41645u, 13u)], global4.x), vec4<bool>(global4.x, true, global4.x, global4.x), vec4<bool>(false, false, true, global4.x)), select(vec4<bool>(true, global4.x, any(vec3<bool>(false, global4.x, true)), global4.x), !vec4<bool>(global4.x, global4.x, global4.x, global4.x), select(vec4<bool>(false, global4.x, false, false), vec4<bool>(false, global4.x, true, global4.x), !vec4<bool>(false, false, global4.x, false))), !select(!vec4<bool>(global4.x, false, false, true), vec4<bool>(global4.x, global4.x, false, global4.x), !vec4<bool>(false, true, false, global4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(_wgslsmith_clamp_u32(~47885u, _wgslsmith_div_u32(u_input.c.x, u_input.b), ~71236u), u_input.b), countOneBits(u_input.c.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a & -13833i, -u_input.a, -1i, -u_input.a), vec4<i32>(u_input.a, -30416i, _wgslsmith_div_i32(49058i, -1i), i32(-1i) * -55577i)), ~(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (reverseBits(u_input.c) % vec4<u32>(32u)))));
}

