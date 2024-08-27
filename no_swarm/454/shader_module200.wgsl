struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-66908i, 3495i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, -51301i), vec2<i32>(-2507i, -1i), vec2<i32>(-4191i, 41958i), vec2<i32>(i32(-2147483648), -16773i), vec2<i32>(i32(-2147483648), 22623i), vec2<i32>(2147483647i, 5332i), vec2<i32>(1i, -10663i), vec2<i32>(5599i, 9242i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, 59234i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(11418i, 1i), vec2<i32>(-12138i, -12928i), vec2<i32>(0i, 50646i), vec2<i32>(43966i, -27848i), vec2<i32>(-32295i, -8649i), vec2<i32>(69423i, 0i), vec2<i32>(-1i, 1287i), vec2<i32>(2816i, 2147483647i), vec2<i32>(-37570i, -12862i), vec2<i32>(35516i, 7190i), vec2<i32>(i32(-2147483648), 33445i), vec2<i32>(37651i, -55672i), vec2<i32>(23431i, 0i), vec2<i32>(-8676i, 1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = arg_2.x;
    var var_1 = any(select(select(vec3<bool>(true, true, true), !vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(any(vec2<bool>(arg_0, true)), u_input.a.x <= 1u, true), arg_0)) && !(1u > u_input.a.x);
    global0 = ~(-1i);
    var var_2 = Struct_1(arg_1);
    global1 = array<vec2<i32>, 29>();
    return Struct_2(false, vec4<i32>(-13919i >> (u_input.a.x % 32u), ~1i, _wgslsmith_div_i32(-(i32(-1i) * -101i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-9884i, 2147483647i), vec2<i32>(0i, 1i))), 10500i), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-271f, arg_1.x, arg_2.x), vec3<f32>(arg_2.x, arg_1.x, arg_1.x)))), var_2.a)));
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-360f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(628f * 926f) - _wgslsmith_f_op_f32(532f + -555f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-382f)), _wgslsmith_f_op_f32(f32(-1f) * -510f))) + -383f)));
    return func_2(select(var_0, !select(false, all(vec2<bool>(false, true)), true), var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x + -551f), _wgslsmith_f_op_f32(max(2827f, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -2135f)))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(floor(-255f))) + var_1.x)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<f32> {
    let var_0 = ~(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(arg_0.xy), arg_0.yz), ~arg_0.xy));
    global0 = 2147483647i;
    var var_1 = vec3<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), select(true, true, true))), !all(vec4<bool>(true, true, true, true)), !(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    let var_2 = true;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-846f)), _wgslsmith_div_f32(1443f, -596f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1178f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(683f - 958f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-148f * -1564f) + _wgslsmith_f_op_f32(floor(-808f))), func_1().c.a.x, _wgslsmith_f_op_f32(-541f * -1191f)), !(!(!var_2))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, -908f, -333f) + vec4<f32>(arg_0.a.x, 908f, arg_2.x, 758f)), vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -971f)))))));
    let var_1 = Struct_3(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true), func_1(), !((-1i != _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(arg_1, 29u)], vec2<i32>(30868i, -7648i))) & all(vec4<bool>(true, true, true, true))));
    let var_2 = vec4<u32>(max(u_input.a.x, reverseBits(_wgslsmith_clamp_u32(1u, arg_1 << (4294967295u % 32u), arg_1))), 33618u, 1u, _wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(arg_1, 1u), 0u));
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.c.a.x * var_3.b.c.a.x))))));
    return !(!(!(2019f >= var_4)) != var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 29>();
    let var_0 = Struct_3(vec2<bool>(firstTrailingBit(~12098u) != u_input.a.x, all(vec4<bool>(true, true, true, true))), func_1(), !(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)) > 1u));
    var var_1 = vec2<bool>(true, any(!select(vec3<bool>(false, var_0.a.x, var_0.b.a), vec3<bool>(var_0.c, true, false), vec3<bool>(var_0.a.x, var_0.b.a, false))) != func_1().a);
    let var_2 = vec4<bool>(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), _wgslsmith_f_op_vec3_f32(trunc(var_0.b.c.a)), any(vec4<bool>(var_1.x, var_0.a.x, var_1.x, false))))), _wgslsmith_sub_u32(abs(u_input.a.x), _wgslsmith_div_u32(~0u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.a.x, var_0.b.c.a.x, 2143f))), func_2(false, var_0.b.c.a, var_0.b.c.a.zz).a, false, var_0.b.a);
    var_1 = !var_2.wx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(max(reverseBits(u_input.a.x), u_input.a.x), 4294967295u, u_input.a.x))).zz, ~1u, _wgslsmith_add_i32(-10987i, abs(_wgslsmith_dot_vec4_i32(var_0.b.b << (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u) % vec4<u32>(32u)), vec4<i32>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x, var_0.b.b.x)))), abs(vec4<u32>(u_input.a.x, min(u_input.a.x, ~1075u), 1u, countOneBits(u_input.a.x))));
}

