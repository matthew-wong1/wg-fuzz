struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -913f;

var<private> global1: bool;

var<private> global2: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))), Struct_1(true), ~(~(vec4<u32>(u_input.d, u_input.d, 1u, u_input.d) >> (firstTrailingBit(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)) % vec4<u32>(32u)))));
    global2 = var_0.b.a;
    let var_1 = !(!(!(!select(vec2<bool>(true, var_0.b.a), vec2<bool>(true, true), false))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-252f + 1000f) * var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x * -1082f), !select(true, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(2147483647i, 0i)) != u_input.c, !var_0.b.a)));
    let var_2 = var_0.b;
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_3(arg_1.b, reverseBits(u_input.d));
    var var_1 = !(!vec4<bool>(true, var_0.b < select(0u, 1u, arg_1.b.a), var_0.a.a, var_0.a.a));
    let var_2 = _wgslsmith_add_u32(arg_1.c.x, u_input.d & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, firstTrailingBit(var_0.b), ~4294967295u, var_0.b), vec4<u32>(var_0.b ^ 36761u, arg_1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), arg_1.c.wyx), arg_1.c.x)));
    global2 = !(!(u_input.a.x < -1i));
    var var_3 = Struct_3(Struct_1(func_3() || var_0.a.a), ~firstTrailingBit(~var_0.b));
    return u_input.a.x << (1u % 32u);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> bool {
    let var_0 = max(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c | u_input.b.x, u_input.c), vec2<i32>(-13553i, abs(arg_0.x)), vec2<i32>(arg_0.x, arg_0.x) ^ max(u_input.b.zx, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(-arg_0.x, 2147483647i), -vec2<i32>(u_input.c, 23995i))), ~(~arg_0.wz & -arg_0.zx));
    global2 = false;
    global2 = var_0.x >= (i32(-1i) * -_wgslsmith_div_i32(arg_0.x, u_input.c));
    var var_1 = arg_1.a;
    var var_2 = !func_3();
    return arg_1.a.a;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> vec4<bool> {
    global2 = true;
    let var_0 = arg_1.x;
    var var_1 = Struct_1(false);
    global0 = -492f;
    var var_2 = u_input.c;
    return vec4<bool>(false, var_1.a, func_4(vec4<i32>(func_2(vec3<bool>(var_1.a, var_1.a, false), Struct_2(vec4<f32>(-479f, 1000f, 1442f, -249f), Struct_1(var_1.a), vec4<u32>(8095u, var_0, 24206u, var_0))) << (_wgslsmith_sub_u32(var_0, arg_1.x) % 32u), u_input.b.x, abs(-1i) & firstLeadingBit(u_input.b.x), _wgslsmith_add_i32(i32(-1i) * -48841i, i32(-1i) * -1i)), Struct_3(Struct_1(!var_1.a), abs(1u)), !(!(!vec4<bool>(var_1.a, var_1.a, true, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f)))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-333f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 32616u;
    var var_1 = -abs(-2147483647i);
    let var_2 = false;
    var var_3 = func_1(~_wgslsmith_add_u32(0u, u_input.d), ~(~vec2<u32>(countOneBits(u_input.d), 833u)));
    let var_4 = ~u_input.d;
    global0 = 203f;
    let var_5 = min(vec3<u32>(0u, (abs(4294967295u) & _wgslsmith_dot_vec3_u32(vec3<u32>(13573u, 54391u, 4865u), vec3<u32>(var_4, 0u, 0u))) & firstTrailingBit(4294967295u ^ u_input.d), u_input.d | 39195u), vec3<u32>(var_4, u_input.d, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(~min(-2147483647i, u_input.b.x) ^ 1i, 414f);
}

