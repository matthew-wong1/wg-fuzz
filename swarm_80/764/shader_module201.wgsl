struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 7>;

var<private> global2: Struct_1 = Struct_1(20274u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -641f))), _wgslsmith_f_op_vec2_f32(-arg_1.zy))))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(global0.a, arg_2.a), vec4<f32>(716f, -301f, 384f, -768f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(592f, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(223f, 321f)))) - vec2<f32>(_wgslsmith_f_op_f32(-1018f * _wgslsmith_f_op_f32(-254f - 337f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1485f + -217f) * -1546f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-321f)))), 439f));
    let var_1 = _wgslsmith_add_i32(-min(-arg_1, u_input.a), reverseBits(reverseBits(~u_input.b.x)));
    global0 = Struct_1(7104u);
    let var_2 = u_input.d;
    var var_3 = u_input.d.x;
    return ~firstLeadingBit(abs(max(30166u, 1u)) << (~(~1u) % 32u));
}

fn func_1() -> Struct_1 {
    var var_0 = -2463i;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(min(min(func_2(Struct_1(global0.a), u_input.a, Struct_1(global0.a), false), 37348u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global0.a), vec2<u32>(global2.a, global0.a))), 1u), global2.a);
    let var_2 = u_input.a;
    global1 = array<vec2<i32>, 7>();
    var var_3 = select(select(vec4<bool>(select(false, true, all(vec4<bool>(false, false, false, false))), false, select(true, true, true), select(any(vec3<bool>(false, true, true)), false, all(vec2<bool>(false, true)))), vec4<bool>(select(true, true, true), true, true, true), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false))), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), global2.a == 50634u)), true);
    return Struct_1(countOneBits(u_input.d.x) & select(~select(4294967295u, 36679u, var_3.x), 1u, var_3.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_add_u32(func_1().a, 0u | ~global2.a));
    global0 = Struct_1(23018u);
    var var_1 = 4294967295u;
    var var_2 = ~abs(~(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(u_input.d.x, u_input.c, global2.a, 1u)) << ((vec4<u32>(62220u, global0.a, arg_0.a, global2.a) & vec4<u32>(global0.a, 11411u, var_0.a, var_0.a)) % vec4<u32>(32u))));
    global1 = array<vec2<i32>, 7>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), vec2<bool>(global2.a < global2.a, all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1448f - -1069f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1719f))))), 1221f, 1f)));
    global1 = array<vec2<i32>, 7>();
    global0 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(32136u, 0u) & vec2<u32>(global2.a, u_input.d.x), _wgslsmith_sub_vec2_u32(vec2<u32>(8369u, 1488u), vec2<u32>(var_0.a, global0.a))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_1, vec4<f32>(var_1.x, -1929f, 409f, var_1.x)))))).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    global0 = Struct_1(global2.a);
    global1 = array<vec2<i32>, 7>();
    global1 = array<vec2<i32>, 7>();
    let var_3 = -2021f;
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~select(vec3<u32>(2947u, 35851u, u_input.c), vec3<u32>(28341u, 20372u, global2.a), true)), vec3<u32>(var_0.a, ~global2.a, _wgslsmith_mod_u32(1u, ~u_input.d.x)), vec3<bool>(!any(vec4<bool>(false, false, false, false)), true, select(true, false, true))));
}

