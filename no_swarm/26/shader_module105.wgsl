struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> i32 {
    let var_0 = vec2<bool>(true, arg_0.x);
    return ~(-71664i);
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1802f, arg_0) * vec3<f32>(-120f, -380f, arg_0))))) + vec3<f32>(887f, _wgslsmith_f_op_f32(-arg_0), arg_0))));
    var var_1 = any(select(select(vec2<bool>(true, all(vec4<bool>(true, true, true, false))), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), min(u_input.c, 0u) >= 38070u), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(1i == _wgslsmith_dot_vec4_i32(vec4<i32>(66988i, -2147483647i, 38017i, -1i), vec4<i32>(35984i, -15314i, 20848i, 16779i)), all(vec3<bool>(true, true, true)))));
    var_1 = any(vec3<bool>(true, false, !all(vec2<bool>(true, true))));
    let var_2 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(41669i, -33373i), vec2<i32>(-70218i, -2147483647i) >> (vec2<u32>(28246u, u_input.c) % vec2<u32>(32u)), countOneBits(~vec2<i32>(-57084i, 0i))) >> (countOneBits(_wgslsmith_mult_vec2_u32(u_input.b, u_input.a.wy)) % vec2<u32>(32u));
    var var_3 = !(!select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), true)));
    return var_2.x;
}

fn func_2() -> vec3<i32> {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i >> (u_input.b.x % 32u), _wgslsmith_sub_i32(~33187i, -20718i), ~(-2147483647i)), -vec3<i32>(-2147483647i, 6566i, func_3(1627f)), vec3<i32>(~(-14544i), -1i, 1i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = Struct_4(-(~reverseBits(min(var_0.x, -1i))), all(vec2<bool>(true, true)));
    var var_3 = !vec3<bool>(!(all(vec3<bool>(var_2.b, var_2.b, var_2.b)) == all(vec2<bool>(var_2.b, false))), -1088f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) - _wgslsmith_f_op_f32(-var_1)), all(vec2<bool>(select(true, var_2.b, false), true)));
    var var_4 = _wgslsmith_div_i32(22601i, ~_wgslsmith_add_i32(var_0.x, -2147483647i | -var_2.a));
    return _wgslsmith_add_vec3_i32(max(abs(~vec3<i32>(var_2.a, var_2.a, var_2.a)) << ((_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.a.xxy) & (u_input.a.zyz | vec3<u32>(38132u, u_input.c, u_input.a.x))) % vec3<u32>(32u)), ~(reverseBits(vec3<i32>(var_2.a, var_2.a, var_2.a)) | (vec3<i32>(-52482i, -4951i, 19259i) << (vec3<u32>(1u, u_input.b.x, u_input.c) % vec3<u32>(32u))))), _wgslsmith_mod_vec3_i32(-abs(_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_2.a, -25433i), vec3<i32>(var_0.x, var_2.a, var_0.x))), vec3<i32>(reverseBits(_wgslsmith_clamp_i32(54836i, 2147483647i, var_2.a)), -var_2.a, func_1(!vec2<bool>(var_3.x, var_2.b), vec3<bool>(false, false, false)))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = 94432u;
    var var_1 = select(firstLeadingBit(reverseBits(-vec2<i32>(-2147483647i, arg_2.c.b))), countOneBits(countOneBits(vec2<i32>(arg_0, -4776i))), !arg_2.a);
    var_1 = ~firstTrailingBit(abs(vec2<i32>(var_1.x << (u_input.a.x % 32u), arg_0)));
    var_0 = 4294967295u;
    let var_2 = u_input.c;
    return select(vec4<bool>(all(!(!vec3<bool>(arg_1, false, arg_2.a))), arg_1, !(!arg_1) || false, false), select(!vec4<bool>(all(vec2<bool>(arg_2.a, true)), true | arg_1, false, !arg_2.a), !select(select(vec4<bool>(arg_2.a, false, arg_1, arg_2.a), vec4<bool>(arg_1, arg_1, arg_1, true), false), select(vec4<bool>(arg_2.a, true, true, arg_2.a), vec4<bool>(arg_1, false, true, true), arg_2.a), select(vec4<bool>(false, arg_2.a, arg_1, arg_1), vec4<bool>(false, false, arg_1, false), false)), !vec4<bool>(arg_0 > var_1.x, !arg_1, arg_1, any(vec4<bool>(false, true, arg_1, false)))), vec4<bool>(arg_2.a, any(vec4<bool>(!arg_2.a, false, true | arg_2.a, true)), (any(vec4<bool>(arg_2.a, arg_2.a, false, arg_1)) || !arg_1) || true, false && any(vec4<bool>(arg_1, true, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_4(reverseBits(func_1(vec2<bool>(false, false), vec3<bool>(true, true, true))) | _wgslsmith_dot_vec3_i32(func_2(), ~vec3<i32>(-2147483647i, 1i, 55068i)), any(vec4<bool>(false, true, true, true)), Struct_3(true, _wgslsmith_add_i32(-2147483647i << (u_input.a.x % 32u), reverseBits(16267i)), Struct_2(Struct_1(-1848f, 0i), 31994i))), vec4<bool>(false, true, all(vec2<bool>(true, any(vec3<bool>(false, true, false)))), true), vec4<bool>(true & (_wgslsmith_f_op_f32(f32(-1f) * -344f) < _wgslsmith_f_op_f32(trunc(1000f))), true, true, true));
    var var_1 = Struct_4(_wgslsmith_add_i32(~(_wgslsmith_add_i32(1i, 534i) << (select(u_input.a.x, 1u, false) % 32u)), _wgslsmith_sub_i32(2147483647i, 1i)), var_0.x);
    var_1 = Struct_4(var_1.a, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1348f) - _wgslsmith_f_op_f32(trunc(364f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1072f) + _wgslsmith_f_op_f32(f32(-1f) * -522f))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = vec4<i32>(-1i, func_1(vec2<bool>(all(select(var_0, var_0, var_0)), !(var_1.a <= 1095i)), !select(!vec3<bool>(true, var_1.b, true), select(var_0.yzw, var_0.wwy, var_0.xwx), true)), var_1.a, -(~_wgslsmith_sub_i32(2147483647i, var_1.a)));
    let var_4 = var_0;
    var var_5 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, -2183f) + _wgslsmith_f_op_f32(exp2(var_2)))))), ~countOneBits(var_3.yz));
    var var_6 = vec3<u32>(u_input.b.x, 1u, ~(~u_input.c << (66845u % 32u)));
    var_1 = Struct_4(-1i, ~2147483647i > -var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec4_i32(-vec4<i32>(-14682i, 0i, var_1.a, 0i), abs(vec4<i32>(var_3.x, var_3.x, 1i, var_1.a))) | _wgslsmith_div_i32(var_1.a >> (80484u % 32u), var_1.a)), (~(u_input.a.zwx >> (vec3<u32>(u_input.a.x, var_6.x, 0u) % vec3<u32>(32u))) >> (~select(u_input.a.yyy, u_input.a.zzz, false) % vec3<u32>(32u))) | ~(~u_input.a.zwz & u_input.a.wzx), vec4<f32>(var_5.a, 1018f, var_2, var_2));
}

