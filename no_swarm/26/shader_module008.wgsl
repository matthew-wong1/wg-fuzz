struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool) -> i32 {
    global2 = Struct_1(!global0.a);
    var var_0 = Struct_1(false);
    var var_1 = Struct_1(select(all(vec4<bool>(select(true, var_0.a, true), true, global0.a, any(vec3<bool>(var_0.a, false, global1.x)))), ~u_input.c.x == ~(4294967295u << (u_input.c.x % 32u)), !(u_input.a.x == u_input.e.x)));
    let var_2 = Struct_1(true);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1399f))))))));
    return _wgslsmith_add_i32(u_input.b.x, reverseBits((i32(-1i) * -1i) & u_input.a.x) & -u_input.d);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, arg_1), -9460i, _wgslsmith_dot_vec2_i32(reverseBits(min(u_input.b, _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -14357i)))), -(~u_input.e.zw)));
    let var_1 = 0u;
    global2 = Struct_1(any(vec4<bool>(true, global0.a, any(select(vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(true, true, global1.x, global1.x), global0.a)), global1.x)));
    global2 = Struct_1(all(vec2<bool>(any(vec4<bool>(global0.a, global0.a, false, global2.a)) != true, true)));
    global2 = Struct_1(min(countOneBits(~u_input.c.x), 4294967295u) > arg_0.x);
    return vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(547f))) >= 108f, all(select(!(!vec4<bool>(global1.x, true, false, global2.a)), vec4<bool>(arg_0.x <= arg_0.x, global0.a, true, true), !select(vec4<bool>(global2.a, false, global0.a, global2.a), vec4<bool>(true, global1.x, false, global2.a), vec4<bool>(true, true, false, true)))));
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    global1 = select(select(select(func_4(u_input.c, func_3(global1.x)), !vec2<bool>(global0.a, global0.a), !vec2<bool>(global1.x, global0.a)), !func_4(~arg_0.ww, _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(64793i, u_input.e.x))), global1.x), !select(!(!vec2<bool>(global0.a, global0.a)), func_4(~arg_0.xw, -2147483647i), select(vec2<bool>(true, true), func_4(vec2<u32>(1u, u_input.c.x), 44267i), any(vec3<bool>(global0.a, false, true)))), false);
    var var_0 = arg_0;
    var_0 = countOneBits(vec4<u32>(firstLeadingBit(1u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(20726u, 23258u, var_0.x), 1u), ~0u, _wgslsmith_clamp_u32(18694u, firstLeadingBit(arg_0.x), var_0.x)) >> (arg_0 % vec4<u32>(32u)));
    var var_1 = -2188f;
    return select(select(vec2<bool>(true, global1.x), func_4(vec2<u32>(~4294967295u, 1u), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.e.x, u_input.d, u_input.b.x))), true), !vec2<bool>(!global2.a, ~(-1i) <= select(u_input.a.x, u_input.a.x, global2.a)), global1.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: i32) -> u32 {
    global1 = func_2((vec4<u32>(abs(32856u), _wgslsmith_sub_u32(arg_1.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 26810u, u_input.c.x, arg_1.x), arg_1), arg_1.x) | ~arg_1) >> (arg_1 % vec4<u32>(32u)));
    var var_0 = u_input.e;
    let var_1 = Struct_1(true);
    var var_2 = var_1.a;
    global0 = Struct_1(global1.x);
    return _wgslsmith_sub_u32(arg_1.x, arg_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = arg_0;
    global0 = var_0;
    let var_1 = 0u;
    let var_2 = Struct_1(global2.a);
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = !vec2<bool>(true, global2.a);
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-318f, 1000f, true))), _wgslsmith_f_op_f32(345f + _wgslsmith_f_op_f32(select(-1549f, -381f, var_1.x & true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f)) + _wgslsmith_f_op_f32(floor(-381f))))), 227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)));
    var var_3 = func_5(Struct_1((var_2.x >= var_2.x) | any(select(vec4<bool>(false, true, global0.a, false), vec4<bool>(global1.x, global0.a, global0.a, var_1.x), true))), 9098i, ~1u, func_1(_wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 0i), u_input.a.xz), ~u_input.a.yx, u_input.e.zw), ~(~(~vec4<u32>(u_input.c.x, 13252u, u_input.c.x, u_input.c.x))), vec3<bool>(global0.a, global1.x, !global2.a), u_input.d));
    var var_4 = u_input.a.x < _wgslsmith_dot_vec3_i32(select(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -22093i, -38794i), _wgslsmith_add_i32(u_input.e.x, 0i), u_input.d), ~u_input.a, !select(vec3<bool>(var_3.a, global2.a, true), vec3<bool>(global2.a, var_1.x, true), vec3<bool>(var_3.a, true, false))), ~u_input.e.zxx);
    var var_5 = Struct_1(!var_3.a);
    let var_6 = Struct_1(-913f < _wgslsmith_f_op_f32(-var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(abs(~u_input.c.x), ~u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), reverseBits(1u))), u_input.b.x);
}

