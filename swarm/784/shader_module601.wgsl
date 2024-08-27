struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.e, 0u), vec3<u32>(u_input.e, 40836u, 16581u))), 66803u)), 3u)];
    global0 = array<f32, 8>();
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(var_0.a, var_0.a)), _wgslsmith_sub_u32(1u, min(abs(var_0.b), ~var_0.b)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(var_0.a)), ~4220u);
    let var_1 = 4294967295u;
    return ~min(~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a) & vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.ywz, vec3<u32>(1u, 0u, var_0.b)), var_1, ~u_input.a.x, abs(62332u)), firstLeadingBit(~(vec4<u32>(var_1, 1u, 0u, u_input.a.x) | u_input.a)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = vec2<bool>(true, !(((36701i | u_input.b) ^ u_input.c) > 0i));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31815u, _wgslsmith_dot_vec4_u32(~vec4<u32>(25202u, 4294967295u, arg_2, u_input.d) << (func_3() % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(min(vec4<u32>(1u, arg_1, 8272u, 4294967295u), u_input.a), ~u_input.a)), ~arg_1, firstLeadingBit(arg_1)), u_input.a), 3u)];
    let var_2 = -996f;
    let var_3 = ~reverseBits(2147483647i);
    global1 = array<Struct_1, 3>();
    return global1[_wgslsmith_index_u32(max(arg_0.b, countOneBits(max(var_1.b, arg_2)) | 0u), 3u)];
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(392f, -1000f)))), _wgslsmith_div_vec2_f32(arg_3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 8u)], arg_3.a.x)) * vec2<f32>(-207f, 2416f))))), ~firstTrailingBit(u_input.d));
    let var_1 = _wgslsmith_div_i32(~firstTrailingBit(arg_1 << (1u % 32u)), _wgslsmith_clamp_i32(u_input.c, arg_1, -1i));
    var var_2 = 1000f;
    var var_3 = -1i;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1229f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(u_input.d << (var_0.b % 32u)), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1413f, -615f, arg_0)) * _wgslsmith_div_f32(arg_2.x, -1056f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.a.x)))));
    return select(func_3().x, var_0.b, false);
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 3>();
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    global1 = array<Struct_1, 3>();
    let var_0 = global1[_wgslsmith_index_u32(1u << (_wgslsmith_mult_u32(~(~select(0u, 1u, true)), func_4(true, ~2147483647i, vec2<f32>(_wgslsmith_div_f32(-146f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), 8u)]), func_2(global1[_wgslsmith_index_u32(abs(18286u), 3u)], u_input.a.x, max(u_input.e, u_input.d), global0[_wgslsmith_index_u32(u_input.d, 8u)]))) % 32u), 3u)];
    return func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), abs(4294967295u)), var_0.b, ~0u, 587f), 41819u, (~_wgslsmith_dot_vec2_u32(vec2<u32>(35388u, 4294967295u), vec2<u32>(4294967295u, var_0.b)) & 28031u) & _wgslsmith_clamp_u32(152u, ~_wgslsmith_clamp_u32(12681u, 0u, 4294967295u), ~u_input.d), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u >> (~(~var_0.b) % 32u), 8u)]));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = select(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true), any(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false))), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, false), 4294967295u >= (u_input.d >> (arg_1.b % 32u))), select(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true), vec4<bool>(arg_2 != arg_1.b, any(vec3<bool>(false, true, false)), all(vec4<bool>(true, true, false, false)), all(vec4<bool>(true, true, false, false))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, false)))), true), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), vec4<bool>(true, arg_0.a.x < -437f, true, true), all(vec3<bool>(false, true, true))), select(vec4<bool>(true, any(vec2<bool>(false, true)), any(vec4<bool>(false, false, false, true)), true), vec4<bool>(select(true, false, true), -1495f >= arg_0.a.x, true, select(false, true, true)), true), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(661f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10464u, 8u)])))) - _wgslsmith_f_op_f32(-719f + 2069f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f + -1826f)), -237f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -215f), any(var_0.yw))) * _wgslsmith_f_op_f32(f32(-1f) * -572f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.x))) * func_2(arg_0, 79648u, _wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_f_op_f32(floor(arg_1.a.x))).a.x), 742f, true)), arg_0.a.x);
    let var_2 = arg_1;
    global1 = array<Struct_1, 3>();
    global0 = array<f32, 8>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.wxx;
    let var_1 = func_5(func_1(), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-302f, global0[_wgslsmith_index_u32(56551u, 8u)]) * vec2<f32>(global0[_wgslsmith_index_u32(4702u, 8u)], -1379f))), 4294967295u), ~4294967295u, ~(~0u), _wgslsmith_f_op_f32(-678f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(119899u, var_0.x), 8u)]))), ~var_0.x, u_input.c);
    let var_2 = var_1.b;
    let var_3 = all(vec3<bool>(_wgslsmith_mod_u32(var_1.b, var_2) <= firstTrailingBit(54244u), -1783f <= _wgslsmith_f_op_f32(step(1000f, global0[_wgslsmith_index_u32(23346u, 8u)])), true || any(vec3<bool>(true, true, false)))) && true;
    let var_4 = Struct_1(func_5(func_5(var_1, Struct_1(var_1.a, 1u), abs(0u), firstTrailingBit(max(u_input.b, 45509i))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(2618f, global0[_wgslsmith_index_u32(u_input.e, 8u)]) + vec2<f32>(-896f, -1348f)))), _wgslsmith_div_u32(var_1.b, ~0u)), min(0u, countOneBits(u_input.a.x)), -5793i).a, 20865u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(reverseBits(1u), _wgslsmith_mult_u32(0u, 44304u))), -104713i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(272f)))), vec4<u32>(~0u, abs(25014u), 52938u, _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, var_2, 4294967295u, var_2) << (u_input.a % vec4<u32>(32u)), u_input.a))), ~select(func_3().x, abs(var_1.b), true) | ((var_1.b << (4294967295u % 32u)) << (min(var_2 << (var_1.b % 32u), countOneBits(var_4.b)) % 32u)));
}

