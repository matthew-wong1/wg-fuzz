struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> i32 {
    let var_0 = vec3<u32>(~(u_input.d << (~firstTrailingBit(57482u) % 32u)), _wgslsmith_div_u32(u_input.c, u_input.c), firstLeadingBit(~37000u));
    global0 = array<Struct_5, 7>();
    var var_1 = Struct_2(~u_input.c, _wgslsmith_div_i32(-9247i, _wgslsmith_sub_i32(u_input.b, 1i)) & u_input.a);
    let var_2 = any(vec2<bool>(false, !(!all(vec4<bool>(false, true, true, true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(floor(1703f)), _wgslsmith_f_op_f32(trunc(1587f)), _wgslsmith_f_op_f32(286f * 1118f))))));
    return _wgslsmith_dot_vec2_i32(select(vec2<i32>(-max(u_input.a, var_1.b), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, 24028i, -4840i), 19843i)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.b, u_input.a), max(vec2<i32>(0i, -77259i), vec2<i32>(var_1.b, var_1.b))), vec2<i32>(u_input.b, -var_1.b)), true || !any(vec2<bool>(var_2, false))), _wgslsmith_div_vec2_i32(-vec2<i32>(var_1.b, u_input.a) << (var_0.zz % vec2<u32>(32u)), vec2<i32>(18286i, min(1i, abs(u_input.a)))));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_mod_i32(-reverseBits(-u_input.b), u_input.a);
    let var_1 = ~vec4<u32>(~(~(~u_input.d)), u_input.d, u_input.c, 1u >> (1u % 32u));
    global0 = array<Struct_5, 7>();
    let var_2 = _wgslsmith_add_vec3_u32(var_1.ywx, vec3<u32>(_wgslsmith_sub_u32(var_1.x, u_input.d), var_1.x, u_input.d));
    var var_3 = Struct_3(Struct_2(0u, -func_3()), countOneBits(~var_1.xxw), !any(vec4<bool>(true, false, all(vec2<bool>(false, true)), true)), Struct_2(0u, ~(-69995i ^ var_0)), ~1u);
    return _wgslsmith_div_f32(230f, _wgslsmith_f_op_f32(select(arg_0, 520f, any(select(!vec4<bool>(false, var_3.c, var_3.c, var_3.c), vec4<bool>(true, var_3.c, var_3.c, var_3.c), 4294967295u >= var_2.x)))));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec4_i32(select(~firstTrailingBit(vec4<i32>(u_input.b, 1i, 2147483647i, u_input.a) ^ vec4<i32>(u_input.b, 0i, u_input.b, -24938i)), ~_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, 20370i, -2147483647i, u_input.a), -vec4<i32>(1i, -74720i, -2147483647i, u_input.a)), vec4<bool>(true, true, true, true)), vec4<i32>(_wgslsmith_mult_i32(~1i, ~u_input.a), ~(-u_input.b), u_input.b, u_input.a));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1274f, _wgslsmith_f_op_f32(-799f + -642f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1050f, -1277f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(1071f, -1896f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-925f)), _wgslsmith_f_op_f32(f32(-1f) * -1478f), true)), _wgslsmith_f_op_f32(round(-226f)))));
    var var_2 = Struct_3(Struct_2(reverseBits(u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-28696i, u_input.a)), countOneBits(0i)), vec3<i32>(1i, -7425i ^ var_0, ~(-2384i)))), ~(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(u_input.d, 1u, u_input.d) << (vec3<u32>(u_input.d, 7262u, u_input.c) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), min(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.d, 50645u, 55098u)))), !select(any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false)), false, select(select(true, false, false), all(vec2<bool>(true, false)), true)), Struct_2(~u_input.c, -((u_input.b >> (u_input.d % 32u)) ^ func_3())), ~1u & _wgslsmith_div_u32(~u_input.d, _wgslsmith_clamp_u32(1u, reverseBits(u_input.c), u_input.c)));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a));
    let var_3 = _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(countOneBits(u_input.d), 41814u)) | var_2.b.yx, var_2.b.xz);
    return Struct_4(Struct_1(_wgslsmith_div_vec3_f32(var_1.a, var_1.a)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5) -> Struct_1 {
    return Struct_1(arg_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-678f * -1084f))))), !vec2<bool>(true, u_input.c < u_input.c), ~vec2<u32>(u_input.c, 8613u) ^ vec2<u32>(36617u, 0u), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, true)), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    global0 = array<Struct_5, 7>();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, var_0.a.x, 891f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 1000f, var_0.a.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(-func_1().a.a.x), var_0.a.x, 3077f)));
    var var_1 = true;
    let var_2 = global0[_wgslsmith_index_u32(1u, 7u)];
    var var_3 = ~vec4<i32>((i32(-1i) * -u_input.b) << (~0u % 32u), 1i, 0i, reverseBits(17925i));
    global0 = array<Struct_5, 7>();
    var_1 = (var_2.b.x && var_2.b.x) | any(!(!(!vec4<bool>(var_2.b.x, var_2.b.x, true, true))));
    let var_4 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(max(~u_input.c, _wgslsmith_add_u32(49698u, u_input.c)), 1u), 9693u, ~_wgslsmith_sub_u32(countOneBits(14355u), ~var_2.c.x)), vec3<u32>(abs(~4294967295u) & select(u_input.d | var_2.c.x, min(15014u, u_input.d), true), firstLeadingBit(_wgslsmith_mult_u32(u_input.c, 4294967295u)) << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 4294967295u, 70421u)), abs(~vec3<u32>(77218u, 4478u, 10695u)))), countOneBits(firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d, var_2.c.x), vec3<u32>(1u, 59211u, var_2.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(249f, 1f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.x, 2153f))) - var_0.a.xy))))));
}

