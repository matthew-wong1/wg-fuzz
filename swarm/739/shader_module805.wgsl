struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 0u, 0u, 4294967295u), vec3<bool>(false, true, true), vec2<i32>(66368i, 27215i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32((~u_input.a << (~vec2<u32>(u_input.a.x, arg_0.a.x) % vec2<u32>(32u))) | vec2<u32>(min(u_input.c.x, 4294967295u), ~arg_1), ~(~firstLeadingBit(vec2<u32>(global0.a.x, arg_0.a.x))), u_input.d.zz), select(global0.a.wx, ~(~select(arg_0.a.xz, vec2<u32>(1u, 39753u), vec2<bool>(arg_0.b.x, true))), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1647f), -277f, _wgslsmith_f_op_f32(sign(624f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(891f + -971f), _wgslsmith_f_op_f32(abs(267f))))));
    global0 = Struct_1(vec4<u32>(_wgslsmith_div_u32(27538u, 1u), arg_0.a.x, ~arg_1, ~(~arg_0.a.x) & ~(~0u)), !vec3<bool>(any(select(global0.b.zy, vec2<bool>(arg_0.b.x, global0.b.x), arg_0.b.zx)), true, !global0.b.x), ~_wgslsmith_mult_vec2_i32(global0.c, vec2<i32>(-u_input.b.x, i32(-1i) * -2147483647i)));
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(global0.a, global0.a), countOneBits(global0.a), arg_0.a) >> (reverseBits(global0.a) % vec4<u32>(32u)), firstTrailingBit(max(vec4<u32>(u_input.a.x, 5263u, 84810u, 4294967295u), vec4<u32>(11143u, global0.a.x, var_0.x, arg_1)))), select(!(!(!vec3<bool>(false, global0.b.x, global0.b.x))), !select(select(vec3<bool>(false, global0.b.x, false), vec3<bool>(arg_0.b.x, false, arg_0.b.x), false), select(vec3<bool>(true, arg_0.b.x, arg_0.b.x), vec3<bool>(global0.b.x, true, false), vec3<bool>(true, global0.b.x, arg_0.b.x)), !arg_0.b), true), -arg_2);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x - var_1.x)))) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))));
    return !var_2.b.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    var var_0 = select(vec3<bool>(global0.b.x, true, any(arg_0.b)), arg_0.b, true);
    global0 = arg_0;
    global0 = arg_0;
    let var_1 = arg_0;
    return Struct_1(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, _wgslsmith_mult_u32(4294967295u, arg_0.a.x), ~0u, max(global0.a.x, var_1.a.x)), arg_0.a), global0.a, select(vec4<bool>(false, all(global0.b.zy), func_3(var_1, 15480u, u_input.b.zy), false), vec4<bool>(false, global0.b.x, global0.b.x || arg_0.b.x, arg_0.b.x && false), _wgslsmith_f_op_f32(1000f * 815f) <= _wgslsmith_f_op_f32(ceil(494f)))), select(global0.b, !vec3<bool>(!var_1.b.x, var_0.x, false != arg_0.b.x), select(var_1.b, vec3<bool>(any(arg_0.b.zy), true, false), arg_0.b.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, ~(-2147483647i)), var_1.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    global0 = func_2(Struct_1(arg_1.a, !arg_3.b, arg_0.c));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.x - -284f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)), arg_2.x)), 1f));
    global0 = Struct_1(arg_0.a, !vec3<bool>(false, arg_3.b.x, true), -(reverseBits(vec2<i32>(10625i, arg_0.c.x)) ^ arg_1.c));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.zw + vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(arg_2.yw + arg_2.yx)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_2.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1052f, var_0.x))))))) * vec2<f32>(-112f, arg_2.x));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32((select(35475i, u_input.b.x, arg_1.b.x) << (min(global0.a.x, 4294967295u) % 32u)) >> ((0u >> (_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(4294967295u, 28918u, arg_1.a.x)) % 32u)) % 32u), u_input.b.x), ~select(33765i, _wgslsmith_mult_i32(arg_0.c.x, func_2(arg_0).c.x), all(!arg_3.b)));
    return true;
}

fn func_1(arg_0: bool, arg_1: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(-1081f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-994f, 254f, true)) * _wgslsmith_f_op_f32(-247f * arg_1)))));
    global0 = Struct_1(vec4<u32>(~u_input.a.x, (~u_input.d.x & _wgslsmith_add_u32(u_input.d.x, 39873u)) & 1u, ~u_input.d.x, ~(~(~0u))), global0.b, global0.c);
    return select(!select(!select(vec4<bool>(true, arg_0, global0.b.x, global0.b.x), vec4<bool>(false, false, arg_0, false), vec4<bool>(global0.b.x, true, arg_0, true)), vec4<bool>(!global0.b.x, global0.b.x & arg_0, global0.b.x, true), global0.b.x), select(vec4<bool>((arg_1 == arg_1) | (u_input.d.x <= 40858u), false, false, arg_0), !(!vec4<bool>(false, global0.b.x, arg_0, arg_0)), !(!(!vec4<bool>(global0.b.x, false, arg_0, global0.b.x)))), !((_wgslsmith_mult_u32(global0.a.x, 0u) < global0.a.x) != func_4(Struct_1(vec4<u32>(global0.a.x, 1u, 73254u, 1u), vec3<bool>(true, arg_0, true), u_input.b.xw), Struct_1(global0.a, global0.b, u_input.b.wz), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1, 1763f, 1445f) * vec4<f32>(108f, arg_1, 1137f, arg_1)), func_2(Struct_1(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, u_input.a.x), global0.b, global0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~(~select(~vec4<u32>(0u, 23373u, u_input.a.x, u_input.c.x), ~vec4<u32>(global0.a.x, global0.a.x, 81445u, 23673u), func_1(global0.b.x, -1115f))), select(global0.b, select(vec3<bool>(false, true, u_input.c.x != u_input.d.x), vec3<bool>(any(vec2<bool>(global0.b.x, true)), all(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), !global0.b.x), vec3<bool>(true, global0.b.x, global0.b.x)), !global0.b.x), global0.c);
    var var_0 = reverseBits(global0.a.x);
    let var_1 = ~u_input.d;
    var_0 = ~(~34132u);
    var_0 = select(_wgslsmith_dot_vec4_u32((~vec4<u32>(27809u, 39338u, 0u, 134u) ^ global0.a) ^ global0.a, reverseBits(vec4<u32>(u_input.c.x, var_1.x, 0u, global0.a.x)) & firstLeadingBit(global0.a)), 0u, !(max(func_2(Struct_1(global0.a, vec3<bool>(false, global0.b.x, true), vec2<i32>(-10503i, 37724i))).c.x, _wgslsmith_div_i32(u_input.b.x, -2147483647i)) <= u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 618f, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-723f, 935f)), -682f), _wgslsmith_div_f32(518f, _wgslsmith_f_op_f32(select(-277f, -207f, global0.b.x)))))));
}

