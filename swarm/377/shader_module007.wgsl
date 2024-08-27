struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = false & all(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1050f), -1000f, _wgslsmith_f_op_f32(484f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(985f, _wgslsmith_f_op_f32(min(522f, 529f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(159f - -161f), -1598f)))));
    var_0 = any(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_2 = reverseBits(countOneBits(~u_input.c.x)) >> (_wgslsmith_div_u32(abs(_wgslsmith_sub_u32(select(u_input.b, arg_0, true), _wgslsmith_clamp_u32(arg_0, 12707u, u_input.d.x))), 1u) % 32u);
    let var_3 = true;
    return vec4<bool>(any(vec4<bool>(var_3, any(select(vec2<bool>(var_3, var_3), vec2<bool>(var_3, var_3), false)), any(vec4<bool>(var_3, var_3, var_3, var_3)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), var_3)))), all(select(!vec2<bool>(var_3, false), select(!vec2<bool>(var_3, false), vec2<bool>(true, var_3), var_3), true)), select(any(select(select(vec4<bool>(var_3, true, false, var_3), vec4<bool>(false, var_3, true, true), vec4<bool>(true, var_3, false, false)), vec4<bool>(true, true, false, var_3), true)), false, select(true, var_3, any(!vec3<bool>(true, var_3, var_3)))), any(!(!(!vec2<bool>(true, var_3)))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = arg_1.zwy;
    var_0 = vec3<f32>(var_0.x, arg_1.x, _wgslsmith_f_op_f32(-1370f + _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.x, var_0.x))))));
    var var_1 = arg_1;
    var var_2 = Struct_1(u_input.c.x, i32(-1i) * -(firstTrailingBit(u_input.c.x) | -u_input.c.x), select(func_3(select(37397u, 25967u, true)), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true)), true));
    let var_3 = u_input.d.yyw;
    return Struct_1(54313i, max(var_2.b, -2147483647i), select(var_2.c, vec4<bool>(_wgslsmith_f_op_f32(max(695f, var_1.x)) <= _wgslsmith_f_op_f32(-arg_1.x), -194f != _wgslsmith_f_op_f32(trunc(-756f)), _wgslsmith_dot_vec4_u32(vec4<u32>(17010u, arg_0, 4294967295u, u_input.d.x), vec4<u32>(arg_0, arg_0, 55531u, arg_0)) > arg_0, var_2.c.x), var_2.c));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = select(u_input.c.xw, u_input.c.xz, arg_1.c.ww);
    var var_1 = countOneBits(-4923i);
    var_0 = firstTrailingBit(~((vec2<i32>(9776i, -42160i) | u_input.c.yw) << (~u_input.a.yy % vec2<u32>(32u))));
    let var_2 = min(u_input.a.xy, ~vec2<u32>(abs(~u_input.a.x), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(4294967295u, u_input.b))));
    var_1 = arg_1.a;
    return vec4<bool>(true, arg_1.c.x, arg_1.c.x, arg_1.c.x);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    let var_0 = 0i;
    let var_1 = vec2<bool>(any(select(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, arg_1.b, -1922f)), func_2(144852u, vec4<f32>(-201f, 264f, arg_1.b, arg_1.b))), vec4<bool>(true, func_4(vec3<f32>(arg_2.b, -1528f, 607f), Struct_1(0i, var_0, vec4<bool>(false, false, arg_2.a, false))).x, any(vec3<bool>(arg_0, arg_0, arg_0)), any(vec3<bool>(arg_2.a, arg_2.a, arg_2.a))), select(func_3(92176u).x, true, true))), any(vec3<bool>(false, select(all(vec4<bool>(arg_2.a, false, arg_1.a, arg_0)), arg_2.a, arg_1.b > -319f), true)));
    var var_2 = ~u_input.b;
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.xx & ~abs(vec2<i32>(u_input.c.x, arg_2.c)), vec2<i32>(countOneBits(-2147483647i), abs(_wgslsmith_div_i32(1i, 26121i)))), var_0);
    let var_4 = -vec2<i32>(firstLeadingBit(-1i), reverseBits(func_2(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, arg_2.b, 206f, 646f))).b));
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, 520f, u_input.c.x);
    let var_1 = vec4<u32>(select(u_input.d.x, _wgslsmith_add_u32(0u, ~4294967295u), !func_1(false, Struct_3(var_0.a, 552f, u_input.c.x), Struct_3(var_0.a, var_0.b, var_0.c))) ^ ~(~24126u), ~u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(5305u, _wgslsmith_mod_u32(69605u, select(1u, 15766u, var_0.a))), 1u));
    let var_2 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(-956f, var_0.b)), var_0.b, var_0.b), vec3<f32>(-186f, 1000f, var_0.b), vec3<bool>(true, -1000f > var_0.b, true))), func_2(_wgslsmith_div_u32(4294967295u, 21563u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -133f, 1322f, 691f))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) - -573f), 0i);
    let var_3 = var_2.a;
    var_0 = Struct_3(true, var_2.b, _wgslsmith_dot_vec2_i32(~max(max(vec2<i32>(var_2.c, u_input.c.x), vec2<i32>(-2147483647i, var_2.c)), reverseBits(vec2<i32>(-2147483647i, -1i))), countOneBits(vec2<i32>(41908i, ~var_0.c))));
    let var_4 = Struct_1(i32(-1i) * -13542i, 52617i, vec4<bool>(var_2.a | var_0.a, !((u_input.b << (29765u % 32u)) < select(73911u, var_1.x, true)), any(vec3<bool>(func_3(var_1.x).x, true, var_3 == true)), select(true, var_3, true)));
    var var_5 = max(~_wgslsmith_sub_vec2_i32(u_input.c.zz, u_input.c.zy), -(vec2<i32>(1i, -2147483647i) & u_input.c.yw) & firstLeadingBit(u_input.c.xx ^ -vec2<i32>(0i, var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.b, var_0.b, 799f))))) * vec3<f32>(-1486f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * var_0.b), var_2.b)));
}

