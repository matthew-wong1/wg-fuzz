struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false, vec3<i32>(0i, 0i, -1i), vec3<i32>(-17758i, 0i, 1i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    return _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(global0.b.x, 14812i, global0.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b, u_input.c), global0.b)) | global0.b, global0.c);
}

fn func_2() -> f32 {
    var var_0 = -2147483647i;
    global0 = Struct_4(true, _wgslsmith_mult_vec3_i32(global0.b, -(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 35163i, global0.c.x), global0.c, global0.c) << (~vec3<u32>(u_input.d.x, 24342u, 62879u) % vec3<u32>(32u)))), global0.c);
    var_0 = -2147483647i;
    var_0 = firstTrailingBit(max(-firstTrailingBit(~global0.c.x), func_3()));
    var_0 = global0.c.x;
    return -166f;
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = global0.b;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(543f, -109f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(499f + -616f) * _wgslsmith_f_op_f32(1113f - 457f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1546f, -428f, _wgslsmith_f_op_f32(func_2())))));
    var var_3 = Struct_3(Struct_2(Struct_1(21259u << (_wgslsmith_mult_u32(109997u, arg_0.x) % 32u), vec2<bool>(true, true), 1u, 69249i), Struct_1(0u, vec2<bool>(global0.a, select(true, global0.a, global0.a)), u_input.d.x, i32(-1i) * -7977i), global0.a));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.x)))))));
    return Struct_3(Struct_2(Struct_1(~var_3.a.b.c, vec2<bool>(true, any(vec3<bool>(global0.a, true, var_3.a.b.b.x))), ~0u, -2147483647i), var_3.a.a, var_3.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mod_vec3_u32(~u_input.d, u_input.d));
    var_0 = Struct_3(var_0.a);
    let var_1 = !select(!select(!vec3<bool>(true, false, var_0.a.b.b.x), vec3<bool>(false, false, false), true), vec3<bool>(false, true, select(global0.a, !global0.a, true)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(var_0.a.b.b.x, global0.a, false), vec3<bool>(false, var_0.a.b.b.x, global0.a)), select(vec3<bool>(false, global0.a, false), vec3<bool>(true, false, true), vec3<bool>(var_0.a.a.b.x, global0.a, var_0.a.c)), select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, var_0.a.c, true), false)), select(select(vec3<bool>(false, true, global0.a), vec3<bool>(false, false, var_0.a.b.b.x), global0.a), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), true), vec3<bool>(var_0.a.c, var_0.a.b.b.x && true, any(vec3<bool>(true, false, false)))));
    var var_2 = var_1;
    var var_3 = true;
    var_2 = select(vec3<bool>(false, any(!vec3<bool>(true, global0.a, false)), true), var_1, all(select(vec2<bool>(!global0.a, !var_2.x), select(var_0.a.a.b, var_0.a.b.b, false), var_0.a.b.b.x)));
    let var_4 = Struct_3(Struct_2(func_1(~abs(vec3<u32>(21592u, 0u, u_input.d.x))).a.b, func_1(abs(u_input.d) >> ((vec3<u32>(0u, 0u, 6605u) & u_input.d) % vec3<u32>(32u))).a.a, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.d.x, 0u, 0u, 4294967295u)) >> (max(vec4<u32>(var_4.a.b.c, 35949u, 1u, 1u), select(vec4<u32>(var_0.a.b.c, u_input.d.x, var_0.a.b.c, 0u), vec4<u32>(1u, var_0.a.b.c, 4294967295u, 39227u), true)) % vec4<u32>(32u)), vec4<u32>(0u, func_1(u_input.d).a.a.c, ~max(var_0.a.a.c, u_input.d.x), abs(1u))), 39527u << (var_4.a.b.a % 32u), -22430i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1118f, -1728f, _wgslsmith_div_f32(-674f, -1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1355f, -548f, -1565f) - vec3<f32>(-536f, 465f, 753f))))), -u_input.b);
}

