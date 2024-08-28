struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<i32> {
    let var_0 = select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), false), select(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), true), select(vec3<bool>(true, false, all(vec4<bool>(false, false, true, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), false), vec3<bool>(true, true, true)), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), any(vec3<bool>(true, select(true, true, true), true)));
    var var_1 = vec2<bool>(!var_0.x, all(!(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)))));
    var var_2 = vec2<i32>(i32(-1i) * -(i32(-1i) * -20335i), _wgslsmith_div_i32(u_input.a, min(firstTrailingBit(u_input.a), _wgslsmith_mult_i32(u_input.a, -11800i)) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-4116i, u_input.a)), vec2<i32>(-2147483647i, u_input.a))));
    let var_3 = !var_0;
    var_1 = var_0.zy;
    return (-countOneBits(~vec4<i32>(-3617i, u_input.a, u_input.a, -22543i)) & (vec4<i32>(abs(u_input.a), 4251i, 2147483647i, 1739i) >> (~firstLeadingBit(vec4<u32>(0u, 1u, 109698u, 6123u)) % vec4<u32>(32u)))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(24328u, 22598u), abs(0u), firstTrailingBit(1u), _wgslsmith_div_u32(6417u, 1u)), abs(select(vec4<u32>(70u, 80690u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 30475u, 0u), true)))) % vec4<u32>(32u));
}

