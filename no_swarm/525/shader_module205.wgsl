struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

var<private> global1: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: u32) -> i32 {
    global0 = array<Struct_4, 8>();
    var var_0 = false;
    var_0 = !((!global1.c.x & true) || all(!select(vec2<bool>(global1.b.x, false), vec2<bool>(true, true), vec2<bool>(global1.c.x, global1.c.x))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - arg_0), arg_0))), arg_0, global1.b.x));
    var_0 = global1.c.x;
    return 2147483647i;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_4) -> bool {
    let var_0 = Struct_1(1582f, ~u_input.c, arg_2.a.d < _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.a & global1.d, _wgslsmith_clamp_u32(arg_2.a.d, global1.d, 617u), 0u, firstTrailingBit(58749u)), u_input.c), select(vec3<i32>(reverseBits(1i), u_input.a, i32(-1i) * -u_input.a), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-19990i, -10569i, 15679i), vec3<i32>(-2225i, u_input.a, -29783i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(73583i, 1i, -1i), vec3<i32>(u_input.a, u_input.a, u_input.a))), vec3<bool>(arg_2.a.c.x, global1.c.x, !global1.c.x)));
    let var_1 = ~firstLeadingBit(select(vec2<i32>(func_3(var_0.a, vec4<i32>(37980i, u_input.a, -1i, u_input.a), 1u), firstLeadingBit(-1i)), vec2<i32>(_wgslsmith_add_i32(2147483647i, -67284i), 0i), select(vec2<bool>(false, var_0.c), !arg_0, arg_0)));
    var var_2 = arg_2.a.b;
    var var_3 = vec4<bool>(false, all(!(!select(vec3<bool>(global1.b.x, var_2.x, var_0.c), arg_2.a.b.zzy, global1.b.xww))), (var_0.a >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a - var_0.a)))) && var_0.c, true || (-var_0.d.x < 0i));
    global1 = arg_2.a;
    return true || var_2.x;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = ~4712i;
    var var_1 = all(vec3<bool>(true, any(vec4<bool>(any(vec2<bool>(true, global1.c.x)), all(vec2<bool>(false, global1.c.x)), !global1.b.x, any(vec3<bool>(true, false, global1.c.x)))), func_2(vec2<bool>(false, true), u_input.c.yw, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 82610u) & u_input.c.xxx, vec3<u32>(76427u, global1.a, 46763u)), 8u)])));
    var_1 = !(!(!(_wgslsmith_div_i32(arg_0, -2147483647i) <= arg_0)));
    global0 = array<Struct_4, 8>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-291f, _wgslsmith_f_op_f32(f32(-1f) * -819f), 906f, _wgslsmith_f_op_f32(908f - -660f))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -690f), _wgslsmith_f_op_f32(step(469f, -1022f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(993f))), -611f));
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.c.x & u_input.c.x, _wgslsmith_mod_u32(25316u, u_input.b), ~80050u, global1.d), vec4<u32>((1u >> (1u % 32u)) << (_wgslsmith_add_u32(global1.a, abs(73641u)) % 32u), abs(global1.a), 0u, global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(4294967295u, select(!(!(!vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x))), vec4<bool>(true, true, true, true), select(global1.b, !select(global1.b, vec4<bool>(global1.b.x, global1.c.x, false, global1.c.x), true), true)), global1.c, 32145u);
    global0 = array<Struct_4, 8>();
    var var_0 = vec2<u32>(func_1(-44243i), 50995u) >> (~u_input.c.xw % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-324f + _wgslsmith_f_op_f32(f32(-1f) * -2700f)), 1393f)));
    global0 = array<Struct_4, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-select(firstLeadingBit(vec2<i32>(-2147483647i, 0i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i), vec2<i32>(-2147483647i, -2956i)), global1.b.zw), vec2<i32>(-2147483647i, 14903i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, -814f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-864f, var_1.x))), _wgslsmith_div_vec2_f32(var_1, vec2<f32>(1484f, var_1.x)))))));
}

