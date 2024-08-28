struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: i32 = 16120i;

var<private> global2: array<vec3<bool>, 27>;

var<private> global3: i32 = 2147483647i;

var<private> global4: array<f32, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: f32) -> vec4<f32> {
    let var_0 = vec3<i32>(-_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-27149i, -1246i, u_input.b, -1i)), ~vec4<i32>(-90561i, 27032i, arg_0.x, -34570i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-(~7192i), -2147483647i, reverseBits(arg_0.x & -37625i), 1i), ~_wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, -30168i, arg_0.x, arg_0.x), -vec4<i32>(0i, -5825i, u_input.a, u_input.a))), abs(u_input.b));
    var var_1 = max(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-33477i, -73906i), _wgslsmith_mult_vec2_i32(var_0.xx, arg_0.zx) ^ firstTrailingBit(arg_0.zz)), min(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, -2147483647i), -var_0.x), u_input.a)), u_input.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2044f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2423f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-840f * global4[_wgslsmith_index_u32(40686u, 1u)]) - arg_2.x) + _wgslsmith_f_op_f32(round(1032f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1326f, arg_3) - -1836f), global4[_wgslsmith_index_u32(~abs(arg_1), 1u)])));
    global2 = array<vec3<bool>, 27>();
    var var_3 = Struct_2(_wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(24211u, 4294967295u, arg_1, arg_1))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 101619u, 86240u, arg_1), vec4<u32>(arg_1, 0u, 42854u, 20778u) & vec4<u32>(arg_1, 34178u, 75807u, 204u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 19297u, 4294967295u, arg_1), vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(arg_1, arg_1, 4294967295u, 1u)) >> (firstTrailingBit(vec4<u32>(4294967295u, arg_1, 4294967295u, arg_1)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1654f, var_2.x, arg_2.x, global4[_wgslsmith_index_u32(arg_1, 1u)]), vec4<f32>(1266f, -576f, 1000f, 856f))))), all(vec2<bool>(true, !any(vec2<bool>(true, true)))));
    return _wgslsmith_f_op_vec4_f32(-var_3.b);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    global2 = array<vec3<bool>, 27>();
    global4 = array<f32, 1>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(arg_1.x, 2147483647i, arg_2), 0u, arg_0, global4[_wgslsmith_index_u32(29440u, 1u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1316f, arg_0.x, global4[_wgslsmith_index_u32(52086u, 1u)], -598f))) * vec4<f32>(_wgslsmith_f_op_f32(max(358f, global4[_wgslsmith_index_u32(1u, 1u)])), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(37883u, 1u)] - -1697f), global4[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_f_op_f32(min(arg_0.x, global4[_wgslsmith_index_u32(5602u, 1u)]))))), _wgslsmith_mod_i32(~0i, min(0i, -arg_2) | u_input.b), ~countOneBits(~(-2147483647i)), vec2<bool>(true, true), arg_1.x);
    global2 = array<vec3<bool>, 27>();
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(~68482u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 62070u), vec2<u32>(39883u, 27472u))), 1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(22592u, 32327u), 1u), 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~reverseBits(vec4<u32>(58493u, 64041u, 1u, 27724u))) >> ((firstTrailingBit(~vec4<u32>(4294967295u, 66657u, 0u, 1u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), 29u)];
    return Struct_1(vec4<f32>(-1046f, _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(trunc(2373f))))), var_0.a.x, 2469f), var_0.b, ~64081i, var_0.d, -u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec4<f32> {
    global1 = arg_0.c;
    global2 = array<vec3<bool>, 27>();
    global0 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_2.b.zxz * func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-685f, -1000f) * arg_0.a.yw), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b.x, arg_2.b.x), arg_2.b.zw)), ~(~vec2<i32>(1i, u_input.b)), -11662i).a.wyw)));
    var var_1 = reverseBits(0i);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_2.a.x, 1u)])))), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f) - _wgslsmith_f_op_f32(abs(-239f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(200f, var_0.x), _wgslsmith_f_op_f32(ceil(1304f)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.a.x, 43356u), 1u)], _wgslsmith_f_op_f32(-arg_2.b.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    var var_0 = Struct_2(~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 38952u, 0u), vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, arg_2.a.x, -954f, arg_1.x), arg_2.a, false)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(596f, global4[_wgslsmith_index_u32(38782u, 1u)], arg_0.b.x, arg_0.b.x) - arg_0.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(arg_0.b.yz, vec2<i32>(2147483647i, -4384i), 0i), ~(-2147483647i), arg_0)) + _wgslsmith_f_op_vec4_f32(sign(arg_2.a)))), arg_0.c);
    global2 = array<vec3<bool>, 27>();
    let var_1 = vec2<f32>(-1876f, 485f);
    let var_2 = -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a & u_input.b, 0i, 2147483647i << (var_0.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(15576i, arg_2.c, u_input.b, arg_2.c), vec4<i32>(-1i, arg_2.b, u_input.a, u_input.b))), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, arg_2.e, u_input.b, arg_2.c), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -40037i, -59536i, arg_2.e), vec4<i32>(arg_2.b, arg_2.b, 0i, -2147483647i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, i32(-1i) * -2147483647i, ~u_input.a, ~u_input.a), vec4<i32>(0i, 1i, 0i, arg_2.b & 35813i)));
    var var_3 = arg_0;
    return ~(var_0.a << (max(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_3.a.x, 1u, 4294967295u, 18828u), vec4<u32>(arg_0.a.x, var_3.a.x, 0u, var_3.a.x), vec4<bool>(var_0.c, false, arg_3, arg_3)), ~arg_0.a, vec4<u32>(arg_0.a.x, var_3.a.x, 52063u, var_0.a.x)), ~select(vec4<u32>(59139u, var_0.a.x, arg_0.a.x, var_3.a.x), var_3.a, vec4<bool>(var_3.c, arg_2.d.x, true, arg_2.d.x))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~select(~vec4<u32>(10752u, 4294967295u, 20226u, 4294967295u), ~func_1(Struct_2(vec4<u32>(0u, 4983u, 1u, 1u), vec4<f32>(global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(48379u, 1u)], -1000f, -1000f), false), vec2<f32>(187f, 466f), global0[_wgslsmith_index_u32(61540u, 29u)], true), vec4<bool>(false, all(vec2<bool>(true, true)), true, all(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(8715u, 1u)], 711f, global4[_wgslsmith_index_u32(9361u, 1u)], -400f))))), select(true, any(vec4<bool>(true, true, true, true)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(25238u, 1u)]))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b, 1i), countOneBits(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(8686i, u_input.b), vec2<i32>(-1i, 0i))), 1i).d.x));
    global2 = array<vec3<bool>, 27>();
    let var_1 = Struct_2(vec4<u32>(_wgslsmith_add_u32(4294967295u, ~min(var_0.a.x, 39905u)), reverseBits(firstTrailingBit(~var_0.a.x)), var_0.a.x, reverseBits(reverseBits(~var_0.a.x))), var_0.b, true);
    global1 = ~u_input.a;
    let var_2 = var_1.b;
    let var_3 = !select(!(!(!vec4<bool>(var_0.c, var_0.c, true, var_0.c))), vec4<bool>(false, true, true, any(vec2<bool>(false, true))), !func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -461f) * var_0.b.zx), vec2<i32>(u_input.b, -11422i), 32935i).d.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~0u, 1u)]), -1000f, true)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~vec2<u32>(var_0.a.x & _wgslsmith_div_u32(4294967295u, var_0.a.x), ~var_1.a.x));
}

