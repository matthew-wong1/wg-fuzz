struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<vec3<u32>, 8>;

var<private> global2: Struct_1 = Struct_1(0u, vec3<f32>(1406f, 350f, -118f), vec4<u32>(4294967295u, 7847u, 33792u, 34716u));

var<private> global3: vec4<i32> = vec4<i32>(-1i, -14476i, -70284i, i32(-2147483648));

var<private> global4: vec3<f32> = vec3<f32>(785f, 206f, -364f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec3<u32> {
    let var_0 = vec2<bool>(!(any(vec2<bool>(true, true)) & true), any(vec2<bool>(false, all(vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.x))) + global4.x) + arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(493f * global4.x)) * _wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))));
    var var_2 = Struct_1(~(~abs(1u)), vec3<f32>(global4.x, 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(323f, arg_0)) + _wgslsmith_f_op_f32(-global2.b.x)), true))), global2.c);
    global2 = Struct_1(~(~4294967295u), _wgslsmith_f_op_vec3_f32(-arg_1), ~global2.c | ~vec4<u32>(_wgslsmith_sub_u32(110004u, 66032u), 1337u, ~u_input.a, 18609u));
    var var_3 = Struct_1(global2.c.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1930f), _wgslsmith_f_op_f32(trunc(577f)))), 630f), select(~(~vec4<u32>(var_2.c.x, 4294967295u, global2.a, 13562u)), vec4<u32>(~(~var_2.a), global2.a, u_input.d.x, global2.c.x), all(vec4<bool>(select(var_0.x, true, var_0.x), global0[_wgslsmith_index_u32(global2.a, 30u)] <= 7174i, var_0.x, select(var_0.x, false, var_0.x)))));
    return vec3<u32>(var_2.a, _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(18779u, var_3.a, global2.c.x)), var_3.c.x, _wgslsmith_dot_vec2_u32(abs(var_2.c.yw), var_3.c.zx >> (vec2<u32>(11530u, 22952u) % vec2<u32>(32u)))), var_3.c.x), ~u_input.a);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_2 {
    global0 = array<i32, 30>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 30u)];
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b.x))))), -1919f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global4.yz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.xz)))));
    let var_3 = global0[_wgslsmith_index_u32(55979u, 30u)];
    return Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.a, global2.a, 26726u), global2.c.zwz), func_3(-565f, vec3<f32>(global2.b.x, -540f, global2.b.x)), var_1), vec3<u32>(~u_input.a, 39007u, 38521u >> (u_input.a % 32u))), ~u_input.d.x, ~(~1u)), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, var_2.x, 141f))), global2.b))), global2.c & global2.c), Struct_1(select(global2.a, max(min(0u, u_input.d.x), firstLeadingBit(u_input.d.x)), select(all(vec4<bool>(false, var_1, false, var_1)), var_1, true)), _wgslsmith_f_op_vec3_f32(step(global2.b, global2.b)), min(select(vec4<u32>(global2.c.x, 28626u, 52527u, u_input.d.x), vec4<u32>(4294967295u, 0u, 17765u, 33375u), !vec4<bool>(true, true, var_1, var_1)), vec4<u32>(40628u, 14106u, global2.a, u_input.b) ^ vec4<u32>(48297u, 119686u, u_input.d.x, 82918u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -646f), _wgslsmith_f_op_f32(-698f * arg_1.x))), _wgslsmith_f_op_f32(-global4.x))), countOneBits(u_input.d));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> vec2<u32> {
    var var_0 = func_2(-25041i, vec4<f32>(-700f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b.x * global2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(936f + 521f) * _wgslsmith_f_op_f32(global4.x * 893f)), !(global4.x > global2.b.x))), global2.b.x, global2.b.x));
    global2 = func_2(arg_1.x, vec4<f32>(290f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global4.x, _wgslsmith_f_op_f32(global2.b.x - -2012f), any(vec2<bool>(arg_2, arg_2)))))), -818f, _wgslsmith_f_op_f32(sign(-858f)))).b;
    var var_1 = all(vec4<bool>(!arg_2, arg_2, false, !arg_2));
    let var_2 = _wgslsmith_f_op_f32(var_0.c.b.x - func_2(i32(-1i) * -u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global2.b.x, 511f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b.x, 707f, global4.x, global2.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1055f, var_0.d, var_0.b.b.x) + vec4<f32>(global2.b.x, -437f, 867f, var_0.c.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, -875f, global2.b.x) * vec4<f32>(global2.b.x, 350f, global2.b.x, var_0.c.b.x))))).b.b.x);
    var var_3 = select(-(~(-vec4<i32>(global0[_wgslsmith_index_u32(56458u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], -998i, -2147483647i))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 77210i, 64338i, global0[_wgslsmith_index_u32(arg_0, 30u)]) & vec4<i32>(global3.x, -12254i, -6662i, 24417i), vec4<i32>(2324i, -2147483647i, 18306i, arg_1.x)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(31066u, 30u)], -12181i, u_input.c)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 2147483647i, arg_1.x), vec4<i32>(9666i, -1i, arg_1.x, -41880i)))), all(vec4<bool>(true, any(vec4<bool>(true, true, arg_2, true)), 2147483647i > global0[_wgslsmith_index_u32(55175u, 30u)], true))) ^ -(~_wgslsmith_add_vec4_i32(-vec4<i32>(arg_1.x, -4507i, -32215i, -2147483647i), ~vec4<i32>(arg_1.x, arg_1.x, u_input.c, global0[_wgslsmith_index_u32(u_input.b, 30u)])));
    return ~(~global2.c.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(-global2.b), global2.c);
    var var_1 = global3.wy;
    var var_2 = global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(~func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 8092u), var_0.c.yx), reverseBits(global3.zzx), true), u_input.d), _wgslsmith_mult_u32(firstLeadingBit(var_0.a), var_0.c.x)), 30u)];
    let var_3 = !(!select(vec2<bool>(true, true), vec2<bool>(u_input.d.x != global2.c.x, any(vec2<bool>(true, false))), vec2<bool>(any(vec2<bool>(true, false)), true)));
    global0 = array<i32, 30>();
    let var_4 = _wgslsmith_f_op_f32(-global2.b.x);
    var var_5 = global2.b;
    var var_6 = Struct_1(112005u, var_0.b, global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.x, var_4, -363f), vec3<f32>(-876f, -2157f, -689f)))), global2.b), _wgslsmith_f_op_vec3_f32(global2.b + global2.b))), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.c.x & _wgslsmith_dot_vec4_u32(var_6.c, global2.c), ~_wgslsmith_dot_vec4_u32(var_0.c, global2.c)), ~340u), vec2<i32>(-1i, ~((global0[_wgslsmith_index_u32(0u, 30u)] << (4294967295u % 32u)) ^ min(var_1.x, global3.x))), vec4<u32>(12221u, 25644u, ~(0u & global2.a), 19024u >> (var_0.a % 32u)), ~var_0.c);
}

