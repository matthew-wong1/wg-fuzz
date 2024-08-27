struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_2(Struct_1(1366f, ~(_wgslsmith_mod_vec4_u32(vec4<u32>(35931u, 3051u, u_input.c.x, u_input.a), vec4<u32>(1u, u_input.d.x, u_input.c.x, 0u)) & ~vec4<u32>(20288u, 15044u, u_input.c.x, u_input.c.x)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1)), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), -arg_0.wyy >> (firstLeadingBit(vec3<u32>(1u, u_input.c.x, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1230f, 1533f, 1365f, 1046f), vec4<f32>(1122f, 1000f, 762f, -1548f))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-365f, -805f, 981f, -561f)), vec4<f32>(-1000f, 816f, 874f, 110f)))))));
    var var_2 = _wgslsmith_f_op_f32(round(-1454f));
    return Struct_1(var_1.a.a, countOneBits(vec4<u32>(_wgslsmith_mod_u32(select(78027u, 29704u, var_1.a.c.x), 4294967295u), var_1.a.b.x, 4294967295u, var_1.a.b.x)), select(select(var_1.a.c, vec2<bool>(!var_1.a.c.x, true), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, var_1.a.c.x, true, var_0)), arg_1), !arg_1), ~(vec3<i32>(-1i) * -arg_0.yzy));
}

fn func_3(arg_0: Struct_5) -> u32 {
    let var_0 = arg_0.a;
    let var_1 = arg_0.b;
    let var_2 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), vec4<u32>(1u, 76409u, u_input.a ^ u_input.a, ~4294967295u), var_1.a.c, var_1.a.d), _wgslsmith_f_op_vec4_f32(ceil(var_1.b))));
    var var_3 = var_2.a.a.d.x;
    var_3 = arg_0.b.a.d.x;
    return _wgslsmith_mult_u32(var_1.a.b.x, arg_0.b.a.b.x);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_5 {
    global0 = func_3(Struct_5(arg_0.a.c.x, arg_0));
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_add_vec2_u32(min(func_1(vec4<i32>(-1i, 45934i, arg_0.a.d.x, u_input.b), false).b.wy, vec2<u32>(reverseBits(var_0.b.x), ~(~0u))), min(firstTrailingBit(var_0.b.zw), var_0.b.zz));
    let var_2 = vec2<u32>(39463u, ~(~var_0.b.x));
    let var_3 = ~(~vec4<u32>(0u, _wgslsmith_dot_vec4_u32(arg_0.a.b, vec4<u32>(1668u, 1u, var_2.x, arg_0.a.b.x)) << (~7486u % 32u), _wgslsmith_mult_u32(15690u, ~arg_0.a.b.x), arg_0.a.b.x));
    return Struct_5(!(!(var_0.c.x && false)), arg_0);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.b.a.d, arg_0.b.a.d), countOneBits(arg_0.b.a.d >> (select(arg_0.b.a.b.yyx, vec3<u32>(arg_0.b.a.b.x, arg_0.b.a.b.x, arg_0.b.a.b.x), false) % vec3<u32>(32u)))), arg_0.b.a.d.x ^ 2147483647i, _wgslsmith_add_i32(1i, -_wgslsmith_add_i32(arg_0.b.a.d.x ^ -91000i, _wgslsmith_sub_i32(arg_0.b.a.d.x, u_input.b))));
    let var_1 = (_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(var_0.x, arg_0.b.a.d.x, var_0.x, arg_0.b.a.d.x)), vec4<i32>(u_input.b << (0u % 32u), min(23434i, var_0.x), -2147483647i, arg_0.b.a.d.x)) | vec4<i32>(-u_input.e.x, 1i, arg_0.b.a.d.x, _wgslsmith_mult_i32(~u_input.b, -1i))) | firstLeadingBit(countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_0.x, var_0.x, arg_0.b.a.d.x), vec4<i32>(u_input.e.x, 2147483647i, u_input.e.x, 17598i)), vec4<i32>(32274i, 0i, 2147483647i, -23786i), _wgslsmith_add_vec4_i32(vec4<i32>(3129i, var_0.x, arg_0.b.a.d.x, 20713i), vec4<i32>(18095i, u_input.e.x, -4970i, 66849i)))));
    var_0 = ~firstLeadingBit(-(~(-vec3<i32>(-1i, -18215i, -2147483647i))));
    global0 = ~_wgslsmith_div_u32(func_1(var_1, arg_0.a && !arg_0.b.a.c.x).b.x, ~0u);
    global0 = 32587u;
    return Struct_1(-720f, vec4<u32>(_wgslsmith_add_u32(arg_0.b.a.b.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(13344u, arg_0.b.a.b.x), _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.a, 0u)))), arg_0.b.a.b.x, ~firstLeadingBit(_wgslsmith_div_u32(14559u, arg_0.b.a.b.x)), ~_wgslsmith_mod_u32(arg_0.b.a.b.x, firstLeadingBit(35546u))), !(!select(!vec2<bool>(arg_0.a, true), arg_0.b.a.c, arg_0.a)), select(abs(u_input.e), var_1.yxz, select(!vec3<bool>(true, arg_0.b.a.c.x, arg_0.b.a.c.x), vec3<bool>(any(arg_0.b.a.c), false, 1u > arg_0.b.a.b.x), all(select(vec4<bool>(arg_0.b.a.c.x, arg_0.a, arg_0.a, true), vec4<bool>(arg_0.b.a.c.x, true, arg_0.a, true), vec4<bool>(true, arg_0.b.a.c.x, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(-958f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -603f) * _wgslsmith_f_op_f32(-441f + 1000f)) - -549f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -688f) * 1754f), _wgslsmith_f_op_f32(-1155f - _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-1112f, 461f), true))));
    let var_1 = Struct_2(func_4(func_2(Struct_2(func_1(vec4<i32>(u_input.b, 1i, -2147483647i, -51701i), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1316f) + vec4<f32>(508f, var_0.x, var_0.x, 277f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(954f, var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - func_1(vec4<i32>(u_input.e.x, u_input.e.x, u_input.b, u_input.b), false).a), -976f)), vec4<f32>(-753f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -864f)), _wgslsmith_f_op_f32(f32(-1f) * -534f), 891f));
    let var_2 = vec2<bool>(any(!var_1.a.c), !var_1.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(~u_input.a ^ firstTrailingBit(u_input.d.x), 45944u, _wgslsmith_dot_vec3_u32(var_1.a.b.xww >> (var_1.a.b.zyw % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(var_1.a.b.ywz, var_1.a.b.www)), abs(_wgslsmith_add_u32(40275u, 103194u))), var_1.a.b, false), max(~var_1.a.d, var_1.a.d | _wgslsmith_mult_vec3_i32(u_input.e >> (vec3<u32>(var_1.a.b.x, 1u, var_1.a.b.x) % vec3<u32>(32u)), max(vec3<i32>(26457i, -1i, 5539i), var_1.a.d))), 23895u);
}

