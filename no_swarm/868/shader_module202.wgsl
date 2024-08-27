struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.x, 204f, -1926f, -1947f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - 1133f), arg_0, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.d.x, -48838i), ~vec2<i32>(u_input.c.x, u_input.d.x)), _wgslsmith_mult_vec2_i32(select(u_input.c.zx, u_input.c.xz, arg_0.c.yx), _wgslsmith_add_vec2_i32(vec2<i32>(69237i, 1i), vec2<i32>(-23154i, u_input.d.x)))), vec2<i32>(u_input.c.x | _wgslsmith_mult_i32(u_input.d.x, u_input.d.x), -firstLeadingBit(u_input.d.x))), 29328u);
    let var_1 = -124f;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(1158f, -1000f, var_0.a.x, var_0.c.b.x)) - _wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(arg_0.b.x, arg_0.b.x, 1167f, var_0.b)))) + vec4<f32>(-186f, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x))), var_0.c.b.x)), _wgslsmith_f_op_f32(trunc(var_1)), var_0.c, vec2<i32>(u_input.c.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(countOneBits(34902i), 1799i), countOneBits(_wgslsmith_mult_i32(1i, 1i)))), 0u);
    var var_2 = ~(~arg_0.d.zz);
    var var_3 = u_input.c.xz;
    return abs(~(~min(u_input.a.x, ~var_0.c.d.x)));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = false;
    var_0 = all(arg_0.c.c);
    return _wgslsmith_f_op_f32(select(-1155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - arg_0.c.b.x))), all(vec2<bool>(true || all(arg_0.c.c), !(u_input.c.x >= u_input.c.x)))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, -1697f), 830f, Struct_1(false, arg_2.b, arg_2.c, vec3<u32>(1u, 1u, 17016u)), u_input.c.xx, arg_0), func_3(arg_2))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2329f, arg_2.b.x))), 722f, -123f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x)) - vec3<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, arg_2.b.x, 565f)) + vec3<f32>(arg_2.b.x, 818f, arg_2.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(806f, -1371f, -1000f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-340f, arg_2.b.x, arg_2.b.x), vec3<f32>(1604f, arg_2.b.x, arg_2.b.x)))))), arg_1.x)), arg_2.c.x));
    let var_1 = arg_2;
    var var_2 = !vec3<bool>(!(20760u == _wgslsmith_clamp_u32(arg_2.d.x, 4294967295u, 0u)), select(!all(arg_1), _wgslsmith_f_op_f32(arg_2.b.x - var_1.b.x) != _wgslsmith_f_op_f32(-1000f - var_0.x), all(!arg_1)), arg_1.x);
    let var_3 = var_1;
    var var_4 = vec2<f32>(-1148f, var_1.b.x);
    return Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-arg_2.b), vec3<bool>(var_2.x, all(!select(vec3<bool>(arg_2.a, false, true), vec3<bool>(arg_1.x, false, false), var_1.c)), _wgslsmith_f_op_f32(-arg_2.b.x) < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-588f, -1104f)))), firstLeadingBit(countOneBits(_wgslsmith_div_vec3_u32(var_3.d, u_input.a)) << (abs(u_input.a) % vec3<u32>(32u))));
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-255f - 1849f) + 2346f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(374f)) * _wgslsmith_f_op_f32(f32(-1f) * -1887f)) * 983f))));
    var_1 = 1f;
    var var_2 = func_2(_wgslsmith_mod_u32(54032u, u_input.a.x), vec4<bool>(all(vec2<bool>(select(false, true, false), all(vec4<bool>(false, true, true, false)))), false, true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))) || true), Struct_1(!(reverseBits(u_input.c.x) < 2147483647i), vec2<f32>(957f, -551f), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true, true), _wgslsmith_sub_vec3_u32(u_input.a & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, 42283u), vec3<u32>(0u, 45198u, 4294967295u)), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 1u), abs(57260u), 1u))));
    var_1 = func_2(~(~u_input.b), !vec4<bool>(var_2.a, any(vec3<bool>(false, var_2.a, var_2.c.x)), any(!vec3<bool>(true, var_2.a, true)), !var_2.c.x), Struct_1(any(var_2.c.xz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.b, vec2<f32>(var_2.b.x, var_2.b.x))) - _wgslsmith_f_op_vec2_f32(-var_2.b)), select(!vec3<bool>(var_2.c.x, true, var_2.a), vec3<bool>(true, false, select(var_2.c.x, var_2.c.x, var_2.c.x)), vec3<bool>(true, var_2.a, var_2.c.x)), ~select(vec3<u32>(0u, u_input.a.x, var_2.d.x), _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(0u, 4294967295u, 35461u)), false))).b.x;
    return func_2(u_input.b, !select(select(vec4<bool>(var_2.a, var_2.c.x, false, false), !vec4<bool>(false, var_2.c.x, false, false), var_2.a), !select(vec4<bool>(var_2.c.x, true, false, false), vec4<bool>(var_2.a, var_2.c.x, var_2.a, var_2.c.x), vec4<bool>(var_2.a, false, false, var_2.c.x)), select(select(vec4<bool>(var_2.a, true, true, false), vec4<bool>(var_2.a, var_2.c.x, var_2.a, var_2.a), vec4<bool>(false, var_2.a, var_2.c.x, false)), select(vec4<bool>(false, true, var_2.a, true), vec4<bool>(var_2.c.x, var_2.c.x, true, var_2.a), vec4<bool>(var_2.c.x, var_2.a, var_2.a, true)), vec4<bool>(true, false, true, var_2.a))), func_2(u_input.b, !select(vec4<bool>(var_2.a, var_2.c.x, true, true), !vec4<bool>(true, var_2.a, true, var_2.a), vec4<bool>(var_2.c.x, var_2.a, var_2.c.x, true)), Struct_1(!func_2(24623u, vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.c.x), Struct_1(true, vec2<f32>(var_2.b.x, var_2.b.x), var_2.c, vec3<u32>(var_2.d.x, 0u, 4294967295u))).c.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-990f, -1000f)))), !var_2.c, firstLeadingBit(vec3<u32>(u_input.a.x, 63056u, var_2.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-871f, _wgslsmith_f_op_f32(-312f * 318f), -170f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1344f)))))), 1234f, func_1(), vec2<i32>(~(abs(1i) << (u_input.a.x % 32u)), u_input.d.x), 4294967295u);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), func_2(0u, select(!vec4<bool>(true, var_0.c.c.x, var_0.c.a, var_0.c.c.x), select(select(vec4<bool>(var_0.c.a, var_0.c.c.x, false, true), vec4<bool>(var_0.c.a, false, true, true), var_0.c.c.x), vec4<bool>(true, false, true, var_0.c.c.x), !vec4<bool>(false, false, var_0.c.a, false)), select(select(vec4<bool>(var_0.c.a, false, var_0.c.c.x, var_0.c.a), vec4<bool>(false, false, var_0.c.c.x, true), vec4<bool>(false, true, var_0.c.c.x, var_0.c.a)), !vec4<bool>(false, true, false, var_0.c.c.x), any(vec3<bool>(true, var_0.c.c.x, true)))), Struct_1(var_0.c.c.x, var_0.c.b, !var_0.c.c, ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), u_input.a))).b.x, Struct_1(!var_0.c.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.xz))), select(select(select(vec3<bool>(var_0.c.a, true, true), var_0.c.c, var_0.c.c.x), select(var_0.c.c, var_0.c.c, var_0.c.c), var_0.c.c), vec3<bool>(var_0.c.c.x, 926f == var_0.b, !var_0.c.c.x), select(vec3<bool>(false, false, var_0.c.a), var_0.c.c, var_0.c.c)), var_0.c.d), var_0.d, _wgslsmith_sub_u32(~var_0.c.d.x, 4294967295u));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_0.b)), func_2(~(~4294967295u), !(!vec4<bool>(false, var_0.c.a, var_0.c.c.x, false)), var_0.c), ~(u_input.d & var_0.d), ~(~(73895u >> (~u_input.b % 32u))));
    let var_1 = reverseBits(~var_0.c.d.zx);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(361f, 475f, var_0.a.x, -1813f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b.x, var_0.b, var_0.c.b.x, -1531f) * var_0.a), vec4<bool>(true, false | var_0.c.c.x, var_0.c.a, var_0.c.a))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec4<f32>(var_0.c.b.x, var_0.c.b.x, var_0.b, 1087f), var_0.c.b.x, Struct_1(var_0.c.c.x, var_0.a.xw, vec3<bool>(var_0.c.a, false, false), u_input.a), vec2<i32>(-1i, 6187i), 2719u), 8565u)) - -925f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec4<f32>(var_0.a.x, -266f, var_0.c.b.x, -1520f), 1388f, var_0.c, u_input.d, 1u), u_input.a.x)), var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.b) - var_0.b)))), _wgslsmith_f_op_f32(var_0.c.b.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(1000f - var_0.c.b.x)))))), Struct_1(true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.a.ww))), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.b)), func_1().b.x), !var_0.c.c.yy)), vec3<bool>(all(!var_0.c.c.zy), var_0.c.a, var_0.c.c.x), var_0.c.d), abs(~countOneBits(abs(vec2<i32>(var_0.d.x, -1i)))), 53536u);
    var var_2 = var_0.a;
    var var_3 = var_0.c;
    var_2 = _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2349f, var_0.b, var_3.b.x, var_2.x) + vec4<f32>(var_2.x, var_2.x, 1799f, var_2.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.b.x, 239f, var_2.x, -1702f)))), var_0.a, select(select(vec4<bool>(true, var_3.a, var_3.c.x, var_0.c.a), vec4<bool>(var_0.c.a, false, var_3.c.x, var_3.c.x), var_0.c.a), select(vec4<bool>(var_3.a, var_0.c.a, var_0.c.c.x, true), vec4<bool>(false, true, var_0.c.c.x, true), vec4<bool>(false, true, false, true)), any(vec3<bool>(var_0.c.a, true, false)))))));
    var var_4 = Struct_2(var_0.a, var_0.a.x, var_0.c, reverseBits(firstTrailingBit(vec2<i32>(-47228i, 39083i >> (var_3.d.x % 32u)))), _wgslsmith_mult_u32(u_input.b & var_0.e, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(select(func_1().d.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.c.d.x, 85271u, 38708u, 43388u), vec4<u32>(4287u, 7464u, 42170u, 12667u)), _wgslsmith_clamp_u32(var_4.e, u_input.b, 7053u)), var_4.c.c.x) | _wgslsmith_add_u32(22515u, 1u), -1472f);
}

