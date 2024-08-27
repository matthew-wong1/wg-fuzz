struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-213f, -237f))))))));
    let var_1 = arg_0;
    var var_2 = Struct_1(arg_0.x, var_1.yz, !select(vec2<bool>(1i <= arg_1.x, select(global0.x, global0.x, false)), select(vec2<bool>(global0.x, false), select(vec2<bool>(true, global0.x), global0.yy, true), global0.yy), ~u_input.c.x <= (u_input.c.x & u_input.c.x)));
    var_2 = Struct_1(~(40003u & ~(var_2.b.x >> (1u % 32u))), vec2<u32>(1u, 1u), vec2<bool>(var_2.a < 4294967295u, false));
    var var_3 = Struct_1(firstTrailingBit(_wgslsmith_add_u32(27827u, _wgslsmith_mult_u32(4294967295u, 9407u & var_2.b.x))), vec2<u32>(~var_1.x, 14881u), !(!var_2.c));
    return (any(!vec3<bool>(var_3.c.x, true, global0.x)) & any(select(vec3<bool>(true, true, false), select(vec3<bool>(var_3.c.x, true, var_3.c.x), vec3<bool>(global0.x, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(var_2.c.x, false, var_3.c.x), vec3<bool>(var_2.c.x, var_2.c.x, global0.x))))) != false;
}

fn func_2() -> vec3<bool> {
    global0 = !(!vec3<bool>(global0.x, true || (false && global0.x), global0.x));
    global0 = vec3<bool>(1u >= ~_wgslsmith_div_u32(reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(38110u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 8066u, 4294967295u, 39731u))), func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.b, 14118u), _wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_mult_u32(u_input.a.x, u_input.b), ~94670u), abs(max(vec4<u32>(33672u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.b)))), reverseBits(vec2<i32>(-1i) * -u_input.c)), global0.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1527f, _wgslsmith_f_op_f32(204f - -331f), _wgslsmith_f_op_f32(455f - 1243f), _wgslsmith_f_op_f32(374f * -573f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1008f, -1000f, 268f, -256f) * vec4<f32>(981f, -345f, -159f, 921f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, 1913f, 1105f, 1124f) + vec4<f32>(1847f, 767f, -905f, -858f)), vec4<bool>(true, false, global0.x, global0.x))), global0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1674f, -683f, 963f, -934f)))))))));
    let var_1 = _wgslsmith_div_vec3_u32(max(abs(vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.a.x, u_input.a.x | 4294967295u)), u_input.a), u_input.a);
    let var_2 = Struct_1(1u, abs(var_1.yy), global0.xz);
    return vec3<bool>(global0.x == !(!any(vec3<bool>(var_2.c.x, true, false))), global0.x, !(_wgslsmith_mult_i32(u_input.c.x, -11237i) < _wgslsmith_div_i32(u_input.c.x, -1i)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = vec3<bool>(true, (true & global0.x) | (0i > -(u_input.c.x << (21842u % 32u))), true | any(!func_2()));
    let var_0 = _wgslsmith_mod_u32(1u, ~(u_input.b & _wgslsmith_div_u32(1u, 4294967295u << (u_input.a.x % 32u))));
    let var_1 = all(!func_2().zx);
    let var_2 = Struct_1(var_0, vec2<u32>(_wgslsmith_dot_vec2_u32(~(~u_input.a.zy), vec2<u32>(abs(4294967295u), countOneBits(37471u))), 1u), vec2<bool>(func_2().x && true, !var_1));
    let var_3 = 84941u;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> vec3<bool> {
    global0 = vec3<bool>(arg_0.b.x < select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 0u, arg_0.b.x), vec3<u32>(arg_0.a, arg_0.b.x, u_input.a.x)), _wgslsmith_sub_u32(arg_0.b.x >> (0u % 32u), abs(u_input.a.x)), false), all(func_2()), true);
    global0 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1))) < arg_1, !(!(!all(vec2<bool>(global0.x, true)))), arg_0.c.x);
    let var_0 = arg_0;
    var var_1 = Struct_1(0u, u_input.a.zz, select(func_2().zx, !(!arg_0.c), !func_1(_wgslsmith_f_op_f32(max(-1467f, arg_1))).c));
    let var_2 = arg_0;
    return select(!select(select(vec3<bool>(true, var_1.c.x, global0.x), vec3<bool>(true, true, false), select(vec3<bool>(var_1.c.x, arg_0.c.x, global0.x), vec3<bool>(false, true, global0.x), vec3<bool>(false, var_2.c.x, arg_0.c.x))), select(vec3<bool>(arg_0.c.x, var_1.c.x, var_1.c.x), !vec3<bool>(global0.x, true, true), global0.x), 909f < _wgslsmith_f_op_f32(854f + arg_1)), !func_2(), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(-418f), -110f, 0i);
    let var_0 = !(!(!all(vec3<bool>(global0.x, true, true))));
    global0 = vec3<bool>(true, -19378i != _wgslsmith_mult_i32(~1i, u_input.c.x), var_0 || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(268f - -192f)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1421f - -1570f)))));
    var var_1 = Struct_1(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(135f, -403f))))).a, vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.b, u_input.a.x, u_input.a.x)), firstLeadingBit(u_input.a.x) | u_input.b) >> (max(~(vec2<u32>(54428u, u_input.a.x) & vec2<u32>(1u, u_input.a.x)), ~abs(vec2<u32>(4294967295u, u_input.a.x))) % vec2<u32>(32u)), global0.zx);
    let var_2 = var_1.c;
    let var_3 = u_input.a.x;
    var var_4 = select(!(!func_4(func_1(898f), _wgslsmith_f_op_f32(-303f - -1000f), u_input.c.x)), vec3<bool>(!all(vec3<bool>(global0.x, true, var_1.c.x)) | any(var_1.c), var_2.x, true && !var_0), true);
    let var_5 = select(var_3, ~_wgslsmith_add_u32(var_3, _wgslsmith_mod_u32(var_1.b.x, 88163u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(164f, 289f))))) <= 801f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-188f, -1279f), -min(vec4<i32>(0i, 2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 64201i, 39120i, u_input.c.x)) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(-48372i, -8393i, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -84020i, 2177i), vec4<i32>(u_input.c.x, -27397i, u_input.c.x, -19067i))), vec4<f32>(1738f, -1000f, _wgslsmith_f_op_f32(-1120f - -304f), _wgslsmith_f_op_f32(min(-531f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(3003f, -1000f))))));
}

