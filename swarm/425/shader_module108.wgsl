struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_1(~_wgslsmith_mod_u32(31273u, u_input.c.x) < (~_wgslsmith_sub_u32(4294967295u, 4294967295u) & ~countOneBits(u_input.c.x)), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, ~arg_0.b.x, -18730i, 2147483647i), -(~arg_2.a.b), firstTrailingBit(-arg_2.a.b)), arg_2.a.b), arg_2.a.c);
    global0 = array<Struct_2, 8>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(136f, arg_0.a) - vec2<f32>(var_0.c.x, 1937f))), vec2<f32>(1000f, arg_0.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(-895f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1969f, var_0.c.x) + _wgslsmith_f_op_vec2_f32(round(arg_2.a.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c))))));
    let var_2 = -_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(max(arg_0.b.yx, countOneBits(arg_2.a.b.yw)), arg_2.a.b.xx), -1i, -19852i | abs(firstLeadingBit(u_input.a.x)));
    let var_3 = ~select(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 4577u, 1u) | u_input.c.yxx, ~vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)), u_input.c.xzy, !arg_2.a.a && arg_2.a.a);
    return abs(~(~_wgslsmith_clamp_i32(firstLeadingBit(2147483647i), var_0.b.x, -arg_2.a.b.x)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.d, u_input.d << (30610u % 32u))) | -1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, -80790i, 42044i, -16844i) << (u_input.c % vec4<u32>(32u)), vec4<i32>(countOneBits(u_input.a.x), u_input.a.x, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.b, 2147483647i), vec4<i32>(u_input.a.x, u_input.b, 1i, 1i))), true), -vec4<i32>(-1360i, _wgslsmith_mult_i32(-9140i, 0i), 0i, func_3(Struct_2(1000f, vec3<i32>(29079i, 1i, u_input.a.x), vec4<f32>(-919f, 779f, 934f, 331f)), Struct_2(-1348f, vec3<i32>(u_input.d, u_input.a.x, 29489i), vec4<f32>(-154f, -1000f, -1173f, -2352f)), Struct_3(Struct_1(arg_0, vec4<i32>(u_input.b, 13873i, u_input.d, -1i), vec2<f32>(116f, -658f)))))));
    var var_1 = select(!(!vec2<bool>(arg_0, arg_0 & arg_0)), vec2<bool>(true, true), !arg_0);
    return Struct_1(arg_0, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, ~u_input.a.x, u_input.d, -1224i), _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.b, countOneBits(u_input.d), countOneBits(2147483647i), -2147483647i), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 21841i, -2062i), vec4<i32>(-42983i, 39144i, -16697i, u_input.a.x)))), vec2<f32>(1896f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(495f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-125f, -708f))))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-103f)) - -211f))), -vec3<i32>(u_input.a.x, 43737i, abs(1i)), _wgslsmith_div_vec4_f32(vec4<f32>(-778f, _wgslsmith_div_f32(-1227f, _wgslsmith_div_f32(429f, 926f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-404f - _wgslsmith_f_op_f32(496f * -466f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(875f, 751f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-329f, 338f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(308f, -329f)), _wgslsmith_f_op_f32(1200f - 314f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1427f - 466f) * _wgslsmith_div_f32(1088f, 1675f)))));
    var var_1 = Struct_3(func_2(all(select(!arg_3.xy, !arg_3.xy, true)), vec2<u32>(69212u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c.x, arg_0), _wgslsmith_add_u32(1u, 40829u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(var_0.c.yzw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_f_op_f32(f32(-1f) * -937f)), 136f)), true));
    var_1 = Struct_3(var_1.a);
    var var_3 = Struct_3(Struct_1(arg_3.x, var_1.a.b, vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.c.x), var_1.a.c.x)));
    return var_3.a;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(-475f, firstTrailingBit(~(~arg_2.a.b.yzy)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.a.c.x, arg_2.a.c.x, -893f, -1000f), vec4<f32>(arg_2.a.c.x, arg_2.a.c.x, -2119f, arg_2.a.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c.x, arg_2.a.c.x, arg_2.a.c.x, -852f)), !vec4<bool>(arg_2.a.a, arg_0, arg_0, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, arg_2.a.c.x, arg_2.a.c.x, arg_2.a.c.x) + vec4<f32>(-1000f, 1742f, 113f, arg_2.a.c.x)))))));
    var var_1 = arg_2.a;
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-342f, -1327f, true))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-597f, arg_2.a.c.x))))))));
    return Struct_1(all(select(select(!vec3<bool>(true, false, arg_2.a.a), vec3<bool>(arg_2.a.a, false, false), any(vec2<bool>(true, true))), select(select(vec3<bool>(arg_2.a.a, true, false), vec3<bool>(true, true, arg_2.a.a), vec3<bool>(false, true, var_1.a)), !vec3<bool>(true, true, var_1.a), select(var_1.a, false, var_1.a)), vec3<bool>(true, true, true))), vec4<i32>(_wgslsmith_div_i32(~arg_2.a.b.x, _wgslsmith_add_i32(0i, _wgslsmith_dot_vec3_i32(var_0.b, var_1.b.wyw))), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(-14011i, arg_2.a.b.x)), var_1.b.x, ~(~(-var_1.b.x))), _wgslsmith_f_op_vec2_f32(-var_1.c));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = Struct_3(Struct_1(false, _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.b, vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x) >> (u_input.c % vec4<u32>(32u))), -vec4<i32>(u_input.b, 17265i, -2147483647i, u_input.a.x)), vec2<f32>(-685f, func_1(min(u_input.c.x, u_input.c.x), u_input.c.x, all(vec3<bool>(arg_0.a, true, arg_0.a)), vec3<bool>(false, arg_0.a, arg_0.a)).c.x)));
    let var_1 = false;
    var var_2 = func_4(_wgslsmith_clamp_u32(53592u, min(min(u_input.c.x, u_input.c.x), ~1u), ~1u) >= _wgslsmith_sub_u32(78590u, select(~u_input.c.x, 15400u << (u_input.c.x % 32u), arg_0.b.x < -1i)), -_wgslsmith_dot_vec4_i32(-select(vec4<i32>(arg_0.b.x, -32382i, 1i, 55308i), vec4<i32>(-22189i, arg_0.b.x, u_input.d, -40491i), arg_0.a), select(arg_0.b, vec4<i32>(37355i, -19224i, 1i, -2170i), !vec4<bool>(var_0.a.a, var_1, false, false))), Struct_3(func_2(true, vec2<u32>(~u_input.c.x, ~u_input.c.x))));
    var_0 = Struct_3(func_1(u_input.c.x, abs(4294967295u), abs(1u) < _wgslsmith_clamp_u32(_wgslsmith_add_u32(25443u, u_input.c.x), 13283u, 1u), vec3<bool>(true, func_1(4294967295u, 19183u, var_0.a.a, vec3<bool>(arg_0.a, var_2.a, false)).a || true, var_2.a)));
    global0 = array<Struct_2, 8>();
    return StorageBuffer(u_input.c.x, vec2<i32>(arg_0.b.x, 42920i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 8u)];
    let var_1 = u_input.c.xzy;
    let var_2 = select(var_1, ~(~min(vec3<u32>(4294967295u, var_1.x, var_1.x), vec3<u32>(54178u, 67922u, var_1.x))), any(vec4<bool>(true, var_0.c.x == var_0.a, true, true)) || (any(vec3<bool>(false, false, false)) | (_wgslsmith_f_op_f32(-var_0.a) == var_0.a)));
    var var_3 = vec3<bool>(true, true, true);
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_add_u32(var_2.x, 9622u), u_input.c.x), var_1.x, 4294967295u, 584u), abs(firstLeadingBit(vec4<u32>(var_1.x, reverseBits(20383u), 4294967295u, ~69962u)))), 8u)];
    var var_5 = true;
    let x = u_input.a;
    s_output = func_5(func_4(var_3.x, 1i, Struct_3(func_1(firstLeadingBit(0u), ~var_1.x, var_3.x, vec3<bool>(false, var_3.x, var_3.x)))));
}

