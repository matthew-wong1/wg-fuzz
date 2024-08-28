struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: vec3<f32> = vec3<f32>(290f, 1000f, -322f);

var<private> global2: array<f32, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = ~(-(firstLeadingBit(u_input.a.ww & u_input.c) << (vec2<u32>(u_input.d, 12025u) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_add_vec4_i32(min(-(vec4<i32>(arg_1.c, var_0.x, 2147483647i, 2147483647i) >> (max(vec4<u32>(u_input.d, u_input.d, 28210u, u_input.d), vec4<u32>(25050u, u_input.d, 4294967295u, u_input.d)) % vec4<u32>(32u))), ~(~(vec4<i32>(2147483647i, 1i, var_0.x, 1i) << (vec4<u32>(30679u, u_input.d, 152691u, 4294967295u) % vec4<u32>(32u))))), -(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.x, u_input.a.x, arg_1.c, u_input.c.x), vec4<i32>(arg_1.c, arg_1.c, 0i, -2106i), select(u_input.a, u_input.a, vec4<bool>(true, arg_1.b.b, arg_2, arg_2)))));
    var var_2 = _wgslsmith_div_vec4_i32(min(-var_1, vec4<i32>(15542i, firstTrailingBit(var_1.x) & _wgslsmith_div_i32(1i, -2147483647i), u_input.a.x, 3294i)), vec4<i32>(select(~_wgslsmith_sub_i32(12860i, var_0.x), var_0.x, arg_2), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, 28859i, var_0.x), vec3<i32>(arg_1.c, u_input.c.x, var_0.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~19921i), var_1.yx), -1i));
    global0 = array<Struct_2, 27>();
    global2 = array<f32, 24>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1016f + _wgslsmith_f_op_f32(-arg_1.a)) * global1.x) - 902f);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    global0 = array<Struct_2, 27>();
    global2 = array<f32, 24>();
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1038f, global2[_wgslsmith_index_u32(u_input.d, 24u)], global2[_wgslsmith_index_u32(35664u, 24u)]) * vec3<f32>(global2[_wgslsmith_index_u32(arg_0.x, 24u)], -1333f, global1.x)) + vec3<f32>(-1000f, global1.x, -554f)))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(638f)) + _wgslsmith_f_op_f32(var_0.x + 213f)), Struct_3(-1572f, Struct_1(global2[_wgslsmith_index_u32(39418u, 24u)], false), countOneBits(u_input.b)), any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), arg_1))))), true);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = !(!(!vec2<bool>(true && arg_2.b, true)));
    global0 = array<Struct_2, 27>();
    let var_1 = Struct_3(537f, func_2(vec3<u32>(~u_input.d, 1u, 1u), true, arg_1), 0i);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(431f * -815f) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.x, 24u)] - -1139f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1242f - global2[_wgslsmith_index_u32(1u, 24u)])))), _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(floor(global1.x)))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(122f, -157f, arg_2.a), vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 24u)], var_1.b.a, var_1.a))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a, global1.x, 178f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1391f, 380f, 1000f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b.a, -867f, -1180f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 27>();
    let var_0 = Struct_3(global1.x, Struct_1(-1638f, false | all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)))), 0i);
    global2 = array<f32, 24>();
    let var_1 = var_0;
    let var_2 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1208f))), var_0.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec3<u32>(~u_input.d, 26764u, _wgslsmith_dot_vec2_u32(vec2<u32>(48498u, u_input.d), vec2<u32>(u_input.d, 4294967295u))), 57395i, var_1.b)), _wgslsmith_f_op_vec3_f32(func_1(~select(vec3<u32>(u_input.d, u_input.d, 37632u), vec3<u32>(u_input.d, u_input.d, 13380u), var_0.b.b), -1i, func_2(vec3<u32>(u_input.d, u_input.d, u_input.d), var_0.b.b, abs(-55344i))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(103f, -1701f, 323f, var_0.b.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 146f, -2173f, global2[_wgslsmith_index_u32(0u, 24u)]) * vec4<f32>(global1.x, 146f, -901f, var_0.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(606f, global2[_wgslsmith_index_u32(16566u, 24u)], 915f, var_1.a)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1607f, global1.x, global2[_wgslsmith_index_u32(17418u, 24u)]), vec4<f32>(401f, 1031f, var_1.a, var_0.b.a))), select(vec4<bool>(false, var_1.b.b, false, true), vec4<bool>(true, false, var_0.b.b, false), vec4<bool>(false, var_1.b.b, true, true)))))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.a, _wgslsmith_f_op_f32(func_3(-671f, Struct_3(var_1.b.a, Struct_1(1353f, var_1.b.b), var_2), var_0.b.b)), 796f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -807f, global1.x, var_1.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(279f, -3043f, global2[_wgslsmith_index_u32(1910u, 24u)], global1.x))))), min(abs(~vec4<u32>(4294967295u, u_input.d, 0u, u_input.d) ^ ~vec4<u32>(u_input.d, 4294967295u, 0u, u_input.d)), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(50199u, u_input.d, u_input.d, 7211u), vec4<u32>(0u, u_input.d, u_input.d, u_input.d)), u_input.d, 4294967295u, 4294967295u)));
}

