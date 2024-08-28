struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
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

var<private> global0: Struct_5 = Struct_5(1i, Struct_4(-1666f, true));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1307f, 1231f, -758f, 1035f), 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>) -> i32 {
    var var_0 = 0i;
    return _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global0.a, _wgslsmith_mult_i32(0i, u_input.b))) << (vec2<u32>(~1u, global1.b) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(max(~vec2<i32>(u_input.b, -2147483647i) >> (vec2<u32>(u_input.c, global1.b) % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(u_input.b, -select(u_input.b, u_input.b, global0.b.b))));
}

fn func_2() -> vec2<bool> {
    global0 = Struct_5(abs(-u_input.b), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1394f) * _wgslsmith_f_op_f32(-global0.b.a))), !(!(!global0.b.b))));
    let var_0 = Struct_3(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.b, global1.b), vec2<u32>(7735u, global1.b)) | ~vec2<u32>(13002u, 1u), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(90813u, global1.b), vec2<u32>(u_input.a, 0u)), vec2<u32>(1u, 1u))) ^ ~vec2<u32>(~u_input.a, u_input.c));
    let var_1 = -988f;
    let var_2 = -countOneBits(vec2<i32>(_wgslsmith_mod_i32(func_3(global1.a.zzz, vec3<u32>(0u, var_0.a.x, 42564u)), -u_input.b), u_input.b >> (0u % 32u)));
    global0 = Struct_5(-func_3(_wgslsmith_f_op_vec3_f32(global1.a.wyz * vec3<f32>(global1.a.x, 452f, global1.a.x)), vec3<u32>(84728u, 4294967295u, 0u)) << (_wgslsmith_mod_u32(1u, 6826u) % 32u), global0.b);
    return select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.a)) * _wgslsmith_f_op_f32(floor(global1.a.x))) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_1)))), any(select(select(vec4<bool>(global0.b.b, global0.b.b, global0.b.b, global0.b.b), vec4<bool>(global0.b.b, false, global0.b.b, false), global0.b.b), vec4<bool>(global0.b.b, true, global0.b.b, false), select(vec4<bool>(global0.b.b, global0.b.b, false, true), vec4<bool>(false, global0.b.b, true, global0.b.b), global0.b.b)))), !vec2<bool>(!all(vec2<bool>(global0.b.b, global0.b.b)), !(!global0.b.b)), select(select(!select(vec2<bool>(global0.b.b, true), vec2<bool>(true, global0.b.b), vec2<bool>(true, true)), vec2<bool>(true, true), !(!vec2<bool>(global0.b.b, false))), vec2<bool>(!global0.b.b, any(!vec3<bool>(global0.b.b, global0.b.b, global0.b.b))), select(vec2<bool>(false, true), !(!vec2<bool>(true, global0.b.b)), !select(vec2<bool>(global0.b.b, true), vec2<bool>(true, true), global0.b.b))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f))))), all(select(vec2<bool>(arg_0.x, arg_0.x), select(arg_0.yz, func_2(), false), !arg_3 | all(arg_0.xy))));
    global1 = Struct_1(vec4<f32>(global1.a.x, -1500f, _wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(sign(var_0.a))), min(4294967295u ^ arg_1.a.x, 1111u));
    var var_1 = -vec2<i32>(-(~u_input.b), u_input.b);
    global0 = Struct_5(10766i, global0.b);
    let var_2 = true;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.a, vec4<f32>(818f, global0.b.a, 1656f, 102f), vec4<bool>(global0.b.b, false, true, arg_2))))), _wgslsmith_dot_vec3_u32(reverseBits(min(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<u32>(94686u, 0u, global1.b))), select(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(4294967295u, arg_1.a.x, arg_1.a.x), arg_2) >> ((vec3<u32>(arg_1.a.x, 1u, u_input.c) ^ vec3<u32>(4294967295u, 1u, 0u)) % vec3<u32>(32u)))), select(vec2<bool>(all(vec2<bool>(false, false)), true), arg_0.xz, arg_3), !(!(!select(vec4<bool>(var_2, global0.b.b, arg_3, true), vec4<bool>(false, false, var_0.b, arg_0.x), vec4<bool>(true, false, true, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a), global1.a))), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(select(vec3<bool>(-1i >= global0.a, global0.b.b, true), select(!vec3<bool>(false, true, global0.b.b), vec3<bool>(global0.b.b, true, true), true), !(!vec3<bool>(global0.b.b, true, false))), vec3<bool>(global0.a != 0i, global0.b.b | false, global0.b.b), true), Struct_3(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1.b, global1.b), vec2<u32>(global1.b, 4294967295u)), select(vec2<u32>(18133u, global1.b), vec2<u32>(global1.b, u_input.a), global0.b.b)), vec2<u32>(4294967295u, abs(global1.b)))), global0.b.b, false);
    global0 = Struct_5(13842i, global0.b);
    let var_1 = Struct_5(func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.a.yyx))), abs(vec3<u32>(global1.b << (u_input.c % 32u), _wgslsmith_add_u32(1u, var_0.a.b), u_input.a))), global0.b);
    global1 = var_0.a;
    global0 = Struct_5(reverseBits(-1i), Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_1.b.a, var_0.d.a.x, var_1.b.b)), var_1.b.a)), false));
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a);
}

