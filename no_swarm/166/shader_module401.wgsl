struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1390f)));
    let var_1 = !(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global0.b.x))) * 509f));
    var_0 = 532f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.b.x)))))))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(global0.a, global0.a, -564f, global0.a))))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(1248f + global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3()))) - global0.b), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(~global0.d.x, -1i), _wgslsmith_add_i32(min(u_input.b.x, 15453i), -global0.c)), u_input.b.xz), -vec3<i32>(-global0.e, ~_wgslsmith_dot_vec3_i32(vec3<i32>(39625i, 43492i, global0.e), vec3<i32>(global0.c, -2147483647i, 1i)), -17970i), global0.d.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(func_3()).yw, -(~select(global0.d, var_0.d | u_input.a.yyw, arg_0.x & arg_0.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<u32>) -> f32 {
    global0 = Struct_2(2617f, _wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(global0.b.x - arg_0.a.x))), 1181f, -1691f, _wgslsmith_f_op_f32(floor(arg_0.a.x)))), ~(_wgslsmith_add_i32(_wgslsmith_mod_i32(global0.e, arg_0.b.x), _wgslsmith_add_i32(u_input.a.x, arg_0.b.x)) | _wgslsmith_dot_vec2_i32(max(vec2<i32>(global0.e, u_input.a.x), vec2<i32>(u_input.a.x, -2147483647i)), firstLeadingBit(global0.d.zx))), vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(global0.d, arg_0.b, -global0.d), -13054i);
    let var_0 = func_2(select(!select(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), !vec4<bool>(true, true, arg_1.x, false), !arg_1.x), !vec4<bool>(true, any(vec2<bool>(true, true)), !arg_1.x, false || arg_1.x), firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.a.ywy, vec3<i32>(arg_0.b.x, u_input.a.x, global0.c))) < 0i));
    global0 = Struct_2(-1057f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, 993f, arg_0.a.x, -209f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.b - global0.b)))))), _wgslsmith_dot_vec2_i32(vec2<i32>(-global0.c, u_input.a.x << (u_input.c.x % 32u)), var_0.b.xz), -abs(max(select(u_input.b, global0.d, arg_1), vec3<i32>(global0.c, arg_0.b.x, 2147483647i))), -5804i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec4_f32(func_3()).xy)))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, var_0.b.x, 11184i), arg_0.b), var_0.b.x, arg_0.b.x), ~var_0.b));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, var_0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-478f, _wgslsmith_f_op_f32(-global0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1025f, var_0.a.x)), var_0.a.x)), var_0.a.x), arg_0.b.x, abs(vec3<i32>(-countOneBits(36211i), 0i, _wgslsmith_dot_vec2_i32(u_input.a.wx | vec2<i32>(arg_0.b.x, global0.e), vec2<i32>(67026i, -2147483647i)))), global0.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, arg_1.x, false)).a.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3()).x, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_1.a.x)) + arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(525f + global0.b.x)), _wgslsmith_f_op_f32(ceil(436f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -801f))), _wgslsmith_f_op_f32(func_1(Struct_1(global0.b.xw, vec3<i32>(1i, 2147483647i, u_input.b.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), ~75833u, vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x))))), global0.d.x, ~min(~func_2(vec4<bool>(true, true, false, false)).b, u_input.a.xxw), _wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(global0.d.x, 39190i, 0i)));
    global0 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -1104f, -353f, global0.b.x)) + _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(1128f, -561f, global0.b.x, global0.b.x))) + global0.b) + global0.b), u_input.b.x >> (1u % 32u), vec3<i32>(var_0.c, min(var_0.e, 18635i), global0.c), 1i);
    global0 = var_0;
    global0 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.b.x)), -1159f, _wgslsmith_f_op_f32(f32(-1f) * -1749f), _wgslsmith_f_op_vec4_f32(func_3()).x))) * var_0.b), -_wgslsmith_div_i32(var_0.d.x, _wgslsmith_div_i32(-1i, -8429i) & u_input.b.x), (vec3<i32>(-1i) * -func_2(vec4<bool>(true, true, true, false)).b) | vec3<i32>(-(~2386i), 2147483647i, var_0.c), ~_wgslsmith_sub_i32(10909i, global0.d.x ^ 446i));
    var var_1 = ~u_input.e.yz;
    var var_2 = (u_input.d == ~select(u_input.c.x, ~var_1.x, true)) == true;
    let var_3 = true;
    let var_4 = firstLeadingBit(~(~(~abs(var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-1333f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(301f * global0.b.x)), -1809f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global0.a, global0.a)))), 1145f)), global0.a, _wgslsmith_div_i32(~(-24735i), _wgslsmith_clamp_i32(1676i, _wgslsmith_add_i32(u_input.a.x, -54083i), global0.d.x & 3608i)), _wgslsmith_dot_vec4_i32(abs(u_input.a), -u_input.a));
}

