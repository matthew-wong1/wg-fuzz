struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = 386f;
    var var_1 = Struct_1(!(!vec3<bool>(true, true, all(vec2<bool>(true, true)))), !select(vec4<bool>(false, true, true, true), vec4<bool>(all(vec2<bool>(true, false)), false, true, arg_0.x > 78873u), vec4<bool>(true, false, true, true)), ~12667i, any(vec3<bool>(firstTrailingBit(u_input.c.x) >= max(-1i, u_input.c.x), select(all(vec4<bool>(false, true, false, true)), true, true), !any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f)));
    let var_2 = _wgslsmith_div_i32(-1i, 2147483647i << (~abs(6926u ^ arg_0.x) % 32u));
    let var_3 = var_1.c < ~u_input.c.x;
    global0 = true;
    return !var_1.b;
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_1(select(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), vec3<bool>(false, all(func_3(vec4<u32>(1u, 0u, 7485u, u_input.a), u_input.b.xyy, Struct_4(-1745f))), !all(vec4<bool>(true, true, false, false))), select(true, all(vec4<bool>(true, true, false, false)), select(true, false, false)) && false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), 2147483647i, true | (true && all(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(abs(-1567f)));
    var_0 = Struct_1(var_0.b.wwz, var_0.b, ~(arg_0.x << (u_input.b.x % 32u)), any(var_0.b.xzw), var_0.e);
    var var_1 = u_input.b;
    var_1 = ~(~firstTrailingBit(~(~u_input.b)));
    var_0 = Struct_1(var_0.b.xzw, var_0.b, -1i, all(select(!func_3(u_input.b, var_1.zzw, Struct_4(-613f)), var_0.b, !(!var_0.a.x))), _wgslsmith_f_op_f32(floor(-490f)));
    return select(vec2<bool>(u_input.b.x != abs(~0u), false), vec2<bool>(true, true), !func_3(min(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 12740u, u_input.a, 1u), vec4<u32>(0u, var_1.x, 4294967295u, 49232u)), u_input.b), max(~u_input.b.zww, var_1.xyz), Struct_4(1f)).yw);
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = false;
    global0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(576f, 1098f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-909f, 264f)))))))));
    var_0 = all(vec4<bool>(!any(vec3<bool>(true, false, false)), true, true, all(func_2(~vec4<i32>(arg_0.x, 41306i, arg_0.x, arg_0.x)))));
    let var_2 = _wgslsmith_add_vec3_i32(firstTrailingBit(u_input.c), -select(_wgslsmith_clamp_vec3_i32(u_input.c | vec3<i32>(arg_0.x, -1898i, arg_0.x), vec3<i32>(-2147483647i, arg_0.x, u_input.c.x), u_input.c & vec3<i32>(u_input.c.x, -8917i, u_input.c.x)), u_input.c, !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)));
    return func_3(vec4<u32>(~(~(~9042u)), u_input.a, (1u & _wgslsmith_mult_u32(u_input.a, u_input.b.x)) & ~(11110u << (0u % 32u)), ~(~u_input.a)), u_input.b.xwx, Struct_4(1000f)).ywy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(countOneBits(vec2<i32>(0i, -7871i)), u_input.c.zx, _wgslsmith_mult_u32(~u_input.b.x, u_input.b.x) < ~(~1u)));
    global0 = true;
    var var_1 = true;
    global0 = true;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-1202f + -300f));
    var var_3 = reverseBits(vec4<u32>(u_input.a, ~(~_wgslsmith_dot_vec3_u32(u_input.b.zwz, vec3<u32>(52596u, u_input.a, 0u))), max(~1u, abs(abs(1u))), max(~u_input.b.x, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-1159f, 50079u, 4294967295u >> (~max(2688u, ~u_input.b.x) % 32u));
}

