struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
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

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: bool = false;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(697f, 1000f, -279f), vec3<bool>(false, false, true), i32(-2147483648));

var<private> global4: Struct_1 = Struct_1(vec3<f32>(-282f, -865f, -1511f), vec3<bool>(true, false, true), 11409i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-163f, -2058f)))), _wgslsmith_f_op_f32(f32(-1f) * -812f), 235f)), select(global3.b, !vec3<bool>(arg_0.b.x, any(vec4<bool>(arg_0.b.x, false, false, true)), true), false), _wgslsmith_mod_i32(countOneBits(_wgslsmith_add_i32(~625i, 1i)), ~firstLeadingBit(global1.c)));
    global1 = Struct_1(vec3<f32>(-738f, _wgslsmith_f_op_f32(arg_1.a.x - -1000f), global4.a.x), global3.b, countOneBits(0i));
    var var_0 = arg_2.x;
    var_0 = global3.b.x;
    global3 = arg_1;
    return _wgslsmith_f_op_f32(global4.a.x + global4.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global4.a.xx + vec2<f32>(105f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.x, global1.a.x))))));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, global1.a.x, 911f) - global1.a)), global4.a)), vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(var_0.x, -471f, -325f), vec3<bool>(global1.b.x, true, false), global1.c), Struct_1(vec3<f32>(-714f, global4.a.x, -508f), vec3<bool>(true, global3.b.x, global4.b.x), 2147483647i), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-252f)))), vec3<bool>(true, true, !global4.b.x))), select(vec3<bool>(global4.b.x, global1.b.x, false), select(!select(vec3<bool>(false, false, global3.b.x), global3.b, global4.b.x), select(vec3<bool>(global4.b.x, global1.b.x, global4.b.x), !vec3<bool>(global1.b.x, true, false), false), !select(true, true, global3.b.x)), any(!global4.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(global4.c, global3.c, -global4.c) | select(vec3<i32>(2147483647i, u_input.c.x, global3.c), -vec3<i32>(28758i, 1282i, u_input.c.x), any(vec4<bool>(true, false, true, true))), firstLeadingBit(vec3<i32>(global1.c, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(14464i, u_input.c.x, u_input.c.x)), ~global1.c))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = select(vec4<bool>(true, !global3.b.x, ((false && global1.b.x) == !global3.b.x) | any(global3.b.yx), global3.b.x), !vec4<bool>(false, !(true | global1.b.x), 802f >= _wgslsmith_f_op_f32(max(var_0.x, -1000f)), true), !vec4<bool>(global1.b.x, global4.b.x, _wgslsmith_div_u32(1u, 102467u) > min(u_input.a, 0u), -2147483647i >= max(-1i, global1.c)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(977f, global4.a.x), _wgslsmith_f_op_f32(step(-264f, -1511f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global4.a, global1.a) - vec3<f32>(global1.a.x, global3.a.x, global1.a.x)))), global4.b, 2147483647i);
    return var_3;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec3<f32>(global3.a.x, -311f, -376f), global3.b, -38296i);
    var var_1 = false;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(var_0.a.x, global3.a.x), _wgslsmith_f_op_f32(trunc(global3.a.x)), _wgslsmith_f_op_f32(global3.a.x - -592f)), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), global1.a))) * _wgslsmith_f_op_vec3_f32(-global1.a)), vec3<bool>(global3.b.x, global3.b.x, true), 3931i);
    let var_3 = var_0;
    global1 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(425f, global1.a.x) + -861f), _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(892f * global4.a.x)), global1.a.x))), !global4.b, _wgslsmith_add_i32(u_input.c.x, u_input.c.x));
    global3 = func_1();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global3.a.x, -1166f)), -501f, func_1().a.x))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, -400f)), var_0.x, -1119f), func_2().b, abs((global3.c >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, u_input.a), vec4<u32>(u_input.b, 51009u, 17259u, 1u)) % 32u)) << (~0u % 32u)));
    let var_2 = func_1();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f - global3.a.x)), _wgslsmith_div_f32(global3.a.x, 1099f), var_0.x) - global4.a));
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(286f, var_1.a.x, global3.a.x, 136f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, 1000f, -1123f, var_0.x) - vec4<f32>(636f, -391f, 1518f, -813f)), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-105f, global4.a.x, var_0.x, -1274f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 737f, -102f, global3.a.x) * vec4<f32>(var_0.x, global3.a.x, var_2.a.x, -1346f)))))), ~(-30732i));
}

