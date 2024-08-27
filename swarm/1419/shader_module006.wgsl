struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_5, 18>;

var<private> global2: f32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> bool {
    var var_0 = !(!((true && !global0.x) && arg_0.a));
    global0 = vec4<bool>(global0.x, true, arg_0.a && (u_input.d.x != ~_wgslsmith_mult_u32(1u, 77738u)), all(vec2<bool>(true, false)));
    global0 = vec4<bool>(!(!arg_0.a), true, true, false);
    let var_1 = reverseBits(~(u_input.d.x | u_input.d.x));
    return arg_0.a;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(true), Struct_2(Struct_1(false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-132f, -1169f, 112f) - vec3<f32>(-368f, -566f, -262f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1773f, 2514f, -1459f)))), select(select(!global0.xy, !vec2<bool>(global0.x, global0.x), true), vec2<bool>(false, false), !func_3(Struct_1(global0.x), -1000f, vec2<f32>(-1297f, 726f)))), (~u_input.b.wzx << (~_wgslsmith_div_vec3_u32(u_input.b.yzw, u_input.b.xzw) % vec3<u32>(32u))) ^ select(u_input.b.ywz, vec3<u32>(u_input.b.x, min(4294967295u, u_input.d.x), u_input.b.x), select(vec3<bool>(true, global0.x, false), !vec3<bool>(false, global0.x, global0.x), select(false, true, true))), vec3<bool>(!any(global0.zy) & global0.x, select(global0.x, !func_3(Struct_1(false), 379f, vec2<f32>(-153f, -1877f)), all(global0.wyz)), true));
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x - _wgslsmith_f_op_f32(trunc(var_0.b.b.x)))) != _wgslsmith_f_op_f32(-var_0.b.b.x));
    var var_2 = Struct_4(_wgslsmith_clamp_vec3_u32(max(reverseBits(var_0.c) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 3754u, var_0.c.x), var_0.c) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1u, u_input.b.x, 47423u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.x, u_input.b.x, var_0.c.x), vec3<u32>(u_input.b.x, var_0.c.x, u_input.d.x)))), ~((vec3<u32>(1u, u_input.d.x, 59711u) & vec3<u32>(4294967295u, var_0.c.x, 28917u)) & ~vec3<u32>(var_0.c.x, 0u, 0u)), ~(~vec3<u32>(var_0.c.x, 2767u, u_input.d.x))), Struct_3(var_0.b.a, var_0.b, u_input.b.wyy, select(select(select(var_0.d, vec3<bool>(true, var_1, global0.x), true), !global0.zyx, true), global0.yxz, !global0.x)), Struct_3(Struct_1(!var_0.d.x), Struct_2(Struct_1(true), var_0.b.b, select(select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_1), false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(var_1, false), global0.x), !global0.zz)), u_input.b.xxx, vec3<bool>(true, ~48712i >= min(u_input.c.x, u_input.a), var_1)));
    var var_3 = var_2.c.b.a;
    var var_4 = 1i;
    return vec4<bool>(!(_wgslsmith_f_op_f32(exp2(var_2.b.b.b.x)) <= -2188f), false, true, all(global0.zzy));
}

fn func_1(arg_0: i32, arg_1: u32) -> f32 {
    global0 = !func_2();
    global0 = !select(!select(!vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, global0.x, global0.x, true), true), !vec4<bool>(true, global0.x, global0.x, any(global0.wxx)), true);
    global0 = vec4<bool>(false, !func_3(Struct_1(any(global0.wwy)), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(983f, 1031f), vec2<f32>(1157f, -609f)) * vec2<f32>(-368f, -601f))), all(vec4<bool>(!(!global0.x), true, global0.x, true)), !(!global0.x));
    var var_0 = Struct_1(global0.x);
    global2 = -867f;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-236f - 1000f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164f * 699f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-959f + -1152f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 18>();
    var var_0 = _wgslsmith_f_op_f32(-141f - _wgslsmith_f_op_f32(func_1(-6882i, u_input.d.x)));
    let var_1 = false;
    let var_2 = Struct_1(any(!func_2().wy));
    let var_3 = select(_wgslsmith_div_i32(_wgslsmith_div_i32(min(1i, u_input.e.x) & 1i, -_wgslsmith_div_i32(-24487i, -2147483647i)), ~1i), -(~(countOneBits(u_input.e.x) & (i32(-1i) * -2147483647i))), ((~u_input.e.x & _wgslsmith_sub_i32(41696i, u_input.c.x)) >= (~u_input.c.x & _wgslsmith_add_i32(u_input.a, u_input.c.x))) && all(!select(vec2<bool>(global0.x, false), vec2<bool>(false, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wyx, 70035u, -firstTrailingBit(vec2<i32>(2147483647i, 2147483647i)) ^ vec2<i32>(~max(2147483647i, u_input.c.x), var_3), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 55336u, u_input.d.x) >> (u_input.b.zzz % vec3<u32>(32u)), vec3<u32>(1u >> (firstTrailingBit(50493u) % 32u), ~_wgslsmith_mult_u32(u_input.b.x, 68593u), 1u)));
}

