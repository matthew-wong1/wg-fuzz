struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: vec2<f32>;

var<private> global3: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(34215u, 1u), vec2<u32>(0u, 9008u), vec2<u32>(27022u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(22907u, 1u), vec2<u32>(45640u, 14369u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 9385u), vec2<u32>(16989u, 23022u), vec2<u32>(1554u, 3874u), vec2<u32>(67927u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(33001u, 12148u), vec2<u32>(0u, 26389u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(81086u, 30512u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u), vec2<u32>(57185u, 0u), vec2<u32>(42133u, 55762u), vec2<u32>(15060u, 24985u), vec2<u32>(1u, 28380u), vec2<u32>(0u, 1u), vec2<u32>(98668u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(28904u, 4294967295u), vec2<u32>(23781u, 10399u), vec2<u32>(1u, 39996u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 38394u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = arg_0;
    let var_0 = 1u;
    global0 = ~_wgslsmith_clamp_u32(global1.e.x, countOneBits(1u), abs(_wgslsmith_mult_u32(0u, arg_0.e.x) << (1u % 32u)));
    var var_1 = abs(1u);
    var var_2 = -u_input.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * -204f) + _wgslsmith_f_op_f32(abs(global2.x)))))));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(-2147483647i, global2.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, arg_0.a), abs(vec2<i32>(arg_0.c, global1.a))), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-34713i, -25477i)), _wgslsmith_div_vec2_i32(vec2<i32>(global1.a, -31233i), vec2<i32>(-35682i, global1.c))))), global2.x, vec3<u32>(global1.e.x, 46885u, ~1u));
    global3 = array<vec2<u32>, 32>();
    let var_1 = !(true || any(vec2<bool>(true, true)));
    var var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(-var_0.d)))), firstTrailingBit(-select(arg_0.a, arg_0.c, false)), var_0.b, vec3<u32>(~arg_0.e.x, var_0.e.x, ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global1.e.x, 1u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.e.x, var_0.e.x, 34283u), vec3<u32>(arg_0.e.x, global1.e.x, arg_0.e.x)))));
    var var_3 = Struct_1(~(_wgslsmith_mod_i32(_wgslsmith_div_i32(23338i, 4995i), -8108i) & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.a) << (vec2<u32>(1u, var_2.e.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.c, 0i), vec2<i32>(-2147483647i, var_2.c)))), _wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -345f)), ~(2147483647i << (select(_wgslsmith_div_u32(var_2.e.x, 90375u), var_0.e.x << (var_2.e.x % 32u), true) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2421f))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(abs(global1.e), vec3<u32>(var_0.e.x, global1.e.x, var_2.e.x)), vec3<u32>(~6644u, var_0.e.x, arg_0.e.x)) >> (~(var_0.e ^ var_0.e) % vec3<u32>(32u)));
    return any(!(!select(vec4<bool>(var_1, var_1, false, var_1), !vec4<bool>(var_1, var_1, true, var_1), !var_1)));
}

fn func_2() -> vec4<bool> {
    var var_0 = func_4(Struct_1(-2147483647i, 798f, ~u_input.b, _wgslsmith_f_op_f32(func_3(Struct_1(1i, _wgslsmith_f_op_f32(-global1.d), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global1.a), vec2<i32>(-2147483647i, -1i)), 1367f, firstTrailingBit(vec3<u32>(16082u, 1u, 0u))))), ~global1.e));
    global1 = Struct_1(max(-1i, global1.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_1(8788i, 939f, u_input.a, 200f, vec3<u32>(global1.e.x, global1.e.x, global1.e.x)))))), min(u_input.b, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -822f) - 1498f)), ~vec3<u32>(min(1u, 1u), 55343u, 0u));
    let var_1 = ~(-2147483647i);
    let var_2 = u_input.a;
    global1 = Struct_1(~(-u_input.a), _wgslsmith_f_op_f32(global2.x + 747f), abs(-abs(1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(328f)) - -2047f), global1.e);
    return vec4<bool>(true & all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), global1.d != global1.b)), func_4(Struct_1(reverseBits(var_2 & u_input.a), _wgslsmith_f_op_f32(-global1.d), var_2, _wgslsmith_f_op_f32(1800f * _wgslsmith_f_op_f32(f32(-1f) * -672f)), vec3<u32>(global1.e.x, _wgslsmith_mod_u32(4000u, 42868u), ~global1.e.x))), all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), 2071f > _wgslsmith_f_op_f32(step(1191f, -1676f)))), any(vec3<bool>(true, 10072i <= ~var_2, true)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = select(!vec4<bool>(arg_1, global1.a > 1321i, all(func_2()), false), select(func_2(), select(vec4<bool>(arg_1, true, arg_1, all(vec2<bool>(false, false))), func_2(), vec4<bool>(func_4(Struct_1(global1.c, arg_0.b, 2147483647i, arg_0.b, vec3<u32>(24829u, 21385u, 28991u))), true, -1451f <= global2.x, all(vec4<bool>(false, false, false, arg_1)))), true), false);
    var var_1 = 16207u;
    let var_2 = Struct_1(-arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-772f, arg_2.b)))), abs(1i), _wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-470f)))) + _wgslsmith_f_op_f32(min(-1178f, global2.x)))), arg_0.e);
    var var_3 = _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(arg_2.c, global1.c)), select(countOneBits(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-4612i, 1i)), select(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(var_2.a, 2147483647i), vec2<bool>(arg_1, true)))), firstTrailingBit(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(arg_0.c, 16597i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, arg_2.a), vec2<i32>(1i, 18770i), vec2<i32>(-31903i, global1.c)))), vec2<bool>(true, func_2().x)));
    var var_4 = arg_0.e.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(Struct_1(1i, _wgslsmith_f_op_f32(abs(global1.d)), i32(-1i) * -u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, 717f), global1.b))), ~((vec3<u32>(1u, global1.e.x, 5843u) << (global1.e % vec3<u32>(32u))) << (global1.e % vec3<u32>(32u)))), (true | (global1.b == global2.x)) && any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), Struct_1(-16178i, _wgslsmith_f_op_f32(global2.x + global2.x), ((u_input.b >> (0u % 32u)) & (global1.a ^ u_input.b)) << (~(~global1.e.x) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b)))), global1.e << (global1.e % vec3<u32>(32u))), abs(global1.e.x));
    let var_0 = Struct_1(global1.a, -3104f, global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global1.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -282f))), true)) * -1000f), vec3<u32>(abs(~60425u), 1u, 29230u));
    var var_1 = -var_0.a;
    var var_2 = !any(func_2().zxx);
    let var_3 = vec2<f32>(global2.x, global2.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), 430f, 1049f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2591f, 1201f, var_0.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1309f, global2.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, 850f, -202f), vec3<f32>(var_3.x, 660f, var_3.x)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(388f, 1172f, global2.x), vec3<f32>(516f, var_0.d, -163f), false))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 2097f, var_0.b)));
    var_2 = false;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(global1.e.x, var_5.e.x, global1.e.x, var_0.e.x), vec4<u32>(var_5.e.x, 45683u, var_5.e.x, var_5.e.x), true), ~vec4<u32>(var_5.e.x, var_0.e.x, 35383u, 17291u))), _wgslsmith_mod_vec3_i32(vec3<i32>(var_5.a, -17882i, 1i), ~vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(38798i, 25250i), vec2<i32>(var_0.c, u_input.b)), -var_0.a)));
}

