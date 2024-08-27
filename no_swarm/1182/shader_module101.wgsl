struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, true));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = global1.a.x;
    let var_1 = vec4<u32>(u_input.a, abs(arg_2.x), _wgslsmith_add_u32(u_input.b, _wgslsmith_sub_u32((u_input.d.x << (arg_2.x % 32u)) & 36740u, u_input.c)), 19577u);
    global0 = Struct_1(vec3<bool>(false, true, true));
    global0 = arg_3;
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(round(784f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) + _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(max(arg_0, 2666f))))), arg_0);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1464f, -709f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, arg_0, var_2.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1000f - 367f), _wgslsmith_f_op_f32(-var_2.x), 797f, _wgslsmith_f_op_f32(var_2.x + arg_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1883f, arg_0, 211f), vec4<f32>(var_2.x, arg_0, 1904f, var_2.x), true)), vec4<bool>(global1.a.x, true, true && arg_3.a.x, global0.a.x))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(737f * -1386f) - _wgslsmith_f_op_f32(f32(-1f) * -424f)), true, ~reverseBits(u_input.d.zx), arg_0)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1611f, -578f, -1158f, -836f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1978f, _wgslsmith_f_op_f32(min(-364f, 685f)), _wgslsmith_f_op_f32(f32(-1f) * -487f), -654f), vec4<f32>(_wgslsmith_f_op_f32(-1436f + -1721f), _wgslsmith_f_op_f32(round(1108f)), -1000f, _wgslsmith_f_op_f32(floor(887f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-952f, 953f, 195f, 644f), vec4<f32>(-897f, -949f, 237f, 321f))) * vec4<f32>(-1000f, 1158f, -645f, -565f))))));
    var var_1 = Struct_1(arg_1.a);
    var var_2 = Struct_1(!vec3<bool>(true, true, !(!global1.a.x)));
    let var_3 = arg_0;
    return Struct_1(var_1.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global1 = func_2(Struct_1(select(select(!global0.a, vec3<bool>(var_0.a.x, false, false), arg_0.a), select(global0.a, select(var_0.a, arg_1.a, vec3<bool>(false, false, true)), !arg_0.a.x), select(global1.a, vec3<bool>(false, arg_1.a.x, arg_1.a.x), !arg_0.a.x))), var_0);
    return Struct_1(arg_0.a);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(_wgslsmith_div_u32(u_input.c, ~_wgslsmith_mult_u32(u_input.c, u_input.a)) >> (1u % 32u));
    let var_1 = select(_wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, 2669u, var_0)), u_input.d), _wgslsmith_mod_vec3_u32(~u_input.d ^ ~vec3<u32>(9738u, u_input.b, 29778u), vec3<u32>(25591u, 0u, _wgslsmith_sub_u32(34751u, var_0))), false);
    let var_2 = u_input.d;
    global0 = Struct_1(func_2(Struct_1(select(select(global0.a, global1.a, arg_0.a), global0.a, global0.a.x)), Struct_1(!vec3<bool>(arg_0.a.x, false, arg_0.a.x))).a);
    var var_3 = func_2(arg_0, arg_0);
    return func_1(arg_0, Struct_1(select(select(select(global0.a, vec3<bool>(true, false, arg_0.a.x), global1.a), vec3<bool>(var_3.a.x, false, true), global1.a.x & var_3.a.x), vec3<bool>(var_3.a.x, all(vec2<bool>(arg_0.a.x, var_3.a.x)), false), any(!global1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(Struct_1(vec3<bool>(any(vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x)), global1.a.x == global1.a.x, any(global0.a))), Struct_1(!select(vec3<bool>(global0.a.x, true, global0.a.x), vec3<bool>(global1.a.x, false, global0.a.x), global1.a))));
    var var_0 = func_1(func_1(func_2(func_4(func_1(Struct_1(global0.a), Struct_1(global0.a))), func_2(func_2(Struct_1(global0.a), Struct_1(global1.a)), Struct_1(global1.a))), Struct_1(vec3<bool>(true, !global1.a.x, false))), Struct_1(func_1(Struct_1(func_2(Struct_1(global1.a), Struct_1(global1.a)).a), func_4(func_4(Struct_1(vec3<bool>(global0.a.x, global1.a.x, false))))).a));
    var var_1 = u_input.d.x;
    let var_2 = vec2<bool>(func_2(Struct_1(global1.a), Struct_1(!vec3<bool>(true, global0.a.x, false))).a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(36245i, _wgslsmith_sub_i32(-24217i, -52815i), _wgslsmith_mult_i32(-1i, 1i), firstLeadingBit(54109i)) >> (vec4<u32>(~4294967295u, u_input.b, reverseBits(u_input.c), 1u) % vec4<u32>(32u)), ~(-vec4<i32>(1i, 3711i, 1i, -4733i) >> (~vec4<u32>(14709u, u_input.c, u_input.d.x, 1u) % vec4<u32>(32u)))), ~(0i & (-2147483647i << (select(1u, u_input.c, global0.a.x) % 32u))));
}

