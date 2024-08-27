struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = true;
    global0 = array<Struct_1, 10>();
    let var_1 = Struct_1(vec2<bool>(true, 2147483647i >= ~(-arg_0)), u_input.c.x >> (4294967295u % 32u));
    var var_2 = global0[_wgslsmith_index_u32(var_1.b, 10u)];
    global0 = array<Struct_1, 10>();
    return Struct_1(var_2.a, abs(var_2.b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> vec2<bool> {
    var var_0 = arg_1.xz;
    var_0 = _wgslsmith_f_op_vec2_f32(sign(arg_1.xz));
    var var_1 = _wgslsmith_f_op_f32(arg_1.x - 1322f);
    var var_2 = Struct_1(func_1(u_input.e).a, u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    return var_2.a;
}

fn func_2() -> vec4<i32> {
    global0 = array<Struct_1, 10>();
    var var_0 = select(select(vec2<bool>(true, true), func_3(func_1(~u_input.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-457f, -445f, -661f), vec3<f32>(1787f, -1387f, -330f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1044f, 1000f, 845f) - vec3<f32>(806f, -601f, -1000f))), u_input.d.x), vec2<bool>(true, true)), !(!func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(3075i, 1i, -1i, -2147483647i), vec4<i32>(2147483647i, u_input.e, -25758i, u_input.e))).a), all(vec4<bool>(!func_3(Struct_1(vec2<bool>(true, true), u_input.d.x), vec3<f32>(446f, -681f, -722f), u_input.a.x).x, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)))));
    let var_1 = u_input.a.x;
    var var_2 = !select(!select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(true, true, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, !var_0.x), !(!vec4<bool>(true, true, var_0.x, false)), !select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), true)), true != (var_1 == ~34944u));
    var_2 = !select(select(!select(vec4<bool>(true, false, var_2.x, true), vec4<bool>(var_0.x, var_2.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, false)), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_0.x), !(!vec4<bool>(true, var_0.x, false, var_2.x))), vec4<bool>(var_2.x, var_0.x, var_0.x != true, true), func_1(_wgslsmith_div_i32(u_input.e | 0i, u_input.e)).a.x);
    return reverseBits(vec4<i32>(~(~abs(-1i)), -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, u_input.e, 68939i, u_input.e), vec4<i32>(80943i, -2147483647i, u_input.e, -2147483647i)), vec4<i32>(u_input.e, 25339i, -9731i, u_input.e) | vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e)), _wgslsmith_clamp_i32(1i, 2147483647i, _wgslsmith_clamp_i32(u_input.e, abs(u_input.e), -u_input.e)), u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-_wgslsmith_mod_i32(-_wgslsmith_add_i32(u_input.e, -2147483647i), -2147483647i));
    global0 = array<Struct_1, 10>();
    var var_1 = var_0.a;
    let var_2 = func_2();
    var var_3 = max(-vec3<i32>(~1i & (0i >> (u_input.a.x % 32u)), u_input.e | u_input.e, -20615i), abs(vec3<i32>(abs(firstTrailingBit(-2147483647i)), -2147483647i ^ _wgslsmith_add_i32(var_2.x, 21084i), -u_input.e)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(969f, -262f) - 1f))));
    var var_5 = func_1(abs(2147483647i));
    let var_6 = Struct_1(!var_0.a, 0u);
    var_1 = select(vec2<bool>(select(!func_3(var_6, vec3<f32>(1675f, 475f, -678f), 29411u).x, true, var_6.a.x), true), !(!vec2<bool>(!var_5.a.x, false)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}

