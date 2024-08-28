struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: vec3<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_5) -> bool {
    let var_0 = Struct_4(-50510i, Struct_2(Struct_1(abs(select(arg_2.b.a.a, vec4<u32>(u_input.a.x, arg_2.a, u_input.a.x, 0u), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_f32(abs(arg_2.b.a.b)))), select(~arg_2.b.a.a.x, 4294967295u, !all(vec4<bool>(false, false, false, false))), Struct_3(25032u), Struct_1(select(vec4<u32>(select(1933u, 0u, true), select(12623u, 49163u, false), arg_2.b.a.a.x << (58452u % 32u), abs(0u)), _wgslsmith_mult_vec4_u32(arg_2.b.a.a, ~u_input.a), !all(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b.a.b)))))));
    global0 = array<vec3<f32>, 9>();
    var var_1 = arg_2.b.a;
    var var_2 = Struct_2(var_0.b.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-641f, _wgslsmith_div_f32(var_0.b.a.b, var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -2271f), 1298f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.b, var_0.b.a.b, -178f, -565f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a.b, var_0.b.a.b, var_1.b, -1763f)))))))));
    return all(vec3<bool>(false, !all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), true));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: i32) -> i32 {
    return arg_1.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(countOneBits(u_input.a.xwy)), ~(u_input.a.xyx & vec3<u32>(u_input.a.x, u_input.a.x, 43098u))), u_input.a.xzw));
    var var_1 = Struct_3(14895u);
    var var_2 = i32(-1i) * -21249i;
    var var_3 = vec3<i32>(func_4(Struct_4(global1.x, Struct_2(Struct_1(u_input.a, -699f)), _wgslsmith_div_u32(32527u, u_input.a.x), Struct_3(reverseBits(var_0.a)), Struct_1(u_input.a, _wgslsmith_f_op_f32(1110f + -392f))), ~select(vec2<i32>(global1.x, -10430i), vec2<i32>(global1.x, global1.x), func_3(global1.x, 1000f, Struct_5(var_0.a, Struct_2(Struct_1(u_input.a, -1886f))))), -2147483647i), global1.x, 62121i);
    global0 = array<vec3<f32>, 9>();
    return select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(func_3(var_3.x, -1312f, Struct_5(var_1.a, Struct_2(Struct_1(u_input.a, -340f)))), false, true)), vec3<bool>(false, !any(vec2<bool>(true, true)), !any(vec4<bool>(false, false, true, false))), true), vec3<bool>(true, ~4294967295u < max(1u, _wgslsmith_sub_u32(59854u, u_input.a.x)), false));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<bool>) -> bool {
    var var_0 = 0u;
    var var_1 = !func_2();
    var_0 = 71286u;
    var_0 = u_input.a.x << (37805u % 32u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -580f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f)))))))));
    let var_2 = Struct_3(1u);
    var var_3 = select(!vec4<bool>(-1830f >= var_1, func_1(vec3<bool>(true, true, true), ~var_2.a, vec3<bool>(true, true, true)), !all(vec2<bool>(false, true)), true), !vec4<bool>(true, true, !all(vec4<bool>(false, false, true, false)), !(global1.x == global1.x)), vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -46094i), abs(global1.yx)) > (global1.x ^ countOneBits(-31591i)), any(vec3<bool>(all(vec3<bool>(true, false, true)), true, true)), any(select(func_2(), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), true)), true));
    var var_4 = _wgslsmith_mult_vec2_i32(select(~(~global1.zy), min(min(vec2<i32>(global1.x, 19881i), -global1.zz), -_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global1.x), vec2<i32>(20517i, -50612i))), !(var_1 < var_1)), global1.zz);
    var_4 = vec2<i32>(global1.x, -global1.x);
    let var_5 = vec2<u32>(~78182u, ~reverseBits(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) | ~0u));
    let x = u_input.a;
    s_output = StorageBuffer(-1755i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-468f, -1441f) * var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(-479f, var_1)))), var_4.x);
}

