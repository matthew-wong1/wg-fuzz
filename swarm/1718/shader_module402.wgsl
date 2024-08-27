struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(233f, -2055f, 1332f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1430f, -220f), vec2<f32>(-1873f, 1000f), false))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(47994i, 33464i) >> (u_input.a % vec2<u32>(32u)), ~vec2<i32>(24767i, 0i))), any(vec3<bool>(false, false, false)) != (all(vec2<bool>(true, true)) == all(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1516f, 262f), vec2<f32>(1083f, -1339f)))))));
    var_0 = Struct_2(Struct_1(var_0.a.a, var_0.a.a.yz, ~(-6258i), true, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.e.x)), -960f), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(var_0.a.a.x + -253f))))));
    let var_1 = vec3<f32>(var_0.a.b.x, _wgslsmith_div_f32(var_0.a.e.x, _wgslsmith_f_op_f32(round(1067f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -933f)))), _wgslsmith_f_op_f32(-248f + _wgslsmith_f_op_f32(var_0.a.e.x * _wgslsmith_f_op_f32(var_0.a.a.x + -2913f)))));
    let var_2 = _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-349f + _wgslsmith_div_f32(var_1.x, -993f)))));
    var var_3 = firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(u_input.c.yx), abs(vec2<u32>(u_input.c.x, u_input.a.x))) ^ 0u, 64759u, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.a.x), 20282u), u_input.a.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -537f))), var_1.x));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: f32) -> i32 {
    var var_0 = arg_0.c.a;
    var var_1 = Struct_4(vec2<bool>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 1u), vec4<u32>(32106u, u_input.a.x, u_input.c.x, u_input.c.x)) > abs(u_input.b), var_0.d, arg_2), reverseBits(2167i) > select(-arg_0.b, var_0.c, select(false, arg_0.e, arg_0.c.a.d))), _wgslsmith_div_i32(abs(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, 2147483647i, 1i, var_0.c) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1693u, u_input.c.x, 0u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b, 60684i, arg_0.b, arg_0.c.a.c), vec4<i32>(var_0.c, arg_0.c.a.c, 1i, 35373i), vec4<i32>(arg_0.c.a.c, var_0.c, 2418i, arg_0.c.a.c)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b, -39805i, arg_0.b, arg_0.c.a.c), vec4<i32>(var_0.c, -32414i, -31611i, 22447i))))), arg_0.c, !select(vec2<bool>(any(arg_0.d), var_0.d), !select(vec2<bool>(arg_0.e, false), arg_0.d, var_0.d), !(!arg_0.a)), var_0.d);
    var var_2 = Struct_4(arg_0.a, reverseBits(arg_0.c.a.c >> ((select(4294967295u, 88603u, arg_2) & ~u_input.a.x) % 32u)), arg_0.c, vec2<bool>(all(vec3<bool>(select(false, true, true), var_1.c.a.d, true)), !(2961f < _wgslsmith_f_op_f32(-var_0.a.x))), !any(!vec3<bool>(arg_2, false, arg_0.a.x)));
    let var_3 = u_input.c.x;
    var_0 = Struct_1(var_2.c.a.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_2.c.a.e, vec2<f32>(var_0.a.x, 631f)))), vec2<f32>(1160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.a.e.x)))), false)), 40740i, true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.b.x) * _wgslsmith_f_op_f32(-632f - _wgslsmith_f_op_f32(f32(-1f) * -149f))), _wgslsmith_f_op_f32(var_1.c.a.b.x + _wgslsmith_f_op_f32(min(-435f, var_0.e.x)))));
    return var_2.c.a.c;
}

fn func_2() -> StorageBuffer {
    let var_0 = Struct_4(select(vec2<bool>(all(vec3<bool>(false, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), vec2<bool>(any(vec2<bool>(true, true)), !all(vec4<bool>(false, true, false, false)))), _wgslsmith_sub_i32(-func_4(Struct_4(vec2<bool>(false, true), 10184i, Struct_2(Struct_1(vec3<f32>(1945f, -1000f, 177f), vec2<f32>(1128f, -2181f), -2147483647i, true, vec2<f32>(1309f, 344f))), vec2<bool>(false, false), true), _wgslsmith_f_op_f32(func_3()), false, _wgslsmith_f_op_f32(f32(-1f) * -458f)), _wgslsmith_dot_vec2_i32(vec2<i32>(func_4(Struct_4(vec2<bool>(false, true), -1i, Struct_2(Struct_1(vec3<f32>(-565f, 487f, 1450f), vec2<f32>(875f, -239f), 56832i, false, vec2<f32>(-1035f, -948f))), vec2<bool>(false, false), true), 423f, true, 740f), abs(-54619i)), abs(vec2<i32>(1i, 21304i)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1959f, 300f, -452f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-200f, 683f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-329f, -318f) * vec2<f32>(-845f, -208f))), -4666i, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1024f, -225f)))), select(vec2<bool>(true, !select(false, true, true)), !vec2<bool>(any(vec2<bool>(true, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))))), !any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)));
    var var_1 = vec4<bool>(all(select(var_0.d, vec2<bool>(select(true, var_0.a.x, var_0.e), var_0.e), var_0.a)), var_0.c.a.d, var_0.d.x & any(var_0.a), !all(!vec4<bool>(var_0.c.a.d, var_0.d.x, var_0.c.a.d, false)));
    var var_2 = select(!select(select(select(vec4<bool>(var_1.x, var_0.d.x, var_1.x, var_0.e), vec4<bool>(var_1.x, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.a.x, true, var_1.x)), !select(vec4<bool>(true, var_0.d.x, var_0.d.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_0.a.x), select(false, any(vec4<bool>(var_0.e, true, var_1.x, false)), all(vec4<bool>(var_0.e, false, var_0.d.x, var_0.a.x)))), !vec4<bool>(!(false && var_1.x), var_1.x, select(var_1.x, true, any(vec3<bool>(false, false, var_1.x))), true), vec4<bool>(var_1.x, !(!any(vec3<bool>(var_1.x, true, true))), !(!all(var_0.a)), !(var_0.c.a.e.x == _wgslsmith_f_op_f32(-193f - 592f))));
    let var_3 = select(vec3<bool>(var_1.x, var_1.x, false), select(select(!select(var_1.wzy, vec3<bool>(var_2.x, true, var_0.c.a.d), var_2.yxy), vec3<bool>(var_1.x == var_0.a.x, !var_0.a.x, var_0.d.x), 1000f > _wgslsmith_f_op_f32(abs(var_0.c.a.b.x))), vec3<bool>(true, !var_2.x, any(var_2.xz) && any(var_2.xz)), var_2.x), var_1.x);
    var_2 = vec4<bool>(select(true, true, false), true, u_input.c.x > 118155u, var_3.x);
    return StorageBuffer(41883u, ~vec2<i32>(firstTrailingBit(var_0.b), _wgslsmith_sub_i32(-1i, ~1i)), ~max(~var_0.b, countOneBits(_wgslsmith_mult_i32(-2147483647i, var_0.b))), (_wgslsmith_add_vec4_i32(vec4<i32>(20989i, 29263i, var_0.b, 44434i), -vec4<i32>(16560i, var_0.b, var_0.b, var_0.b)) & reverseBits(vec4<i32>(75790i, 0i, 35447i, 39063i))) >> (countOneBits(~select(vec4<u32>(u_input.b, 26725u, u_input.b, 4294967295u), vec4<u32>(1u, 0u, u_input.b, 76261u), vec4<bool>(var_0.e, false, var_3.x, false))) % vec4<u32>(32u)), u_input.b);
}

fn func_1() -> StorageBuffer {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

