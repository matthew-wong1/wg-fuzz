struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_5 {
    let var_0 = u_input.a.x;
    let var_1 = max(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~select(vec4<i32>(u_input.a.x, 52027i, u_input.a.x, 20175i), vec4<i32>(0i, var_0, var_0, var_0), vec4<bool>(false, true, true, false)), vec4<i32>(abs(var_0), reverseBits(var_0), _wgslsmith_div_i32(var_0, u_input.a.x), u_input.a.x)), -_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, var_0, 0i, var_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, var_0, var_0)))), var_0);
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1685f, 567f, -1069f, 520f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(979f, -1387f, 2143f, 1000f), vec4<f32>(2121f, -622f, -1000f, -1000f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2608f, -1952f, -1000f, 1746f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-456f, 870f, 288f, 1727f)))) - vec4<f32>(-527f, _wgslsmith_f_op_f32(select(-784f, 649f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_f_op_f32(-121f + -1000f))))));
    let var_4 = -var_1;
    return Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -122f, 499f)), var_2.x), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.x, var_3.x, -2254f, var_3.x))))), ~var_2.x), ~(var_2.x | (4294967295u | u_input.b.x)), abs(~(vec3<u32>(83897u, 17619u, var_2.x) | vec3<u32>(100155u, 1u, 4294967295u)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    let var_0 = Struct_3(select(!vec2<bool>(arg_1, any(vec3<bool>(arg_1, arg_1, false))), !(!select(vec2<bool>(false, arg_1), vec2<bool>(false, false), false)), arg_1));
    return ~1u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(1049f - arg_2.x);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))));
    var var_1 = !(_wgslsmith_sub_u32(~6160u | func_2().a.d.x, arg_1) == ~31771u);
    return 0i;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_4(vec2<bool>(!select(all(vec2<bool>(true, false)), all(vec2<bool>(false, false)), u_input.a.x <= arg_1.x), false), arg_1 | max(arg_1, ~(vec2<i32>(arg_1.x, arg_1.x) >> (u_input.b % vec2<u32>(32u)))));
    let var_1 = func_2();
    var var_2 = vec3<u32>(select(~_wgslsmith_add_u32(var_1.a.d.x, arg_3.x), arg_3.x >> (~var_1.a.b.b % 32u), var_0.a.x), ~63677u, 31625u) >> (vec3<u32>(arg_3.x, 1u, 18240u) % vec3<u32>(32u));
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(func_4(true, ~func_3(vec2<u32>(arg_3.x, 90440u), var_0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.a.x, -541f)) - _wgslsmith_f_op_vec2_f32(-arg_0.wy))), max(abs(_wgslsmith_div_i32(-1i, var_0.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -19628i, u_input.a.x), u_input.a) | -67616i)), arg_1);
    var_2 = ~vec3<u32>(45214u, var_1.a.a.b, min(1u, ~(~var_1.a.a.b)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1546f, var_1.a.b.a.x, arg_2, 474f))) + vec4<f32>(var_1.a.a.a.x, arg_2, -999f, arg_2)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-713f, arg_0.x, arg_2, arg_2))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.b.a.x, arg_2) + arg_0.x), _wgslsmith_f_op_f32(select(func_2().a.b.a.x, func_2().a.b.a.x, true)), _wgslsmith_f_op_f32(sign(arg_0.x)), arg_2)), max(u_input.b.x, ~_wgslsmith_clamp_u32(arg_3.x, 6887u, arg_3.x)) | ~1u);
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_4(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(true, true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), select(vec2<bool>(true, all(vec3<bool>(false, false, true))), vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, false))))), max(countOneBits(_wgslsmith_clamp_vec2_i32(-u_input.a.xz, vec2<i32>(30999i, -48160i), _wgslsmith_mod_vec2_i32(u_input.a.zx, vec2<i32>(2147483647i, 1i)))), u_input.a.xx));
    var var_1 = _wgslsmith_add_vec3_i32(u_input.a, u_input.a);
    var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x)), 335f)));
    let var_3 = Struct_3(vec2<bool>(!var_0.a.x, select(var_0.a.x, !all(vec2<bool>(true, var_0.a.x)), _wgslsmith_f_op_f32(max(-125f, arg_2.a.x)) <= _wgslsmith_f_op_f32(abs(arg_1.x)))));
    return vec3<bool>(true, var_3.a.x & var_0.a.x, var_3.a.x);
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_5 {
    var var_0 = Struct_3(!select(vec2<bool>(any(vec3<bool>(arg_2.a.x, arg_2.a.x, arg_3.x)), arg_3.x), func_5(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_1.a, func_1(vec4<f32>(arg_1.a.x, 536f, arg_1.a.x, arg_1.a.x), u_input.a.yz, arg_1.a.x, vec4<u32>(arg_1.b, u_input.b.x, u_input.b.x, 22775u))).yz, select(arg_2.a, arg_3.zx, func_5(-1104f, arg_1.a, arg_1).yx)));
    var_0 = Struct_3(vec2<bool>(all(arg_3), arg_3.x));
    var_0 = Struct_3(vec2<bool>(true, true));
    var var_1 = Struct_5(func_2().a);
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2234f))) + _wgslsmith_f_op_f32(round(func_2().a.a.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.a.a.a.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.a.b.a.x, -294f)))), ~4294967295u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-123f, 1494f, -169f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(937f, -948f, 182f) + vec3<f32>(-397f, -871f, 2605f)), _wgslsmith_div_vec3_f32(vec3<f32>(-649f, 1745f, -1249f), vec3<f32>(-669f, -351f, 2138f))))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1729f, 2033f, 1000f, 1145f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-539f, 2183f, 314f, 226f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(965f, -553f, 461f, 1374f))))), u_input.b.x), Struct_4(select(vec2<bool>(true, all(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec2<bool>(true, true))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, 17038i)), vec2<i32>(0i, -18015i)), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -23036i), vec2<i32>(u_input.a.x, u_input.a.x)))), select(vec3<bool>(true, true, true), func_5(-525f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(411f, 110f, 1711f, 671f)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1318f, -402f, -1000f, -664f) + vec4<f32>(-1897f, -768f, 1776f, 1277f)), select(vec2<i32>(u_input.a.x, -65279i), u_input.a.yz, vec2<bool>(true, true)), _wgslsmith_f_op_f32(483f - 311f), ~vec4<u32>(4294967295u, u_input.b.x, 0u, 4294967295u))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    var var_1 = !(select(all(vec2<bool>(false, false)), true, true) || true) & true;
    var_1 = true;
    var_1 = select(select(any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), true)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.a.a.x, var_0.a.b.a.x))), var_0.a.b.a, Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a.a.a + vec4<f32>(var_0.a.a.a.x, var_0.a.b.a.x, 1141f, var_0.a.a.a.x)), var_0.a.b.b ^ 10822u)).x, true), true, all(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(exp2(var_0.a.b.a.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, func_2().a.b.a.x, _wgslsmith_f_op_f32(round(var_0.a.a.a.x))));
    let var_4 = vec4<i32>(-u_input.a.x, -1i, ~_wgslsmith_mult_i32(8666i, 12410i), min(37750i, select(3589i, 1i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.xx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -1893f)) - _wgslsmith_f_op_vec2_f32(var_3.yz + var_0.a.b.a.yx))), ~func_2().a.d.x, -111f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_div_f32(283f, _wgslsmith_f_op_f32(-var_3.x)))));
}

