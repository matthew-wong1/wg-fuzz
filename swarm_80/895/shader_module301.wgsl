struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: vec2<u32>) -> bool {
    global0 = array<Struct_5, 29>();
    global0 = array<Struct_5, 29>();
    global0 = array<Struct_5, 29>();
    global0 = array<Struct_5, 29>();
    let var_0 = ~0u | countOneBits(arg_3.x);
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> bool {
    global0 = array<Struct_5, 29>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -879f))), _wgslsmith_div_vec4_i32(vec4<i32>(31082i, (i32(-1i) * -2147483647i) | -arg_0.x, -min(2147483647i, -18631i), -2147483647i), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 30976i, arg_0.x, 2147483647i), vec4<i32>(arg_0.x, arg_0.x, -1i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 75504i, 0i, arg_0.x), min(vec4<i32>(u_input.a.x, 46432i, arg_0.x, arg_0.x), vec4<i32>(1i, arg_0.x, u_input.a.x, 1i))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3, arg_1.x, -262f))) - vec3<f32>(arg_1.x, arg_1.x, 347f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-110f, _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)))))));
    let var_1 = (vec2<u32>(40009u, _wgslsmith_mult_u32(~arg_2, u_input.c.x | u_input.c.x)) >> (~vec2<u32>(u_input.c.x, arg_2) % vec2<u32>(32u))) >> (vec2<u32>(~abs(arg_2), u_input.c.x) % vec2<u32>(32u));
    global0 = array<Struct_5, 29>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + 763f);
    return all(vec4<bool>(true, !(!(arg_0.x >= u_input.a.x)), func_3(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(vec2<bool>(false, false))), Struct_4(34089i, vec3<f32>(var_0.a.b, 1000f, -2116f)), vec3<bool>(true, true, true), vec2<u32>(~4294967295u, ~u_input.c.x)), all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: i32) -> bool {
    let var_0 = arg_2.b;
    var var_1 = u_input.a;
    global0 = array<Struct_5, 29>();
    return false;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_1 {
    let var_0 = u_input.c.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1219f + arg_1) * arg_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))));
    var var_2 = !(any(vec3<bool>(true, true, true)) != any(vec2<bool>(true, true)));
    var_1 = Struct_1(1735f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + var_1.b), -1000f, var_1.a), vec3<bool>(select(true, any(vec4<bool>(true, true, true, true)), false), select(true == func_2(u_input.a, vec2<f32>(333f, -828f), var_0, -151f), _wgslsmith_f_op_f32(min(arg_1, arg_1)) >= _wgslsmith_f_op_f32(109f * 1618f), true), func_2(u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -547f)), _wgslsmith_div_u32(58044u, _wgslsmith_dot_vec3_u32(u_input.c.wxz, vec3<u32>(var_0, 4294967295u, 31157u))), _wgslsmith_f_op_f32(-1690f * arg_1))), Struct_3(Struct_1(-1363f, _wgslsmith_f_op_f32(step(743f, -221f))), vec4<i32>(~_wgslsmith_add_i32(1i, u_input.a.x), -21441i, arg_0.x, arg_0.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-678f, var_1.a, arg_1)) * vec3<f32>(arg_1, arg_1, -850f)), vec3<f32>(1087f, _wgslsmith_f_op_f32(max(var_1.b, 359f)), var_1.b))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, var_1.a)))), vec2<f32>(_wgslsmith_f_op_f32(var_1.b + var_1.b), -102f)))), -2147483647i);
    return Struct_1(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) - arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 29>();
    global0 = array<Struct_5, 29>();
    let var_0 = func_1(u_input.b, 447f);
    var var_1 = var_0;
    var var_2 = -274f;
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 0i), ~_wgslsmith_add_i32(min(u_input.a.x, 3074i), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), ~firstTrailingBit(vec3<i32>(-26350i, ~u_input.b.x, u_input.a.x ^ 28356i)));
    let var_4 = global0[_wgslsmith_index_u32(u_input.c.x, 29u)];
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f))), var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.a, var_1.b))))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2013f + _wgslsmith_f_op_f32(-1038f + var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_1.a) - _wgslsmith_div_f32(-1237f, 2326f))), var_0.b), u_input.a, min(~reverseBits(vec4<i32>(5422i, 2147483647i, u_input.a.x, var_3)), ~(vec4<i32>(83860i, var_3, var_3, var_3) >> (u_input.c % vec4<u32>(32u))) << (firstTrailingBit(u_input.c) % vec4<u32>(32u))));
}

