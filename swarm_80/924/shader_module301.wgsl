struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18>;

var<private> global1: array<vec3<u32>, 23>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> f32 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1336f)) - -1000f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(-1701f)))), 1f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(0u, 18u)];
    var var_1 = -23258i;
    let var_2 = Struct_3(all(!vec3<bool>(0u <= u_input.d, arg_1.c <= arg_0.x, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2247f * 276f) - _wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-740f + arg_1.c)))), 606f));
    var var_3 = vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b.x - arg_0.x), var_2.b.x)), -763f);
    var var_4 = vec4<i32>(-1i) * -select(arg_1.a.b, abs(max(vec4<i32>(-32839i, u_input.b.x, 0i, u_input.b.x), arg_1.a.b)), true);
    return var_2;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> f32 {
    global0 = array<vec2<u32>, 18>();
    let var_0 = Struct_4(u_input.a, func_2(vec4<f32>(_wgslsmith_div_f32(924f, _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -592f), arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f) + _wgslsmith_div_f32(arg_1.b.x, arg_1.b.x))), Struct_2(Struct_1(select(vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, false), vec2<bool>(true, true)), -arg_0.a, arg_0.d, u_input.b.x, _wgslsmith_sub_i32(27055i, -32557i)), vec2<u32>(firstLeadingBit(u_input.c.x), _wgslsmith_clamp_u32(19119u, 26944u, arg_0.e)), _wgslsmith_f_op_f32(sign(-600f)))), arg_1.b.x, _wgslsmith_f_op_f32(ceil(-808f)));
    let var_1 = arg_1.a;
    global1 = array<vec3<u32>, 23>();
    global1 = array<vec3<u32>, 23>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c))), 1358f)), -821f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, countOneBits(select(u_input.b.x, u_input.b.x, true)), u_input.b.x), _wgslsmith_div_vec4_i32(abs(~vec4<i32>(u_input.b.x, -1002i, u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -38895i, u_input.b.x, 25667i) & vec4<i32>(-1359i, 1i, -32093i, u_input.b.x), vec4<i32>(1i, 1i, 8301i, -1i) & vec4<i32>(2147483647i, 12981i, u_input.b.x, 2147483647i))));
    global0 = array<vec2<u32>, 18>();
    var_0 = u_input.b.x ^ -2147483647i;
    let var_1 = -1000f;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))) + -1926f), _wgslsmith_f_op_f32(var_1 * var_1))));
    var var_3 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(13419u, u_input.d), 23u)], func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-100f, var_2.x, -373f, var_2.x)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, var_1, var_2.x, var_1))), true)), Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), min(vec4<i32>(7494i, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i)), false, u_input.b.x, u_input.b.x), vec2<u32>(1u, abs(24743u)), _wgslsmith_f_op_f32(func_1(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), _wgslsmith_mod_i32(u_input.b.x, -44804i))))), -2019f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(max(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x)), firstLeadingBit(-63149i), _wgslsmith_mod_i32(u_input.b.x, -5261i), false, u_input.a.x), Struct_3(false, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, 546f, var_2.x, -793f))))))));
    var var_4 = var_3.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_3.b.b.yyw, _wgslsmith_f_op_f32(func_3(Struct_5(reverseBits(-vec4<i32>(-36630i, 0i, -2147483647i, u_input.b.x)), u_input.b.x, ~u_input.b.x, any(!vec2<bool>(var_3.b.a, var_3.b.a)), u_input.d ^ _wgslsmith_sub_u32(u_input.c.x, u_input.a.x)), Struct_3(!all(vec4<bool>(var_3.b.a, false, true, var_3.b.a)), _wgslsmith_f_op_vec4_f32(-var_3.b.b)))), min(~(-u_input.b), ~_wgslsmith_sub_vec3_i32(countOneBits(u_input.b), countOneBits(vec3<i32>(1i, u_input.b.x, 52228i)))));
}

