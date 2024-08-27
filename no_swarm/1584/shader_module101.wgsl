struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_4) -> vec4<bool> {
    global1 = false && any(!vec2<bool>(50169u != arg_3.e.x, arg_2.x || true));
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, arg_0.b.b.x, arg_0.b.b.x, 0i), vec4<i32>(6621i, 12837i, -6406i, -56118i) >> (u_input.a % vec4<u32>(32u))), vec4<i32>(arg_0.b.b.x, firstLeadingBit(arg_3.b.b.x), 1i, -7454i)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_0.b.b.x, -2147483647i, arg_0.b.b.x, arg_0.b.b.x)) ^ vec4<i32>(arg_0.b.b.x, arg_0.b.b.x, -26627i, -68995i), ~vec4<i32>(arg_0.b.b.x, 0i, arg_0.b.b.x, arg_3.b.b.x), ~(~vec4<i32>(44086i, arg_3.b.b.x, -15629i, 0i)))) >> (~u_input.a % vec4<u32>(32u));
    let var_1 = arg_3.b.c;
    let var_2 = (~(~(~u_input.a.wyy)) | vec3<u32>(~arg_3.e.x, ~u_input.a.x, arg_3.e.x)) << (u_input.a.wwy % vec3<u32>(32u));
    var var_3 = select(select(select(arg_0.a, arg_3.d.xy, vec2<bool>(any(arg_2.xx), all(arg_3.d.zx))), vec2<bool>(any(!vec3<bool>(arg_0.a.x, false, arg_3.d.x)), arg_3.d.x), select(arg_0.d.yy, vec2<bool>(all(vec2<bool>(arg_3.d.x, arg_3.d.x)), true), arg_3.d.x)), arg_2.xw, true);
    return vec4<bool>(any(select(arg_3.d, !vec3<bool>(arg_3.d.x, arg_0.d.x, arg_0.d.x), all(!vec2<bool>(true, arg_2.x)))), ((25555i < firstTrailingBit(-43445i)) || select(false, any(arg_3.d), all(vec3<bool>(arg_3.a.x, arg_2.x, false)))) || true, arg_2.x, all(vec3<bool>(false, all(select(vec2<bool>(false, var_3.x), vec2<bool>(arg_2.x, true), vec2<bool>(true, true))), any(arg_0.d.yx))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + global0.x)));
    var var_1 = abs(max(firstTrailingBit(abs(vec2<i32>(0i, 5i))), _wgslsmith_mod_vec2_i32(-firstLeadingBit(vec2<i32>(-1i, 2147483647i)), ~(-vec2<i32>(2147483647i, -2200i)))));
    var var_2 = vec2<bool>(~20139u > (u_input.a.x << (~56149u % 32u)), true);
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1044f, global0.x, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1083f, 890f, 403f, 620f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0, -956f, arg_0) * vec4<f32>(global0.x, arg_0, global0.x, arg_0)))))));
    let var_3 = select(!select(select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), var_2.x), func_3(Struct_4(vec2<bool>(false, false), Struct_1(-1870f, vec3<i32>(var_1.x, var_1.x, var_1.x), vec4<f32>(global0.x, -1012f, -1036f, 1064f), -734f), -884f, vec3<bool>(false, false, false), u_input.a.zx), _wgslsmith_f_op_vec2_f32(-global0.zx), select(vec4<bool>(false, false, false, true), vec4<bool>(false, var_2.x, false, false), true), Struct_4(vec2<bool>(var_2.x, var_2.x), Struct_1(666f, vec3<i32>(2147483647i, var_1.x, var_1.x), vec4<f32>(global0.x, 656f, 1383f, arg_0), arg_0), 1000f, vec3<bool>(var_2.x, true, var_2.x), u_input.a.xw)), var_2.x), vec4<bool>(var_2.x, var_2.x, all(!vec4<bool>(true, var_2.x, false, false)) | (_wgslsmith_f_op_f32(-global0.x) < _wgslsmith_f_op_f32(-376f - arg_0)), func_3(Struct_4(!vec2<bool>(var_2.x, true), Struct_1(global0.x, vec3<i32>(var_1.x, var_1.x, var_1.x), vec4<f32>(arg_0, global0.x, -1062f, -497f), global0.x), 263f, select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, var_2.x, true)), _wgslsmith_div_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -911f), _wgslsmith_f_op_f32(global0.x + -339f)), vec4<bool>(!var_2.x, false, true, var_2.x | false), Struct_4(!vec2<bool>(false, var_2.x), Struct_1(1000f, vec3<i32>(var_1.x, var_1.x, -2147483647i), vec4<f32>(global0.x, -585f, arg_0, 707f), arg_0), -522f, !vec3<bool>(var_2.x, var_2.x, var_2.x), ~vec2<u32>(u_input.a.x, 4294967295u))).x), !vec4<bool>(false == all(vec4<bool>(true, true, false, false)), true, ~20043u != _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), any(func_3(Struct_4(vec2<bool>(var_2.x, var_2.x), Struct_1(arg_0, vec3<i32>(var_1.x, var_1.x, var_1.x), vec4<f32>(arg_0, global0.x, arg_0, -1000f), -700f), global0.x, vec3<bool>(true, var_2.x, false), u_input.a.yx), vec2<f32>(3880f, arg_0), vec4<bool>(var_2.x, true, var_2.x, var_2.x), Struct_4(vec2<bool>(false, var_2.x), Struct_1(-185f, vec3<i32>(28152i, var_1.x, 1i), vec4<f32>(-235f, 904f, global0.x, arg_0), -2462f), 506f, vec3<bool>(true, true, false), vec2<u32>(u_input.a.x, u_input.a.x))))));
    return Struct_2(Struct_1(global0.x, firstLeadingBit(vec3<i32>(41645i, -1i, 15369i) ^ abs(vec3<i32>(var_1.x, 2147483647i, 2147483647i))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-538f, 842f, arg_0, arg_0) + vec4<f32>(global0.x, 545f, 1000f, arg_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1074f, arg_0, 1812f, arg_0) + vec4<f32>(-1927f, 1190f, 1107f, arg_0)))), _wgslsmith_f_op_f32(-322f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 973f) * -1373f))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)))), select(abs(vec3<i32>(var_1.x, var_1.x, var_1.x)), vec3<i32>(var_1.x, var_1.x, 22264i), var_3.yxz) | abs(vec3<i32>(31138i, -2147483647i, 11537i) ^ vec3<i32>(var_1.x, 56090i, var_1.x)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, global0.x)), -264f, _wgslsmith_f_op_f32(global0.x - global0.x)), -1000f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 521f) * _wgslsmith_f_op_f32(exp2(arg_0)))), countOneBits(~(~vec3<i32>(-2147483647i, 2147483647i, 1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 823f, global0.x, arg_0)))), _wgslsmith_div_f32(1151f, global0.x)));
}

