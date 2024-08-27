struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = 1i;
    global0 = true;
    let var_1 = Struct_2(Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))) || true, !any(vec2<bool>(true, true)), min(vec3<i32>(-1i, var_0, 42765i), firstTrailingBit(vec3<i32>(u_input.a.x, var_0, -56141i))) << (select(~vec3<u32>(32197u, 28417u, 0u), vec3<u32>(36887u, 32907u, 6895u), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)) % vec3<u32>(32u))), 754f, Struct_1(any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), var_0 > 2147483647i)), true, vec3<i32>(u_input.a.x, 1i, _wgslsmith_mod_i32(var_0, _wgslsmith_div_i32(-1i, var_0)))));
    let var_2 = Struct_3(_wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(u_input.a.zxw, u_input.a.wxx, vec3<i32>(-50282i, var_1.c.c.x, var_0)), -var_1.a.c), var_1.c, 1u, min(abs(vec2<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(45487u, 1u, 0u, 4294967295u), vec4<u32>(1u, 17097u, 4294967295u, 1313u)))), firstTrailingBit(vec2<u32>(1u, 1u)) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    global0 = !all(!(!(!vec2<bool>(true, var_2.b.b))));
    return _wgslsmith_clamp_u32(min(3604u >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_2.d.x, var_2.d.x, var_2.d.x), vec3<u32>(var_2.d.x, var_2.c, var_2.d.x), vec3<bool>(var_2.b.b, var_2.b.b, var_1.a.a)), min(vec3<u32>(45423u, var_2.c, var_2.d.x), vec3<u32>(0u, var_2.c, var_2.d.x))) % 32u), var_2.d.x), _wgslsmith_clamp_u32(49349u, _wgslsmith_mod_u32(54558u, 20585u), min(1u, ~1u)), max(~0u, var_2.c));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global1 = arg_0;
    let var_0 = Struct_2(Struct_1(!arg_0, arg_0, abs(u_input.a.wxz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f)))), Struct_1(any(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, true), false)), true, _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(1i, u_input.a.x, u_input.a.x)), vec3<i32>(abs(u_input.a.x), 2147483647i | u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b)))));
    var var_1 = ~19727u;
    var var_2 = firstLeadingBit(var_0.a.c.x) | 21846i;
    var_1 = _wgslsmith_div_u32(421u, ~firstTrailingBit(func_3()));
    return vec4<bool>(true, arg_0, arg_0, var_0.b == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-138f - var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: i32) -> vec3<bool> {
    global0 = 1326f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)) * _wgslsmith_f_op_f32(-325f * arg_1.c));
    var var_0 = arg_0;
    var var_1 = arg_0;
    var_0 = select(!select(vec4<bool>(var_1.x, false, true, !arg_0.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(any(vec3<bool>(false, false, var_0.x)), all(vec4<bool>(var_0.x, false, arg_0.x, var_1.x)), !var_0.x, select(false, var_1.x, false))), func_2(false), !(!select(arg_0, arg_0, var_0.x)));
    let var_2 = Struct_1(false, true, vec3<i32>(select(-72036i, -50399i, true), _wgslsmith_dot_vec2_i32(-reverseBits(arg_1.b.zy), reverseBits(arg_1.b.yx >> (vec2<u32>(arg_1.a.x, arg_1.a.x) % vec2<u32>(32u)))), -1i));
    return arg_0.wwz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1073f)))) - _wgslsmith_div_f32(296f, _wgslsmith_f_op_f32(step(-903f, -1013f)))) - _wgslsmith_f_op_f32(abs(1f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(724f)), _wgslsmith_div_f32(-754f, 1380f))));
    let var_0 = true;
    global1 = false;
    global1 = true;
    global0 = var_0;
    global0 = true;
    let var_1 = vec3<bool>(all(select(func_1(select(vec4<bool>(true, false, true, var_0), vec4<bool>(var_0, var_0, var_0, var_0), true), Struct_4(vec3<u32>(0u, 41692u, 38149u), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), -2661f), u_input.b), vec3<bool>(func_2(var_0).x, false, true), var_0)), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(abs(vec2<u32>(29652u, 119727u)))), ~vec2<u32>(1u, 1u), firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(-10672i, 1i) << (1u % 32u), 1i)), 1i);
}

