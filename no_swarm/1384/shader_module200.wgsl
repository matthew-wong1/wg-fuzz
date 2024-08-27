struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1252f, -1040f, 1516f);

var<private> global1: vec2<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec2<u32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(~0u, arg_0.b), u_input.a.yy) << (arg_2 % vec2<u32>(32u)));
    let var_1 = arg_0.b;
    var_0 = Struct_2(vec2<u32>(4294967295u, abs(~(~4294967295u))));
    var var_2 = -_wgslsmith_add_i32(1i, arg_1.c.a) >> (90812u % 32u);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 561f)))), _wgslsmith_f_op_f32(exp2(global0.x)), global0.x, 191f);
    return ~firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, 4294967295u)) & 1u;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1859f), arg_2.a.c.e.x), arg_2.a.c.e.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(544f, 223f), vec2<f32>(arg_0.e.x, arg_2.a.c.e.x), vec2<bool>(true, arg_2.a.a.x)))), arg_2.a.b)))) * arg_2.a.c.e);
    global0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -702f)), -462f, -758f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1495f + -413f))));
    let var_2 = arg_3;
    return _wgslsmith_mult_i32(arg_0.a, _wgslsmith_sub_i32(arg_2.a.c.a ^ 24209i, -18968i) ^ (~arg_0.d.x & arg_2.a.c.d.x)) <= u_input.c;
}

fn func_2() -> vec2<bool> {
    var var_0 = vec2<i32>(-31113i, u_input.b.x);
    let var_1 = Struct_5(~(~_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(46949u, u_input.a.x))) >= ~u_input.a.x, 5466u);
    let var_2 = -236f;
    var_0 = u_input.b.zx;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), -1736f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + global0.x) - _wgslsmith_div_f32(var_2, -3025f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2 + global0.x))) - 1340f)), _wgslsmith_f_op_f32(-var_2));
    return vec2<bool>(func_4(Struct_1(~var_0.x, firstLeadingBit(1u), u_input.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(-14894i, 7682i), u_input.b.yx, vec2<i32>(19245i, -2147483647i)), global0.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) - _wgslsmith_f_op_f32(526f * global0.x)), Struct_4(Struct_3(vec2<bool>(var_1.a, var_1.a), vec2<f32>(global0.x, var_2), Struct_1(2147483647i, 59522u, u_input.b, vec2<i32>(2147483647i, 57476i), global0.yy)), func_3(var_1, Struct_3(vec2<bool>(var_1.a, var_1.a), vec2<f32>(global0.x, var_2), Struct_1(2147483647i, var_1.b, u_input.b, vec2<i32>(var_0.x, u_input.c), global0.zz)), u_input.a.wz), Struct_2(vec2<u32>(4294967295u, u_input.a.x))), Struct_2(u_input.a.zw)) & (_wgslsmith_sub_u32(~var_1.b, ~0u) > (~14945u | max(1u, var_1.b))), -17483i < min(_wgslsmith_sub_i32(0i << (var_1.b % 32u), _wgslsmith_sub_i32(-34775i, 29725i)), u_input.b.x));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: f32) -> vec2<bool> {
    var var_0 = ~abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, _wgslsmith_mult_vec3_i32(u_input.b, u_input.b)), abs(vec3<i32>(-9430i, u_input.c, 2147483647i) | u_input.b), vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(u_input.b.x, u_input.c)), _wgslsmith_div_i32(u_input.c, -26962i))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2794f, 854f)) - 679f) * -1000f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-258f))))))), 502f, arg_2);
    let var_1 = arg_1.yz;
    let var_2 = -993f;
    var var_3 = Struct_2(~vec2<u32>((arg_0.b << (0u % 32u)) >> (~4294967295u % 32u), global1.x >> (~u_input.a.x % 32u)));
    return select(func_2(), select(var_1, !arg_1.ww, !arg_1.yw), var_1);
}