fn func_4(arg_0: Struct_2) -> vec2<u32> {
    global1 = global0.x >= -1399f;
    global0 = _wgslsmith_f_op_vec4_f32(-arg_0.a.c);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.c.x)));
    global1 = !select(false, true, true) & select(_wgslsmith_f_op_f32(-arg_0.b.d) != global0.x, false, select(select(true, true, true), all(vec2<bool>(true, true)), ~u_input.a.x != _wgslsmith_clamp_u32(4294967295u, u_input.a.x, 131995u)));
    var var_1 = arg_0.c.c;
    return vec2<u32>(33494u, ~_wgslsmith_add_u32(~(u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_clamp_u32(max(u_input.a.x, u_input.a.x), 1u, 0u)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(vec2<bool>(select(true, true, !all(vec3<bool>(true, true, false))), any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(global0.x + -2045f), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -2147483647i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-16091i, -1i), vec2<i32>(-1i, 30301i)), -_wgslsmith_sub_i32(-21810i, -29533i), 1i), vec4<f32>(global0.x, 603f, -1276f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(388f - 1000f)))), _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), vec3<bool>(true, false, !all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), ~func_4(func_2(global0.x)));
    let var_1 = Struct_4(select(func_3(var_0, _wgslsmith_f_op_vec2_f32(global0.yz + var_0.b.c.xz), select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.d.x), vec4<bool>(true, true, true, true), !var_0.a.x), var_0).xw, vec2<bool>(var_0.a.x, u_input.a.x >= _wgslsmith_add_u32(u_input.a.x, var_0.e.x)), all(!(!vec3<bool>(var_0.a.x, var_0.d.x, var_0.d.x)))), Struct_1(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -411f))), ~(-var_0.b.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, var_0.b.a, -695f) * vec4<f32>(global0.x, -1916f, -1000f, global0.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1151f, global0.x, 282f, var_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(116f * var_0.c) * var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.x - 1f)), var_0.d, u_input.a.xw);
    var var_2 = -1666f;
    let var_3 = -950f;
    global1 = firstTrailingBit(_wgslsmith_mult_i32(var_0.b.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_0.b.b, vec3<i32>(var_1.b.b.x, 19767i, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.b.x, var_0.b.b.x), vec2<i32>(var_0.b.b.x, var_1.b.b.x))))) == (i32(-1i) * -28539i);
    return Struct_1(var_1.c, var_0.b.b, _wgslsmith_f_op_vec4_f32(-var_0.b.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-366f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), func_1(), func_1());
    var var_1 = Struct_3(any(vec3<bool>(func_3(Struct_4(vec2<bool>(true, true), var_0.b, var_0.c.c.x, vec3<bool>(false, false, false), u_input.a.xx), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, global0.x), vec2<f32>(var_0.c.c.x, -1361f), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), Struct_4(vec2<bool>(true, true), Struct_1(-1000f, vec3<i32>(-402i, var_0.a.b.x, 10474i), vec4<f32>(-1769f, global0.x, -189f, -1327f), 135f), global0.x, vec3<bool>(true, true, true), u_input.a.ww)).x, true, false)), func_2(-435f));
    var var_2 = vec2<u32>(4294967295u, u_input.a.x << (u_input.a.x % 32u));
    var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(select(min(vec2<u32>(0u, u_input.a.x), vec2<u32>(4294967295u, var_2.x)), ~u_input.a.zw, !vec2<bool>(var_1.a, var_1.a)), countOneBits(vec2<u32>(var_2.x, var_2.x))), vec2<u32>(firstTrailingBit(~u_input.a.x), 64735u)), vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(54716u, 58511u)), 1u, _wgslsmith_mod_u32(u_input.a.x, 0u) ^ 1u), func_4(func_2(_wgslsmith_f_op_f32(-var_0.b.d))).x));
    global0 = var_1.b.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-732f)))), 1i, 5011i);
}

