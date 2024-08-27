struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(18392u, 30072u), vec2<bool>(false, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = -1953f;
    global0 = Struct_1(arg_3.a, vec2<bool>(arg_0.b.x, arg_2.c.d.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1289f, 1775f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-711f, 563f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1645f, -2168f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(676f, 1375f) - 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -908f))))));
    let var_2 = -3894i;
    let var_3 = arg_2.b.ywz;
    return vec4<u32>(~0u, _wgslsmith_mod_u32(var_3.x, ~_wgslsmith_div_u32(arg_0.a.x, 1u)), abs(arg_2.b.x) | 46600u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.c.a.x, arg_0.a.x, var_3.x, global0.a.x), vec4<u32>(4294967295u, 53193u, arg_2.c.a.x, 1u)) << (var_3.x % 32u), 4294967295u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec2<i32> {
    global0 = Struct_1(_wgslsmith_add_vec2_u32(select(arg_3.wy, vec2<u32>(_wgslsmith_add_u32(4294967295u, 0u), arg_3.x), true), arg_3.yw | arg_3.wy), global0.b);
    let var_0 = _wgslsmith_add_vec4_u32(arg_3 & vec4<u32>(arg_3.x | u_input.b, u_input.a.x, abs(~0u), arg_3.x), ~arg_3);
    var var_1 = Struct_4(Struct_3(firstLeadingBit((vec4<u32>(2170u, 0u, u_input.a.x, arg_3.x) >> (var_0 % vec4<u32>(32u))) | ~var_0), ~(~58286u), Struct_1(~(global0.a | vec2<u32>(1u, 0u)), !global0.b), vec3<bool>(true, all(global0.b) && !global0.b.x, true)), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(var_0, min(vec4<u32>(23263u, global0.a.x, var_0.x, 1u), vec4<u32>(30418u, 1u, 20504u, arg_3.x))), vec4<u32>(_wgslsmith_mult_u32(1u, 1u), ~func_1(Struct_1(vec2<u32>(4294967295u, arg_3.x), vec2<bool>(true, arg_1)), var_0.xyy, Struct_4(Struct_3(vec4<u32>(global0.a.x, arg_3.x, arg_3.x, arg_3.x), global0.a.x, Struct_1(var_0.xw, global0.b), vec3<bool>(true, global0.b.x, global0.b.x)), vec4<u32>(81139u, arg_3.x, var_0.x, global0.a.x), Struct_3(var_0, 33864u, Struct_1(vec2<u32>(global0.a.x, 31299u), vec2<bool>(arg_1, arg_1)), vec3<bool>(global0.b.x, false, false))), Struct_1(u_input.a, global0.b)).x, ~u_input.a.x, min(abs(1u), 0u))), Struct_3(_wgslsmith_sub_vec4_u32(~(var_0 << (vec4<u32>(var_0.x, 4294967295u, global0.a.x, var_0.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(~arg_3, var_0)), 31903u, Struct_1(vec2<u32>(7500u, var_0.x) ^ arg_3.wz, global0.b), vec3<bool>(true, true, all(select(vec3<bool>(false, global0.b.x, global0.b.x), vec3<bool>(arg_1, global0.b.x, arg_1), vec3<bool>(true, true, true))))));
    var_1 = Struct_4(var_1.c, _wgslsmith_add_vec4_u32(arg_3, var_0), var_1.a);
    let var_2 = arg_2.x;
    return arg_2.ww;
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec4<u32>) -> vec2<u32> {
    var var_0 = vec2<u32>(4294967295u, ~global0.a.x);
    let var_1 = Struct_2(all(vec4<bool>(~arg_0 < arg_0, all(!vec4<bool>(arg_2.a.d.x, false, arg_2.c.d.x, false)), global0.b.x, global0.b.x)), arg_2.a.c, Struct_1(arg_2.b.zw, !select(vec2<bool>(true, true), !global0.b, all(vec4<bool>(arg_2.c.d.x, global0.b.x, global0.b.x, arg_2.a.d.x)))), arg_2.a.c, arg_2.c.c);
    var var_2 = _wgslsmith_sub_vec2_u32(max(firstTrailingBit(_wgslsmith_add_vec2_u32(max(vec2<u32>(global0.a.x, 4294967295u), vec2<u32>(u_input.b, var_0.x)), func_1(Struct_1(vec2<u32>(75437u, global0.a.x), vec2<bool>(true, global0.b.x)), arg_3.xyw, Struct_4(Struct_3(arg_2.c.a, 18421u, arg_2.a.c, vec3<bool>(arg_2.a.c.b.x, arg_2.a.c.b.x, var_1.d.b.x)), vec4<u32>(1u, 34692u, 0u, u_input.b), arg_2.a), Struct_1(arg_2.a.c.a, vec2<bool>(arg_2.c.c.b.x, false))).xw)), vec2<u32>(35609u, ~reverseBits(var_0.x))), func_1(arg_2.c.c, abs(arg_3.zzx), Struct_4(Struct_3(_wgslsmith_sub_vec4_u32(arg_2.a.a, arg_3), var_1.c.a.x, arg_2.c.c, arg_2.a.d), vec4<u32>(4294967295u, 69506u & global0.a.x, 1u, arg_3.x), arg_2.c), Struct_1(countOneBits(max(vec2<u32>(0u, var_0.x), arg_2.b.ww)), select(select(var_1.e.b, vec2<bool>(false, true), false), vec2<bool>(true, true), !global0.b.x))).yx);
    let var_3 = Struct_5(Struct_3(arg_2.a.a, 36354u, arg_2.c.c, !arg_2.c.d), !all(!(!vec3<bool>(global0.b.x, var_1.a, true))), -12363i);
    var var_4 = -_wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -49017i, arg_0), min(vec3<i32>(0i, -1857i, -16333i), vec3<i32>(arg_0, arg_1.x, var_3.c))), abs(-vec3<i32>(-7517i, arg_0, 2147483647i) & countOneBits(vec3<i32>(arg_1.x, arg_1.x, 16516i))));
    return _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~global0.a.x, global0.a.x, func_1(Struct_1(arg_3.xz, vec2<bool>(false, global0.b.x)), vec3<u32>(44623u, 37787u, 0u), Struct_4(Struct_3(var_3.a.a, var_2.x, var_3.a.c, vec3<bool>(global0.b.x, var_1.b.b.x, true)), arg_2.a.a, arg_2.c), var_1.d).x), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_1.c.a.x, arg_2.b.x, var_3.a.c.a.x), arg_3), countOneBits(1u))), u_input.a), firstTrailingBit(vec2<u32>(arg_3.x, ~global0.a.x)));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    global0 = Struct_1(vec2<u32>(firstTrailingBit(abs(u_input.a.x)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.x, 0u, 1u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 1u, arg_0, global0.a.x), vec4<u32>(80991u, 33078u, 88369u, 16849u)))), global0.b);
    var var_0 = Struct_2(arg_1, Struct_1(_wgslsmith_mult_vec2_u32(~global0.a, u_input.a), global0.b), Struct_1(~vec2<u32>(49382u >> (u_input.b % 32u), ~u_input.b), !global0.b), Struct_1(reverseBits(func_4(~19269i, func_3(-478f, global0.b.x, vec4<i32>(-2147483647i, 26479i, 1i, -4585i), vec4<u32>(global0.a.x, u_input.b, 4294967295u, arg_0)), Struct_4(Struct_3(vec4<u32>(global0.a.x, u_input.b, 16933u, 1u), u_input.a.x, Struct_1(global0.a, vec2<bool>(true, global0.b.x)), vec3<bool>(global0.b.x, true, global0.b.x)), vec4<u32>(arg_0, 4294967295u, 38198u, arg_0), Struct_3(vec4<u32>(global0.a.x, 1u, u_input.a.x, global0.a.x), global0.a.x, Struct_1(global0.a, vec2<bool>(global0.b.x, arg_1)), vec3<bool>(arg_1, true, global0.b.x))), max(vec4<u32>(1u, arg_0, 1u, arg_0), vec4<u32>(3174u, global0.a.x, 1u, global0.a.x)))), select(select(!global0.b, global0.b, select(global0.b, vec2<bool>(false, arg_1), vec2<bool>(global0.b.x, global0.b.x))), global0.b, select(vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, arg_1), vec2<bool>(global0.b.x, false), vec2<bool>(false, false)), global0.b))), Struct_1(vec2<u32>(u_input.b, _wgslsmith_mult_u32(1u, ~33989u)), select(!select(vec2<bool>(arg_1, true), global0.b, global0.b.x), select(global0.b, select(global0.b, vec2<bool>(global0.b.x, false), global0.b.x), true), vec2<bool>(select(true, true, true), false))));
    var var_1 = select(-max((i32(-1i) * -31046i) >> ((global0.a.x ^ u_input.b) % 32u), 0i), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(abs(1743i), abs(2147483647i), 1i), vec3<i32>(0i, 15635i, -33613i) >> (countOneBits(vec3<u32>(var_0.e.a.x, var_0.c.a.x, arg_0)) % vec3<u32>(32u)))), any(!select(select(vec3<bool>(var_0.d.b.x, var_0.d.b.x, var_0.a), vec3<bool>(true, true, arg_1), false), !vec3<bool>(global0.b.x, true, arg_1), !vec3<bool>(arg_1, global0.b.x, global0.b.x))));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(576f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(634f + -1000f), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(117f, 122f)))), !all(vec4<bool>(var_0.a, true, global0.b.x, global0.b.x)))), _wgslsmith_f_op_f32(select(-261f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-290f * _wgslsmith_f_op_f32(f32(-1f) * -966f)) + _wgslsmith_f_op_f32(floor(1517f))), !global0.b.x)));
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(-9994i, ~(~_wgslsmith_sub_i32(10381i, 45927i)), -11304i, ~abs(-25697i)), -vec4<i32>(33902i, -min(-4634i, 18547i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(17659i, 2147483647i, 1i), _wgslsmith_div_i32(-27978i, 17146i)), _wgslsmith_add_i32(-71717i, firstLeadingBit(-17274i))));
    return Struct_1(vec2<u32>(arg_0, min(4294967295u, reverseBits(u_input.a.x))), vec2<bool>(~_wgslsmith_sub_i32(var_3.x, var_3.x) > -var_3.x, any(select(global0.b, !vec2<bool>(false, global0.b.x), var_3.x <= -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(max(_wgslsmith_mult_vec4_u32(~max(vec4<u32>(global0.a.x, global0.a.x, 4294967295u, 12434u), vec4<u32>(28291u, u_input.b, 26272u, 55386u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, 12311u, 0u, global0.a.x), vec4<u32>(45700u, global0.a.x, 21536u, 15599u)), vec4<u32>(96109u, global0.a.x, global0.a.x, global0.a.x), ~vec4<u32>(global0.a.x, global0.a.x, 71380u, u_input.a.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.b) & vec4<u32>(0u, u_input.a.x, global0.a.x, u_input.a.x), select(~vec4<u32>(0u, 48886u, 82823u, 1985u), func_1(Struct_1(u_input.a, global0.b), vec3<u32>(u_input.a.x, 56407u, global0.a.x), Struct_4(Struct_3(vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x), global0.a.x, Struct_1(vec2<u32>(0u, 0u), global0.b), vec3<bool>(false, global0.b.x, true)), vec4<u32>(334u, u_input.b, global0.a.x, 49u), Struct_3(vec4<u32>(global0.a.x, 1u, u_input.a.x, 71823u), 82768u, Struct_1(vec2<u32>(u_input.b, global0.a.x), vec2<bool>(global0.b.x, global0.b.x)), vec3<bool>(global0.b.x, global0.b.x, global0.b.x))), Struct_1(global0.a, vec2<bool>(global0.b.x, global0.b.x))), vec4<bool>(global0.b.x, false, false, global0.b.x)))), 1u, func_2(~37759u, true), select(select(!(!vec3<bool>(global0.b.x, true, true)), select(select(vec3<bool>(true, global0.b.x, false), vec3<bool>(global0.b.x, true, global0.b.x), false), select(vec3<bool>(global0.b.x, global0.b.x, true), vec3<bool>(global0.b.x, true, true), vec3<bool>(false, true, true)), false), global0.b.x), vec3<bool>(func_2(22095u, global0.b.x).b.x, true, false), true));
    var var_1 = vec2<bool>(true, all(!vec2<bool>(all(vec2<bool>(false, global0.b.x)), true)));
    var_1 = global0.b;
    let var_2 = !func_2(abs(abs(reverseBits(2447u))), true).b.x;
    let var_3 = Struct_5(Struct_3(~var_0.a, ~4294967295u, var_0.c, var_0.d), reverseBits(abs(23622u)) != (~(~global0.a.x) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(1837u, u_input.b, var_0.a.x, u_input.b), var_0.a)), -2147483647i);
    var_1 = global0.b;
    global0 = var_3.a.c;
    let var_4 = var_3;
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, vec3<u32>(_wgslsmith_add_u32(~var_3.a.a.x, 0u), select(~var_4.a.a.x, ~abs(11398u), true), 1u), ~u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

