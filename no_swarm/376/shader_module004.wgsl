struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2648f)));
    var var_1 = vec3<bool>(arg_0 >= ~select(arg_1, ~(-18399i), any(vec4<bool>(false, true, arg_2.b.x, false))), true, all(vec2<bool>(!any(vec4<bool>(arg_2.c, true, true, arg_3)), false)));
    var_1 = !select(vec3<bool>(arg_2.b.x && (arg_2.a.x < arg_2.a.x), ~u_input.b.x <= ~u_input.b.x, false), vec3<bool>((var_1.x || var_1.x) && !var_1.x, u_input.b.x <= 0u, any(vec4<bool>(var_1.x, false, true, arg_2.b.x))), !(!any(vec2<bool>(true, arg_3))));
    var var_2 = 1047f;
    var var_3 = _wgslsmith_f_op_vec3_f32(arg_2.a.yzw - _wgslsmith_f_op_vec3_f32(arg_2.a.zxw + vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))), arg_2.a.x)));
    return 1u;
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = 0u & func_3(0i, 7196i, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(-787f)), _wgslsmith_f_op_f32(f32(-1f) * -812f), -458f, -144f), vec2<bool>(true, true), select(true, false, true)), true);
    let var_1 = arg_0.a;
    let var_2 = -(~(-_wgslsmith_mult_i32(u_input.c >> (32640u % 32u), -u_input.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1324f, 248f) * vec2<f32>(var_1, arg_0.a)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a, -1664f))))))));
    let var_4 = Struct_2(-1611f);
    return min(vec3<u32>(u_input.b.x, u_input.b.x, 0u), max(select(~vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 15155u, 4294967295u) >> (firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, 144761u)) % vec3<u32>(32u)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)))), _wgslsmith_add_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.b.x, 1u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), abs(vec3<u32>(u_input.b.x, 4294967295u, 1u))))));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~u_input.b.x, ~0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 40874u), u_input.b) | _wgslsmith_dot_vec2_u32(max(u_input.b, u_input.b), abs(vec2<u32>(2274u, u_input.b.x))), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.b.x, u_input.b.x)), select(vec3<u32>(u_input.b.x, u_input.b.x, 21615u), vec3<u32>(u_input.b.x, 1u, 35482u), arg_0)) ^ u_input.b.x), _wgslsmith_sub_vec3_u32(abs(~reverseBits(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))), select(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) << (vec3<u32>(24370u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), ~vec3<u32>(29085u, u_input.b.x, u_input.b.x), arg_0) | select(vec3<u32>(16563u, u_input.b.x, 1u) & vec3<u32>(u_input.b.x, 1u, u_input.b.x), func_2(Struct_2(-815f)), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, arg_0)))), vec3<u32>(u_input.b.x << (u_input.b.x % 32u), ~(~1u & func_2(Struct_2(540f)).x), 82969u));
    var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(38692u, firstLeadingBit(11921u), _wgslsmith_dot_vec4_u32(min(min(vec4<u32>(25432u, 4294967295u, 16737u, u_input.b.x), vec4<u32>(7565u, 35376u, 45041u, 52733u)), countOneBits(vec4<u32>(var_0.x, 1u, 53294u, 0u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(5218u, var_0.x, 19261u, u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 53215u, 1u, 4294967295u), vec4<u32>(u_input.b.x, var_0.x, 22282u, 4294967295u)), vec4<u32>(u_input.b.x, 70509u, 35142u, 44136u)))), vec3<u32>(4294967295u, 1u, var_0.x), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x & 1u, max(var_0.x, u_input.b.x), var_0.x), vec3<u32>(u_input.b.x, 0u, var_0.x)), ~vec3<u32>(1u, 47888u, ~var_0.x)));
    var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(83297u, var_0.x), 18769u, 0u)), vec3<u32>(u_input.b.x, 42111u, 16709u));
    var var_1 = -_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(-(~vec2<i32>(33871i, -5630i)), select(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(6025i, u_input.c) & vec2<i32>(-1i, -2147483647i), select(vec2<bool>(arg_0, true), vec2<bool>(false, false), vec2<bool>(arg_0, arg_0)))), -(vec2<i32>(-1i) * -vec2<i32>(u_input.c, u_input.a)));
    var_1 = select(vec2<i32>(~(-1i), max(var_1.x, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -20516i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(var_1.x, u_input.a)) << (firstLeadingBit(vec2<u32>(u_input.b.x, var_0.x)) % vec2<u32>(32u))), all(vec2<bool>(true, -35266i >= u_input.c))) & vec2<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-u_input.a, ~1i), 0i, var_1.x));
    return _wgslsmith_f_op_f32(-123f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1853f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1466f), _wgslsmith_f_op_f32(func_1(var_0)), !var_0)))), -713f));
    let var_2 = -575f;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2716f, 243f, 161f) + vec4<f32>(-2415f, var_2, -710f, var_2)))) + vec4<f32>(723f, _wgslsmith_f_op_f32(-745f - _wgslsmith_f_op_f32(-var_2)), 234f, -1000f)), vec2<bool>(true, all(select(vec2<bool>(false, var_0), select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), true), !vec2<bool>(var_0, var_0)))), !(!(u_input.a != firstLeadingBit(u_input.a))));
    var var_4 = firstTrailingBit(u_input.b) | (u_input.b ^ abs(vec2<u32>(1u << (1u % 32u), 0u)));
    var var_5 = _wgslsmith_div_vec4_f32(var_3.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_3.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1357f)), _wgslsmith_f_op_f32(-var_2), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2296f) - _wgslsmith_f_op_f32(var_3.a.x * -170f))), select(select(select(vec4<bool>(var_0, false, false, var_3.c), vec4<bool>(var_0, false, false, true), vec4<bool>(true, var_3.b.x, var_3.c, false)), !vec4<bool>(var_0, true, var_3.c, false), select(vec4<bool>(true, var_0, false, true), vec4<bool>(true, var_3.c, true, false), vec4<bool>(var_3.c, false, var_0, var_0))), select(!vec4<bool>(false, var_3.c, var_0, true), vec4<bool>(true, true, false, var_3.c), var_3.c), true))));
    let var_6 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_3.a.xz * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_3.a.yz))))))));
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-var_2)))))), select(!select(vec2<bool>(false, var_0), !var_3.b, vec2<bool>(true, false)), var_3.b, select(var_3.b, var_3.b, vec2<bool>(all(vec4<bool>(false, true, var_0, false)), false))), !var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(1u << (0u % 32u), _wgslsmith_mult_u32(37315u, 109794u))), reverseBits(reverseBits(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.c, 25717i, -91114i))), -u_input.c);
}

