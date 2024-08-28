struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: Struct_1 = Struct_1(vec4<u32>(17965u, 0u, 1u, 6268u), -242f, vec4<i32>(-1i, 48534i, -1i, 2147483647i), vec2<bool>(false, false), vec3<i32>(-33528i, 20568i, 1i));

var<private> global2: Struct_1 = Struct_1(vec4<u32>(1u, 10136u, 5963u, 1u), 593f, vec4<i32>(-40740i, -27420i, -31617i, -1i), vec2<bool>(false, true), vec3<i32>(1i, 56975i, -12240i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global2 = arg_3;
    let var_0 = func_2(arg_3);
    let var_1 = -2304f;
    var var_2 = abs(~(u_input.a.xyx ^ ~select(vec3<u32>(arg_3.a.x, 0u, global2.a.x), vec3<u32>(u_input.a.x, 11511u, arg_2.a.x), vec3<bool>(arg_1.x, false, arg_3.d.x))));
    let var_3 = func_2(Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.b + -1126f), arg_0.x))), -global2.c, vec2<bool>(_wgslsmith_sub_i32(2147483647i, var_0.c.x) != -2147483647i, _wgslsmith_mult_i32(var_0.e.x, global1.e.x) >= -global1.e.x), global2.c.yyz));
    return 1025f;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    global2 = Struct_1(~vec4<u32>(~4514u, _wgslsmith_dot_vec4_u32(~global2.a, ~vec4<u32>(4294967295u, 6989u, global2.a.x, 1u)), max(arg_2.a.x, global2.a.x) | u_input.a.x, global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1762f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.b, global2.b, -1104f, 186f))), !vec4<bool>(false, false, global1.d.x, arg_1.x), Struct_1(arg_2.a, global2.b, vec4<i32>(0i, global2.c.x, global2.c.x, -2147483647i), vec2<bool>(true, true), vec3<i32>(arg_2.e.x, global2.c.x, global2.c.x)), func_2(Struct_1(vec4<u32>(global1.a.x, 25083u, arg_2.a.x, 0u), 1075f, arg_2.c, vec2<bool>(global2.d.x, true), global2.e)))), !global1.d.x))), -((vec4<i32>(-22467i, global2.e.x, global1.c.x, global2.e.x) ^ global2.c) << (vec4<u32>(4294967295u, global1.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))) ^ select(select(-global1.c, ~arg_2.c, vec4<bool>(arg_0, global2.d.x, true, global0.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -28451i, 2147483647i, global1.c.x), vec4<i32>(2147483647i, arg_2.c.x, global2.e.x, 1i)), false), arg_2.d, arg_2.c.xwy ^ global2.c.zyy);
    global2 = Struct_1(countOneBits(~vec4<u32>(_wgslsmith_div_u32(global1.a.x, u_input.a.x), global2.a.x, ~0u, ~arg_2.a.x)), _wgslsmith_f_op_f32(step(737f, _wgslsmith_f_op_f32(f32(-1f) * -406f))), ~(-vec4<i32>(18923i, -global2.e.x, -global1.e.x, global1.c.x)), vec2<bool>(!(arg_2.b != -313f), _wgslsmith_f_op_f32(-global2.b) < _wgslsmith_f_op_f32(1559f - _wgslsmith_f_op_f32(f32(-1f) * -1677f))), _wgslsmith_mult_vec3_i32(global1.c.wyz, ~global2.c.zxx));
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(global1.b, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, -1242f, global2.b, -1352f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, global1.b, global2.b, -191f))), vec4<bool>(true, global0.x, all(vec3<bool>(false, global1.d.x, global0.x)), any(vec3<bool>(false, true, arg_2.d.x))), func_2(Struct_1(vec4<u32>(33400u, 0u, global1.a.x, 4294967295u), -1342f, global2.c, vec2<bool>(true, true), global1.e)), func_2(func_2(Struct_1(global2.a, global1.b, vec4<i32>(0i, global2.e.x, 5509i, 0i), arg_2.d, vec3<i32>(arg_2.c.x, 56296i, arg_2.c.x)))))), 989f, 485f), vec4<f32>(global2.b, arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, global2.b, global1.b, arg_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, global2.b, global2.b, 809f)))), vec4<bool>(arg_2.d.x, global0.x, arg_1.x, arg_0), func_2(func_2(Struct_1(vec4<u32>(0u, 0u, 1u, global1.a.x), 1000f, vec4<i32>(global1.e.x, 8938i, global1.e.x, arg_2.c.x), vec2<bool>(false, false), vec3<i32>(global1.e.x, global2.e.x, global2.e.x)))), func_2(Struct_1(u_input.a, global2.b, global2.c, global1.d, global2.e))))));
    global0 = vec2<bool>(true, !all(!(!vec4<bool>(arg_1.x, false, false, global0.x))));
    global1 = func_2(Struct_1(select(vec4<u32>(~global2.a.x, 54195u ^ global1.a.x, u_input.a.x, 1u), _wgslsmith_sub_vec4_u32(func_2(Struct_1(vec4<u32>(arg_2.a.x, u_input.a.x, 56511u, 1u), global1.b, global2.c, arg_1, vec3<i32>(global2.c.x, global2.e.x, 45292i))).a, vec4<u32>(arg_2.a.x, u_input.a.x, global1.a.x, u_input.a.x)), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(var_0.x - var_0.x)))), global2.c, arg_1, -arg_2.c.yzz));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1429f))) * _wgslsmith_f_op_f32(trunc(global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(~(~(-global1.c)), global1.c);
    var var_1 = var_0.x;
    let var_2 = global2.b;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.b, 164f), _wgslsmith_f_op_f32(func_1(global2.d.x, vec2<bool>(false, true), Struct_1(u_input.a, global2.b, vec4<i32>(global1.c.x, global1.e.x, global2.c.x, global1.c.x), global1.d, vec3<i32>(-1i, global2.c.x, global1.e.x)))))), global1.b)))));
    let var_4 = Struct_1(vec4<u32>(global1.a.x, 4294967295u, ~(~global1.a.x) ^ u_input.a.x, max(u_input.a.x, 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -1354f), -select(global1.c, global1.c, vec4<bool>(true, u_input.a.x <= global2.a.x, false, all(global2.d))), !(!vec2<bool>(global2.d.x, global2.d.x)), reverseBits(global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.e.x, 1244f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.b, _wgslsmith_f_op_f32(global2.b + 1723f), _wgslsmith_f_op_f32(-1340f - 1000f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2072f, 1000f, var_4.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(723f, global1.b, 1197f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, global1.b, -1113f), vec3<f32>(var_4.b, -966f, global2.b))) + _wgslsmith_div_vec3_f32(vec3<f32>(502f, global1.b, global2.b), vec3<f32>(-2287f, global1.b, 202f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, -734f, 135f) - vec3<f32>(var_4.b, -314f, 274f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, 697f, global1.b) * vec3<f32>(var_4.b, var_4.b, -1228f)))))), u_input.a.x, var_4.c);
}

