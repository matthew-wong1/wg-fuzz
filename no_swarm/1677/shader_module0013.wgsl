struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(true, false, false, false, false, true, false, true, true, true, true, false, true, false, true, false, true, true, true, false, true, false);

var<private> global1: array<bool, 9>;

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 23>;

var<private> global4: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, 1074f), Struct_1(false, 456f), Struct_1(false, 898f), Struct_1(false, -1231f), Struct_1(false, -1184f), Struct_1(true, 1803f), Struct_1(true, -436f), Struct_1(true, -1000f), Struct_1(false, -672f), Struct_1(true, -1000f), Struct_1(false, 1138f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(true, 2235f);
    var var_1 = global4[_wgslsmith_index_u32(u_input.b.x, 11u)];
    global2 = select(u_input.a, reverseBits(1i), ((~u_input.c.x ^ u_input.c.x) >= max(1u, ~64842u)) != !(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -47i, u_input.a, u_input.a), vec4<i32>(39144i, u_input.a, u_input.a, 19254i)) <= (u_input.a << (1u % 32u))));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(38228u, 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2724f, -1628f))));
    var var_3 = vec3<bool>(select(!var_1.a, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b.x, u_input.b.x), 22u)], global1[_wgslsmith_index_u32(~73910u, 9u)]), true, any(select(vec3<bool>(any(vec2<bool>(var_2.a, var_2.a)), any(vec2<bool>(false, true)), u_input.a >= u_input.a), !select(vec3<bool>(var_1.a, true, false), vec3<bool>(var_2.a, false, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 9u)], var_0.a, var_2.a)), !vec3<bool>(global0[_wgslsmith_index_u32(29710u, 22u)], true, true))));
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> f32 {
    global2 = -func_3();
    global4 = array<Struct_1, 11>();
    global2 = 1i;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1189f)));
    global2 = (~(-4254i) >> (_wgslsmith_div_u32(u_input.b.x, _wgslsmith_mod_u32(47048u, 4294967295u)) % 32u)) | 21931i;
    return _wgslsmith_f_op_f32(step(-853f, 417f));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> vec2<f32> {
    global4 = array<Struct_1, 11>();
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1753f)), _wgslsmith_f_op_f32(func_2(Struct_1(false, -1191f), -651f, Struct_1(global0[_wgslsmith_index_u32(arg_2.x, 22u)], 990f), arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2724f * -205f))))));
    let var_1 = global4[_wgslsmith_index_u32(0u, 11u)];
    let var_2 = Struct_1(any(!vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 22u)] | var_1.a)), _wgslsmith_f_op_f32(sign(var_1.b)));
    global1 = array<bool, 9>();
    return vec2<f32>(var_2.b, _wgslsmith_f_op_f32(-var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 11>();
    let var_0 = -vec4<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(~u_input.a, u_input.a), -(~u_input.a), select(-1i, -40722i, global0[_wgslsmith_index_u32(u_input.c.x, 22u)])), -2147483647i, 32901i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(firstLeadingBit(var_0.x), _wgslsmith_sub_u32(~21793u, 18343u) == _wgslsmith_dot_vec4_u32(abs(vec4<u32>(147994u, u_input.c.x, u_input.c.x, 24939u)), countOneBits(u_input.c)), u_input.c.xzz)));
    global0 = array<bool, 22>();
    var var_2 = 201f;
    let var_3 = global4[_wgslsmith_index_u32(51497u, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, var_1.x) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, var_3.b) + vec2<f32>(-178f, 762f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1769f, var_3.b), vec2<f32>(2031f, 2856f)), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 9u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2384i, 1i), ~var_0.xy), func_3(), ~(i32(-1i) * -1i), var_0.x), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(var_0, var_0), -2147483647i, ~(-15833i)), vec3<i32>(-16293i, -2147483647i, 22893i) >> (~vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x) % vec3<u32>(32u))), (-vec3<i32>(38334i, var_0.x, u_input.a) & (vec3<i32>(36574i, var_0.x, var_0.x) << (vec3<u32>(91734u, u_input.c.x, 43888u) % vec3<u32>(32u)))) >> (~u_input.b % vec3<u32>(32u))), vec4<i32>(-1i) * -min(firstLeadingBit(vec4<i32>(0i, -1i, var_0.x, var_0.x)), firstTrailingBit(var_0)));
}

