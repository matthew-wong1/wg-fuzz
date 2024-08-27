struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    global1 = Struct_3(global1.a, !(!all(select(vec3<bool>(true, global1.b, true), vec3<bool>(global1.b, arg_1, global1.d.x), false))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1763f, global1.c.a.x, -1000f, global1.c.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-414f, global0.x, -284f, global1.c.a.x) * global1.c.a) + global1.c.a)))), !(!select(global1.d, global1.d, any(global1.d))), max(~vec4<u32>(0u, 0u, ~0u, arg_0), ~(reverseBits(vec4<u32>(arg_0, 0u, 44840u, arg_0)) | _wgslsmith_sub_vec4_u32(vec4<u32>(global1.e.x, global1.e.x, 0u, global1.e.x), global1.e))));
    let var_0 = 1f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 34452u, ~global1.e.x, global1.e.x), max(~(select(global1.e, global1.e, vec4<bool>(true, global1.d.x, true, true)) >> (global1.e % vec4<u32>(32u))), vec4<u32>(48151u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global1.e.xzz, global1.e.yyx), select(vec3<u32>(1u, global1.e.x, arg_0), vec3<u32>(1u, arg_0, global1.e.x), vec3<bool>(global1.b, global1.b, global1.d.x))), 4738u, countOneBits(1u))));
    let var_3 = Struct_3(u_input.b.ywz, true, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-763f, -531f, global0.x, global0.x) - global1.c.a) - _wgslsmith_f_op_vec4_f32(sign(global1.c.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.c.a))))), global1.d, ~vec4<u32>(global1.e.x, 1u & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, var_2, 0u), global1.e.xww), global1.e.x, firstLeadingBit(_wgslsmith_sub_u32(65100u, arg_0))));
    return 1i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_3) -> i32 {
    global0 = arg_3.c.a;
    var var_0 = arg_3;
    global0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-215f, -976f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2042f)), -434f)));
    var var_1 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1624f - 197f)) - _wgslsmith_f_op_f32(f32(-1f) * -375f))));
    var var_2 = Struct_2(var_0.c.a.yxz, var_0.c, arg_2, select(25662i, _wgslsmith_dot_vec4_i32(vec4<i32>(~30150i, u_input.b.x, reverseBits(-1i), u_input.a.x), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 0i), arg_1.xy), -arg_1.x, 32789i, -1i)), global1.c.a.x == global0.x), vec3<i32>(1i, ~52827i, abs(var_0.a.x)) & vec3<i32>(-1i, _wgslsmith_sub_i32(10424i, 2147483647i), _wgslsmith_add_i32(func_3(global1.e.x, false), func_3(var_0.e.x, global1.d.x))));
    return min(reverseBits(var_0.a.x) & select(1i, i32(-1i) * -1i, global0.x == global0.x), min(_wgslsmith_sub_i32(-var_0.a.x, -12562i), -2147483647i ^ arg_1.x)) | abs(func_3(_wgslsmith_clamp_u32(var_0.e.x, 0u, arg_3.e.x), true) >> (_wgslsmith_mod_u32(var_0.e.x, ~var_0.e.x) % 32u));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global1 = Struct_3(vec3<i32>(min(_wgslsmith_mult_i32(1i, func_2(global1.c.a, vec3<i32>(-2147483647i, 1i, global1.a.x), global1.d, Struct_3(u_input.b.xyw, global1.d.x, arg_0, global1.d, vec4<u32>(global1.e.x, global1.e.x, 0u, global1.e.x)))), global1.a.x), global1.a.x, _wgslsmith_div_i32(countOneBits(u_input.a.x) | -2147483647i, firstTrailingBit(-global1.a.x))), any(select(!(!vec3<bool>(global1.b, false, false)), vec3<bool>(true, true, true), !vec3<bool>(false, global1.d.x, true))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-262f)), global1.c.a.x, _wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(1007f + global0.x))), global1.d, vec4<u32>(global1.e.x, _wgslsmith_div_u32(firstTrailingBit(~global1.e.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 61145u, global1.e.x, global1.e.x), vec4<u32>(global1.e.x, 27380u, global1.e.x, 0u)))), 1u, global1.e.x));
    let var_0 = u_input.a;
    return global1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(114f, -703f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c.a.x * _wgslsmith_f_op_f32(-590f - global0.x)), global0.x)))));
    global1 = Struct_3(-abs(vec3<i32>(global1.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.b.x & global1.a.x)), true, global1.c, !global1.d, vec4<u32>(firstLeadingBit(func_1(Struct_1(global1.c.a))), abs(~global1.e.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(55609u, global1.e.x), 1u, select(32707u, 4294967295u, false) | global1.e.x), 4294967295u));
    var var_1 = global1.b;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0)), global0.x, _wgslsmith_f_op_f32(sign(var_0)), -329f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1517f, 643f, -837f, global1.c.a.x)))));
    let var_2 = vec4<bool>(true, global1.b, global1.d.x, all(vec4<bool>(false, global1.d.x, ~global1.e.x > 13268u, select(global1.b, true, 32081u > global1.e.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, _wgslsmith_f_op_f32(var_0 + -2671f), _wgslsmith_f_op_f32(min(-604f, global1.c.a.x)), _wgslsmith_f_op_f32(ceil(global1.c.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c.a - global1.c.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.a.x, global1.c.a.x, -458f, global0.x) * global1.c.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(976f, -1091f, global0.x, 1624f), _wgslsmith_f_op_vec4_f32(select(global1.c.a, vec4<f32>(1584f, var_0, -101f, var_0), var_2)))), global1.c.a) - vec4<f32>(_wgslsmith_f_op_f32(round(-1964f)), _wgslsmith_f_op_f32(abs(global1.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1059f, 1478f)) * _wgslsmith_f_op_f32(f32(-1f) * -663f)), -479f)));
    let var_4 = Struct_3(vec3<i32>(-abs(_wgslsmith_add_i32(2147483647i, 0i)), global1.a.x, -u_input.a.x), true, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1.c.a)) * vec4<f32>(1297f, global0.x, 507f, 790f)))), vec2<bool>(true, true), ~global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(var_4.a.x, global1.a.x ^ ~var_4.a.x), 2147483647i << (func_1(global1.c) % 32u));
}

