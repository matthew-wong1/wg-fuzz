struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28>;

var<private> global1: array<vec4<f32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(true, -712f), ~u_input.d, Struct_1(!(any(vec4<bool>(true, true, true, false)) == select(false, false, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(691f))))), Struct_1(!(!all(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 875f)) * _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), vec2<u32>(abs(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, u_input.d.x), u_input.c.x)), firstTrailingBit(u_input.d.x)));
    global1 = array<vec4<f32>, 8>();
    let var_1 = (vec2<u32>(var_0.b.x, _wgslsmith_dot_vec2_u32(countOneBits(var_0.e), firstTrailingBit(vec2<u32>(42248u, u_input.c.x)))) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.c, firstTrailingBit(u_input.d.xy)), ~vec2<u32>(u_input.a.x, 4294967295u))) >> (abs(select(var_0.e, abs(var_0.b.xz), vec2<bool>(-306f <= var_0.c.b, all(vec2<bool>(true, true))))) % vec2<u32>(32u));
    var var_2 = ~vec4<u32>(_wgslsmith_mult_u32(var_0.e.x, reverseBits(1u)), firstLeadingBit(u_input.c.x), var_1.x, ~select(60154u, 25446u, !var_0.a.a));
    let var_3 = Struct_1(any(!select(vec2<bool>(var_0.c.a, false), vec2<bool>(var_0.a.a, true), select(var_0.a.a, var_0.d.a, true))), _wgslsmith_f_op_f32(-848f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-715f, var_0.a.b)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b) * _wgslsmith_div_f32(1155f, var_3.b)) - _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(ceil(-295f)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(any(vec3<bool>(true, false, !(!arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1626f)));
    var var_1 = Struct_1(false, _wgslsmith_f_op_f32(-var_0.b));
    global1 = array<vec4<f32>, 8>();
    var_1 = Struct_1(!all(!(!vec4<bool>(true, arg_1.x, false, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1060f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(arg_0.x, 8u)]);
    return Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, ~4294967295u), 8u)])) * _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(-var_2.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_2 {
    global1 = array<vec4<f32>, 8>();
    global0 = array<vec3<f32>, 28>();
    let var_0 = Struct_2(Struct_1(func_2(firstTrailingBit(u_input.d) ^ (vec4<u32>(19230u, 30776u, 1u, u_input.d.x) ^ vec4<u32>(10192u, 47330u, 4294967295u, u_input.c.x)), select(select(vec2<bool>(arg_1.a, arg_0.d.a), vec2<bool>(false, arg_0.d.a), vec2<bool>(arg_0.a.a, false)), !vec2<bool>(false, arg_1.a), arg_0.c.a)).a, arg_1.b), abs(max(u_input.d, vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, 4294967295u))) | min(~vec4<u32>(4294967295u, u_input.a.x, arg_0.b.x, 5156u) << (vec4<u32>(arg_0.e.x, u_input.d.x, 29243u, arg_0.e.x) % vec4<u32>(32u)), vec4<u32>(~66746u, _wgslsmith_dot_vec2_u32(arg_0.b.wz, u_input.c), _wgslsmith_add_u32(u_input.d.x, arg_0.e.x), 0u)), Struct_1(~(i32(-1i) * -2001i) >= _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, 1i, 1529i), vec4<i32>(u_input.b.x, -23072i, -18493i, 0i)), vec4<i32>(u_input.b.x, u_input.b.x, arg_2.x, u_input.b.x) ^ vec4<i32>(-1i, -50384i, arg_2.x, -1i)), -1112f), func_2(~(~vec4<u32>(u_input.d.x, arg_0.e.x, 4294967295u, arg_0.b.x)) ^ u_input.d, vec2<bool>(true, arg_1.a)), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(4294967295u | u_input.d.x, 1u)), arg_0.e, vec2<u32>(3286u, countOneBits(u_input.a.x))));
    var var_1 = var_0.e.x;
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = array<vec3<f32>, 28>();
    global1 = array<vec4<f32>, 8>();
    global0 = array<vec3<f32>, 28>();
    var var_0 = arg_0;
    global1 = array<vec4<f32>, 8>();
    return var_0.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec4<f32>, 8>();
    global1 = array<vec4<f32>, 8>();
    var var_0 = 21071u;
    var var_1 = func_5(func_4(Struct_2(arg_2, u_input.d, Struct_1(arg_2.a, -363f), func_2(abs(vec4<u32>(u_input.d.x, 1u, 1u, arg_0.x)), vec2<bool>(true, true)), _wgslsmith_add_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.c.x, u_input.d.x), vec2<u32>(0u, arg_0.x)))), func_2(~reverseBits(arg_0), !vec2<bool>(arg_2.a, false)), abs(vec2<i32>(-2147483647i, u_input.b.x))), arg_2.a, arg_2, u_input.b.x);
    var_0 = 26426u;
    return arg_2;
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    global0 = array<vec3<f32>, 28>();
    let var_0 = arg_1.a;
    global0 = array<vec3<f32>, 28>();
    let var_1 = !(!select(!(!vec4<bool>(arg_1.a.a, var_0.a, false, var_0.a)), !vec4<bool>(var_0.a, false, false, arg_1.c.a), vec4<bool>(arg_1.d.b < -1152f, false, true, arg_1.a.a)));
    global1 = array<vec4<f32>, 8>();
    return Struct_1(var_0.a, var_0.b);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2.a;
    var var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-429f + func_1(vec4<u32>(52171u, u_input.a.x, 60429u, 1u), global1[_wgslsmith_index_u32(u_input.c.x, 8u)], arg_1).b) + _wgslsmith_f_op_f32(-2760f + _wgslsmith_f_op_f32(-arg_1.b))), arg_2.c.b, (-1155f < func_6(4137i, Struct_2(arg_2.a, arg_2.b, arg_2.c, arg_0, u_input.d.wz), u_input.c.x).b) == !(u_input.b.x != 47794i))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b.x, countOneBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-88197i, 14937i), _wgslsmith_mod_i32(u_input.b.x, -2147483647i)))), u_input.b.x);
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(20241i, 13667i), -vec2<i32>(-11847i ^ var_2, -var_2)) | (vec2<i32>(-var_2, max(-2147483647i, 34564i) << (arg_2.e.x % 32u)) & u_input.b);
    global1 = array<vec4<f32>, 8>();
    return Struct_2(arg_1, u_input.d, arg_2.c, func_6(var_2, func_4(Struct_2(func_5(Struct_2(Struct_1(var_1.a, 171f), vec4<u32>(7977u, u_input.d.x, u_input.d.x, 15942u), Struct_1(var_0.a, 1000f), arg_1, u_input.a), var_0.a, arg_0, 1i), vec4<u32>(u_input.c.x, u_input.a.x, arg_2.b.x, arg_2.b.x), func_5(Struct_2(arg_2.d, arg_2.b, Struct_1(false, var_0.b), Struct_1(var_1.a, arg_0.b), vec2<u32>(u_input.a.x, arg_2.b.x)), arg_2.c.a, Struct_1(arg_2.d.a, var_0.b), 13001i), func_6(var_3.x, Struct_2(arg_2.d, u_input.d, Struct_1(arg_2.d.a, arg_0.b), Struct_1(true, var_0.b), u_input.a), 34329u), countOneBits(vec2<u32>(u_input.d.x, 16057u))), Struct_1(true, -881f), abs(vec2<i32>(0i, 15306i))), ~(~arg_2.b.x) & arg_2.b.x), ~abs(~_wgslsmith_mult_vec2_u32(u_input.d.zy, vec2<u32>(1u, u_input.c.x))));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_0.d.b;
    var_0 = 605f;
    var var_1 = func_1(vec4<u32>(max(4294967295u, _wgslsmith_mult_u32(countOneBits(u_input.d.x), select(arg_0.e.x, arg_2.e.x, true))), max(min(reverseBits(u_input.c.x), 1u), 9138u), ~6550u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.e.x, arg_0.b.x), func_7(Struct_1(false, -1053f), arg_2.a, arg_1).e.x), 4294967295u)), global1[_wgslsmith_index_u32(~arg_1.b.x, 8u)], arg_1.c);
    let var_2 = _wgslsmith_mod_vec3_u32(max(abs(arg_0.b.zww), ~u_input.d.yzw), func_7(arg_0.d, arg_0.d, arg_0).b.ywx);
    global1 = array<vec4<f32>, 8>();
    return Struct_2(arg_1.a, countOneBits(_wgslsmith_clamp_vec4_u32(firstLeadingBit(abs(vec4<u32>(arg_1.b.x, 4294967295u, arg_1.e.x, 37811u))), ~(~arg_0.b), vec4<u32>(~arg_2.b.x, 1u, ~arg_2.e.x, ~var_2.x))), arg_1.d, Struct_1(func_4(Struct_2(arg_2.d, _wgslsmith_mult_vec4_u32(u_input.d, arg_0.b), func_1(vec4<u32>(0u, arg_2.b.x, 0u, arg_0.e.x), vec4<f32>(var_1.b, var_1.b, 568f, arg_2.d.b), arg_1.d), func_6(u_input.b.x, Struct_2(Struct_1(arg_1.c.a, arg_1.a.b), arg_2.b, Struct_1(false, -530f), arg_1.c, arg_0.b.xz), 1u), vec2<u32>(115629u, u_input.c.x)), func_2(max(u_input.d, arg_0.b), select(vec2<bool>(true, arg_0.d.a), vec2<bool>(false, false), vec2<bool>(true, false))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b) & -vec2<i32>(u_input.b.x, 1i)).a.a, func_5(Struct_2(arg_0.d, u_input.d, arg_0.d, Struct_1(arg_0.c.a, arg_0.c.b), vec2<u32>(58356u, 82109u)), !(arg_1.a.b < -823f), Struct_1(false, func_4(arg_0, Struct_1(arg_2.d.a, arg_1.d.b), u_input.b).d.b), 0i).b), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(func_6(1i, Struct_2(func_1(u_input.d, global1[_wgslsmith_index_u32(0u, 8u)], Struct_1(true, 1232f)), vec4<u32>(u_input.a.x, 21383u, u_input.d.x, 14944u), Struct_1(false, -1052f), func_1(vec4<u32>(u_input.d.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<f32>(-1219f, -2090f, 954f, -565f), Struct_1(false, 867f)), vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_add_u32(~0u, u_input.a.x)), Struct_1(func_6(abs(u_input.b.x), func_4(Struct_2(Struct_1(true, -512f), u_input.d, Struct_1(false, -663f), Struct_1(true, -504f), u_input.d.wx), Struct_1(true, -593f), u_input.b), ~u_input.c.x).a, _wgslsmith_f_op_f32(abs(172f))), Struct_2(func_2(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.d.x), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), u_input.d, func_1(max(u_input.d, u_input.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(923f, -528f, -563f, 967f) - global1[_wgslsmith_index_u32(64297u, 8u)]), Struct_1(false, 328f)), Struct_1(true, -859f), func_4(func_4(Struct_2(Struct_1(false, 687f), u_input.d, Struct_1(false, 1335f), Struct_1(true, 1850f), vec2<u32>(u_input.a.x, 79728u)), Struct_1(true, 354f), u_input.b), Struct_1(false, -643f), vec2<i32>(u_input.b.x, u_input.b.x)).b.yw)), Struct_2(func_4(Struct_2(func_5(Struct_2(Struct_1(true, -716f), u_input.d, Struct_1(true, -1149f), Struct_1(true, -211f), vec2<u32>(0u, 6888u)), false, Struct_1(true, 846f), 0i), ~u_input.d, Struct_1(false, 260f), Struct_1(false, -1908f), vec2<u32>(1u, u_input.d.x)), Struct_1(true, -750f), vec2<i32>(u_input.b.x, u_input.b.x | u_input.b.x)).d, vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.a.x, 0u)), u_input.a.x, _wgslsmith_clamp_u32(14505u, u_input.d.x, 1u), u_input.c.x) >> (vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a.x), 35245u, 1u, min(u_input.d.x, u_input.c.x)) % vec4<u32>(32u)), func_6(~(19538i ^ u_input.b.x), Struct_2(func_1(u_input.d, vec4<f32>(534f, 683f, -775f, 1253f), Struct_1(true, 294f)), u_input.d, Struct_1(true, -531f), Struct_1(false, -1084f), _wgslsmith_div_vec2_u32(u_input.a, u_input.c)), countOneBits(reverseBits(0u))), Struct_1(func_5(Struct_2(Struct_1(false, 1000f), u_input.d, Struct_1(false, -836f), Struct_1(false, -758f), u_input.c), all(vec3<bool>(false, true, false)), Struct_1(false, -2021f), -u_input.b.x).a, 559f), abs(select(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.d.yw, select(vec2<bool>(false, true), vec2<bool>(false, true), false)))), Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(621f * 632f))), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 50048u, 4294967295u), u_input.d)) << (~u_input.d % vec4<u32>(32u)), Struct_1(true, _wgslsmith_f_op_f32(2943f - _wgslsmith_f_op_f32(572f * 662f))), func_7(Struct_1(true, -707f), Struct_1(true, _wgslsmith_f_op_f32(559f * 884f)), func_7(func_2(u_input.d, vec2<bool>(true, false)), Struct_1(false, -932f), Struct_2(Struct_1(true, -835f), vec4<u32>(1u, u_input.a.x, 4576u, u_input.c.x), Struct_1(true, -367f), Struct_1(false, -490f), u_input.c))).d, vec2<u32>(firstTrailingBit(u_input.c.x), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.d.x, 1u)))));
    let var_1 = var_0.d.b;
    var var_2 = vec4<bool>(true, func_8(func_8(func_7(var_0.d, var_0.d, Struct_2(Struct_1(var_0.d.a, var_0.c.b), u_input.d, Struct_1(false, 274f), var_0.c, u_input.a)), Struct_2(var_0.a, ~u_input.d, func_5(Struct_2(Struct_1(var_0.d.a, var_0.a.b), var_0.b, var_0.a, Struct_1(var_0.d.a, -480f), vec2<u32>(4294967295u, 0u)), false, Struct_1(var_0.c.a, var_0.a.b), u_input.b.x), var_0.d, var_0.e), Struct_2(Struct_1(true, var_0.a.b), firstLeadingBit(u_input.d), var_0.d, var_0.d, vec2<u32>(u_input.d.x, var_0.e.x))), func_4(Struct_2(var_0.d, abs(var_0.b), Struct_1(var_0.c.a, -211f), func_2(u_input.d, vec2<bool>(false, var_0.c.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.e.x, 9154u), u_input.c, var_0.b.xy)), func_1(var_0.b, vec4<f32>(-1131f, -134f, var_0.a.b, var_0.a.b), Struct_1(true, var_0.d.b)), u_input.b), func_8(func_8(Struct_2(var_0.c, vec4<u32>(u_input.c.x, 0u, u_input.a.x, var_0.e.x), var_0.a, Struct_1(true, 1268f), var_0.e), Struct_2(var_0.a, vec4<u32>(4289u, u_input.a.x, 0u, var_0.e.x), Struct_1(var_0.c.a, 341f), var_0.d, var_0.e), func_7(Struct_1(false, var_0.c.b), var_0.d, Struct_2(var_0.c, vec4<u32>(var_0.b.x, var_0.e.x, 13056u, var_0.e.x), Struct_1(true, -283f), Struct_1(var_0.d.a, 678f), u_input.d.xx))), func_4(func_4(Struct_2(Struct_1(false, 512f), vec4<u32>(0u, 22189u, 51609u, 0u), var_0.d, var_0.d, vec2<u32>(19078u, 1776u)), Struct_1(false, var_0.c.b), vec2<i32>(u_input.b.x, u_input.b.x)), Struct_1(var_0.d.a, var_0.d.b), vec2<i32>(u_input.b.x, u_input.b.x)), Struct_2(Struct_1(var_0.a.a, 434f), select(vec4<u32>(u_input.a.x, 0u, u_input.c.x, 0u), var_0.b, var_0.c.a), Struct_1(var_0.c.a, var_0.a.b), func_2(u_input.d, vec2<bool>(true, false)), countOneBits(var_0.e)))).d.a, func_8(Struct_2(func_1(vec4<u32>(66858u, var_0.b.x, 133517u, u_input.d.x), vec4<f32>(var_0.d.b, var_0.a.b, -167f, -623f), func_4(Struct_2(var_0.a, u_input.d, Struct_1(false, var_0.d.b), Struct_1(true, 554f), var_0.b.ww), var_0.a, vec2<i32>(u_input.b.x, u_input.b.x)).c), _wgslsmith_mod_vec4_u32(var_0.b, var_0.b & vec4<u32>(var_0.e.x, 34571u, 54774u, var_0.b.x)), Struct_1(true, 403f), Struct_1(var_0.c.a, _wgslsmith_f_op_f32(abs(708f))), ~(~u_input.c)), Struct_2(Struct_1(!var_0.c.a, var_0.c.b), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 29234u, u_input.c.x, 1u), vec4<u32>(var_0.b.x, var_0.e.x, 4294967295u, 16119u)), Struct_1(var_0.d.a, _wgslsmith_f_op_f32(select(var_0.a.b, var_0.a.b, var_0.c.a))), Struct_1(func_6(u_input.b.x, Struct_2(Struct_1(false, var_0.a.b), var_0.b, Struct_1(true, var_0.a.b), var_0.c, var_0.e), var_0.b.x).a, _wgslsmith_f_op_f32(sign(-769f))), ~vec2<u32>(var_0.e.x, 66070u)), Struct_2(var_0.c, _wgslsmith_mod_vec4_u32(min(u_input.d, var_0.b), _wgslsmith_mod_vec4_u32(u_input.d, var_0.b)), func_7(Struct_1(var_0.d.a, -1249f), func_8(Struct_2(Struct_1(true, var_0.d.b), u_input.d, var_0.a, Struct_1(true, var_0.d.b), vec2<u32>(var_0.b.x, var_0.e.x)), Struct_2(Struct_1(false, -1204f), vec4<u32>(49861u, 0u, var_0.e.x, u_input.c.x), Struct_1(true, 255f), Struct_1(var_0.c.a, var_0.a.b), var_0.b.yw), Struct_2(var_0.c, u_input.d, Struct_1(var_0.d.a, 546f), var_0.d, u_input.a)).d, Struct_2(var_0.c, vec4<u32>(var_0.b.x, u_input.c.x, u_input.c.x, 95265u), var_0.a, var_0.c, vec2<u32>(1u, var_0.b.x))).d, var_0.d, reverseBits(~vec2<u32>(var_0.b.x, var_0.e.x)))).a.a, var_0.e.x < _wgslsmith_clamp_u32(func_4(func_7(Struct_1(false, var_0.d.b), var_0.c, Struct_2(var_0.a, u_input.d, Struct_1(var_0.c.a, -1558f), var_0.d, vec2<u32>(29335u, 54295u))), var_0.c, vec2<i32>(-2147483647i, u_input.b.x)).b.x, var_0.e.x, var_0.e.x));
    let var_3 = ~2147483647i;
    var var_4 = func_2(vec4<u32>(~func_8(func_8(Struct_2(Struct_1(var_2.x, var_0.d.b), vec4<u32>(6677u, var_0.b.x, var_0.b.x, 9600u), Struct_1(var_0.c.a, -623f), Struct_1(true, var_0.d.b), vec2<u32>(u_input.a.x, u_input.d.x)), Struct_2(Struct_1(true, -1254f), vec4<u32>(25763u, u_input.d.x, 0u, 4294967295u), var_0.d, Struct_1(true, var_0.c.b), u_input.c), Struct_2(var_0.d, vec4<u32>(u_input.c.x, 69578u, var_0.b.x, var_0.e.x), Struct_1(true, 526f), Struct_1(false, var_0.c.b), u_input.a)), func_4(Struct_2(Struct_1(var_0.a.a, 872f), vec4<u32>(u_input.d.x, var_0.e.x, 43049u, u_input.d.x), var_0.a, var_0.a, var_0.e), Struct_1(var_0.d.a, var_0.a.b), u_input.b), Struct_2(var_0.c, vec4<u32>(20574u, 0u, var_0.e.x, 0u), var_0.a, Struct_1(true, var_0.a.b), var_0.e)).b.x, u_input.c.x, 1u, u_input.c.x), select(!var_2.zx, select(var_2.yw, !vec2<bool>(var_0.d.a, false), var_2.yx), true)).a;
    let var_5 = func_7(func_2(func_4(func_7(Struct_1(var_2.x, 1106f), func_4(Struct_2(var_0.d, var_0.b, Struct_1(var_2.x, -291f), Struct_1(false, -1173f), vec2<u32>(var_0.b.x, u_input.d.x)), var_0.c, u_input.b).a, func_4(Struct_2(Struct_1(true, var_0.d.b), var_0.b, var_0.a, var_0.a, var_0.e), Struct_1(true, var_0.c.b), u_input.b)), func_4(Struct_2(var_0.d, vec4<u32>(63470u, 1u, u_input.d.x, u_input.c.x), var_0.d, var_0.c, vec2<u32>(4294967295u, 4294967295u)), var_0.c, ~u_input.b).c, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 25199i), vec2<i32>(-1i, var_3))).b, var_2.wy), var_0.c, func_7(Struct_1(func_5(Struct_2(var_0.a, u_input.d, var_0.c, var_0.c, u_input.c), true, Struct_1(false, -193f), ~var_3).a, -982f), func_1(_wgslsmith_add_vec4_u32(u_input.d, var_0.b), vec4<f32>(_wgslsmith_f_op_f32(min(3134f, var_0.c.b)), 462f, var_0.c.b, func_1(vec4<u32>(22154u, u_input.d.x, 72101u, 1u), vec4<f32>(var_0.c.b, var_0.a.b, var_0.c.b, -1198f), var_0.a).b), var_0.a), Struct_2(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.x, var_0.e.x, 129736u, 1u), u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b, -1069f, 500f, -1000f)), func_7(var_0.a, var_0.a, Struct_2(Struct_1(var_0.c.a, -885f), var_0.b, Struct_1(var_0.d.a, -1000f), Struct_1(true, var_0.a.b), vec2<u32>(59372u, 1u))).c), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 4294967295u), select(vec4<u32>(18874u, 26044u, 44374u, u_input.c.x), vec4<u32>(u_input.a.x, u_input.c.x, 23650u, 4294967295u), true)), Struct_1(true, 551f), func_1(vec4<u32>(var_0.b.x, 50821u, 9571u, 20994u), global1[_wgslsmith_index_u32(var_0.e.x >> (4294967295u % 32u), 8u)], func_8(Struct_2(Struct_1(false, var_0.d.b), vec4<u32>(var_0.e.x, 4294967295u, var_0.e.x, var_0.e.x), var_0.a, var_0.d, vec2<u32>(4294967295u, var_0.e.x)), Struct_2(var_0.c, var_0.b, Struct_1(var_0.a.a, var_0.d.b), Struct_1(true, 798f), var_0.e), Struct_2(var_0.d, var_0.b, var_0.d, var_0.a, var_0.e)).d), ~var_0.e)));
    var_0 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), _wgslsmith_f_op_vec4_f32(step(global1[_wgslsmith_index_u32(var_0.b.x, 8u)], global1[_wgslsmith_index_u32(u_input.d.x, 8u)])), var_2.x))) - global1[_wgslsmith_index_u32(~func_4(var_5, var_0.a, vec2<i32>(-1i, -21676i) << (var_5.e % vec2<u32>(32u))).b.x, 8u)]));
}

