struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1;

var<private> global3: vec3<f32> = vec3<f32>(-461f, -183f, 770f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> i32 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1142f, 1759f)), 979f, _wgslsmith_f_op_f32(f32(-1f) * -1724f))))));
    global1 = vec3<u32>(global1.x, ~0u, select(~_wgslsmith_add_u32(~4294967295u, global1.x), global1.x, true));
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) * _wgslsmith_f_op_f32(-arg_0)))) + global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-604f + -267f), global2.d))) * global3.x));
    var var_0 = global2.a;
    let var_1 = 28589u;
    return u_input.a.x;
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = func_3(global2.d);
    var var_1 = Struct_3(select(vec2<u32>(~u_input.b.x, ~10122u), abs(u_input.b.zy), !(!vec2<bool>(true, global2.c.x))) >> (~arg_0.a.yx % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a), u_input.b.xy, global2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global3.x, global2.a.x)))), countOneBits(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0.a.x, global2.e, arg_0.a.x), vec4<u32>(arg_0.a.x, global1.x, global2.e, arg_0.a.x)), _wgslsmith_div_u32(u_input.b.x, u_input.c)))), arg_0, arg_0, Struct_2(abs(arg_0.a)));
    var var_2 = Struct_3(~global2.b, Struct_1(global2.a, min(global1.xx & select(vec2<u32>(4294967295u, global1.x), global2.b, false), vec2<u32>(global2.e, 17387u)), var_1.b.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.a.x, var_1.b.a.x))), ~_wgslsmith_div_u32(~global2.b.x, 5079u)), Struct_2(vec3<u32>(62389u, 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global2.b.x, 0u, 1u), vec4<u32>(73638u, arg_0.a.x, var_1.e.a.x, 4294967295u)), ~vec4<u32>(arg_0.a.x, global1.x, global1.x, arg_0.a.x)))), Struct_2(u_input.b), arg_0);
    let var_3 = ~u_input.b.x;
    let var_4 = ~(~41221u);
    return u_input.b.zz;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_3(select(~global2.b, ~vec2<u32>(1u, 46372u), true), var_0.b, Struct_2(_wgslsmith_mult_vec3_u32(~(~var_0.c.a), ~u_input.b)), var_0.d, arg_0.e);
    let var_1 = vec2<f32>(global2.d, _wgslsmith_div_f32(-322f, -1055f));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.b.e, abs(4294967295u)), reverseBits(_wgslsmith_dot_vec2_u32(global2.b, arg_3)), arg_3.x), 57378u) >> (~60255u % 32u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global3.yy)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1087f * var_0.b.d) * _wgslsmith_f_op_f32(abs(var_1.x))), 1871f)), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(select(global2.e, arg_3.x, true), 19450u), global1.x), ~_wgslsmith_mod_u32(~global1.x, 0u)), !(!(!global2.c)), 675f, _wgslsmith_add_u32(~(_wgslsmith_dot_vec2_u32(global2.b, global1.xy) ^ 15661u), ~1u << (firstLeadingBit(_wgslsmith_mult_u32(arg_0.e.a.x, 16390u)) % 32u)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = u_input.a.x ^ ~82521i;
    let var_1 = func_4(Struct_3(select(_wgslsmith_sub_vec2_u32(func_2(Struct_2(vec3<u32>(global2.e, global1.x, global2.b.x))), ~u_input.b.yz), arg_0.a.zy, global2.c.x), Struct_1(_wgslsmith_f_op_vec2_f32(global2.a + global3.zz), ~min(vec2<u32>(global2.b.x, 1u), global2.b), select(global2.c, select(global2.c, global2.c, global2.c), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(925f - global3.x)), arg_0.a.x), arg_0, arg_0, arg_0), _wgslsmith_add_vec4_i32(~(~abs(vec4<i32>(u_input.a.x, u_input.a.x, 34506i, u_input.a.x))), -vec4<i32>(4035i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -11106i))), global2.c.x, global1.yy);
    global2 = var_1;
    global3 = vec3<f32>(-365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f) - global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(945f + _wgslsmith_div_f32(1825f, -183f))));
    let var_2 = Struct_3(vec2<u32>(4294967295u, func_4(Struct_3(countOneBits(vec2<u32>(global2.e, global1.x)), var_1, arg_0, arg_0, arg_0), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x) << (~vec4<u32>(37372u, 4294967295u, global2.b.x, u_input.b.x) % vec4<u32>(32u)), false, firstLeadingBit(~vec2<u32>(global2.b.x, arg_0.a.x))).e), func_4(Struct_3(~func_2(arg_0), var_1, Struct_2(vec3<u32>(1780u, 0u, global2.b.x)), Struct_2(firstTrailingBit(vec3<u32>(u_input.c, u_input.b.x, 1u))), arg_0), vec4<i32>(u_input.a.x, u_input.a.x, func_3(936f), u_input.a.x), true, global2.b), Struct_2(~u_input.b), Struct_2(abs(vec3<u32>(4294967295u << (global2.b.x % 32u), u_input.b.x, 71364u))), Struct_2(~abs(arg_0.a) ^ u_input.b));
    return func_4(Struct_3(vec2<u32>(0u, ~0u), func_4(Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(global2.b.x, 42863u), vec2<u32>(u_input.c, var_1.e)), var_1, var_2.e, Struct_2(arg_0.a), arg_0), vec4<i32>(u_input.a.x, 1i, ~(-2147483647i), min(-1i, 46151i)), false, ~vec2<u32>(u_input.c, 0u)), var_2.d, Struct_2(select(arg_0.a, _wgslsmith_mult_vec3_u32(var_2.c.a, vec3<u32>(global2.e, arg_0.a.x, u_input.c)), vec3<bool>(false, false, var_2.b.c.x))), var_2.e), firstTrailingBit(vec4<i32>(u_input.a.x, ~_wgslsmith_sub_i32(1i, -1i), u_input.a.x & u_input.a.x, _wgslsmith_mod_i32(max(u_input.a.x, u_input.a.x), -u_input.a.x))), false, ~u_input.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(~firstTrailingBit(u_input.b) << (u_input.b % vec3<u32>(32u))));
    var var_1 = func_1(Struct_2(vec3<u32>(global2.b.x, global2.b.x & min(var_0.e, global2.b.x), 32006u))).c.x;
    var var_2 = firstLeadingBit(vec4<i32>(25558i, -1i, ~u_input.a.x & u_input.a.x, u_input.a.x));
    var_2 = -abs(min(-max(vec4<i32>(var_2.x, u_input.a.x, 0i, var_2.x), vec4<i32>(-79233i, 62150i, u_input.a.x, -929i)), ~vec4<i32>(u_input.a.x, 2147483647i, var_2.x, 2147483647i) ^ (vec4<i32>(u_input.a.x, 29395i, u_input.a.x, 6907i) ^ vec4<i32>(37185i, var_2.x, -22735i, 69819i))));
    var var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 0u), _wgslsmith_sub_vec2_u32(abs(global2.b ^ ~vec2<u32>(var_0.b.x, 0u)), global2.b));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_0.d) - _wgslsmith_f_op_f32(ceil(global2.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, ~_wgslsmith_sub_vec3_u32(countOneBits(firstLeadingBit(vec3<u32>(var_3.x, 4294967295u, 33865u))), select(~vec3<u32>(0u, 0u, 1u), _wgslsmith_mult_vec3_u32(u_input.b, u_input.b), vec3<bool>(true, global2.c.x, false))));
}

