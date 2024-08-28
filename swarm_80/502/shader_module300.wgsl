struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(0u, 4294967295u, 18299u, 0u), true, vec3<i32>(-37873i, 5544i, -19935i), Struct_1(vec3<i32>(56121i, 47144i, 4106i), false, 29573u, 0i), vec4<i32>(-7204i, -45734i, 24579i, 20060i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: f32) -> u32 {
    return 70490u;
}

fn func_2() -> u32 {
    global0 = Struct_4(vec4<u32>(_wgslsmith_mult_u32(u_input.c, ~102236u), 4294967295u, ~(~func_3(global0.d.c, Struct_4(global0.a, false, vec3<i32>(-1i, -23683i, 2740i), global0.d, global0.e), 536f)), firstLeadingBit(~18259u)), (~4294967295u <= _wgslsmith_mult_u32(u_input.d, reverseBits(70984u))) | !global0.b, vec3<i32>(_wgslsmith_div_i32(u_input.e.x, min(2147483647i, global0.e.x) << (_wgslsmith_mod_u32(global0.a.x, global0.a.x) % 32u)), 1i, -(_wgslsmith_div_i32(global0.d.d, 3680i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, 1i), vec2<i32>(u_input.a.x, u_input.e.x)))), global0.d, global0.e);
    global0 = Struct_4(~_wgslsmith_add_vec4_u32(~(~vec4<u32>(global0.d.c, 20419u, 1u, 15874u)), vec4<u32>(global0.d.c ^ 0u, ~u_input.d, 1u & global0.a.x, 1u)), true, -vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(global0.e), global0.e), countOneBits(u_input.a.x << (u_input.d % 32u)), -u_input.e.x), Struct_1(_wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-15683i, -39857i, u_input.a.x), vec3<i32>(-47103i, 13825i, 5484i)), -(~global0.d.a)), !(true || all(vec3<bool>(global0.b, true, global0.d.b))), firstLeadingBit(~61962u), 1i), vec4<i32>(abs(~_wgslsmith_div_i32(u_input.e.x, global0.d.d)), 1i, _wgslsmith_div_i32(global0.e.x, firstLeadingBit(1i)), -2147483647i));
    global0 = Struct_4(_wgslsmith_sub_vec4_u32(global0.a, global0.a), false, ~(-vec3<i32>(~u_input.a.x, 1i | u_input.a.x, countOneBits(u_input.a.x))), Struct_1(vec3<i32>(global0.e.x & global0.c.x, 28138i, countOneBits(u_input.e.x)), all(select(vec2<bool>(global0.d.b, false), !vec2<bool>(global0.b, false), true)), global0.a.x, u_input.e.x), _wgslsmith_mod_vec4_i32(-abs(_wgslsmith_clamp_vec4_i32(global0.e, vec4<i32>(1i, global0.c.x, -1i, 11199i), vec4<i32>(0i, global0.e.x, -1i, -50046i))), vec4<i32>(min(u_input.e.x, global0.e.x), u_input.a.x, -global0.e.x, 1i)));
    let var_0 = ~firstTrailingBit(56680i);
    global0 = Struct_4(_wgslsmith_mult_vec4_u32(global0.a, ~global0.a), !global0.d.b, ~vec3<i32>(0i, -14331i, u_input.a.x), global0.d, vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(~25782i, _wgslsmith_clamp_i32(-31650i, -2147483647i, global0.e.x)), _wgslsmith_mod_i32(global0.d.d, _wgslsmith_add_i32(1i, var_0)), -abs(2147483647i)) >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(countOneBits(global0.a)), abs(max(global0.a, global0.a))) % vec4<u32>(32u)));
    return 3890u;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32) -> Struct_3 {
    global0 = Struct_4(vec4<u32>(11932u, arg_1, max(~0u, arg_1) & ~(~1u), ~(~4294967295u)), false, abs(global0.e.wzw) >> (vec3<u32>(arg_1, ~u_input.d, 10594u) % vec3<u32>(32u)), global0.d, firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 14370i, u_input.e.x, 2147483647i), global0.e) & (vec4<i32>(global0.c.x, 27397i, global0.e.x, u_input.e.x) & vec4<i32>(u_input.e.x, -17838i, -32180i, u_input.a.x))));
    global0 = Struct_4(global0.a, global0.c.x < global0.c.x, abs(firstLeadingBit(~(-u_input.a))), global0.d, global0.e);
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -404f);
    var var_1 = select(arg_0, select(select(arg_0, arg_0, vec2<bool>(false, false)), vec2<bool>(true, any(vec4<bool>(arg_0.x, global0.b, global0.d.b, false))), !global0.b), select(vec2<bool>(false, true | !global0.d.b), vec2<bool>(all(vec3<bool>(true, false, arg_0.x)), true), select(!(!vec2<bool>(arg_0.x, arg_0.x)), arg_0, all(!vec4<bool>(arg_0.x, global0.b, false, global0.d.b)))));
    var_1 = select(vec2<bool>(true, true), !vec2<bool>(global0.d.b, var_1.x), true);
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)))) * -1614f), ~min(u_input.b.x, ~min(4294967295u, 1u)), -((vec3<i32>(0i, u_input.e.x, 0i) << (global0.a.xwz % vec3<u32>(32u))) ^ vec3<i32>(0i, _wgslsmith_dot_vec2_i32(global0.c.yx, u_input.e), abs(global0.e.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -339f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(631f, var_0) + vec2<f32>(-1923f, -2263f))))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = func_4(!(!select(!vec2<bool>(arg_1.d.b, false), select(vec2<bool>(arg_2.b.b, arg_2.b.b), vec2<bool>(false, arg_2.b.b), true), select(vec2<bool>(arg_2.b.b, false), vec2<bool>(arg_1.b, false), arg_2.b.b))), firstTrailingBit(func_2()));
    global0 = arg_1;
    var var_1 = arg_2.b.c;
    let var_2 = Struct_3(var_0.a, 16152u, vec3<i32>(_wgslsmith_mult_i32(global0.d.a.x, -11317i), arg_1.c.x, ~(arg_3.a.x >> (14220u % 32u)) | arg_2.b.a.x), vec2<f32>(-1767f, _wgslsmith_f_op_f32(-var_0.d.x)));
    let var_3 = arg_1;
    return ~u_input.b ^ global0.a.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.yw;
    var_0 = select(global0.a.xz, max(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(50650u, 4294967295u), vec2<u32>(8657u, var_0.x), global0.a.yz), func_1(vec3<f32>(656f, -1565f, 703f), Struct_4(vec4<u32>(0u, u_input.d, global0.a.x, 19692u), global0.d.b, vec3<i32>(-47421i, u_input.e.x, global0.d.a.x), global0.d, global0.e), Struct_2(u_input.a.x, Struct_1(vec3<i32>(-1i, 59346i, u_input.a.x), global0.b, 1u, global0.c.x)), Struct_1(vec3<i32>(u_input.a.x, 28462i, global0.c.x), true, 0u, global0.d.d))), u_input.b), false);
    var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, min(~5830u, _wgslsmith_clamp_u32(global0.d.c, 6143u, global0.a.x))), vec2<u32>(var_0.x | 77865u, _wgslsmith_mult_u32(u_input.d, 41678u)));
    let var_1 = func_4(!select(vec2<bool>(global0.d.b, all(vec2<bool>(true, false))), vec2<bool>(true, true), true), global0.d.c).d;
    var_0 = ~u_input.b;
    global0 = Struct_4(global0.a, !(-26056i >= abs(global0.d.a.x)) | false, countOneBits(vec3<i32>(-(~39423i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.e, global0.c.yz), 0i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.c.x, 1i), 12736i, -1i))), global0.d, abs(_wgslsmith_mult_vec4_i32(abs(global0.e), vec4<i32>(min(-11100i, -19623i), firstTrailingBit(1i), _wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(-2147483647i, -2147483647i)), global0.d.a.x >> (26768u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-266f, -976f, true)), var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, 2817f))))));
}

