struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> i32 {
    var var_0 = ~21405u;
    var_0 = ~u_input.a.x;
    var_0 = ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, u_input.d, arg_0.c.a), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), arg_3.x) >> (_wgslsmith_dot_vec2_u32(~arg_3, arg_2.b << (arg_2.b % vec2<u32>(32u))) % 32u), abs(_wgslsmith_mod_u32(~3351u, _wgslsmith_sub_u32(u_input.a.x, arg_2.a))));
    var_0 = ~27628u;
    var_0 = 58641u;
    return -1i;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = vec3<i32>(u_input.b, firstTrailingBit(_wgslsmith_mult_i32(~1i, func_3(Struct_3(Struct_1(true, false), 207f, Struct_2(0u, u_input.a.wz, Struct_1(false, true)), vec4<f32>(759f, -2165f, 785f, 945f), vec4<i32>(43750i, 1i, 0i, 59791i)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1138f, -333f, 679f, -149f), vec4<f32>(-438f, 574f, -399f, 1035f), true)), Struct_2(u_input.d, u_input.a.wz, Struct_1(true, false)), vec2<u32>(4294967295u, 4294967295u)))), u_input.b & -1i);
    var_0 = select(select(vec3<i32>(var_0.x, ~(-2147483647i), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, var_0.x), ~vec2<i32>(u_input.c, u_input.b))), abs(vec3<i32>(_wgslsmith_mult_i32(17235i, 1i), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(4438i, 25156i, var_0.x), vec3<i32>(u_input.b, u_input.b, u_input.c)))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))))), max(~select(vec3<i32>(var_0.x, var_0.x, -34938i), vec3<i32>(var_0.x, -2147483647i, var_0.x), vec3<bool>(false, false, false)) & min(-vec3<i32>(u_input.c, -2147483647i, u_input.c), ~vec3<i32>(u_input.c, -34337i, -1i)), vec3<i32>(var_0.x, -var_0.x, 36735i)), vec3<bool>((~2147483647i ^ u_input.b) > _wgslsmith_div_i32(9413i, u_input.c), true, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 19784u, arg_0), vec3<u32>(arg_0, 109290u, arg_0))) > firstLeadingBit(arg_0)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-259f, _wgslsmith_f_op_f32(-189f + -554f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(707f - -533f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1079f)), 214f)));
    var var_2 = !vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true, true);
    let var_3 = -abs(_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 11416i), var_0.yy), var_0.yz));
    return 44611u;
}

fn func_1() -> vec3<f32> {
    var var_0 = i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b, _wgslsmith_sub_i32(1i, u_input.c), ~(-29769i), i32(-1i) * -34598i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), -vec4<i32>(-1i, u_input.b, u_input.c, u_input.c)));
    var_0 = u_input.b;
    var var_1 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(func_2(~47030u), 46219u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) | vec2<u32>(1u, 6664u), vec2<u32>(5042u, ~20240u), u_input.a.xw));
    var var_2 = Struct_1(!(!(any(vec4<bool>(true, true, true, false)) || true)), ~countOneBits(2147483647i) <= u_input.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(260f, -685f, 876f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(151f, 116f, 913f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(416f, 1000f, 1140f)))), vec3<f32>(_wgslsmith_f_op_f32(472f + -954f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1717f))))));
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.x), 169f)), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(30340u, (~u_input.d ^ u_input.a.x) >> (~u_input.d % 32u));
    let var_1 = 37995u;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2151f - -664f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(854f, 676f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1630f, _wgslsmith_f_op_f32(abs(-1661f)), _wgslsmith_div_f32(-1098f, 176f)) + _wgslsmith_f_op_vec3_f32(func_1())) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(f32(-1f) * -1041f), 1000f) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-129f, -1000f, 1345f), vec3<f32>(857f, -910f, 566f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(109f, 327f, -1000f), vec3<f32>(2656f, 455f, -1325f), true)))))), -26145i);
}

