struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global1 = max(min(vec3<u32>(max(global1.x, 11112u), _wgslsmith_sub_u32(28128u, global1.x), 4294967295u), vec3<u32>(global1.x, _wgslsmith_add_u32(91492u, 92816u), abs(global1.x))) | _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(66696u, global1.x, global1.x), vec3<u32>(0u, global1.x, global1.x)), ~vec3<u32>(4294967295u, 1u, global1.x)), vec3<u32>(_wgslsmith_div_u32(countOneBits(~global1.x), 1u), 4294967295u, _wgslsmith_div_u32(55735u, ~13043u)));
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(f32(-1f) * -1586f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-353f, -1883f) - vec2<f32>(161f, 1142f))))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1193f, -777f)))), vec2<f32>(-1180f, 1000f))));
    global1 = ~vec3<u32>(global1.x, firstTrailingBit(_wgslsmith_div_u32(0u, global1.x)), 1u) | vec3<u32>(_wgslsmith_mod_u32(max(global1.x | 1u, global1.x), global1.x), 29023u >> (global1.x % 32u), 4294967295u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1922f, var_0.x) - vec4<f32>(var_0.x, 1765f, var_0.x, -1000f)), vec4<f32>(var_0.x, 1931f, 761f, 267f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-731f)), -1000f, -502f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -577f, var_0.x, 385f) + vec4<f32>(671f, -109f, var_0.x, var_0.x))))));
    global0 = ~reverseBits(2147483647i << (_wgslsmith_sub_u32(76593u, _wgslsmith_add_u32(global1.x, global1.x)) % 32u));
    return global1.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4) -> vec4<i32> {
    var var_0 = Struct_3(arg_0.x, Struct_2(-1i, ~(~(~vec3<u32>(26896u, 12635u, global1.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.b.zzy), select(vec3<bool>(arg_1.a, true, arg_0.x), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), !vec3<bool>(arg_1.a, true, true))), func_3(_wgslsmith_add_vec2_i32(vec2<i32>(-14422i, arg_1.d.x), firstTrailingBit(vec2<i32>(1i, 0i))))));
    var var_1 = Struct_3(!var_0.b.c.b.x, Struct_2(-min(var_0.b.a, -arg_1.d.x), min(var_0.b.b, var_0.b.b), var_0.b.c, 4294967295u));
    var var_2 = ~_wgslsmith_clamp_vec4_u32(select(abs(vec4<u32>(global1.x, 48909u, 34620u, var_0.b.b.x)) >> (vec4<u32>(11692u, var_1.b.d, arg_1.c, 16885u) % vec4<u32>(32u)), ~select(vec4<u32>(25357u, arg_1.c, 0u, 4294967295u), vec4<u32>(111435u, var_0.b.b.x, var_0.b.d, arg_1.c), vec4<bool>(true, arg_0.x, arg_1.a, true)), false), ~vec4<u32>(_wgslsmith_sub_u32(global1.x, arg_1.c), ~var_0.b.b.x, 40479u, 9835u >> (var_0.b.d % 32u)), vec4<u32>(max(~38558u, _wgslsmith_mult_u32(83596u, 15650u)), var_1.b.b.x, var_1.b.d, var_0.b.b.x));
    var_0 = Struct_3(all(select(vec2<bool>(true, true), vec2<bool>(var_1.b.c.b.x, all(arg_0)), !(var_0.a | var_1.a))), var_1.b);
    let var_3 = select(arg_1.d, min(arg_1.d, vec4<i32>(_wgslsmith_add_i32(arg_1.d.x, 59628i), ~0i, firstTrailingBit(arg_1.d.x), 10594i)) >> ((~vec4<u32>(global1.x, 22754u, var_0.b.d, var_1.b.b.x) << (abs(firstLeadingBit(vec4<u32>(41603u, 12521u, 1u, 50608u))) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_1.a || true);
    return _wgslsmith_sub_vec4_i32(-var_3, -firstLeadingBit(reverseBits(var_3)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(func_2(arg_0, Struct_4(var_0.b.x, vec4<f32>(arg_2.a.x, 1172f, arg_2.a.x, 989f), global1.x, vec4<i32>(arg_1, 63432i, u_input.a.x, arg_1))), vec4<i32>(arg_1, ~2147483647i, -33561i, -1i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, -9067i, arg_1), vec4<i32>(arg_1, -2147483647i, u_input.a.x, arg_1)) >> (abs(vec4<u32>(global1.x, global1.x, global1.x, 52791u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(countOneBits(arg_1), arg_1), _wgslsmith_add_i32(63219i, arg_1) | -arg_1, -29254i, _wgslsmith_sub_i32(5798i ^ arg_1, arg_1 >> (global1.x % 32u)))), -vec4<i32>(_wgslsmith_clamp_i32(arg_1, _wgslsmith_div_i32(0i, arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(89325i, -7104i, -1i, -8511i), vec4<i32>(2147483647i, 52714i, arg_1, arg_1))), ~(-7738i), u_input.a.x, u_input.a.x ^ ~(-62436i)));
    let var_2 = Struct_4(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1225f, arg_2.a.x, var_0.a.x, var_0.a.x), vec4<f32>(-580f, -520f, var_0.a.x, 1182f), vec4<bool>(arg_0.x, true, true, true))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, arg_2.a.x, -501f, var_0.a.x)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(619f)), -906f, _wgslsmith_div_f32(-767f, -206f), _wgslsmith_f_op_f32(floor(arg_2.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.x + 1031f), _wgslsmith_f_op_f32(min(arg_2.a.x, _wgslsmith_f_op_f32(round(var_0.a.x)))), _wgslsmith_f_op_f32(abs(174f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !(!select(vec4<bool>(var_0.b.x, true, true, false), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_2.b.x))))), global1.x, -vec4<i32>(max(arg_1, var_1.x), var_1.x, _wgslsmith_clamp_i32(var_1.x, arg_1, -2147483647i), ~var_1.x) ^ firstTrailingBit(vec4<i32>(-61934i, _wgslsmith_mult_i32(arg_1, var_1.x), var_1.x, u_input.a.x)));
    let var_3 = Struct_4(var_2.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b - var_2.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, -1456f, var_0.a.x, var_2.b.x) + vec4<f32>(-651f, var_2.b.x, -359f, 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) - _wgslsmith_div_vec4_f32(var_2.b, var_2.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-315f, var_2.b.x, var_0.a.x, arg_2.a.x))))), countOneBits(global1.x), var_2.d);
    let var_4 = true;
    return Struct_3(true, Struct_2(~1i | _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.d.x, 55847i, var_1.x, var_2.d.x), vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, var_2.d.x)), -vec4<i32>(-14255i, 2147483647i, var_1.x, -26844i)), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(global1.x, 0u, 25406u) & vec3<u32>(5685u, 0u, var_2.c)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(29280u, var_2.c, 22541u), countOneBits(vec3<u32>(var_3.c, 28925u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.c, 4294967295u, global1.x), vec3<u32>(1u, var_2.c, 1u)))), arg_2, 80785u));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = func_1(vec2<bool>(!arg_1.a, 0u > max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22765u, global1.x, 61868u), vec4<u32>(52806u, arg_1.b.b.x, arg_1.b.b.x, 0u)), ~global1.x)), -27349i, func_1(select(!vec2<bool>(true, arg_0), select(!vec2<bool>(arg_1.b.c.b.x, true), vec2<bool>(true, false), vec2<bool>(arg_2, arg_1.b.c.b.x)), true), u_input.a.x, Struct_1(func_1(arg_1.b.c.b.yx, -2147483647i & u_input.a.x, Struct_1(vec3<f32>(arg_1.b.c.a.x, -188f, -1287f), vec3<bool>(true, arg_0, true))).b.c.a, vec3<bool>(u_input.a.x <= -35730i, !arg_1.a, arg_1.a || true))).b.c).b;
    var_0 = Struct_2(6855i, vec3<u32>(0u, 4294967295u, ~arg_1.b.b.x), Struct_1(var_0.c.a, !select(select(arg_1.b.c.b, vec3<bool>(false, var_0.c.b.x, true), arg_1.a), vec3<bool>(true, false, arg_1.b.c.b.x), arg_1.b.c.b)), ~(~(global1.x & 1u)));
    return arg_1.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = func_4(true, Struct_3(true, func_1(!arg_1.c.b.xz, ~(arg_0.x << (global1.x % 32u)), Struct_1(arg_1.c.a, !vec3<bool>(arg_1.c.b.x, arg_1.c.b.x, arg_1.c.b.x))).b), func_1(!vec2<bool>(true, arg_1.c.b.x), arg_1.a, Struct_1(vec3<f32>(1168f, -1000f, _wgslsmith_f_op_f32(floor(arg_1.c.a.x))), select(select(arg_1.c.b, arg_1.c.b, arg_1.c.b.x), !vec3<bool>(false, arg_1.c.b.x, true), select(vec3<bool>(true, false, true), vec3<bool>(false, arg_1.c.b.x, arg_1.c.b.x), false)))).b.c.b.x, ~arg_1.b).c;
    global1 = arg_1.b;
    var_0 = func_1(vec2<bool>(all(vec4<bool>(true, !arg_1.c.b.x, var_0.b.x || true, all(vec4<bool>(true, true, true, false)))), true), min(_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_1.a, arg_1.a), _wgslsmith_mod_i32(1i, -1i), 19583i) << (global1.x % 32u), arg_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(434f, arg_1.c.a.x, arg_1.c.a.x)))), var_0.a)), arg_1.c.b)).b.c;
    global0 = arg_0.x;
    var var_1 = func_1(var_0.b.xz, 72056i, arg_1.c).b.b;
    return abs(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_1.x, 5952u, global1.x, 1u) ^ vec4<u32>(arg_1.d, 28948u, 40181u, arg_1.d)), select(~vec4<u32>(global1.x, global1.x, 0u, 4294967295u), max(vec4<u32>(0u, arg_1.d, global1.x, 1u), vec4<u32>(global1.x, 1u, 0u, arg_1.d)), vec4<bool>(false, true, arg_1.c.b.x, true)))) & arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 44734i >> (firstLeadingBit(_wgslsmith_mod_u32(~(~global1.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(0u, global1.x, global1.x, 26374u)), vec4<u32>(4294967295u, global1.x, 1u, 4294967295u)))) % 32u);
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(global1.x, _wgslsmith_sub_u32(11508u, 1u)), _wgslsmith_mult_u32(4294967295u, global1.x), func_5(~(~vec4<i32>(-1i, u_input.a.x, -16476i, u_input.a.x)), func_4(global1.x < 1u, func_1(vec2<bool>(true, true), -70871i, Struct_1(vec3<f32>(258f, -372f, 1112f), vec3<bool>(false, false, true))), true, vec3<u32>(0u, global1.x, 1u)))), firstTrailingBit(vec3<u32>(global1.x | 4294967295u, func_1(vec2<bool>(true, true), u_input.a.x, Struct_1(vec3<f32>(-1000f, 912f, 2600f), vec3<bool>(false, false, false))).b.b.x, global1.x)) | ~reverseBits(~vec3<u32>(global1.x, 104779u, 4294967295u)));
    let var_0 = i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.a, ~min(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-320f, -149f, 951f, -486f) - vec4<f32>(448f, -1901f, 850f, -882f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1328f, 872f, -805f, -1000f))))))));
    var var_2 = func_4(true, Struct_3(false && any(vec4<bool>(false, false, true, true)), func_1(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), ~u_input.a.x, func_4(true, Struct_3(false, Struct_2(21550i, vec3<u32>(global1.x, 3982u, global1.x), Struct_1(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, true)), 2837u)), all(vec4<bool>(true, true, true, false)), reverseBits(vec3<u32>(0u, 4789u, global1.x))).c).b), true, max(_wgslsmith_mod_vec3_u32(min(vec3<u32>(12094u, 0u, 4294967295u) << (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u)), vec3<u32>(global1.x, 28310u, 22911u)), vec3<u32>(18085u, 4294967295u >> (global1.x % 32u), _wgslsmith_mod_u32(1u, global1.x))), vec3<u32>(49177u, abs(0u), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~(~var_2.b.x | var_2.b.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(1525f, -906f, -714f, -712f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(306f, var_1.x, -1079f, 428f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(279f, -1437f, var_2.c.a.x, var_2.c.a.x))))), select(select(vec4<bool>(var_2.c.b.x, var_2.c.b.x, false, var_2.c.b.x), vec4<bool>(var_2.c.b.x, var_2.c.b.x, false, false), vec4<bool>(false, var_2.c.b.x, false, true)), !vec4<bool>(var_2.c.b.x, false, true, var_2.c.b.x), !var_2.c.b.x))), vec4<f32>(func_1(vec2<bool>(true, true), u_input.a.x, var_2.c).b.c.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.x)))), -223f, var_2.c.a.x))));
}

