struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: Struct_3,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(-241f, 783f, -1023f, 767f), vec4<f32>(528f, 2009f, 341f, 615f), vec4<f32>(-1772f, 579f, -868f, 169f), vec4<f32>(699f, 1144f, -246f, 1933f), vec4<f32>(-163f, -222f, -228f, 605f), vec4<f32>(634f, -279f, -267f, 1585f), vec4<f32>(-819f, -1159f, 728f, -138f), vec4<f32>(744f, 633f, -229f, -177f), vec4<f32>(-278f, 781f, 222f, -644f), vec4<f32>(2069f, 1103f, -761f, -542f), vec4<f32>(698f, 485f, 542f, 104f), vec4<f32>(1303f, 1000f, 472f, 262f), vec4<f32>(-113f, -1000f, -366f, 1000f), vec4<f32>(455f, 1425f, 377f, 1415f), vec4<f32>(-1019f, 1154f, 1428f, 266f), vec4<f32>(2117f, 310f, -802f, -1151f), vec4<f32>(-2079f, 1201f, -669f, 498f), vec4<f32>(519f, -590f, 1992f, 1473f), vec4<f32>(1158f, 133f, 1000f, 501f), vec4<f32>(1629f, 1002f, -473f, -1190f), vec4<f32>(-600f, -2037f, 398f, 1226f), vec4<f32>(495f, 277f, -1017f, 1607f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(874f)) - -974f))), Struct_2(-1000f));
    var var_1 = true;
    var_1 = !(var_0.a >= -776f);
    var var_2 = vec2<bool>(all(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), true);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(107f))), var_0.b);
    return _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(_wgslsmith_sub_i32(arg_0.a.x, arg_0.a.x), ~7977i), _wgslsmith_add_vec2_i32(arg_0.a.xw, _wgslsmith_mult_vec2_i32(vec2<i32>(54837i, -1i), arg_0.a.yy))), arg_0.a.xz), vec2<i32>(8183i, 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(1f)), Struct_2(473f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2105f, _wgslsmith_f_op_f32(-arg_2), -355f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a, arg_2, var_0.b.a)))))))));
    var var_2 = abs(~firstLeadingBit(vec2<u32>(min(4294967295u, u_input.a), u_input.a)));
    var var_3 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), -134f > arg_2), vec3<bool>(true, select(true, true, false), false), false);
    let var_4 = Struct_5(-816f, _wgslsmith_mod_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(4294967295u, 118826u, u_input.a, 11355u))), vec4<u32>(0u, 4294967295u, _wgslsmith_sub_u32(0u, u_input.a), 1u)) ^ vec4<u32>(~1u, 14854u << (u_input.a % 32u), 13305u, var_2.x), var_0, u_input.a, -func_3(Struct_4(vec4<i32>(arg_3, arg_0.x, arg_0.x, -52850i) ^ vec4<i32>(arg_0.x, -1i, arg_1.x, arg_3))));
    return var_4.c.b;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    global0 = array<vec4<f32>, 22>();
    var var_0 = ~firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, u_input.a), vec2<u32>(93164u, arg_1)), max(vec2<u32>(1u, 5615u), vec2<u32>(1u, 73039u))), _wgslsmith_mult_u32(5896u, arg_0)));
    global0 = array<vec4<f32>, 22>();
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0, u_input.a, arg_0)), ~select(vec3<u32>(87858u, u_input.a, arg_1), vec3<u32>(28489u, arg_1, arg_0), vec3<bool>(false, true, false))), ~35741u, 21351u, 91622u);
    var var_2 = vec2<bool>(any(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), false)), any(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true), false))));
    return func_2(vec2<i32>(~(-1i), 10752i), min(_wgslsmith_mod_vec3_i32(min(countOneBits(vec3<i32>(-1i, arg_3, -68158i)), vec3<i32>(313i, -4355i, 49854i)), abs(~vec3<i32>(58461i, -2147483647i, arg_3))), -vec3<i32>(0i, arg_3, _wgslsmith_sub_i32(-46921i, arg_3))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)))), -select(-max(arg_3, 2147483647i), firstLeadingBit(arg_3 ^ arg_3), var_2.x && true));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> i32 {
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    let var_0 = !(!any(vec4<bool>(true, true, true, true)) != true);
    var var_1 = func_4(_wgslsmith_add_u32(~u_input.a, 0u), _wgslsmith_sub_u32(u_input.a, u_input.a), func_2(max(vec2<i32>(40369i, -28124i), ~vec2<i32>(31412i, 0i)) >> (vec2<u32>(u_input.a, ~u_input.a) % vec2<u32>(32u)), ~(~vec3<i32>(-9909i, -7578i, 34843i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(-arg_0.a))), -(~1i)), _wgslsmith_mult_i32(-46134i, ~(-1i)));
    let var_2 = vec4<u32>(1u, ~u_input.a, 36778u, 1u);
    return -21641i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(10555i, _wgslsmith_add_i32(0i, -2147483647i))), abs(1i), ~func_1(Struct_2(-1000f), -124f)));
    let var_1 = ~(_wgslsmith_add_u32(50422u, u_input.a) ^ ~u_input.a);
    let var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(abs(7492u), var_1), var_1, 25346u), _wgslsmith_div_vec3_u32(select(~vec3<u32>(u_input.a, 4294967295u, u_input.a), ~vec3<u32>(17477u, var_1, 4294967295u), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), ~_wgslsmith_add_vec3_u32(vec3<u32>(52285u, 0u, var_1), vec3<u32>(var_1, 0u, u_input.a)))), u_input.a, 4978u, 4294967295u);
    let var_3 = !vec3<bool>(_wgslsmith_f_op_f32(select(1f, -614f, true)) > 1067f, true, select(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, true)), false));
    var var_4 = Struct_1(select(abs(~vec3<u32>(u_input.a, var_1, 32882u)), vec3<u32>(var_1, ~u_input.a, ~24113u), select(vec3<bool>(all(vec4<bool>(var_3.x, true, var_3.x, true)), all(vec2<bool>(var_3.x, true)), false), !var_3, true || (var_3.x & var_3.x))), var_0, _wgslsmith_clamp_u32(70532u, 1u, min(u_input.a, u_input.a)));
    let var_5 = var_0.x;
    let var_6 = 1u;
    var_4 = Struct_1(_wgslsmith_sub_vec3_u32(select(var_4.a, var_2.yxx, var_3.x) << (vec3<u32>(0u, var_1, 17063u) % vec3<u32>(32u)), vec3<u32>(var_4.c, ~var_2.x, reverseBits(4294967295u))) ^ ~(~(vec3<u32>(var_2.x, 11166u, var_1) << (var_4.a % vec3<u32>(32u)))), vec3<i32>(var_0.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(53153i, var_0.x, var_5, 3795i)), vec4<i32>(var_4.b.x, 9514i, 18388i, -1i)) | var_0.x, 0i), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(386f, -1249f, _wgslsmith_f_op_f32(-956f * -226f)))), firstTrailingBit(var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-755f - -631f) - -195f))), var_0.x, _wgslsmith_sub_vec2_u32(firstTrailingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(34779u, var_6), vec2<u32>(var_2.x, var_4.c))), vec2<u32>(select(var_4.a.x, u_input.a, var_3.x) | var_1, ~21597u)));
}