fn func_2() -> f32 {
    var var_0 = Struct_4(_wgslsmith_mult_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(u_input.a, 788i), _wgslsmith_dot_vec3_i32(vec3<i32>(9972i, 2147483647i, 50780i), vec3<i32>(u_input.a, -1i, u_input.a)) ^ -13888i, u_input.a, u_input.a), abs(abs(func_3()))), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1295f * _wgslsmith_div_f32(1000f, 1000f)))));
    let var_1 = Struct_1(vec2<f32>(-504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * -307f)))), _wgslsmith_f_op_f32(exp2(var_0.c)), 45427u, vec4<bool>(!(!var_0.b), true | var_0.b, !(!(!var_0.b)), true), vec4<u32>(1u, 1u, 1u, 1u) | firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 66470u, 24141u, 60241u), vec4<u32>(52205u, 33224u, 1u, 1u))));
    var_0 = Struct_4(~min(~min(vec4<i32>(u_input.a, -23570i, 28668i, u_input.a), vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, 0i)), var_0.a), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-525f, var_0.c))))) - 1000f));
    let var_2 = 2147483647i;
    var_0 = Struct_4(firstLeadingBit(max(vec4<i32>(11822i, -2147483647i ^ var_2, -u_input.a, -2147483647i), _wgslsmith_add_vec4_i32(var_0.a, -vec4<i32>(var_0.a.x, 24047i, 33122i, var_0.a.x)))), select(1u <= abs(var_1.c >> (1u % 32u)), true, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1314f))));
    return -318f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec4<f32>) -> bool {
    let var_0 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-1292f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(656f)) * arg_0.b) + _wgslsmith_f_op_f32(min(1201f, _wgslsmith_f_op_f32(round(-880f)))))));
    let var_1 = !(!select(select(arg_0.d.xy, select(vec2<bool>(arg_0.d.x, true), vec2<bool>(arg_0.d.x, arg_2.b), arg_0.d.x), !arg_0.d.yz), select(vec2<bool>(arg_0.d.x, true), select(arg_0.d.zz, vec2<bool>(arg_2.b, true), arg_0.d.yy), arg_0.d.x & arg_2.b), select(all(vec4<bool>(arg_2.b, true, arg_0.d.x, true)), arg_2.b, true)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.xy, vec2<f32>(388f, arg_0.b)) * arg_0.a), true)), 164f, _wgslsmith_mod_u32(12156u, _wgslsmith_add_u32(arg_0.e.x, _wgslsmith_div_u32(4294967295u, arg_0.c))), vec4<bool>(_wgslsmith_f_op_f32(-arg_2.c) == _wgslsmith_f_op_f32(select(var_0.x, -259f, true)), !arg_2.b, true, var_1.x != all(vec4<bool>(arg_2.b, false, arg_0.d.x, arg_0.d.x))), ~max(vec4<u32>(38997u, arg_0.e.x, arg_0.e.x, 35923u), firstLeadingBit(vec4<u32>(73711u, arg_0.e.x, arg_0.e.x, 1u)))));
    let var_3 = ~_wgslsmith_mult_i32(-u_input.a, _wgslsmith_sub_i32(u_input.a, -2147483647i));
    var var_4 = _wgslsmith_div_vec4_i32(arg_2.a, _wgslsmith_sub_vec4_i32(-arg_2.a, -min(vec4<i32>(-12473i, arg_2.a.x, 1i, var_3) & arg_2.a, ~vec4<i32>(u_input.a, 59518i, -1i, -17223i))));
    return !all(select(var_1, vec2<bool>(false, var_1.x || arg_2.b), any(!vec4<bool>(true, true, false, var_1.x))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<i32>) -> bool {
    let var_0 = Struct_4(arg_2, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -263f))) - vec2<f32>(2556f, arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_0)))), arg_1.b.x, vec4<bool>(true, true, true, any(vec3<bool>(false, true, false))), firstTrailingBit(~vec4<u32>(arg_1.c.x, arg_1.b.x, arg_1.b.x, 0u))), vec4<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(1050f * 287f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1267f)) * _wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(func_2())), Struct_4(min(-arg_2, select(arg_2, vec4<i32>(arg_2.x, arg_3.x, arg_2.x, u_input.a), vec4<bool>(false, false, true, false))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), arg_0), vec4<f32>(_wgslsmith_f_op_f32(-169f + arg_0), arg_0, 1142f, 706f)), _wgslsmith_f_op_f32(-arg_0));
    let var_1 = arg_1;
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1336f + _wgslsmith_f_op_f32(sign(950f))))), -1047f), -313f, var_1.c.x, vec4<bool>(var_0.b, var_0.b, -u_input.a < arg_1.a, !all(vec3<bool>(false, false, var_0.b))), ~(~reverseBits(~vec4<u32>(77595u, var_1.b.x, arg_1.c.x, arg_1.c.x))));
    let var_3 = ~vec2<u32>(~firstLeadingBit(var_1.b.x), _wgslsmith_add_u32(~4294967295u, var_1.b.x) << (4294967295u % 32u));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(floor(122f)), _wgslsmith_f_op_f32(var_0.c + -1000f), var_0.c);
    return _wgslsmith_f_op_f32(238f + var_2.b) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -937f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = -545f;
    let var_2 = any(vec3<bool>(!all(vec3<bool>(false, var_0.x, true)), !(!func_1(-1382f, Struct_2(-25247i, vec2<u32>(16288u, 1u), vec3<u32>(4294967295u, 897u, 1u)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<i32>(0i, u_input.a))), var_0.x));
    var_0 = !select(!vec3<bool>(var_0.x, any(vec3<bool>(false, var_0.x, true)), var_2), select(!vec3<bool>(var_0.x, false, var_2), !select(vec3<bool>(false, true, var_2), vec3<bool>(true, false, var_0.x), true), vec3<bool>(select(var_2, false, var_0.x), select(var_0.x, true, var_2), var_0.x == true)), !(!vec3<bool>(true, true, var_2)));
    var_0 = !select(vec3<bool>(any(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_2, var_2, true, false), vec4<bool>(var_2, var_0.x, var_0.x, var_2))), false, !var_2), select(select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_2), var_0.x), vec3<bool>(all(vec4<bool>(false, true, true, false)), all(vec2<bool>(var_0.x, false)), false && var_2), false), select(vec3<bool>(false, true, var_2), !(!vec3<bool>(var_0.x, false, var_2)), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_2, var_0.x, var_0.x)), !vec3<bool>(false, true, var_0.x), !vec3<bool>(false, var_0.x, var_2))));
    var var_3 = Struct_2((1i >> (firstLeadingBit(~1u) % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a & 21893i, firstTrailingBit(33039i), u_input.a), abs(vec3<i32>(-3548i, u_input.a, -1813i))), ~vec2<u32>(1u, ~abs(4294967295u)), vec3<u32>(0u, _wgslsmith_div_u32(countOneBits(~72382u), 1u), ~4294967295u));
    var_0 = !vec3<bool>(!(!var_2), !all(vec4<bool>(false, false, var_2, true)), var_2);
    var_0 = !select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, select(false, var_0.x, var_0.x), var_2), var_0.x), !select(!vec3<bool>(var_0.x, var_0.x, var_2), !vec3<bool>(var_0.x, true, var_2), true), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f - var_1), var_1, -(vec2<i32>(1i, ~(-2147483647i)) | abs(abs(vec2<i32>(-16737i, u_input.a)))));
}

