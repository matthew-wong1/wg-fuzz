struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: i32 = 0i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-154f, 745f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -366f) + -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - 1000f), _wgslsmith_f_op_f32(sign(-489f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1175f, -2141f)), _wgslsmith_f_op_f32(ceil(-794f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, 1f, _wgslsmith_f_op_f32(f32(-1f) * -162f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), 615f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))))));
    let var_1 = Struct_2(Struct_1(select(global0.x, false, false)), Struct_1(all(!(!vec3<bool>(false, global0.x, true)))));
    var var_2 = Struct_2(var_1.b, var_1.a);
    let var_3 = var_1.b;
    return vec3<bool>(var_1.b.a, !var_3.a, true);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = func_3();
    let var_0 = select(true, any(func_3()), all(vec3<bool>((i32(-1i) * -38033i) == ~u_input.d.x, false, all(!vec3<bool>(arg_0.a, false, false)))));
    var var_1 = select(!global0.yz, !(!vec2<bool>(true, arg_0.a)), false);
    global0 = vec3<bool>(all(select(global0.yz, vec2<bool>(true, any(vec3<bool>(true, false, true))), vec2<bool>(true, true))), true, 2147483647i == select(_wgslsmith_mod_i32(u_input.d.x & u_input.b.x, ~27774i), _wgslsmith_dot_vec3_i32(~u_input.d.xzy, u_input.d.xwy >> (vec3<u32>(4194u, u_input.c, 4294967295u) % vec3<u32>(32u))), any(!global0.yx)));
    var var_2 = global0.x;
    return 7904u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<u32> {
    return firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a.x, 1u, u_input.a.x), ~u_input.a)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(~29159u, ~u_input.a.x, 53692u), _wgslsmith_div_vec3_u32(max(select(u_input.a, u_input.a, false), u_input.a), firstTrailingBit(abs(vec3<u32>(u_input.c, 0u, u_input.a.x)))), abs(firstLeadingBit(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.c)))) % vec3<u32>(32u));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_add_u32(arg_0.x, u_input.a.x) & ~(~(~0u)));
    var var_1 = u_input.d;
    let var_2 = func_4(Struct_1(!global0.x), vec3<bool>(true & any(!vec2<bool>(global0.x, global0.x)), func_2(Struct_1(false)) != _wgslsmith_mod_u32(4294967295u, ~u_input.a.x), true));
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(16173i, ~1i), var_1.ww) << (var_2.zz % vec2<u32>(32u));
    global1 = var_1.x;
    return Struct_1(!all(!(!vec4<bool>(global0.x, global0.x, true, global0.x))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_mult_i32(reverseBits(60289i), abs(firstLeadingBit(~u_input.d.x)));
    var var_1 = Struct_2(Struct_1(any(vec4<bool>(arg_3.a.a, false, global0.x, arg_3.b.a)) || global0.x), func_1(firstLeadingBit(u_input.a)));
    var var_2 = Struct_2(func_1(select(vec3<u32>(arg_0, 4328u, u_input.c), abs(u_input.a), _wgslsmith_f_op_f32(sign(699f)) >= -253f)), func_1(~u_input.a));
    var_0 = ~1i;
    global0 = vec3<bool>(!(!arg_2.x), true, var_1.a.a != all(vec4<bool>(true, all(vec3<bool>(true, var_1.a.a, arg_2.x)), any(vec4<bool>(true, false, var_2.a.a, false)), true)));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(u_input.d.x <= 1i, !(all(vec2<bool>(true, false)) & !global0.x), func_5(76084u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(126f, 1249f)), vec4<bool>(global0.x, false, global0.x, global0.x), Struct_2(func_1(u_input.a), Struct_1(global0.x))));
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(715f * -144f), _wgslsmith_f_op_f32(min(-494f, -1354f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-151f, 290f, -639f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(342f, -607f, 984f)), vec3<bool>(true, true, true)))))));
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(45760u, u_input.a);
}

