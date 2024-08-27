struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: f32) -> f32 {
    global0 = array<vec3<bool>, 24>();
    var var_0 = abs(~reverseBits(firstTrailingBit(_wgslsmith_add_vec2_u32(u_input.e.zz, u_input.a.yz))));
    global0 = array<vec3<bool>, 24>();
    let var_1 = Struct_2(_wgslsmith_mod_i32(-u_input.b.x, u_input.b.x));
    var var_2 = Struct_2(var_1.a);
    return arg_1;
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<f32>(2762f, 1472f, 1650f);
    var var_1 = var_0.x;
    var var_2 = all(vec4<bool>(true, true, true, true));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1862u != u_input.a.x, -607f))), 1470f), _wgslsmith_div_f32(var_0.x, 2104f));
    let var_3 = 2018f;
    return Struct_2(~(-1i));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(1i);
    var_0 = func_2();
    let var_1 = ~_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.e.zzy), max(vec3<u32>(9101u, u_input.e.x, u_input.c.x), u_input.e.yxx));
    global0 = array<vec3<bool>, 24>();
    return Struct_1(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.a, -6608i, var_0.a, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, var_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_0.a, u_input.b.x), vec3<i32>(-11211i, -35496i, var_0.a))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_0.a, var_0.a), vec4<i32>(var_0.a, 1i, 48223i, 0i))), u_input.e.wzx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1418f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(132f, 426f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, -730f, 535f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-601f, 1980f, 134f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-277f, -1443f, 1231f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), arg_1.c))));
    var var_1 = Struct_2(firstTrailingBit(36148i));
    let var_2 = arg_0;
    var_0 = arg_1.d;
    let var_3 = -1i;
    return func_1();
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(-1000f));
    global0 = array<vec3<bool>, 24>();
    global0 = array<vec3<bool>, 24>();
    let var_1 = ~_wgslsmith_mod_u32(228u, ~countOneBits(_wgslsmith_dot_vec3_u32(u_input.e.yww, vec3<u32>(u_input.a.x, arg_0.b.x, u_input.e.x))));
    global0 = array<vec3<bool>, 24>();
    return func_4(func_2(), func_4(Struct_2(-2147483647i), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 24>();
    let var_0 = u_input.b;
    var var_1 = func_5(func_4(Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(3414i, var_0.x, u_input.b.x, -3138i), vec4<i32>(48848i, var_0.x, var_0.x, u_input.b.x)), vec4<i32>(0i, 32496i, 1i, u_input.b.x))), func_1()));
    var_1 = func_5(Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.a, vec4<i32>(var_1.a.x, 2147483647i, 12066i, var_0.x)), select(var_1.a, vec4<i32>(var_1.a.x, 0i, var_0.x, 2147483647i), false)), vec4<i32>(-35704i, _wgslsmith_sub_i32(0i, u_input.b.x), select(u_input.b.x, var_1.a.x, false), 2147483647i)), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c, var_1.d.x))), vec3<f32>(_wgslsmith_f_op_f32(-176f + var_1.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(683f, var_1.c, true)), _wgslsmith_f_op_f32(func_3(false, 505f))), -1050f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.b.x, _wgslsmith_mult_i32(firstLeadingBit(u_input.b.x << (var_1.b.x % 32u)), _wgslsmith_mult_i32(select(-4107i, u_input.b.x, true), u_input.b.x))), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, abs(u_input.a.x), u_input.e.x, u_input.c.x), _wgslsmith_div_vec4_u32(u_input.e >> (vec4<u32>(0u, 0u, 25343u, var_1.b.x) % vec4<u32>(32u)), max(vec4<u32>(var_1.b.x, u_input.d, u_input.a.x, 10338u), vec4<u32>(26542u, u_input.e.x, 16880u, 8118u))))), -firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 53571i, -41017i, -32342i), var_1.a))), var_1.a);
}

