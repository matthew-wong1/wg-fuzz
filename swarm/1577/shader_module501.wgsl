struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_1 = Struct_1(true, 19840u, true);

var<private> global1: vec3<bool>;

var<private> global2: f32 = -1225f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    global0 = arg_0.a;
    let var_0 = _wgslsmith_mod_i32(~reverseBits(arg_0.c.x), 2147483647i);
    let var_1 = _wgslsmith_f_op_f32(exp2(arg_0.e.x));
    global1 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, arg_0.d), vec3<bool>(arg_1.c, arg_2.a, arg_1.a), global1.x), vec3<bool>(false, arg_2.c, false)), vec3<bool>(arg_0.d || arg_2.a, !global0.c, false), select(select(false, arg_0.b.c, true), 15298u != arg_0.a.b, global1.x)));
    var var_2 = !select(!select(select(vec4<bool>(arg_1.a, true, false, arg_1.a), vec4<bool>(arg_0.b.a, true, true, arg_2.a), arg_1.a), select(vec4<bool>(true, global0.c, arg_2.a, false), vec4<bool>(false, true, global0.c, true), vec4<bool>(false, false, arg_2.a, arg_2.c)), !vec4<bool>(false, false, global0.a, arg_1.c)), select(!(!vec4<bool>(arg_1.a, arg_0.b.c, false, true)), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_i32(arg_0.c.yy, vec2<i32>(0i, -58489i)) == abs(arg_0.c.x)), select(select(vec4<bool>(arg_2.c, true, false, arg_2.a), select(vec4<bool>(false, arg_0.d, global0.a, true), vec4<bool>(arg_1.c, arg_0.b.c, arg_0.b.c, false), true), true), select(!vec4<bool>(true, global1.x, arg_0.a.c, true), vec4<bool>(global1.x, true, arg_2.c, arg_0.a.c), select(true, true, false)), select(vec4<bool>(false, global1.x, false, arg_0.b.a), !vec4<bool>(arg_2.a, arg_1.a, arg_1.c, false), select(vec4<bool>(arg_0.d, global0.a, global0.c, true), vec4<bool>(arg_0.b.a, global1.x, arg_1.a, true), false))));
    return all(select(select(select(vec4<bool>(var_2.x, var_2.x, arg_2.a, global1.x), !vec4<bool>(arg_2.c, global1.x, var_2.x, false), true), vec4<bool>(all(vec4<bool>(global0.c, arg_2.c, true, false)), global1.x || true, true, any(var_2.yzy)), select(vec4<bool>(var_2.x, true, false, false), select(vec4<bool>(arg_2.a, var_2.x, arg_0.d, arg_0.a.a), vec4<bool>(false, arg_1.a, global1.x, true), vec4<bool>(arg_1.a, global0.a, false, true)), true)), !(!(!vec4<bool>(arg_2.c, arg_0.a.a, false, var_2.x))), !select(select(vec4<bool>(false, global0.a, global0.a, true), vec4<bool>(false, arg_0.d, false, false), vec4<bool>(arg_1.a, false, true, false)), vec4<bool>(arg_0.a.c, arg_1.a, true, global1.x), all(vec4<bool>(false, global0.c, var_2.x, true)))));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b, global0.b, u_input.a), firstLeadingBit(vec3<u32>(global0.b, 4294967295u, global0.b))), ~vec3<u32>(36758u, global0.b, 8765u)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.b, global0.b, 30821u), ~vec3<u32>(4294967295u, global0.b, 21550u)), global0.b, u_input.a));
    let var_2 = select(vec4<bool>(any(vec4<bool>(101f <= arg_0, true, global0.a || global1.x, false)), select(-301f > _wgslsmith_f_op_f32(-196f * arg_0), func_3(Struct_2(Struct_1(true, u_input.a, global1.x), Struct_1(false, var_1.x, false), vec3<i32>(22212i, 38882i, -323i), global1.x, vec2<f32>(arg_0, arg_0)), Struct_1(false, var_1.x, false), Struct_1(true, u_input.a, true), 1126f) == (var_1.x == 92609u), false), !global0.a, global0.c), !vec4<bool>(global0.a, global0.a, global1.x, global0.a), !vec4<bool>(all(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, false, true), vec3<bool>(true, global0.c, global0.a))), all(vec4<bool>(true, true, true, global0.a)), !any(vec2<bool>(true, false)), true));
    var var_3 = _wgslsmith_f_op_f32(arg_0 + arg_0);
    let var_4 = Struct_1(!any(!select(vec2<bool>(global1.x, global1.x), var_2.xw, false)), u_input.a, ~4294967295u > ((~19362u << (var_1.x % 32u)) | _wgslsmith_add_u32(~u_input.a, var_1.x)));
    return var_4;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(740f, -379f, -670f, 1372f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-495f, 1000f, 1000f, -581f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, -562f, -422f, -838f)), global1.x))))));
    global2 = 1582f;
    var var_1 = func_2(var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-109f)) + var_0.x)));
    let var_2 = 16791u;
    var var_3 = global1.x;
    return func_2(var_0.x, _wgslsmith_f_op_f32(floor(-503f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(374f)) * 1079f))), Struct_1(false, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, global0.b, 1u, 4294967295u), vec4<u32>(global0.b, var_0.b, global0.b, var_0.b)), 4294967295u ^ (u_input.a | var_0.b)), !var_0.a), ~vec3<i32>(select(-1i, 29888i, var_0.a), ~(-26769i), ~2147483647i) >> (~(vec3<u32>(35437u, var_0.b, var_0.b) & ~vec3<u32>(35126u, var_0.b, 0u)) % vec3<u32>(32u)), global1.x, _wgslsmith_div_vec2_f32(vec2<f32>(424f, _wgslsmith_f_op_f32(f32(-1f) * -1071f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-404f, 128f), vec2<f32>(-1546f, -684f)))))));
    let var_2 = ~global0.b;
    global1 = !vec3<bool>(var_0.a, true, global1.x);
    var var_3 = Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-917f, -859f, global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.e.x, 879f)) + _wgslsmith_f_op_f32(sign(-900f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(199f - _wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-167f)))))), func_1(), abs(var_1.c), !var_0.c == !global1.x, _wgslsmith_div_vec2_f32(var_1.e, var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-17423i, _wgslsmith_add_i32(var_3.c.x, _wgslsmith_mult_i32(-2147483647i, var_3.c.x))) & -var_3.c.x);
}

