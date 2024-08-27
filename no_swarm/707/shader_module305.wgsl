struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = all(!(!(!arg_2.xx)));
    var_0 = all(vec2<bool>(false, select(true && arg_2.x, all(arg_2.yy), any(select(arg_2.xz, vec2<bool>(arg_2.x, true), vec2<bool>(arg_2.x, arg_2.x))))));
    var_0 = all(vec2<bool>(false | all(select(vec3<bool>(true, false, arg_2.x), vec3<bool>(true, arg_2.x, false), arg_2.x)), all(vec2<bool>(true, true))));
    var var_1 = ~u_input.a;
    var var_2 = arg_1;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, -287f, 1000f, -1000f))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -105f), _wgslsmith_f_op_f32(ceil(204f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-125f * 2483f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1025f)), _wgslsmith_f_op_f32(abs(-1000f))))), -2221f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-669f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(805f * -2025f)))))));
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a.x, 5631i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -43121i), u_input.a.xx)), Struct_5(~1u, 7313u), vec3<bool>(false, true, !all(vec3<bool>(false, false, false))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1445f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(761f - -1028f))), 770f, 600f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(720f - -561f), -2063f) * -615f)));
    var var_1 = _wgslsmith_mult_i32(1i, 0i) < (firstTrailingBit(max(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(10712i, -44587i, 19829i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))) & _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, 6587i), -_wgslsmith_clamp_vec2_i32(u_input.a.zx, u_input.a.zz, vec2<i32>(29494i, u_input.a.x))));
    return abs(min(min(vec4<i32>(-u_input.a.x, -2147483647i, _wgslsmith_sub_i32(31524i, u_input.a.x), u_input.a.x ^ u_input.a.x), abs(vec4<i32>(1i, 1i, 1i, 1i))), vec4<i32>(u_input.a.x, u_input.a.x, 5243i, reverseBits(40005i))));
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_3(func_2(), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1281f, -1223f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-744f))))), Struct_2(Struct_1(~(~vec2<u32>(13483u, 4294967295u)), _wgslsmith_clamp_i32(1i, -5190i, 57866i | u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(456f, -986f), vec2<f32>(716f, -221f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(2006f, -2345f) - vec2<f32>(-1000f, -1091f)))), u_input.a.x, ~_wgslsmith_mult_u32(~14562u, 1u), Struct_1(vec2<u32>(1u, 1u), 0i, _wgslsmith_f_op_vec2_f32(vec2<f32>(1498f, 692f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-599f, 239f), vec2<f32>(495f, 1000f), true))))), vec3<bool>(true && !any(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(step(289f, _wgslsmith_f_op_f32(f32(-1f) * -315f))) >= 996f, any(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)))), vec3<u32>(1u, 1u, 1u));
    let var_1 = Struct_5(34288u, ~_wgslsmith_add_u32(var_0.c.c, ~var_0.e.x | var_0.e.x));
    var_0 = Struct_3(func_2(), var_0.b, Struct_2(var_0.c.d, firstTrailingBit(~_wgslsmith_mult_i32(-9179i, u_input.a.x)), _wgslsmith_mod_u32(var_0.c.c, _wgslsmith_mod_u32(_wgslsmith_add_u32(38218u, var_0.c.a.a.x), _wgslsmith_sub_u32(var_0.c.c, 0u))), Struct_1(_wgslsmith_add_vec2_u32(var_0.c.d.a, vec2<u32>(48093u, var_0.c.c)), max(_wgslsmith_mod_i32(u_input.a.x, -1i), 0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.d.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2471f, var_0.c.a.c.x))))), select(var_0.d, !select(!vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), !var_0.d, select(vec3<bool>(var_0.d.x, false, true), vec3<bool>(var_0.d.x, false, var_0.d.x), vec3<bool>(var_0.d.x, var_0.d.x, true))), true), abs(~_wgslsmith_add_vec3_u32(var_0.e, var_0.e)));
    var_0 = Struct_3(-vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, var_0.a.xxz), _wgslsmith_div_vec3_i32(var_0.a.zwy, vec3<i32>(0i, u_input.a.x, -17045i))), 2147483647i, -min(var_0.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1643f, -884f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.d.c.x) - _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1939f) + 107f)))), Struct_2(var_0.c.a, -u_input.a.x, _wgslsmith_mult_u32(52066u, ~var_0.c.d.a.x), Struct_1(vec2<u32>(~0u, 1u), _wgslsmith_sub_i32(u_input.a.x, var_0.a.x), var_0.b)), select(select(var_0.d, select(vec3<bool>(var_0.d.x, true, true), select(vec3<bool>(true, var_0.d.x, var_0.d.x), var_0.d, var_0.d), any(vec2<bool>(var_0.d.x, true))), vec3<bool>(var_0.d.x, any(vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x)), var_0.d.x)), var_0.d, true), ~abs(~(~var_0.e)));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2792f, -1000f))), _wgslsmith_f_op_vec2_f32(floor(var_0.c.a.c)), var_0.d.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.d.c + vec2<f32>(-606f, var_0.c.d.c.x)), var_0.c.d.c)) + vec2<f32>(1000f, var_0.c.d.c.x)), Struct_2(var_0.c.a, u_input.a.x, ~_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.e.x, 5367u), ~var_0.c.c), var_0.c.a), select(var_0.d, vec3<bool>(!var_0.d.x, all(!var_0.d.xx), false), var_0.d.x), ~var_0.e);
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1() ^ select(select(firstLeadingBit(vec3<u32>(42183u, 145257u, 0u)), reverseBits(vec3<u32>(14629u, 1u, 4294967295u)), true), vec3<u32>(36527u, 1u, 1u), vec3<bool>(true, true, true)), abs(vec3<u32>(~46291u, 892u, ~1u >> (firstTrailingBit(1u) % 32u))), select(select(vec3<bool>(true, false, all(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, false))), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(false, true, true), true), all(vec2<bool>(true, true))));
    var var_1 = vec3<i32>(reverseBits(u_input.a.x), ~(-2147483647i), -8094i);
    var var_2 = Struct_1(vec2<u32>(min(0u, 1u), var_0.x), abs(_wgslsmith_mult_i32(~1i, 0i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-811f, _wgslsmith_div_f32(-617f, _wgslsmith_f_op_vec4_f32(func_3(var_1.x, Struct_5(1u, 109917u), vec3<bool>(true, true, false))).x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1229f, -194f) + vec2<f32>(-1562f, -1569f)), vec2<f32>(960f, 187f))) - vec2<f32>(1f, 1f))));
    var_1 = -firstTrailingBit(~_wgslsmith_add_vec3_i32(u_input.a, select(u_input.a, vec3<i32>(var_2.b, -42359i, var_1.x), vec3<bool>(false, false, false))));
    var_0 = ~max(select(~(~vec3<u32>(1u, 53107u, var_2.a.x)), ~vec3<u32>(4294967295u, var_0.x, 0u), all(vec3<bool>(true, false, false))), reverseBits(abs(vec3<u32>(var_2.a.x, var_2.a.x, 4294967295u)) & abs(vec3<u32>(var_0.x, 51232u, var_2.a.x))));
    var var_3 = Struct_5(var_2.a.x >> (var_0.x % 32u), 47335u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(select(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_3.b, 4294967295u, var_3.b), vec3<u32>(20224u, var_0.x, var_2.a.x), vec3<bool>(false, true, false)), vec3<u32>(0u, var_0.x, var_2.a.x)), 0u, false), ~countOneBits(1u) << (~(~var_0.x) % 32u), var_2.a.x | var_0.x, 10763u), u_input.a.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c.x, var_2.c.x, 1000f, var_2.c.x), vec4<f32>(-334f, 715f, var_2.c.x, var_2.c.x)))))), vec4<f32>(-1086f, 964f, _wgslsmith_f_op_f32(step(658f, _wgslsmith_f_op_f32(trunc(var_2.c.x)))), 481f))));
}

