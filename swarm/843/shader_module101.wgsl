struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    global0 = array<Struct_2, 32>();
    let var_0 = !(!arg_3.a) && arg_3.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(534f, arg_2.a.x)));
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f) * arg_2.a.x);
}

fn func_3() -> u32 {
    var var_0 = Struct_3(_wgslsmith_mod_u32(u_input.b.x, u_input.d.x & 4294967295u), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(713f, 838f), 1974f, true)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(747f + -338f))), true)));
    var_0 = Struct_3(var_0.a, -829f, -995f);
    var var_1 = true;
    let var_2 = reverseBits(u_input.e.x & _wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(-9589i), u_input.e.x), _wgslsmith_div_i32(-u_input.e.x, ~u_input.e.x)));
    var var_3 = ~u_input.b.x;
    return u_input.b.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_add_vec3_u32(countOneBits(countOneBits(vec3<u32>(u_input.d.x ^ 70447u, u_input.b.x, func_3()))), u_input.d.yyx);
    var var_1 = abs(_wgslsmith_sub_vec2_u32(var_0.xz, vec2<u32>(~u_input.b.x, 4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(u_input.d, vec4<u32>(1u << (u_input.b.x % 32u), ~u_input.d.x, ~1u, _wgslsmith_div_u32(83444u, u_input.d.x)), !(!vec4<bool>(false, false, arg_1.x, true))), var_1.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-642f, 232f, 389f))) + vec3<f32>(419f, -313f, -569f)), arg_0.x, ~firstLeadingBit(vec3<i32>(0i, u_input.c, u_input.c))), Struct_2(true, firstTrailingBit(abs(vec2<u32>(58400u, 1u))), vec2<u32>(var_1.x, 1855u), max(~u_input.b, u_input.b)))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(min(var_2, -509f)))), _wgslsmith_f_op_f32(f32(-1f) * -486f));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-var_2), var_2, var_2, var_2);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-300f, 261f) - 101f)), var_4.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = arg_1.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -392f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0, vec3<f32>(arg_1.a.x, 1764f, arg_1.a.x))) * _wgslsmith_f_op_vec3_f32(min(arg_1.a, arg_1.a)))))), vec3<bool>(arg_1.c.x > 0i, arg_2, arg_2)));
    var var_2 = 6949u;
    var_2 = 30316u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, -1000f)));
    return _wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.e.zx, arg_1.c.zy), ~(-3393i)) | _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(-2147483647i, 0i)), 2147483647i), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(44363i, -1i, -5290i), vec3<i32>(63368i, u_input.c, -27438i)), vec3<i32>(select(47916i, 0i, false), arg_1.b, _wgslsmith_dot_vec3_i32(arg_1.c, arg_1.c))), u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 32>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, 1045f, _wgslsmith_f_op_f32(func_1(u_input.b, u_input.b.x, Struct_1(vec3<f32>(1130f, 927f, -313f), -77405i, u_input.e), global0[_wgslsmith_index_u32(u_input.d.x, 32u)])))))), u_input.a, func_4(~(~(~vec2<u32>(u_input.b.x, 0u))), Struct_1(vec3<f32>(-535f, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(func_2(vec4<i32>(41265i, u_input.c, u_input.e.x, 17840i), vec2<bool>(false, true)))), u_input.a, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.e, vec3<i32>(0i, u_input.e.x, -1i)), abs(u_input.e))), true, Struct_2(true || all(vec4<bool>(true, false, false, true)), vec2<u32>(reverseBits(305u), 1u), _wgslsmith_mod_vec2_u32(u_input.b.yz, min(vec2<u32>(1u, u_input.d.x), u_input.d.wx)), reverseBits(~u_input.b))));
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_1 = true;
    global0 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.d.x, ~20844u));
}

