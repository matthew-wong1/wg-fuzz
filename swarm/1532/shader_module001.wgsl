struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-arg_3), firstTrailingBit(~firstTrailingBit(_wgslsmith_add_vec2_u32(arg_0.zx, vec2<u32>(arg_1, arg_0.x)))));
    var var_1 = -1000f;
    let var_2 = vec3<bool>(arg_2.x, all(select(vec2<bool>(all(vec3<bool>(arg_2.x, true, arg_2.x)), false), !(!arg_2), arg_2.x)), select(any(vec4<bool>(false, true, arg_2.x & false, arg_2.x)), !arg_2.x, true));
    var var_3 = vec3<i32>(i32(-1i) * -40181i, 1i, -50883i);
    let var_4 = Struct_5(arg_0.yx, vec2<f32>(-1174f, _wgslsmith_div_f32(-708f, _wgslsmith_f_op_f32(step(1456f, _wgslsmith_div_f32(-659f, 758f))))), min(-2147483647i, 5400i) | reverseBits(var_3.x), 26480u, max(-(var_3.x & reverseBits(var_3.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(var_3.x, var_3.x), firstTrailingBit(var_3.x)) << (var_0.b.x % 32u)));
    return vec4<bool>(true, var_2.x, any(select(select(!vec4<bool>(arg_2.x, var_2.x, var_2.x, arg_2.x), !vec4<bool>(false, var_2.x, true, false), vec4<bool>(false, false, true, true)), select(!vec4<bool>(var_2.x, var_2.x, var_2.x, arg_2.x), vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(false, var_2.x, false, var_2.x)), false)), true);
}

fn func_2() -> vec4<u32> {
    var var_0 = !(!vec2<bool>(true, any(vec2<bool>(true, true))));
    var var_1 = -min(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), select(vec2<i32>(-1i, 0i), vec2<i32>(17480i, 1i), var_0.x)), 1i));
    var var_2 = Struct_4(select(vec4<bool>(select(false | var_0.x, true, true), true, true, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), select(!(!vec4<bool>(true, false, var_0.x, var_0.x)), select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, var_0.x, true, true), func_3(vec4<u32>(28395u, u_input.a, 0u, u_input.a), u_input.a, vec2<bool>(var_0.x, var_0.x), vec2<f32>(-1000f, 1000f))), vec4<bool>(false, all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), false, true)), vec4<bool>(var_0.x, var_0.x, var_0.x || var_0.x, !var_0.x || true)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-107f, 444f)), 958f, var_2.a.x))), _wgslsmith_f_op_f32(ceil(243f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, 267f, var_3.a, 740f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, 935f, var_3.a, var_3.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.a, var_3.a, var_3.a, var_3.b))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-784f, 650f, var_3.b, 1909f), vec4<f32>(var_3.a, -539f, var_3.b, 982f), vec4<bool>(var_2.a.x, var_0.x, false, var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, 340f, var_3.a, var_3.a) + vec4<f32>(var_3.b, -854f, 608f, var_3.b))) - vec4<f32>(var_3.b, _wgslsmith_f_op_f32(ceil(var_3.b)), var_3.b, _wgslsmith_f_op_f32(trunc(var_3.b))))));
    return vec4<u32>(~(0u & firstTrailingBit(select(u_input.a, u_input.a, var_2.a.x))), ~39634u, 4294967295u, ~(0u << (u_input.a % 32u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_5 {
    var var_0 = ~(vec4<u32>(0u, u_input.a, ~u_input.a << (u_input.a % 32u), countOneBits(u_input.a)) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 34030u), vec4<u32>(13746u, 1u, 4294967295u, 4294967295u)), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), func_2()) % vec4<u32>(32u)));
    var var_1 = select(vec2<bool>(func_3(reverseBits(vec4<u32>(0u, 0u, 0u, 4887u)), 2752u, select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), all(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1122f, -120f), vec2<f32>(322f, -895f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(796f, -263f))))).x, true != !(4294967295u != u_input.a)), !vec2<bool>(true, !func_3(vec4<u32>(113073u, u_input.a, 16144u, var_0.x), 0u, vec2<bool>(false, true), vec2<f32>(2351f, -488f)).x), select(!vec2<bool>(true, func_3(vec4<u32>(0u, u_input.a, 16470u, var_0.x), u_input.a, vec2<bool>(false, true), vec2<f32>(1000f, 428f)).x), !func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.x, 4294967295u, 4294967295u), vec4<u32>(u_input.a, var_0.x, 4294967295u, 57957u)), var_0.x & u_input.a, vec2<bool>(true, true), vec2<f32>(1000f, 150f)).yz, _wgslsmith_add_i32(-325i, _wgslsmith_sub_i32(arg_0.x, -44611i)) != 2147483647i));
    let var_2 = vec4<u32>(var_0.x, u_input.a, func_2().x, ~firstTrailingBit(~(0u >> (var_0.x % 32u))));
    var_0 = var_2 >> (var_2 % vec4<u32>(32u));
    var_0 = vec4<u32>(var_0.x, ~abs(abs(~var_2.x)), ~4294967295u, 15111u);
    return Struct_5(vec2<u32>(~firstTrailingBit(1u), ~var_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(464f, -1390f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-469f, 1543f), vec2<f32>(-810f, -1325f), vec2<bool>(var_1.x, false)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1059f, 117f))))))), 1i, 34068u, -17715i);
}

