struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(true, true));
    global2 = Struct_1(!vec2<bool>(true, global2.a.x));
    let var_1 = Struct_1(vec2<bool>(!(!any(vec2<bool>(false, true))), var_0.a.x));
    let var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(47176u, u_input.b, u_input.b, ~u_input.d), _wgslsmith_div_vec4_u32(~min(vec4<u32>(67561u, 46996u, 4294967295u, u_input.a), vec4<u32>(u_input.d, u_input.a, 45544u, 20373u)), ~(~vec4<u32>(u_input.d, 71109u, u_input.b, 19978u))));
    var var_3 = reverseBits(countOneBits(var_2.xy)) >> (min(_wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.b, 25551u)), var_2.yz), var_2.wz) % vec2<u32>(32u));
    return Struct_1(vec2<bool>(true, u_input.c >= u_input.c));
}

fn func_3() -> f32 {
    var var_0 = vec4<f32>(global0.x, -131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, global0.x)) + _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-global0.x)))), global0.x);
    let var_1 = Struct_1(global2.a);
    let var_2 = func_2();
    var var_3 = Struct_1(vec2<bool>(1u >= ~(u_input.d << (u_input.b % 32u)), true));
    let var_4 = vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.d, 13627u), 36136u, max(4294967295u, 4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(50036u, u_input.b, 14622u), vec3<u32>(4294967295u, 21863u, u_input.b)))), _wgslsmith_div_u32(~1u, firstTrailingBit(countOneBits(0u))) >> (_wgslsmith_add_u32(62545u, 27368u) % 32u), reverseBits(~(~(72925u | u_input.b))));
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global2 = Struct_1(arg_0.yy);
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1183f - global0.x))))), global0.x, global0.x, 2360f);
    var var_1 = 28083i;
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(func_3());
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1281f, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1000f) * vec2<f32>(global0.x, -235f)))))));
    global2 = func_1(vec3<bool>((true & !global2.a.x) | false, true, true || any(arg_0.a)));
    var var_1 = false;
    let var_2 = u_input.c;
    var_1 = arg_0.a.x;
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    let var_0 = func_2();
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)));
    global1 = global0.x;
    var var_1 = _wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(u_input.b, 1u, u_input.b)), vec3<u32>(u_input.a, ~(~u_input.b), abs(1u))));
    let var_2 = var_0;
    return vec2<bool>(true, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -687f), vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(712f, global0.x)))) + vec2<f32>(global0.x, _wgslsmith_f_op_f32(round(global0.x)))))));
    let var_0 = any(select(!(!vec4<bool>(global2.a.x, true, global2.a.x, true)), !vec4<bool>(false, 782u < u_input.b, true, select(false, global2.a.x, global2.a.x)), ~(-95524i) >= _wgslsmith_mod_i32(u_input.c, reverseBits(u_input.c))));
    global2 = Struct_1(!func_5(func_4(func_1(vec3<bool>(global2.a.x, true, global2.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(20363u, 1u), vec2<u32>(4294967295u, 0u)), max(4294967295u, 47209u)), global2.a.x));
    var var_1 = ~69638u;
    let var_2 = Struct_1(func_4(Struct_1(!(!vec2<bool>(false, var_0))), 4294967295u, _wgslsmith_div_u32(firstLeadingBit(53524u) & ~u_input.a, 1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, u_input.d)))).a);
    global2 = Struct_1(vec2<bool>(true, any(!select(vec4<bool>(global2.a.x, true, false, true), vec4<bool>(false, var_0, var_0, false), false))));
    var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, 1u, u_input.d) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, 0u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 0u, 1u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.a)), abs(countOneBits(vec4<u32>(1u, u_input.b, 4294967295u, u_input.d)))) >> (_wgslsmith_mod_u32(~(~(~18881u)), _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, u_input.a, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 30289u, u_input.d), vec3<u32>(4294967295u, u_input.b, 0u)), var_0), vec3<u32>(~65877u, ~u_input.d, _wgslsmith_clamp_u32(1u, u_input.d, u_input.a)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))) * _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(-417f, -1000f)))))), ~1u, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-427f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-421f - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -2158f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x + 1128f), 191f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(758f)), 968f, -181f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, -532f, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(448f, -564f, -793f)))))), ~(~(-2147483647i)));
}

