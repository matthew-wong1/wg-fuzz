struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 7>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_3(Struct_1(true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2125f + 1385f))))), u_input.b);
    var_0 = Struct_3(Struct_1(true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.b)))) - var_0.b), 1812f)), ~abs(~(~0u)));
    var var_1 = 1u;
    let var_2 = -10362i;
    let var_3 = Struct_2(_wgslsmith_div_vec4_i32(min(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(var_2, arg_0, -2147483647i, 25762i)), _wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(u_input.e, -1i, 37654i, -4760i))) >> (abs(~vec4<u32>(var_0.c, u_input.b, var_0.c, var_0.c)) % vec4<u32>(32u)), vec4<i32>(-2147483647i << (firstLeadingBit(4294967295u) % 32u), -26943i, -1i, -select(2147483647i, -2147483647i, false))));
    return _wgslsmith_f_op_f32(-var_0.b);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    global1 = array<vec2<bool>, 7>();
    global0 = _wgslsmith_f_op_f32(func_3(select(_wgslsmith_div_i32(reverseBits(u_input.c.x), u_input.d), _wgslsmith_mult_i32(reverseBits(2147483647i), ~28292i), arg_0.a.a) ^ u_input.c.x));
    var var_0 = Struct_4(arg_0.c, Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c.zyz, vec3<i32>(-1i, -2147483647i, u_input.d)), u_input.c.x, -2147483647i, -u_input.d) ^ ~_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, vec4<i32>(u_input.e, -63848i, -1i, -1i))), arg_0.a.a);
    var var_1 = var_0.b.a | var_0.b.a;
    var var_2 = Struct_3(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -578f), arg_0.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) * _wgslsmith_f_op_f32(f32(-1f) * -1641f))), 2541u);
    return arg_0.a;
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    var_0 = u_input.b < 1u;
    let var_1 = Struct_3(func_2(Struct_3(Struct_1(true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1147f - -576f)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u), u_input.b))), -1123f, ~_wgslsmith_mod_u32(u_input.b, u_input.b));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b) - vec4<f32>(696f, 1492f, var_1.b, var_1.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 151f, var_1.b, var_1.b)))), vec4<f32>(-2580f, _wgslsmith_f_op_f32(func_3(28186i)), _wgslsmith_f_op_f32(-var_1.b), -559f), !select(vec4<bool>(true, var_1.a.a, var_1.a.a, var_1.a.a), select(vec4<bool>(true, var_1.a.a, var_1.a.a, false), vec4<bool>(var_1.a.a, var_1.a.a, true, false), vec4<bool>(false, var_1.a.a, var_1.a.a, false)), select(vec4<bool>(false, var_1.a.a, false, var_1.a.a), vec4<bool>(var_1.a.a, false, true, var_1.a.a), true))))));
    return Struct_2(vec4<i32>(i32(-1i) * -min(24944i, u_input.e), u_input.e, ~(-34119i), _wgslsmith_dot_vec3_i32(select(abs(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a)), vec3<i32>(u_input.c.x, 2147483647i, -1i), vec3<bool>(true, true, true)), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.e, u_input.a), u_input.c.wyy, u_input.c.xwz)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = -481f;
    let var_1 = Struct_3(func_2(Struct_3(Struct_1(true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~firstLeadingBit(u_input.b))), -1580f, 36605u);
    let var_2 = 4294967295u;
    let var_3 = vec4<u32>(countOneBits(_wgslsmith_sub_u32(19841u, 1u)), ~0u, var_1.c, u_input.b);
    global1 = array<vec2<bool>, 7>();
    let var_4 = var_1.b;
    let var_5 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~38356u, min(u_input.b, 43513u), ~var_3.x), vec3<u32>(27369u, var_1.c, var_2) << (select(vec3<u32>(var_3.x, 16243u, u_input.b), vec3<u32>(var_2, var_3.x, 1u), vec3<bool>(var_1.a.a, true, true)) % vec3<u32>(32u))), ~var_3.x, ~(var_2 | _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 1u, var_1.c, 59455u), vec4<u32>(1u, 0u, 0u, 4294967295u))), 0u), _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(countOneBits(var_3), var_3), select(~(~vec4<u32>(34510u, 4294967295u, 35083u, var_1.c)), ~(var_3 | vec4<u32>(0u, u_input.b, u_input.b, var_3.x)), true)));
    var var_6 = firstTrailingBit(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(224f, var_1.b, var_4) - vec3<f32>(var_4, var_1.b, 515f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, var_4, var_1.b))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1836f), -404f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(165f - var_4)), var_1.b)), vec2<u32>(var_2, ~countOneBits(4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(645f, 259f, var_4, -834f))), vec4<f32>(-1258f, var_1.b, var_4, -622f), var_1.b <= 572f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b, -1474f, var_1.b, 1742f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(643f, var_4, -1935f, 1021f) + vec4<f32>(1358f, var_4, var_1.b, var_4)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, 704f, 1000f, var_1.b)))), vec4<bool>(false, var_1.a.a, var_1.a.a & true, var_1.a.a)))));
}

