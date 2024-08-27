struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = array<vec4<bool>, 23>();
    return vec2<bool>(true, any(vec4<bool>((false && arg_1.d) != arg_1.d, any(vec2<bool>(arg_1.a, true)), false, arg_1.d)));
}

fn func_3() -> vec4<f32> {
    var var_0 = select(vec3<bool>(true, all(vec3<bool>(true, u_input.a.x >= 2147483647i, true)), true), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), all(global0[_wgslsmith_index_u32(11411u, 23u)])), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, all(vec2<bool>(false, false)))), countOneBits(countOneBits(-3932i)) > _wgslsmith_sub_i32(u_input.a.x >> (59996u % 32u), 1308i)), true);
    let var_1 = Struct_4(all(global0[_wgslsmith_index_u32(u_input.b.x, 23u)]));
    var var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 7u)];
    var var_3 = Struct_2(!var_1.a, var_2.b, ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(31166u, 1u), ~vec2<u32>(u_input.b.x, 4294967295u))), func_2(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 7u)], Struct_1(abs(_wgslsmith_sub_vec4_u32(var_2.e.a, vec4<u32>(u_input.b.x, var_2.c, 18898u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.b) - _wgslsmith_f_op_f32(-var_2.e.c.x)), _wgslsmith_f_op_vec2_f32(var_2.e.c * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e.c.x, var_2.b.x)))), ~abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -99515i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)))).x, Struct_1(var_2.e.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_2.b.x, _wgslsmith_f_op_f32(var_2.b.x + var_2.e.c.x), var_2.d)), 907f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.b.ww), vec2<f32>(226f, -568f), vec2<bool>(false, false))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.e.c)))));
    var var_4 = _wgslsmith_add_i32(u_input.a.x, u_input.a.x);
    return _wgslsmith_f_op_vec4_f32(-var_3.b);
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    var var_0 = Struct_4(any(select(select(!vec2<bool>(arg_0.x, true), func_2(-1641i, Struct_2(arg_0.x, vec4<f32>(-372f, -1166f, -424f, -1510f), u_input.b.x, arg_0.x, Struct_1(vec4<u32>(121441u, 74696u, 1u, 93198u), -2010f, vec2<f32>(-357f, 1000f))), Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), 1000f, vec2<f32>(-1000f, -469f)), vec4<i32>(u_input.a.x, 19638i, u_input.a.x, u_input.a.x)), arg_0.x), vec2<bool>(arg_0.x, all(vec2<bool>(arg_0.x, false))), true)));
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    var var_1 = Struct_4(true);
    var var_2 = Struct_3(-1250f, Struct_2(all(arg_0.zz), _wgslsmith_f_op_vec4_f32(func_3()), 1u | u_input.b.x, !var_0.a, Struct_1(select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), true), -849f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1905f, -1372f) + vec2<f32>(-1198f, 1232f)))))), u_input.b.x);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 23>();
    let var_0 = -57300i;
    let var_1 = vec4<i32>(u_input.a.x, ~u_input.a.x ^ ~var_0, firstTrailingBit(-2147483647i), ~var_0);
    var var_2 = _wgslsmith_mod_i32(abs(func_1(vec3<bool>(var_1.x == -10726i, false, all(vec3<bool>(false, false, true))))), firstLeadingBit(_wgslsmith_mod_i32(-1i, u_input.a.x)));
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, _wgslsmith_add_i32(firstLeadingBit(20081i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -1i), u_input.a.xy) ^ ~0i), i32(-1i) * -_wgslsmith_clamp_i32(var_0, 30186i, var_0)), abs(abs(var_1)));
    var var_3 = Struct_4(any(vec3<bool>(false, u_input.a.x >= u_input.a.x, any(global0[_wgslsmith_index_u32(u_input.b.x, 23u)]))) && !(max(1i, var_1.x) > (i32(-1i) * -1i)));
    global1 = array<Struct_2, 7>();
    var var_4 = !(!(!vec4<bool>(true, true, !var_3.a, !var_3.a)));
    var_2 = _wgslsmith_mult_i32(~var_0, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-198f);
}

