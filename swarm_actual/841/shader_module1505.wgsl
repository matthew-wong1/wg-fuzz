struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 1>;

var<private> global2: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(global0.a);
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -548f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, global2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1353f)), 267f, 791f));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global2.x)), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(712f))), global2.x) - vec4<f32>(arg_0.x, _wgslsmith_div_f32(476f, global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) - _wgslsmith_f_op_f32(max(global2.x, -257f))), _wgslsmith_f_op_f32(max(global2.x, -410f)))));
    var var_1 = Struct_2(global0.a);
    let var_2 = !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(all(vec3<bool>(true, false, true)), true, any(vec2<bool>(true, true)))));
    return var_0;
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = Struct_1(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(_wgslsmith_mod_u32(4294967295u, 19719u) > u_input.c.x, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), false || (arg_0 != u_input.a.x), false)), !vec4<bool>(true, 1u == _wgslsmith_mult_u32(24001u, global0.a), select(true, true, false), false), vec4<i32>(2147483647i, 1i, -2147483647i, arg_0));
    global1 = array<Struct_1, 1>();
    global2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, global2.x)) + global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) * 818f), -374f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(286f, global2.x) - _wgslsmith_f_op_f32(round(-322f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-436f)), -891f, global2.x, -191f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1343f, global2.x) * vec4<f32>(-226f, global2.x, -1300f, global2.x)))))))));
    var var_1 = -9344i;
    global1 = array<Struct_1, 1>();
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32) -> vec4<bool> {
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-511f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(abs(243f)))), _wgslsmith_f_op_f32(f32(-1f) * -475f))), -468f, global2.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-287f, -1192f, 1023f, global2.x), vec4<f32>(global2.x, -871f, 1480f, global2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(639f, global2.x, global2.x, global2.x))))));
    global0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 1000f), -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -223f)));
    let var_0 = global1[_wgslsmith_index_u32(min(73678u >> (0u % 32u), _wgslsmith_sub_u32(arg_1, u_input.b.x)), 1u)];
    return !select(arg_0, var_0.a, arg_0);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(~13454u);
    var var_1 = ~u_input.a.x;
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global2.x, 3577f), _wgslsmith_f_op_f32(ceil(826f)), _wgslsmith_f_op_f32(1245f * global2.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), global2.x))));
    let var_3 = func_2(global2.zzy);
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2254f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x) - 583f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f * global2.x))))), global2.x);
    return Struct_1(func_4(vec4<bool>(!all(vec4<bool>(true, false, true, true)), true, true, func_3(2147483647i, Struct_2(55639u)) & true), _wgslsmith_div_u32(var_3.a, var_2.a)), !vec4<bool>(true, (-11460i != u_input.a.x) != true, false, (var_2.a ^ 1u) >= (1u >> (global0.a % 32u))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = select(vec4<bool>(_wgslsmith_f_op_f32(-global2.x) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f), true & !(!var_0.b.x), true, var_0.a.x), vec4<bool>(true, true, false, !(43861u >= global0.a)), true);
    var var_2 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-var_0.c.x, 19012i), ~(~(-3526i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.c.x, u_input.a.x) & u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(-24377i, u_input.a.x, var_0.c.x, -26906i), vec4<i32>(-2147483647i, 4885i, 2147483647i, -1i)))), firstLeadingBit(u_input.a.wxz));
    var var_3 = ~vec3<i32>(u_input.a.x, var_2.x, firstTrailingBit(u_input.a.x) | -2147483647i) >> (~u_input.b % vec3<u32>(32u));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(global2.x + -1035f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_div_f32(733f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(f32(-1f) * -421f)), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(f32(-1f) * -1232f)))));
    var var_4 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_div_f32(327f, _wgslsmith_f_op_f32(f32(-1f) * -1956f))) - _wgslsmith_f_op_vec3_f32(global2.yxy - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    let var_5 = u_input.b.xz;
    var var_6 = vec3<i32>(~(~2814i), _wgslsmith_add_i32(~(-5990i), max(func_1().c.x, func_1().c.x)), _wgslsmith_dot_vec2_i32(-var_2.xx, _wgslsmith_mod_vec2_i32(~u_input.a.yy, countOneBits(var_2.yz))) << (u_input.b.x % 32u));
    let var_7 = ~(~vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(31631u, 4294967295u, 79397u, global0.a), vec4<u32>(0u, var_5.x, 10683u, 19266u))), u_input.c.x, 106359u));
    let x = u_input.a;
    s_output = StorageBuffer(-var_6.xz);
}

