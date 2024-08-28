struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-211f, 13437u, vec2<f32>(-1000f, -1517f), vec4<i32>(0i, -14474i, 2147483647i, 2147483647i), vec2<f32>(1239f, -202f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<i32>) -> bool {
    global0 = Struct_3(arg_0.a.a.b.x, 32088u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.e)) - vec2<f32>(-251f, _wgslsmith_f_op_f32(f32(-1f) * -945f))), firstLeadingBit(vec4<i32>(min(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, 2147483647i), vec2<i32>(0i, 2147483647i))), reverseBits(2147483647i), firstTrailingBit(firstTrailingBit(global0.d.x)), select(global0.d.x, ~arg_2.x, !arg_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1144f, global0.c.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a.a.b.x, 230f), vec2<f32>(3014f, 724f))))));
    global0 = Struct_3(1571f, select(_wgslsmith_add_u32(~(~u_input.c), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), firstLeadingBit(min(abs(20059u), ~u_input.c)), any(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))), _wgslsmith_div_vec2_f32(arg_0.a.a.b.xy, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -280f)), global0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.b.zz) - vec2<f32>(arg_0.a.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -979f))));
    global0 = Struct_3(-1469f, u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, 311f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1113f, 796f)))))), global0.d, _wgslsmith_f_op_vec2_f32(global0.e + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.b.yx) * _wgslsmith_f_op_vec2_f32(arg_0.a.a.b.xx - global0.e))))));
    let var_0 = Struct_4(arg_0.a);
    let var_1 = _wgslsmith_add_u32(var_0.a.a.c, u_input.a.x ^ countOneBits(u_input.a.x));
    return true && any(var_0.a.a.a.yy);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(-16434i, u_input.d.x ^ _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(global0.d.zz, vec2<i32>(u_input.b.x, u_input.d.x)), -global0.d.x & firstTrailingBit(u_input.d.x), global0.d.x), ~(-(~1857i)));
    var_0 = u_input.b.x;
    var_0 = _wgslsmith_add_i32(~44593i, global0.d.x);
    let var_1 = Struct_1(vec3<bool>(arg_2.x, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, global0.c.x, -1062f)))), ~(~u_input.a.x));
    var var_2 = global0.d.x ^ -reverseBits(min(u_input.b.x << (global0.b % 32u), -2147483647i));
    return -864f;
}

fn func_2() -> bool {
    global0 = Struct_3(_wgslsmith_f_op_f32(func_4(vec4<bool>(false, true, abs(global0.d.x) != _wgslsmith_mod_i32(u_input.d.x, 1i), select(global0.b <= u_input.c, true, true)), global0.d.x, vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, any(vec3<bool>(false, true, false)), all(vec4<bool>(true, true, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, false, false)), func_3(Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(1202f, global0.a, 758f), 4294967295u))), select(vec2<bool>(false, true), vec2<bool>(false, true), true), -u_input.b)))), 38696u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)) - vec2<f32>(_wgslsmith_f_op_f32(min(-930f, global0.c.x)), global0.e.x)), vec2<f32>(-1941f, global0.c.x))), abs(~global0.d), _wgslsmith_f_op_vec2_f32(-global0.c));
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.e.x), -1000f)), (firstLeadingBit(global0.b) & _wgslsmith_clamp_u32(0u, global0.b, 1u)) & _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 34735u, 1u, u_input.c)), ~vec4<u32>(global0.b, global0.b, global0.b, 24623u))));
    return var_0.a.a.x;
}

fn func_1() -> Struct_1 {
    var var_0 = any(select(vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true))), all(vec4<bool>(false, false, true, true)), func_2()), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, func_3(Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(global0.c.x, global0.a, global0.c.x), u_input.c))), vec2<bool>(false, false), vec2<i32>(2147483647i, 2147483647i))), true), all(vec4<bool>(true, true, true, true))));
    var_0 = true;
    return Struct_1(select(vec3<bool>(true, true, _wgslsmith_div_f32(-483f, -545f) != global0.a), vec3<bool>(false, true, false), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1012f)), _wgslsmith_f_op_f32(-global0.a), global0.a), vec3<f32>(global0.a, _wgslsmith_f_op_f32(abs(1578f)), _wgslsmith_f_op_f32(floor(global0.a))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.c.x, 432f) * vec3<f32>(-1330f, global0.c.x, global0.e.x))))))), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1());
    var var_1 = vec4<i32>(u_input.b.x, global0.d.x, u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, -18305i));
    let var_2 = 2032f;
    let var_3 = Struct_2(Struct_1(!vec3<bool>(select(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), var_0.a.a.x, var_1.x <= global0.d.x), _wgslsmith_f_op_vec3_f32(var_0.a.b + _wgslsmith_f_op_vec3_f32(-var_0.a.b)), 0u));
    global0 = Struct_3(global0.e.x, 1u, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b.x, var_0.a.b.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(794f, var_2))))), vec4<i32>(global0.d.x, ~_wgslsmith_clamp_i32(u_input.d.x, 6646i, var_1.x) ^ ~countOneBits(global0.d.x), _wgslsmith_div_i32(i32(-1i) * -5848i, u_input.d.x) | 1i, ((u_input.d.x >> (1u % 32u)) | 24228i) ^ global0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.a.b.yx, func_1().b.yx))));
    var_1 = global0.d << (vec4<u32>(1u, 4294967295u, ~_wgslsmith_div_u32(max(15118u, 4294967295u), firstLeadingBit(global0.b)), global0.b) % vec4<u32>(32u));
    var_1 = global0.d | global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b.xx, _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(global0.d, ~vec4<i32>(-2147483647i, u_input.d.x, 1i, global0.d.x)), max(~_wgslsmith_div_vec4_i32(global0.d, vec4<i32>(u_input.b.x, 30399i, -8773i, u_input.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-34202i, u_input.d.x, -2147483647i, global0.d.x) << (vec4<u32>(82363u, 4294967295u, global0.b, 62349u) % vec4<u32>(32u)), vec4<i32>(-10967i, var_1.x, 16568i, global0.d.x), max(global0.d, vec4<i32>(-24619i, var_1.x, var_1.x, global0.d.x)))), -global0.d), reverseBits(var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a.b)));
}