fn func_4(arg_0: Struct_5) -> u32 {
    var var_0 = Struct_2(arg_0.b.x, _wgslsmith_div_f32(func_1(vec2<i32>(1i, arg_0.e) << (~arg_0.a % vec2<u32>(32u)), vec2<i32>(14998i, 2147483647i)).b.x, _wgslsmith_f_op_f32(min(arg_0.b.x, -1483f))));
    var var_1 = Struct_3(vec2<f32>(func_1(max(vec2<i32>(1i, 23051i), countOneBits(vec2<i32>(0i, -17815i))), -vec2<i32>(7115i, 0i)).b.x, -821f), _wgslsmith_mult_vec2_u32(arg_0.a, func_2().xw));
    let var_2 = !(_wgslsmith_dot_vec4_i32(vec4<i32>(~arg_0.e, arg_0.e, -arg_0.c, arg_0.e), ~vec4<i32>(1i, -1i, arg_0.c, -1i) | ~vec4<i32>(arg_0.c, 18079i, arg_0.c, arg_0.c)) > ~arg_0.e);
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(21210i >> (var_1.b.x % 32u), arg_0.e), _wgslsmith_sub_i32(~(-1i), arg_0.c ^ 3942i)), _wgslsmith_div_vec2_i32(~(vec2<i32>(6173i, arg_0.e) & vec2<i32>(arg_0.c, 48565i)), vec2<i32>(arg_0.e << (u_input.a % 32u), arg_0.e))), -reverseBits(firstLeadingBit(vec2<i32>(-2147483647i, arg_0.c))));
    return 4294967295u;
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_5 {
    let var_0 = func_1(vec2<i32>(~abs(2147483647i) >> (~arg_0 % 32u), _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-29210i, 5953i, -2147483647i, -20686i), vec4<i32>(0i, 1i, -2757i, -27430i)), select(2147483647i, 1i, true))), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 19342i), vec2<i32>(1i, 1i), ~vec2<i32>(-2147483647i, -2147483647i))));
    var var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(var_0.a << (vec2<u32>(45529u, u_input.a) % vec2<u32>(32u))), max(firstTrailingBit(vec2<u32>(arg_1.b.x, 5829u)), vec2<u32>(1u, arg_1.b.x) >> (arg_1.b % vec2<u32>(32u)))), 0u));
    var var_2 = _wgslsmith_f_op_f32(arg_1.a.x + 1f);
    var var_3 = Struct_2(arg_1.a.x, _wgslsmith_f_op_f32(select(1455f, func_1(vec2<i32>(0i, -46935i) | vec2<i32>(var_0.e, 22948i), vec2<i32>(-1i, var_0.c)).b.x, all(vec4<bool>(true, true, true, any(vec4<bool>(false, true, false, false)))))));
    let var_4 = vec2<i32>((((var_0.c << (var_0.d % 32u)) & var_0.e) & -2147483647i) >> (_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(var_1.a, arg_1.b.x)), ~vec2<u32>(arg_1.b.x, 46946u)) % 32u), var_0.c);
    return Struct_5(vec2<u32>(~(~106350u), arg_1.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), -var_0.c, _wgslsmith_add_u32(0u, select(arg_0, ~arg_0, true)), var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, 606f, 1030f)), vec3<f32>(_wgslsmith_f_op_f32(1683f * -525f), _wgslsmith_f_op_f32(1000f * -1334f), _wgslsmith_f_op_f32(-3042f + -590f)))))));
    var var_1 = func_5(u_input.a ^ _wgslsmith_sub_u32(func_4(func_1(vec2<i32>(-1i, -36110i), vec2<i32>(18575i, 14391i))), u_input.a), Struct_3(vec2<f32>(-1299f, -1194f), select(vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 12250u)), vec2<u32>(4294967295u, u_input.a | 28742u), !any(vec4<bool>(false, false, false, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(101f, var_1.b.x, 852f, -1000f), vec4<f32>(-550f, -881f, -843f, 1000f), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1501f, var_1.b.x, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 533f, var_1.b.x, var_0.x))))));
    var var_3 = var_1.e;
    let var_4 = -1000f;
    var var_5 = vec3<u32>(select(_wgslsmith_clamp_u32(~var_1.a.x, u_input.a, func_1(~vec2<i32>(2147483647i, var_1.e), -vec2<i32>(-6388i, var_1.e)).a.x), ~(~(~1u)), u_input.a <= reverseBits(~1u)), 1u, reverseBits(~40463u) ^ u_input.a);
    let var_6 = Struct_3(func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.c, -var_1.e), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c, var_1.c), vec2<i32>(var_1.c, var_1.c), vec2<i32>(var_1.e, var_1.c))), abs(vec2<i32>(-43241i, -var_1.e))).b, vec2<u32>(reverseBits(19002u), 1u ^ var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, var_4, vec4<u32>(0u, _wgslsmith_dot_vec2_u32(var_5.xx, vec2<u32>(~22060u, 1u)), _wgslsmith_mod_u32(6666u, ~u_input.a), countOneBits(func_1(vec2<i32>(85507i, var_1.e), firstTrailingBit(vec2<i32>(30779i, var_1.e))).a.x)), var_6.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_2, vec4<f32>(228f, -954f, -1295f, var_4))))) * var_2));
}

