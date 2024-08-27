struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 22679i, false, 50759i, vec4<f32>(261f, -1000f, 518f, -1018f));

var<private> global1: array<vec4<f32>, 13>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: bool) -> vec3<u32> {
    global0 = Struct_1(~1u, ~global0.d, true, -48859i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(242f))), _wgslsmith_f_op_f32(min(-1367f, _wgslsmith_f_op_f32(exp2(global0.e.x)))), !global0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.x + _wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(819f, 971f, global0.c)) + _wgslsmith_f_op_f32(-global0.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x + global0.e.x) - global0.e.x)));
    var var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(min(vec3<u32>(26266u, global0.a, 15951u), arg_0)), vec3<u32>(1u ^ arg_0.x, min(min(52502u, u_input.a), max(u_input.a, global0.a)), _wgslsmith_sub_u32(select(4294967295u, 0u, false), 79436u))), var_0.x, any(select(!select(vec2<bool>(true, arg_2), vec2<bool>(global0.c, global0.c), vec2<bool>(true, false)), vec2<bool>(all(vec2<bool>(false, true)), true), select(!vec2<bool>(false, arg_2), !vec2<bool>(false, global0.c), global0.c))), -(reverseBits(min(global0.b, 0i)) & max(-global0.b, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(global0.e.x - global0.e.x), _wgslsmith_f_op_f32(global0.e.x * 1164f), global0.e.x))));
    var_1 = Struct_1(26601u, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i), 38004i), firstLeadingBit(var_0.zz)), false, var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-806f, var_1.e.x, -1035f, -821f)))))));
    var_0 = vec3<i32>(~firstLeadingBit(-arg_1.x), ~arg_1.x, 515i) << (arg_0 % vec3<u32>(32u));
    return ~_wgslsmith_mod_vec3_u32(select(~(~vec3<u32>(12396u, 29766u, var_1.a)), reverseBits(vec3<u32>(var_1.a, u_input.a, u_input.a)), any(!vec4<bool>(arg_2, true, arg_2, true))), arg_0);
}

