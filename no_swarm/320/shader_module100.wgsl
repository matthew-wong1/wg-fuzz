struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 30>;

var<private> global1: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<Struct_5, 30>();
    let var_0 = arg_0.x;
    return vec4<bool>(false, global1.x, !(!global1.x), true);
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_4(1f, any(select(vec4<bool>(true, !global1.x, !global1.x, true), vec4<bool>(!global1.x, true, true, any(vec4<bool>(false, global1.x, global1.x, global1.x))), true)), vec3<u32>(min(_wgslsmith_mod_u32(~u_input.c.x, 49898u), u_input.b.x >> (4294967295u % 32u)), (~u_input.c.x << (~u_input.b.x % 32u)) ^ ((u_input.b.x << (1u % 32u)) << (~4317u % 32u)), 4294967295u));
    let var_1 = -firstTrailingBit(_wgslsmith_mod_i32(~(-53664i), countOneBits(1i)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))))) > _wgslsmith_f_op_f32(select(-966f, _wgslsmith_f_op_f32(f32(-1f) * -381f), true)), Struct_1(_wgslsmith_add_u32(abs(1u), _wgslsmith_mult_u32(_wgslsmith_div_u32(68510u, 37515u), _wgslsmith_div_u32(1u, 24701u))), u_input.a.x, var_1, 346f), Struct_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-602i, -47712i, u_input.a.x, var_1), u_input.a, global1.x), u_input.a), _wgslsmith_add_i32(u_input.a.x, var_1) << (~u_input.b.x % 32u)), Struct_1(select(var_0.c.x, max(5763u, 4294967295u), all(global1.wyy)), 0i, var_1, var_0.a), vec2<u32>(~(~var_0.c.x), ~0u), Struct_1(_wgslsmith_add_u32(u_input.c.x, 1u ^ u_input.b.x), ~u_input.a.x, 1i, var_0.a), -(~min(u_input.a.xz, vec2<i32>(21820i, 2147483647i)))), Struct_2(_wgslsmith_sub_i32(var_1 >> (u_input.c.x % 32u), _wgslsmith_mod_i32(var_1, 0i)), Struct_1(~reverseBits(4294967295u), var_1, 1i, var_0.a), vec2<u32>(~57011u, ~_wgslsmith_mod_u32(u_input.c.x, var_0.c.x)), Struct_1(1u, reverseBits(abs(var_1)), abs(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), vec2<i32>(~(var_1 << (var_0.c.x % 32u)), 2147483647i)));
    global0 = array<Struct_5, 30>();
    var var_3 = global0[_wgslsmith_index_u32(reverseBits(47376u), 30u)];
    return ~vec3<i32>(min(_wgslsmith_add_i32(5945i, min(var_3.a, var_1)), min(var_3.a ^ 0i, 2147483647i)), min(-2147483647i, -var_2.d.a), _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.e.e.x, var_2.e.e.x), vec3<i32>(2147483647i, var_1, var_3.a)), select(select(var_3.a, var_2.e.d.b, true), i32(-1i) * -80293i, var_2.b)));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_5, 30>();
    global0 = array<Struct_5, 30>();
    let var_0 = min(-(u_input.a.wyx >> (u_input.b % vec3<u32>(32u))), select(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-u_input.a.xzx, u_input.a.xzw << (vec3<u32>(44269u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, -1411i, u_input.a.x)), -(u_input.a.xzw ^ vec3<i32>(u_input.a.x, -42471i, u_input.a.x)), firstLeadingBit(vec3<i32>(6484i, u_input.a.x, -2147483647i))), ~_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), func_3()), true));
    var var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(508f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1720f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1283f, -751f)), -638f)), (any(func_1(vec4<bool>(true, true, global1.x, global1.x), Struct_1(u_input.c.x, var_0.x, 61269i, 670f))) | any(!vec3<bool>(global1.x, global1.x, false))) & (_wgslsmith_div_u32(1u, ~u_input.c.x) <= _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b.x, 0u), u_input.c.x)), select(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, 55530u, 34666u), ~(~vec3<u32>(u_input.b.x, u_input.b.x, 26235u))), _wgslsmith_add_vec3_u32(~firstLeadingBit(u_input.b), select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 0u, 43289u), vec3<u32>(26763u, u_input.c.x, 0u)), vec3<u32>(u_input.b.x, u_input.b.x, 1u), func_1(vec4<bool>(true, global1.x, global1.x, global1.x), Struct_1(4294967295u, u_input.a.x, var_0.x, 866f)).x)), !select(global1.ywy, !vec3<bool>(global1.x, global1.x, false), global1.x)));
    global0 = array<Struct_5, 30>();
    return Struct_1(25185u, _wgslsmith_dot_vec3_i32(~(~_wgslsmith_mod_vec3_i32(var_0, vec3<i32>(27233i, -1i, 2147483647i))), var_0), -29813i, var_1.a);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global1 = !vec4<bool>(func_1(func_1(select(vec4<bool>(true, global1.x, arg_0, arg_0), vec4<bool>(true, false, true, arg_0), arg_0), arg_2), Struct_1(arg_2.a, 1i, abs(1i), -1000f)).x, ~u_input.a.x == u_input.a.x, func_1(select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(arg_0, global1.x, true, global1.x), all(vec4<bool>(global1.x, arg_0, arg_0, true))), func_2()).x, true);
    global1 = vec4<bool>(arg_0, any(select(global1.wy, !global1.wx, global1.yy)), any(!func_1(vec4<bool>(global1.x, false, true, false), func_2())), true);
    var var_0 = 43502u;
    var var_1 = -u_input.a.x;
    var var_2 = ~(~arg_2.a) & _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_2.a, min(4294967295u, 21898u ^ u_input.b.x)), ~65u);
    return Struct_1(~(~15192u), u_input.a.x, abs(_wgslsmith_div_i32(u_input.a.x, arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f + _wgslsmith_f_op_f32(-arg_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(u_input.a.x, abs(-(~u_input.a.x)));
    global0 = array<Struct_5, 30>();
    global0 = array<Struct_5, 30>();
    let var_1 = max(u_input.a, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, -firstTrailingBit(u_input.a), ~firstTrailingBit(u_input.a)), -_wgslsmith_mult_vec4_i32(u_input.a, u_input.a)));
    global1 = !func_1(vec4<bool>(true, global1.x, true, true), Struct_1(45459u, -_wgslsmith_mult_i32(u_input.a.x, 36835i), reverseBits(0i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-275f * 176f), _wgslsmith_f_op_f32(abs(-1917f)))));
    let var_2 = select(select(select(vec2<bool>(global1.x, false | global1.x), !global1.wy, vec2<bool>(func_1(vec4<bool>(global1.x, global1.x, global1.x, true), Struct_1(0u, -2147483647i, 2147483647i, -1243f)).x, true)), vec2<bool>(any(vec3<bool>(global1.x, false, global1.x)), global1.x), vec2<bool>(true, global1.x)), !select(vec2<bool>(global1.x, true), select(global1.xz, vec2<bool>(true, global1.x), select(global1.yx, vec2<bool>(false, false), vec2<bool>(true, false))), false), !func_1(func_1(vec4<bool>(global1.x, global1.x, true, global1.x), Struct_1(64494u, -2147483647i, -1i, 245f)), func_4(global1.x, ~u_input.c.x, func_2())).wz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_4(!var_2.x | (var_1.x >= -1i), ~(4294967295u | u_input.c.x), func_2()).c, u_input.a.x, ~_wgslsmith_mult_i32(2147483647i, 1i)));
}

