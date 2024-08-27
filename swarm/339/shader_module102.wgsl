struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec2<u32>, 29>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(any(vec2<bool>(all(vec2<bool>(true, false)) & select(true, false, false), true)), vec3<bool>(true, all(vec2<bool>(false, true)) || true, (i32(-1i) * -2147483647i) != firstLeadingBit(_wgslsmith_div_i32(u_input.a, 1i))));
    global2 = array<vec2<u32>, 29>();
    global1 = u_input.b;
    global0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.x)), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-714f, 1310f))))));
    let var_1 = 1u;
    return select(vec3<bool>(var_0.b.x, true, any(var_0.b.xy)), !var_0.b, !var_0.b);
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.d, u_input.e, u_input.d), vec4<u32>(25146u, u_input.d, 11871u, 4294967295u))) << (max(select(vec4<u32>(18117u, 0u, u_input.c, u_input.e), vec4<u32>(1208u, 43903u, 0u, u_input.e), arg_0.a), ~vec4<u32>(u_input.e, u_input.c, 0u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.d >> (u_input.e % 32u), firstTrailingBit(4294967295u)), u_input.d, 4294967295u)), 29u)];
    var var_1 = vec2<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * _wgslsmith_f_op_f32(831f * global0.x)) < _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x))), true);
    var var_2 = _wgslsmith_div_f32(1476f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -1000f))))) >= 669f;
    let var_3 = Struct_1(false, arg_0.b);
    var var_4 = -834f;
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, _wgslsmith_mod_u32(20299u, u_input.d) << (~41342u % 32u)), _wgslsmith_div_u32(62105u, max(u_input.e, 27507u ^ u_input.d))), abs(_wgslsmith_mod_u32(64689u, var_0.x)));
}

fn func_2() -> bool {
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x));
    let var_0 = u_input.a;
    let var_1 = 4294967295u;
    var var_2 = vec2<bool>(106946u != func_4(Struct_1(all(vec3<bool>(false, true, true)), func_3())), (~50548u >> (var_1 % 32u)) >= var_1);
    var var_3 = Struct_2(global0.x);
    return var_2.x;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-arg_1.x), func_2())) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.x, -183f)), _wgslsmith_f_op_f32(abs(arg_0)))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(round(1000f)), true))) * -436f), _wgslsmith_f_op_f32(f32(-1f) * -765f));
    let var_1 = -1400f;
    var_0 = Struct_2(1146f);
    let var_2 = !vec4<bool>(all(!func_3().yx), !(min(-2147483647i, -2147483647i) <= u_input.b), func_2(), any(vec3<bool>(u_input.c >= 0u, func_2(), all(vec4<bool>(true, true, false, true)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-abs(select(vec3<i32>(u_input.a, u_input.b, u_input.b) << (vec3<u32>(u_input.e, 0u, u_input.d) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, true))));
    var var_1 = !func_1(_wgslsmith_f_op_f32(abs(1001f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(650f, 671f), vec2<f32>(473f, -139f))))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-439f, global0.x, -1456f, -354f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1453f, -171f) * vec4<f32>(256f, -1000f, -1566f, -868f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, 1254f)), -550f), -198f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -823f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 267f) + _wgslsmith_f_op_f32(-global0.x))))));
    let var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1000f, var_3.x), u_input.a, firstTrailingBit(~u_input.c & ~4294967295u) >> (select(27172u, 0u, func_2()) % 32u), vec3<u32>(firstLeadingBit(4294967295u), 84452u, 4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.c), ~vec3<u32>(u_input.c, u_input.c, u_input.c))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(45827u, 1u, u_input.e, 9276u) >> (abs(vec4<u32>(u_input.e, 1u, 0u, u_input.e)) % vec4<u32>(32u)), select(~vec4<u32>(u_input.c, 34387u, u_input.d, 26399u), vec4<u32>(89510u, 68471u, u_input.d, u_input.e), false)));
}

