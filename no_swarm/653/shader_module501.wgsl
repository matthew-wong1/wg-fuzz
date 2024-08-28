struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1383f);

var<private> global1: vec2<i32>;

var<private> global2: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = ~firstLeadingBit(~_wgslsmith_clamp_u32(4294967295u, 4294967295u, 42514u)) & 1u;
    let var_1 = vec4<bool>(true, all(!vec2<bool>(false, global2.a >= u_input.c.x)), !global2.b.x, true);
    return var_0;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a * arg_0.a), _wgslsmith_f_op_f32(arg_0.a + arg_0.a))) * 431f) + _wgslsmith_f_op_f32(655f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, 1000f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 628f) * _wgslsmith_f_op_f32(-global0.a))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -469f);
    let var_2 = Struct_1(vec2<f32>(global0.a, var_0), ~vec3<u32>(max(1u, 4294967295u), arg_2.x, func_3(global2.c)), global2.b.ww, _wgslsmith_f_op_f32(var_0 * -998f));
    let var_3 = Struct_4(arg_1.x);
    var var_4 = firstTrailingBit(var_2.b) >> (_wgslsmith_add_vec3_u32(min(vec3<u32>(~var_2.b.x, ~86009u, 4294967295u), ~vec3<u32>(1u, 70598u, 35284u)), ~vec3<u32>(1u, u_input.a, arg_2.x) | vec3<u32>(~44928u, arg_2.x, ~35597u)) % vec3<u32>(32u));
    return select(~countOneBits(abs(vec4<i32>(-3516i, -1i, global1.x, 19185i))), countOneBits(firstLeadingBit(~vec4<i32>(12124i, 0i, 16546i, -29212i))) >> (vec4<u32>(~(~11313u), var_2.b.x, 1u, 0u) % vec4<u32>(32u)), vec4<bool>(all(!(!global2.b)), true != all(vec2<bool>(true, false)), false, !(!all(vec4<bool>(var_2.c.x, global2.b.x, var_2.c.x, true)))));
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = ~4294967295u;
    let var_1 = reverseBits(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, global2.a, global1.x, 34512i) | vec4<i32>(-30361i, u_input.c.x, -20946i, -2147483647i), func_2(Struct_4(-1417f), vec2<f32>(arg_1.a, -1152f), vec2<u32>(u_input.b, 32410u))) >> (~(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 6500u, 78571u, u_input.b), vec4<u32>(var_0, u_input.a, 0u, 55676u), vec4<u32>(u_input.a, var_0, var_0, var_0)) ^ vec4<u32>(0u, 2744u, var_0, var_0)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_0, u_input.b, 1u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 3485u), vec3<u32>(4294967295u, var_0, 62767u)) % vec3<u32>(32u))) >> (vec3<u32>(var_0, _wgslsmith_div_u32(~92979u, ~1u), 51439u) % vec3<u32>(32u)), vec3<u32>(var_0, ~((u_input.b << (1u % 32u)) >> (1u % 32u)), countOneBits(50232u)));
    global1 = ~(vec2<i32>(u_input.c.x, -u_input.c.x & _wgslsmith_add_i32(0i, -8892i)) | max(u_input.c.zy, vec2<i32>(global1.x, global1.x)));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2, 4294967295u, _wgslsmith_div_u32(var_0, 5877u)), abs(vec3<u32>(var_2, 0u, u_input.a))), ~min(vec3<u32>(var_2, 4294967295u, var_0), vec3<u32>(4294967295u, var_2, var_2))), 14713u, 4294967295u, var_0);
    return Struct_1(vec2<f32>(arg_0, global0.a), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_3.x, 4294967295u), 37799u), var_3.x, _wgslsmith_add_u32(~4294967295u, ~func_3(global2.b.x))), vec2<bool>(-2147483647i <= ~(-970i >> (var_3.x % 32u)), global2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-748f - arg_0)))) * _wgslsmith_f_op_f32(-349f - _wgslsmith_f_op_f32(abs(arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(vec2<i32>(global1.x, firstTrailingBit(firstTrailingBit(~global2.a))));
    let var_0 = func_1(global0.a, Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-634f - _wgslsmith_f_op_f32(-global0.a))))));
    let var_1 = vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    var var_2 = Struct_2(-_wgslsmith_mod_i32(u_input.c.x, -func_2(Struct_4(global0.a), var_1, vec2<u32>(var_0.b.x, u_input.b)).x), vec4<bool>(true, !var_0.c.x, any(!vec4<bool>(false, global2.c, true, global2.c)), var_0.c.x), false);
    let var_3 = Struct_4(-427f);
    global2 = Struct_2(u_input.c.x, var_2.b, true != var_0.c.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -432f, 1619f, -1084f)), vec4<f32>(var_0.a.x, 1579f, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.a, 1048f, var_3.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-232f, -1000f, 1000f, -2126f) - vec4<f32>(global0.a, var_3.a, -333f, -1189f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-982f, -1000f, var_3.a, -120f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.a.x, var_1.x, 695f)) + _wgslsmith_div_vec4_f32(vec4<f32>(518f, global0.a, var_3.a, var_1.x), vec4<f32>(-449f, var_1.x, -335f, var_0.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.xz, -486f, 115f, var_1.x);
}