fn func_2() -> u32 {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(select(1u, u_input.a, false), _wgslsmith_add_u32(u_input.a, 69726u), _wgslsmith_mult_u32(34341u, u_input.a)), vec3<u32>(u_input.a, u_input.a, 1493u) << (func_3(vec3<u32>(1u, u_input.a, u_input.a), vec3<i32>(0i, 3648i, 32303i), true) % vec3<u32>(32u))) | ~abs(vec3<u32>(global0.a, global0.a, u_input.a) | vec3<u32>(4294967295u, global0.a, u_input.a)), Struct_1(u_input.a, global0.b, global0.e.x <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-498f * 345f), -187f)), -26839i, vec4<f32>(-114f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.e.x)))), _wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(800f * _wgslsmith_f_op_f32(1959f * global0.e.x)))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(global0.a, 60909u, u_input.a, u_input.a)) >> (firstLeadingBit(~vec4<u32>(global0.a, 1u, 29190u, 0u)) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.a, global0.a), ~vec4<u32>(22127u, 1u, 32701u, 17427u)))));
    let var_1 = Struct_2(~var_0.c.wzw & _wgslsmith_add_vec3_u32(vec3<u32>(46362u, 50314u, _wgslsmith_mult_u32(0u, 74774u)), _wgslsmith_mult_vec3_u32(var_0.c.ywy, _wgslsmith_sub_vec3_u32(var_0.a, var_0.a))), var_0.b, var_0.c);
    global1 = array<vec4<f32>, 13>();
    global0 = var_1.b;
    var var_2 = Struct_1(var_0.b.a, -41136i, true, -73072i, vec4<f32>(-2013f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1140f, -1000f) - _wgslsmith_f_op_f32(-243f + var_1.b.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1145f, global0.e.x)), _wgslsmith_f_op_f32(-1038f * global0.e.x)), _wgslsmith_f_op_f32(trunc(global0.e.x))));
    return _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.a.x, var_0.a.x, 25240u), vec3<u32>(~var_0.a.x, var_0.a.x & 24888u, firstLeadingBit(global0.a))), _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mult_u32(global0.a, var_1.b.a)), 4294967295u, abs(1u))), 1u);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = Struct_2(~vec3<u32>(~(17190u << (arg_0.a % 32u)), arg_0.a << (arg_1 % 32u), func_2()), Struct_1(arg_1, _wgslsmith_add_i32(~firstTrailingBit(43859i), global0.d), !(_wgslsmith_div_i32(10767i, global0.b) < ~arg_0.b), _wgslsmith_add_i32(reverseBits(~(-26171i)), -41099i), global0.e), ~firstTrailingBit(vec4<u32>(arg_0.a, arg_0.a, 51264u, arg_1)));
    global1 = array<vec4<f32>, 13>();
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(global0.e.yxw));
    let var_2 = global0.a;
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.e.x)) - _wgslsmith_div_f32(var_0.b.e.x, 283f)), _wgslsmith_f_op_f32(-arg_0.e.x))), vec3<f32>(1198f, arg_0.e.x, var_1.x), select(abs(_wgslsmith_clamp_i32(global0.d, 42781i, global0.d)), var_0.b.b, arg_0.c) == _wgslsmith_mult_i32(var_0.b.d, 53956i)));
    return -(~0i);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(arg_2.a, abs(~arg_2.a)), u_input.a);
    var var_1 = arg_1.b;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(func_3(arg_1.c.yyz << (arg_1.c.yyx % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.d, 10586i, -15465i), vec3<i32>(arg_2.d, -2147483647i, arg_2.d)), !global0.c).zx, ~(~vec2<u32>(20799u, 55604u))), arg_1.c.x, 0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.c.xy, _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a, arg_2.a), vec2<u32>(var_0, 62116u))), ~arg_1.a.yy >> (arg_1.a.yx % vec2<u32>(32u)))), arg_1.c << (vec4<u32>(~(46444u & var_0), arg_2.a, _wgslsmith_mult_u32(var_0, func_3(arg_1.a, vec3<i32>(-1i, -3310i, var_1.d), global0.c).x), 4294967295u) % vec4<u32>(32u)));
    let var_3 = countOneBits(arg_1.a);
    global1 = array<vec4<f32>, 13>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(func_4(_wgslsmith_mod_i32(func_1(Struct_1(0u, global0.d, true, global0.d, global1[_wgslsmith_index_u32(u_input.a, 13u)]), u_input.a), select(global0.d, 43651i, global0.c)), Struct_2(vec3<u32>(12081u, u_input.a, 0u), Struct_1(global0.a, 0i, true, global0.b, global1[_wgslsmith_index_u32(global0.a, 13u)]), vec4<u32>(1u, 4294967295u, global0.a, global0.a)), Struct_1(global0.a, 2147483647i, !global0.c, 16470i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1589f, global0.e.x, -481f, 771f) - global0.e))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u), ~1u, 1u, max(u_input.a, u_input.a)), ~vec4<u32>(0u, global0.a, u_input.a, u_input.a) & ~vec4<u32>(0u, 7992u, u_input.a, 0u))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a, 19125u, 0u, u_input.a), vec4<u32>(30776u, 1u, global0.a, 9286u)), vec4<u32>(1u, 1u, 117u, 8309u)), vec4<u32>(reverseBits(u_input.a), ~51813u, 0u, _wgslsmith_sub_u32(u_input.a, global0.a))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, global0.a, u_input.a), ~vec4<u32>(global0.a, 116882u, 73277u, global0.a)), vec4<u32>(u_input.a, ~28764u, global0.a, ~u_input.a))), _wgslsmith_dot_vec2_u32((vec2<u32>(1u, u_input.a) & vec2<u32>(global0.a, 0u)) ^ vec2<u32>(_wgslsmith_mod_u32(u_input.a, 1u), ~global0.a), ~vec2<u32>(u_input.a, countOneBits(1u))));
    let var_1 = Struct_2(~_wgslsmith_sub_vec3_u32(~(var_0 | var_0), select(var_0, select(vec3<u32>(var_0.x, 50036u, global0.a), vec3<u32>(4294967295u, 33723u, global0.a), vec3<bool>(global0.c, global0.c, global0.c)), false)), Struct_1(func_3((var_0 << (var_0 % vec3<u32>(32u))) ^ ~var_0, -_wgslsmith_mult_vec3_i32(vec3<i32>(68444i, global0.d, -2147483647i), vec3<i32>(2147483647i, global0.d, -69612i)), true).x, _wgslsmith_dot_vec3_i32(~(vec3<i32>(global0.d, -1i, global0.b) >> (vec3<u32>(32967u, 4294967295u, 19596u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-16670i, global0.b, 16488i)), abs(vec3<i32>(global0.b, global0.d, 32076i)))), any(!(!vec3<bool>(global0.c, false, false))), _wgslsmith_mult_i32(max(-84419i, ~2147483647i), global0.b), _wgslsmith_f_op_vec4_f32(sign(global0.e))), ~vec4<u32>(reverseBits(~var_0.x), 4294967295u, ~_wgslsmith_add_u32(32312u, var_0.x), var_0.x >> (_wgslsmith_add_u32(0u, 19126u) % 32u)));
    global1 = array<vec4<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_1.b, var_1.c.x), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global0.e.x)), 122521u);
}

