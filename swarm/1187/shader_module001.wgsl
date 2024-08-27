struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: f32 = -209f;

var<private> global2: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<f32>) -> f32 {
    global0 = _wgslsmith_sub_u32(arg_2.x, 5978u);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-935f))))))) * arg_3.x);
    global1 = _wgslsmith_f_op_f32(877f + _wgslsmith_f_op_f32(-arg_3.x));
    let var_0 = vec4<u32>(75734u, arg_2.x, 0u, 14358u) ^ vec4<u32>(arg_2.x, ~select(u_input.a, 78966u, !arg_0), 21301u, _wgslsmith_sub_u32(~firstLeadingBit(u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, u_input.a), vec2<u32>(arg_2.x, u_input.a))));
    global0 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, Struct_3(Struct_1(arg_0)), vec2<u32>(u_input.a, 25180u), vec2<f32>(arg_0, arg_0))) - _wgslsmith_div_f32(-243f, arg_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = true;
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1151f)));
    var var_4 = vec4<bool>(false, all(vec3<bool>(any(!global2[_wgslsmith_index_u32(u_input.a, 17u)]), all(!vec2<bool>(var_1, var_1)), select(u_input.b < 27533i, var_1, select(var_1, var_1, var_1)))), true, true);
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 575f))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(-947f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-753f + -1011f))), arg_2);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1539f, var_0.x)) + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), -258f)));
    var var_2 = var_0;
    var var_3 = arg_0.a;
    let var_4 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, true, all(vec2<bool>(true, false))), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true)), any(vec2<bool>(false, true))), vec4<bool>(select(true, true, true), any(vec4<bool>(true, true, true, true)), true, all(global2[_wgslsmith_index_u32(6220u, 17u)])), true));
    return func_2(_wgslsmith_f_op_f32(ceil(-1000f))).a;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> vec3<u32> {
    global0 = u_input.a;
    let var_0 = vec3<bool>(all(!vec4<bool>(false, arg_2.x, !arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(-arg_0.a) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, func_2(arg_0.a), vec2<u32>(u_input.a, 4294967295u), vec2<f32>(799f, arg_0.a))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1)))), all(select(select(select(vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, true, arg_2.x, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false)), vec4<bool>(arg_2.x, arg_2.x, true, false), arg_2.x), select(vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(arg_2.x, true, true, false), !vec4<bool>(true, arg_2.x, false, true)), true)));
    global0 = u_input.a;
    var var_1 = u_input.b > _wgslsmith_sub_i32(1i, 29406i);
    let var_2 = -6477i;
    return reverseBits(countOneBits(vec3<u32>(~u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4866u, 14251u, 99916u, 42002u), vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a))) >> (((vec3<u32>(38426u, u_input.a, 36317u) << (vec3<u32>(1u, 72020u, u_input.a) % vec3<u32>(32u))) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(0u, u_input.a, 21139u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = vec2<f32>(327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -1102f), _wgslsmith_div_f32(796f, 814f))))));
    let var_2 = firstTrailingBit(func_5(func_4(func_2(_wgslsmith_div_f32(269f, var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1630f, 598f, -912f))), 1027f, ~(~vec3<u32>(88099u, u_input.a, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(any(vec4<bool>(true, true, false, false)), func_2(-527f), ~vec2<u32>(25530u, 33372u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-941f, var_1.x) * vec2<f32>(2429f, 1130f))))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false), u_input.b == 755i), vec2<bool>(true, true), vec2<bool>(true, any(global2[_wgslsmith_index_u32(u_input.a, 17u)])))));
    let var_3 = ~(-vec3<i32>(select(-1i, ~(-9876i), false), -(i32(-1i) * -64161i), -u_input.b));
    var var_4 = -1578f;
    return Struct_1(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 17>();
    var var_0 = Struct_2(func_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-4295i, u_input.b, u_input.b, 2147483647i), select(vec4<i32>(0i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, 0i, -26481i), vec4<bool>(false, true, true, true))), 22910i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-7995i, u_input.b, -7867i, -36300i), vec4<i32>(2147483647i, u_input.b, 1i, -16240i)), ~_wgslsmith_sub_i32(u_input.b, u_input.b))), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, 1i, 2147483647i), ~vec3<i32>(-2147483647i, 0i, ~2147483647i)));
    let var_1 = _wgslsmith_mod_i32(-2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, -2147483647i, -1i, var_0.b.x) >> (vec4<u32>(u_input.a, 1u, u_input.a, 17410u) % vec4<u32>(32u)), abs(vec4<i32>(u_input.b, var_0.b.x, u_input.b, 13657i)))) >> ((u_input.a >> (firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, u_input.a, u_input.a)), ~vec3<u32>(32854u, 0u, u_input.a))) % 32u)) % 32u);
    let var_2 = u_input.a;
    let var_3 = func_2(var_0.a.a);
    let var_4 = -1000f;
    var var_5 = !any(!vec3<bool>(true, select(true, true, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