fn func_5(arg_0: Struct_3) -> Struct_5 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-460f, 128f, 2284f), vec3<f32>(arg_0.b.x, global0.x, -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1070f) - -327f), global0.x, global0.x), arg_0.a.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_0.c.e.x, arg_0.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.e.x, 498f, arg_0.b.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -545f), arg_0.c.e.x, _wgslsmith_f_op_f32(global0.x - arg_0.c.e.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.e.x, -1387f, -465f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.c.e.x, global0.x, arg_0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(155f)), -1099f, _wgslsmith_f_op_f32(max(global0.x, 2046f))))), true)));
    var var_0 = Struct_2(u_input.a.xy >> (firstTrailingBit(select(vec2<u32>(u_input.a.x, arg_0.c.b), vec2<u32>(arg_0.c.b, 74046u), select(arg_0.a, vec2<bool>(true, arg_0.a.x), vec2<bool>(true, true)))) % vec2<u32>(32u)));
    let var_1 = func_1(Struct_5(arg_0.a.x, ~arg_0.c.b), !select(vec4<bool>(arg_0.a.x, !arg_0.a.x, all(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true)), arg_0.a.x), vec4<bool>(arg_0.a.x, all(vec3<bool>(true, true, true)), true && arg_0.a.x, !arg_0.a.x), vec4<bool>(false, false, false, arg_0.a.x)), _wgslsmith_f_op_f32(-851f * _wgslsmith_f_op_f32(trunc(global0.x))));
    var_0 = Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zz, u_input.a.wx), abs(~reverseBits(var_0.a))));
    var var_2 = -1075f;
    return Struct_5(arg_0.a.x, arg_0.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(_wgslsmith_add_u32(global1.x, 7786u), ~16472u);
    var var_0 = func_5(Struct_3(!select(func_1(Struct_5(false, 1u), vec4<bool>(true, false, false, true), global0.x), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(global0.zz * global0.yx), Struct_1(-9168i, 4294967295u, countOneBits(u_input.b << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), u_input.b.xx, vec2<f32>(global0.x, global0.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 450f, _wgslsmith_f_op_f32(step(-821f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x - 111f)))))) * vec3<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 969f, true))))), _wgslsmith_f_op_f32(671f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-global0.x)))));
    let var_2 = func_3(func_5(Struct_3(!(!vec2<bool>(var_0.a, false)), vec2<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-global0.x)), Struct_1(u_input.b.x ^ 1i, 45505u, vec3<i32>(33318i, u_input.b.x, u_input.b.x), vec2<i32>(30159i, 2543i), global0.zx))), Struct_3(select(!(!vec2<bool>(var_0.a, var_0.a)), vec2<bool>(var_0.b == 51221u, var_0.a), vec2<bool>(true, any(vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.xy, vec2<f32>(global0.x, global0.x))), Struct_1(u_input.b.x, u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, 4294967295u, var_0.b), vec4<u32>(1u, var_0.b, 27715u, u_input.a.x)) % 32u), u_input.b << ((u_input.a.wyz ^ vec3<u32>(0u, 49519u, var_0.b)) % vec3<u32>(32u)), _wgslsmith_add_vec2_i32(u_input.b.xy, vec2<i32>(0i, u_input.c)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.yz))))), select(~vec2<u32>(~1u, ~u_input.a.x), abs(vec2<u32>(~1u, ~45608u)), vec2<bool>(false, var_0.a & !var_0.a)));
    var_0 = Struct_5(!func_5(Struct_3(vec2<bool>(false, false), _wgslsmith_div_vec2_f32(var_1.xz, vec2<f32>(var_1.x, var_1.x)), Struct_1(u_input.c, 4294967295u, u_input.b, vec2<i32>(-16393i, 0i), vec2<f32>(global0.x, var_1.x)))).a, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(select(u_input.b, u_input.b, true), firstLeadingBit(abs(vec3<i32>(0i, 1i, u_input.b.x)))), ~32346u, -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 1480i), countOneBits(vec2<i32>(9470i, u_input.b.x))), _wgslsmith_add_i32(-1i, u_input.c), -34500i, _wgslsmith_div_i32(-u_input.c, firstLeadingBit(u_input.b.x))), 1i);
}

