struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(var_0.b.a, ~vec2<u32>(min(16553u, _wgslsmith_sub_u32(var_0.b.d, 50833u)), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(62452u >> (var_0.b.b.x % 32u), 25u)], countOneBits(0u))), var_0.b.c, countOneBits(select(_wgslsmith_clamp_u32(67300u, u_input.c.x, var_0.b.d) & 50431u, ~12531u, var_0.b.a)));
    var_1 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.zz, var_0.b.b) != var_0.b.b.x, vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(21479u, 9334u, 2848u, 42064u), vec4<u32>(global0[_wgslsmith_index_u32(var_0.b.d, 25u)], 29853u, 0u, 58979u) >> (vec4<u32>(var_1.b.x, 119238u, u_input.c.x, 1u) % vec4<u32>(32u))), vec4<u32>(95138u, arg_0.b.d, 42527u, _wgslsmith_mult_u32(var_1.b.x, var_0.b.d))), 15376u), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, var_1.c.x), -2147483647i, -13074i), -(vec3<i32>(arg_0.b.c.x, 45716i, 2189i) & vec3<i32>(2147483647i, var_0.b.c.x, -14578i))) | u_input.b, ~(~global0[_wgslsmith_index_u32(1u | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.b.d, u_input.c.x, global0[_wgslsmith_index_u32(0u, 25u)]), vec4<u32>(34481u, global0[_wgslsmith_index_u32(1u, 25u)], 4294967295u, 64594u)), 25u)]));
    var_1 = var_0.b;
    var_1 = arg_0.b;
    return _wgslsmith_f_op_f32(-541f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_0.a))));
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<f32>(-128f, _wgslsmith_f_op_f32(step(932f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(1211f, Struct_1(false, u_input.c.xy, vec3<i32>(-2147483647i, -2147483647i, u_input.b.x), 4999u)))) - -830f), -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(916f)) * -2092f) * _wgslsmith_f_op_f32(f32(-1f) * -1122f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-390f, 647f)))) - 433f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -726f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(488f, Struct_1(false, u_input.c.zy, vec3<i32>(u_input.b.x, -52845i, -2147483647i), 0u)))), _wgslsmith_f_op_f32(-1457f - -855f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + 2006f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1396f, var_0.x)) * 1077f), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(1192f + var_0.x), any(vec4<bool>(false, false, true, true))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.wzw - var_0.wzx)));
    return Struct_3(Struct_1(!all(vec2<bool>(true, true)), u_input.c.yy, u_input.d << (~vec3<u32>(2743u, u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], 25u)], 25u)], 25u)]) % vec3<u32>(32u)), 14202u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18650u, 25u)], 25u)]);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = func_2();
    var var_1 = select(true || all(!vec3<bool>(arg_1.a.a, arg_1.a.a, true)), !(var_0.a.d < 85312u), var_0.b == u_input.c.x);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -302f)));
    var var_3 = vec2<u32>(1u, (1868u & ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 4492u, 10209u), vec4<u32>(4294967295u, arg_1.a.d, 0u, 23414u))) & ~_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(0u, 25u)], 4294967295u));
    var var_4 = Struct_1(false, func_2().a.b, reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(var_0.a.c, vec3<i32>(arg_1.a.c.x, 2147483647i, 30855i)) << (select(u_input.c, vec3<u32>(u_input.c.x, 106778u, global0[_wgslsmith_index_u32(72627u, 25u)]), vec3<bool>(false, true, var_0.a.a)) % vec3<u32>(32u)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -72696i, arg_0), vec3<i32>(1i, -46656i, arg_0))))), 1u);
    return Struct_3(func_2().a, u_input.c.x);
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a, -395f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, arg_0.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.a - -1309f), _wgslsmith_f_op_f32(step(arg_0.a, arg_0.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, -875f) - vec3<f32>(arg_0.a, arg_0.a, -1103f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-910f, arg_0.a, 276f))))))));
    var var_1 = func_4(1i | _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, arg_0.b.c.x, 2147483647i, arg_0.b.c.x), vec4<i32>(46683i, arg_0.b.c.x, 36300i, -3638i)), ~vec4<i32>(arg_0.b.c.x, arg_0.b.c.x, -75567i, arg_0.b.c.x)), func_2());
    let var_2 = all(vec3<bool>(arg_0.b.a, true, func_4(2147483647i, func_2()).a.a));
    let var_3 = Struct_2(546f, func_2().a);
    let var_4 = var_3;
    return !(!select(!vec4<bool>(true, false, var_2, arg_0.b.a), vec4<bool>(!arg_0.b.a, var_3.b.a, var_4.b.a, var_4.b.a), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var_0 = u_input.a;
    let var_1 = vec4<bool>(true, false, any(select(vec4<bool>(true, u_input.d.x <= u_input.b.x, true, true), !func_1(Struct_2(-623f, Struct_1(false, u_input.c.zy, u_input.d, 43240u))), any(vec2<bool>(true, true)))), !all(vec3<bool>(false, true, true)));
    var_0 = u_input.a;
    var var_2 = (func_2().b & _wgslsmith_div_u32(1u >> (global0[_wgslsmith_index_u32(reverseBits(10241u), 25u)] % 32u), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x) ^ _wgslsmith_mult_u32(65871u, global0[_wgslsmith_index_u32(1u, 25u)]), 25u)])) & (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) | _wgslsmith_dot_vec4_u32(vec4<u32>(58364u, 4294967295u, u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], 25u)], 114225u, u_input.c.x, 23436u)), ~86628u) << (u_input.c.x % 32u));
    var_0 = u_input.a;
    var_0 = i32(-1i) * -1i;
    var var_3 = Struct_1(var_1.x, ~countOneBits(vec2<u32>(47215u, ~global0[_wgslsmith_index_u32(u_input.c.x, 25u)])), ~(~_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, u_input.d.x, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, u_input.d.x), u_input.d))), ~min(_wgslsmith_mult_u32(~1u, reverseBits(u_input.c.x)), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, var_3.d, countOneBits(select(var_3.d, _wgslsmith_clamp_u32(var_3.b.x, u_input.c.x, var_3.b.x), all(vec4<bool>(var_1.x, var_3.a, var_3.a, true)))), reverseBits(_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21630u, 25u)] | global0[_wgslsmith_index_u32(1u, 25u)], 25u)]))), -reverseBits(vec4<i32>(var_3.c.x, 18191i, -1i, -14855i)) | vec4<i32>(min(1i, ~(-2147483647i)), var_3.c.x, 2147483647i, -15226i));
}

