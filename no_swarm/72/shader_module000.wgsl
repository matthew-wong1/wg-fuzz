struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: Struct_4,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = ~firstTrailingBit(~arg_0.a.b.x << (abs(1u) % 32u));
    var var_1 = _wgslsmith_mod_i32(0i, i32(-1i) * -max(min(arg_0.a.d, u_input.b.x), countOneBits(arg_0.a.d)));
    let var_2 = var_0;
    var var_3 = Struct_5(arg_0.c, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a.a.x, -837f, arg_0.a.a.x))))) * arg_0.a.a), arg_0.a.c.xy, ~(vec4<u32>(0u, 13631u, 1u, var_0) << (arg_0.a.c % vec4<u32>(32u))), max(-1i, select(arg_0.a.d, arg_0.a.d, arg_0.c)) << (_wgslsmith_div_u32(arg_0.a.b.x, ~4294967295u) % 32u)), Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-147f)), _wgslsmith_f_op_f32(sign(arg_0.a.a.x)))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a.a.x - -1172f))), 1i, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(869f, 1000f, 1405f), vec3<f32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x)), arg_0.a.c.yw, vec4<u32>(~var_2, firstTrailingBit(1u), 1u, ~0u), 1i), select(min(u_input.b, min(u_input.b, vec4<i32>(-3082i, 1374i, arg_0.a.d, 11645i))), abs(countOneBits(vec4<i32>(u_input.d, -14220i, 1i, arg_0.a.d))), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a.a), arg_0.a.a, true))), firstLeadingBit(u_input.e.wy));
    var_3 = Struct_5(true, Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_0.a.a, vec3<f32>(arg_0.a.a.x, _wgslsmith_div_f32(281f, arg_0.a.a.x), _wgslsmith_f_op_f32(arg_0.a.a.x * -321f)))), ~vec2<u32>(var_3.b.b.x, _wgslsmith_dot_vec2_u32(arg_0.a.c.zw, var_3.b.c.wz)), _wgslsmith_mult_vec4_u32(select(arg_0.a.c, _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.c.x, arg_0.a.c.x, var_2, var_0), vec4<u32>(49117u, arg_0.a.c.x, arg_0.a.c.x, var_3.c.c.c.x)), !vec4<bool>(true, false, arg_0.b.x, false)), var_3.b.c), _wgslsmith_dot_vec3_i32(~u_input.b.xyy, u_input.b.yxx)), Struct_4(arg_0.c, 6084i, Struct_1(var_3.b.a, ~abs(vec2<u32>(var_3.b.b.x, var_0)), vec4<u32>(_wgslsmith_sub_u32(0u, var_2), _wgslsmith_dot_vec2_u32(arg_0.a.b, var_3.c.c.c.zw), 21107u, countOneBits(arg_0.a.c.x)), u_input.a), select(vec4<i32>(36773i, u_input.a, ~var_3.b.d, -37818i), var_3.c.d, arg_0.b), var_3.b.a), vec2<i32>(var_3.b.d >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4957u, var_2, var_3.b.c.x, 0u), vec4<u32>(4294967295u, 9870u, var_3.c.c.b.x, 0u)) % 32u), 0i));
    return any(arg_0.b);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_5 {
    var var_0 = Struct_4(func_3(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), vec2<u32>(0u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(32035u, 4294967295u, 61624u, 28588u), vec4<u32>(18818u, 10394u, 38536u, 1u)), 2147483647i), !(!vec4<bool>(arg_2.x, arg_2.x, false, false)), arg_1.x <= abs(u_input.d))), 0i, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-735f, arg_0.x, -398f) + vec3<f32>(arg_0.x, arg_0.x, 135f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1052f, arg_0.x, 1286f)))), vec2<u32>(~1u, ~(~8265u)), vec4<u32>(~4294967295u, _wgslsmith_add_u32(countOneBits(4294967295u), select(25809u, 1u, true)), ~_wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_div_u32(~1u, 4294967295u)), _wgslsmith_mod_i32(u_input.a, ~arg_1.x)), vec4<i32>(-2147483647i, 1i, arg_1.x, ~countOneBits(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2493f))), arg_0.x, arg_0.x));
    let var_1 = arg_1.x;
    let var_2 = ~min(_wgslsmith_sub_vec2_u32(~var_0.c.b, vec2<u32>(4294967295u, var_0.c.b.x)) >> (select(select(var_0.c.b, vec2<u32>(var_0.c.c.x, var_0.c.c.x), vec2<bool>(true, arg_2.x)), _wgslsmith_div_vec2_u32(var_0.c.b, vec2<u32>(13131u, 20715u)), any(vec2<bool>(false, var_0.a))) % vec2<u32>(32u)), var_0.c.c.zx);
    var_0 = Struct_4(func_3(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 216f, -1045f) * vec3<f32>(arg_0.x, var_0.e.x, arg_0.x)), vec2<u32>(28753u, 81937u), ~vec4<u32>(var_2.x, 34551u, 102109u, var_0.c.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-56740i, arg_1.x), u_input.e.xw)), vec4<bool>(true, true, 2147483647i == var_0.d.x, any(vec4<bool>(arg_2.x, arg_2.x, false, var_0.a))), true)), _wgslsmith_sub_i32(u_input.c, var_1), var_0.c, var_0.d, vec3<f32>(-166f, 2479f, 1f));
    var var_3 = Struct_4(any(arg_2.xz), 8842i, Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c.a), vec2<u32>(var_2.x & _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 10451u, 30812u, 59358u), var_0.c.c), _wgslsmith_div_u32(59666u & var_2.x, var_2.x | 3947u)), _wgslsmith_add_vec4_u32(var_0.c.c, vec4<u32>(~4308u, var_2.x, var_0.c.b.x, abs(var_2.x))), 9733i), -firstLeadingBit(vec4<i32>(arg_1.x >> (4294967295u % 32u), 1i, -var_0.b, -4258i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.e)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.e) - _wgslsmith_f_op_vec3_f32(var_0.e + vec3<f32>(arg_0.x, arg_0.x, -419f))))));
    return Struct_5(all(vec4<bool>(var_0.a, !(-1i < u_input.e.x), var_0.a, all(vec3<bool>(var_3.a, true, true)))), var_3.c, Struct_4(!arg_2.x, -6058i, var_3.c, _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.e.x, arg_1.x, -12638i, 2147483647i) >> (var_3.c.c % vec4<u32>(32u)), u_input.e, -var_0.d), var_0.e), u_input.e.yy);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, arg_2))) + vec2<f32>(-186f, 1000f)))), u_input.b.ww, !vec3<bool>(false, arg_0.x, !all(vec4<bool>(arg_0.x, true, arg_1, arg_0.x))));
    return _wgslsmith_f_op_f32(-arg_2);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_3 {
    return Struct_3(func_2(arg_0.e.xx, -abs(arg_0.d.yx), arg_1.wwz).b, arg_1, all(select(vec3<bool>(any(arg_1.zyx), true, !arg_0.a), vec3<bool>(arg_1.x | true, arg_1.x, true), _wgslsmith_f_op_f32(arg_0.e.x * -923f) != 511f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(1u, ~(~15117u));
    let var_1 = func_4(Struct_4(true, firstLeadingBit(firstLeadingBit(u_input.e.x)) & 10439i, Struct_1(vec3<f32>(1f, 1f, 1f), vec2<u32>(var_0, var_0) ^ (vec2<u32>(var_0, var_0) << (vec2<u32>(0u, var_0) % vec2<u32>(32u))), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(111u, var_0, var_0, var_0)), ~vec4<u32>(1u, var_0, 0u, 27107u)), u_input.b.x), u_input.e, vec3<f32>(1444f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1819f)), _wgslsmith_f_op_f32(f32(-1f) * -790f)), _wgslsmith_f_op_f32(step(2295f, _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), false, -780f)))))), !vec4<bool>(true, true, _wgslsmith_add_i32(u_input.e.x, u_input.a) >= _wgslsmith_sub_i32(u_input.a, 2147483647i), func_3(Struct_3(Struct_1(vec3<f32>(-384f, 672f, 534f), vec2<u32>(var_0, var_0), vec4<u32>(var_0, var_0, 0u, 66053u), u_input.a), vec4<bool>(true, false, false, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~(~var_1.a.c.xz | var_1.a.b), var_1.a.c.xx), ~(~var_1.a.c.x), _wgslsmith_f_op_f32(func_1(vec2<bool>(!var_1.b.x, false), var_1.b.x, var_1.a.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a.a.x + 457f), _wgslsmith_f_op_f32(exp2(var_1.a.a.x)), _wgslsmith_f_op_f32(-var_1.a.a.x)))));
}

