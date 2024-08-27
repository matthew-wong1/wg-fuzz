struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = Struct_2(select(vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(vec2<bool>(true, -6713i >= u_input.a), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), any(vec4<bool>(true, true, true, false)))), Struct_1(~vec4<u32>(u_input.b << (1u % 32u), 16054u, ~17073u, ~arg_1.b), vec4<i32>(~u_input.a, firstTrailingBit(countOneBits(44135i)), u_input.a ^ reverseBits(u_input.a), firstTrailingBit(abs(u_input.a))), vec2<bool>(true, true)), Struct_1(arg_0, vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, 33294i, -9817i, -10432i)), abs(vec4<i32>(0i, u_input.a, -24958i, u_input.a))), u_input.a, u_input.a, _wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, -8920i))), select(vec2<bool>(true, all(vec2<bool>(true, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)))), -(~_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, 1006i, u_input.a), vec4<i32>(22683i, u_input.a, u_input.a, u_input.a)))), !vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), u_input.a < 1i, true));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    let var_1 = vec2<bool>(var_0.c.c.x, false);
    let var_2 = Struct_3(Struct_2(var_1, Struct_1(_wgslsmith_sub_vec4_u32(abs(arg_0), abs(vec4<u32>(39007u, 1u, arg_1.b, 0u))), var_0.c.b, !vec2<bool>(var_1.x, var_1.x)), Struct_1(~(arg_0 | vec4<u32>(23557u, arg_0.x, arg_0.x, var_0.b.a.x)), -var_0.b.b, var_1), vec4<i32>(_wgslsmith_sub_i32(u_input.a ^ 1i, u_input.a), -u_input.a, u_input.a, -1i), vec3<bool>(true, var_0.a.x, false)), _wgslsmith_mult_i32(abs(-abs(u_input.a)), -u_input.a));
    return var_2.a.c.a;
}

fn func_2() -> Struct_2 {
    var var_0 = true;
    let var_1 = ~reverseBits(func_3(vec4<u32>(u_input.b, 4294967295u, u_input.b, 26840u) << (~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) % vec4<u32>(32u)), Struct_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-611f, 2004f))), u_input.b)));
    var var_2 = vec2<bool>(u_input.a != -2147483647i, any(vec4<bool>(true, true, true, true)));
    return Struct_2(select(select(vec2<bool>(u_input.b < 1u, -5542i > u_input.a), !(!vec2<bool>(var_2.x, var_2.x)), vec2<bool>(true | var_2.x, !var_2.x)), select(select(select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_2.x), var_2.x), vec2<bool>(false, var_2.x), !vec2<bool>(var_2.x, false)), vec2<bool>(true, true), true && var_2.x), select(var_2.x, all(vec4<bool>(var_2.x, true, var_2.x, false)) | false, false)), Struct_1(func_3(~vec4<u32>(4294967295u, 26498u, var_1.x, u_input.b) & vec4<u32>(4294967295u, 0u, 95631u, u_input.b), Struct_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], -396f))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 1u, var_1.x), vec3<u32>(6913u, 0u, u_input.b)))), min(vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i), -vec4<i32>(u_input.a, -1i, u_input.a, 10865i)) ^ firstLeadingBit(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), select(!select(vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x), var_2.x), !select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_2.x), true), !select(vec2<bool>(true, true), vec2<bool>(var_2.x, false), vec2<bool>(true, false)))), Struct_1(var_1, -vec4<i32>(-9222i, countOneBits(25798i), -1i, u_input.a | -11082i), select(!select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, false)), !select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), var_2.x), select(select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true)), select(vec2<bool>(true, var_2.x), vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, true)), true))), vec4<i32>(70549i, firstTrailingBit(41599i), u_input.a, 1i), vec3<bool>(!var_2.x, !(global0[_wgslsmith_index_u32(var_1.x, 27u)] < global0[_wgslsmith_index_u32(1u, 27u)]) != (_wgslsmith_f_op_f32(353f - -101f) == global0[_wgslsmith_index_u32(~u_input.b, 27u)]), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: f32, arg_3: vec2<i32>) -> bool {
    let var_0 = arg_1;
    let var_1 = var_0;
    let var_2 = vec4<f32>(1411f, _wgslsmith_f_op_f32(round(524f)), -241f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 27u)]));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(var_2.yy - vec2<f32>(-334f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_dot_vec3_u32(var_1.a.c.a.xwy, vec3<u32>(select(~var_1.a.b.a.x, ~var_0.a.c.a.x, true), 4294967295u, 0u)));
    var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-var_2.xw), var_3.b);
    return !var_1.a.e.x;
}

fn func_1() -> bool {
    let var_0 = -(u_input.a & select(-1i, -max(u_input.a, -1i), false));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    let var_1 = 59826u;
    global0 = array<f32, 27>();
    return !(!((5232u | u_input.b) == var_1)) || (func_4(vec3<bool>(true, true, true), Struct_3(func_2(), u_input.a << (var_1 % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(108f, 729f))), vec2<i32>(~u_input.a, func_2().b.b.x)) || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(~4294967295u, u_input.b, 0u, 0u), vec4<i32>(_wgslsmith_add_i32(~(~u_input.a), 19305i), 2216i, i32(-1i) * -countOneBits(u_input.a), max(reverseBits(-52562i << (u_input.b % 32u)), u_input.a << (u_input.b % 32u))), vec2<bool>(true, func_1()));
    var var_1 = vec2<u32>(u_input.b, min(58278u, ~(~1u)));
    var var_2 = vec3<f32>(-792f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~31636u, 27u)])))), 246f);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_2.x))))), var_2.x, var_0.c.x && (var_0.c.x != false)))));
    var_1 = _wgslsmith_mult_vec2_u32(var_0.a.zy, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(55690u, ~4844u, u_input.b, var_0.a.x), select(var_0.a, var_0.a, !var_0.c.x)), ~91749u));
    var var_4 = select(vec3<bool>(any(vec3<bool>(var_0.c.x, false, false)), 606f <= _wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(41660u, 27u)])), !(_wgslsmith_f_op_f32(f32(-1f) * -1091f) != _wgslsmith_f_op_f32(-var_2.x))), vec3<bool>(select(1790u, ~var_0.a.x, any(vec3<bool>(true, true, var_0.c.x))) >= var_1.x, all(vec2<bool>(var_0.c.x, !var_0.c.x)), true), var_0.c.x);
    var var_5 = func_2().b;
    var var_6 = var_5.b.x >> (~(~63384u) % 32u);
    var var_7 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a);
}

