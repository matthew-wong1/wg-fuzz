struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -1392i), true, false, 424f), 1u), Struct_2(Struct_1(vec3<i32>(1i, 0i, -46624i), false, false, -376f), 0u), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, 42560i), true, false, 567f), 4294967295u), Struct_2(Struct_1(vec3<i32>(0i, -1i, 750i), false, false, 383f), 25643u), Struct_2(Struct_1(vec3<i32>(-9130i, 28880i, 28617i), true, false, 596f), 77489u), Struct_2(Struct_1(vec3<i32>(-2608i, -1i, -1i), false, false, 1000f), 65632u), Struct_2(Struct_1(vec3<i32>(0i, 16509i, -1i), true, true, 603f), 4294967295u), Struct_2(Struct_1(vec3<i32>(2147483647i, -50428i, -1i), true, true, 497f), 4294967295u), Struct_2(Struct_1(vec3<i32>(1i, -1i, -4868i), false, true, 551f), 44780u));

var<private> global1: array<Struct_2, 16>;

var<private> global2: bool = false;

var<private> global3: u32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec3<u32> {
    var var_0 = u_input.e;
    let var_1 = all(!(!vec4<bool>(arg_0 <= -422f, false, false, true)));
    let var_2 = _wgslsmith_mod_u32(~u_input.a.x, arg_1);
    global2 = all(select(select(!vec3<bool>(var_1, true, var_1), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), select(select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, true, var_1)), !vec3<bool>(var_1, var_1, var_1), all(vec4<bool>(true, var_1, var_1, true)))), vec3<bool>(select(true, true, any(vec4<bool>(var_1, var_1, false, var_1))), all(vec3<bool>(var_1, false, false)), !var_1 || !var_1), select(select(!vec3<bool>(false, false, var_1), !vec3<bool>(var_1, var_1, var_1), !vec3<bool>(var_1, var_1, var_1)), !(!vec3<bool>(var_1, true, true)), !(!vec3<bool>(true, var_1, var_1)))));
    global1 = array<Struct_2, 16>();
    return ~u_input.a.ywy;
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global3 = u_input.d.x;
    var var_0 = -vec2<i32>(-90339i, u_input.c.x);
    let var_1 = Struct_1(_wgslsmith_mod_vec3_i32(-u_input.c, vec3<i32>(1i, 1i, 2147483647i)), all(vec3<bool>(true, true, _wgslsmith_div_f32(arg_0, -1179f) == _wgslsmith_f_op_f32(-479f - -2514f))), _wgslsmith_div_u32(20171u, u_input.d.x) > u_input.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    return ~(~(~func_3(var_1.d, 1u | u_input.a.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(u_input.d, firstTrailingBit(vec2<u32>(min(~4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~(~94682u))));
    var var_1 = arg_0;
    var var_2 = ~_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0.a.x, _wgslsmith_mult_i32(u_input.c.x, 1i), arg_0.a.x), arg_0.a);
    var var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)));
    global0 = array<Struct_2, 9>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.a) | u_input.a;
    var var_1 = func_1(Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, -15491i, u_input.b.x), vec3<i32>(u_input.c.x, u_input.b.x, 37966i), -vec3<i32>(-39087i, -57105i, u_input.e)), u_input.c), true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-862f - 826f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -1352f)), vec2<u32>(36626u, _wgslsmith_div_u32(59259u & select(var_0.x, 1u, true), var_0.x)));
    var var_2 = func_1(Struct_1(u_input.c, var_1.c, var_1.b, _wgslsmith_f_op_f32(var_1.d - 1f)), u_input.d);
    let var_3 = vec3<bool>(any(!vec4<bool>(func_1(Struct_1(u_input.c, var_2.b, true, 106f), vec2<u32>(5131u, 1u)).c, all(vec4<bool>(true, false, var_2.b, true)), func_1(Struct_1(var_2.a, var_2.c, true, var_1.d), vec2<u32>(var_0.x, 18077u)).c, true)), var_2.b, false);
    let var_4 = vec2<i32>(abs(var_2.a.x), i32(-1i) * -(~(u_input.b.x ^ var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-select(~(vec4<i32>(-12454i, 2147483647i, -2147483647i, var_1.a.x) & vec4<i32>(var_1.a.x, u_input.c.x, 1i, 1i)), vec4<i32>(-1i) * -vec4<i32>(36773i, 0i, -17797i, -1i), select(select(vec4<bool>(var_3.x, false, false, var_1.c), vec4<bool>(false, true, var_3.x, false), var_2.c), select(vec4<bool>(true, var_1.c, true, var_3.x), vec4<bool>(var_1.c, var_1.b, false, true), vec4<bool>(var_1.b, true, false, true)), var_3.x)), 16060i);
}

