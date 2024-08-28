struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(13873i, -32200i, -1i, 24920i), false, vec3<i32>(1i, 2147483647i, 1i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_add_vec4_i32(firstLeadingBit(~global0.a), vec4<i32>(-1i) * -global0.a), true, reverseBits(min(arg_2.b.c, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.b.c.x, -21906i, -2147483647i), vec3<i32>(arg_2.b.a.x, 1i, global0.a.x)) << (vec3<u32>(u_input.c.x, 8542u, u_input.a) % vec3<u32>(32u)))));
    var var_1 = ~_wgslsmith_sub_vec2_u32(u_input.b.xz, abs(vec2<u32>(min(30533u, 0u), 1u)));
    let var_2 = arg_2.a;
    var var_3 = vec2<i32>(-1i) * -(~_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, -2147483647i), ~global0.c.yy));
    let var_4 = var_0.c.x;
    return arg_1.zx;
}

fn func_3(arg_0: i32) -> vec4<i32> {
    let var_0 = (0u ^ firstTrailingBit(_wgslsmith_clamp_u32(~11207u, firstLeadingBit(u_input.c.x), 1u))) << (u_input.b.x % 32u);
    var var_1 = vec3<bool>(all(!select(!vec4<bool>(global0.b, global0.b, global0.b, global0.b), !vec4<bool>(false, global0.b, global0.b, false), vec4<bool>(global0.b, true, global0.b, global0.b))), global0.b, false);
    var_1 = !(!select(select(vec3<bool>(true, true, true), !vec3<bool>(var_1.x, true, global0.b), false), vec3<bool>(var_1.x, true, any(vec4<bool>(false, var_1.x, global0.b, false))), vec3<bool>(true, func_1(-3211f, vec3<bool>(false, var_1.x, false), Struct_3(1000f, Struct_2(vec4<i32>(global0.a.x, 0i, global0.a.x, global0.c.x), true, global0.c)), false).x, any(vec3<bool>(true, global0.b, var_1.x)))));
    var_1 = select(select(vec3<bool>(true, 1i >= _wgslsmith_div_i32(global0.a.x, -2147483647i), false), vec3<bool>(true, func_1(_wgslsmith_f_op_f32(-1000f - -505f), !vec3<bool>(true, global0.b, false), Struct_3(1000f, Struct_2(vec4<i32>(global0.a.x, -6778i, global0.c.x, arg_0), var_1.x, global0.c)), var_1.x).x, true), vec3<bool>(global0.b, ~4294967295u < min(4294967295u, u_input.c.x), var_1.x)), vec3<bool>(false, global0.b, global0.b), var_1.x);
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(global0.c, abs(vec3<i32>(reverseBits(-1i), -3665i, -36963i))), true);
    return ~vec4<i32>(i32(-1i) * -var_2.a, 0i, abs(0i), i32(-1i) * -4036i);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = 37373u;
    var var_1 = Struct_2(reverseBits(select(func_3(~arg_1), min(-vec4<i32>(arg_1, arg_1, global0.c.x, arg_1), global0.a), !(arg_1 >= 9045i))), !global0.b, global0.a.xzx);
    let var_2 = var_1.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(729f, 134f), -111f)))));
    var var_4 = 1u;
    return Struct_2(~(~global0.a), arg_2, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(select(select(select(select(vec2<bool>(global0.b, global0.b), vec2<bool>(false, global0.b), global0.b), select(vec2<bool>(true, false), vec2<bool>(global0.b, global0.b), false), func_1(2339f, vec3<bool>(true, false, false), Struct_3(645f, Struct_2(global0.a, global0.b, global0.a.wxx)), global0.b)), vec2<bool>(global0.b, true), vec2<bool>(all(vec2<bool>(global0.b, global0.b)), any(vec3<bool>(true, true, true)))), select(vec2<bool>(true, true), select(select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, true), vec2<bool>(global0.b, true)), !vec2<bool>(false, global0.b), global0.b), !vec2<bool>(global0.b, global0.b)), vec2<bool>(global0.b, any(select(vec4<bool>(global0.b, false, global0.b, true), vec4<bool>(true, global0.b, true, global0.b), vec4<bool>(global0.b, false, true, global0.b))))), _wgslsmith_sub_i32(countOneBits(0i), 0i), !(15851i >= (global0.a.x ^ global0.c.x)), 296f);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -875f)))), Struct_2(_wgslsmith_add_vec4_i32(-global0.a, max(vec4<i32>(7839i, -5755i, 0i, -1i), vec4<i32>(var_0.a.x, var_0.c.x, global0.c.x, global0.a.x))) >> (~(vec4<u32>(44456u, u_input.b.x, u_input.b.x, u_input.a) << (vec4<u32>(4143u, 34741u, u_input.b.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), true, _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(global0.a.x, 13775i, 1i) & var_0.c), -var_0.a.xzz << (~u_input.b % vec3<u32>(32u)))));
    var_0 = var_1.b;
    let var_2 = _wgslsmith_f_op_f32(-738f * _wgslsmith_f_op_f32(floor(var_1.a)));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))) * _wgslsmith_f_op_f32(f32(-1f) * -572f)), u_input.c.zxz, all(select(vec3<bool>(false, global0.b, true), !vec3<bool>(var_0.b, true, false), var_1.b.b)) & (~(-46044i >> (u_input.a % 32u)) > _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.c.x, var_1.b.c.x, -50807i, global0.c.x), vec4<i32>(var_1.b.c.x, global0.c.x, var_1.b.a.x, var_1.b.a.x)), 7820i)), _wgslsmith_dot_vec3_u32(u_input.c.yzw, reverseBits(~(u_input.c.zyw >> (u_input.c.wyy % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(vec4<u32>(1u, u_input.b.x, u_input.c.x, 4294967295u) | ~u_input.c), select(abs(vec4<u32>(4294967295u, 11259u, u_input.a, 40841u)), u_input.c ^ vec4<u32>(var_3.b.x, 112524u, 4294967295u, u_input.b.x), vec4<bool>(true, true, global0.b, var_3.c)) ^ countOneBits(countOneBits(vec4<u32>(u_input.a, 2434u, var_3.b.x, 16800u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * 602f) - _wgslsmith_f_op_f32(step(var_1.a, var_2))) + _wgslsmith_f_op_f32(floor(var_1.a))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f * var_2)), var_3.a))), ~vec2<u32>(_wgslsmith_mod_u32(~var_3.d, firstLeadingBit(var_3.d)), _wgslsmith_clamp_u32(u_input.b.x, u_input.a, 1u) | 31925u), min(_wgslsmith_div_i32(0i, _wgslsmith_add_i32(-1i, select(global0.c.x, global0.c.x, false))), _wgslsmith_dot_vec4_i32(global0.a, var_0.a)));
}

