struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, false), vec3<u32>(0u, 1u, 13776u), vec4<i32>(9341i, 985i, 24314i, -24025i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = (_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(-1i, 0i, countOneBits(-41729i))) << (~arg_0.a % 32u)) & -8218i;
    global0 = Struct_2(!select(vec2<bool>(true, true), arg_0.c, !(!global0.a)), ~global0.b, vec4<i32>(1i, -2648i, -global0.c.x << (~global0.b.x % 32u), 1i) | global0.c);
    let var_1 = arg_0;
    var_0 = var_1.b.x;
    var var_2 = _wgslsmith_f_op_f32(-781f - -546f);
    return 1109f;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>) -> u32 {
    global0 = Struct_2(select(vec2<bool>(global0.a.x, !arg_0.x), !(!arg_0.wx), arg_0.wx), abs(~select(~global0.b, global0.b | global0.b, !vec3<bool>(arg_0.x, arg_0.x, true))), global0.c);
    let var_0 = arg_1;
    let var_1 = 639f;
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(29834u, 1u, 1u, global0.b.x) << (vec4<u32>(global0.b.x, 0u, 30503u, 46447u) % vec4<u32>(32u))) << (~(vec4<u32>(1u, global0.b.x, global0.b.x, 1u) | vec4<u32>(global0.b.x, 0u, 1u, 1u)) % vec4<u32>(32u)), abs(countOneBits(~vec4<u32>(25278u, 1u, global0.b.x, global0.b.x)))), global0.c.wwz, global0.a);
    let var_3 = Struct_1(global0.b.x, firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yy, -vec2<i32>(var_2.b.x, -2147483647i)), -1i, u_input.b)), !arg_0.wx);
    return ~global0.b.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-150f - _wgslsmith_div_f32(-511f, _wgslsmith_f_op_f32(func_2(Struct_1(arg_1, vec3<i32>(global0.c.x, global0.c.x, 68883i), global0.a))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(979f, 1000f, -1000f, -176f))))));
    let var_2 = Struct_2(!(!vec2<bool>(global0.a.x, global0.a.x)), global0.b, global0.c);
    global0 = Struct_2(vec2<bool>(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_2.c.x, -2721i), _wgslsmith_mult_i32(847i, u_input.b)) <= ~(-52752i ^ var_2.c.x), global0.a.x), vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(global0.b.zy, var_2.b.yy)), _wgslsmith_sub_u32(func_3(!vec4<bool>(global0.a.x, global0.a.x, true, var_2.a.x), vec3<f32>(var_1.x, var_0, var_1.x)), abs(global0.b.x)), ~func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(var_2.a.x, var_2.a.x, false, false), vec4<bool>(global0.a.x, global0.a.x, var_2.a.x, global0.a.x)), var_1.yxx)), -(~var_2.c & global0.c));
    global0 = Struct_2(vec2<bool>(false, abs(~122510u) < _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, 23742u, 0u, arg_1), vec4<u32>(0u, 1u, arg_1, 1u) | vec4<u32>(1u, var_2.b.x, 69079u, arg_1))), var_2.b, ~(~vec4<i32>(arg_0.x, global0.c.x, global0.c.x, _wgslsmith_add_i32(0i, global0.c.x))));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = 0u;
    global0 = arg_1;
    var var_1 = reverseBits(~vec4<u32>(func_3(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, global0.a.x, false), arg_1.a.x), arg_0.xyz), 69410u & ~arg_1.b.x, ~firstTrailingBit(arg_1.b.x), 62410u));
    var_0 = arg_2.a >> ((arg_1.b.x << (26141u % 32u)) % 32u);
    let var_2 = _wgslsmith_add_u32(max(firstTrailingBit(global0.b.x), arg_2.a), abs(max(~var_1.x, ~reverseBits(arg_2.a))));
    return _wgslsmith_dot_vec4_u32(~(~firstLeadingBit(vec4<u32>(4294967295u, arg_2.a, 1u, 4294967295u) ^ vec4<u32>(4294967295u, 19417u, 64897u, 0u))), ~(~vec4<u32>(~25591u, ~arg_2.a, 23969u, 1u ^ var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(abs(-484f)), ~global0.b.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, ~0u >> (0u % 32u)), 31950u, func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1425f), _wgslsmith_f_op_f32(230f * -240f), 546f, _wgslsmith_f_op_f32(func_1(global0.c.yzz, global0.b.x))), Struct_2(global0.a, ~global0.b, vec4<i32>(global0.c.x, -22883i, u_input.a.x, 29448i)), Struct_1(~1u, u_input.a, global0.a))));
}

