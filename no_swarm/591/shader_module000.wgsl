struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(i32(-2147483648), i32(-2147483648), -59557i, -1194i, -1i, -1i, i32(-2147483648), -16585i, 25845i, 30730i, 8352i, 2147483647i, -8954i, 2147483647i, -11295i, -37434i, -1i, -8231i);

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(20020i, -38716i), vec2<i32>(1i, -1i), vec2<i32>(86318i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<f32>) -> vec2<bool> {
    global0 = array<i32, 18>();
    var var_0 = -44490i << ((~_wgslsmith_add_u32(~u_input.b.x, 75547u << (u_input.d % 32u)) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.d, 0u, 6146u) & ~vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, 95493u), abs(u_input.a))) % 32u);
    var var_1 = Struct_2(arg_1.a, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.a.a.x, arg_1.a.a.x), -1669f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(-1105f, arg_2.x))), any(select(!vec3<bool>(arg_1.a.b, false, true), vec3<bool>(arg_1.a.b, arg_1.a.b, arg_1.a.b), arg_1.a.b))), arg_1.a.a.x);
    let var_2 = arg_0.xzy;
    var var_3 = select(select(!(!vec3<bool>(var_1.b.b, false, arg_1.a.b)), vec3<bool>(var_1.b.b, !all(vec2<bool>(arg_1.a.b, false)), false), vec3<bool>(var_1.b.b, select(true, var_1.a.b, select(true, true, var_1.a.b)), true & !var_1.a.b)), select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, arg_1.a.b, var_1.b.b), vec3<bool>(arg_1.a.b, arg_1.a.b, var_1.a.b)), !vec3<bool>(false, false, var_1.a.b), var_1.a.b), select(!vec3<bool>(false, false, var_1.a.b), vec3<bool>(var_1.a.b, var_1.a.b, arg_1.a.b), true), select(select(vec3<bool>(true, arg_1.a.b, true), select(vec3<bool>(false, true, arg_1.a.b), vec3<bool>(false, arg_1.a.b, arg_1.a.b), vec3<bool>(true, arg_1.a.b, var_1.b.b)), !arg_1.a.b), select(!vec3<bool>(var_1.b.b, arg_1.a.b, false), select(vec3<bool>(var_1.a.b, arg_1.a.b, arg_1.a.b), vec3<bool>(true, arg_1.a.b, var_1.a.b), vec3<bool>(true, true, arg_1.a.b)), vec3<bool>(arg_1.a.b, false, false)), _wgslsmith_mult_i32(76157i, arg_0.x) >= -global0[_wgslsmith_index_u32(21097u, 18u)])), var_1.b.b);
    return !(!(!select(select(var_3.yy, var_3.xz, var_3.zx), vec2<bool>(var_3.x, true), all(vec2<bool>(true, true)))));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    global1 = array<vec2<i32>, 4>();
    global0 = array<i32, 18>();
    let var_0 = vec4<bool>(true, all(func_3(~vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(0u, 18u)], u_input.c, u_input.c), Struct_3(Struct_1(vec4<f32>(-368f, 1154f, -1000f, -290f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-932f, -252f, 1546f, -163f)))) || select(true, true, any(vec2<bool>(true, true))), true, true);
    var var_1 = true;
    var_1 = false;
    return all(var_0);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(-119f, _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -863f), _wgslsmith_f_op_f32(-1063f + _wgslsmith_f_op_f32(floor(255f)))), !all(select(arg_0, arg_0, arg_0.x))), arg_2, arg_2.a.x);
    global0 = array<i32, 18>();
    let var_1 = select(select(!(!select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_2.b, true, var_0.b.b), vec4<bool>(var_0.b.b, true, arg_0.x, false))), select(vec4<bool>(arg_0.x, true, arg_0.x, u_input.c >= 2147483647i), select(vec4<bool>(false, false, false, arg_2.b), vec4<bool>(true, true, arg_2.b, arg_0.x), select(vec4<bool>(var_0.b.b, arg_0.x, arg_2.b, false), vec4<bool>(false, var_0.b.b, arg_2.b, arg_0.x), arg_0.x)), arg_1.x <= (i32(-1i) * -30350i)), any(select(select(vec4<bool>(arg_0.x, var_0.b.b, true, arg_2.b), vec4<bool>(true, false, var_0.b.b, arg_0.x), false), select(vec4<bool>(arg_0.x, arg_2.b, true, arg_2.b), vec4<bool>(true, false, var_0.a.b, arg_2.b), vec4<bool>(false, arg_0.x, var_0.a.b, arg_2.b)), true))), select(vec4<bool>(true, arg_2.b, any(select(vec3<bool>(var_0.a.b, true, var_0.b.b), vec3<bool>(true, false, true), vec3<bool>(false, false, var_0.a.b))), any(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(false, arg_2.b, false), true))), vec4<bool>(false, true, true, !arg_2.b), true), arg_2.b);
    var var_2 = vec2<i32>(-378i, u_input.c);
    var var_3 = Struct_2(Struct_1(var_0.b.a, func_2(~u_input.a.zw) | !var_1.x), Struct_1(arg_2.a, arg_3.x == 2239f), _wgslsmith_f_op_f32(f32(-1f) * -685f));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(352f, 1630f, arg_2.a.x, var_3.a.a.x), vec4<f32>(884f, var_3.b.a.x, var_0.b.a.x, -1244f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-947f, 293f, 840f, arg_3.x), var_0.a.a, arg_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1199f, arg_3.x, -230f) - arg_2.a))), true));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0.a.x;
    let var_1 = func_4(select(!vec2<bool>(func_2(u_input.b), all(vec2<bool>(arg_0.b, true))), vec2<bool>(true, false), any(!select(vec4<bool>(arg_0.b, arg_0.b, true, false), vec4<bool>(arg_0.b, true, arg_0.b, false), false))), vec4<i32>(~(-24561i), -(i32(-1i) * -16061i), 2147483647i, 0i), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.a, vec4<f32>(948f, -1000f, 592f, var_0), vec4<bool>(true, false, false, true))) * vec4<f32>(arg_0.a.x, arg_0.a.x, 1037f, -268f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, var_0, 2375f, var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, var_0, -748f, 1000f) - arg_0.a))))), !any(vec2<bool>(true, true))), vec4<f32>(arg_0.a.x, 815f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - 635f) - arg_0.a.x), arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)));
    global1 = array<vec2<i32>, 4>();
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(exp2(arg_0.a)))), true));
    var_2 = var_1;
    return _wgslsmith_f_op_f32(-var_2.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(-133f, 1571f, -945f, -283f), false))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-452f, 719f), _wgslsmith_f_op_f32(min(-1463f, 635f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1017f, -275f), !all(vec3<bool>(all(vec2<bool>(false, true)), false, any(vec3<bool>(false, true, false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1029f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(564f + 358f)))))));
    let var_2 = !select(!(!vec4<bool>(var_0.b, false, false, var_0.b)), !vec4<bool>(28177u <= u_input.a.x, true, any(vec3<bool>(var_0.b, false, var_0.b)), true), !vec4<bool>(var_0.b, var_0.b, var_0.b, false));
    global1 = array<vec2<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(u_input.b.x ^ 0u, max(61550u, 4294967295u), u_input.a.x), firstTrailingBit(min(u_input.b.x, ~u_input.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, 40003u, 60114u), u_input.b.x | u_input.a.x), ~(~u_input.b))), min(vec3<i32>(abs(_wgslsmith_mod_i32(0i, 1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -16130i, global0[_wgslsmith_index_u32(1u, 18u)]), vec4<i32>(-2147483647i, u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 3545i)), vec4<i32>(global0[_wgslsmith_index_u32(7501u, 18u)], u_input.c, 1i, u_input.c)), 0i), select(vec3<i32>(-14272i, u_input.c, ~(-63518i)), ~(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], -1i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), true)));
}

