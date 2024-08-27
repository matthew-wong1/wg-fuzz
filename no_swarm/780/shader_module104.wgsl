struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<bool, 1> = array<bool, 1>(false);

var<private> global2: bool = false;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    global1 = array<bool, 1>();
    var var_1 = false | (~(~firstLeadingBit(var_0.c)) <= var_0.a.x);
    let var_2 = select(var_0.a, vec3<u32>(_wgslsmith_mod_u32(1u, var_0.c), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_0.x, var_0.c, 1u, arg_0.x)), abs(max(vec4<u32>(94885u, 47185u, 4294967295u, var_0.c), vec4<u32>(arg_2.c, 1u, 18435u, 1u)))), _wgslsmith_dot_vec3_u32(arg_2.a, arg_2.a)), any(vec2<bool>(true, true)));
    global1 = array<bool, 1>();
    return countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c, arg_2.a.x, 1u, arg_0.x), vec4<u32>(var_2.x, var_0.c, 1u, 1u)), var_0.c, 96724u, _wgslsmith_mod_u32(4294967295u, arg_2.c)), _wgslsmith_add_vec4_u32(vec4<u32>(95314u, ~0u, ~var_2.x, _wgslsmith_mult_u32(arg_0.x, arg_0.x)), vec4<u32>(arg_0.x << (arg_2.c % 32u), arg_2.c, ~1u, firstTrailingBit(0u)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = min(_wgslsmith_mult_u32(~func_3(~arg_0, 150f, Struct_1(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), -1838f, arg_0.x, 337f, vec4<f32>(-1730f, 369f, -1417f, -1723f))), _wgslsmith_dot_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(20606u, arg_0.x, 16518u, arg_0.x), vec4<u32>(19684u, arg_0.x, arg_0.x, arg_0.x)), ~vec4<u32>(0u, 1u, arg_0.x, 4956u), global1[_wgslsmith_index_u32(arg_0.x, 1u)]), ~vec4<u32>(arg_0.x, 20635u, arg_0.x, 62566u))), arg_0.x);
    var var_1 = Struct_1(countOneBits(min(vec3<u32>(arg_0.x, firstTrailingBit(arg_0.x), func_3(arg_0, -2570f, Struct_1(vec3<u32>(arg_0.x, arg_0.x, 50634u), 226f, arg_0.x, 589f, vec4<f32>(1040f, -1497f, 430f, 439f)))), vec3<u32>(~1u, arg_0.x >> (1u % 32u), 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-237f, 2155f))))))), arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-344f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(338f, 518f, -936f, -519f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, 1013f, 570f, 123f) * vec4<f32>(1500f, 718f, 305f, -381f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1328f, 139f, 630f, 299f) * vec4<f32>(1178f, 477f, 909f, -1113f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, 360f, -260f, -578f)))))));
    let var_2 = 0i;
    let var_3 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, var_1.a.x, arg_0.x)), max(~1u, ~var_1.c), abs(1u)), reverseBits(select(_wgslsmith_clamp_vec3_u32(var_1.a, var_1.a, var_1.a), var_1.a, vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 1u)], true))));
    global1 = array<bool, 1>();
    return Struct_1(vec3<u32>(~reverseBits(select(0u, 0u, global1[_wgslsmith_index_u32(4294967295u, 1u)])), var_1.a.x >> (~_wgslsmith_mult_u32(arg_0.x, 1u) % 32u), arg_0.x), var_1.b, var_3, _wgslsmith_f_op_f32(var_1.b - 1440f), var_1.e);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> i32 {
    global2 = arg_0.x;
    let var_0 = func_2(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~arg_2.x, 0u), max(arg_2.zw, arg_2.zx)), ~arg_2.xx), 23716i);
    var var_1 = var_0.d;
    let var_2 = var_0.e;
    let var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(max(arg_2.ww, vec2<u32>(4294967295u, 0u))), _wgslsmith_mod_vec2_u32(arg_2.yy, var_0.a.yx)), abs(_wgslsmith_sub_u32(~(~var_0.c), _wgslsmith_div_u32(~55667u, var_0.c))));
    return ~max(_wgslsmith_clamp_i32(0i, -1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, u_input.e.x), vec4<i32>(arg_1.x, arg_1.x, 16586i, 32818i)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 15541i, -17100i), arg_1), u_input.e.x, !global1[_wgslsmith_index_u32(var_3.x, 1u)])), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(max(vec3<i32>(u_input.b, -2147483647i, func_1(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(24976u, 1u)]), vec3<i32>(-12386i, u_input.d, u_input.a), vec4<u32>(29551u, 0u, 2542u, 4002u))), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, -2147483647i, u_input.a), vec3<i32>(11358i, u_input.d, u_input.a))) >> ((reverseBits(vec3<u32>(1u, 1u, 1u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), select((~vec3<i32>(u_input.e.x, -2147483647i, 0i) & _wgslsmith_div_vec3_i32(vec3<i32>(1i, 26976i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, -7554i))) | vec3<i32>(u_input.c.x, 1i, _wgslsmith_add_i32(u_input.c.x, u_input.e.x)), vec3<i32>(u_input.a, u_input.e.x, u_input.c.x), global1[_wgslsmith_index_u32(1u, 1u)]));
    var var_1 = Struct_1(~(~(~vec3<u32>(28863u, 1u, 1u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1227f) - _wgslsmith_f_op_f32(548f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2045f))))), func_3(~func_2(~vec2<u32>(0u, 1u), _wgslsmith_mod_i32(2147483647i, var_0.x)).a.zy, 188f, func_2(~vec2<u32>(1u, 1u), 50958i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(678f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-879f + 1770f) * func_2(vec2<u32>(0u, 0u), u_input.e.x).b), true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1063f, 1746f, -2716f, 193f) - vec4<f32>(601f, 398f, 379f, 266f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1399f, 1f, 1f, _wgslsmith_f_op_f32(trunc(137f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-793f, -1323f, 1628f, 260f), vec4<f32>(-1373f, 1468f, 1059f, 1673f))))))));
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    let var_2 = func_2(func_2(var_1.a.yz, u_input.c.x).a.yy, -2147483647i);
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(1u, 14529u));
}

