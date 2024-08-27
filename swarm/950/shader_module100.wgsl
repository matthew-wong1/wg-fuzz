struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    return all(select(!arg_0.d.wxw, select(select(select(vec3<bool>(global0.d.x, arg_0.c.x, global2.c.x), global2.c.yxx, false), global0.c.zyw, true), vec3<bool>(global0.d.x, global2.d.x, false), global2.c.xww), !arg_0.c.zyz));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_i32(u_input.e.xwy, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.e.wyy, -_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, -31805i, -2161i), vec3<i32>(-1i, u_input.e.x, global2.a))), select(global2.a, _wgslsmith_mod_i32(-5584i, _wgslsmith_mult_i32(global0.a, u_input.e.x)), true), -1i));
    var var_1 = select(!select(vec3<bool>(true, all(global0.d.yzz), any(arg_1)), vec3<bool>(func_3(Struct_1(1i, 4294967295u, global2.c, vec4<bool>(arg_0, false, global0.d.x, global2.c.x)), 51357u), true, true), any(vec3<bool>(false, arg_1.x, arg_0))), vec3<bool>(any(select(vec3<bool>(true, arg_1.x, global2.d.x), vec3<bool>(global2.d.x, arg_1.x, false), vec3<bool>(arg_0, true, arg_0))) && select(!arg_1.x, true, false), false, true || (global0.a <= ~1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_div_f32(global1.x, global1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, -739f, false)))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1788f), _wgslsmith_f_op_f32(round(-1861f)))))));
    global0 = Struct_1(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, -1i), _wgslsmith_mult_i32(u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 55468i), var_0.yy))), global0.b, !global2.c, global2.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.xz - vec2<f32>(-920f, global1.x)), _wgslsmith_f_op_vec2_f32(step(global1.zz, global1.wz))))) + vec2<f32>(-1559f, global1.x)));
    var var_3 = _wgslsmith_div_u32(global2.b, u_input.d) >> (~max(countOneBits(abs(global2.b)), ~_wgslsmith_div_u32(global2.b, u_input.b.x)) % 32u);
    return Struct_1(1i, u_input.d, !global0.c, vec4<bool>(1i < _wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, global0.a, 23799i)), -u_input.e.zxx), global0.a <= global2.a, true, arg_0));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(global0.d.x, vec3<bool>(global0.d.x, all(select(select(vec2<bool>(true, global2.c.x), global0.c.yy, vec2<bool>(true, true)), select(vec2<bool>(true, true), global0.c.zx, vec2<bool>(false, global0.c.x)), vec2<bool>(false, global2.d.x))), global0.d.x));
    var var_1 = u_input.d;
    global0 = func_2(false, !vec3<bool>(!global2.d.x, any(select(global2.c.zxx, vec3<bool>(true, global0.c.x, global2.d.x), false)), false));
    let var_2 = _wgslsmith_clamp_vec2_i32(u_input.e.wy, u_input.e.zw, u_input.e.yw);
    let var_3 = func_2(!var_0.d.x, !(!global2.c.zxx)).c.x;
    return Struct_1(var_0.a >> (75789u % 32u), ~4294967295u | ~firstLeadingBit(var_0.b), select(vec4<bool>(false, true, false, var_0.d.x), vec4<bool>(true, func_3(var_0, ~0u), true, var_3), !(!(!global2.d))), select(select(!select(vec4<bool>(false, false, true, global0.d.x), vec4<bool>(var_0.c.x, true, true, true), global0.c), !global0.c, vec4<bool>(global2.d.x, false, true, all(vec4<bool>(true, false, true, global2.d.x)))), var_0.c, all(vec4<bool>(true, all(vec2<bool>(true, false)), all(vec3<bool>(true, true, false)), select(false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = ~(global0.a ^ global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(-var_0);
}

