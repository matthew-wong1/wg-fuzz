struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: i32 = -21597i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_sub_i32(0i, u_input.b);
    global1 = ~var_0 ^ u_input.b;
    global0 = array<Struct_1, 14>();
    let var_1 = vec3<bool>(64093u == u_input.a.x, true, _wgslsmith_f_op_f32(ceil(-854f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-436f)), -908f))));
    return select(var_1.zy, !vec2<bool>(var_1.x, true), select(var_1.xz, var_1.yx, !(!vec2<bool>(var_1.x, var_1.x))));
}

fn func_2() -> Struct_2 {
    let var_0 = func_3();
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global1 = max(22185i, -(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(u_input.b, u_input.b, 4941i, 14837i), vec4<i32>(-2147483647i, u_input.b, 0i, u_input.b)), abs(vec4<i32>(u_input.b, 96i, 38098i, -25662i))) << (26669u % 32u)));
    global0 = array<Struct_1, 14>();
    return Struct_2(global0[_wgslsmith_index_u32(0u, 14u)], vec3<bool>(false, var_0.x, all(vec3<bool>(true, var_0.x, true))), select(!select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, false, var_0.x), false), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x), vec3<bool>(false, false, true & var_0.x), all(vec3<bool>(u_input.b >= u_input.b, var_0.x, true))), -1i <= -(~_wgslsmith_add_i32(90581i, u_input.b)), vec4<i32>(_wgslsmith_mult_i32(~u_input.b, u_input.b), ~1i, -983i, 12295i | -_wgslsmith_mod_i32(-54986i, u_input.b)));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = var_0;
    let var_2 = Struct_2(Struct_1(var_1.c.yx, !vec2<bool>(func_3().x, all(vec4<bool>(false, true, true, true))), firstTrailingBit(~21647u) >= min(u_input.a.x, u_input.a.x)), func_2().b, !vec3<bool>(select(0i > arg_0, !var_0.d, var_0.e.x <= u_input.b), false, (var_0.e.x >= 22873i) & !arg_1.b.x), var_1.d, func_2().e);
    var var_3 = var_2.e;
    var var_4 = Struct_2(var_0.a, !(!select(vec3<bool>(var_2.c.x, arg_1.c.x, true), var_1.c, var_1.b)), func_2().c, true, max((select(vec4<i32>(var_0.e.x, arg_1.e.x, arg_0, u_input.b), var_1.e, vec4<bool>(var_0.d, var_0.d, var_2.a.b.x, false)) | -vec4<i32>(arg_1.e.x, 0i, var_0.e.x, var_2.e.x)) >> (vec4<u32>(u_input.a.x & u_input.a.x, ~25956u, ~4294967295u, ~0u) % vec4<u32>(32u)), arg_1.e));
    return Struct_2(func_2().a, !(!(!vec3<bool>(false, var_0.b.x, false))), select(!(!vec3<bool>(false, var_4.c.x, true)), vec3<bool>(false, all(var_4.c.yz), true), vec3<bool>(true & (u_input.b >= 5651i), true, any(select(vec4<bool>(false, false, var_4.a.b.x, false), vec4<bool>(false, false, true, arg_1.d), false)))), func_2().b.x, func_2().e);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_add_u32(69637u, 69559u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), vec2<u32>(select(u_input.a.x, u_input.a.x, false), 1u)));
    var var_1 = !vec4<bool>((u_input.a.x > ~78020u) || true, any(vec3<bool>(true, true, true)), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !(!(var_0 < 86079u)));
    global0 = array<Struct_1, 14>();
    var var_2 = func_4(-2147483647i, func_2());
    let var_3 = vec2<bool>(true, any(var_2.a.b));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    var var_0 = func_1();
    let var_1 = -1210f;
    var var_2 = select(_wgslsmith_add_i32(abs(var_0.e.x | -2264i) | func_2().e.x, u_input.b & (_wgslsmith_div_i32(81032i, 9441i) >> (u_input.a.x % 32u))), -_wgslsmith_mult_i32(0i, u_input.b), false);
    let var_3 = func_1();
    global1 = -57970i;
    global0 = array<Struct_1, 14>();
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(~1i, vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(~u_input.a.x), min(u_input.a.x, ~u_input.a.x)), 1u), ~var_3.e.wyw, var_3.e.yw | var_3.e.ww);
}

