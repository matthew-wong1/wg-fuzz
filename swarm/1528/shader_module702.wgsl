struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_1 = Struct_1(72987u, vec2<u32>(0u, 4294967295u), vec2<f32>(1007f, 123f), vec2<f32>(-974f, 240f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<f32>) -> vec2<bool> {
    global0 = !select(select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, false), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x))), select(vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, false, false)), true), true), select(vec3<bool>(false, global0.x, global0.x == true), !vec3<bool>(false, global0.x, false), vec3<bool>(true, all(global0.zx), any(vec3<bool>(false, global0.x, false)))), select(vec3<bool>(false, false, true), select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, false), true), vec3<bool>(global0.x, global0.x, global0.x), true), true));
    global0 = select(select(select(vec3<bool>(true, all(vec4<bool>(false, global0.x, true, true)), true), select(!vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, global0.x, false)), select(!vec3<bool>(false, global0.x, false), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, false), global0.x), u_input.a.x > 75227u)), !select(!vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, true), true), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_2.x)))) > _wgslsmith_f_op_f32(-global2.c.x)), !select(vec3<bool>(global0.x, all(global0.xx), false), select(vec3<bool>(true, global0.x, true), select(vec3<bool>(false, true, false), vec3<bool>(global0.x, false, global0.x), false), !global0.x), select(vec3<bool>(global0.x, true, false), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, global0.x), true), false)), !(!select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x)), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, true, false), vec3<bool>(global0.x, true, global0.x)), select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, true, false), global0.x))));
    var var_0 = Struct_1(58320u, firstLeadingBit(global1.wx), global2.d, global2.d);
    let var_1 = true;
    let var_2 = true;
    return vec2<bool>(select(true || all(!vec2<bool>(false, var_1)), global0.x, true), _wgslsmith_mod_u32(var_0.b.x, _wgslsmith_mod_u32(0u, var_0.a)) >= 0u);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<u32> {
    return countOneBits(vec2<u32>(_wgslsmith_sub_u32(~4294967295u | (0u & global1.x), global2.b.x), 4294967295u));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(1u, _wgslsmith_mult_vec2_u32(func_4(func_3(22293i, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 594f))), Struct_1(~4294967295u, ~global1.wx, _wgslsmith_f_op_vec2_f32(vec2<f32>(1652f, 194f) * vec2<f32>(global2.c.x, -819f)), _wgslsmith_f_op_vec2_f32(-global2.c)), !(!vec3<bool>(global0.x, global0.x, true)), Struct_1(0u, global2.b, global2.c, _wgslsmith_div_vec2_f32(vec2<f32>(-197f, 842f), global2.d))), reverseBits(select(global1.zx, vec2<u32>(global1.x, global2.b.x), global0.x)) << (select(global2.b, _wgslsmith_mod_vec2_u32(global1.xx, vec2<u32>(18731u, global1.x)), true) % vec2<u32>(32u))), global2.d, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(499f, global2.c.x, global0.x && global0.x)), global2.c.x), global2.c)));
    return -20763i;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = -vec3<i32>(-_wgslsmith_div_i32(-45947i, _wgslsmith_mod_i32(-2553i, 33680i)), func_2(), -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-12971i, 2147483647i, 2147483647i), -31067i >> (global1.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -25253i, 0i), vec3<i32>(-50910i, -23171i, 29908i))));
    global2 = Struct_1(1u, global1.xw, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-600f, global2.c.x), _wgslsmith_f_op_vec2_f32(-global2.c))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2491f, 1204f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-794f, global2.d.x)), _wgslsmith_f_op_f32(min(global2.c.x, global2.d.x))) + vec2<f32>(global2.d.x, global2.c.x)));
    global0 = vec3<bool>(!select(!(!global0.x), true, all(vec4<bool>(true, false, true, true))), !(!global0.x), any(!(!vec3<bool>(arg_0, global0.x, global0.x))) || (var_0.x < _wgslsmith_add_i32(var_0.x, ~var_0.x)));
    return Struct_1(global1.x, u_input.a.yw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.d.x, -1173f), _wgslsmith_div_vec2_f32(vec2<f32>(-525f, global2.c.x), vec2<f32>(1305f, global2.d.x)), vec2<bool>(arg_0, global0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global2.d * global2.d)))), any(select(select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, false, true), vec3<bool>(false, arg_0, global0.x)), select(vec3<bool>(false, false, true), vec3<bool>(arg_0, true, true), vec3<bool>(global0.x, true, true)), true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1075f, global2.d.x)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(global2.c, _wgslsmith_f_op_vec2_f32(-global2.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_1(global0.x && true);
    var_1 = Struct_1(~global2.b.x, abs(global2.b & vec2<u32>(1u, _wgslsmith_mod_u32(var_1.b.x, global1.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.c, vec2<f32>(-1000f, global2.c.x))), var_1.d)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(func_1(global0.x).d.x, _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, var_1.d.x), vec2<f32>(-445f, global2.c.x))), vec2<f32>(_wgslsmith_f_op_f32(round(var_1.c.x)), _wgslsmith_f_op_f32(floor(var_1.c.x)))));
    let var_2 = select(u_input.a.yx, _wgslsmith_div_vec2_u32(global2.b, global1.wy), !global0.yx);
    var var_3 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * 658f) + _wgslsmith_f_op_f32(371f * global2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1373f) - _wgslsmith_div_f32(1361f, global2.d.x)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c.x + global2.c.x))), _wgslsmith_f_op_f32(761f - _wgslsmith_f_op_f32(var_1.d.x + 866f))));
    var var_4 = var_3.c.x;
    let var_5 = global1.yyx;
    let var_6 = global0.x;
    var_0 = global0.x & !(global0.x & !(!global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.d.x, global2.d.x)), var_1.c.x)));
}

