struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(-1i, 44252u));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> Struct_4 {
    let var_0 = !(!(!vec4<bool>(true, true, all(vec3<bool>(true, false, false)), select(false, true, false))));
    var var_1 = firstTrailingBit(1u);
    let var_2 = global0.a.b;
    return Struct_4(Struct_3(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, global0.a.a, u_input.a), -global0.a.a, global0.a.a), global0.a.a), 4294967295u));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> bool {
    global0 = Struct_4(Struct_3(~0i, arg_0));
    global0 = func_1();
    global0 = Struct_4(Struct_3(_wgslsmith_add_i32(max(-37232i, global0.a.a), u_input.a) >> (arg_0 % 32u), global0.a.b));
    global0 = Struct_4(Struct_3(_wgslsmith_dot_vec4_i32(-vec4<i32>(-49345i, 0i, global0.a.a, -2147483647i), -vec4<i32>(2147483647i, global0.a.a, u_input.a, 44487i)), _wgslsmith_mod_u32(49042u, _wgslsmith_add_u32(~global0.a.b, 34914u))));
    var var_0 = _wgslsmith_f_op_f32(abs(-1161f));
    return _wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(global0.a.a, global0.a.a, -32503i)), (vec3<i32>(global0.a.a, global0.a.a, u_input.a) | _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 18403i, -34862i), vec3<i32>(u_input.a, 6657i, 40249i), vec3<i32>(u_input.a, u_input.a, u_input.a))) | _wgslsmith_div_vec3_i32(min(vec3<i32>(-1i, global0.a.a, global0.a.a), vec3<i32>(global0.a.a, u_input.a, 0i)), firstTrailingBit(vec3<i32>(1i, -1i, u_input.a)))) < abs(countOneBits(-global0.a.a));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_4) -> StorageBuffer {
    var var_0 = vec3<bool>(~global0.a.b < arg_2.b, !(!any(vec4<bool>(arg_1, true, arg_1, false)) & true), func_3(arg_2.b, _wgslsmith_sub_vec4_u32((vec4<u32>(global0.a.b, global0.a.b, 78219u, global0.a.b) >> (vec4<u32>(4294967295u, arg_2.b, 4942u, arg_3.a.b) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.b, 1u, 1u, 3373u), vec4<u32>(0u, arg_3.a.b, arg_2.b, 4294967295u)) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 0u, 48628u, 4294967295u))));
    var var_1 = _wgslsmith_mod_u32(~(7942u | max(~arg_3.a.b, 1u)), global0.a.b);
    global0 = func_1();
    var_0 = !(!select(vec3<bool>(arg_1, false, true), select(!vec3<bool>(false, arg_1, true), !vec3<bool>(var_0.x, arg_1, false), true == arg_1), false));
    var var_2 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.a.b, 0u, _wgslsmith_clamp_u32(global0.a.b, 13559u, 28882u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, arg_3.a.b, global0.a.b, arg_3.a.b), vec4<u32>(arg_3.a.b, 1841u, global0.a.b, arg_2.b))), vec4<u32>(0u, 65285u, ~arg_3.a.b, 35804u)), abs(vec4<u32>(_wgslsmith_div_u32(4294967295u, global0.a.b), arg_3.a.b, arg_2.b, ~0u))));
    return StorageBuffer(-1357f, 1f, ~abs(-(vec2<i32>(0i, arg_2.a) >> (vec2<u32>(6665u, 4294967295u) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-258f, _wgslsmith_f_op_f32(abs(-1283f)), -436f);
    global0 = func_1();
    var var_1 = var_0;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -1239f)))));
    let var_2 = _wgslsmith_div_u32(global0.a.b >> ((~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.b, global0.a.b, 31902u, 51059u), vec4<u32>(global0.a.b, 89277u, 18327u, 1u)) >> (~(~global0.a.b) % 32u)) % 32u), func_1().a.b);
    var var_3 = func_1().a;
    let x = u_input.a;
    s_output = func_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -578f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x + -449f), 1000f)))), true, global0.a, func_1());
}

