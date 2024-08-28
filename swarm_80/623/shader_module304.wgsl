struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1268f, 371f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> Struct_1 {
    return Struct_1(global0.x);
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> vec3<i32> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1550f)))) * _wgslsmith_div_f32(-1415f, global0.x)))), _wgslsmith_f_op_f32(-global0.x));
    let var_0 = !select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), !vec2<bool>(-1i < u_input.b.x, true), !any(vec2<bool>(true, true)));
    var var_1 = Struct_1(global0.x);
    return u_input.b.yzx;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(func_1().a - var_0.a) < arg_1.a.a.a;
    var var_2 = false;
    let var_3 = -select(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.c.x, u_input.b.x, 2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) << (vec3<u32>(~95811u, select(61587u, arg_0.x, true), 1u) % vec3<u32>(32u)), -(~func_3(u_input.a.yy, 24639i, vec2<f32>(341f, global0.x), 1u)), select(vec3<bool>(true, true, all(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, select(false, false, false)), true));
    var var_4 = Struct_1(1000f);
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-458f, global0.x), vec2<f32>(global0.x, global0.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(473f, global0.x), vec2<f32>(global0.x, 1000f)))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(floor(-758f))), vec2<bool>(true, select(false, var_0.x >= var_0.x, true))))));
    var var_1 = func_1();
    let var_2 = func_1();
    let var_3 = func_2(~u_input.d.wxw, Struct_3(Struct_2(func_1()), _wgslsmith_clamp_u32(~38667u >> (max(u_input.a.x, u_input.d.x) % 32u), 26750u, reverseBits(1u)), u_input.b.yww, ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.d.x, u_input.a.x, 1u)), vec4<u32>(u_input.a.x, u_input.d.x, u_input.a.x, 4294967295u))), select(select(~u_input.d.yxy, vec3<u32>(u_input.d.x, 7409u >> (u_input.d.x % 32u), 4294967295u), true), vec3<u32>(~87594u, firstTrailingBit(~u_input.a.x), _wgslsmith_div_u32(u_input.d.x, 1u)), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), false, !all(vec3<bool>(true, false, true)))), Struct_2(var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a * 881f))), _wgslsmith_f_op_f32(floor(-1700f)), _wgslsmith_f_op_f32(max(549f, _wgslsmith_f_op_f32(-var_2.a))))), u_input.d);
}

