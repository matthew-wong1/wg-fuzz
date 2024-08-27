struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: bool, arg_3: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_sub_i32(arg_1.a.x, 1i);
    return ~u_input.d;
}

fn func_2(arg_0: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_add_i32(countOneBits(1i | _wgslsmith_dot_vec3_i32(~vec3<i32>(40447i, -464i, 19775i), vec3<i32>(2147483647i, 35327i, -2147483647i))), -4595i << (abs(u_input.a.x) % 32u));
    var var_1 = Struct_4(vec2<i32>(_wgslsmith_clamp_i32(var_0, var_0, 23839i), 1i), -1000f);
    let var_2 = Struct_3(Struct_1(u_input.a.x, all(select(vec2<bool>(true, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0), all(vec3<bool>(arg_0, arg_0, arg_0)))), min(func_3(max(12304u, 1u), Struct_4(var_1.a, var_1.b), any(vec2<bool>(true, true)), u_input.d.x), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, u_input.b.zzz), abs(vec3<u32>(6942u, 44623u, u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, 1459f) - var_1.b))), select(select(vec2<bool>(true, arg_0), vec2<bool>(true, false), !(!vec2<bool>(false, arg_0))), select(vec2<bool>(arg_0, !arg_0), vec2<bool>(true, true), true), select(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, false), arg_0), !(!vec2<bool>(false, arg_0)), vec2<bool>(var_0 <= 2147483647i, !arg_0))), vec4<bool>(!arg_0, false, arg_0, any(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), arg_0))), (_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_0) >> (vec2<u32>(76094u, 1u) % vec2<u32>(32u)), var_1.a) & var_1.a) ^ (~_wgslsmith_mod_vec2_i32(var_1.a, var_1.a) >> (u_input.d.zx % vec2<u32>(32u))));
    var_1 = Struct_4(vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0, var_2.e.x, var_1.a.x, -1i)) << (u_input.b % vec4<u32>(32u)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_0, var_0, 17462i), vec4<i32>(39680i, -2147483647i, var_1.a.x, 18659i), vec4<i32>(0i, -26908i, 0i, var_0)), vec4<i32>(var_1.a.x, 2147483647i, -62900i, var_0), true)), 1i), var_2.b);
    var var_3 = var_2.d.wyw;
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 2041f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), var_2.b)), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f * var_1.b)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_4 {
    var var_0 = vec4<bool>(arg_3.a.b, arg_3.d.x || true, false, !((arg_0.x <= arg_0.x) | all(!arg_3.d)));
    return Struct_4(vec2<i32>(1i, ~31267i << (~(~u_input.d.x) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(214f)), _wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(0u != (u_input.b.x >> (u_input.a.x % 32u))))), vec2<i32>(6270i, ~max(-2210i, 1i)) ^ reverseBits(reverseBits(vec2<i32>(-7254i, -23924i)) << (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u))), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 57437i, -18325i, 33366i), vec4<i32>(1i, 1i, 1i, 1i))), Struct_3(Struct_1(~4294967295u, true, ~u_input.b.wxz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), any(vec3<bool>(true, true, false))), vec2<bool>(true, true), select(false, true, false) | true), vec4<bool>(select(true, true, true), true, true, true), vec2<i32>(~(-19418i) >> (countOneBits(u_input.a.x) % 32u), _wgslsmith_mod_i32(0i, -9833i) | _wgslsmith_clamp_i32(10633i, 18790i, 1i))));
    var var_1 = Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(239f, _wgslsmith_f_op_f32(var_0.b + -1603f))) <= 256f, _wgslsmith_div_vec3_u32(max(abs(u_input.b.xzy) >> (~u_input.a % vec3<u32>(32u)), ~vec3<u32>(27958u, u_input.b.x, u_input.a.x)), _wgslsmith_mod_vec3_u32(u_input.b.zxw, max(vec3<u32>(u_input.b.x, 17137u, 53160u), u_input.d))));
    var_1 = Struct_1(~var_1.a, -769f <= _wgslsmith_f_op_f32(-787f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1050f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.zxz, ~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a, var_1.a, u_input.b.x), var_1.c)), firstLeadingBit(u_input.b.yzx), var_1.c));
    let var_2 = !(!select(!vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(var_1.b, !var_1.b, var_1.b), var_1.b));
    var var_3 = var_2.x;
    return Struct_3(Struct_1(var_1.c.x, !any(vec3<bool>(false, var_1.b, false)), vec3<u32>(countOneBits(firstTrailingBit(18023u)), 5844u, ~61328u)), _wgslsmith_f_op_f32(min(var_0.b, var_0.b)), select(!vec2<bool>(true, any(var_2.yz)), vec2<bool>(all(select(vec2<bool>(false, var_2.x), var_2.zx, var_1.b)), true), true), vec4<bool>(all(var_2), var_1.b && false, any(select(select(vec4<bool>(var_1.b, false, false, false), vec4<bool>(var_2.x, var_2.x, false, var_1.b), true), !vec4<bool>(var_1.b, var_2.x, var_2.x, var_1.b), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(var_1.b, var_1.b, false, var_2.x)))), !all(var_2.zx)), vec2<i32>(var_0.a.x, _wgslsmith_add_i32(~(~(-2147483647i)), ~firstTrailingBit(var_0.a.x))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_4(vec2<i32>(arg_2.e.x, firstLeadingBit(2147483647i)), arg_0);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + -236f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-981f, 712f))), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f - 379f)))), arg_2.b, 121f);
    var var_2 = _wgslsmith_mod_u32(4294967295u, 22071u);
    var var_3 = arg_2.a;
    var var_4 = arg_2.e.x;
    return -1700f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-920f, 500f, -1472f))) * vec3<f32>(484f, 1000f, -190f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1439f - 732f), -1000f, _wgslsmith_f_op_f32(func_5(-854f, u_input.d.x << (u_input.a.x % 32u), func_1()))) * vec3<f32>(121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(605f, -372f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(859f * 252f)))));
    var var_1 = func_1();
    var var_2 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_mult_i32(0i, var_1.e.x)), -2147483647i, -_wgslsmith_clamp_i32(-12683i, 1i, 0i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e.x, -11058i, var_1.e.x), vec3<i32>(var_1.e.x, 35420i, 22939i)) >> (~var_1.a.c.x % 32u), ~15938i, firstTrailingBit(_wgslsmith_add_i32(var_1.e.x, 0i))));
    var var_3 = 1u;
    let var_4 = !select(!vec3<bool>(any(vec2<bool>(true, false)), !var_1.d.x, true), var_1.d.ywx, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

