struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    var var_0 = select(u_input.d.x, 1i, true);
    var var_1 = vec4<u32>(40468u, 26096u, u_input.b.x, ~u_input.a);
    var var_2 = select(vec3<u32>(u_input.c << (~0u % 32u), _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(var_1.x, 1u)), var_1.x), var_1.ywz, true) << (_wgslsmith_div_vec3_u32(u_input.b.yxw, vec3<u32>(0u, var_1.x, var_1.x)) % vec3<u32>(32u));
    var_1 = vec4<u32>(u_input.e, _wgslsmith_clamp_u32(var_2.x, 34154u, countOneBits(u_input.c)), ~(39900u << (abs(1u | u_input.a) % 32u)), 4294967295u | u_input.c);
    let var_3 = Struct_2(Struct_1(all(vec4<bool>(true, true, false, global0.a.a)), _wgslsmith_sub_i32(u_input.d.x, abs(abs(global0.a.b))), !arg_0.a, 1i), select(!vec4<bool>(arg_1, true, global0.c.x && false, true), global0.b, !(!global0.b)), select(!global0.b.zxx, !vec3<bool>(all(global0.b), true && arg_0.a, true), all(select(vec3<bool>(global0.a.c, true, true), !global0.b.wxw, global0.b.wxz))));
    return u_input.d;
}

fn func_2(arg_0: f32) -> Struct_4 {
    global0 = Struct_2(Struct_1(314f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.b, u_input.d.x), u_input.d)), func_3(Struct_1(global0.c.x, global0.a.b, global0.a.a, global0.a.d), true)), 4294967295u >= u_input.c, select(select(global0.a.b, -u_input.d.x, global0.a.c), 17029i, !(!global0.b.x))), select(global0.b, global0.b, !select(vec4<bool>(true, global0.c.x, global0.a.c, global0.b.x), select(global0.b, global0.b, global0.b), false)), global0.b.zwx);
    global0 = Struct_2(global0.a, global0.b, select(global0.b.wyw, select(global0.c, global0.c, global0.c.x), vec3<bool>(global0.c.x, !all(vec4<bool>(global0.c.x, global0.a.a, false, global0.a.a)), all(vec3<bool>(global0.a.a, global0.c.x, global0.c.x)))));
    var var_0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0))) + vec2<f32>(arg_0, arg_0))))), ~27971u, u_input.d);
    global1 = arg_0;
    var var_1 = -abs(~u_input.d.x | countOneBits(-1i));
    return Struct_4(vec2<i32>(-2147483647i, ~abs(u_input.d.x) ^ 2147483647i));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_4, arg_3: vec4<f32>) -> f32 {
    var var_0 = true;
    let var_1 = Struct_4(func_3(Struct_1(true & (global0.c.x || true), 2147483647i, all(select(vec3<bool>(false, true, true), global0.b.zwx, true)), -47238i), global0.b.x));
    var var_2 = Struct_1(all(!select(vec3<bool>(global0.c.x, global0.c.x, global0.a.a), global0.c, global0.a.c)), var_1.a.x, true, 1i);
    let var_3 = select(!global0.c, global0.c, select(select(select(select(global0.c, vec3<bool>(false, global0.b.x, true), vec3<bool>(var_2.a, global0.c.x, true)), global0.c, any(global0.b.zzw)), vec3<bool>(select(true, var_2.a, global0.c.x), !global0.b.x, true), !any(vec3<bool>(global0.b.x, false, false))), !select(vec3<bool>(global0.b.x, false, false), global0.b.zww, true), global0.c));
    var var_4 = -_wgslsmith_mult_i32(~_wgslsmith_div_i32(global0.a.b, i32(-1i) * -16889i), -2147483647i);
    return _wgslsmith_f_op_f32(step(arg_3.x, arg_3.x));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(vec3<f32>(-975f, -651f, -1313f), _wgslsmith_div_i32(global0.a.d, 255i), func_2(-1070f), vec4<f32>(2339f, -743f, 777f, -837f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(745f, 506f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(604f, 1941f)))))));
    var var_1 = ~max(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(55593u, 23030u), u_input.b.xw), u_input.b.x, firstTrailingBit(max(u_input.e, u_input.b.x)), u_input.b.x), _wgslsmith_mod_vec4_u32(~(u_input.b >> (vec4<u32>(u_input.b.x, 4294967295u, u_input.e, 1u) % vec4<u32>(32u))), vec4<u32>(max(u_input.b.x, 46773u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.e, 29379u, 0u), u_input.b), ~1u, u_input.b.x)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 419f)), false)) - 992f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-203f - -1614f), _wgslsmith_f_op_f32(f32(-1f) * -316f)))) - _wgslsmith_f_op_f32(-var_0.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_3 = vec4<i32>(global0.a.d, _wgslsmith_mult_i32(u_input.d.x, 1i), _wgslsmith_add_i32(abs(reverseBits(-2147483647i)), ~1i), 0i & _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.b, global0.a.b), vec2<i32>(_wgslsmith_div_i32(global0.a.d, u_input.d.x), u_input.d.x)));
    return Struct_2(global0.a, select(select(!vec4<bool>(false, global0.a.c, true, false), global0.b, false), select(global0.b, !vec4<bool>(global0.c.x, false, true, global0.c.x), global0.b), all(!select(vec3<bool>(true, global0.a.a, true), vec3<bool>(true, true, global0.b.x), global0.b.xzz))), select(!select(vec3<bool>(true, true, true), select(global0.c, global0.c, global0.c), true), !global0.b.xyx, global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -652f;
    global0 = func_1();
    var var_0 = func_2(_wgslsmith_f_op_f32(abs(-572f)));
    let var_1 = ~_wgslsmith_add_i32(var_0.a.x, -_wgslsmith_clamp_i32(global0.a.b, global0.a.b, -46091i)) < 15144i;
    let var_2 = vec2<bool>(!any(vec4<bool>(true, false, true, true)), true);
    let var_3 = func_1();
    let var_4 = var_3.a;
    var var_5 = Struct_2(Struct_1(any(var_3.b), 1i, !(!global0.c.x), var_3.a.b), vec4<bool>(select(global0.a.a, !var_4.a, var_4.a) | all(global0.b), true, var_1, !any(select(vec4<bool>(false, true, false, global0.c.x), var_3.b, global0.b))), vec3<bool>(true, any(vec3<bool>(false, true, u_input.d.x < 2147483647i)), !(!(var_3.c.x && global0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1269f, 1000f), vec2<f32>(646f, 860f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-695f, 1000f))))), 122f);
}

