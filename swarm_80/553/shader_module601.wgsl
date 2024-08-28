struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1628f, i32(-2147483648), 4294967295u, vec2<bool>(false, false), vec2<bool>(false, true)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec2<f32>(global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(395f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(-global0.a.a)))))));
    let var_1 = Struct_2(global0.a);
    var var_2 = true & global0.a.d.x;
    global0 = var_1;
    var_2 = !(any(select(select(vec4<bool>(false, true, var_1.a.d.x, true), vec4<bool>(false, var_1.a.e.x, var_1.a.d.x, false), global0.a.d.x), select(vec4<bool>(global0.a.d.x, false, true, false), vec4<bool>(global0.a.e.x, var_1.a.e.x, var_1.a.e.x, global0.a.d.x), var_1.a.d.x), !vec4<bool>(var_1.a.e.x, var_1.a.d.x, global0.a.d.x, var_1.a.d.x))) & any(select(!vec2<bool>(true, global0.a.d.x), global0.a.d, !var_1.a.d)));
    return u_input.a.xx;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = Struct_2(global0.a);
    global0 = Struct_2(var_0.a);
    var var_1 = firstLeadingBit(_wgslsmith_add_u32(~(~arg_2), 1u ^ ~arg_2)) << (_wgslsmith_div_u32(_wgslsmith_mult_u32(~var_0.a.c, global0.a.c), u_input.a.x) % 32u);
    let var_2 = select(firstLeadingBit(u_input.a.zy), ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(func_3(), _wgslsmith_mult_vec2_u32(u_input.a.zx, vec2<u32>(1u, 90716u))), ~abs(vec2<u32>(35396u, 0u))), global0.a.d.x);
    var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(71583u, _wgslsmith_mod_u32(~0u, 64975u), abs(_wgslsmith_mult_u32(var_0.a.c, var_2.x)), ~global0.a.c), max(~reverseBits(vec4<u32>(4294967295u, 22556u, 1u, var_0.a.c)) << (~vec4<u32>(u_input.d, global0.a.c, 0u, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(19445u, arg_2, u_input.a.x, 94697u)));
    return countOneBits(~4294967295u ^ ~_wgslsmith_mult_u32(1u, var_0.a.c));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(global0.a.c, 0u), ~_wgslsmith_div_u32(_wgslsmith_add_u32(firstTrailingBit(40517u), 1u), 0u), global0.a.c, func_2(_wgslsmith_f_op_f32(floor(global0.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a.a, -214f)))), 1u, any(select(select(vec2<bool>(false, false), global0.a.d, global0.a.d.x), select(vec2<bool>(global0.a.e.x, global0.a.e.x), vec2<bool>(global0.a.d.x, global0.a.d.x), true), any(vec4<bool>(false, true, false, true))))));
    let var_1 = !vec4<bool>(global0.a.d.x, true, true, global0.a.d.x);
    var var_2 = var_1;
    var_2 = var_1;
    var_2 = !var_1;
    return Struct_2(global0.a);
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> i32 {
    global0 = Struct_2(Struct_1(arg_1.c.a.a, global0.a.b, 0u, vec2<bool>(true, false), select(arg_1.d.xy, !(!vec2<bool>(global0.a.e.x, false)), true)));
    var var_0 = !(!(!vec4<bool>(any(vec4<bool>(arg_1.b, true, true, true)), arg_1.d.x, global0.a.e.x, any(vec4<bool>(arg_1.d.x, global0.a.d.x, true, true)))));
    var var_1 = !var_0.x | false;
    var var_2 = select(select(select(!(!vec3<bool>(true, false, var_0.x)), select(var_0.zzx, var_0.ywy, var_0.x), select(vec3<bool>(false, arg_1.b, true), !arg_1.d, 4294967295u != arg_1.c.a.c)), !var_0.yzz, true), !var_0.xxw, vec3<bool>(true, true, global0.a.d.x));
    return -(i32(-1i) * -arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(1i, func_4(~4294967295u, Struct_3(_wgslsmith_mod_i32(-2147483647i, u_input.c.x), false, func_1(11412u), select(vec3<bool>(true, global0.a.d.x, global0.a.e.x), vec3<bool>(true, false, global0.a.e.x), true))) != -1i, Struct_2(global0.a), select(vec3<bool>(!global0.a.d.x, any(select(vec4<bool>(false, false, global0.a.e.x, false), vec4<bool>(true, global0.a.d.x, global0.a.d.x, global0.a.d.x), vec4<bool>(true, true, global0.a.e.x, false))), !all(vec3<bool>(true, true, true))), vec3<bool>(global0.a.e.x, true, true), !(!global0.a.d.x)));
    var var_1 = func_1(~u_input.a.x);
    var var_2 = global0.a.e.x;
    global0 = Struct_2(Struct_1(global0.a.a, _wgslsmith_sub_i32(var_1.a.b, var_1.a.b), 1u, var_0.d.yx, !var_1.a.e));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(global0.a.a + var_1.a.a), var_0.c.a.a, _wgslsmith_f_op_f32(-1000f + -513f), _wgslsmith_f_op_f32(-func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.c, 48672u, var_1.a.c), vec3<u32>(global0.a.c, 57660u, 11251u))).a.a));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(u_input.a.x, 1u, u_input.a.x, var_1.a.c)), var_3.zx, _wgslsmith_f_op_vec2_f32(ceil(var_3.zx)), u_input.a);
}

