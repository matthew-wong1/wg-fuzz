struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    return vec4<bool>(true, true, true, true);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_mod_u32(~abs(firstLeadingBit(1u)), firstLeadingBit(0u));
    let var_1 = arg_0.x;
    let var_2 = Struct_1(u_input.c.x, 0i, func_3(), ~u_input.c.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.a.x, -1000f))) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.x, 1375f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1.a.xy * vec2<f32>(arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1355f, arg_1.a.x)))) + vec2<f32>(-1896f, arg_1.a.x))));
    let var_4 = ~(var_0 | _wgslsmith_mod_u32(firstTrailingBit(var_0), var_2.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-719f * var_3.x))) - var_3.x))));
}

fn func_1() -> Struct_3 {
    let var_0 = select(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, true))), true || (true | !any(vec2<bool>(true, true))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-899f, _wgslsmith_f_op_f32(floor(2716f)), 902f, _wgslsmith_f_op_f32(func_2(vec3<bool>(var_0, var_0, var_0), Struct_3(vec4<f32>(-278f, -506f, -1116f, 2065f))))))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<u32>) -> f32 {
    let var_0 = Struct_2(!select(vec2<bool>(u_input.b.x > -9645i, select(arg_0, arg_0, false)), !vec2<bool>(false, arg_0), vec2<bool>(all(vec4<bool>(false, false, true, arg_0)), all(vec2<bool>(arg_0, arg_0)))), _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(3992u), _wgslsmith_div_u32(arg_3.x, 5546u), ~85297u, ~49180u), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, 0u, arg_3.x), u_input.c))) >> (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_3.x, u_input.a.x, arg_3.x), u_input.c), _wgslsmith_div_u32(32595u, 91917u)), ~30513u, 69524u, 1u) % vec4<u32>(32u)), Struct_1(~_wgslsmith_add_u32(64697u, arg_3.x << (arg_3.x % 32u)), reverseBits(u_input.e.x), func_3(), 4294967295u));
    let var_1 = u_input.d;
    let var_2 = select(select(!select(vec2<bool>(false, false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, false)), func_3().wx, !(!var_0.a.x)), vec2<bool>(arg_0, arg_0), var_0.a);
    var var_3 = _wgslsmith_dot_vec3_i32(u_input.d.zyy, ~max(u_input.e.yxx, var_1.yzy ^ u_input.e.yzz) & _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.e.www, ~vec3<i32>(u_input.b.x, var_0.c.b, 519i)), vec3<i32>(min(1i, var_1.x), u_input.e.x, 2147483647i)));
    let var_4 = arg_1.a.xw;
    return _wgslsmith_f_op_f32(f32(-1f) * -1200f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1152f - -1733f) * -1047f), _wgslsmith_f_op_f32(func_4(true, func_1(), Struct_3(vec4<f32>(-1000f, -585f, 1000f, 1277f)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 8469u), u_input.a)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1201f)));
    var var_1 = 1016f;
    var var_2 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1018f, _wgslsmith_f_op_f32(sign(-385f)), 392f, _wgslsmith_f_op_f32(func_4(false, Struct_3(vec4<f32>(var_0, var_0, var_0, var_0)), Struct_3(vec4<f32>(1846f, var_0, var_0, 1386f)), u_input.c.zw))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -125f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1524f, var_0, var_0, 1044f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -572f)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)))))));
    var_2 = func_1();
    var var_3 = firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.c.zyx & (~u_input.c.zzw >> (vec3<u32>(u_input.a.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, u_input.c.x), vec3<u32>(33499u, u_input.c.x, u_input.c.x), vec3<u32>(0u, 1u, 0u) & vec3<u32>(1u, 0u, u_input.c.x)) << (u_input.c.zzw % vec3<u32>(32u))));
    var var_4 = var_3.x;
    let var_5 = vec4<i32>(u_input.b.x, reverseBits(min(u_input.d.x, u_input.d.x)), 1i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~u_input.a.x), ~(_wgslsmith_dot_vec3_u32(u_input.c.yxx, u_input.c.wzw) ^ 129808u), ~_wgslsmith_div_u32(firstTrailingBit(13946u), var_3.x), var_3.x), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c.xzz, vec3<u32>(var_3.x, var_3.x, 1u)) & ~(~u_input.c.wyz), countOneBits(~(~u_input.c.wwz))), var_5.x, abs(vec2<u32>(u_input.a.x, 72788u) | ~(~vec2<u32>(19216u, var_3.x))), vec2<u32>(~(~18147u >> (var_3.x % 32u)), _wgslsmith_add_u32(u_input.a.x << ((u_input.a.x << (var_3.x % 32u)) % 32u), 0u)));
}

