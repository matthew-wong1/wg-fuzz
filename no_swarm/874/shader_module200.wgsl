struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> vec2<u32> {
    let var_0 = Struct_3(Struct_1(vec3<bool>(false, !all(vec2<bool>(true, false)), arg_0.a), vec4<bool>(false, true, true, !(false && arg_0.a))), abs(reverseBits(countOneBits(~23350u))), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(arg_0.b.x), arg_1, 2147483647i & arg_1, _wgslsmith_div_i32(-23919i, arg_1)), u_input.b), -7428i), !(!all(vec2<bool>(arg_0.a, true))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1228f)), 1f, _wgslsmith_f_op_f32(1112f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(609f - 210f) - 513f))));
    var var_1 = _wgslsmith_f_op_f32(floor(262f));
    var_1 = var_0.e.x;
    var_1 = -1000f;
    let var_2 = var_0;
    return ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, var_2.b) >> (vec2<u32>(48984u, 43719u) % vec2<u32>(32u)), vec2<u32>(var_2.b, 64355u)) & ~vec2<u32>(~20073u, var_2.b));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = Struct_4(false, vec2<i32>(firstLeadingBit(~(~arg_3)), u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(813f, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(-750f, -1567f, arg_2.b.x))))));
    var var_2 = Struct_3(Struct_1(arg_1.b.b.yyy, vec4<bool>(!all(vec3<bool>(arg_2.b.x, false, true)), arg_1.b.b.x, true, true)), 4294967295u, countOneBits(u_input.b.xzz), var_0.a, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + -555f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) - var_1.x))), 571f, arg_0.x));
    let var_3 = vec4<i32>(min(max(var_0.b.x, var_2.c.x), var_0.b.x) | 1i, 1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, var_0.b.x) << ((vec2<u32>(var_2.b, 0u) << (func_3(Struct_4(true, vec2<i32>(-16210i, arg_3)), 32190i) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.b.yx), -var_0.b.x);
    var_2 = Struct_3(Struct_1(!arg_2.b.yxw, var_2.a.b), var_2.b, abs(_wgslsmith_add_vec3_i32(-select(vec3<i32>(arg_3, arg_3, var_2.c.x), var_3.zwz, arg_1.b.a), vec3<i32>(u_input.b.x, u_input.b.x ^ 1i, -2147483647i))), !all(select(vec3<bool>(false, true, var_2.a.b.x), vec3<bool>(var_0.a, arg_1.a, var_0.a), vec3<bool>(true, arg_2.b.x, arg_1.a))) & true, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(var_2.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-691f, -1301f, 473f) - var_2.e), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1054f, arg_0.x, 780f), vec3<f32>(var_2.e.x, arg_0.x, var_2.e.x), arg_2.a))) + vec3<f32>(-849f, -1090f, _wgslsmith_div_f32(475f, -1000f))))));
    return var_1.x;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(366f)) - _wgslsmith_f_op_f32(745f + _wgslsmith_f_op_f32(func_2(vec2<f32>(-584f, -1897f), Struct_2(true, Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, true, true))), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, false, true)), 0i)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + -458f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1010f + -286f)))), -445f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, -1558f)), Struct_2(false, Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, true, false))), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, true)), i32(-1i) * -2665i)), _wgslsmith_f_op_f32(trunc(125f)), _wgslsmith_f_op_f32(306f * 1497f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1142f)), _wgslsmith_f_op_f32(step(893f, 1922f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(221f, -123f, -2584f, 412f), vec4<f32>(-332f, -1488f, -531f, -467f))), _wgslsmith_div_vec4_f32(vec4<f32>(1837f, -509f, 803f, -1819f), vec4<f32>(-511f, 1678f, 1550f, -678f))) * vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = 1i;
    var_1 = u_input.a;
    var var_2 = countOneBits(1802u);
    let var_3 = Struct_4(true, _wgslsmith_add_vec2_i32(select(vec2<i32>(-u_input.c, ~40591i), firstTrailingBit(-u_input.b.yy), !any(vec4<bool>(true, false, true, true))), u_input.b.wx ^ vec2<i32>(u_input.c, _wgslsmith_add_i32(-35767i, u_input.c))));
    return max(-(var_3.b.x | u_input.c), var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(~(~2147483647i) < -u_input.a, _wgslsmith_add_i32(func_1(), u_input.c << (0u % 32u)) < firstTrailingBit(_wgslsmith_sub_i32(u_input.b.x, -64997i)), true), !vec4<bool>(true, select(false, true, true), true, all(vec2<bool>(true, true))));
    var_0 = Struct_1(!select(!select(vec3<bool>(var_0.b.x, true, true), var_0.b.wyw, var_0.b.x), !var_0.a, var_0.b.wzy), !var_0.b);
    let var_1 = _wgslsmith_mod_i32(u_input.c, u_input.c);
    var_0 = Struct_1(vec3<bool>(true, false, var_0.b.x), select(var_0.b, var_0.b, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1176f)))), _wgslsmith_f_op_f32(-540f + _wgslsmith_f_op_f32(func_2(vec2<f32>(-773f, -213f), Struct_2(false, Struct_1(var_0.a, var_0.b)), Struct_1(var_0.b.zzy, var_0.b), -49630i))), -1380f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1f, -139f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~0u)), _wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
}

