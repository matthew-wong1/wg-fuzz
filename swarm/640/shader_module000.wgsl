struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_3(-global0.a, -46216i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(461f, global0.c.x, global0.c.x, -1369f)))), -global0.d);
    global1 = !(!select(!select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, arg_1.x, arg_1.x, true), vec4<bool>(global1.x, true, false, global1.x)), select(vec4<bool>(false, arg_0.a.a, arg_0.a.a, arg_0.a.a), select(vec4<bool>(true, true, global1.x, arg_0.a.a), vec4<bool>(arg_0.a.a, global1.x, false, true), true), 410f > global0.c.x), vec4<bool>(arg_1.x, arg_0.a.a, !arg_1.x, all(global1.yy))));
    let var_1 = global0.b;
    let var_2 = arg_1;
    var var_3 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global0.d.x, -(~u_input.b.x), var_0.d.x), 0i), 2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-2293f)), -676f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f + -464f) + _wgslsmith_f_op_f32(f32(-1f) * -1806f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))), min(abs(_wgslsmith_clamp_vec3_i32(global0.d, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.x, -17910i, -1i), var_0.d), var_0.d)), global0.d));
    return var_2.x;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    let var_0 = ~(vec4<u32>(_wgslsmith_mult_u32(~0u, u_input.c), 10901u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, arg_3, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, arg_3, 1u), vec3<u32>(arg_3, 4294967295u, u_input.c))), arg_3) | ~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c, 0u), vec4<u32>(u_input.c, 121473u, 26899u, arg_3))));
    global0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.c.zw, _wgslsmith_f_op_vec2_f32(arg_2.c.xy - global0.c.xy)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, arg_0) - vec2<f32>(1000f, 1064f)) - _wgslsmith_f_op_vec2_f32(arg_2.c.wz - vec2<f32>(-462f, arg_0))))));
    global1 = select(!(!vec4<bool>(arg_2.c.x < arg_0, !global1.x, all(vec2<bool>(true, true)), u_input.b.x == u_input.b.x)), !vec4<bool>(_wgslsmith_f_op_f32(-arg_0) <= arg_2.c.x, select(global1.x, false, true), func_3(Struct_4(Struct_2(true, var_0.xwz)), select(vec3<bool>(false, true, arg_1.x), arg_1, arg_1.x)), arg_1.x), firstTrailingBit(var_0.x) < var_0.x);
    var var_2 = arg_2.a;
    return vec4<bool>(any(vec3<bool>(true, true, global1.x)), (true || func_3(Struct_4(Struct_2(true, vec3<u32>(u_input.c, arg_3, var_0.x))), select(global1.yyy, global1.yyw, vec3<bool>(false, arg_1.x, global1.x)))) | !(arg_1.x || global1.x), all(vec3<bool>(arg_1.x || true, true, arg_1.x)) | arg_1.x, !select(true, any(!arg_1.yz), true));
}

