struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> i32 {
    let var_0 = select(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), vec3<bool>(true, !select(true, true, false), false), vec3<bool>(-1i < _wgslsmith_clamp_i32(2147483647i, 0i, 2147483647i), all(vec2<bool>(true, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), true || (~68142u <= global0.x));
    global1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.x), u_input.a.wz), ~1u), select(_wgslsmith_sub_vec2_u32(vec2<u32>(29056u, global0.x), global0.wy) << ((vec2<u32>(11518u, u_input.a.x) | u_input.a.yy) % vec2<u32>(32u)), countOneBits(firstLeadingBit(global0.zw)), select(var_0.yx, vec2<bool>(var_0.x, true), all(vec4<bool>(false, var_0.x, true, var_0.x)))));
    global1 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-183f + 341f), _wgslsmith_f_op_f32(min(-2756f, -240f)))), -924f)), 1533f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 667f) - _wgslsmith_f_op_f32(f32(-1f) * -511f)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1478f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(233f)))) - 1527f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(173f + 544f) + -1000f)) - _wgslsmith_f_op_f32(abs(-1000f))), 1f, _wgslsmith_f_op_f32(-916f - -917f));
    return _wgslsmith_mult_i32(i32(-1i) * -5890i, 1i);
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(select(19193i, -19343i, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(136f, 1379f), vec2<f32>(243f, 1045f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-214f, 1000f))))), firstTrailingBit(~countOneBits(vec3<i32>(752i, -13930i, 0i)))), u_input.a.zw);
    var var_1 = Struct_2(var_0.a, _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, var_0.b.x)), _wgslsmith_clamp_vec2_u32(var_0.b, global0.ww, global0.xz)) | ~_wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(0u, 15838u)), global0.yx));
    let var_2 = Struct_1(~reverseBits(_wgslsmith_mod_i32(var_0.a.c.x ^ 2147483647i, var_0.a.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.x, var_0.a.b.x)), -var_1.a.c >> (u_input.a.wwx % vec3<u32>(32u)));
    var var_3 = var_0.a;
    return _wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(sign(var_3.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.b.x - -195f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b.x) * -186f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1348f)) - 594f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, var_2.b.x, 878f, 1568f))) * vec4<f32>(var_3.b.x, -1227f, -598f, 1f)))));
}

fn func_2() -> f32 {
    let var_0 = true;
    let var_1 = Struct_4(!vec3<bool>(var_0, global0.x > ~0u, select(true, var_0, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1630f, 2117f, 444f, 1478f)) - vec4<f32>(777f, 2109f, 631f, -1217f)), vec4<bool>(true, !var_0, var_0, any(vec4<bool>(false, var_0, var_0, var_0)))))), var_0, u_input.a.x, Struct_1(-2147483647i, vec2<f32>(-1387f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(719f + -849f), _wgslsmith_f_op_f32(round(1222f))))), vec3<i32>(4242i, -abs(3452i), ~select(-47054i, -2147483647i, var_0))));
    global0 = u_input.a;
    let var_2 = reverseBits(~abs(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(0i, -1i, var_1.e.a, 8118i), vec4<i32>(-1i, 16559i, var_1.e.c.x, var_1.e.c.x), true), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.e.c.x, var_1.e.c.x, var_1.e.c.x, 0i), vec4<i32>(-2147483647i, -1i, 0i, var_1.e.a), vec4<i32>(var_1.e.c.x, -2147483647i, var_1.e.a, var_1.e.c.x)), vec4<i32>(8405i, var_1.e.a, var_1.e.c.x, 22212i) ^ vec4<i32>(var_1.e.c.x, -23693i, -74735i, 28929i))));
    global0 = u_input.a;
    return 442f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_u32(u_input.a, ~u_input.a);
    var var_0 = Struct_1(func_1(), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-487f, _wgslsmith_f_op_f32(-304f * 648f))), _wgslsmith_f_op_f32(func_2())), 1f), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(1i, 36545i), select(-2147483647i, -2147483647i, true), 1i) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 30926u), u_input.a.zzz) % vec3<u32>(32u)), -reverseBits(vec3<i32>(1i, 1432i, 2147483647i)) << (u_input.a.yxy % vec3<u32>(32u))));
    var var_1 = vec2<bool>(-753f <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(false, true, true)))));
    let var_2 = Struct_1(select(var_0.a, select(var_0.c.x, countOneBits(abs(0i)), (var_0.b.x != 839f) == (var_0.b.x >= 1000f)), var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3()).ww), abs(vec3<i32>(select(33753i, var_0.c.x, true), -var_0.a, max(var_0.c.x, var_0.c.x))) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 5331u) << ((global0.yyw & vec3<u32>(1u, 59386u, 1u)) % vec3<u32>(32u)), ~select(u_input.a.yww, global0.zxz, true)) % vec3<u32>(32u)));
    global1 = ~(~abs(~1u));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, reverseBits(~vec4<i32>(var_0.a >> (u_input.a.x % 32u), ~(-1i), ~40945i, var_2.c.x & 2147483647i)), select(var_2.c.xz, var_0.c.yz, !vec2<bool>(all(vec4<bool>(var_1.x, false, var_1.x, false)), false & var_1.x)), ~max(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global0.x, 6376u), _wgslsmith_add_vec3_u32(global0.wzz, vec3<u32>(1u, 0u, 0u))), 4294967295u), _wgslsmith_f_op_vec4_f32(func_3()).x);
}

