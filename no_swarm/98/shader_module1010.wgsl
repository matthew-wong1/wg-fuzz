struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<Struct_2, 14>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_sub_u32(~u_input.a, firstTrailingBit(54409u)), min(0u, arg_1.x) >> (arg_1.x % 32u)) << (~countOneBits(arg_1.x & arg_1.x) % 32u)), 14u)];
    var_0 = Struct_2(var_0.a, var_0.b, _wgslsmith_mod_u32(arg_1.x, max(u_input.a, min(u_input.a, ~4294967295u))), firstLeadingBit(_wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(-8172i, u_input.b, u_input.b, -1i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, u_input.b, -23757i, -1i), vec4<i32>(1i, u_input.b, -12888i, 0i)))));
    let var_1 = Struct_5(var_0.a, firstTrailingBit(arg_1.yy), vec4<u32>(_wgslsmith_clamp_u32(1u, 24633u << (_wgslsmith_mult_u32(u_input.a, 1u) % 32u), arg_1.x), 1u, var_0.c, 94133u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-842f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + arg_0.x))))) + -436f));
    var_0 = Struct_2(vec2<bool>(select(true, select(all(vec2<bool>(var_1.a.x, var_1.a.x)), true, true), !var_1.a.x), true), var_0.b, var_1.b.x << (arg_1.x % 32u), abs(var_0.d));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2, 1229f)) - 534f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - var_2));
}

fn func_2() -> i32 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(1376f, -138f, 1199f), vec3<u32>(36517u, u_input.a, 4968u)))))))));
    var var_2 = vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(!var_0.x, any(vec3<bool>(false, var_0.x, var_0.x)), true), vec3<bool>(var_1 <= 1412f, true, false))), 702f != var_1, all(!vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), select(false, var_0.x, var_0.x), any(var_0), var_0.x || false)), false);
    let var_3 = max(-reverseBits(select(_wgslsmith_add_vec4_i32(vec4<i32>(58518i, 23287i, u_input.b, u_input.b), vec4<i32>(5434i, 57250i, u_input.b, 1i)), -vec4<i32>(-8325i, 21757i, u_input.b, -2150i), var_1 <= 578f)), _wgslsmith_sub_vec4_i32(vec4<i32>(select(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-33562i, u_input.b)), all(vec4<bool>(var_2.x, var_2.x, var_2.x, true))), u_input.b, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, 1i), u_input.b >> (u_input.a % 32u)), u_input.b), ~(-min(vec4<i32>(u_input.b, -19859i, -1i, u_input.b), vec4<i32>(-2147483647i, 33328i, 1i, u_input.b)))));
    var var_4 = reverseBits(var_3.x) | -2147483647i;
    return var_3.x;
}

fn func_1() -> vec3<i32> {
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    var var_0 = _wgslsmith_sub_u32(u_input.a, 4294967295u);
    return -vec3<i32>(func_2(), 1i, 1i);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    global0 = array<Struct_2, 14>();
    var var_0 = Struct_2(!(!(!(!vec2<bool>(arg_1.x, arg_1.x)))), Struct_1(false, u_input.b), 4294967295u, _wgslsmith_add_i32(arg_0 | ~(-arg_0), u_input.b));
    var_0 = global0[_wgslsmith_index_u32(1u, 14u)];
    let var_1 = reverseBits(-min(~firstTrailingBit(vec4<i32>(-1i, arg_0, 0i, -3429i)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d, arg_0, u_input.b, 66966i), vec4<i32>(26577i, u_input.b, u_input.b, 1i)), firstLeadingBit(vec4<i32>(-31151i, var_0.b.b, var_0.d, 2147483647i)))));
    global0 = array<Struct_2, 14>();
    return Struct_2(!(!arg_1.zz), Struct_1(var_0.a.x, 23483i), var_0.c, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_dot_vec3_i32(min(~vec3<i32>(31702i, u_input.b, u_input.b), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -41591i, u_input.b), vec3<i32>(13266i, 3322i, u_input.b)), select(vec3<i32>(u_input.b, -23697i, -12996i), vec3<i32>(2147483647i, u_input.b, u_input.b), false))), select(func_1(), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -13411i) >> (vec3<u32>(u_input.a, 23920u, 29277u) % vec3<u32>(32u)), ~vec3<i32>(u_input.b, u_input.b, u_input.b)), true)), vec3<bool>(true, true, any(vec3<bool>(true, true, true))), all(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    let var_1 = _wgslsmith_dot_vec4_i32(-(select(select(vec4<i32>(1i, 8890i, var_0.b.b, u_input.b), vec4<i32>(var_0.d, 11188i, 25496i, var_0.b.b), var_0.a.x), vec4<i32>(-44015i, 42051i, 86639i, -6593i) | vec4<i32>(-1i, var_0.b.b, -48924i, u_input.b), !vec4<bool>(true, var_0.b.a, true, var_0.a.x)) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, var_0.d, var_0.d, var_0.d), vec4<i32>(var_0.d, var_0.d, var_0.d, u_input.b)), select(vec4<i32>(var_0.d, -2147483647i, u_input.b, 21332i), vec4<i32>(var_0.d, var_0.b.b, -1i, var_0.b.b), vec4<bool>(var_0.a.x, false, var_0.b.a, true)))), ~(~vec4<i32>(-12196i, var_0.d, _wgslsmith_mult_i32(42214i, var_0.b.b), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b, u_input.b, var_0.b.b, 38225i), vec4<i32>(0i, -42828i, var_0.d, -1i)))));
    global0 = array<Struct_2, 14>();
    let var_2 = _wgslsmith_f_op_f32(-110f - _wgslsmith_div_f32(1452f, -816f));
    let var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + var_2)));
}

