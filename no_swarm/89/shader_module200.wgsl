struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(191f, -1136f, 208f, -1000f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = 2147483647i;
    var var_1 = ~0u;
    var var_2 = Struct_1(arg_0);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(562f - global0.x)))), _wgslsmith_f_op_f32(select(global0.x, -694f, true)))), 678f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 319f) - global0.x)) * _wgslsmith_f_op_f32(global0.x + global0.x)), 1359f);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1508f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1251f), global0.x)));
    return abs(_wgslsmith_mod_i32(-19258i, _wgslsmith_div_i32(abs(1i), (1i << (u_input.a.x % 32u)) << (70222u % 32u))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i | func_3(true), -1i, select(firstTrailingBit(-2147483647i), reverseBits(2147483647i), true), -4700i)), -vec4<i32>(-1i, max(24900i, -35552i), 1i, ~65158i) << (vec4<u32>(countOneBits(_wgslsmith_clamp_u32(1u, 61995u, u_input.a.x)), ~(32659u << (u_input.a.x % 32u)), ~u_input.a.x, 14895u) % vec4<u32>(32u)));
    var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, ~var_0.x, 16530i, ~var_0.x) | (select(vec4<i32>(14819i, 24959i, var_0.x, var_0.x), vec4<i32>(-5001i, var_0.x, var_0.x, 2147483647i), true) ^ vec4<i32>(12020i, -28781i, var_0.x, -20159i)), _wgslsmith_sub_vec4_i32(min(-vec4<i32>(var_0.x, var_0.x, -43166i, var_0.x), -vec4<i32>(var_0.x, var_0.x, var_0.x, 0i)), vec4<i32>(var_0.x, firstTrailingBit(var_0.x), var_0.x, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-13321i, -18575i, var_0.x, _wgslsmith_mult_i32(51347i, var_0.x)), firstLeadingBit(firstLeadingBit(vec4<i32>(1i, 1124i, -70359i, var_0.x))), min(select(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 0i, 2147483647i), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_i32(vec4<i32>(-14386i, var_0.x, var_0.x, var_0.x), vec4<i32>(-41732i, var_0.x, 16774i, 1i))))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 34563i), vec2<i32>(1i, var_0.x)), func_3(all(vec3<bool>(true, true, false))), 49084i, var_0.x));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-142f + global0.x), -1148f, 530f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -2186f, 573f, global0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2288f, global0.x, -771f, global0.x) * vec4<f32>(global0.x, global0.x, global0.x, global0.x))), all(vec2<bool>(true, false)))))), Struct_3((29521u | _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 0u))) & reverseBits(u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(169f, 1478f, global0.x))), any(vec4<bool>(true, true, true, true))), u_input.a.x, ~_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~var_0.ywx, _wgslsmith_div_vec3_i32(var_0.yxx, vec3<i32>(var_0.x, -2147483647i, 2147483647i))), max(~vec3<i32>(var_0.x, -41510i, var_0.x), reverseBits(vec3<i32>(var_0.x, -1i, -2147483647i)))));
    var var_2 = ~countOneBits(select(firstTrailingBit(var_1.b.a) | var_1.b.a, ~abs(u_input.a.x), var_1.b.c));
    var_2 = 1u;
    return Struct_3(_wgslsmith_sub_u32(var_1.c, 4294967295u), vec3<f32>(-1090f, -545f, _wgslsmith_f_op_f32(sign(var_1.b.b.x))), any(vec4<bool>(var_1.b.c, _wgslsmith_dot_vec2_u32(vec2<u32>(13562u, u_input.a.x), vec2<u32>(4294967295u, 0u)) < min(u_input.a.x, 41045u), true, (var_1.b.c & var_1.b.c) || (var_1.b.c != var_1.b.c))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(sign(-650f)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -771f, 2637f, arg_1.x), vec4<f32>(arg_1.x, 1011f, -457f, -1481f))), vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-global0.x), 847f, -1008f))), Struct_3(_wgslsmith_div_u32(select(7281u, u_input.a.x, arg_2), 4294967295u), _wgslsmith_f_op_vec3_f32(func_2().b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-627f, -748f, 171f)))), arg_0.c), ~56049u, select(~(~_wgslsmith_sub_vec3_i32(vec3<i32>(86i, 25450i, 11113i), vec3<i32>(3207i, 89840i, 1i))), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, _wgslsmith_div_i32(4371i, -4183i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(48185i, 1i), vec2<i32>(-2147483647i, -54377i)), ~19031i, -1i)), !select(vec3<bool>(false, false, false), !vec3<bool>(arg_2, arg_0.c, arg_2), true)));
    var var_2 = abs(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(16590i, -1i, 2147483647i)), 7335i, _wgslsmith_add_i32(var_1.d.x, var_1.d.x), 0i) ^ max(vec4<i32>(-4547i, 2147483647i, var_1.d.x, 1i) ^ vec4<i32>(0i, var_1.d.x, -34110i, var_1.d.x), vec4<i32>(var_1.d.x, var_1.d.x, var_1.d.x, -32337i) << (vec4<u32>(var_1.c, 1u, var_1.b.a, u_input.a.x) % vec4<u32>(32u)))));
    let var_3 = var_1.b.c;
    var_2 = ~vec4<i32>(select(_wgslsmith_sub_i32(23140i, min(1i, var_1.d.x)), -11117i, false), var_1.d.x, var_1.d.x, -_wgslsmith_mult_i32(var_2.x | -2147483647i, var_1.d.x));
    return Struct_2(func_3(!arg_0.c), _wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(select(-411f, arg_0.b.x, false))), -1337f, _wgslsmith_div_f32(arg_0.b.x, global0.x), _wgslsmith_f_op_f32(138f * _wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: u32) -> bool {
    let var_0 = vec4<f32>(604f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1740f))), -806f, 730f);
    let var_1 = Struct_1(true);
    let var_2 = func_4(func_2(), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(870f)))), -2439f), false);
    var var_3 = ~vec3<u32>(min(~36360u, func_2().a), 3723u, arg_3) | reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, arg_0, 4294967295u), vec3<u32>(4294967295u, arg_0, 5709u), vec3<bool>(var_1.a, var_1.a, var_1.a)), firstLeadingBit(vec3<u32>(55203u, 21050u, u_input.a.x))), 1u, u_input.a.x));
    let var_4 = vec4<i32>(0i, arg_1 >> (countOneBits(37838u) % 32u), _wgslsmith_mult_i32(_wgslsmith_mult_i32(min(-6845i, arg_1), _wgslsmith_sub_i32(-arg_1, ~(-2147483647i))), -(~(arg_1 ^ arg_1))), var_2.a);
    return !select(any(vec3<bool>(true, true & var_1.a, var_1.a)), true, any(select(!vec4<bool>(false, true, true, var_1.a), !vec4<bool>(true, true, true, var_1.a), !vec4<bool>(false, var_1.a, var_1.a, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec2<bool>(func_1(u_input.a.x, 0i, u_input.a.yx, 31491u), global0.x < -223f)), select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), all(vec2<bool>(false, true))), vec2<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(true, true, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), global0.x == -2344f)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), any(vec4<bool>(false, true, false, true)))), vec2<bool>(func_2().c, all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var var_1 = 1i;
    var_1 = _wgslsmith_clamp_i32(reverseBits(-1i), -18275i, countOneBits(-min(select(37562i, -2147483647i, var_0.x), ~(-11763i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-359f)) + _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -242f) + -1047f)))));
    let var_3 = !select(vec4<bool>(!(false && var_0.x), var_0.x, true, var_0.x || true), vec4<bool>(true, true, false & var_0.x, var_0.x), true);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -964f) * _wgslsmith_f_op_f32(-global0.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-364f + global0.x), _wgslsmith_f_op_f32(-global0.x)), select(!var_0.x, !var_3.x, !var_3.x))) * -415f));
    let var_5 = func_4(Struct_3(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(224f, global0.x, global0.x), vec3<f32>(-2230f, 152f, 1000f))), var_0.x), vec2<f32>(852f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x))), var_0.x);
    var var_6 = vec2<f32>(var_5.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(457f))));
    var var_7 = vec3<u32>(reverseBits(~(~u_input.a.x | min(4294967295u, u_input.a.x))), ~_wgslsmith_mod_u32(33949u, _wgslsmith_sub_u32(0u, u_input.a.x)), 12919u);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a, _wgslsmith_f_op_f32(abs(var_6.x)));
}

