struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: vec2<f32> = vec2<f32>(-1000f, 901f);

var<private> global3: Struct_2;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_4(vec2<bool>(any(!vec2<bool>(global4.x, global4.x)), !(global4.x | false)), vec3<u32>(abs(~(~3177u)), ~(~arg_0.x), global3.a.x));
    var var_1 = u_input.b.x;
    var var_2 = arg_2;
    var_2 = arg_2;
    let var_3 = var_0.b.x;
    return var_0;
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec2<f32>) -> vec4<bool> {
    global0 = array<vec3<i32>, 18>();
    let var_0 = _wgslsmith_f_op_f32(floor(-1170f));
    var var_1 = select(vec4<bool>(true, any(vec3<bool>(false, func_2(arg_0.b, vec3<f32>(-432f, arg_2.x, -292f), Struct_2(vec2<u32>(global3.a.x, arg_0.b.x), global3.b)).a.x, arg_0.a.x)), true, global4.x), vec4<bool>(false, false | global4.x, any(!vec3<bool>(global4.x, arg_0.a.x, false)), arg_0.a.x), select(vec4<bool>(true, true, global4.x, -1019f < _wgslsmith_f_op_f32(-global2.x)), select(vec4<bool>(true, true, false, true), vec4<bool>(global4.x, false, true, global4.x & false), vec4<bool>(true, arg_0.a.x, global4.x && true, true)), select(!select(vec4<bool>(true, true, false, arg_0.a.x), vec4<bool>(false, global4.x, false, global4.x), arg_0.a.x), select(vec4<bool>(global4.x, global4.x, true, false), vec4<bool>(true, global4.x, arg_0.a.x, arg_0.a.x), select(vec4<bool>(true, true, global4.x, false), vec4<bool>(arg_0.a.x, false, global4.x, arg_0.a.x), vec4<bool>(global4.x, global4.x, true, true))), true)));
    var var_2 = select(vec2<i32>(33353i, _wgslsmith_sub_i32(arg_1, arg_1)), ~u_input.c.yx ^ -u_input.c.yw, true);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1172f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 - arg_2.x), arg_2.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(sign(var_0))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_2.x), arg_2), arg_2)))));
    return vec4<bool>(false, false, var_0 == _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), !arg_0.a.x != var_1.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_4 {
    let var_0 = func_3(func_2(global3.b.b.wwy, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), -960f, global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(727f, -2320f, 878f)))), Struct_2(vec2<u32>(8622u, _wgslsmith_mult_u32(arg_1.a, 1u)), Struct_1(~u_input.c.x, ~vec4<u32>(global3.a.x, arg_1.a, 40874u, 109632u), vec4<u32>(4294967295u, arg_1.a, 4294967295u, 44786u)))), -16182i, vec2<f32>(global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-306f + global2.x) - _wgslsmith_f_op_f32(768f + global2.x))))));
    global1 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(4294967295u, 18u)], reverseBits(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(11672i, u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(59421u, 18u)])))), -max(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-5990i, 23768i, -1i)), global0[_wgslsmith_index_u32(global3.a.x, 18u)] << (global3.b.b.yww % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, -29618i, u_input.b.x)), select(u_input.b.zwz, vec3<i32>(global3.b.a, 2147483647i, u_input.c.x), var_0.wxw))), global0[_wgslsmith_index_u32(arg_1.a, 18u)]);
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global2.x)))), _wgslsmith_f_op_f32(step(global2.x, 1135f)));
    return func_2(~_wgslsmith_add_vec3_u32(vec3<u32>(13203u, arg_1.a, 4294967295u) & vec3<u32>(0u, u_input.a, arg_1.a), global3.b.b.zzy), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(877f - var_3)), _wgslsmith_f_op_f32(select(global2.x, -117f, false))), var_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), global2.x, ~global3.b.b.x == _wgslsmith_dot_vec3_u32(vec3<u32>(9262u, global3.a.x, 45590u), vec3<u32>(40954u, 4294967295u, 0u))))), Struct_2(_wgslsmith_mult_vec2_u32(global3.b.b.zy, vec2<u32>(~u_input.a, ~58499u)), global1[_wgslsmith_index_u32(1u, 22u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 18>();
    var var_0 = _wgslsmith_sub_u32(u_input.a, 0u);
    global2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(347f, -115f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(850f, 388f), vec2<f32>(318f, -1579f))), true))))));
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(3025f, -1973f) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(961f + _wgslsmith_f_op_f32(-global2.x)) - global2.x), _wgslsmith_f_op_f32(f32(-1f) * -648f)));
    let var_1 = 1u;
    let var_2 = func_1(vec2<bool>((_wgslsmith_f_op_f32(f32(-1f) * -1807f) <= _wgslsmith_f_op_f32(-596f + global2.x)) | ((1000f <= global2.x) & global4.x), global4.x), Struct_3(countOneBits(~(1u >> (global3.b.c.x % 32u)))));
    let var_3 = ~global3.b.b.wyw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(1000f)), 1i & min(global3.b.a, _wgslsmith_clamp_i32(reverseBits(-2147483647i), 18168i, 36244i)), 1i, ~(~u_input.b) | u_input.b, u_input.c.wy);
}

