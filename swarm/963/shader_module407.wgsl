struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(777f, 565f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>, arg_3: vec4<u32>) -> vec2<i32> {
    var var_0 = -arg_0.b.b;
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -103f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-815f, global0.x) - vec2<f32>(arg_0.e, global0.x))))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, -1890f)), _wgslsmith_f_op_f32(-global0.x))))));
    let var_1 = arg_0.a;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e, 1f)))) * vec2<f32>(_wgslsmith_f_op_f32(round(1285f)), -1438f));
    let var_2 = arg_0;
    return arg_2;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(-2427i, u_input.a.x), -arg_0), min(-53290i, 1i >> (u_input.c.x % 32u))) | _wgslsmith_clamp_vec2_i32(-reverseBits(vec2<i32>(54845i, arg_1.b)), func_3(Struct_2(Struct_1(vec3<bool>(false, arg_1.a.x, false), arg_0), Struct_1(arg_1.a, arg_0), arg_1, vec4<bool>(arg_1.a.x, false, arg_1.a.x, false), -1379f), u_input.d.x, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(arg_1.b, arg_1.b)), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)), u_input.a.yz), vec2<i32>(abs(max(53482i, i32(-1i) * -5550i)), -((arg_0 >> (0u % 32u)) & 0i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(arg_2 + -622f))), 885f) - vec2<f32>(-368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.x, arg_2))))));
    var var_2 = Struct_2(Struct_1(arg_1.a, arg_1.b), arg_1, arg_1, vec4<bool>(true, 44865u >= u_input.b, false, true), var_1.x);
    let var_3 = false;
    var var_4 = u_input.c.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, var_2.e))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e, var_2.e))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1162f, 1106f), var_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-201f, global0.x)))), vec2<f32>(250f, arg_2)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: f32) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_2, arg_0.e)))), global0.x) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(u_input.a.x, Struct_1(arg_0.c.a, arg_0.c.b), arg_0.e)) + _wgslsmith_f_op_vec2_f32(func_2(21331i, arg_0.b, arg_0.e)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_2)) - vec2<f32>(-1496f, -890f))));
    var var_0 = any(!vec2<bool>(arg_0.b.a.x, arg_0.b.a.x));
    let var_1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_div_u32(min(4294967295u, arg_1.x) | ~u_input.b, (max(_wgslsmith_div_u32(0u, arg_1.x), u_input.c.x) ^ max(u_input.c.x, 1u)) << (countOneBits(u_input.b) % 32u));
    let var_3 = Struct_1(arg_0.d.xyw, -14953i);
    return vec3<bool>(!var_3.a.x, all(!(!select(arg_0.d, vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, false, var_3.a.x), false))), !(!(arg_0.e > arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!(!func_1(Struct_2(Struct_1(vec3<bool>(true, true, false), u_input.d.x), Struct_1(vec3<bool>(false, false, true), u_input.a.x), Struct_1(vec3<bool>(false, false, false), u_input.d.x), vec4<bool>(true, true, false, false), 1438f), u_input.c, 850f))), u_input.a.x);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-408f, global0.x), vec2<f32>(global0.x, global0.x))))), vec2<f32>(_wgslsmith_f_op_f32(sign(949f)), _wgslsmith_div_f32(global0.x, 668f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))));
    let var_1 = Struct_2(Struct_1(var_0.a, abs(~(~2295i))), var_0, var_0, !(!select(!vec4<bool>(var_0.a.x, true, false, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), select(vec4<bool>(true, false, true, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, true, var_0.a.x)))), 2837f);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 153f))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, var_1.e))), vec2<f32>(var_1.e, _wgslsmith_f_op_f32(-var_1.e)), var_0.a.x))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, _wgslsmith_f_op_vec2_f32(func_2(u_input.a.x, var_1.a, _wgslsmith_f_op_f32(max(-833f, var_1.e)))).x))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_1.e))))), _wgslsmith_f_op_f32(-538f - var_1.e)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_1.e)) + _wgslsmith_f_op_vec2_f32(func_2(2147483647i, var_1.c, global0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1537f) - vec2<f32>(910f, var_1.e))))));
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_i32(u_input.d.x, var_0.b)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(560f + -643f))), -1000f, _wgslsmith_f_op_vec2_f32(func_2(u_input.d.x, var_1.a, 607f)).x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(734f)), -810f, _wgslsmith_f_op_f32(step(global0.x, -1820f)), var_2.e))), i32(-1i) * -var_2.c.b, max(u_input.d, min(min(-u_input.a, ~u_input.d), select(u_input.d, vec3<i32>(var_2.c.b, var_0.b, var_1.c.b) << (vec3<u32>(1u, 50014u, 26266u) % vec3<u32>(32u)), var_1.c.a.x))), select(vec2<i32>(countOneBits(var_0.b & -1i), ~var_2.b.b), max(u_input.d.zz, u_input.a.xz | abs(vec2<i32>(var_2.a.b, var_0.b))), var_1.d.zz));
}

