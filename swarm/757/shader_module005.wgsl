struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(1u, 47417u), vec2<u32>(9607u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(52186u, 0u), vec2<u32>(57023u, 17728u), vec2<u32>(25225u, 32135u), vec2<u32>(74451u, 1u), vec2<u32>(30118u, 1u), vec2<u32>(7387u, 61994u));

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    let var_0 = 165f;
    var var_1 = !all(vec2<bool>(all(vec3<bool>(true, false, false)), false));
    global1 = arg_0.b;
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.a.x), ~global0[_wgslsmith_index_u32(0u, 9u)]), ~vec2<u32>(arg_0.a.x, arg_0.b)) >> (reverseBits(114158u) % 32u), _wgslsmith_add_u32(arg_0.a.x, 4294967295u | _wgslsmith_mult_u32(u_input.a.x, 23325u)), ~(~arg_0.a.x));
    global0 = array<vec2<u32>, 9>();
    return _wgslsmith_f_op_f32(-global2.c.x);
}

fn func_2() -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(f32(-1f) * -1793f)), _wgslsmith_f_op_f32(min(619f, global2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<u32>(4294967295u, u_input.a.x, 8534u, u_input.a.x), u_input.a.x, vec4<i32>(global2.a.x, global2.e.x, -3941i, -37104i)), vec2<i32>(global2.a.x, global2.e.x))), global2.d)), -392f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(var_0.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-762f, -428f) * vec2<f32>(-1098f, var_0.x))))));
    global0 = array<vec2<u32>, 9>();
    global0 = array<vec2<u32>, 9>();
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(35822i >> (firstTrailingBit(38287u) % 32u), global2.a.x | global2.e.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -2147483647i), ~global2.a.xx)), select(global2.a, global2.e.wxy, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1721f, var_1.x)))))), var_0.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f - -276f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(272f, _wgslsmith_f_op_f32(f32(-1f) * -495f)) + var_1.x)), vec4<i32>(global2.e.x, firstLeadingBit(_wgslsmith_add_i32(global2.e.x, -16462i)), global2.a.x, global2.a.x) & _wgslsmith_mod_vec4_i32(max(global2.e, _wgslsmith_mod_vec4_i32(global2.e, global2.e)), vec4<i32>(global2.e.x, -20625i << (0u % 32u), max(-14880i, global2.e.x), ~global2.e.x)));
    return all(select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), var_2.d < var_0.x), select(vec2<bool>(any(vec3<bool>(false, false, true)), true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), true))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec3<bool>) -> vec3<i32> {
    global1 = u_input.a.x;
    let var_0 = vec3<bool>(func_2(), arg_1, arg_3.x);
    global3 = global2.b;
    let var_1 = u_input.a.x;
    let var_2 = 32426u;
    return _wgslsmith_add_vec3_i32(arg_0.a, -global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(Struct_1(global2.a, _wgslsmith_f_op_f32(-1719f * -691f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(global2.c)))), -732f, (vec4<i32>(global2.a.x, global2.e.x, global2.a.x, -15298i) | global2.e) & vec4<i32>(0i, 62175i, global2.a.x, global2.e.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.b, 3387f, true)) - -978f)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), global2.d, vec2<f32>(-920f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<u32>(48588u, 1u, 28160u, 2200u), u_input.a.x, global2.e), global2.a.xz)), _wgslsmith_f_op_f32(exp2(global2.b))))), global2.d, global2.e << (abs(u_input.a) % vec4<u32>(32u)));
    var_0 = Struct_1(vec3<i32>(~(-7439i), ~(~_wgslsmith_div_i32(-392i, -5421i)), 0i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(floor(-994f))) + -613f), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.x - var_0.b), -466f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + global2.d), var_0.b))) * var_0.d), _wgslsmith_div_vec4_i32(-(vec4<i32>(-45480i, 16302i, 0i, var_0.a.x) & -vec4<i32>(41429i, -60843i, 22706i, global2.a.x)), abs(_wgslsmith_div_vec4_i32(reverseBits(global2.e), vec4<i32>(1i, 1i, 29932i, 22080i)))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-614f))))));
    let var_2 = ~(-(~2147483647i));
    let var_3 = Struct_1(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(min(global2.a, global2.e.yyx), global2.e.ywy), _wgslsmith_mod_vec3_i32(-vec3<i32>(var_2, global2.e.x, global2.e.x), vec3<i32>(-1i, -1i, var_2)))), -1389f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(829f, global2.b), var_0.c))))), _wgslsmith_f_op_f32(floor(-1081f)), var_0.e);
    var var_4 = true;
    global0 = array<vec2<u32>, 9>();
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_5.d));
}

