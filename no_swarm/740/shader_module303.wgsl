struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(u_input.d.zx, u_input.d.yx, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -u_input.d.ww, abs(~_wgslsmith_add_vec2_i32(u_input.d.yx, vec2<i32>(-2147483647i, -54426i)))));
    return ~(~1u);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> vec2<bool> {
    global0 = !vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -248f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(474f - arg_1))), ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 4294967295u, 0u, 0u)) == _wgslsmith_mult_u32(select(1u, 33400u, global0.x), u_input.c.x << (41891u % 32u)));
    global0 = vec2<bool>(true, global0.x);
    global0 = vec2<bool>(select(!(any(vec3<bool>(arg_0.x, true, false)) & any(vec2<bool>(arg_0.x, global0.x))), false, all(select(arg_0.xy, arg_0.wx, arg_0.x)) || (_wgslsmith_div_f32(-770f, 372f) >= arg_1)), true);
    let var_0 = Struct_3(-1538f, arg_0, u_input.a);
    global0 = var_0.b.yw;
    return select(select(select(vec2<bool>(var_0.b.x, !var_0.b.x), select(vec2<bool>(true, false), select(vec2<bool>(var_0.b.x, false), arg_0.ww, var_0.b.zx), !global0.x), !(!arg_0.yw)), arg_0.wx, true), select(!vec2<bool>(!var_0.b.x, -5353i == u_input.a), vec2<bool>(false, true), -21478i < ~(~u_input.b)), select(select(arg_0.wy, var_0.b.wy, any(!vec4<bool>(true, false, global0.x, false))), !vec2<bool>(any(var_0.b), any(vec2<bool>(global0.x, false))), select(var_0.b.wy, select(!var_0.b.wy, vec2<bool>(true, var_0.b.x), vec2<bool>(true, false)), false)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-276f, -456f)))), 222f), vec2<f32>(_wgslsmith_f_op_f32(floor(-220f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 1950f) - _wgslsmith_f_op_f32(exp2(arg_0))) * _wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), 4294967295u >= u_input.c.x)))));
    global0 = vec2<bool>(true, true);
    global0 = func_4(vec4<bool>(false | any(vec2<bool>(global0.x, true)), !any(vec2<bool>(arg_1.d, arg_1.d)) && select(true && arg_1.d, true, -2147483647i >= u_input.b), select(true, false, func_3(arg_1.e.x, Struct_3(-295f, vec4<bool>(global0.x, arg_1.d, false, false), u_input.d.x), 30519u, vec3<f32>(arg_0, arg_0, arg_0)) > max(58256u, 0u)), !(!any(vec3<bool>(global0.x, false, arg_1.d)))), 1000f);
    global0 = !vec2<bool>(true & global0.x, abs(-18394i) >= firstLeadingBit(arg_1.a.x));
    global0 = !(!vec2<bool>(!all(vec3<bool>(true, global0.x, false)), arg_1.d));
    return func_4(select(vec4<bool>(true, all(select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), global0.x)), arg_1.d, any(vec4<bool>(false, arg_1.d, arg_1.d, true)) & false), !vec4<bool>(false, false, true, all(vec4<bool>(global0.x, arg_1.d, false, arg_1.d))), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), true))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = vec2<f32>(-2015f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) - -478f))));
    global0 = select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), !(!(!func_2(var_0.x, Struct_1(vec3<i32>(arg_0.x, u_input.b, u_input.d.x), u_input.d, arg_0.x, global0.x, u_input.c.yx)))));
    var var_1 = !select(!select(select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, false, false, global0.x)), !vec4<bool>(global0.x, global0.x, true, true), any(vec3<bool>(true, global0.x, false))), select(select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), false), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, global0.x, false), true), global0.x), vec4<bool>(any(vec4<bool>(false, global0.x, global0.x, global0.x)), false, false && global0.x, !global0.x), select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(true, false, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, false, true, global0.x)))), select(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !select(vec4<bool>(global0.x, false, false, true), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, false, true)), false));
    return Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1316f, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(375f + 346f) - -508f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * var_0.x)))))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(var_0.x, var_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 39970u;
    let var_1 = func_1(u_input.d.zz);
    let var_2 = Struct_3(var_1.c, select(vec4<bool>(u_input.d.x != _wgslsmith_dot_vec2_i32(vec2<i32>(-8249i, u_input.b), u_input.d.yy), u_input.d.x <= u_input.a, any(!vec4<bool>(true, global0.x, true, global0.x)), !global0.x), vec4<bool>(false, _wgslsmith_dot_vec3_i32(u_input.d.xyw, vec3<i32>(u_input.d.x, -2147483647i, 14022i)) == _wgslsmith_div_i32(u_input.b, -2147483647i), false, any(!vec3<bool>(global0.x, global0.x, global0.x))), any(!vec2<bool>(global0.x, global0.x))), 2147483647i);
    let var_3 = vec2<bool>(true, !func_4(!var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1693f)).x != any(var_2.b.yz));
    var_0 = u_input.c.x;
    let var_4 = vec4<bool>(var_2.b.x, !(true | global0.x), any(!select(vec4<bool>(true, var_3.x, var_2.b.x, global0.x), var_2.b, true)), global0.x);
    var var_5 = func_1(vec2<i32>(u_input.d.x, 70782i & _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.c, 19338i, -1i, var_2.c), u_input.d ^ u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-216f, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.b), ~2147483647i, -40180i), -vec3<i32>(2147483647i, 10053i, u_input.d.x) | u_input.d.xzz), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(45344i, var_2.c, u_input.a, u_input.b)), select(vec4<i32>(u_input.a, var_2.c, var_2.c, u_input.a), u_input.d, vec4<bool>(true, false, true, true))), i32(-1i) * -2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2.c, u_input.d.x), u_input.d.yxz))), var_2.c);
}

