struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(1i, 0i, -17183i);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, vec2<f32>(-908f, -354f), vec2<bool>(true, true), 2147483647i), Struct_1(true, vec2<f32>(-517f, 2069f), vec2<bool>(false, false), 4280i), Struct_1(true, vec2<f32>(-1272f, 181f), vec2<bool>(false, false), 1i), Struct_1(true, vec2<f32>(-212f, 274f), vec2<bool>(true, false), -24548i), Struct_1(false, vec2<f32>(-666f, -395f), vec2<bool>(true, true), -34984i), Struct_1(true, vec2<f32>(766f, 1000f), vec2<bool>(false, true), 12320i), Struct_1(false, vec2<f32>(230f, 1275f), vec2<bool>(false, true), -21250i), Struct_1(false, vec2<f32>(-1000f, 1983f), vec2<bool>(true, true), -23368i), Struct_1(false, vec2<f32>(722f, -423f), vec2<bool>(true, false), 14398i), Struct_1(false, vec2<f32>(-2183f, -366f), vec2<bool>(false, false), i32(-2147483648)), Struct_1(false, vec2<f32>(225f, -396f), vec2<bool>(true, true), 38826i), Struct_1(false, vec2<f32>(-739f, -1552f), vec2<bool>(true, true), -1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: i32, arg_3: u32) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(~min(1u, ~_wgslsmith_mult_u32(~u_input.c, 52268u)), 12u)];
    var var_1 = global1[_wgslsmith_index_u32(u_input.d.x, 12u)];
    var var_2 = true;
    let var_3 = firstLeadingBit(arg_3);
    let var_4 = Struct_1(true, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -223f), _wgslsmith_f_op_f32(-var_0.b.x)))), !select(select(var_0.c, vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, select(false, var_0.a, var_1.c.x)), all(vec3<bool>(false, var_0.c.x, var_1.c.x)) || (0u <= u_input.d.x)), abs(arg_2));
    return !vec3<bool>(false, true, !(var_0.d > _wgslsmith_mod_i32(var_0.d, var_0.d)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 12>();
    var var_0 = Struct_1(any(!(!func_3(arg_0.d, vec4<i32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], arg_0.d, global0[_wgslsmith_index_u32(76515u, 3u)]), arg_0.d, 0u))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.b), arg_0.c, _wgslsmith_mod_i32(2147483647i, firstLeadingBit(reverseBits(abs(0i)))));
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    let var_1 = arg_0.a;
    return Struct_1(var_0.c.x, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_div_f32(531f, var_0.b.x))))), arg_0.b.x), vec2<bool>(false != func_3(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 3u)]), vec4<i32>(arg_0.d, arg_0.d, u_input.a, -10390i), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], 0i, -2147483647i), 0u >> (u_input.d.x % 32u)).x, true), select(global0[_wgslsmith_index_u32(reverseBits(u_input.d.x), 3u)], 1i, var_1));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    global1 = array<Struct_1, 12>();
    var var_0 = Struct_1(!(!(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.d.x, 42510u), vec4<u32>(8718u, arg_0, 0u, 4294967295u)) < max(10226u, 1u))), arg_1.b, arg_1.c, _wgslsmith_div_i32(abs(global0[_wgslsmith_index_u32(u_input.d.x, 3u)]), 1i));
    var var_1 = any(!(!vec2<bool>(func_2(global1[_wgslsmith_index_u32(arg_0, 12u)]).a, any(vec3<bool>(arg_1.a, true, arg_1.c.x)))));
    var var_2 = Struct_1(1087f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(-arg_1.b.x)) * arg_1.b.x), func_2(func_2(Struct_1(all(vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(var_0.b.x, -568f)), var_0.c, _wgslsmith_mod_i32(var_0.d, arg_1.d)))).b, arg_1.c, -abs(41082i));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(func_2(func_2(Struct_1(true, vec2<f32>(-1363f, var_0.b.x), var_0.c, -5857i))).b, arg_1.b)));
    return countOneBits(_wgslsmith_sub_vec4_u32(abs(~max(vec4<u32>(u_input.c, arg_0, arg_0, 4294967295u), vec4<u32>(0u, 70978u, 9453u, u_input.d.x))), vec4<u32>(max(max(u_input.d.x, u_input.c), u_input.d.x), 65870u, 31028u, arg_0)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = array<Struct_1, 12>();
    var var_0 = -(33491i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_0, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)]), firstLeadingBit(u_input.e)), max(-vec2<i32>(2147483647i, 2689i), abs(u_input.b))));
    let var_1 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.c, u_input.c, 33078u, 4294967295u) << (vec4<u32>(arg_0, u_input.c, u_input.c, 8238u) % vec4<u32>(32u))), func_4(~11221u, func_2(Struct_1(true, vec2<f32>(-385f, -392f), vec2<bool>(false, false), 293i)))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, arg_0, 91427u, 33948u), vec4<u32>(4294967295u, 4294967295u, u_input.c, arg_0) ^ vec4<u32>(arg_0, u_input.d.x, 1u, u_input.d.x)), countOneBits(u_input.d.x), u_input.c, 4294967295u), (select(vec4<u32>(u_input.d.x, u_input.d.x, 6671u, 8347u), vec4<u32>(27414u, 10145u, arg_0, arg_0), vec4<bool>(true, true, true, true)) >> (abs(vec4<u32>(arg_0, 1u, arg_0, arg_0)) % vec4<u32>(32u))) | firstLeadingBit(~vec4<u32>(66897u, arg_0, arg_0, 0u))), ~reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(10334u, 95536u, arg_0, arg_0), vec4<u32>(0u, 1u, 41642u, u_input.c), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 32575u))), false);
    var_0 = -1i;
    global0 = array<i32, 3>();
    return Struct_1(func_3(-18166i, -_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, 22317i, 25407i, global0[_wgslsmith_index_u32(0u, 3u)]), ~vec4<i32>(-35108i, u_input.b.x, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 3u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.e, u_input.e), abs(global0[_wgslsmith_index_u32(1u, 3u)]), global0[_wgslsmith_index_u32(~4294967295u, 3u)]), countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(0u, 3u)], -13017i, global0[_wgslsmith_index_u32(0u, 3u)]))), arg_0).x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(219f, _wgslsmith_f_op_f32(-1f)))), vec2<bool>(-1i != global0[_wgslsmith_index_u32(select(~4294967295u, 1u, true), 3u)], true), 0i);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~reverseBits(_wgslsmith_mod_u32(39237u, 1u)), u_input.c, countOneBits(_wgslsmith_div_u32(18846u, 68430u))) & _wgslsmith_mod_u32(u_input.d.x, 1u);
    let var_1 = reverseBits(6387u) << (var_0 % 32u);
    var var_2 = true;
    global1 = array<Struct_1, 12>();
    return func_2(global1[_wgslsmith_index_u32(1u, 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, false, true);
    global0 = array<i32, 3>();
    let var_1 = func_5(!select(!(!var_0.yy), !(!vec2<bool>(var_0.x, var_0.x)), false), func_1(u_input.d.x), func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, u_input.d.x, 17547u), vec3<u32>(4294967295u, u_input.c, 1465u), vec3<bool>(var_0.x, var_0.x, true)), vec3<u32>(75090u, u_input.c, u_input.c) | vec3<u32>(u_input.c, u_input.c, u_input.c)), max(~u_input.c, ~u_input.c)), 12u)]), func_2(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, ~u_input.d.x), 12u)]));
    let var_2 = global1[_wgslsmith_index_u32(u_input.d.x, 12u)];
    let var_3 = _wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global0[_wgslsmith_index_u32(123342u, 3u)], var_2.d), vec3<i32>(var_2.d, -49909i, var_2.d)) << (countOneBits(vec3<u32>(u_input.d.x, 87223u, 41645u)) % vec3<u32>(32u)), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, var_2.d), vec3<i32>(var_2.d, 1i, 0i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)], -64861i)))), vec3<i32>(-2147483647i, var_2.d, global0[_wgslsmith_index_u32(22279u, 3u)]));
    var var_4 = false;
    global0 = array<i32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(u_input.e.x | var_2.d, var_3.x << (u_input.c % 32u))), var_3.xx));
}

