struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(u_input.c), ~(~54204u ^ _wgslsmith_add_u32(u_input.c, 43078u)), ~(~4294967295u >> (max(u_input.b.x, u_input.c) % 32u)), ~arg_0.e.x), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.e.x, u_input.c), 47601u), ~firstLeadingBit(0u), u_input.c, min(max(55030u >> (u_input.b.x % 32u), ~arg_0.e.x), ~arg_0.e.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(256f))))), -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, 1109f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -843f)), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(404f, 203f), vec2<f32>(744f, 1000f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1655f, -803f), vec2<f32>(1066f, 871f), arg_0.b.xz)))))));
    var var_2 = -1000f;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-829f * _wgslsmith_f_op_f32(-var_1.x)), var_1.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(423f, var_1.x), -280f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-839f - var_1.x), var_1.x))));
    return select(select(arg_0.a, !(!arg_0.b), (u_input.a.x << (26343u % 32u)) != _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(-21830i, u_input.a.x, u_input.d.x, u_input.d.x))), vec3<bool>((arg_0.e.x ^ 0u) < ~_wgslsmith_dot_vec2_u32(var_0.yw, vec2<u32>(u_input.c, 0u)), all(arg_0.b.xx), !(var_0.x >= ~23503u)), true && !(!select(arg_0.a.x, arg_0.a.x, arg_0.b.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(true);
    global0 = 1u;
    var var_1 = _wgslsmith_add_u32(~(~_wgslsmith_div_u32(~u_input.b.x, u_input.c)), 66108u);
    var var_2 = Struct_2(select(select(!(!vec3<bool>(true, var_0.a, true)), func_3(Struct_2(vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, var_0.a, false), Struct_1(true), Struct_1(false), vec3<u32>(u_input.c, 56156u, u_input.b.x)), true), true), vec3<bool>(true, var_0.a, true), vec3<bool>(var_0.a, true, true)), vec3<bool>(all(!vec2<bool>(var_0.a, var_0.a)), false, !(!var_0.a)), var_0, Struct_1(var_0.a & any(vec2<bool>(false, false))), ~firstLeadingBit(~(u_input.b >> (vec3<u32>(4294967295u, 107027u, u_input.b.x) % vec3<u32>(32u)))));
    let var_3 = vec4<bool>(!(var_2.d.a | !var_0.a), var_2.a.x, func_3(Struct_2(select(var_2.b, select(var_2.a, var_2.b, var_0.a), true), vec3<bool>(false != var_0.a, any(vec2<bool>(var_2.d.a, var_0.a)), var_0.a), Struct_1(false), var_2.c, abs(_wgslsmith_mod_vec3_u32(var_2.e, vec3<u32>(0u, u_input.b.x, 6876u)))), true).x, var_2.c.a);
    return Struct_2(var_3.zzy, var_3.wwz, Struct_1(var_3.x), Struct_1(false), vec3<u32>(u_input.c, u_input.b.x, 72391u));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = true;
    let var_1 = func_2();
    let var_2 = var_1;
    global0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(var_1.e.x, var_1.e.x)), ~(~u_input.b.xx) | firstTrailingBit(_wgslsmith_add_vec2_u32(var_2.e.xx, var_2.e.yy))) >> (~u_input.b.x % 32u);
    let var_3 = vec4<u32>(func_2().e.x, var_1.e.x, ~func_2().e.x, _wgslsmith_sub_u32(min(~143141u, 63851u), u_input.c));
    return _wgslsmith_add_i32(u_input.d.x, -countOneBits(0i)) ^ _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(1i, -1i) & _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.d), -vec2<i32>(u_input.a.x, 2147483647i)), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(u_input.a.wyy, vec3<i32>(u_input.a.x, u_input.d.x, u_input.d.x))), abs(u_input.a.wyw)), countOneBits(_wgslsmith_dot_vec2_i32(u_input.d, -u_input.a.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.d.x, func_1(Struct_1(false)), u_input.a.x, ~1i);
    var var_1 = ~vec2<i32>(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 3873i, -9816i, u_input.a.x), u_input.a)) >> (vec2<u32>(u_input.b.x, ~u_input.b.x) % vec2<u32>(32u));
    var_0 = select(u_input.a, _wgslsmith_div_vec4_i32(countOneBits(u_input.a), vec4<i32>(var_0.x | _wgslsmith_dot_vec3_i32(u_input.a.xxy, vec3<i32>(var_1.x, u_input.d.x, 1i)), 1i << (~u_input.b.x % 32u), _wgslsmith_mult_i32(~var_1.x, 1i), _wgslsmith_clamp_i32(-var_0.x, var_0.x, var_1.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, ~u_input.b.x), reverseBits(vec4<u32>(1u, 34188u, 70795u, u_input.b.x)) & _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, u_input.c), vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 4294967295u))) <= u_input.b.x);
    var_0 = u_input.a;
    let var_2 = Struct_1(true);
    var_1 = _wgslsmith_add_vec2_i32(u_input.d, -vec2<i32>(~select(var_1.x, var_0.x, var_2.a), _wgslsmith_dot_vec3_i32(u_input.a.wxx | vec3<i32>(-42315i, -2147483647i, u_input.d.x), var_0.wzw | var_0.xzw)));
    global0 = 18244u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(u_input.c, 0u, ~u_input.b.x, min(_wgslsmith_div_u32(1u, u_input.c), u_input.c << (u_input.b.x % 32u)))), _wgslsmith_add_i32(-36873i, var_1.x));
}

