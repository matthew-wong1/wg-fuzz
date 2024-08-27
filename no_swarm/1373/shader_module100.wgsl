struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> i32 {
    global0 = array<vec3<bool>, 31>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_add_vec2_i32(u_input.b.xz, vec2<i32>(i32(-1i) * -13287i, _wgslsmith_mult_i32(27014i, -1i))) & vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(7168i, 1i), u_input.b.wy), -2147483647i), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, 56415u, 49273u, u_input.a), vec4<u32>(14070u, u_input.d, 4294967295u, 0u) | vec4<u32>(4294967295u, 6907u, 118217u, u_input.d), _wgslsmith_sub_vec4_u32(vec4<u32>(36863u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 1u, 0u, u_input.d))), max(vec4<u32>(u_input.a, u_input.a, 19055u, 19381u), select(vec4<u32>(u_input.d, 0u, 37453u, u_input.d), vec4<u32>(u_input.a, 1u, u_input.d, u_input.a), true))) >> (vec4<u32>(46836u, u_input.d, _wgslsmith_sub_u32(~u_input.d, u_input.a << (0u % 32u)), u_input.a) % vec4<u32>(32u)));
    let var_1 = var_0.c;
    var var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.a, 530f)), _wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(var_0.a - -851f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-406f, 209f, var_0.a))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(321f, var_0.a, _wgslsmith_div_f32(-1433f, -2140f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1928f * _wgslsmith_f_op_f32(-var_0.a))), var_0.a, var_0.a));
    return var_0.b.x;
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(318f + 771f) + 1497f))))), vec2<i32>(_wgslsmith_mult_i32(u_input.c, func_3()), func_3()), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(u_input.a, 67530u, 57666u, 11006u))), ~vec4<u32>(firstTrailingBit(23951u), 72063u, u_input.a, abs(u_input.a))));
    var var_1 = vec3<bool>(true, select(!(!select(true, true, false)), select(any(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, false, false)), all(vec3<bool>(false, true, false))) | true, ~firstTrailingBit(var_0.b.x) < var_0.b.x), false);
    return var_1.zy;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> i32 {
    global0 = array<vec3<bool>, 31>();
    let var_0 = arg_1;
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    var var_1 = func_2();
    return 33046i;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<i32>) -> Struct_4 {
    var var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(22107u, abs(113463u), _wgslsmith_clamp_u32(arg_0.c.c.x, arg_0.c.c.x, 4294967295u), _wgslsmith_clamp_u32(22322u, u_input.a, 1u)), _wgslsmith_sub_vec4_u32(arg_0.c.c, arg_0.c.c | arg_0.c.c)), (~arg_0.c.c >> (_wgslsmith_sub_vec4_u32(arg_0.c.c, vec4<u32>(56852u, 4313u, 86194u, 14352u)) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(52103u, 1u, arg_0.d, u_input.a)), arg_0.c.c));
    var var_1 = any(!select(!arg_1, vec3<bool>(arg_1.x, false, false), vec3<bool>(false, true, !arg_1.x)));
    var var_2 = arg_0.c.c.zwx >> (var_0.xxy % vec3<u32>(32u));
    var var_3 = arg_0.a;
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.a, vec2<f32>(arg_0.e, -585f)))) - vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(ceil(var_3.x))))), _wgslsmith_clamp_vec3_i32(~abs(arg_2 | u_input.b.yxy), arg_0.b, -(_wgslsmith_add_vec3_i32(arg_2, vec3<i32>(arg_2.x, -2147483647i, -28647i)) | vec3<i32>(-1i, 57544i, 2147483647i))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_3.x, 1000f)), _wgslsmith_f_op_f32(round(193f)))), var_3.x), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, arg_0.c.b.x), ~vec2<i32>(arg_2.x, -54261i))), ~vec4<u32>(u_input.a, 1u, 38496u, u_input.d) >> (~countOneBits(arg_0.c.c) % vec4<u32>(32u))), var_2.x, _wgslsmith_f_op_f32(-var_3.x));
    return Struct_4(-abs(vec4<i32>(countOneBits(u_input.e.x), -u_input.b.x, _wgslsmith_mult_i32(0i, u_input.e.x), u_input.e.x)), arg_1.x, _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i >> (var_4.c.c.x % 32u), func_3(), ~20266i), countOneBits(~firstTrailingBit(u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 175f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(122f, 716f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-260f, 960f) + vec2<f32>(900f, 1384f)))))));
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    let var_1 = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x)))), abs(u_input.b.ywz), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-170f - var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), u_input.b.yz, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.d, 0u, 4294967295u), vec4<u32>(71990u, u_input.d, u_input.d, u_input.a)), abs(vec4<u32>(u_input.a, 1u, u_input.a, u_input.d)))), countOneBits(u_input.a << (select(u_input.a, 1u, false) % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1898f, var_0.x)))), select(select(global0[_wgslsmith_index_u32(u_input.d, 31u)], vec3<bool>(all(global0[_wgslsmith_index_u32(0u, 31u)]), false, 2147483647i > u_input.e.x), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), global0[_wgslsmith_index_u32(u_input.a, 31u)])), select(vec3<bool>(true, u_input.e.x <= u_input.c, true), vec3<bool>(var_0.x > var_0.x, all(global0[_wgslsmith_index_u32(7817u, 31u)]), true), 17857i <= func_1(vec3<i32>(-2147483647i, u_input.b.x, -1i), Struct_3(Struct_2(var_0, vec3<i32>(-2147483647i, -15532i, u_input.e.x), Struct_1(var_0.x, vec2<i32>(u_input.b.x, -1i), vec4<u32>(24164u, u_input.d, 28423u, u_input.a)), u_input.d, var_0.x), Struct_2(var_0, u_input.e, Struct_1(697f, vec2<i32>(-8572i, -1i), vec4<u32>(u_input.a, u_input.a, u_input.d, u_input.d)), 131447u, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 320f), Struct_1(var_0.x, u_input.e.xz, vec4<u32>(6784u, 4294967295u, 9772u, 0u)), var_0))), !(-272f > _wgslsmith_f_op_f32(-var_0.x))), max(vec3<i32>(u_input.b.x, i32(-1i) * -2147483647i, _wgslsmith_sub_i32(-1i, u_input.c)), vec3<i32>(2147483647i, func_1(vec3<i32>(2147483647i, u_input.c, u_input.e.x), Struct_3(Struct_2(var_0, vec3<i32>(-1i, u_input.c, u_input.b.x), Struct_1(113f, vec2<i32>(u_input.c, u_input.b.x), vec4<u32>(4294967295u, 48778u, u_input.a, 1u)), 1u, var_0.x), Struct_2(vec2<f32>(1360f, -122f), vec3<i32>(-51684i, 2147483647i, u_input.b.x), Struct_1(-1272f, vec2<i32>(u_input.b.x, 1i), vec4<u32>(4294967295u, u_input.d, 87147u, u_input.d)), u_input.d, var_0.x), vec4<f32>(var_0.x, 580f, var_0.x, var_0.x), Struct_1(-1201f, vec2<i32>(u_input.e.x, -5218i), vec4<u32>(1u, u_input.a, 5608u, u_input.a)), vec2<f32>(var_0.x, 435f))), -29361i) & ~(u_input.b.yzx | vec3<i32>(-36250i, 1i, u_input.b.x))));
    let var_2 = _wgslsmith_clamp_i32(~0i, abs(var_1.c.x & var_1.a.x), ~(-13587i));
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    let var_3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -121f)), var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(1456f + 298f)))), ~(~var_1.a.x), var_0.x, _wgslsmith_add_i32(var_1.a.x, _wgslsmith_mod_i32(u_input.e.x, _wgslsmith_clamp_i32(~(-101i), 1i, abs(var_2)))), countOneBits(-2147483647i));
}

