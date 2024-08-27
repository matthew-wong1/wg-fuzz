struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_4(Struct_3(Struct_1(max(vec3<i32>(arg_1.a.x, 2147483647i, arg_1.a.x), vec3<i32>(-6483i, 19112i, arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-139f)))), abs(~countOneBits(arg_1.a.yy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1886f, 166f, arg_1.b, 339f), vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, 200f, 705f, -207f)), any(vec4<bool>(arg_0, arg_0, false, true)))))));
    let var_1 = -10634i;
    let var_2 = _wgslsmith_add_i32(var_1, arg_1.a.x) > (i32(-1i) * -3322i);
    let var_3 = Struct_4(var_0.a);
    var var_4 = true;
    return !vec2<bool>(!(!arg_0 & var_2), var_2);
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(-17067i, abs(u_input.b.x)) << (abs(u_input.d.x) % 32u), u_input.a.x << (u_input.d.x % 32u));
    var var_1 = !select(!vec2<bool>(true, !arg_0), !vec2<bool>(false, any(vec3<bool>(false, arg_0, arg_0))), vec2<bool>(arg_0, any(vec4<bool>(arg_0, true, arg_0, false))));
    let var_2 = u_input.a;
    var_1 = select(select(func_3(1i <= var_2.x, Struct_1(vec3<i32>(u_input.b.x, var_0.x, -2147483647i), 486f)), func_3(any(select(vec3<bool>(arg_0, false, false), vec3<bool>(var_1.x, true, var_1.x), var_1.x)), Struct_1(abs(var_2.yyz), _wgslsmith_f_op_f32(-373f - 1000f))), true), vec2<bool>(true, true), -(_wgslsmith_add_i32(2147483647i, var_2.x) | 1i) < var_2.x);
    var var_3 = Struct_3(Struct_1(abs(-_wgslsmith_clamp_vec3_i32(u_input.a.yxx, vec3<i32>(-8866i, var_0.x, u_input.a.x), u_input.a.yxw)), -1004f), ~(~(_wgslsmith_sub_vec2_i32(var_2.ww, vec2<i32>(var_0.x, u_input.a.x)) >> (abs(vec2<u32>(1u, 14179u)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1612f), _wgslsmith_f_op_f32(trunc(249f)), 458f, 1557f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1275f), _wgslsmith_f_op_f32(floor(212f)), _wgslsmith_f_op_f32(-250f - 282f), _wgslsmith_f_op_f32(ceil(821f))))));
    return _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.d.x, ~min(~u_input.d.x, _wgslsmith_div_u32(u_input.d.x, u_input.d.x))), reverseBits(14353u));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = ~(~func_2((u_input.b.x == 80800i) && false));
    let var_1 = vec2<i32>(abs(select(abs(-48382i), arg_0.b.x, func_3(arg_1, arg_0.a).x)), -1i & _wgslsmith_add_i32(~arg_0.a.a.x, 2451i)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(~16901u, 50320u) << (abs(~vec2<u32>(u_input.d.x, 1u)) % vec2<u32>(32u)), select(_wgslsmith_add_vec2_u32(select(vec2<u32>(4294967295u, arg_2.x), vec2<u32>(67570u, u_input.d.x), arg_1), u_input.d), u_input.d, select(vec2<bool>(arg_1, false), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), arg_1), arg_1))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_add_vec2_u32(arg_2.xx, vec2<u32>(13398u, arg_2.x));
    var var_3 = Struct_2(true, _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, -var_1.x), ~_wgslsmith_mod_i32(arg_0.a.a.x | -20775i, u_input.c)), _wgslsmith_f_op_f32(select(1402f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2401f - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1398f) - _wgslsmith_f_op_f32(abs(870f)))), true)), arg_0.a);
    var_3 = Struct_2(false, -2147483647i, -1987f, arg_0.a);
    return arg_0.a;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(!any(select(vec2<bool>(false, arg_0), func_3(arg_0, Struct_1(u_input.a.yxy, arg_3.c.x)), !arg_0)), _wgslsmith_mult_i32(i32(-1i) * -3375i, arg_2.x), -847f, arg_3.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_3.c.x)))))))));
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.c.yxz) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_0.c, arg_3.a.b), arg_3.c.yyy))))), arg_3.c, var_0, vec4<u32>(firstLeadingBit(8289u) | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(5005u, u_input.d.x, 9508u), vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x))), _wgslsmith_add_u32(u_input.d.x, u_input.d.x), 48011u, ~u_input.d.x), arg_3.c.wx);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-649f)), _wgslsmith_div_f32(732f, -554f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_3.a.b)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-398f)), _wgslsmith_div_f32(arg_3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -626f)))));
    var var_4 = true;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(_wgslsmith_div_vec3_i32(-(u_input.b | vec3<i32>(-55862i, -2147483647i, 9035i)), u_input.b), _wgslsmith_add_vec3_i32(-vec3<i32>(-41842i, -10906i, u_input.b.x), -u_input.b)), -132f);
    let var_1 = any(vec3<bool>(select(false, true, true), true, true));
    var_0 = func_4(var_1, any(select(vec3<bool>(all(vec2<bool>(var_1, false)), -780f < var_0.b, var_1), !(!vec3<bool>(true, var_1, false)), vec3<bool>(any(vec4<bool>(var_1, false, var_1, var_1)), all(vec3<bool>(true, var_1, var_1)), var_1))), u_input.b, Struct_3(func_1(Struct_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i), var_0.b), u_input.b.zy, vec4<f32>(var_0.b, var_0.b, 296f, 711f)), true, ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 1u), vec3<u32>(38575u, u_input.d.x, 39851u))), -abs(~vec2<i32>(u_input.e, var_0.a.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1436f, -1198f, var_0.b, var_0.b)))))));
    let var_2 = !func_3(!((u_input.d.x << (u_input.d.x % 32u)) <= func_2(var_1)), func_1(Struct_3(Struct_1(vec3<i32>(-30112i, u_input.b.x, u_input.b.x), -1813f), ~var_0.a.yz, _wgslsmith_f_op_vec4_f32(vec4<f32>(1082f, 267f, 1776f, -437f) - vec4<f32>(var_0.b, 767f, 1000f, 583f))), true, vec3<u32>(1u, u_input.d.x, u_input.d.x) ^ ~vec3<u32>(u_input.d.x, 26952u, u_input.d.x)));
    var_0 = Struct_1(vec3<i32>(~var_0.a.x ^ -1448i, -min(u_input.e, -8116i), ~var_0.a.x) ^ _wgslsmith_sub_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-5602i, 0i, u_input.b.x), var_0.a, var_0.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x), u_input.a.yww), true), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.e, var_0.a.x, var_0.a.x)))), 1380f);
    let var_3 = !(!(max(_wgslsmith_add_i32(u_input.b.x, 16727i), u_input.c) > var_0.a.x));
    let var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(0i), u_input.d.x, u_input.d.x, 15017i);
}

