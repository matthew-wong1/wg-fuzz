struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> vec3<u32> {
    global0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-3605i, -global0.x, u_input.b, ~(-1i)), -(~vec4<i32>(global0.x, -14966i, 0i, 8182i))), ~vec4<i32>(global0.x, global0.x, global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.x), global0.wx))), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(5037i, 45295i, -56013i, global0.x), firstTrailingBit(vec4<i32>(global0.x, u_input.a, -6985i, -4098i))) >> (~firstTrailingBit(vec4<u32>(87104u, arg_0.b.x, 4294967295u, arg_0.c.a)) % vec4<u32>(32u))), ~vec4<i32>(-2147483647i, 0i, global0.x, -1i));
    let var_0 = global0.x;
    global0 = vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(global0.xxy | global0.wxx, -vec3<i32>(-2147483647i, u_input.a, global0.x))), vec3<i32>(_wgslsmith_mult_i32(u_input.a, -3507i), 1i, -(~2147483647i))), -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(abs(global0.wwy)), select(min(vec3<i32>(u_input.a, 3282i, 1i), vec3<i32>(global0.x, -35977i, u_input.a)), _wgslsmith_mult_vec3_i32(global0.zyz, global0.zyy), false)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(-1i, 4131i, global0.x), global0.zzw), global0.yzx)), 1i);
    var var_1 = arg_0;
    let var_2 = ~_wgslsmith_dot_vec2_u32(arg_0.b, countOneBits(firstTrailingBit(~vec2<u32>(var_1.c.a, arg_0.b.x))));
    return select(vec3<u32>(arg_0.b.x, ~(1u << (select(var_1.c.a, 4294967295u, arg_2.c) % 32u)), arg_0.b.x), ~max(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, var_2, var_2) & vec3<u32>(arg_0.b.x, var_1.c.a, arg_0.b.x), ~vec3<u32>(0u, 1u, 69547u)), vec3<u32>(_wgslsmith_div_u32(0u, 37880u), reverseBits(arg_0.c.a), _wgslsmith_dot_vec4_u32(vec4<u32>(48372u, 4294967295u, 27345u, 4294967295u), vec4<u32>(14190u, arg_0.c.a, var_2, 45359u)))), false);
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_add_vec4_i32(firstTrailingBit(-_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, global0.x, global0.x, 11816i), vec4<i32>(1i, global0.x, 2147483647i, 2147483647i) & vec4<i32>(global0.x, global0.x, global0.x, -2147483647i))), vec4<i32>(5821i, global0.x, _wgslsmith_sub_i32(global0.x, _wgslsmith_mod_i32(u_input.b, global0.x)), _wgslsmith_div_i32(~42331i, firstLeadingBit(2147483647i))) | vec4<i32>(1i, 1i, 1i, 1i));
    let var_0 = vec4<u32>(5929u, 26881u, _wgslsmith_dot_vec3_u32(vec3<u32>(28177u, ~_wgslsmith_add_u32(0u, 0u), ~3062u), ~func_3(Struct_3(Struct_2(vec4<f32>(985f, -1574f, 1724f, -313f), vec2<f32>(497f, 986f), true), vec2<u32>(3512u, 4294967295u), Struct_1(91972u)), 200f, Struct_2(vec4<f32>(-610f, 387f, 1944f, 206f), vec2<f32>(1406f, 683f), true)) >> (vec3<u32>(1u, 1u, ~1u) % vec3<u32>(32u))), reverseBits(0u >> (~abs(4294967295u) % 32u)));
    var var_1 = Struct_1(var_0.x);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(143f, -1472f, -467f, 1377f), vec4<f32>(1019f, 471f, 542f, 309f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-3588f, -1085f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(775f, 405f)))))), false), ~func_3(Struct_3(Struct_2(vec4<f32>(333f, -1677f, -828f, -1094f), vec2<f32>(-511f, 155f), false), var_0.yy, Struct_1(var_0.x)), _wgslsmith_f_op_f32(-595f - 939f), Struct_2(vec4<f32>(-787f, 1328f, 943f, 750f), vec2<f32>(-1000f, 750f), false)).yz >> (vec2<u32>(firstTrailingBit(min(var_1.a, 30578u)), ~var_0.x) % vec2<u32>(32u)), Struct_1(0u));
    let var_3 = var_2.a.a;
    return var_2.c;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = ~arg_1.b;
    global0 = _wgslsmith_div_vec4_i32(~vec4<i32>(0i, 1i, global0.x, global0.x), firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(81209i, global0.x, global0.x, 1i), vec4<i32>(global0.x, u_input.b, u_input.b, 22160i), select(vec4<i32>(u_input.a, global0.x, u_input.b, u_input.b), vec4<i32>(global0.x, 3075i, global0.x, 0i), false)), firstTrailingBit(~vec4<i32>(-2147483647i, global0.x, global0.x, -1i)))));
    global0 = vec4<i32>(~7202i, u_input.b, -1i, ~countOneBits(~(~196i)));
    let var_1 = 91956u;
    let var_2 = vec4<bool>(false, all(!vec2<bool>(arg_1.a.c, true)) | true, all(!vec2<bool>(any(vec4<bool>(true, arg_1.a.c, true, arg_1.a.c)), arg_1.a.c)), arg_1.a.c);
    return _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a, -46522i), -4492i, reverseBits(41472i)), max(select(vec3<i32>(-1i, u_input.a, u_input.b), global0.zxx, var_2.zww), _wgslsmith_add_vec3_i32(global0.yxx, global0.zzz)))), _wgslsmith_mult_vec3_i32(vec3<i32>(-global0.x, u_input.b, ~(-70680i)), _wgslsmith_mod_vec3_i32(~global0.xxx, abs(vec3<i32>(u_input.a, global0.x, global0.x)))) & global0.zxy);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = global0.xxy;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-514f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(194f + arg_3)));
    let var_2 = arg_3;
    var_0 = max(~(~global0.yyx), func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + var_2))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(max(arg_3, 142f)), false))), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1043f, arg_3, var_2, var_2)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1080f, arg_3))), any(vec3<bool>(arg_2, false, arg_2))), arg_1.xz, func_2())));
    let var_3 = vec3<bool>(arg_2, any(vec2<bool>(arg_2, !arg_2)), arg_2);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(197f, var_2, arg_3, 1618f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-688f, -577f, 1000f, var_2)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1315f)), _wgslsmith_f_op_f32(arg_3 * var_2)))), abs(_wgslsmith_dot_vec2_u32(arg_1.xx, _wgslsmith_clamp_vec2_u32(arg_1.xx, vec2<u32>(50564u, 4294967295u), arg_1.yx))) != abs(reverseBits(arg_0)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3) -> vec4<i32> {
    global0 = max(~vec4<i32>(-_wgslsmith_add_i32(-6467i, global0.x), _wgslsmith_mod_i32(11586i, u_input.a), u_input.b, countOneBits(-2147483647i)), select(vec4<i32>(14601i, 0i, 1i, 2147483647i), select(vec4<i32>(firstLeadingBit(1i), -22446i, ~(-1464i), 0i), vec4<i32>(9679i, _wgslsmith_mod_i32(-1i, u_input.a), global0.x, -u_input.b), !select(vec4<bool>(arg_2.a.c, true, true, arg_2.a.c), vec4<bool>(arg_0.c, true, true, arg_2.a.c), vec4<bool>(true, arg_0.c, arg_2.a.c, true))), !select(select(vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(true, arg_0.c, true, arg_0.c), vec4<bool>(false, false, arg_1.x, arg_1.x)), vec4<bool>(true, arg_1.x, arg_0.c, false), true || arg_2.a.c)));
    global0 = vec4<i32>(max(_wgslsmith_add_i32(countOneBits(26871i), u_input.a), -40502i) | -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global0.x, u_input.b, u_input.a), vec4<i32>(-1i, global0.x, u_input.b, -26388i)), 41817i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(func_4(_wgslsmith_f_op_vec3_f32(-arg_2.a.a.xzy), arg_2).x, -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 2147483647i), global0.xy), global0.x), -1i), ~max(u_input.b, ~2147483647i), 0i);
    return ~(vec4<i32>(-1i) * -(~vec4<i32>(global0.x, 2147483647i, -5138i, global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(-34560i, u_input.b, ~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 2147483647i, 1316i), global0.wzx ^ vec3<i32>(-11878i, u_input.b, -17152i))), _wgslsmith_clamp_i32(u_input.a, i32(-1i) * -2147483647i, -(select(-35349i, u_input.b, true) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(-1i, -2147483647i)))));
    global0 = max(~func_5(func_1(~23538u, ~vec3<u32>(29254u, 0u, 0u), all(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(select(-329f, -446f, false))), vec3<bool>(false, false, false), Struct_3(func_1(1u, vec3<u32>(0u, 43941u, 73248u), true, -356f), vec2<u32>(4294967295u, 62671u), Struct_1(0u))), func_5(func_1(max(4294967295u, 25484u) & firstTrailingBit(1u), ~(~vec3<u32>(0u, 1u, 0u)), abs(0u) <= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 3014u), vec2<u32>(1u, 57101u)), _wgslsmith_f_op_f32(abs(-780f))), vec3<bool>(true, true, true), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-242f, -1221f, -278f, 877f))), vec2<f32>(-511f, 328f), any(vec2<bool>(false, true))), ~(~vec2<u32>(4294967295u, 16882u)), Struct_1(min(0u, 0u)))));
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(-3304i, u_input.b, _wgslsmith_mod_i32(-10527i, -45074i), global0.x), countOneBits(~(-min(vec4<i32>(global0.x, 20795i, u_input.b, 2147483647i), vec4<i32>(u_input.a, 11440i, global0.x, -32854i)))));
    let var_0 = vec4<i32>(~select(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-6394i, -1i, global0.x), global0.wyw)), _wgslsmith_sub_i32(~2147483647i, u_input.b), false), firstLeadingBit(0i), -36804i, global0.x & (global0.x >> (_wgslsmith_div_u32(1u, abs(4294967295u)) % 32u)));
    global0 = firstTrailingBit(reverseBits(-_wgslsmith_add_vec4_i32(vec4<i32>(60256i, var_0.x, u_input.a, 0i), vec4<i32>(50659i, u_input.b, var_0.x, var_0.x) << (vec4<u32>(0u, 53642u, 4294967295u, 13021u) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_sub_u32(2893u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(1u, 152283u, 103961u)), countOneBits(vec3<u32>(4294967295u, 1u, 1u))), ~(~vec3<u32>(4294967295u, 4294967295u, 4294967295u))), ~(~1u)));
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~0u, 34416u), _wgslsmith_div_u32(countOneBits(78090u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 24358u, 1u), vec3<u32>(70272u, 7471u, 1u)) ^ max(31837u, 76265u))), reverseBits(0u | _wgslsmith_clamp_u32(7179u, 1u, 18978u)) ^ (~(~0u) >> (func_2().a % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(866f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1205f, -1000f), _wgslsmith_f_op_f32(1000f + 1f), 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1094f, -755f, 780f), func_1(36228u, vec3<u32>(1u, 4294967295u, 47291u), false, -1697f).a.zwx))), reverseBits(u_input.b), 1u);
}

