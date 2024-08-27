struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = -115f;
    let var_1 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * -155f) + _wgslsmith_div_f32(arg_3, 1786f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - 335f)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = false;
    var var_1 = Struct_3(-1339f, var_0 || !(!all(vec3<bool>(true, var_0, false))), Struct_2(u_input.a, vec2<i32>(2147483647i, u_input.b)));
    var var_2 = select(!(!vec3<bool>(true, var_1.b, var_1.b)), !vec3<bool>(!select(var_0, false, false), var_1.b, all(select(vec4<bool>(true, var_1.b, true, true), vec4<bool>(false, var_1.b, var_1.b, var_1.b), vec4<bool>(true, var_1.b, var_1.b, var_0)))), vec3<bool>(any(vec4<bool>(!var_0, !var_0, true, !var_1.b)), var_0, any(!vec2<bool>(true, var_0))));
    let var_3 = reverseBits(reverseBits(select(-_wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_1.c.b.x, u_input.c), vec3<i32>(57370i, arg_1.b.x, 786i)), _wgslsmith_add_vec3_i32(-vec3<i32>(-13574i, arg_0.b.x, arg_1.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.b, arg_1.b.x), vec3<i32>(-1i, var_1.c.b.x, var_1.c.b.x))), false)));
    let var_4 = vec3<bool>(!any(!vec2<bool>(var_0, var_2.x)), all(select(vec4<bool>(false, true, any(vec4<bool>(false, var_2.x, true, var_2.x)), !var_1.b), !vec4<bool>(var_0, var_0, false, false), vec4<bool>(true, true, var_2.x == true, true))), var_1.b);
    return select(vec3<bool>(all(var_2.zy), var_0, (_wgslsmith_sub_i32(var_3.x, var_1.c.b.x) > 0i) & true), !vec3<bool>(var_4.x, var_4.x, true), u_input.b == arg_0.b.x);
}

fn func_2() -> vec4<bool> {
    return !vec4<bool>(all(vec2<bool>(true, true)), !all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))) && !all(vec2<bool>(true, false)), all(select(func_3(Struct_2(1405u, vec2<i32>(u_input.c, u_input.b)), Struct_2(u_input.a, vec2<i32>(u_input.b, u_input.b))), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), true)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(~40076u, !(!arg_1.xw));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-arg_0.x), !arg_1.x, var_0.a, _wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))))))), any(!func_2()) | all(select(arg_1.xwz, !arg_1.wxw, true || arg_1.x)), Struct_2(abs(4294967295u & var_0.a), firstTrailingBit(select(vec2<i32>(-41121i, u_input.b), vec2<i32>(-21084i, u_input.c), var_0.b.x) ^ select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.c), var_0.b))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f), -502f))), arg_1.x, Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, var_0.a)), var_1.c.a << (var_1.c.a % 32u), 4294967295u, var_1.c.a), select(min(vec4<u32>(79185u, 4294967295u, 1u, 1u), vec4<u32>(0u, 52991u, 14118u, var_1.c.a)), vec4<u32>(29621u, var_0.a, arg_2, 0u), arg_1)), var_1.c.b));
    let var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zy));
    return Struct_1(_wgslsmith_add_u32(firstTrailingBit(min(_wgslsmith_dot_vec4_u32(vec4<u32>(14438u, 1u, 78889u, 1u), vec4<u32>(30305u, var_2.c.a, 0u, 1u)), ~var_0.a)), select(var_2.c.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 1u), _wgslsmith_clamp_u32(var_0.a, var_3.c.a, u_input.d.x)), var_0.b.x)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.a);
    var var_1 = Struct_1(~74528u, select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), vec2<bool>(false, !any(vec2<bool>(true, false))), true));
    var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -565f), -642f)), var_1.b.x, _wgslsmith_add_u32(u_input.d.x, var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1129f)))), _wgslsmith_f_op_f32(func_1(-748f, false, u_input.a >> (41525u % 32u), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-291f, 156f))))), _wgslsmith_f_op_f32(f32(-1f) * -519f)), !(!func_2()), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(69770u, var_0, 1u, 11812u)), max(vec4<u32>(4294967295u, u_input.a, var_1.a, 42475u), ~vec4<u32>(56066u, var_0, 70471u, 15673u))), min(1u, max(var_1.a, 1u) >> (var_1.a % 32u))));
    var_1 = Struct_1(var_0, vec2<bool>(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2277f, 804f, 762f), vec3<f32>(-967f, 643f, 453f), var_1.b.x))), vec4<bool>(true, var_1.b.x != var_1.b.x, all(vec3<bool>(var_1.b.x, var_1.b.x, false)), any(var_1.b)), 0u).b.x, true));
    let var_2 = u_input.d;
    var var_3 = Struct_3(371f, true, Struct_2(firstTrailingBit(_wgslsmith_add_u32(var_0 | u_input.a, 24475u)), vec2<i32>(abs(u_input.b), 2121i)));
    let var_4 = Struct_1(var_0, vec2<bool>(true, true));
    let var_5 = 1f;
    var var_6 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_5, -752f, -264f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1204f, var_3.a, 1730f) * vec3<f32>(1000f, 1742f, -391f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_5, -645f) - vec3<f32>(var_5, -2226f, var_5))) + vec3<f32>(var_5, -969f, _wgslsmith_f_op_f32(step(var_5, -1157f)))), func_3(Struct_2(1u, vec2<i32>(-31126i, 48941i) | var_3.c.b), Struct_2(select(1u, var_2.x, var_4.b.x), ~var_3.c.b)))), vec4<bool>(false, select(-437f > _wgslsmith_f_op_f32(ceil(var_5)), var_1.b.x, all(!vec4<bool>(var_1.b.x, false, var_3.b, var_4.b.x))), true, !var_3.b | any(func_2().wxy)), _wgslsmith_mult_u32(var_0, max(min(13907u, var_3.c.a) | _wgslsmith_div_u32(var_1.a, 0u), reverseBits(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, select(~countOneBits(~vec4<u32>(0u, 0u, var_3.c.a, 0u)), countOneBits(vec4<u32>(0u, var_2.x, 0u, var_6.a) | select(vec4<u32>(1u, 58219u, var_2.x, 0u), vec4<u32>(0u, 44441u, var_3.c.a, var_0), vec4<bool>(var_3.b, var_4.b.x, var_6.b.x, false))), false | var_1.b.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(var_3.a - var_3.a)))))), _wgslsmith_mult_i32(-_wgslsmith_div_i32(-38910i, u_input.b), -u_input.b) ^ -1353i, 70558u);
}

