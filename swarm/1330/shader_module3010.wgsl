struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<i32> = vec2<i32>(-1i, i32(-2147483648));

var<private> global2: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_add_vec2_u32(arg_0.zw, reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(6141u, arg_1), ~arg_0.xz)));
    let var_1 = Struct_1(-vec3<i32>(1i, -57113i, global1.x));
    var var_2 = firstTrailingBit(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1, ~47651u, ~1u), arg_1), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.www, arg_0.wwx), ~arg_0.xzx), max(0u, var_0.x))));
    global2 = array<vec4<bool>, 5>();
    global2 = array<vec4<bool>, 5>();
    return select(vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), select(!select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), true), !select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true), vec3<bool>(all(vec4<bool>(false, false, true, false)), true == any(vec2<bool>(true, true)), true)), vec3<bool>(true, all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true), true)), false));
}

fn func_2(arg_0: f32) -> vec3<f32> {
    let var_0 = Struct_3(any(func_3(~abs(vec4<u32>(15766u, 4294967295u, 13112u, 5501u)), ~(~14348u))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 296f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 899f))), true)))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(72193u, 71565u, 1u, 4294967295u)), max(vec4<u32>(0u, 14882u, 4294967295u, 4294967295u), vec4<u32>(4632u, 43490u, 24773u, 1u))), vec4<u32>(firstTrailingBit(44932u), 1u, reverseBits(1u), 0u)), ~vec4<u32>(max(1u, 15363u), min(32488u, 4294967295u), firstTrailingBit(0u), 0u)));
    let var_1 = Struct_1(-u_input.d);
    let var_2 = select(~var_0.c, _wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(17590u, var_0.c, 16584u, 1u))), vec4<u32>(reverseBits(var_0.c) & _wgslsmith_add_u32(1u, var_0.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, var_0.c), vec2<u32>(var_0.c, var_0.c)), ~0u ^ var_0.c, var_0.c)), var_0.a);
    var var_3 = vec3<u32>(abs(319u) ^ var_0.c, min(1u, 88696u), 16827u);
    let var_4 = -(select(vec4<i32>(-584i, -54012i, 17806i, -50553i) << (vec4<u32>(var_3.x, var_3.x, var_2, var_0.c) % vec4<u32>(32u)), abs(vec4<i32>(u_input.d.x, global1.x, u_input.d.x, global1.x)), func_3(vec4<u32>(var_0.c, 0u, 0u, 45445u), var_3.x).x) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, 56949u, var_2, 20854u), vec4<u32>(0u, 1u, var_2, var_3.x)) % vec4<u32>(32u))) << (vec4<u32>(1u, _wgslsmith_add_u32(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(var_3.x, 3088u), 0u)), (0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(1098u, var_2), vec2<u32>(30975u, 50497u)) % 32u)) & ((4294967295u | var_0.c) & 1u), _wgslsmith_clamp_u32(1u, var_3.x << (~var_0.c % 32u), abs(firstTrailingBit(var_2)))) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 246f, var_0.b.x)))) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0, 122f)), _wgslsmith_f_op_f32(select(-1821f, -1107f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1522f - 886f)), -685f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * _wgslsmith_f_op_f32(-arg_0)), -2425f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(256f)), 186f, -226f))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(arg_0 + -2513f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 130f, 1499f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(var_0 - var_0);
    let var_2 = Struct_3(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_1.x)), 1837f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xz * var_1.yy) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), _wgslsmith_div_vec2_f32(var_0.xy, vec2<f32>(var_0.x, 594f)), vec2<bool>(true, true))))), 1u);
    var var_3 = Struct_2(Struct_1(vec3<i32>(1i, global1.x, u_input.d.x)));
    let var_4 = all(func_3(min(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(var_2.c, var_2.c, var_2.c, var_2.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c, 18112u, 0u, 0u), vec4<u32>(var_2.c, 1u, var_2.c, 16310u)), vec4<u32>(1u, 10753u, 59987u, 4294967295u)), vec4<u32>(22716u, reverseBits(0u), 1u, var_2.c | 4294967295u)), (1u ^ ~var_2.c) >> (~countOneBits(18276u) % 32u)));
    return Struct_1(vec3<i32>((~global1.x | -u_input.b.x) ^ 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -1i, var_3.a.a.x, var_3.a.a.x), vec4<i32>(global1.x, global1.x, u_input.c, 1i)), global1.x << (var_2.c % 32u), u_input.a.x, global1.x << (var_2.c % 32u)), vec4<i32>(~(-13622i), 70049i, ~global1.x, i32(-1i) * -2147483647i)), ~max(-1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(global1.x, global1.x | ~u_input.b.x);
    let var_0 = Struct_2(func_1(-837f));
    let var_1 = 2147483647i;
    global2 = array<vec4<bool>, 5>();
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(931f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1254f))).x)), -1000f, true));
    var var_3 = var_0.a;
    let var_4 = Struct_3(false, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-835f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1000f, 102f, true)), 1322f)) * 410f)), 4021u);
    global2 = array<vec4<bool>, 5>();
    var var_5 = Struct_2(func_1(_wgslsmith_f_op_f32(step(2005f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1013f) - _wgslsmith_f_op_f32(-var_4.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_4.b.x + _wgslsmith_div_f32(904f, _wgslsmith_f_op_f32(round(-566f)))), -1455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.b.x + -987f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1006f)), var_4.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.b.x, -824f, -170f), vec3<f32>(var_4.b.x, var_4.b.x, -1928f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1057f, var_4.b.x, 1070f))))), _wgslsmith_f_op_f32(var_4.b.x + _wgslsmith_f_op_f32(var_4.b.x + _wgslsmith_f_op_f32(263f + _wgslsmith_f_op_f32(var_4.b.x * -1166f)))));
}

