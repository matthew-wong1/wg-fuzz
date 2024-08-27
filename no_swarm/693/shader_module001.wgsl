struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<bool>(false, true, false), Struct_1(2147483647i)), Struct_2(vec3<bool>(true, true, false), Struct_1(-11441i)), Struct_2(vec3<bool>(true, true, false), Struct_1(1i)), Struct_2(vec3<bool>(false, false, true), Struct_1(i32(-2147483648))), Struct_2(vec3<bool>(false, true, false), Struct_1(-1i)), Struct_2(vec3<bool>(true, false, false), Struct_1(6064i)), Struct_2(vec3<bool>(true, false, false), Struct_1(9691i)), Struct_2(vec3<bool>(true, true, true), Struct_1(2147483647i)), Struct_2(vec3<bool>(false, true, true), Struct_1(0i)), Struct_2(vec3<bool>(false, true, true), Struct_1(1i)), Struct_2(vec3<bool>(false, false, true), Struct_1(40992i)), Struct_2(vec3<bool>(false, true, true), Struct_1(2147483647i)), Struct_2(vec3<bool>(false, false, true), Struct_1(39091i)), Struct_2(vec3<bool>(false, true, false), Struct_1(i32(-2147483648))), Struct_2(vec3<bool>(true, false, true), Struct_1(1i)), Struct_2(vec3<bool>(true, true, false), Struct_1(0i)), Struct_2(vec3<bool>(true, true, false), Struct_1(-9564i)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<Struct_2, 17>();
    let var_0 = Struct_3(select(!(!vec4<bool>(false, arg_0.x, true, false)), vec4<bool>((u_input.b.x >> (0u % 32u)) <= ~0u, any(vec2<bool>(true, arg_0.x)), arg_0.x, arg_0.x), select(vec4<bool>(true, true, true, select(false, arg_0.x, false)), vec4<bool>(all(vec3<bool>(true, arg_0.x, false)), false, arg_0.x, true), select(vec4<bool>(true, arg_0.x, true, arg_0.x), select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(true, arg_0.x, false, false), vec4<bool>(true, arg_0.x, false, true)), false))), Struct_2(!vec3<bool>(!arg_0.x, any(vec4<bool>(false, false, arg_0.x, false)), true), Struct_1(2147483647i & u_input.d.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, -64110i), vec2<i32>(-1i, select(-1i, 2147483647i, arg_0.x)) << (vec2<u32>(~1u, abs(u_input.e)) % vec2<u32>(32u))), -346f);
    global0 = array<Struct_2, 17>();
    let var_1 = Struct_1(55752i);
    let var_2 = Struct_3(!vec4<bool>(true, all(!vec4<bool>(true, arg_0.x, true, true)), !(u_input.a.x >= var_1.a), true), var_0.b, ~countOneBits(1i) << (u_input.c.x % 32u), _wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -426f))))));
    return vec2<bool>(all(var_2.b.a.xz), false);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    let var_0 = Struct_2(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))), all(select(vec2<bool>(false, true), func_3(vec2<bool>(false, true), Struct_1(arg_2.x)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))))), Struct_1(arg_2.x));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -312f)) - arg_3), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * arg_3) + arg_3)))), _wgslsmith_f_op_f32(abs(-830f)));
    return u_input.e;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> i32 {
    global0 = array<Struct_2, 17>();
    let var_0 = true;
    let var_1 = select(true, arg_2, all(vec3<bool>(u_input.b.x == func_2(u_input.a.x, 413f, u_input.a.zxy, 1061f), _wgslsmith_clamp_i32(0i, u_input.d.x, -41727i) < ~2628i, arg_2)));
    let var_2 = -(u_input.d.zw >> (vec2<u32>(~(u_input.b.x << (0u % 32u)), ~34936u ^ (0u << (u_input.b.x % 32u))) % vec2<u32>(32u)));
    global0 = array<Struct_2, 17>();
    return 0i | _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-firstTrailingBit(2147483647i), var_2.x & 0i, u_input.d.x), ~1i, ~(~(-47658i)));
}

fn func_4(arg_0: i32, arg_1: bool) -> vec3<f32> {
    let var_0 = vec2<bool>(true, any(vec2<bool>(arg_1, arg_1)));
    global0 = array<Struct_2, 17>();
    var var_1 = Struct_3(!select(select(select(vec4<bool>(var_0.x, var_0.x, arg_1, true), vec4<bool>(arg_1, var_0.x, var_0.x, var_0.x), arg_1), vec4<bool>(false, arg_1, true, true), !arg_1), select(vec4<bool>(arg_1, var_0.x, arg_1, false), !vec4<bool>(var_0.x, false, true, arg_1), vec4<bool>(true, true, arg_1, true)), !(!vec4<bool>(arg_1, arg_1, var_0.x, var_0.x))), Struct_2(select(!select(vec3<bool>(false, false, arg_1), vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, true, true)), select(!vec3<bool>(var_0.x, arg_1, var_0.x), vec3<bool>(true, var_0.x, true), select(vec3<bool>(arg_1, arg_1, var_0.x), vec3<bool>(false, false, true), arg_1)), true), Struct_1(reverseBits(-1i))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(2147483647i, 43598i), u_input.a.yy), firstTrailingBit(reverseBits(u_input.a.xz))) << (u_input.e % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-682f, -648f)))));
    global0 = array<Struct_2, 17>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d, 116f, 1000f), vec3<f32>(var_1.d, 1322f, 841f), var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_1.d, var_1.d)))))));
    return _wgslsmith_f_op_vec3_f32(var_2 * var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-569f * 1120f), 1623f, _wgslsmith_f_op_f32(-1484f - 192f)), vec3<f32>(_wgslsmith_f_op_f32(min(850f, 1196f)), 970f, _wgslsmith_f_op_f32(-1193f - 1011f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1058f, -865f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1055f, -1000f, -254f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_1(-1000f, vec2<bool>(false, true), true, 0i) | abs(-51763i), all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))))));
    var var_1 = Struct_1(_wgslsmith_mult_i32(-(~u_input.a.x), _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(u_input.d.xz, u_input.a.wy, vec2<i32>(u_input.a.x, -54989i)), vec2<i32>(-2147483647i, u_input.d.x))));
    global0 = array<Struct_2, 17>();
    let var_2 = Struct_3(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_2(vec3<bool>(true, u_input.d.x >= select(-2147483647i, -1i, true), false), Struct_1(2147483647i)), max(reverseBits(1i), u_input.a.x), 1743f);
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-107f - -553f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -908f), _wgslsmith_f_op_f32(floor(782f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) - var_0.x) * var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_f32(var_2.d - var_2.d), var_2.b.a.yx, true, _wgslsmith_mod_i32(u_input.d.x, 1531i)), _wgslsmith_mod_vec2_i32(abs(~(u_input.d.zw & vec2<i32>(-1i, var_1.a))), u_input.d.wz));
}

