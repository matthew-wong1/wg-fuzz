struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-428f, arg_0))) == _wgslsmith_f_op_f32(-556f - -135f), u_input.b, any(vec3<bool>(true, true, true)), u_input.d.x);
    var var_2 = ~38218u;
    return 29583u;
}

fn func_2() -> vec4<bool> {
    let var_0 = abs(~vec4<u32>(_wgslsmith_mod_u32(50892u, firstTrailingBit(0u)), func_3(720f), u_input.a, ~u_input.a));
    global0 = array<Struct_3, 29>();
    var var_1 = Struct_2(u_input.d.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-678f))), _wgslsmith_f_op_f32(ceil(-428f))) - vec2<f32>(277f, _wgslsmith_f_op_f32(f32(-1f) * -1050f))), Struct_1(false, true, u_input.b, false, abs(abs(-u_input.c.x))), Struct_1(true, _wgslsmith_dot_vec4_u32(~var_0, var_0) == var_0.x, var_0.x, any(vec3<bool>(select(true, false, true), all(vec3<bool>(true, true, false)), true)), u_input.d.x), any(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), true)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-var_1.b.x));
    var_1 = Struct_2(_wgslsmith_div_i32(var_1.a, abs(firstTrailingBit(1i))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-842f - var_2.a), _wgslsmith_f_op_f32(select(-1000f, 283f, var_1.c.d)))))), var_1.c, Struct_1(false, !var_1.c.d, 16639u, true | !all(vec4<bool>(true, true, var_1.e, var_1.c.a)), i32(-1i) * -u_input.c.x), var_1.e);
    return vec4<bool>(true, var_1.c.e > ~u_input.d.x, var_1.e, !(_wgslsmith_div_i32(~(-12451i), 28590i) >= -u_input.d.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> i32 {
    var var_0 = ~arg_1;
    let var_1 = all(select(select(vec4<bool>(all(vec3<bool>(false, true, true)), true, true, true), vec4<bool>(true, 45241u <= arg_1, all(vec3<bool>(true, true, false)), any(vec4<bool>(true, false, true, false))), vec4<bool>(false, false, all(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, false)))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), func_2()));
    var var_2 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, ~abs(arg_3.x), -2147483647i), vec3<i32>(max(abs(-1i), -1i), 1i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_3.x, u_input.d.x)), -arg_3.xy))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-759f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-199f * 1239f)))) * vec2<f32>(787f, -1698f)), Struct_1(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), reverseBits(~(~u_input.a)), var_1, 0i), Struct_1(all(!vec3<bool>(var_1, var_1, true)) && var_1, var_1, countOneBits(~26956u), func_2().x, min(0i, arg_3.x)), any(vec4<bool>(true, true, all(vec4<bool>(var_1, false, var_1, false)), !(0u < arg_0.x))));
    var var_3 = Struct_3(var_2.b.x);
    var_2 = Struct_2((_wgslsmith_div_i32(1i, var_2.c.e) & -_wgslsmith_add_i32(53919i, 6010i)) | _wgslsmith_dot_vec3_i32(-arg_3.ywz, reverseBits(vec3<i32>(0i, u_input.d.x, 1i)) << (_wgslsmith_mod_vec3_u32(arg_0, arg_0) % vec3<u32>(32u))), vec2<f32>(1472f, _wgslsmith_div_f32(674f, var_3.a)), var_2.d, Struct_1(var_1, any(select(vec3<bool>(var_1, var_2.d.a, true), !vec3<bool>(var_1, false, false), select(vec3<bool>(true, var_2.d.b, true), vec3<bool>(var_2.d.a, false, true), vec3<bool>(var_2.d.d, var_2.d.d, var_1)))), arg_0.x, all(vec2<bool>(var_2.e, var_2.a == 0i)), ~_wgslsmith_mod_i32(-2147483647i, u_input.c.x) >> (arg_2 % 32u)), var_2.e);
    return _wgslsmith_mult_i32((min(arg_3.x, -7254i) ^ 9545i) << (_wgslsmith_clamp_u32(0u, 41169u, arg_2) % 32u), var_2.c.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 0i, _wgslsmith_clamp_i32(u_input.c.x, 28360i, -6716i), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), vec4<i32>(-13330i, u_input.d.x, u_input.d.x, 2147483647i) & vec4<i32>(15607i, -2147483647i, 1i, u_input.d.x)), abs(~vec4<i32>(26858i, u_input.c.x, u_input.c.x, 31250i)) ^ (_wgslsmith_clamp_vec4_i32(vec4<i32>(-24182i, -32062i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.d.x, 0i, 29776i, 10576i), vec4<i32>(u_input.c.x, -1i, 14533i, -21678i)) << (~vec4<u32>(4294967295u, 68817u, u_input.b, u_input.a) % vec4<u32>(32u)))));
    global0 = array<Struct_3, 29>();
    var_0 = vec4<i32>(var_0.x, -_wgslsmith_sub_i32(u_input.d.x ^ -38687i, _wgslsmith_sub_i32(var_0.x, 1i)), -_wgslsmith_add_i32(func_1(vec3<u32>(4294967295u, u_input.a, 21018u), u_input.a, 21274u, vec4<i32>(u_input.c.x, u_input.c.x, -1i, -2147483647i)), u_input.d.x >> (6735u % 32u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, u_input.d.x, u_input.c.x), min(max(vec3<i32>(var_0.x, 57098i, -53155i), vec3<i32>(-29098i, 0i, -2147483647i)), -var_0.xyy))) >> (vec4<u32>(1u, u_input.a, _wgslsmith_div_u32(4294967295u ^ (u_input.a << (u_input.a % 32u)), u_input.b), max(~u_input.a, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(34572u, u_input.b, 67377u), u_input.b ^ u_input.a))) % vec4<u32>(32u));
    var var_1 = max(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(0u, u_input.a), firstTrailingBit(u_input.a), abs(31770u), 1u), abs(reverseBits(vec4<u32>(0u, 29129u, u_input.a, 26416u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(1u), u_input.b, ~0u, max(4294967295u, 64429u)), vec4<u32>(~u_input.b, 0u, ~1u, ~71627u), abs(vec4<u32>(0u, 35084u, 1u, u_input.a)))), _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(26460u, u_input.b, u_input.b, u_input.a))), vec4<u32>(1435u, 54510u, 1u, 4294967295u)));
    var var_2 = true;
    let var_3 = !select(select(vec3<bool>(true, true, any(vec2<bool>(true, false))), func_2().xyx, true), func_2().xyy, true);
    var var_4 = vec2<f32>(144f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(708f, 728f)))), 380f)));
    let var_5 = 1u;
    let var_6 = Struct_2(-1i << (_wgslsmith_add_u32(_wgslsmith_mult_u32(func_3(-629f), 1u), abs(firstTrailingBit(28894u))) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1336f, var_4.x), vec2<f32>(var_4.x, 295f))), vec2<f32>(-283f, -684f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, -937f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1447f * 537f), _wgslsmith_f_op_f32(-237f - 111f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-805f, var_4.x))))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.x))) == -1607f, true & var_3.x, _wgslsmith_add_u32(1u << (0u % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_1.zx, var_1.zx), var_5 & 70168u)), true, abs(var_0.x)), Struct_1(true, true, min(1u, ~reverseBits(var_1.x)), !(!any(vec4<bool>(var_3.x, var_3.x, true, true))), -1i), all(func_2().zz));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_6.c.e, 2147483647i, u_input.c.x, -1i)), vec4<i32>(u_input.d.x, 16013i, var_6.a, 1i) ^ vec4<i32>(14011i, var_0.x, 6003i, var_6.c.e)), 1u);
}

