struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    return 723f;
}

fn func_3() -> i32 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1104f, -915f, -1651f)), _wgslsmith_div_vec3_f32(vec3<f32>(292f, 1000f, 1097f), vec3<f32>(380f, 559f, -1504f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(290f, 844f)), _wgslsmith_f_op_f32(floor(-121f)), -1863f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f) * _wgslsmith_f_op_f32(101f - _wgslsmith_div_f32(748f, 452f))), 467f, -790f)));
    let var_2 = Struct_2(u_input.e.x, _wgslsmith_add_u32(~abs(1u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(42003u, u_input.c.x), u_input.d.x >> (1u % 32u)), 4294967295u)), Struct_1(var_1.x, 643f, vec3<i32>(select(-u_input.a, u_input.e.x, var_0), -2147483647i, abs(u_input.e.x))));
    let var_3 = Struct_4(~(~u_input.c.zz), _wgslsmith_f_op_f32(-var_2.c.b), Struct_3(-var_2.c.c.xy, var_2, Struct_1(699f, _wgslsmith_f_op_f32(select(1036f, 185f, select(var_0, true, var_0))), -var_2.c.c), _wgslsmith_mult_i32(-var_2.a, 1i) >= firstTrailingBit(var_2.a & 0i)), Struct_1(var_1.x, var_1.x, -(~(-u_input.e))));
    let var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(77910u, _wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(18640u, 14529u, 58231u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b, var_2.b, var_3.c.b.b, u_input.b), vec4<u32>(4294967295u, u_input.c.x, 40257u, 4294967295u), vec4<u32>(var_3.a.x, 4294967295u, 1u, u_input.b)), select(vec4<bool>(false, var_0, true, false), vec4<bool>(false, true, true, true), vec4<bool>(var_3.c.d, false, true, var_3.c.d))), firstTrailingBit(~vec4<u32>(var_2.b, 0u, var_3.a.x, var_2.b))), 4294967295u | var_3.c.b.b), u_input.c);
    return abs(~(-24321i) | min(-_wgslsmith_dot_vec2_i32(vec2<i32>(20841i, var_3.d.c.x), vec2<i32>(5258i, 57369i)), var_3.d.c.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(23568u, u_input.d.x), u_input.b, min(max(4294967295u, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, 111068u), vec4<u32>(u_input.b, u_input.b, 65065u, u_input.c.x))))), vec3<u32>(~u_input.b, u_input.c.x, u_input.c.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -865f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)))));
    let var_2 = vec2<u32>(firstTrailingBit(var_0.x), 67923u);
    var var_3 = min(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 47217i, u_input.a, u_input.e.x) >> ((vec4<u32>(var_2.x, var_2.x, 25714u, u_input.c.x) >> (vec4<u32>(4294967295u, 4294967295u, var_2.x, 41842u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(select(vec4<i32>(-2147483647i, u_input.a, u_input.e.x, u_input.e.x), vec4<i32>(38118i, -2983i, -1i, 2147483647i), false), vec4<i32>(-45622i, u_input.e.x, u_input.a, -56774i) & vec4<i32>(2965i, u_input.a, u_input.a, -37135i), vec4<bool>(true, true, true, true))), max(abs(firstTrailingBit(vec4<i32>(u_input.a, u_input.e.x, 68201i, 2147483647i))), vec4<i32>(-31980i, func_3(), u_input.e.x, -65992i)), select(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.a, u_input.a, 1i), vec4<i32>(8670i, 21562i, -1i, u_input.e.x)), ~countOneBits(vec4<i32>(1i, -68701i, u_input.e.x, u_input.e.x)), vec4<bool>(true, true, true, any(vec4<bool>(true, true, false, true))))), abs(~(vec4<i32>(u_input.e.x, 44137i, u_input.a, -2147483647i) << (vec4<u32>(var_0.x, 0u, var_2.x, var_2.x) % vec4<u32>(32u)))) | _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a, ~u_input.a, u_input.a, -4312i), select(min(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-34834i, u_input.a, -7841i, 1i)), -vec4<i32>(u_input.a, u_input.a, 6005i, -30314i), var_1.x < arg_1)));
    let var_4 = Struct_3(var_3.xw, Struct_2(_wgslsmith_clamp_i32(var_3.x, select(-2147483647i, u_input.e.x, true), 47628i), select(~firstTrailingBit(0u), ~4294967295u, !(var_3.x != -1i)), Struct_1(arg_1, _wgslsmith_f_op_f32(-var_1.x), vec3<i32>(~(-1i), var_3.x, countOneBits(35145i)))), Struct_1(-294f, 1000f, -_wgslsmith_add_vec3_i32(abs(vec3<i32>(-22082i, -1559i, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_3.x, u_input.e.x), vec3<i32>(41653i, var_3.x, 0i)))), any(vec2<bool>(true, all(vec4<bool>(true, true, true, true)))));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1478f) + -828f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1329f + -1549f)))))));
    var var_1 = -(~u_input.a);
    var_1 = 1i;
    var var_2 = Struct_4(_wgslsmith_mult_vec2_u32(min(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 4294967295u), u_input.c.zy), vec2<u32>(firstLeadingBit(4294967295u), 18113u)), u_input.d.yz ^ countOneBits(~u_input.c.xx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-667f, -296f)))), _wgslsmith_f_op_f32(floor(-456f)), false))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1652f, -1868f) * vec2<f32>(-908f, 862f))) - vec2<f32>(-696f, -585f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-701f)))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2648f, 388f), vec2<f32>(1000f, 1744f), vec2<bool>(false, false))), vec2<f32>(-177f, 194f), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(210f, 1148f), vec2<f32>(1270f, 204f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1488f, 1732f) + 889f))).b.c);
    let x = u_input.a;
    s_output = StorageBuffer(max(4294967295u, 1u), _wgslsmith_mod_vec3_u32(u_input.c, ~_wgslsmith_div_vec3_u32(vec3<u32>(82830u, u_input.b, u_input.b), vec3<u32>(var_2.c.b.b, 42813u, u_input.d.x))));
}

