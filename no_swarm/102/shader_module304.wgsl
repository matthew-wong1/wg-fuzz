struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: array<vec3<i32>, 7>;

var<private> global1: f32 = -264f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(603f, -389f)) * vec2<f32>(-2732f, -541f))))));
    var var_1 = vec2<i32>(-23604i, _wgslsmith_dot_vec2_i32(u_input.d.yy, u_input.d.xz));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-822f * -462f)));
    var var_3 = vec4<i32>(abs(-(~(-25375i))), -countOneBits(max(select(-11250i, -35962i, true), min(58028i, -1301i))), -_wgslsmith_mult_i32(18314i, ~select(0i, var_1.x, true)), i32(-1i) * -34280i);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1912f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(600f - var_2))))), _wgslsmith_f_op_f32(-var_2), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(2070f, 1328f, -304f) - vec3<f32>(var_0.x, -1000f, var_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1343f, var_0.x, 1294f) + vec3<f32>(var_0.x, 1251f, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -2139f, var_0.x)) + vec3<f32>(_wgslsmith_f_op_f32(599f - 170f), -1382f, _wgslsmith_f_op_f32(max(var_2, -1170f))))), min(var_3.x & firstTrailingBit(u_input.a.x), var_3.x) < ~(~_wgslsmith_clamp_i32(var_1.x, var_3.x, 51632i)));
    return vec3<bool>(var_4.d, select(var_4.d, true == var_4.d, firstLeadingBit(u_input.c) < countOneBits(4571u)), any(select(select(select(vec3<bool>(var_4.d, true, false), vec3<bool>(true, false, var_4.d), true), vec3<bool>(true, true, var_4.d), any(vec4<bool>(false, false, var_4.d, true))), !vec3<bool>(true, false, var_4.d), !(var_3.x == var_1.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(109904u, 6879u), ~u_input.b.yy), ~(~u_input.b.x)));
    let var_1 = Struct_1(1661f, 1984f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1264f, -1643f, 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(744f, -447f, -1300f), vec3<f32>(-1649f, 134f, 1746f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, -1000f, -290f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-422f, -1000f, 931f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-753f, 1426f, 851f))))), !(any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))) || all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_2 = !(!vec2<bool>(true, var_1.d));
    var_0 = ~_wgslsmith_clamp_vec2_u32(u_input.b.yx, u_input.b.zz, reverseBits(u_input.b.xz & _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(37329u, 71113u))));
    var var_3 = !func_3();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f + 284f)), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-598f)) - _wgslsmith_f_op_f32(704f - _wgslsmith_f_op_f32(var_1.a + var_1.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(var_1.c, var_1.c, vec3<bool>(var_2.x, var_1.d, true))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)))), true);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2();
    var var_1 = firstTrailingBit(-abs(abs(vec4<i32>(0i, 0i, u_input.d.x, 0i)))) << (vec4<u32>(0u, ~(4294967295u | select(1u, 1u, true)), 0u, u_input.c) % vec4<u32>(32u));
    return StorageBuffer(9130i, vec4<u32>(u_input.c, u_input.b.x, ~(~u_input.c), u_input.b.x) | ~vec4<u32>(u_input.c ^ u_input.c, 0u, 4294967295u, u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1f, var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.b * var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a) + _wgslsmith_f_op_f32(-var_0.b))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), var_0.a), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(380f, var_0.c.x), -332f)), -1784f)), var_1.x, ~_wgslsmith_sub_u32(u_input.c, abs(min(19820u, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-2147483647i);
    var var_1 = _wgslsmith_add_vec2_u32(u_input.b.zy & vec2<u32>(abs(u_input.c), 4294967295u), u_input.b.zy);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-519f))))), -842f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1396f, 1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1085f))))));
    var var_3 = 1i;
    let var_4 = vec4<f32>(1168f, _wgslsmith_f_op_f32(-var_2.x), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(437f))));
    let var_5 = min((_wgslsmith_sub_i32(101211i, _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, 0i)) << (countOneBits(firstLeadingBit(38318u)) % 32u)) & u_input.a.x, _wgslsmith_mod_i32(-_wgslsmith_div_i32(u_input.d.x, reverseBits(u_input.a.x)), countOneBits(_wgslsmith_dot_vec2_i32(u_input.a.yy | vec2<i32>(50770i, u_input.a.x), u_input.d.zz))));
    let x = u_input.a;
    s_output = func_1();
}

