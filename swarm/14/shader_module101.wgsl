struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<f32, 3>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    global0 = array<Struct_1, 5>();
    let var_0 = arg_1.e.a.x;
    var var_1 = arg_1.b.a.x;
    var var_2 = ~(arg_0.a.wwy & arg_0.a.zzy);
    var var_3 = Struct_2(vec2<i32>(var_0, -78812i) >> (min(arg_1.d.yz, ~var_2.zx) % vec2<u32>(32u)));
    return 927f;
}

fn func_3() -> vec4<bool> {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = 64333u;
    global1 = array<f32, 3>();
    global0 = array<Struct_1, 5>();
    return !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, select(true, false, true), any(vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(var_0, 3u)] != -2056f)));
}

fn func_2() -> vec4<i32> {
    let var_0 = ~1i;
    global1 = array<f32, 3>();
    let var_1 = Struct_3(vec4<u32>(max(firstTrailingBit(10636u), 1u), 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31759u, u_input.b, 34111u, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, 0u)), ~85142u), ~4294967295u) | ~(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) >> (~vec4<u32>(4294967295u, 4294967295u, u_input.b, 4294967295u) % vec4<u32>(32u))), u_input.b, vec2<bool>(all(func_3()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -395f))) >= -1209f), global0[_wgslsmith_index_u32(u_input.b & abs(~u_input.b), 5u)]);
    global1 = array<f32, 3>();
    let var_2 = var_1.a.xxz;
    return (vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_0, -46249i, var_0) >> (var_1.a % vec4<u32>(32u)), abs(vec4<i32>(u_input.a.x, 22828i, u_input.a.x, u_input.c)))) >> (vec4<u32>(firstLeadingBit(45870u), ~(~40025u), 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 68995u), var_1.a.zw) ^ _wgslsmith_add_vec2_u32(var_2.xx, var_1.a.xw), ~firstLeadingBit(var_2.yz))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = vec3<u32>(u_input.b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(~max(u_input.b, u_input.b), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.b, u_input.b)), vec3<u32>(u_input.b, 4294967295u, u_input.b))), ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(36514u, 0u, 14496u, 1u)))), u_input.b);
    var var_1 = vec2<bool>(true, true);
    var_1 = !func_3().yx;
    let var_2 = !(!select(vec2<bool>(true, all(vec2<bool>(false, var_1.x))), func_3().zy, func_3().xz));
    var_1 = vec2<bool>(all(vec3<bool>(true, 581f <= _wgslsmith_f_op_f32(abs(arg_0.x)), true)), func_3().x);
    return Struct_2(vec2<i32>(_wgslsmith_add_i32(reverseBits(abs(arg_1.x)), 1i), countOneBits(1861i)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_sub_vec4_i32(max(~vec4<i32>(1i, 51571i, arg_0.a.x, 0i) >> ((~vec4<u32>(4565u, u_input.b, u_input.b, 30448u) >> (vec4<u32>(u_input.b, 1u, u_input.b, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(~(vec4<i32>(1i, u_input.a.x, 18705i, arg_0.a.x) | vec4<i32>(-1i, arg_0.a.x, u_input.c, 11062i)))), vec4<i32>(0i, firstLeadingBit(firstTrailingBit(firstTrailingBit(-8425i))), abs(-10412i), 0i));
    global0 = array<Struct_1, 5>();
    global1 = array<f32, 3>();
    var var_1 = arg_0;
    return Struct_5(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 18283u, u_input.b)), reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), vec4<u32>(~4294967295u, u_input.b, _wgslsmith_clamp_u32(u_input.b, 0u, 4675u), _wgslsmith_mult_u32(u_input.b, u_input.b)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(64823u, 0u, 1u, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 3>();
    let var_0 = func_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_5(vec4<u32>(0u, 12775u, u_input.b, 25754u)), Struct_4(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)]), Struct_1(vec4<bool>(true, false, false, true), 1376f, vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)]), 1956f), false, vec3<u32>(u_input.b, 31528u, 0u), Struct_2(u_input.a.zx)), select(u_input.a, vec3<i32>(2147483647i, -2147483647i, 15870i), vec3<bool>(false, false, true)), Struct_2(vec2<i32>(6005i, u_input.a.x)))), global1[_wgslsmith_index_u32(72384u, 3u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(-5744i, select(u_input.a.x, u_input.c, true), -2147483647i, 11607i), vec4<i32>(-2147483647i, 0i, abs(u_input.a.x), i32(-1i) * -9614i), func_2())), !vec4<bool>(u_input.a.x < u_input.c, true, all(vec3<bool>(true, true, true)), select(false, true, false) && true));
    global1 = array<f32, 3>();
    global1 = array<f32, 3>();
    global0 = array<Struct_1, 5>();
    let var_1 = Struct_4(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_div_u32(~0u, var_0.a.x)), 3u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(140f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(10358u, 3u)]))), global0[_wgslsmith_index_u32(u_input.b, 5u)], false, var_0.a.yxz, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 3u)], 420f))))), ~select(vec4<i32>(-9367i, u_input.c, 2147483647i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, -1i, -1i), vec4<bool>(false, false, false, false)) << (firstLeadingBit(~var_0.a) % vec4<u32>(32u))));
    var var_2 = abs(~(-min(firstLeadingBit(4279i), abs(-1i))));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(18811i, select(~(~vec4<u32>(var_0.a.x, var_1.d.x, var_1.d.x, var_1.d.x)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 94006u), vec4<u32>(0u, 4294967295u, var_1.d.x, var_1.d.x)) % vec4<u32>(32u)), vec4<u32>(var_1.d.x, select(6055u, 17255u, var_1.b.a.x & false), var_1.d.x, 34855u), !var_1.b.a), -(vec2<i32>(max(u_input.c, u_input.a.x), func_4(vec2<f32>(-228f, var_1.b.d), vec4<i32>(1i, u_input.c, -8944i, var_1.e.a.x)).a.x) << (firstTrailingBit(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))));
}

