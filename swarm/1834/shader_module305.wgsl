struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1098f, -1241f, -374f));

var<private> global2: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(global1.a);
    var var_0 = Struct_1(global1.a);
    return Struct_1(vec3<f32>(-1772f, var_0.a.x, global1.a.x));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, -218f, 791f) + vec3<f32>(global0.a.x, global0.a.x, global0.a.x))))));
    let var_1 = ~u_input.a;
    global2 = 1u;
    let var_2 = ~(max(7158i, -25874i) & _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, 1i) & _wgslsmith_dot_vec2_i32(vec2<i32>(8394i, 20726i), vec2<i32>(-2147483647i, 0i)), ~1i));
    var var_3 = ~15890i;
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), false)), global1.a.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 1903f, 739f)))));
}

fn func_1() -> Struct_1 {
    global1 = func_3(func_2());
    let var_0 = func_2();
    global1 = Struct_1(func_2().a);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_f_op_vec3_f32(-var_0.a)));
    var var_1 = _wgslsmith_add_u32(min(u_input.a << (u_input.a % 32u), 4294967295u), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(0u, 50379u), vec2<bool>(false, false)), vec2<u32>(~u_input.a >> (min(u_input.a, 3680u) % 32u), 19911u)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(-674f * global0.a.x)), global1.a.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-839f, var_0.a.x)))) - func_3(Struct_1(global1.a)).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1541f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = !(!select(all(vec3<bool>(true, true, false)) || true, false, false));
    let var_2 = 274f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-631f, _wgslsmith_f_op_f32(global0.a.x * 1216f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1065f, -175f), global0.a.yy))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(global0.a.x, var_2)), -978f))), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), any(vec2<bool>(true, true))))));
    let var_4 = func_1();
    global1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(select(var_3.x, var_4.a.x, true)), global0.a.x), vec3<f32>(func_3(Struct_1(vec3<f32>(var_4.a.x, global1.a.x, var_3.x))).a.x, var_2, 1710f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (abs(vec3<u32>(1u, u_input.a, 4294967295u)) % vec3<u32>(32u)))), -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 24369i) << (vec2<u32>(u_input.a, 10730u) % vec2<u32>(32u)), vec2<i32>(7787i, -1i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, firstLeadingBit(u_input.a)), 1u));
}

