struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> Struct_4 {
    return Struct_4(721f, Struct_3(vec2<f32>(1f, 1f), 0i), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-686f, 1000f)))), 1i), u_input.d.x == 4294967295u);
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> i32 {
    var var_0 = Struct_2(Struct_1(u_input.d.xwz, max(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d.xyz, vec3<u32>(u_input.d.x, arg_1, u_input.d.x), vec3<u32>(21085u, 0u, arg_1)), vec3<u32>(u_input.c, u_input.d.x, 43604u), ~vec3<u32>(arg_1, 0u, 14728u)), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), abs(arg_1), ~u_input.d.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.b.a.x)), arg_0.a, _wgslsmith_f_op_f32(-arg_0.b.a.x)))), select(select(!vec4<bool>(false, true, arg_0.d, true), vec4<bool>(true, true, arg_0.d, true), select(vec4<bool>(false, true, arg_0.d, false), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), false)), select(vec4<bool>(false, false, arg_0.d, arg_0.d), select(vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, false, arg_0.d, true), arg_0.d), select(vec4<bool>(false, true, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, true, false), false)), -823f != _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_add_i32(-8598i, _wgslsmith_mod_i32(~u_input.b.x, min(-15445i, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.c.a.x, arg_0.a, 1242f) - vec4<f32>(-1661f, -1056f, -1323f, -428f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.c.a.x, 1343f, -658f) * vec4<f32>(678f, -1259f, -1156f, arg_0.a))))))), -589f, ~arg_1 ^ _wgslsmith_add_u32(4294967295u, ~_wgslsmith_div_u32(u_input.d.x, 38161u)), Struct_1(firstLeadingBit(u_input.d.wyy), u_input.d.wzy, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.a.x, arg_0.c.a.x, arg_0.a) - vec3<f32>(arg_0.b.a.x, 429f, -156f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(-arg_0.c.a.x), arg_0.c.a.x))), select(vec4<bool>(true, !arg_0.d, !arg_0.d, !arg_0.d), vec4<bool>(!arg_0.d, any(vec3<bool>(true, arg_0.d, arg_0.d)), arg_0.d, true), select(select(vec4<bool>(arg_0.d, arg_0.d, false, arg_0.d), vec4<bool>(arg_0.d, true, arg_0.d, arg_0.d), arg_0.d), select(vec4<bool>(true, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(false, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, false, false)), arg_0.d)), u_input.a.x ^ _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a), -vec4<i32>(arg_0.c.b, u_input.a.x, 62361i, 0i))));
    return -_wgslsmith_mult_i32(41019i, func_2().c.b << (~(arg_1 >> (46802u % 32u)) % 32u));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = firstTrailingBit((func_3(var_0, arg_0) >> (~(~u_input.c) % 32u)) ^ select(_wgslsmith_dot_vec3_i32(u_input.a.xwx, u_input.a.zwy), 2708i ^ -var_0.b.b, func_2().d));
    var var_2 = func_2().b;
    var var_3 = vec3<i32>(var_0.c.b, var_2.b, ~firstTrailingBit(var_2.b));
    var_3 = u_input.a.xxz | u_input.a.wyw;
    return Struct_1(reverseBits(max(vec3<u32>(4294967295u | arg_0, max(4294967295u, 1u), 4294967295u), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d.wxw, u_input.d.xxz), _wgslsmith_div_vec3_u32(u_input.d.yzy, vec3<u32>(46272u, arg_0, 40747u))))), u_input.d.zww, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.x, var_0.a, var_2.a.x), vec3<f32>(var_2.a.x, var_0.c.a.x, -1253f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(436f, var_2.a.x, var_2.a.x), vec3<f32>(1585f, var_2.a.x, -437f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-280f, var_0.b.a.x, 1266f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, -593f, var_2.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, -238f, var_2.a.x) + vec3<f32>(var_2.a.x, 430f, -351f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_0.a, var_2.a.x)), vec3<f32>(var_0.a, -1746f, var_0.a), true)))), vec4<bool>((-var_1 > (var_3.x ^ var_2.b)) | false, !any(vec2<bool>(true, true)), !var_0.d, false), _wgslsmith_div_i32(~1i, _wgslsmith_add_i32(~(~(-1891i)), reverseBits(_wgslsmith_dot_vec2_i32(u_input.b, u_input.a.yy)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-515f)), -1890f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -422f)))), -1544f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1280f, 935f, 134f, 277f), vec4<f32>(508f, -1000f, 474f, -808f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-773f, -647f, 285f, -211f)))))))));
    var var_1 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(1u << (u_input.d.x % 32u)), ~abs(21360u)), ~vec2<u32>(4294967295u, u_input.d.x));
    let var_2 = func_1(1u);
    var_1 = vec2<u32>(~0u, 4294967295u);
    let var_3 = _wgslsmith_sub_vec3_i32(~_wgslsmith_mult_vec3_i32(~(u_input.a.wxz << (var_2.a % vec3<u32>(32u))), -u_input.a.wzz), abs(_wgslsmith_div_vec3_i32(-(~u_input.a.xyz), u_input.a.xxy)));
    let var_4 = true || (var_2.d.x & !var_2.d.x);
    let var_5 = var_0.x;
    let var_6 = vec2<u32>(~u_input.c, var_2.a.x) & _wgslsmith_div_vec2_u32(~u_input.d.wy, u_input.d.yx);
    var_1 = var_2.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.d)), _wgslsmith_mult_i32(-1i, ~(1i | func_1(var_2.b.x).e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(311f, -1000f, -173f)))) - vec3<f32>(920f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_5 - -930f)))), firstLeadingBit(~vec3<u32>(_wgslsmith_add_u32(4294967295u, var_1.x), var_2.b.x, 45194u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(func_2().c.a.x)), var_0.x, var_0.x, _wgslsmith_div_f32(-532f, _wgslsmith_f_op_f32(sign(-857f)))) - _wgslsmith_f_op_vec4_f32(-var_0)));
}

