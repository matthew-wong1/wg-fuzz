struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global0.a.a.x + global0.a.a.x), _wgslsmith_f_op_f32(step(-522f, global0.a.a.x)), _wgslsmith_f_op_f32(floor(1210f)), global0.a.a.x))), _wgslsmith_sub_u32(global0.a.d, 89963u), select(!vec4<bool>(global0.a.c.x, false, true, true), vec4<bool>(global0.a.c.x, false, true, false), all(vec3<bool>(true, true, true))), ~global0.a.b), firstLeadingBit(u_input.b));
    return select(!global0.a.c, global0.a.c, (i32(-1i) * -global0.b) > ~2147483647i);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_3 {
    global0 = Struct_4(global0.a, u_input.b | abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-34991i, 2147483647i, arg_1.x, -1i)), -vec4<i32>(global0.b, arg_1.x, global0.b, -1i))));
    global0 = Struct_4(Struct_1(global0.a.a, ~abs(27301u << (0u % 32u)), global0.a.c, ~4294967295u), global0.b);
    global1 = array<Struct_2, 1>();
    global0 = Struct_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, global0.a.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(697f, -234f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(495f * arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1304f)), arg_0.x), _wgslsmith_mod_u32(12256u, global0.a.b), func_3(), global0.a.b), u_input.b);
    var var_0 = global0.a.c;
    return Struct_3(~(~vec2<u32>(min(1577u, 14201u), ~global0.a.d)), 1u, global1[_wgslsmith_index_u32(0u, 1u)], global0.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_2, 1>();
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a.a.xyw + _wgslsmith_f_op_vec3_f32(-arg_1.a.ywy)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a.x, arg_1.a.x, 624f), vec3<f32>(-954f, -1000f, global0.a.a.x))))), _wgslsmith_f_op_vec3_f32(min(global0.a.a.yyx, vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(abs(arg_1.a.x)), 700f))))), arg_0.c.c.yy);
    var_0 = arg_0;
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-460f, global0.a.a.x) - 1884f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.d.a.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.x, global0.a.a.x, arg_0.c.b))) * _wgslsmith_f_op_vec3_f32(arg_0.d.a.ywy - _wgslsmith_f_op_vec3_f32(ceil(var_0.d.a.zxz)))))), vec2<i32>(0i, arg_0.c.c.x));
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.a.wyx)), vec2<i32>(i32(-1i) * -26118i, -arg_0.c.c.x)).d;
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    return Struct_4(func_4(func_2(global0.a.a.zyx, -u_input.a), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(-114f, 191f)), _wgslsmith_f_op_f32(-arg_0.a.a.x), 1000f, arg_0.a.a.x), _wgslsmith_div_u32(~arg_0.a.b, 1u), vec4<bool>(true, false, func_2(vec3<f32>(-1120f, 1397f, 334f), u_input.a).d.c.x, any(global0.a.c.xww)), ~min(global0.a.b, arg_0.a.d))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(1i, 2147483647i, -70878i, arg_0.b), vec4<i32>(arg_0.b, u_input.b, u_input.a.x, 1i)) << (vec4<u32>(17553u, 311u, 4294967295u, global0.a.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, arg_0.b, u_input.b), vec4<i32>(u_input.a.x, global0.b, u_input.a.x, u_input.a.x)), (vec4<i32>(arg_0.b, u_input.a.x, u_input.a.x, 1i) | vec4<i32>(global0.b, global0.b, -1i, -1i)) | -vec4<i32>(0i, arg_0.b, u_input.a.x, global0.b)), vec4<i32>(_wgslsmith_mult_i32(2147483647i, 0i), _wgslsmith_sub_i32(abs(global0.b), global0.b << (3517u % 32u)), min(~1i, func_2(vec3<f32>(301f, global0.a.a.x, 642f), vec2<i32>(arg_0.b, u_input.a.x)).c.c.x), arg_0.b)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global0 = func_5(Struct_4(func_4(func_2(global0.a.a.xyz, u_input.a & vec2<i32>(1i, u_input.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(global0.a.a * vec4<f32>(global0.a.a.x, global0.a.a.x, -158f, 660f)), 0u ^ global0.a.b, vec4<bool>(global0.a.c.x, true, true, global0.a.c.x), global0.a.b)), 26447i));
    let var_0 = 40660u;
    global1 = array<Struct_2, 1>();
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(743f, _wgslsmith_f_op_f32(f32(-1f) * -713f), global0.a.a.x != -1000f)), _wgslsmith_f_op_f32(max(-756f, global0.a.a.x)), global0.a.a.x)), _wgslsmith_mult_vec2_i32(u_input.a ^ _wgslsmith_sub_vec2_i32(u_input.a, ~vec2<i32>(-4921i, 1i)), min(abs(select(u_input.a, u_input.a, vec2<bool>(false, global0.a.c.x))), -vec2<i32>(global0.b, 2147483647i)))).c;
    var var_2 = vec2<u32>(max(64878u, ~(51332u | arg_0.x)), _wgslsmith_div_u32(arg_0.x, _wgslsmith_add_u32(var_0 << (1u % 32u), var_0))) & var_1.d;
    return func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-388f, var_1.b, true)), 1035f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.a.a.x)))))), select(countOneBits(~(-var_1.c.yy)), var_1.c.xz, _wgslsmith_dot_vec2_i32(func_2(vec3<f32>(var_1.b, -225f, 279f), vec2<i32>(1i, var_1.c.x)).c.c.yy, var_1.c.xz) <= (u_input.b >> (_wgslsmith_dot_vec4_u32(var_1.a, var_1.a) % 32u)))).d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: bool) -> vec4<f32> {
    var var_0 = Struct_2(~_wgslsmith_add_vec4_u32(firstTrailingBit(arg_1.a), vec4<u32>(arg_2.x, 73041u, 0u, 26581u) ^ min(arg_1.a, vec4<u32>(13187u, 1u, 4294967295u, 38695u))), global0.a.a.x, _wgslsmith_div_vec3_i32(-(~vec3<i32>(0i, u_input.b, 3787i)), arg_1.c), vec2<u32>(~arg_1.a.x, _wgslsmith_clamp_u32(arg_1.a.x, func_1(vec2<u32>(0u, global0.a.d)).b, ~max(1u, 4294967295u))), reverseBits(~(global0.a.b << (~arg_2.x % 32u))));
    global1 = array<Struct_2, 1>();
    let var_1 = ~var_0.a;
    global0 = func_5(func_5(func_5(Struct_4(Struct_1(global0.a.a, 1u, vec4<bool>(true, global0.a.c.x, arg_3, false), 0u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, 1695i), vec4<i32>(u_input.a.x, 6276i, global0.b, 29400i))))));
    var var_2 = Struct_3(_wgslsmith_add_vec2_u32(arg_2.xx, ~_wgslsmith_mult_vec2_u32(min(vec2<u32>(arg_2.x, global0.a.b), arg_2.xz), arg_2.zz)), ~firstTrailingBit(_wgslsmith_mod_u32(arg_0.b, 1u)), arg_1, global0.a);
    return vec4<f32>(919f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.b - -2200f) - _wgslsmith_f_op_f32(var_0.b + -583f))) * var_0.b), _wgslsmith_f_op_f32(step(-2051f, 1250f)), _wgslsmith_f_op_f32(func_1(firstLeadingBit(min(vec2<u32>(var_0.a.x, var_1.x), vec2<u32>(10986u, arg_1.e)))).a.x + _wgslsmith_f_op_f32(f32(-1f) * -1060f)));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>) -> StorageBuffer {
    global1 = array<Struct_2, 1>();
    let var_0 = global0.a.a;
    let var_1 = ~arg_0.b;
    global0 = func_5(func_5(Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(221f, -676f, arg_0.a.x, 197f)), var_1, arg_0.c, 4267u), u_input.a.x)));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.d, countOneBits(_wgslsmith_clamp_u32(~global0.a.b, 4294967295u, global0.a.d)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xyz)), abs(-u_input.a)).a.x), firstLeadingBit(~vec3<u32>(global0.a.d, max(85023u, global0.a.b), arg_0.d >> (4294967295u % 32u))));
    return StorageBuffer(~(firstLeadingBit(firstTrailingBit(vec4<u32>(global0.a.d, var_1, arg_0.d, global0.a.d))) | func_2(func_4(Struct_3(vec2<u32>(1u, var_1), 45643u, Struct_2(vec4<u32>(global0.a.d, arg_0.b, 1u, 4294967295u), -495f, vec3<i32>(global0.b, -1480i, global0.b), vec2<u32>(var_1, global0.a.d), arg_0.b), global0.a), Struct_1(arg_1, arg_0.b, vec4<bool>(false, global0.a.c.x, false, global0.a.c.x), 1u)).a.zxx, vec2<i32>(-30816i, global0.b)).c.a), -_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-11308i, -31118i, global0.b, u_input.a.x) >> (vec4<u32>(26998u, arg_0.b, 77198u, global0.a.b) % vec4<u32>(32u))), countOneBits(~vec4<i32>(33630i, 1i, -12213i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 1>();
    var var_0 = u_input.a;
    var var_1 = select(select(vec3<u32>(global0.a.b | global0.a.b, ~global0.a.d, ~0u), vec3<u32>(1825u, 8665u, 4561u), global0.a.c.x), ~(vec3<u32>(global0.a.b, 1u, global0.a.d) >> (vec3<u32>(global0.a.b, 0u, global0.a.d) % vec3<u32>(32u))), !all(vec2<bool>(true, true))) | ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global0.a.b, global0.a.b, 4294967295u)), ~min(vec3<u32>(global0.a.b, 42479u, global0.a.d), vec3<u32>(32740u, 0u, global0.a.b)));
    var_1 = ~_wgslsmith_div_vec3_u32(abs(~vec3<u32>(4294967295u, global0.a.b, global0.a.b)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(var_1.x, var_1.x, 27983u)), true), abs(~vec3<u32>(1u, var_1.x, 13436u))));
    global1 = array<Struct_2, 1>();
    var_0 = abs(~u_input.a);
    let x = u_input.a;
    s_output = func_7(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a)), _wgslsmith_f_op_vec4_f32(func_6(func_1(var_1.xy), func_2(global0.a.a.xww, vec2<i32>(u_input.a.x, global0.b)).c, func_2(vec3<f32>(-710f, 1386f, global0.a.a.x), u_input.a).c.a.wxz, global0.a.c.x))))));
}

