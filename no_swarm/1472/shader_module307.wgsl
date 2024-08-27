struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> bool {
    let var_0 = ~(~1i);
    return true;
}

fn func_3() -> vec4<i32> {
    var var_0 = u_input.c;
    var_0 = _wgslsmith_sub_vec2_i32(~((-vec2<i32>(-1i, -15502i) ^ abs(u_input.b.xz)) | max(min(u_input.b.xz, u_input.d.yx), u_input.c)), -select(reverseBits(select(u_input.d.yz, vec2<i32>(var_0.x, -21144i), vec2<bool>(true, true))), -reverseBits(vec2<i32>(-2147483647i, 1i)), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(948f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(887f)), 632f, true))))) >= _wgslsmith_f_op_f32(floor(-750f));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-699f - 930f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f * -258f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(664f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1575f) + -893f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, 1449f, 607f, -628f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1682f, 757f, -197f, -1082f) + vec4<f32>(-1226f, -375f, -245f, -1502f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_div_f32(-924f, 283f), _wgslsmith_f_op_f32(ceil(1929f)), _wgslsmith_f_op_f32(trunc(1278f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(427f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * -1000f)))), -292f, -250f));
    return vec4<i32>(-38280i, min(-select(-37352i, u_input.a, var_1) >> (0u % 32u), _wgslsmith_mod_i32(-1i, ~u_input.b.x) << (((u_input.e.x ^ 4294967295u) << (countOneBits(u_input.e.x) % 32u)) % 32u)), _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, u_input.d), u_input.b), var_0.x), reverseBits(0i));
}

fn func_2() -> bool {
    let var_0 = 0u;
    var var_1 = Struct_2(select(~vec4<i32>(u_input.d.x, u_input.b.x, -1i, u_input.b.x) ^ func_3(), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.b.x, u_input.b.x) & vec4<i32>(-26248i, u_input.d.x, -30125i, u_input.a), abs(vec4<i32>(u_input.d.x, -1565i, u_input.b.x, -5875i))), !(u_input.d.x == _wgslsmith_mult_i32(0i, 21381i))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(173f, 157f, -462f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1651f, 790f, -1000f))))))), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.d.zz), firstLeadingBit(u_input.a)), -reverseBits(vec2<i32>(u_input.c.x, u_input.d.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1083f, 1558f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -637f))), -128f, _wgslsmith_f_op_f32(f32(-1f) * -358f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), reverseBits(~(~0u))));
    var_1 = Struct_2(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, u_input.b.x | 2147483647i, countOneBits(83928i), _wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), countOneBits(vec4<i32>(var_1.a.x, 0i, 1i, -3710i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_1.b, var_1.c.b.zwz))), vec3<f32>(var_1.c.b.x, var_1.c.b.x, _wgslsmith_f_op_f32(1871f + -1000f))), var_1.c);
    let var_2 = Struct_2(vec4<i32>(49089i, 1i, -1i, ~(-u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * var_1.c.b.x)) * var_1.b.x), var_1.c.b.x, -2131f), Struct_1(vec2<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.b.x | -1i), _wgslsmith_dot_vec3_i32(min(var_1.a.xwz, vec3<i32>(-1i, var_1.a.x, -30687i)), ~var_1.a.wxw)), var_1.c.b, !var_1.c.c, 9470u));
    let var_3 = var_2;
    return var_1.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, true, func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-903f + 1033f), -512f)), _wgslsmith_div_vec4_f32(vec4<f32>(-982f, 971f, -204f, 207f), vec4<f32>(-360f, 1051f, -568f, 1000f))));
    var_0 = select(select(!vec3<bool>(var_0.x, true, var_0.x), select(select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), var_0.x), select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true)), !vec3<bool>(var_0.x, false, true)), vec3<bool>(true, true, true), vec3<bool>(var_0.x & false, false, var_0.x)), select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x && false), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(!var_0.x, false, select(false, var_0.x, false)))), !vec3<bool>(var_0.x, !var_0.x, func_2()), select(select(vec3<bool>(u_input.e.x != u_input.e.x, false, u_input.e.x == 48931u), vec3<bool>(false, func_1(-1093f, vec4<f32>(-1953f, -2200f, -876f, 1135f)), true), !vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(any(var_0.zx) == true, all(!var_0.xy), false), !(!(!var_0.x))));
    var var_1 = vec4<bool>(false, !all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true), var_0.x)) || (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.e.x), ~vec3<u32>(1u, 16821u, u_input.e.x)) <= ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 7475u, u_input.e.x), vec3<u32>(u_input.e.x, u_input.e.x, 0u))), all(vec4<bool>(false, any(vec3<bool>(false, true, false)), true || (49189i >= u_input.b.x), false)), var_0.x);
    var_1 = select(!(!(!vec4<bool>(false, false, false, var_1.x))), !vec4<bool>(u_input.e.x != u_input.e.x, select(true, true, select(var_1.x, var_1.x, var_0.x)), true != (u_input.e.x != u_input.e.x), true), var_0.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(769f, -771f, -798f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(318f - 106f)))));
    var var_3 = -633f;
    let var_4 = Struct_1(vec2<i32>(max((53757i & u_input.a) | -14087i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, -24348i), firstTrailingBit(vec3<i32>(38598i, -37672i, u_input.c.x)))), reverseBits(7569i)), _wgslsmith_f_op_vec4_f32(var_2 + vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -812f)), _wgslsmith_f_op_f32(sign(-731f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) * _wgslsmith_f_op_f32(round(-397f))))), var_1.zzz, _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(48509u, u_input.e.x), u_input.e.x, u_input.e.x), 13028u, u_input.e.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(60604u, u_input.e.x ^ 21677u), 0u)));
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -625f);
    let var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(func_3().x);
}

