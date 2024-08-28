struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1219f) - -238f);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(668f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -1000f)) - vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1403f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-460f, _wgslsmith_f_op_f32(-arg_0.c)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) - vec2<f32>(arg_0.c, 347f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-153f, _wgslsmith_f_op_f32(ceil(arg_0.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c, arg_0.c), vec2<f32>(arg_0.c, -305f), vec2<bool>(true, arg_0.b.x)))))));
    let var_1 = arg_0.c;
    var var_2 = Struct_1(vec3<u32>(1u, 1u, 0u), 2147483647i);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(340f - 926f))), var_0.x), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(709f * 1546f), _wgslsmith_f_op_f32(-326f + var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-1013f + _wgslsmith_f_op_f32(ceil(var_1))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-249f, 1767f, var_0.x)))))));
    return abs(~u_input.e);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_2(-firstLeadingBit(arg_0.a), vec2<bool>(true, true), -1438f);
    let var_1 = ~(~(abs(u_input.e) >> (u_input.d % 32u)) ^ abs(~func_3(Struct_2(vec4<i32>(-31204i, 2147483647i, arg_0.a.x, global0[_wgslsmith_index_u32(0u, 30u)]), arg_0.b, -1448f))));
    let var_2 = vec2<bool>(true, arg_0.b.x);
    var_0 = Struct_2(countOneBits(~_wgslsmith_sub_vec4_i32(-var_0.a, select(vec4<i32>(0i, arg_0.a.x, 28222i, var_0.a.x), vec4<i32>(u_input.b, var_0.a.x, -2565i, arg_0.a.x), arg_0.b.x))), vec2<bool>(firstTrailingBit(28531u) <= 56796u, true), _wgslsmith_f_op_f32(-810f + _wgslsmith_f_op_f32(min(arg_0.c, 1000f))));
    var var_3 = Struct_2(vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(-u_input.a.xx, vec2<i32>(u_input.a.x, ~(-1i))), 24560i, global0[_wgslsmith_index_u32(abs(49071u ^ var_1), 30u)] ^ u_input.b), select(select(!vec2<bool>(var_2.x, true), vec2<bool>(true, any(vec4<bool>(arg_0.b.x, var_0.b.x, var_2.x, var_0.b.x))), select(arg_0.b, !var_0.b, var_0.b)), select(arg_0.b, select(vec2<bool>(true, var_2.x), select(vec2<bool>(true, arg_0.b.x), var_0.b, false), vec2<bool>(true, false)), arg_0.b.x), vec2<bool>(var_0.b.x && var_0.b.x, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c)))))));
    return select(select(var_0.a, select(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, 15414i, 1i), -(var_0.a | var_0.a), !(var_0.b.x != var_0.b.x)), !vec4<bool>(var_3.b.x, true, true, var_0.b.x)), abs(var_3.a), !(!select(!vec4<bool>(true, false, var_0.b.x, false), select(vec4<bool>(arg_0.b.x, false, arg_0.b.x, true), vec4<bool>(var_0.b.x, arg_0.b.x, false, true), vec4<bool>(var_3.b.x, var_3.b.x, false, false)), !vec4<bool>(var_3.b.x, var_3.b.x, true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(-543f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -470f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1527f, -2205f)))) + arg_0.c)));
    let var_1 = arg_0;
    var var_2 = arg_0;
    var_2 = var_1;
    global0 = array<i32, 30>();
    return Struct_2(_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(-1i, arg_0.a.x, -2147483647i, global0[_wgslsmith_index_u32(1u, 30u)]) >> ((~vec4<u32>(4294967295u, 4294967295u, u_input.e, 4294967295u) & select(vec4<u32>(u_input.d, 1u, arg_1.a.x, arg_1.a.x), vec4<u32>(0u, 1u, u_input.e, 680u), true)) % vec4<u32>(32u))), !(!(!arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c))), (arg_0.b.x != arg_0.b.x) & false)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = func_4(Struct_2(-_wgslsmith_mult_vec4_i32(func_2(Struct_2(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(0u, 30u)], 1i, -1i), arg_1.zx, -1290f), vec2<f32>(1000f, 528f)), max(vec4<i32>(1i, -3996i, u_input.c, -2147483647i), vec4<i32>(u_input.b, -22181i, 0i, u_input.a.x))), vec2<bool>(arg_1.x, func_3(Struct_2(vec4<i32>(-1i, global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)], 11015i), vec2<bool>(arg_1.x, false), 1735f)) >= _wgslsmith_dot_vec2_u32(arg_0.zy, arg_0.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-423f)))), Struct_1(vec3<u32>(~(~1u), 1u, _wgslsmith_clamp_u32(72401u, arg_0.x, _wgslsmith_dot_vec3_u32(arg_0, arg_0))), 1i));
    var var_1 = -37929i;
    var var_2 = var_0;
    let var_3 = Struct_1(vec3<u32>(1u, abs(u_input.d), u_input.d), u_input.b);
    var var_4 = _wgslsmith_f_op_f32(select(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c - -469f))))) * _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f)))), !(any(vec3<bool>(false, var_0.b.x, arg_1.x)) || true)));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    global1 = 1f;
    var var_0 = !all(!func_1(~vec3<u32>(u_input.d, u_input.d, u_input.e), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)));
    var var_1 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-min(~2147483647i, 22223i & _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)));
}

