struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1491f, true, 0i, Struct_1(-175f, -1082f, vec4<bool>(true, true, true, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<f32>) -> i32 {
    global0 = arg_1;
    global0 = Struct_3(-255f, arg_3.x < _wgslsmith_f_op_f32(step(184f, 254f)), arg_1.c, Struct_1(1941f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, arg_1.d.b)))), arg_1.d.c));
    let var_0 = select(false, true, any(!select(!arg_1.d.c.zx, global0.d.c.wy, global0.d.c.x)));
    var var_1 = global0.d.c;
    var var_2 = arg_1;
    return -9125i;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-800f + global0.a)), -1262f, arg_0.a) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(838f, -228f) + arg_0.a), -822f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, -1847f))))));
    let var_1 = arg_1;
    var var_2 = any(!arg_0.c.xx);
    var var_3 = global0.d.a;
    let var_4 = arg_0.c.x;
    return Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.d.b)) * _wgslsmith_f_op_f32(1263f - global0.a)), _wgslsmith_f_op_f32(-var_0.x)), 590f)), !any(select(!vec2<bool>(false, var_4), select(vec2<bool>(var_4, false), arg_0.c.yw, true), true)), -1i, Struct_1(-280f, global0.a, !(!vec4<bool>(true, var_4, true, var_4))));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec2<bool> {
    global0 = func_3(Struct_1(_wgslsmith_f_op_f32(363f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1468f + -292f) + _wgslsmith_f_op_f32(f32(-1f) * -139f))), !(!vec4<bool>(global0.d.c.x, arg_1, global0.d.c.x, arg_1))), ~(-vec3<i32>(35140i, 26823i, 2147483647i) | vec3<i32>(0i, 5600i, func_2(u_input.a.x, Struct_3(arg_0, arg_1, global0.c, global0.d), vec4<f32>(arg_0, global0.d.b, arg_0, -652f), vec4<f32>(arg_0, arg_0, -1084f, global0.a)))));
    var var_0 = vec4<bool>(all(func_3(func_3(func_3(Struct_1(-1000f, 1167f, vec4<bool>(arg_1, arg_1, false, global0.b)), vec3<i32>(global0.c, 0i, global0.c)).d, vec3<i32>(global0.c, 2147483647i, 1i)).d, vec3<i32>(global0.c, global0.c, ~22393i)).d.c.zx), func_3(func_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -633f), _wgslsmith_div_f32(261f, 219f), !global0.d.c), vec3<i32>(global0.c >> (0u % 32u), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(3979i, global0.c), vec2<i32>(global0.c, global0.c)))).d, _wgslsmith_mod_vec3_i32(~vec3<i32>(global0.c, global0.c, -2147483647i) >> (~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), ~vec3<i32>(-1i, global0.c, 1i) & ~vec3<i32>(-1i, 24167i, global0.c))).d.c.x, _wgslsmith_f_op_f32(1540f * global0.d.a) > arg_0, global0.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-192f + global0.a)))));
    global0 = func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1123f - arg_0)), _wgslsmith_f_op_f32(-arg_0), vec4<bool>(true, false, arg_1, all(vec4<bool>(true, var_0.x, false, true)) || (-22679i >= global0.c))), ~max(abs(vec3<i32>(-1i, 13768i, global0.c) >> (vec3<u32>(u_input.a.x, 47690u, 22250u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-12898i, 22224i, -2147483647i), vec3<i32>(global0.c, 2147483647i, 9594i), vec3<i32>(-1i, global0.c, global0.c)) ^ -vec3<i32>(global0.c, global0.c, global0.c)));
    let var_2 = func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1385f, _wgslsmith_f_op_f32(var_1 * var_1))), _wgslsmith_f_op_f32(-func_3(Struct_1(arg_0, arg_0, vec4<bool>(arg_1, var_0.x, true, false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c, -18157i, -1i), vec3<i32>(11233i, 0i, global0.c), vec3<i32>(global0.c, -27892i, -13120i))).a), !select(vec4<bool>(arg_1, true, global0.b, true), global0.d.c, vec4<bool>(global0.b, false, false, false))), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(-14133i, 49849i, global0.c), vec3<i32>(global0.c, -10442i, global0.c), -vec3<i32>(global0.c, global0.c, global0.c)) << (((vec3<u32>(97931u, 2746u, 1u) << (vec3<u32>(1u, u_input.a.x, 0u) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 10805u, 33511u))) % vec3<u32>(32u)))).d;
    return !vec2<bool>(any(!select(vec2<bool>(arg_1, false), vec2<bool>(false, arg_1), true)), any(var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -933f), 630f))), !(!all(!vec4<bool>(global0.b, global0.b, global0.b, global0.b))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1499f - 1f));
    global0 = func_3(global0.d, reverseBits(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 4941i, global0.c), vec3<i32>(1624i, -3161i, global0.c)))) & (reverseBits(countOneBits(vec3<i32>(1i, global0.c, 17926i))) & _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.c, -2147483647i, global0.c), vec3<i32>(-1i, -34071i, -1i)), -vec3<i32>(-1i, global0.c, global0.c), vec3<i32>(31756i, 0i, global0.c) | vec3<i32>(global0.c, global0.c, global0.c))));
    let var_2 = ~vec4<i32>(0i, 40357i, _wgslsmith_mult_i32(global0.c, global0.c >> (4294967295u % 32u)), max(max(global0.c << (0u % 32u), _wgslsmith_sub_i32(1i, 547i)), global0.c));
    global0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) + _wgslsmith_f_op_f32(-global0.d.b)), var_1)))), global0.b, var_2.x, global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-800f - _wgslsmith_f_op_f32(max(var_1, 1000f)))), _wgslsmith_f_op_f32(-var_1)));
}

