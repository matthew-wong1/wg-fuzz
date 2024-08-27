struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(6907u, 0u, 4294967295u);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: f32) -> i32 {
    return ~u_input.a.x;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_div_i32(0i, 47770i);
    global0 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, max(vec3<u32>(4294967295u, 0u, global0.x), countOneBits(vec3<u32>(11072u, global0.x, 42717u)))), min(u_input.b, u_input.b << (vec3<u32>(u_input.b.x, global0.x, global0.x) % vec3<u32>(32u))) | (u_input.b & u_input.b));
    global1 = vec2<bool>(!(!(!global1.x)), true);
    var_0 = -20618i;
    global0 = ~u_input.b;
    return 1u < u_input.b.x;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = arg_1.c.x;
    global0 = select(_wgslsmith_div_vec3_u32(~u_input.b, _wgslsmith_mod_vec3_u32(u_input.b, min(vec3<u32>(48079u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, arg_0)))) >> ((vec3<u32>(_wgslsmith_sub_u32(20352u, 14139u), 79757u, ~40605u) << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.b, global1.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.b.x))))), arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(800f + 704f), _wgslsmith_f_op_f32(-arg_1.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-756f + -232f) + -489f)), -1247f);
    let var_2 = ~1u;
    var var_3 = Struct_4(Struct_2(Struct_1(~(u_input.a.x | -1i), arg_1.b, vec4<i32>(~38183i, -1424i, min(-1i, arg_1.a), arg_1.a), 14075i), _wgslsmith_mod_i32(-37923i, 1i), arg_1), Struct_1(_wgslsmith_add_i32(max(-2147483647i, 1i) | -u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, arg_1.d), 0i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b - arg_1.b)), vec4<i32>(-1i) * -min(vec4<i32>(6915i, 17734i, u_input.a.x, u_input.a.x), vec4<i32>(-16990i, -59858i, arg_1.d, u_input.a.x)), min(-20550i & arg_1.a, abs(u_input.a.x)) & firstLeadingBit(min(2147483647i, 2147483647i))), u_input.a.x, !(!(false == (arg_2.a || arg_2.a))));
    return (~select(reverseBits(vec4<u32>(var_2, 4294967295u, u_input.b.x, 60002u)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 0u, 3385u, 4294967295u), vec4<u32>(global0.x, global0.x, arg_0, global0.x)), any(vec3<bool>(arg_2.a, true, arg_2.a))) & _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_2, var_2, var_2) << (vec4<u32>(global0.x, 63175u, 45435u, var_2) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2, global0.x, 0u, 6775u), vec4<u32>(0u, global0.x, 1u, 0u))), select(vec4<u32>(global0.x, var_2, 49520u, 24508u), ~vec4<u32>(8627u, 1u, 1u, 60829u), !vec4<bool>(false, true, true, arg_2.a)))) | abs(vec4<u32>(~(arg_0 << (global0.x % 32u)), arg_0, 0u, _wgslsmith_mod_u32(~var_2, _wgslsmith_mod_u32(global0.x, arg_0))));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(true);
    var var_1 = 274f;
    let var_2 = 280f;
    var var_3 = ~(~(~global0.xy | ~u_input.b.yy) | (max(~vec2<u32>(0u, 58424u), firstTrailingBit(vec2<u32>(53070u, u_input.b.x))) << (u_input.b.yx % vec2<u32>(32u))));
    var_3 = vec2<u32>(global0.x, 55479u);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(any(vec4<bool>(global1.x, true, true, true)), global1.x, all(vec3<bool>(true, global1.x, global1.x)) && (-1i == u_input.a.x), any(!select(vec4<bool>(global1.x, false, true, true), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, true, false, global1.x))));
    global1 = var_0.yy;
    global1 = !select(var_0.ww, var_0.ww, !any(vec2<bool>(false, global1.x)));
    let var_1 = vec4<i32>(2147483647i, u_input.a.x, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2007f, 572f, false)) * 1863f) - _wgslsmith_f_op_f32(-106f + _wgslsmith_f_op_f32(step(-510f, -1120f))))), u_input.a.x);
    var var_2 = func_4(!func_2(), Struct_2(Struct_1(var_1.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-746f, 576f, -2241f, 635f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1288f, -805f, -993f), vec4<f32>(263f, 3246f, 135f, -875f))), true)), ~abs(vec4<i32>(u_input.a.x, var_1.x, var_1.x, u_input.a.x)), var_1.x), u_input.a.x, Struct_1(-(i32(-1i) * -11241i), vec4<f32>(-151f, _wgslsmith_f_op_f32(402f + -629f), _wgslsmith_f_op_f32(trunc(375f)), -214f), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i, -1i, -1i), var_1) << (func_3(u_input.b.x, Struct_1(-24549i, vec4<f32>(-834f, -1418f, -142f, -1528f), var_1, u_input.a.x), Struct_3(true)) % vec4<u32>(32u)), _wgslsmith_add_i32(u_input.a.x, 0i))));
    global0 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(select(_wgslsmith_mod_u32(global0.x, u_input.b.x), global0.x, false), ~global0.x >> (u_input.b.x % 32u), global0.x), u_input.b, !(var_0.x && (19834u <= u_input.b.x))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(max(~vec2<i32>(var_1.x, var_1.x), reverseBits(var_1.zw))), 1i, i32(-1i) * -48248i, firstTrailingBit(~0i) >> (reverseBits(~(~51115u)) % 32u), reverseBits(vec2<i32>(min(var_2.c.d, min(var_2.b, 0i)), ~abs(50530i))));
}

