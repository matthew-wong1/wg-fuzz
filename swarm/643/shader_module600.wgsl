struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: u32) -> vec2<bool> {
    global0 = Struct_5(global0.b.a, global0.c, global0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.d, 420f), _wgslsmith_div_f32(global0.c.a.b, -934f))))), u_input.b);
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.b.a.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.b.a.a, arg_1, false))))), global0.b.a.a.x, u_input.b.x >> (0u % 32u));
    global0 = Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(411f, arg_1.x) - arg_1)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))), ~var_0.c), Struct_3(global0.a), global0.c, _wgslsmith_f_op_f32(-global0.b.a.b), global0.e);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(926f, var_0.b, true))))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2817f - arg_1.x)))), -473f);
    let var_2 = global0.e.x << (~_wgslsmith_mod_u32(1u, 1u) % 32u);
    return select(vec2<bool>(u_input.d.x <= (~31824u | abs(arg_3)), any(vec3<bool>(true, false, true))), vec2<bool>(true, !(!any(vec4<bool>(true, true, false, false)))), -_wgslsmith_clamp_i32(arg_0, _wgslsmith_add_i32(2147483647i, -32250i), _wgslsmith_mult_i32(global0.b.a.c, 2147483647i)) >= _wgslsmith_clamp_i32(~(u_input.b.x ^ -11426i), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_0.c, 30084i)), _wgslsmith_sub_i32(arg_0, 60884i)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global0 = Struct_5(arg_2, Struct_3(Struct_2(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.a.x))), _wgslsmith_mult_i32(1i << (u_input.d.x % 32u), arg_0))), global0.c, -1366f, global0.e);
    var var_0 = Struct_4(!(!((u_input.e >= u_input.d.x) || (u_input.a.x <= u_input.d.x))), arg_2.a, global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.a.b, -898f, global0.c.a.a.x, -476f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.b, global0.a.b, -696f, global0.a.b), vec4<f32>(315f, -558f, global0.b.a.a.x, 1000f))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.x, 493f, -522f, -931f), vec4<f32>(-821f, -953f, arg_2.b, 726f))), any(vec2<bool>(arg_1, true)) || true)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(963f, global0.a.b, global0.d, -564f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(205f, global0.d, 2507f, 1809f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, arg_2.a.x, arg_2.a.x, 1000f) + vec4<f32>(global0.a.a.x, global0.c.a.a.x, arg_2.b, global0.c.a.a.x))))), Struct_1(global0.e.xzz & select(global0.e.yzx, u_input.b.wyw << (u_input.d % vec3<u32>(32u)), arg_0 == arg_2.c)));
    global0 = Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(floor(arg_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -291f), var_0.c.a.c), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(floor(arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)), _wgslsmith_mod_i32(1i, global0.b.a.c))), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.a, vec2<f32>(arg_2.b, global0.d))), 2112f, _wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(37089i, arg_2.c)))), 1060f, _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~global0.e.yyz, u_input.b.xzx), u_input.c.x, -arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.xz, var_0.e.a.yx), _wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(-2147483647i, 1i), vec2<i32>(64263i, -29668i)))), -vec4<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.b.x), var_0.e.a.x, ~arg_2.c, var_0.c.a.c)));
    global0 = Struct_5(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(415f, global0.c.a.b))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(-1100f)))), _wgslsmith_f_op_f32(1838f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - var_0.c.a.a.x))), -4577i), Struct_3(global0.b.a), Struct_3(var_0.c.a), var_0.c.a.a.x, u_input.b);
    let var_1 = Struct_2(arg_2.a, -1362f, _wgslsmith_mod_i32(var_0.e.a.x, ~(-(~0i))));
    return var_0.e;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.a.a.x)), global0.a.b), global0.c.a.b)), global0.a.a.x)));
    var var_1 = func_3(-countOneBits(_wgslsmith_sub_i32(select(global0.c.a.c, -67503i, true), global0.c.a.c)), (true & any(func_2(global0.b.a.c, vec2<f32>(var_0, var_0), vec2<u32>(u_input.a.x, u_input.e), u_input.a.x))) | !any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), global0.b.a);
    let var_2 = Struct_4(!(19793u >= u_input.d.x), global0.a.a, global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, var_0, 521f, var_0))))) + vec4<f32>(1000f, _wgslsmith_f_op_f32(step(var_0, global0.d)), var_0, 387f)), func_3(firstLeadingBit(~var_1.a.x), !all(func_2(0i, global0.a.a, u_input.d.zx, 4294967295u)), global0.c.a));
    var_1 = func_3(i32(-1i) * -1i, var_2.a, global0.c.a);
    var var_3 = Struct_5(var_2.c.a, global0.c, global0.b, -1300f, abs(-vec4<i32>(17400i, 17908i, var_1.a.x, _wgslsmith_add_i32(-50110i, -14373i))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a.a.x, _wgslsmith_f_op_f32(global0.d - 1471f))))), -1000f, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec4_i32(min(-u_input.b, vec4<i32>(-2147483647i, 1i, u_input.c.x, u_input.b.x)) | ~_wgslsmith_sub_vec4_i32(global0.e, vec4<i32>(-25655i, 16687i, 1i, global0.a.c)), ~(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, global0.e) >> (u_input.a % vec4<u32>(32u))));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(74374u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.a.x) >> (u_input.d.x % 32u), 4294967295u), u_input.a.x), i32(-1i) * -var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(678f + _wgslsmith_f_op_f32(step(global0.a.b, _wgslsmith_div_f32(global0.c.a.b, 1515f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b))))));
}

