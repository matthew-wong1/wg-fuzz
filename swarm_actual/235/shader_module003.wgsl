struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_2;

var<private> global3: vec3<u32>;

var<private> global4: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_4 {
    global4 = global0.x;
    var var_0 = global2.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 701f, 912f))))));
    return Struct_4(arg_1, Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global3.x, var_0.a, global2.a.a, 53995u)), _wgslsmith_sub_i32(u_input.a, i32(-1i) * -1i))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.x, 1803f)), global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))));
    var var_0 = global2.a;
    let var_1 = func_2(_wgslsmith_add_u32(global2.a.a, ~33731u) ^ ~arg_0.x, false).b;
    let var_2 = Struct_1(abs(global2.a.a), select(global2.a.b, 0i, all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, -104f)))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(floor(-1237f))), -203f) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), -1560f, global0.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-111f, -1042f, 312f) + vec3<f32>(global0.x, -616f, global0.x)), vec3<f32>(global0.x, 714f, global0.x)))))));
    return -400f;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    var var_0 = func_2(_wgslsmith_mod_u32(~(~(~u_input.b.x)), 30034u), true);
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(1u | _wgslsmith_mult_u32(var_0.b.a.a, arg_1.x), 30722u))) - _wgslsmith_f_op_f32(f32(-1f) * -917f));
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -195f);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1280f))))));
    var var_2 = select(select(select(!(!vec4<bool>(false, var_0.a, true, var_0.a)), select(!vec4<bool>(var_0.a, var_0.a, true, var_0.a), select(vec4<bool>(true, var_0.a, true, true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), true), false), !vec4<bool>(var_0.a, false, var_0.a, var_0.a)), vec4<bool>(false, true, var_0.a, any(vec4<bool>(var_0.a, var_0.a, true, var_0.a))), !(!(!vec4<bool>(false, false, false, var_0.a)))), select(vec4<bool>(true, true, false, any(select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(false, var_0.a, true), vec3<bool>(false, var_0.a, true)))), vec4<bool>(select(any(vec4<bool>(false, var_0.a, var_0.a, var_0.a)), true, false), reverseBits(global2.a.b) == _wgslsmith_clamp_i32(global2.a.b, 0i, var_0.b.a.b), var_0.a, true), vec4<bool>(any(!vec2<bool>(var_0.a, var_0.a)), var_0.a, true, var_0.a)), _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(var_0.b.a.b, 0i, -2147483647i, -2147483647i)), vec4<i32>(_wgslsmith_add_i32(var_0.b.a.b, u_input.a), 47665i, _wgslsmith_dot_vec4_i32(vec4<i32>(58983i, 18322i, u_input.a, 1i), vec4<i32>(u_input.c.x, 2147483647i, var_0.b.a.b, 64531i)), ~(-45352i))) > (global2.a.b ^ global2.a.b));
    return 234f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-978f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.x))))) * -629f);
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(168f + -2096f), global0.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1987f, global0.x, -147f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1290f)))))) + _wgslsmith_div_vec3_f32(vec3<f32>(-878f, _wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1u, u_input.b.xw)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 1228f), vec3<f32>(839f, global0.x, global0.x)))))));
    var var_1 = any(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec3<bool>(false, false, true))), true));
    var var_2 = _wgslsmith_dot_vec4_i32(firstTrailingBit(-firstLeadingBit(vec4<i32>(1i, u_input.a, 16784i, 2147483647i))) ^ countOneBits(vec4<i32>(-1i) * -vec4<i32>(u_input.a, global2.a.b, 1i, global2.a.b)), ~_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.a, 0i, 1i, 1i) | vec4<i32>(-2147483647i, u_input.a, -31160i, 0i), ~vec4<i32>(-2147483647i, u_input.a, global2.a.b, global2.a.b), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true)), countOneBits(vec4<i32>(u_input.c.x, global2.a.b, -1i, -2147483647i))));
    let var_3 = vec4<u32>(firstTrailingBit(_wgslsmith_clamp_u32(reverseBits(38815u), 1u, 62468u & u_input.b.x)), 1u, u_input.b.x, _wgslsmith_div_u32(19204u, global1.x));
    var var_4 = -2895f;
    var_2 = global2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(global2.a.b, -53828i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 0i), vec3<i32>(u_input.c.x, -10139i, -54203i)), min(global2.a.b, global2.a.b)) ^ max(vec4<i32>(global2.a.b, 29211i, -9992i, global2.a.b), ~vec4<i32>(-17907i, -31504i, global2.a.b, -32019i))), 4294967295u, ~vec3<u32>(~4095u, ~0u, global2.a.a));
}

