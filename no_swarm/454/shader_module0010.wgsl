struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: Struct_4;

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(32076u, 1u), vec2<u32>(1029u, 37782u), vec2<u32>(7438u, 41171u), vec2<u32>(0u, 11781u), vec2<u32>(74079u, 4294967295u), vec2<u32>(4294967295u, 55556u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 28004u), vec2<u32>(32236u, 4294967295u), vec2<u32>(6688u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 36158u), vec2<u32>(4294967295u, 1u), vec2<u32>(59721u, 27577u), vec2<u32>(74628u, 1744u), vec2<u32>(122781u, 5824u), vec2<u32>(18671u, 0u), vec2<u32>(4294967295u, 74916u), vec2<u32>(43561u, 19389u), vec2<u32>(4294967295u, 56951u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 20526u), vec2<u32>(4294967295u, 18998u), vec2<u32>(26162u, 0u), vec2<u32>(76984u, 0u));

var<private> global2: Struct_5;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<f32> {
    global0 = Struct_4(select(vec3<bool>(any(!vec4<bool>(true, true, false, global2.b)), all(vec3<bool>(global0.a.x, true, true)), any(vec4<bool>(false, global2.b, global2.b, true)) | true), vec3<bool>(any(global0.a.xx), any(vec4<bool>(global2.b, false, global2.b, global0.a.x)), _wgslsmith_f_op_f32(abs(-1544f)) < _wgslsmith_f_op_f32(floor(-946f))), global2.b));
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(218f, _wgslsmith_div_f32(468f, _wgslsmith_f_op_f32(sign(1231f))), _wgslsmith_f_op_f32(-1000f - -1213f))))));
    global2 = Struct_5(-5942i, true, _wgslsmith_div_i32(10655i, 1i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -447f))))), vec3<bool>(global0.a.x, true, true), vec3<u32>(reverseBits(~(~0u)), 73673u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(24976u, 4294967295u, 40964u, 1u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-225f, var_0.x, var_1.a.x), var_1.a.zyx), var_1.a.xzw)) + var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-435f, var_0.x, 1000f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(141f, -696f, 1136f) + vec3<f32>(159f, var_1.a.x, var_1.a.x)), vec3<f32>(-720f, var_1.a.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a.zwx, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -196f, var_0.x), vec3<f32>(1423f, var_1.a.x, -109f))))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(320f)), -1016f) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(221f, 170f), var_2.xx))))) + vec2<f32>(var_2.x, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1230f)))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = ~(~u_input.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_0.b.a.zz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) - arg_0.b.a.wz));
    var var_2 = select(global0.a, !select(arg_0.b.b, arg_0.c.b, arg_1 < arg_0.b.a.x), arg_0.c.b.x);
    let var_3 = Struct_3(arg_0.c);
    let var_4 = Struct_1(vec4<f32>(-201f, -1250f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a.a.x), _wgslsmith_f_op_f32(min(var_3.a.a.x, arg_0.c.a.x))))), arg_1), vec3<bool>(global2.b, any(select(!vec3<bool>(global2.b, false, false), vec3<bool>(arg_0.c.b.x, false, false), select(arg_0.b.b, vec3<bool>(arg_0.b.b.x, false, global2.b), var_3.a.b.x))), false), select(min(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, arg_0.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.a.c.x, arg_0.d.x, 7196u), var_3.a.c)), _wgslsmith_sub_vec3_u32(var_3.a.c, vec3<u32>(arg_0.b.c.x, var_3.a.c.x, var_3.a.c.x))), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 53041u, 27444u), vec3<u32>(4294967295u, arg_0.b.c.x, arg_0.d.x)), arg_0.b.b.x));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, 214f, 157f, -460f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1850f), arg_1, var_3.a.a.x, arg_0.b.a.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.a.x, arg_1, -324f, 587f))) * vec4<f32>(var_1.x, arg_1, arg_0.c.a.x, var_3.a.a.x)))), global0.a, select(abs(vec3<u32>(17321u, arg_0.a.x, arg_0.c.c.x)), abs(max(~vec3<u32>(0u, 17302u, var_3.a.c.x), ~var_3.a.c)), !any(vec3<bool>(global0.a.x, false, var_4.b.x)) && !global0.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    var var_0 = vec2<bool>(false, !arg_2.b.x);
    global1 = array<vec2<u32>, 25>();
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, 113f) + vec4<f32>(arg_0.c.a.x, arg_0.b.a.x, arg_2.a.x, 175f))))), !select(vec3<bool>(true, false, global2.b), arg_2.b, vec3<bool>(false, arg_2.b.x, true)), ~vec3<u32>(6997u, countOneBits(arg_0.d.x), arg_0.a.x)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - -908f)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = ~(~((u_input.c | vec2<i32>(-1i, u_input.b.x)) | u_input.b.yx) & vec2<i32>(-(u_input.d ^ -2147483647i), _wgslsmith_sub_i32(~u_input.a, global2.c)));
    var var_1 = arg_1.d.x;
    global1 = array<vec2<u32>, 25>();
    let var_2 = Struct_5(u_input.c.x, false, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, i32(-1i) * -1i), _wgslsmith_add_vec2_i32(var_0, vec2<i32>(u_input.c.x, 2147483647i) ^ u_input.c)));
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(arg_1.a, arg_1.b, Struct_1(vec4<f32>(-465f, arg_1.c.a.x, -1004f, arg_1.c.a.x), global0.a, arg_1.c.c), arg_1.d), Struct_4(arg_1.b.b), func_2(arg_1, -659f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.x) + _wgslsmith_f_op_f32(270f - 978f))), func_2(Struct_2(vec3<u32>(0u, arg_1.c.c.x, 21320u), Struct_1(vec4<f32>(arg_1.b.a.x, -596f, arg_1.c.a.x, 1186f), arg_1.c.b, vec3<u32>(arg_1.b.c.x, arg_1.b.c.x, arg_1.c.c.x)), func_2(arg_1, 346f), vec4<u32>(43225u, 44719u, arg_1.b.c.x, 66657u)), _wgslsmith_f_op_f32(f32(-1f) * -966f)).a.x), arg_1.b.a.yyy);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_5(firstTrailingBit(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_add_i32(0i << (1u % 32u), 0i), _wgslsmith_sub_i32(37637i & u_input.a, func_1(vec4<bool>(global2.b, false, global0.a.x, false), Struct_2(vec3<u32>(1u, 48764u, 36940u), Struct_1(vec4<f32>(1000f, -2637f, 1900f, -166f), global0.a, vec3<u32>(0u, 50281u, 14914u)), Struct_1(vec4<f32>(588f, 318f, -280f, -795f), vec3<bool>(global0.a.x, global2.b, false), vec3<u32>(6327u, 0u, 4294967295u)), vec4<u32>(22932u, 19901u, 82068u, 19876u)), global2.b)))), false, global2.c);
    global2 = Struct_5(_wgslsmith_clamp_i32(min(-global2.a, _wgslsmith_sub_i32(-global2.a, ~(-8441i))), firstLeadingBit(global2.a) & firstLeadingBit(~global2.a), 2147483647i), !any(vec2<bool>(true, false)), ~(u_input.d & 1i));
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(select(~1u, 1u, any(!vec4<bool>(global0.a.x, global2.b, global2.b, global2.b))), 26949u), ~(~_wgslsmith_sub_u32(4294967295u, 13138u)) << (min(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(25691u, 1u, 30253u)), ~42778u, all(vec2<bool>(global0.a.x, global0.a.x))), 66432u) % 32u), _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(1u, 1u)), ~abs(~global1[_wgslsmith_index_u32(143109u, 25u)])), firstLeadingBit(~_wgslsmith_mult_u32(1u, select(1u, 4294967295u, global0.a.x))));
    global1 = array<vec2<u32>, 25>();
    var var_1 = var_0.ww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~38961u, var_0.x, firstLeadingBit(~(var_1.x & 0u))));
}

