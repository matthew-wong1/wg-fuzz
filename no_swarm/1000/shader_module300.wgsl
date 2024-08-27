struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, false, false, false, false, false, true, true, true, true, false, false, true, true, true, true, true, false, false, true, false, false, false, false, true, false, true, true, true, true, true, false);

var<private> global1: array<Struct_4, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_clamp_vec3_u32(~u_input.a.xww, ~select(u_input.a.zww, select(vec3<u32>(u_input.b.x, u_input.a.x, 1u), vec3<u32>(u_input.b.x, u_input.a.x, 1u), true), global0[_wgslsmith_index_u32(27467u, 32u)]) >> (vec3<u32>(u_input.b.x, ~u_input.b.x, ~(~u_input.b.x)) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 22704u)), u_input.b.zx), reverseBits(_wgslsmith_clamp_u32(abs(u_input.b.x), firstTrailingBit(u_input.a.x), 27909u))));
    var var_1 = _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, arg_0, arg_0), u_input.c.zxz), select(vec3<i32>(arg_0, u_input.c.x, -1i), vec3<i32>(-1i, u_input.c.x, -1i), vec3<bool>(true, true, global0[_wgslsmith_index_u32(27175u, 32u)])) ^ select(u_input.c.yyx, vec3<i32>(u_input.c.x, arg_0, 2147483647i), global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), -2147483647i));
    var var_2 = -abs(arg_0);
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-930f - 293f) + -810f), any(vec2<bool>(false, false)))))));
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1383f);
    return true;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(922f)) + -1603f), 2151f)));
    var var_1 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 575f))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-757f, 1053f, true)), 1f)), all(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, true))), global0[_wgslsmith_index_u32(17805u, 32u)], global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 32u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(713f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, var_0)) * _wgslsmith_f_op_f32(f32(-1f) * -627f)))), 1055f, false);
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_2 = Struct_5(_wgslsmith_f_op_f32(select(-676f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - var_0))), func_3(u_input.c.x))), _wgslsmith_mult_vec3_i32(u_input.c.yxy, (firstLeadingBit(u_input.c.wwy) & min(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.ywy)) ^ (u_input.c.yxz << (u_input.b % vec3<u32>(32u)))), vec2<i32>(u_input.c.x, u_input.c.x));
    return false;
}

fn func_1() -> f32 {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    var var_0 = !vec2<bool>(func_2(), false);
    let var_1 = 1f;
    var_0 = vec2<bool>((u_input.c.x ^ u_input.c.x) != (i32(-1i) * -1i), true);
    return -132f;
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = select(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(12450u, 32u)], false, global0[_wgslsmith_index_u32(0u, 32u)])), !select(select(vec3<bool>(false, arg_1, true), vec3<bool>(global0[_wgslsmith_index_u32(80802u, 32u)], false, arg_1), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(33464u, 32u)])), vec3<bool>(false, false, true), vec3<bool>(arg_1, true, arg_1)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(27960u), 1u), 32u)]), vec3<bool>(arg_1, !global0[_wgslsmith_index_u32(31780u << (u_input.b.x % 32u), 32u)] | any(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_1, true)), global0[_wgslsmith_index_u32((~0u | ~u_input.b.x) >> (22481u % 32u), 32u)]), select(vec3<bool>(_wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(4294967295u, u_input.a.x)) < ~0u, arg_1, false), vec3<bool>(_wgslsmith_add_u32(36223u, 0u) >= ~u_input.b.x, true, all(vec3<bool>(false, arg_1, false))), !select(!vec3<bool>(false, arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], true, false), select(vec3<bool>(true, true, true), vec3<bool>(arg_1, false, true), true))));
    let var_1 = Struct_4(arg_0.c.x, ~abs(u_input.b.x), Struct_2(u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * 774f));
    var var_2 = 46438u;
    var_2 = ~abs(var_1.c.a);
    let var_3 = var_1;
    return Struct_3(select(select(vec4<bool>(all(var_0), false, global0[_wgslsmith_index_u32(var_1.b, 32u)], 1u <= var_1.c.a), !select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.c.a, 32u)], global0[_wgslsmith_index_u32(var_1.b, 32u)], true), global0[_wgslsmith_index_u32(65063u, 32u)]), any(var_0.xx)), select(vec4<bool>(true, !arg_1, arg_1 & false, arg_1), vec4<bool>(arg_1, !arg_1, var_0.x, var_0.x), arg_1), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a))), arg_0.a, _wgslsmith_div_f32(-788f, var_1.d) < arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = func_4(Struct_5(_wgslsmith_f_op_f32(func_1()), vec3<i32>(u_input.c.x, -2147483647i, -1i), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(2480i, -2147483647i), u_input.c.zz | u_input.c.yw))), !(!any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true, global0[_wgslsmith_index_u32(2588u, 32u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 32u)], false)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(170f + _wgslsmith_f_op_f32(abs(-1000f))))), -399f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(461f)) + 263f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-271f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), true || (8988u <= u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(26601i, -1i, ~u_input.c.x, 1i), u_input.c.x, _wgslsmith_f_op_f32(func_1()));
}

