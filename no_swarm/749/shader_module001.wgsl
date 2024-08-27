struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_4(!(true && (_wgslsmith_div_f32(arg_0, arg_0) == 846f)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(161f, -796f))), var_0.a, vec4<u32>(1u, 1u, 1u, 1u), countOneBits(-28110i)), vec4<u32>(_wgslsmith_mod_u32(countOneBits(1u), _wgslsmith_mult_u32(1u, 1u)), 1u, firstTrailingBit(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 20072u), vec2<u32>(1u, 39355u)))));
    var var_2 = var_1.a.c;
    let var_3 = select(!vec4<bool>(!var_0.a, select(!var_1.a.b, !var_0.a, any(vec3<bool>(var_0.a, false, false))), false, var_0.a), !(!(!(!vec4<bool>(var_1.a.b, var_0.a, var_1.a.b, false)))), !vec4<bool>(any(vec3<bool>(false, var_0.a, var_1.a.b)), true, !any(vec2<bool>(var_1.a.b, var_1.a.b)), any(!vec3<bool>(false, var_1.a.b, false))));
    var_0 = Struct_4(_wgslsmith_mult_i32(u_input.a.x, -_wgslsmith_add_i32(-1619i, u_input.a.x)) > firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.a.wyz, _wgslsmith_mod_vec3_i32(u_input.a.yzz, u_input.a.yzw))));
    return 259f;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-449f, -574f, -2027f) - vec3<f32>(-163f, 757f, 296f)))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.yy - var_0.xz), _wgslsmith_f_op_vec2_f32(-var_0.yz), vec2<bool>(true, true))))), !select(true, true, true), _wgslsmith_clamp_vec4_u32(select(abs(vec4<u32>(23154u, 37004u, 0u, 0u)), select(vec4<u32>(1u, 43u, 1u, 1u), vec4<u32>(76935u, 97698u, 4294967295u, 13067u), false), vec4<bool>(true, false, false, true)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(15696u, 0u, 117767u, 0u)), vec4<u32>(0u, 1u, 80099u, 4294967295u)), vec4<u32>(1u, 1u, _wgslsmith_mod_u32(4294967295u, 102565u), 1u)), arg_0.x), abs(vec4<u32>(~(~10313u), min(~16841u, ~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(96721u, 57018u, 4294967295u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_div_u32(1u, 51920u))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(-650f))) * _wgslsmith_f_op_f32(f32(-1f) * -1059f)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-527f, -370f) - _wgslsmith_f_op_f32(-var_1.a.a.x)))));
    var_0 = vec3<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.a.x * _wgslsmith_f_op_f32(-var_1.a.a.x)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1388f) - _wgslsmith_f_op_f32(-var_1.a.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_0.x)), 132f));
    let var_2 = _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(~4294967295u, abs(4294967295u)), var_1.b.x), vec2<u32>(~firstLeadingBit(var_1.a.c.x), var_1.b.x));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zy)), false, _wgslsmith_sub_vec4_u32(select(firstLeadingBit(var_1.b), var_1.b, true), firstLeadingBit(countOneBits(var_1.a.c))), -(var_1.a.d ^ -2147483647i)), var_1.a);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(firstTrailingBit(u_input.a.yyz));
    var_0 = Struct_2(func_2(vec3<i32>(countOneBits(66890i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yx, vec2<i32>(var_0.a.d, u_input.a.x)), u_input.a.wy), u_input.a.x)).b, func_2(vec3<i32>(-u_input.a.x, var_0.b.d ^ _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, var_0.a.d, u_input.a.x, -2147483647i)), var_0.a.d)).b);
    var_0 = func_2(vec3<i32>(-47022i, u_input.a.x, -10648i));
    var_0 = func_2(firstLeadingBit(-vec3<i32>(func_2(vec3<i32>(var_0.a.d, var_0.b.d, -1i)).a.d, 16218i, firstLeadingBit(u_input.a.x))));
    let var_1 = abs(max(~1u, ~reverseBits(var_0.a.c.x))) & ~var_0.b.c.x;
    return func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(min(var_0.a.d, var_0.b.d) >> (max(94524u, 24566u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.a.d, var_0.b.d, var_0.b.d), vec4<i32>(30602i, var_0.a.d, -6112i, u_input.a.x)), var_0.b.d), abs(select(u_input.a.zyw & vec3<i32>(-23066i, 18740i, 2147483647i), countOneBits(u_input.a.wzx), !vec3<bool>(var_0.a.b, false, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> vec3<u32> {
    var var_0 = vec2<i32>(reverseBits(arg_0.a.d), countOneBits(arg_0.a.d) | 2147483647i);
    var var_1 = arg_0;
    var_0 = -max(-(~(u_input.a.yz ^ vec2<i32>(var_1.a.d, -18638i))), select(u_input.a.xz, _wgslsmith_add_vec2_i32(vec2<i32>(60259i, var_1.a.d), vec2<i32>(-2147483647i, 12856i)), select(!vec2<bool>(true, arg_0.a.b), vec2<bool>(true, true), !vec2<bool>(arg_0.a.b, true))));
    let var_2 = arg_0.a.c;
    let var_3 = !(!any(select(vec2<bool>(var_1.a.b, var_1.a.b), vec2<bool>(false, false), true)));
    return var_1.a.c.zxy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1148f, _wgslsmith_f_op_f32(round(433f))))), 782f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-464f + -935f) - 538f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-501f + var_1), var_1) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -120f) + vec2<f32>(-998f, -809f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1287f, var_1), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-762f, var_0.x), vec2<f32>(var_1, var_1), true)), vec2<f32>(var_1, var_1)), vec2<f32>(var_1, _wgslsmith_f_op_f32(min(var_0.x, var_1)))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)))))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_1)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-659f, var_0.x)))), !(_wgslsmith_div_i32(1i, -32472i) >= (u_input.a.x | 46222i)), vec4<u32>(1u, _wgslsmith_sub_u32(~13906u, ~30776u), abs(~39889u), 1u), _wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.a.x)), countOneBits(~vec4<u32>(~4294967295u, 1u, 1u, max(3466u, 4294967295u))));
    let var_3 = func_4(Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-536f + -835f), var_1), var_2.a.b, abs(var_2.b & var_2.a.c), -var_2.a.d), abs(var_2.a.c)), func_1(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(167f, _wgslsmith_f_op_f32(var_1 - var_1)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.a - var_2.a.a))) * vec2<f32>(var_1, -583f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(176f, 312f))));
    let var_4 = func_2(vec3<i32>(20542i, 2147483647i, var_2.a.d)).a.d;
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.a - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, var_2.a.a.x))), _wgslsmith_f_op_vec2_f32(-var_2.a.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, min(~0u & var_2.b.x, select(90274u, ~var_3.x, var_2.a.b)), ~1u), ~var_4, ~(~1u), ~u_input.a.zw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x)));
}

