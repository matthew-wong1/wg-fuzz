struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(4294967295u, 40946u, 3027u), vec3<u32>(0u, 60680u, 93240u), vec3<u32>(10956u, 1u, 45169u), vec3<u32>(9675u, 50849u, 1u));

var<private> global2: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = !select(select(vec2<bool>(any(vec2<bool>(false, false)), select(true, false, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), true);
    let var_1 = _wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 1f)));
    var var_2 = Struct_1(_wgslsmith_div_u32(firstLeadingBit(49810u), 1u), var_0.x, u_input.c.x, vec3<bool>(arg_2.x == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-259f + arg_2.x))), var_0.x, all(!select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)))));
    return _wgslsmith_f_op_f32(-1152f * 453f);
}

fn func_2() -> Struct_1 {
    var var_0 = abs(vec4<i32>(-1379i, _wgslsmith_div_i32(2147483647i, u_input.b.x), max(reverseBits(u_input.b.x), countOneBits(u_input.b.x)) & u_input.b.x, u_input.b.x));
    global1 = array<vec3<u32>, 4>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(179f - -442f), _wgslsmith_f_op_f32(floor(102f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-253f, _wgslsmith_f_op_f32(func_3(var_0.yzy, vec2<f32>(-888f, 405f), vec3<f32>(-604f, 128f, -746f)))) - -381f)));
    var_0 = vec4<i32>(-38657i, -60769i, abs(min(_wgslsmith_add_i32(-2147483647i, u_input.b.x & 21186i), -u_input.b.x)), u_input.b.x);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -893f)))));
    return Struct_1(_wgslsmith_mult_u32(u_input.a.x, ~0u), false, u_input.d, vec3<bool>(!all(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, true, true, true)), true || !any(vec4<bool>(false, true, false, true))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = select(!select(vec4<bool>(arg_0.b || true, any(vec3<bool>(false, arg_0.d.x, arg_0.b)), true, true), select(vec4<bool>(true, arg_0.b, true, true), vec4<bool>(true, arg_0.d.x, false, false), arg_0.d.x), vec4<bool>(!arg_0.b, true, all(vec4<bool>(false, true, arg_0.d.x, true)), arg_1.x != arg_0.a)), !(!(!select(vec4<bool>(arg_0.d.x, true, arg_0.b, false), vec4<bool>(arg_0.d.x, arg_0.b, false, arg_0.b), vec4<bool>(false, false, arg_0.b, arg_0.b)))), !func_2().b);
    global1 = array<vec3<u32>, 4>();
    let var_1 = arg_1.x;
    let var_2 = Struct_1(~0u, true, arg_0.a, arg_0.d);
    let var_3 = vec4<i32>(firstTrailingBit(u_input.b.x), u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, (u_input.b.x & _wgslsmith_div_i32(u_input.b.x, u_input.b.x)) << ((arg_1.x & (39336u ^ var_1)) % 32u)), ~(-13584i));
    return func_2();
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<u32>, 4>();
    var var_0 = u_input.b.x;
    let var_1 = func_4(func_2(), ~(~(~vec4<u32>(u_input.d, u_input.c.x, 1u, u_input.c.x) << (~vec4<u32>(u_input.d, 61263u, 1u, 4294967295u) % vec4<u32>(32u)))));
    let var_2 = var_1;
    global1 = array<vec3<u32>, 4>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_2();
    let var_2 = Struct_1(4249u, !(!((var_1.b & true) || var_0.b)), 21938u, var_1.d);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f));
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec3_i32(u_input.b.yyy, _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(0i, u_input.b.x, 29426i)), -u_input.b.xyx)), _wgslsmith_div_vec3_i32(u_input.b.zzw, abs(u_input.b.zyy))), ~(~_wgslsmith_clamp_vec2_i32(-u_input.b.wy, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(2147483647i, u_input.b.x)), u_input.b.yx)), _wgslsmith_add_u32(~_wgslsmith_add_u32(~var_4, ~8218u), (_wgslsmith_sub_u32(var_2.c, var_2.a) >> (11459u % 32u)) ^ (1u ^ (var_2.a | var_0.a))), vec4<i32>(-19828i, firstLeadingBit(1i), _wgslsmith_div_i32(u_input.b.x, 35247i << (var_4 % 32u)), 0i) ^ -(-u_input.b | u_input.b));
}

