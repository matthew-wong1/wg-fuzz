struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = -(countOneBits(_wgslsmith_div_i32(-49351i, arg_0.a)) << (countOneBits(16415u) % 32u)) ^ countOneBits(arg_0.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1831f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(526f, -572f)))))));
    var_0 = max(_wgslsmith_mod_i32(arg_0.a, 4587i), -8986i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2144f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-363f, var_1.x)))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(2360f)), 190f));
    var var_3 = 60356u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-730f + var_2.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -705f)), _wgslsmith_f_op_f32(-var_2.x))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-357f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(f32(-1f) * -696f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(820f, -2778f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(356f, 329f) + vec2<f32>(505f, -296f)))))) + vec2<f32>(1f, 1f));
    global0 = reverseBits(0u);
    var var_1 = Struct_3(arg_2, any(!(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(arg_2)))), !select(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, false)), vec4<bool>(false, true, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1017f, -532f, var_0.x), vec3<f32>(-697f, var_0.x, -363f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -821f, 1029f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(622f, var_0.x, var_0.x)))), ~16200u != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 37595u)))), !(!vec3<bool>(arg_0, true, false)))));
    var var_2 = Struct_2(-143f, var_1.c.b);
    var var_3 = -29993i;
    return 66420u;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> i32 {
    global0 = ~(_wgslsmith_add_u32(func_2(true, Struct_1(-18378i, u_input.a), Struct_1(u_input.a, u_input.a)) | abs(742u), _wgslsmith_sub_u32(~23314u, _wgslsmith_dot_vec4_u32(vec4<u32>(24537u, 92552u, 0u, 0u), vec4<u32>(8060u, 37159u, 21724u, 17550u)))) ^ 24604u);
    var var_0 = min(~(~func_2(false, Struct_1(-27988i, arg_1.x), Struct_1(arg_1.x, 31847i))), ~1u) << (firstTrailingBit(24121u) % 32u);
    var var_1 = Struct_1(-_wgslsmith_dot_vec3_i32(arg_1.ywy, max(vec3<i32>(arg_1.x, 1i, -41566i), -vec3<i32>(u_input.a, arg_1.x, arg_1.x))), u_input.a);
    var_1 = Struct_1(26061i, u_input.a);
    let var_2 = -1884f;
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, u_input.a), ~_wgslsmith_mult_vec2_i32(vec2<i32>(51119i, u_input.a), vec2<i32>(var_1.a, -33314i))), 821i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_u32(1u, abs(_wgslsmith_sub_u32(~1u, 421u)), 10826u);
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_i32(~abs(vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, func_1(vec3<f32>(-433f, -807f, -1537f), vec4<i32>(u_input.a, u_input.a, 41473i, u_input.a))), reverseBits(firstLeadingBit(vec2<i32>(-3964i, 0i))), -max(vec2<i32>(u_input.a, -24740i), vec2<i32>(u_input.a, u_input.a)))));
    global0 = firstTrailingBit(_wgslsmith_sub_u32(9478u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(14087u, 71585u, 4294967295u))) & (min(_wgslsmith_mult_u32(33798u, 38045u), 1u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(15570u, 328u), vec2<u32>(23292u, 4294967295u)) % 32u)));
    var var_1 = vec4<u32>(28808u, firstLeadingBit(35127u), ~3871u, _wgslsmith_mult_u32(~(~_wgslsmith_mod_u32(26707u, 26377u)), ~(40859u | _wgslsmith_clamp_u32(0u, 55941u, 38675u))));
    let var_2 = Struct_4(reverseBits(vec3<u32>(countOneBits(~21101u), var_1.x, _wgslsmith_add_u32(1u, var_1.x))), Struct_2(1000f, vec4<bool>(true, ~1u < firstLeadingBit(var_1.x), true, !all(vec4<bool>(false, false, true, true)))), !vec3<bool>(_wgslsmith_mod_u32(var_1.x, 47277u) <= var_1.x, false, true), vec2<i32>(-30536i, var_0));
    let var_3 = vec3<i32>(-1i) * -(abs(vec3<i32>(-1i, var_2.d.x, 10549i) >> (vec3<u32>(var_1.x, 52938u, 1u) % vec3<u32>(32u))) >> (vec3<u32>(30991u >> (var_2.a.x % 32u), 27420u, ~var_2.a.x) % vec3<u32>(32u)));
    var_1 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(~vec4<u32>(48964u, abs(1u), firstLeadingBit(4294967295u), ~var_1.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.x, ~var_1.x, var_1.x, abs(~var_2.a.x)), vec4<u32>(4294967295u, 34224u, var_2.a.x >> (var_2.a.x % 32u), var_2.a.x)), ~abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_2.a.x, 4294967295u, 4294967295u), vec4<u32>(var_2.a.x, 2389u, 4294967295u, var_2.a.x))));
    let var_4 = ~var_3;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_4.x, var_0, 75442i) >> (~var_2.a.x % 32u), min(-var_2.d.x, -var_2.d.x), var_3.x), var_4), vec2<i32>(-(~_wgslsmith_dot_vec3_i32(var_3, var_4)), -(~_wgslsmith_add_i32(10858i, var_0))));
}

