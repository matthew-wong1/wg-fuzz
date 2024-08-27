struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 1u), false, 28838u, 1u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(272f, 434f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(828f, 125f) - vec2<f32>(-391f, 980f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1230f) + vec2<f32>(1009f, 334f))), vec2<bool>(true, !global0.b)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 811f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -664f), vec2<f32>(var_0.x, var_0.x), vec2<bool>(global0.b, global0.b))), global0.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -993f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -287f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, -178f)) * -423f), var_0.x)) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 639f) + _wgslsmith_f_op_f32(ceil(499f))))), var_0.x));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(-737f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1500f)))), true))), var_0.x, var_0.x);
    global0 = Struct_1(vec2<u32>(~(~(global0.d ^ global0.a.x)), ~firstTrailingBit(~1u)), false, _wgslsmith_mod_u32(~global0.c, ~72517u), global0.c);
    let var_2 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.x & _wgslsmith_mod_u32(global0.c, global0.a.x), global0.a.x), global0.a), any(!select(select(vec4<bool>(global0.b, true, false, global0.b), vec4<bool>(global0.b, true, false, global0.b), false), vec4<bool>(global0.b, false, false, true), false)), global0.a.x ^ ~(7155u & (global0.a.x | global0.d)), _wgslsmith_add_u32(~(~_wgslsmith_div_u32(64050u, global0.a.x)), min(select(40827u, 60875u, true) << (~16909u % 32u), _wgslsmith_sub_u32(~2779u, ~global0.d))));
    return var_2.d;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec2<u32>(~(~global0.a.x), 47298u), false, ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global0.d, 1u, global0.a.x) << (vec3<u32>(1u, 1u, global0.d) % vec3<u32>(32u))), ~vec3<u32>(1u, 40095u, global0.d)), (func_3() & global0.a.x) | 31929u);
    var var_0 = true;
    var var_1 = select(vec3<bool>(true, true, global0.b), vec3<bool>(global0.b, true & all(select(vec3<bool>(true, true, false), vec3<bool>(global0.b, global0.b, false), global0.b)), true), !all(vec3<bool>(true, true, true)) || true);
    var var_2 = vec4<f32>(317f, -547f, -529f, _wgslsmith_f_op_f32(step(-730f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1181f)))) + 1000f))));
    global0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(global0.a.x), 4294967295u), global0.a), false, ~1u, global0.d);
    return Struct_1(global0.a ^ global0.a, select(true, true, global0.b), ~(0u ^ func_3()), global0.d);
}

fn func_1() -> Struct_1 {
    let var_0 = 59794u;
    var var_1 = 1000f;
    global0 = func_2();
    let var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(global0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(global0.c, global0.a.x) | global0.a, _wgslsmith_sub_vec2_u32(~global0.a, ~vec2<u32>(1134u, 16413u)))), ~vec2<u32>(1u, firstLeadingBit(~global0.d)));
    var var_3 = global0.b;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = ~((~(vec3<u32>(1u, global0.d, global0.c) >> (vec3<u32>(15274u, global0.c, 6748u) % vec3<u32>(32u))) ^ vec3<u32>(4294967295u, global0.c, 4294967295u)) | (~vec3<u32>(global0.a.x, 1u, global0.d) | _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global0.c, 1u), vec3<u32>(4294967295u, 34901u, global0.c)), ~vec3<u32>(global0.d, global0.c, 44730u))));
    let var_1 = 2147483647i;
    let var_2 = func_1();
    var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(func_2().d, max(global0.a.x, var_0.x), min(0u, 6098u)), reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a.x, global0.c, 11862u), vec3<u32>(81477u, 0u, var_2.a.x), ~vec3<u32>(var_2.d, 11168u, 32199u)))), firstTrailingBit(vec3<u32>(global0.a.x, ~_wgslsmith_div_u32(4294967295u, var_2.a.x), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, 52297u, ~(~global0.a.x | 0u)));
}

