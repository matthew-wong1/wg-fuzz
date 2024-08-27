struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> vec4<i32> {
    var var_0 = u_input.d;
    var var_1 = u_input.c;
    var var_2 = -u_input.c;
    global1 = array<Struct_1, 31>();
    return abs(_wgslsmith_add_vec4_i32(vec4<i32>(-u_input.c, u_input.c >> (u_input.b % 32u), 0i >> (u_input.d % 32u), ~(-996i)) & countOneBits(-vec4<i32>(u_input.c, u_input.c, u_input.c, -44731i)), min(vec4<i32>(-1824i, -2147483647i, 1i | u_input.c, -13619i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(29704i, u_input.c, 0i, u_input.c), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c)))));
}

fn func_1() -> Struct_3 {
    var var_0 = !(!vec2<bool>(_wgslsmith_div_u32(u_input.b, 0u) > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.a, u_input.b), vec3<u32>(0u, u_input.b, u_input.d)), global0.x));
    var var_1 = vec2<i32>(0i, 1i);
    let var_2 = u_input.d;
    var_0 = select(global0.zy, vec2<bool>(!var_0.x, true), select(global0.zy, global0.xz, global0.x));
    let var_3 = reverseBits(func_2());
    return Struct_3(select(vec2<bool>(false, false), global0.xy, true), !global0.xx, vec2<u32>(u_input.d, countOneBits(~4294967295u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> i32 {
    let var_0 = ~1i;
    global0 = !vec3<bool>(true, !all(vec2<bool>(true, true)), all(!(!vec4<bool>(global0.x, global0.x, false, true))));
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-336i), var_0, max(-6930i, -9730i ^ var_0), -2147483647i), max(vec4<i32>(var_0, -40923i, 22517i, 2147483647i), vec4<i32>(var_0, -7360i, var_0, 0i)) >> (~firstLeadingBit(vec4<u32>(11623u, u_input.d, 73460u, u_input.b)) % vec4<u32>(32u))), var_0, _wgslsmith_mult_i32(~u_input.c, -1i));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> i32 {
    var var_0 = -vec2<i32>(arg_2, _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(1i, arg_2, arg_2), 1i));
    let var_1 = true;
    global0 = vec3<bool>(true, false, false);
    var var_2 = Struct_3(vec2<bool>(global0.x, ~func_2().x >= ~_wgslsmith_add_i32(u_input.c, arg_2)), !func_1().a, arg_1.c);
    var_2 = func_1();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f) - _wgslsmith_f_op_f32(-547f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1293f + -147f)))));
    var var_2 = vec4<i32>(51551i, u_input.c, _wgslsmith_add_i32(func_4(func_1(), Struct_3(vec2<bool>(true, true), !global0.xx, ~vec2<u32>(u_input.d, u_input.d)), _wgslsmith_mult_i32(func_3(vec2<f32>(-1626f, -1031f), -405f), 2147483647i)), 1i), _wgslsmith_div_i32(_wgslsmith_div_i32(-(~u_input.c), max(-u_input.c, -22741i)), 47589i));
    global1 = array<Struct_1, 31>();
    var_1 = 1242f;
    let var_3 = abs(vec2<i32>(1i, -(~_wgslsmith_clamp_i32(-25643i, 1i, -8469i))));
    var var_4 = Struct_2(4294967295u, select(all(vec3<bool>(func_1().a.x, true, any(vec2<bool>(global0.x, global0.x)))), u_input.a != 1u, all(vec2<bool>(true, var_3.x <= -1i))));
    let var_5 = false;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-120f * 1178f), _wgslsmith_f_op_f32(f32(-1f) * -2019f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f + 832f)), _wgslsmith_dot_vec2_i32(var_3, vec2<i32>(-39428i, var_2.x)) < -5898i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yxw, reverseBits(4294967295u));
}

