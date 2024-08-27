struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: f32,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: vec4<f32> = vec4<f32>(-2697f, 615f, -538f, 322f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x - 876f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-481f)) - 624f)), _wgslsmith_f_op_f32(ceil(184f)), global1.x, arg_1.x) * _wgslsmith_div_vec4_f32(arg_1, vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(1383f + _wgslsmith_f_op_f32(941f * arg_2.x)), arg_1.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(1513f + arg_1.x)))));
    global0 = array<Struct_3, 25>();
    let var_0 = Struct_1(vec4<bool>(true, true, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(34616u, u_input.a.x)) > _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1951u, 22559u, u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, arg_3), vec3<u32>(4294967295u, 1u, 81749u), vec3<u32>(1u, 6005u, arg_3))), false), ~(~max(vec4<u32>(u_input.a.x, 59010u, 1u, 0u) | vec4<u32>(u_input.a.x, 0u, 4294967295u, 62768u), vec4<u32>(4294967295u, 35350u, 0u, arg_3))), _wgslsmith_f_op_f32(-2399f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + -472f))), select(vec4<bool>(~u_input.a.x > countOneBits(arg_3), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true))), true, any(vec3<bool>(true, true, true))), !vec4<bool>(any(vec3<bool>(false, true, true)), true, true, true), true), (vec4<i32>(abs(0i), max(13809i, 1i), -15952i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -7263i, arg_0), vec3<i32>(10228i, 1i, 22512i))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 8151u, 0u), vec4<u32>(arg_3, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(arg_3, arg_3, arg_3, 4294967295u)) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, arg_3), abs(18710u), abs(u_input.a.x), u_input.a.x), max(vec4<u32>(12649u, arg_3, u_input.a.x, u_input.a.x), vec4<u32>(0u, 4294967295u, arg_3, 1u)) ^ ~vec4<u32>(0u, 1651u, arg_3, arg_3)) % vec4<u32>(32u)));
    let var_1 = Struct_2(abs(vec3<i32>(~(~(-2147483647i)), select(arg_0, -55714i, true), -arg_0)), var_0, -288f, 4294967295u, select(var_0.a, vec4<bool>(var_0.a.x, (arg_3 | 0u) < (var_0.b.x >> (6789u % 32u)), true, (var_0.e.x == arg_0) & var_0.a.x), true));
    let var_2 = vec4<u32>(var_0.b.x, 4294967295u, _wgslsmith_div_u32(max(_wgslsmith_div_u32(var_0.b.x, arg_3), 4294967295u), ~arg_3) >> (countOneBits(4294967295u) % 32u), min(1u, ~(~1u)));
    return ~_wgslsmith_dot_vec2_u32(var_0.b.wy, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b.b.x, 4294967295u), _wgslsmith_mod_vec2_u32(var_0.b.zw, var_0.b.xx), ~vec2<u32>(1u, 99399u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>) -> bool {
    let var_0 = Struct_1(!vec4<bool>(true, true, func_3(1i, vec4<f32>(arg_1.x, -1892f, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, arg_1.x, global1.x), u_input.a.x) <= 4294967295u, -25166i >= (-31653i >> (u_input.a.x % 32u))), vec4<u32>(1u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 2122u, 15981u) ^ vec4<u32>(37659u, 92305u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), reverseBits(func_3(arg_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, arg_1.x, 436f, global1.x) - vec4<f32>(arg_1.x, arg_1.x, 1043f, -192f)), _wgslsmith_f_op_vec3_f32(round(global1.zzy)), 21938u >> (0u % 32u))), ~u_input.a.x, 21440u), arg_1.x, vec4<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, false), vec2<bool>(true, false))), true, true, true), vec4<i32>(reverseBits(firstTrailingBit(-1i)), arg_0.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(arg_0.x, 0i, arg_0.x, 22264i)), -(~vec4<i32>(arg_0.x, 2147483647i, 0i, arg_0.x))), -2147483647i));
    var var_1 = global0[_wgslsmith_index_u32(~((668u ^ _wgslsmith_div_u32(u_input.a.x, max(20315u, var_0.b.x))) >> ((1u >> (u_input.a.x % 32u)) % 32u)), 25u)];
    let var_2 = Struct_3(true, var_1.b);
    var var_3 = select(var_1.b.d, var_2.b.a, true);
    var_1 = Struct_3(var_3.x, var_2.b);
    return false;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = !all(vec3<bool>(arg_2.a.x, arg_2.d.x, func_2(min(arg_2.e.wwy, arg_2.e.zzy), _wgslsmith_f_op_vec2_f32(-global1.xy))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.c, global1.x)) * _wgslsmith_f_op_f32(-2749f - -121f))), 1f)));
    var var_2 = Struct_4(min(-23703i, -_wgslsmith_sub_i32(~(-3716i), -1i)));
    var var_3 = _wgslsmith_f_op_f32(-global1.x);
    let var_4 = arg_2;
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec2<f32>) -> i32 {
    let var_0 = ~abs(16778u);
    let var_1 = Struct_1(func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -269f)) * _wgslsmith_f_op_f32(step(arg_0.b.c, _wgslsmith_f_op_f32(f32(-1f) * -1348f)))), vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, arg_0.d), var_0, min(var_0, max(arg_0.b.b.x, 1u))), arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-517f * -558f)))).a, ~arg_0.b.b, _wgslsmith_f_op_f32(arg_0.b.c + _wgslsmith_f_op_f32(-arg_3.x)), vec4<bool>(true, !(true == arg_1.a), arg_1.a, arg_0.e.x), firstTrailingBit(arg_0.b.e));
    let var_2 = global0[_wgslsmith_index_u32(64425u, 25u)];
    let var_3 = Struct_5(true, arg_1.b);
    var var_4 = ~_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(-60326i, 2084i) & -vec2<i32>(2922i, var_3.b)), ~var_2.b.e.xx, arg_0.a.zz);
    return -(~_wgslsmith_div_i32(func_1(var_2.b.c, max(vec3<u32>(4294967295u, u_input.a.x, var_1.b.x), var_1.b.wxw), var_1, _wgslsmith_f_op_f32(arg_0.c + arg_0.b.c)).e.x, _wgslsmith_div_i32(var_1.e.x << (4294967295u % 32u), firstLeadingBit(arg_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global1.xyx), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, global1.x), global1.zyx, false)))))))));
    var var_1 = Struct_4(firstLeadingBit(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, 1i), firstLeadingBit(-11516i))));
    var var_2 = 346f;
    let var_3 = countOneBits(_wgslsmith_sub_i32(-1i, var_1.a));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f + _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2503f - global1.x)))));
    var var_5 = max(u_input.a.x, _wgslsmith_mod_u32(5919u, _wgslsmith_sub_u32(min(_wgslsmith_mult_u32(4294967295u, 1u), ~1u), u_input.a.x)));
    var var_6 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), 1000f);
    var_1 = Struct_4(_wgslsmith_add_i32(var_3, func_4(Struct_2(~vec3<i32>(1i, var_1.a, 2147483647i), func_1(483f, vec3<u32>(u_input.a.x, u_input.a.x, 32615u), Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(u_input.a.x, 17907u, 44811u, 0u), global1.x, vec4<bool>(true, false, false, true), vec4<i32>(var_1.a, var_3, -2147483647i, var_1.a)), var_6.x), 200f, 55711u, func_1(1320f, vec3<u32>(0u, u_input.a.x, 1u), Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(18354u, u_input.a.x, 37100u, 37786u), var_6.x, vec4<bool>(true, true, true, false), vec4<i32>(var_1.a, var_1.a, 2147483647i, 1i)), global1.x).a), Struct_5(func_1(2265f, vec3<u32>(u_input.a.x, u_input.a.x, 34814u), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(u_input.a.x, u_input.a.x, 74463u, u_input.a.x), -210f, vec4<bool>(true, false, false, true), vec4<i32>(1i, var_1.a, 15788i, 1i)), -685f).d.x, ~1i), Struct_4(var_3), _wgslsmith_f_op_vec2_f32(trunc(var_0.zz)))));
    var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-1006f * -994f))), ~(~vec3<u32>(u_input.a.x, 9223u, u_input.a.x)), Struct_1(vec4<bool>(true, false, true, true), select(vec4<u32>(41926u, u_input.a.x, 1u, 14890u), vec4<u32>(4850u, 44363u, u_input.a.x, 4294967295u), vec4<bool>(false, true, false, false)), 1847f, vec4<bool>(false, true, true, true), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -4237i, var_1.a, var_1.a), vec4<i32>(13665i, 1i, -1i, 43467i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, -563f)) * var_0.x)).c)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_2(firstLeadingBit(firstTrailingBit(vec3<i32>(-2147483647i, var_1.a, 1i))), func_1(_wgslsmith_f_op_f32(ceil(-614f)), vec3<u32>(1u, 0u, u_input.a.x) >> (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)), func_1(global1.x, vec3<u32>(u_input.a.x, 40444u, u_input.a.x), Struct_1(vec4<bool>(false, true, true, true), vec4<u32>(u_input.a.x, 0u, 155172u, u_input.a.x), 209f, vec4<bool>(true, false, true, false), vec4<i32>(-10663i, -44791i, -2147483647i, var_3)), var_0.x), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(-278f, _wgslsmith_f_op_f32(floor(-290f))), func_1(2155f, vec3<u32>(u_input.a.x, u_input.a.x, 0u), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), var_0.x, vec4<bool>(true, true, true, true), vec4<i32>(-43181i, -13978i, 2147483647i, var_3)), var_6.x).b.x << (~u_input.a.x % 32u), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false)), Struct_5(true, -1i), Struct_4(_wgslsmith_mod_i32(-9059i, _wgslsmith_mod_i32(var_1.a, 1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, global1.x), vec2<f32>(2032f, 319f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 492f) * vec2<f32>(498f, var_0.x))) - _wgslsmith_f_op_vec2_f32(select(var_0.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-788f, global1.x) * vec2<f32>(var_0.x, var_6.x)), select(true, false, false))))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(11547u, u_input.a.x, 95426u), vec3<u32>(1910u, u_input.a.x, u_input.a.x)) & func_1(var_6.x, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(31797u, u_input.a.x, u_input.a.x, 103103u), 970f, vec4<bool>(false, true, true, false), vec4<i32>(31502i, -25886i, var_1.a, var_3)), var_6.x).b.zxw, ~vec3<u32>(6762u, u_input.a.x, u_input.a.x)) | ((~vec3<u32>(0u, 36205u, 4294967295u) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 63079u, u_input.a.x))) & select(vec3<u32>(1u, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<u32>(4294967295u, 2025u, 0u)), vec3<bool>(false, true, false))), vec2<f32>(var_6.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_6.x - 750f)))), var_1.a ^ var_3);
}

