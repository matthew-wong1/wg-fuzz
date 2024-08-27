struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), vec2<bool>(false, false), 0u, 1260f);

var<private> global2: vec4<bool>;

var<private> global3: array<vec3<i32>, 16>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global1 = Struct_1(_wgslsmith_mult_i32(~(~(i32(-1i) * -21455i)), firstTrailingBit(i32(-1i) * -2147483647i)), select(select(vec2<bool>(!global2.x, false), global2.wz, !vec2<bool>(true, global0.x)), vec2<bool>(global2.x, _wgslsmith_add_u32(1875u, u_input.a) < countOneBits(43399u)), select(select(global2.yx, !global1.b, false), vec2<bool>(all(vec2<bool>(global0.x, global1.b.x)), true), all(vec2<bool>(true, true)))), _wgslsmith_mult_u32(global1.c, ~_wgslsmith_mod_u32(global1.c >> (arg_0 % 32u), _wgslsmith_div_u32(u_input.a, global1.c))), global1.d);
    var var_0 = select(vec2<bool>(!(!select(global2.x, true, true)), global1.b.x), !global2.xz, !any(select(!global2.zx, select(global2.wy, vec2<bool>(false, false), vec2<bool>(false, global0.x)), !global2.zz)));
    global2 = vec4<bool>(var_0.x, false, false, true);
    var_0 = !(!select(select(!global2.xz, vec2<bool>(var_0.x, global0.x), select(global2.wy, vec2<bool>(global0.x, global0.x), true)), select(!global1.b, global1.b, true), true));
    global0 = vec2<bool>(all(global2.zyz), all(global2.yx));
    return vec3<u32>(16561u, u_input.a >> (43881u % 32u), 105372u);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: f32) -> vec2<f32> {
    global3 = array<vec3<i32>, 16>();
    let var_0 = Struct_2(~_wgslsmith_mod_vec3_u32(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a, global1.c), vec4<u32>(8879u, 4294967295u, 1u, u_input.a))), abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_div_f32(1097f, 167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1055f)));
    var var_1 = global1.b.x;
    global0 = vec2<bool>(!all(select(global2.wxw, vec3<bool>(global1.b.x, true, arg_1), select(global2.yzw, vec3<bool>(global1.b.x, true, true), arg_1))), !any(vec4<bool>(arg_1, any(vec3<bool>(global2.x, false, false)), global1.b.x, select(false, global0.x, true))));
    var var_2 = false;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0))) - _wgslsmith_f_op_f32(-303f * arg_3))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1333f, arg_0), vec2<f32>(-868f, -1209f))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_2(vec3<u32>(34905u, u_input.a, global1.c), _wgslsmith_f_op_f32(round(-1518f)), arg_0.x);
    global1 = Struct_1(-28047i, select(vec2<bool>(global2.x, true), vec2<bool>(_wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(-49921i, arg_2.x)) <= _wgslsmith_sub_i32(-2147483647i, 1i), any(vec2<bool>(global2.x, global2.x))), !(!vec2<bool>(arg_1, true))), ~var_0.a.x, 781f);
    global1 = Struct_1(max(~_wgslsmith_sub_i32(1i, -59121i) >> (var_0.a.x % 32u), select(_wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(-1i, global1.a)), arg_2.x, all(vec4<bool>(global2.x, global0.x, global0.x, arg_1)))), vec2<bool>(true, true), 24079u << (~var_0.a.x % 32u), _wgslsmith_f_op_f32(f32(-1f) * -514f));
    let var_1 = all(vec4<bool>(select(true, any(global1.b), 29272u < u_input.a) || false, (~var_0.a.x << (16822u % 32u)) < _wgslsmith_add_u32(u_input.a << (global1.c % 32u), _wgslsmith_clamp_u32(global1.c, 48930u, var_0.a.x)), arg_1, true));
    var var_2 = Struct_1(162i, global2.yy, abs(var_0.a.x << (56385u % 32u)), 961f);
    return Struct_1(arg_2.x, vec2<bool>(all(vec3<bool>(var_1, global2.x, false)), true), global1.c, var_0.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: f32, arg_3: bool) -> u32 {
    let var_0 = ~4294967295u;
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(arg_2, global0.x, global1.a << (4294967295u % 32u), _wgslsmith_f_op_f32(round(977f)))), vec2<f32>(-949f, _wgslsmith_f_op_f32(-arg_2)), global1.b))), global1.b.x, min(firstLeadingBit(~(~vec2<i32>(u_input.b.x, -2147483647i))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.a, -37270i), u_input.b), vec2<i32>(u_input.c.x, arg_1.x) & arg_1.xw), vec2<i32>(_wgslsmith_mult_i32(24078i, -15845i), u_input.b.x))));
    let var_2 = vec2<f32>(-1167f, _wgslsmith_f_op_f32(1012f - _wgslsmith_div_f32(1027f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d))))));
    global0 = !global1.b;
    var var_3 = _wgslsmith_f_op_f32(-global1.d);
    return ~(~68297u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(803f, global1.d) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(trunc(-139f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.d)), _wgslsmith_f_op_f32(select(global1.d, global1.d, true))), true)))));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(2806u), ~0u), ~(~vec2<u32>(u_input.a, ~global1.c)));
    global1 = Struct_1(~u_input.c.x, global2.xw, max(var_1.x, ~global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f - _wgslsmith_f_op_f32(f32(-1f) * -316f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - 367f), var_0.x)));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(var_1, var_1), var_1), ~(u_input.a & _wgslsmith_add_u32(u_input.a, 0u)), global1.c), 46957u);
    let var_3 = Struct_1(-39331i, global2.wy, 38716u & (~_wgslsmith_add_u32(var_1.x, 28465u) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global1.c, 83144u, 40938u), ~vec4<u32>(4294967295u, global1.c, u_input.a, 0u))), 1102f);
    var var_4 = !(!vec4<bool>(1u >= func_1(var_1, u_input.c, 1122f, false), !global2.x, global2.x, func_4(var_0, all(vec3<bool>(var_3.b.x, false, false)), u_input.c.ww ^ vec2<i32>(u_input.c.x, u_input.c.x)).b.x));
    global0 = select(var_4.wy, global2.xw, var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a & -65705i, 1i);
}

