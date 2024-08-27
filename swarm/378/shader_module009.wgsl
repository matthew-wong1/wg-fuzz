struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32 = 209f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    let var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~(u_input.a.x << (789u % 32u)), 1u, 59114u), ~(~countOneBits(u_input.c)));
    let var_1 = 1525f;
    var var_2 = var_0 << (_wgslsmith_mult_u32(46751u, 34087u) % 32u);
    var var_3 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-327f * 1220f) - _wgslsmith_div_f32(-708f, 347f)) + _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x - var_1))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 840f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -828f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1439f)))), 1i);
    let var_4 = false && all(!(!select(vec2<bool>(false, var_3.a), vec2<bool>(var_3.a, var_3.a), false)));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(409f, var_3.b, -149f, 449f), vec4<f32>(var_3.b, var_3.b, global0.x, -1328f)))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(var_3.b + var_1), _wgslsmith_f_op_f32(-var_1), -261f)))));
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<u32>(u_input.a.x, abs(_wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_div_u32(63281u, 1u))));
    let var_1 = u_input.a.x;
    let var_2 = Struct_2(false, 982f, u_input.d.x);
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(421f, 2219f, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -2164f, var_2.b, 1398f))))), vec4<f32>(-1024f, global0.x, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-var_2.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))));
    var var_4 = ~(~min(var_0.x, min(69691u, 1u)));
    return Struct_3(-697f, _wgslsmith_div_i32(~0i, var_2.c >> (firstLeadingBit(u_input.c.x) % 32u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    global1 = arg_2.b;
    let var_0 = vec3<i32>(9706i >> (1u % 32u), 37782i, ~_wgslsmith_clamp_i32(~u_input.e, i32(-1i) * -2147483647i, _wgslsmith_add_i32(-2147483647i, _wgslsmith_div_i32(arg_0.x, -12512i))));
    var var_1 = func_2();
    var var_2 = Struct_2(all(!arg_1.c), arg_2.b, firstTrailingBit(countOneBits(firstLeadingBit(5205i))));
    var var_3 = ~2147483647i;
    return false;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1381f, arg_2.b.x)), vec4<f32>(arg_2.b.x, -243f, global0.x, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_f_op_f32(select(-1000f, -1000f, arg_2.c.x)))), -784f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_2.b.x)), -122f)), -329f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, global0.x, var_0.x, 140f), vec4<f32>(global0.x, global0.x, global0.x, -424f))), vec4<f32>(arg_2.b.x, var_0.x, -792f, arg_2.b.x), !vec4<bool>(arg_2.c.x, true, false, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, var_0.x, var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-var_1);
    var var_2 = -72018i != -arg_0;
    var var_3 = reverseBits(vec2<i32>(0i, firstLeadingBit(-2147483647i)));
    return Struct_2(!(!arg_2.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1739f)))))), _wgslsmith_f_op_f32(select(-1407f, _wgslsmith_f_op_f32(-global0.x), arg_2.c.x)))), -select(reverseBits(u_input.b.x), var_3.x, all(!vec4<bool>(arg_2.a, arg_2.a, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.d.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(89737u, u_input.a.x, 0u), _wgslsmith_add_vec3_u32(u_input.c.yyz, vec3<u32>(0u, 20742u, 86862u))) ^ 55849u, Struct_1(-1040f <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 928f) * _wgslsmith_f_op_f32(round(-1777f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1134f, global0.x, 304f))), vec2<bool>(!func_1(u_input.b, Struct_1(true, vec3<f32>(global0.x, global0.x, global0.x), vec2<bool>(true, true)), Struct_2(false, global0.x, 27193i), vec2<f32>(global0.x, -1988f)), true)));
    var var_1 = u_input.c.xyw;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.b))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b))));
    var var_2 = _wgslsmith_div_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.b.zxz, select(-u_input.b.yxy, ~vec3<i32>(var_0.c, var_0.c, -61572i), vec3<bool>(false, var_0.a, false)))), u_input.b.yzw);
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-289f + _wgslsmith_f_op_f32(-1118f * -1641f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f * _wgslsmith_f_op_f32(exp2(global0.x))))) * vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(global0.x + 1172f)))));
    var_1 = _wgslsmith_mod_vec3_u32(u_input.c.zzy, _wgslsmith_clamp_vec3_u32(reverseBits(~(~vec3<u32>(var_1.x, 1u, var_1.x))), u_input.c.zxy, u_input.c.xwx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-var_0.b), global0.x, global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.b, -116f, 500f)), vec4<f32>(-1000f, 1302f, 2578f, var_0.b))))), var_2.x);
}

