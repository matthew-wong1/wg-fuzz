struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_2) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-608f - _wgslsmith_f_op_f32(-909f + arg_3.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, arg_2)) - 1478f)))), global0.b, 450f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(789f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(387f)))), true)))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<f32>) -> vec4<f32> {
    var var_0 = arg_2.b;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3 + vec4<f32>(arg_3.x, arg_2.b, -2088f, 2269f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -235f))));
    let var_3 = max(min(min(-27645i, 0i) >> (abs(arg_2.a) % 32u), -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.b.x, arg_2.c.b.x), _wgslsmith_mod_vec2_i32(u_input.b.wy, vec2<i32>(-1i, select(arg_2.c.a.x, arg_0, false)))));
    var var_4 = var_1;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1581f, arg_2.b, arg_2.b, global0.b))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(var_4.a, vec4<f32>(var_1.a.x, var_4.a.x, -217f, 1227f), arg_2.c.c)), var_1.a)))));
}

fn func_2(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1291f, global0.b, 1188f, global0.b)), vec4<f32>(_wgslsmith_f_op_f32(187f - -300f), -303f, _wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_div_f32(682f, -1400f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(~9058i, select(u_input.b.x, global0.c.a.x, false), Struct_2(14060u, 1771f, global0.c, global0.d), _wgslsmith_f_op_vec4_f32(func_3(global0.c, vec3<u32>(global0.a, global0.a, global0.a), 976f, Struct_2(26405u, 341f, global0.c, false)))))))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a));
    global0 = Struct_2(~(~(~76719u)), _wgslsmith_f_op_f32(exp2(global0.b)), Struct_1(vec2<i32>(-1i) * -(~vec2<i32>(arg_0, u_input.b.x)), _wgslsmith_mult_vec2_i32(global0.c.b, -(vec2<i32>(12069i, 33888i) | global0.c.b)), global0.d), false);
    var var_1 = Struct_1(-global0.c.a, firstLeadingBit(vec2<i32>(u_input.b.x, global0.c.a.x)), false);
    let var_2 = vec3<bool>(all(!vec4<bool>(any(vec3<bool>(arg_1, false, arg_1)), global0.c.c, true && arg_1, true)), true, any(select(select(select(vec2<bool>(arg_1, global0.d), vec2<bool>(false, global0.d), global0.c.c), vec2<bool>(arg_1, true), vec2<bool>(var_1.c, global0.d)), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, var_1.c), vec2<bool>(false, true)), !(!vec2<bool>(global0.c.c, false)))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1783f)), 770f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.a.x)), var_0.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -2067f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_3 {
    global0 = arg_1;
    let var_0 = Struct_1(~select(vec2<i32>(abs(39218i), firstLeadingBit(-8316i)), vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, u_input.a), all(vec4<bool>(arg_1.d, global0.c.c, arg_1.c.c, true))), vec2<i32>(-8634i, 2147483647i), all(!(!(!vec2<bool>(arg_1.d, arg_1.d)))));
    var var_1 = countOneBits(arg_1.c.b.x) << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 42979u, 5512u), vec4<u32>(99374u, arg_1.a, 63951u, global0.a))), 19232u) % 32u);
    global0 = Struct_2(~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_i32(u_input.b.x >> (1377u % 32u), _wgslsmith_mod_i32(-2147483647i, arg_1.c.b.x)), !arg_1.c.c)) - -1622f), arg_1.c, var_0.c);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_i32(global0.c.a.x, var_0.a.x), !global0.c.c)), _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-430f - -1013f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * arg_1.b)))));
    return Struct_3(var_2.a);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3) -> StorageBuffer {
    global0 = Struct_2(61064u, _wgslsmith_f_op_f32(-arg_2.a.x), Struct_1(-global0.c.b, ~(~global0.c.b | u_input.b.zz), global0.c.c), any(!arg_1.a.wzx));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, -1253f))));
    global0 = Struct_2(~(~global0.a), -229f, global0.c, true);
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + -1155f) + arg_2.a.x)))));
    return StorageBuffer(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(func_1(vec2<u32>(global0.a, global0.a), Struct_2(global0.a, global0.b, Struct_1(u_input.b.zw, u_input.b.yz, arg_1.a.x), arg_1.a.x)).a.xw, arg_2.a.xx, global0.d)), vec2<f32>(189f, _wgslsmith_f_op_f32(sign(-520f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a.www - arg_2.a.yww)), 0i, abs(~(~vec3<u32>(global0.a, global0.a, global0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(u_input.c.x, Struct_4(!(!(!vec4<bool>(global0.d, true, global0.d, true)))), func_1(min(vec2<u32>(0u | global0.a, 0u >> (0u % 32u)), max(min(vec2<u32>(global0.a, global0.a), vec2<u32>(global0.a, 1u)), vec2<u32>(global0.a, 11330u))), Struct_2(~0u, global0.b, Struct_1(u_input.b.yz, vec2<i32>(global0.c.a.x, u_input.b.x), false), !(global0.a >= global0.a))));
}