fn func_1() -> Struct_3 {
    global1 = select(!(!(!select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x)))), select(select(select(func_2(-275f, global1.zyz, Struct_3(-2147483647i, -1i, vec4<f32>(343f, -650f, global0.c.x, global0.c.x), vec3<i32>(-48266i, global0.b, 26369i)), 17730u), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, true, global1.x, true), global1.x), func_3(Struct_4(Struct_2(global1.x, vec3<u32>(0u, 0u, u_input.c))), global1.xzx)), !vec4<bool>(true, global1.x, global1.x, false), !global1.x && (u_input.c <= u_input.c)), vec4<bool>(global1.x, true, false, !global1.x), true), any(global1.zx));
    let var_0 = reverseBits(11125u) == _wgslsmith_dot_vec4_u32(~min(vec4<u32>(4294967295u, u_input.c, 54454u, u_input.c) & vec4<u32>(u_input.c, u_input.c, u_input.c, 76089u), vec4<u32>(1u, 0u, 2526u, 18217u) | vec4<u32>(59448u, u_input.c, 0u, 1u)), ~abs(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u) << (vec4<u32>(u_input.c, u_input.c, 52168u, 0u) % vec4<u32>(32u))));
    let var_1 = 5396u;
    global1 = vec4<bool>(false, all(vec2<bool>(any(global1.wz), !func_2(global0.c.x, global1.xxw, Struct_3(24420i, global0.a, vec4<f32>(global0.c.x, 418f, 1000f, -2765f), vec3<i32>(0i, u_input.a.x, u_input.a.x)), u_input.c).x)), true, false);
    global1 = select(vec4<bool>(all(vec4<bool>(all(vec3<bool>(true, global1.x, false)), true, false, var_0)), true, !(true && var_0), true), !select(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1305f), global1.zwx, Struct_3(-2147i, 1i, vec4<f32>(-1000f, global0.c.x, -1413f, global0.c.x), global0.d), var_1), vec4<bool>(global1.x, global1.x && false, all(vec4<bool>(false, true, global1.x, var_0)), global1.x || global1.x), all(vec2<bool>(global1.x, global1.x)) & var_0), vec4<bool>(var_0, func_2(_wgslsmith_f_op_f32(select(global0.c.x, -426f, var_0)), global1.wxw, Struct_3(-11604i, -19444i, global0.c, vec3<i32>(global0.b, 2147483647i, global0.a)), 1u).x && !(true && global1.x), true, global1.x));
    return Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a.x, u_input.b.x), global0.d.xy, vec2<i32>(u_input.b.x << (u_input.c % 32u), -2663i << (var_1 % 32u))), u_input.a & global0.d.xx), ~reverseBits(countOneBits(u_input.b.x)), vec4<f32>(-1421f, _wgslsmith_f_op_f32(round(global0.c.x)), -450f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1368f), _wgslsmith_f_op_f32(1f - 1064f)))), -vec3<i32>(-1i, ~(-16369i), firstLeadingBit(global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_3(global0.d.x, 28828i, global0.c, global0.d >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u)));
    global0 = func_1();
    global1 = !(!select(select(func_2(601f, vec3<bool>(global1.x, global1.x, global1.x), Struct_3(u_input.a.x, -2659i, global0.c, vec3<i32>(2147483647i, global0.a, -38339i)), 0u), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, global1.x, false, true)), true), func_2(global0.c.x, !vec3<bool>(true, false, global1.x), Struct_3(-2147483647i, global0.b, vec4<f32>(global0.c.x, -649f, 1016f, global0.c.x), global0.d), ~4294967295u), select(!vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, false), func_2(-581f, vec3<bool>(false, true, global1.x), Struct_3(u_input.b.x, u_input.b.x, global0.c, vec3<i32>(34995i, -5810i, 7970i)), 1u))));
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(countOneBits(u_input.c), reverseBits(4294967295u), u_input.c), ~reverseBits(_wgslsmith_div_u32(0u, u_input.c)), 0u, 5416u), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 60935u, 36865u, u_input.c), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)), vec4<u32>(u_input.c, countOneBits(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(52962u, u_input.c, u_input.c, u_input.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.c, 5659u))), max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, 776u, 7898u), vec4<u32>(u_input.c, 65910u, 1u, u_input.c)), ~vec4<u32>(u_input.c, 0u, u_input.c, u_input.c))) ^ vec4<u32>(1u, countOneBits(firstLeadingBit(23174u)), u_input.c, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.wxy, _wgslsmith_div_u32(reverseBits(u_input.c), min(1u, _wgslsmith_div_u32(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 62923u, 0u, u_input.c), vec4<u32>(var_0.x, u_input.c, u_input.c, 0u))))), var_0, ~vec4<i32>(_wgslsmith_mult_i32(-global0.a, _wgslsmith_add_i32(60714i, u_input.a.x)), u_input.a.x, global0.b, reverseBits(~28573i)), countOneBits(abs(var_0)));
}

