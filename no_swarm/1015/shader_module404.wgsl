struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(arg_0.a, arg_0.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(1u, 13604u), vec2<u32>(arg_0.a, 4294967295u)), !arg_0.b), max(select(vec2<u32>(4294967295u, arg_0.a), vec2<u32>(arg_0.a, arg_0.a), arg_0.b.x), ~vec2<u32>(arg_0.a, arg_0.a))), ~(~(~arg_0.a))), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c)))));
    let var_1 = select(vec4<bool>(var_0.b.x, arg_0.b.x, arg_0.b.x & var_0.b.x, all(select(select(vec3<bool>(var_0.b.x, false, true), vec3<bool>(false, arg_0.b.x, var_0.b.x), arg_0.b.x), select(vec3<bool>(arg_0.b.x, false, var_0.b.x), vec3<bool>(arg_0.b.x, var_0.b.x, true), vec3<bool>(false, var_0.b.x, arg_0.b.x)), vec3<bool>(var_0.b.x, var_0.b.x, arg_0.b.x)))), select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, var_0.b.x, true, arg_0.b.x), arg_0.b.x), !select(vec4<bool>(true, true, var_0.b.x, arg_0.b.x), vec4<bool>(false, arg_0.b.x, false, true), vec4<bool>(arg_0.b.x, false, true, false)), all(vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x))), vec4<bool>(true, true, var_0.b.x, all(vec2<bool>(true, true))), true), !(u_input.a.x <= -u_input.a.x));
    let var_2 = vec4<i32>(-51550i, u_input.a.x, u_input.a.x, _wgslsmith_div_i32(min(abs(67001i), -27621i) >> (var_0.a % 32u), 1i));
    var var_3 = true;
    let var_4 = 2822f;
    return vec3<u32>(min(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0.a, 0u), vec2<u32>(arg_0.a, 0u), select(var_0.b, var_1.zy, arg_0.b.x)), ~(vec2<u32>(19005u, var_0.a) ^ vec2<u32>(4294967295u, 37417u))), _wgslsmith_mod_u32(firstTrailingBit(var_0.a) | arg_0.a, 50809u)), (arg_0.a | _wgslsmith_add_u32(2321u, min(arg_0.a, var_0.a))) | var_0.a, 59430u);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec3_u32(~max(vec3<u32>(12539u, 100082u, 4294967295u), ~vec3<u32>(4294967295u, 26524u, 4294967295u)) | max(func_3(Struct_2(9110u, vec2<bool>(true, false), 145f)), ~func_3(Struct_2(20885u, vec2<bool>(false, false), 303f))), ~(~(~vec3<u32>(1u, 1u, 1u))));
    let var_1 = Struct_2(var_0.x << (_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(countOneBits(11940u), _wgslsmith_mod_u32(20677u, var_0.x), 65324u)) % 32u), select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), true)), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-507f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(281f, var_1.c, var_1.c, -267f)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.c)), var_1.c), -137f, _wgslsmith_f_op_f32(-var_1.c), 1406f))));
    var_0 = vec3<u32>(_wgslsmith_mult_u32(~(~0u), var_1.a) >> (_wgslsmith_mult_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_0.x, var_1.a, 1u), vec4<u32>(0u, var_0.x, 34169u, var_1.a)), abs(1u)), ~_wgslsmith_sub_u32(var_1.a, 17859u)) % 32u), countOneBits(52036u) >> (~var_1.a % 32u), abs(select(var_1.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a, var_1.a, var_1.a), vec3<u32>(var_0.x, 10844u, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_1.a, var_0.x), vec3<u32>(var_0.x, var_1.a, var_0.x))), all(var_1.b))));
    var var_3 = u_input.a;
    return Struct_3(~_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(var_0.xx, var_0.xy), var_0.yx), Struct_1(var_2.zx, select(!(!vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x)), select(!vec3<bool>(var_1.b.x, var_1.b.x, true), select(vec3<bool>(var_1.b.x, true, true), vec3<bool>(true, false, false), vec3<bool>(var_1.b.x, false, false)), true), select(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), select(vec3<bool>(var_1.b.x, false, var_1.b.x), vec3<bool>(true, var_1.b.x, true), vec3<bool>(true, true, true)), vec3<bool>(false, var_1.b.x, var_1.b.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(9812i), var_3.x), -(~vec2<i32>(-1i, u_input.a.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: f32, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_4(arg_0.b.b, countOneBits(countOneBits(vec4<i32>(arg_0.a, arg_0.d.x, u_input.a.x, u_input.a.x))) | vec4<i32>(_wgslsmith_clamp_i32(arg_1, u_input.a.x, arg_1), -16291i, -arg_1, max(-26180i, 0i)), true, _wgslsmith_add_vec3_i32(vec3<i32>(min(1i, ~arg_1), arg_0.b.b.c.x, 1i), arg_0.d));
    var_0 = Struct_4(func_2().b, vec4<i32>(u_input.a.x, var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -31596i, 1i, select(1879i, 6647i, var_0.c)), firstTrailingBit(countOneBits(vec3<i32>(-72720i, var_0.a.c.x, arg_1)))), u_input.a.x), var_0.a.b.x, ~_wgslsmith_mult_vec3_i32(reverseBits(~vec3<i32>(var_0.a.c.x, -13472i, -29093i)), vec3<i32>(reverseBits(2147483647i), 54858i, ~arg_0.b.b.c.x)));
    var_0 = Struct_4(func_2().b, var_0.b >> (select(vec4<u32>(~arg_0.b.a.x, arg_0.b.a.x, 9676u, ~arg_0.b.a.x), max(select(vec4<u32>(4294967295u, 0u, arg_0.b.a.x, arg_0.b.a.x), vec4<u32>(20655u, arg_0.b.a.x, arg_0.b.a.x, 4294967295u), vec4<bool>(true, var_0.c, var_0.c, false)), vec4<u32>(arg_0.b.a.x, 1u, 54592u, arg_0.b.a.x)), select(vec4<bool>(arg_0.b.b.b.x, arg_0.b.b.b.x, false, var_0.a.b.x), vec4<bool>(arg_0.b.b.b.x, var_0.a.b.x, arg_0.b.b.b.x, arg_0.b.b.b.x), true)) % vec4<u32>(32u)), ~(-2481i) >= select(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.b.c.x, 1i, u_input.a.x, var_0.d.x) ^ var_0.b, -vec4<i32>(u_input.a.x, arg_1, 67788i, 0i)), any(arg_0.b.b.b)), min(arg_0.d, _wgslsmith_mult_vec3_i32(vec3<i32>(~(-2147483647i), countOneBits(arg_0.d.x), -57058i), u_input.a)));
    var_0 = Struct_4(func_2().b, abs(vec4<i32>(~(i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, 1i) >> (vec3<u32>(4294967295u, 75400u, 83829u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, var_0.b.x, -14798i)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, -2557i), arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, var_0.d.x, -2147483647i, u_input.a.x), max(vec4<i32>(u_input.a.x, 0i, var_0.a.c.x, -46604i), var_0.b)))), !var_0.a.b.x, -var_0.b.wzw);
    let var_1 = vec2<i32>(-arg_0.b.b.c.x, ~max(8712i, var_0.d.x) & _wgslsmith_div_i32(_wgslsmith_mod_i32(9270i, 2147483647i), _wgslsmith_sub_i32(0i, 31808i))) | firstTrailingBit(-(arg_0.d.yy >> (firstLeadingBit(arg_0.b.a) % vec2<u32>(32u))));
    return arg_0.b.b.b.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> bool {
    return true == func_4(Struct_5(11646i, func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 307f, -104f, 939f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-107f, -188f, -1000f, 912f), vec4<f32>(-182f, 1646f, -236f, 1294f), false))), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_3.x, 1i), vec3<i32>(1i, arg_3.x, arg_3.x)), vec2<i32>(_wgslsmith_add_i32(arg_3.x, arg_3.x), arg_3.x)), -1i, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(-442f, -1000f))), 779f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(962f - -1424f), _wgslsmith_f_op_f32(max(374f, -527f)), _wgslsmith_div_f32(1187f, 987f), _wgslsmith_f_op_f32(step(344f, 1170f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-548f, -1216f, -1623f, 104f), vec4<f32>(-199f, -108f, -1072f, -688f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(168f, 248f, -473f, -747f)))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    var var_0 = arg_0.c;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - _wgslsmith_f_op_f32(sign(arg_0.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1196f)))))));
    let var_1 = _wgslsmith_sub_u32(arg_0.a, arg_0.a);
    var var_2 = ~select(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, 1u, 45743u), vec3<u32>(arg_0.a, 14910u, 7117u)), _wgslsmith_add_u32(func_3(Struct_2(var_1, arg_1.xx, arg_0.c)).x, _wgslsmith_sub_u32(firstLeadingBit(4294967295u), var_1)), true);
    var_2 = 4294967295u & var_1;
    return abs(~var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = Struct_3(vec2<u32>(4294967295u, ~firstTrailingBit(1u)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-628f, -330f) + vec2<f32>(-1534f, 351f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(507f, -364f) - vec2<f32>(-418f, 510f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1435f, -971f))))), vec3<bool>(true, true, true), vec2<i32>(u_input.a.x, u_input.a.x)));
    let var_2 = u_input.a;
    let var_3 = u_input.a;
    var_0 = ~abs(firstLeadingBit(countOneBits(var_3.x)));
    var var_4 = ~func_5(Struct_2(33388u, var_1.b.b.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a.x - -209f) * _wgslsmith_f_op_f32(var_1.b.a.x + var_1.b.a.x))), !select(!vec4<bool>(var_1.b.b.x, true, var_1.b.b.x, true), vec4<bool>(var_1.b.b.x, var_1.b.b.x, true, var_1.b.b.x), true), true, vec4<bool>(var_1.b.b.x, func_1(var_1.a, 17358u, _wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, var_1.a.x), select(vec4<i32>(25720i, -66296i, u_input.a.x, -6044i), vec4<i32>(-29286i, 5041i, 13151i, -23547i), vec4<bool>(var_1.b.b.x, false, var_1.b.b.x, false))), false, all(vec2<bool>(true, var_1.b.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-173f, var_1.b.a.x, var_1.b.a.x), vec3<u32>(firstTrailingBit(var_1.a.x), ~var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1740f, var_1.b.a.x, var_1.b.a.x, 123f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(127f, -136f, var_1.b.a.x, -1514f))))))));
}

