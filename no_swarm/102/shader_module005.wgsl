struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(~u_input.c, ~u_input.b.yw, vec3<i32>(global1[_wgslsmith_index_u32(~17431u, 13u)], global1[_wgslsmith_index_u32(32454u, 13u)], 45236i) & vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], ~u_input.a, i32(-1i) * -53031i), vec2<u32>(37982u, firstTrailingBit(~17432u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 964f) + vec4<f32>(1845f, global0.x, global0.x, -1132f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, 1815f, -833f, 1568f)), vec4<f32>(-631f, 1401f, global0.x, global0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-740f, global0.x, -386f) + vec3<f32>(308f, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(round(498f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), -1007f))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), true);
    let var_1 = var_0.a;
    global0 = var_0.a.e.wz;
    let var_2 = var_0.c.xy;
    var var_3 = Struct_1(abs(u_input.d), ~(vec2<u32>(1u, 4294967295u) ^ ((vec2<u32>(var_0.a.d.x, 1u) & u_input.b.zy) | firstTrailingBit(vec2<u32>(var_0.a.b.x, var_0.a.b.x)))), -var_1.c, vec2<u32>(abs(max(var_1.b.x, var_0.a.d.x) >> (~4294967295u % 32u)), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, 1u) | vec2<u32>(48061u, var_1.b.x)), abs(vec2<u32>(41888u, 0u) >> (var_0.a.d % vec2<u32>(32u))))), _wgslsmith_f_op_vec4_f32(min(var_1.e, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.a.e.x), _wgslsmith_f_op_f32(exp2(var_0.b.x)), var_0.a.e.x))))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(186f - var_1.e.x), var_0.a.e.x, var_0.b.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.e.xxw, var_3.e.ywx, select(var_0.c, var_0.c, var_0.c)))));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    var var_0 = false;
    global1 = array<i32, 13>();
    var var_1 = Struct_2(Struct_1(~select(arg_0.x << (u_input.b.x % 32u), _wgslsmith_mod_i32(0i, 2147483647i), true), ~(~vec2<u32>(1u, u_input.b.x) ^ reverseBits(vec2<u32>(59763u, u_input.b.x))), _wgslsmith_div_vec3_i32(~select(vec3<i32>(global1[_wgslsmith_index_u32(3903u, 13u)], 0i, -2147483647i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, false, false)), vec3<i32>(arg_0.x, _wgslsmith_div_i32(-2147483647i, arg_0.x), -1i)), ~u_input.b.zw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1120f, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(floor(global0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, -403f, 1000f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-168f, 1199f, 1000f), vec3<f32>(1081f, global0.x, -403f)), _wgslsmith_f_op_vec3_f32(func_3()))))), vec3<bool>(!(global0.x == _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(-1f) > _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(global0.x * -416f)) >= -884f), 0u > (~1u >> (u_input.b.x % 32u)));
    var var_2 = var_1.c;
    var_0 = true;
    return min(_wgslsmith_sub_i32(abs(-2147483647i), var_1.a.c.x), abs(global1[_wgslsmith_index_u32(u_input.b.x, 13u)]));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_sub_vec3_i32(min(firstLeadingBit(max(vec3<i32>(59052i, -25624i, arg_1.a.x), arg_3)), select(countOneBits(vec3<i32>(arg_3.x, arg_2.a.x, arg_3.x)), arg_3, !arg_0.x)), countOneBits(_wgslsmith_mult_vec3_i32(arg_2.a, vec3<i32>(-17492i, 2147483647i, arg_2.a.x))) & ~_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 13u)], -46076i, arg_1.a.x), arg_1.a)));
    var var_1 = Struct_2(Struct_1(arg_3.x << (reverseBits(0u) % 32u), vec2<u32>(1u, _wgslsmith_add_u32(72761u, 1u)), _wgslsmith_sub_vec3_i32(-min(var_0.a, var_0.a), ~(~arg_3)), ~abs(firstLeadingBit(u_input.b.zz)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1579f, 767f, global0.x, -1565f), vec4<f32>(global0.x, global0.x, global0.x, 1110f))))))), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-912f, 755f)) + 1851f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(111f - 256f) * -1220f)), global0.x), !vec3<bool>(arg_0.x, true, !arg_0.x), arg_0.x);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.e.x))), -944f);
    let var_2 = all(select(select(select(select(arg_0, arg_0, var_1.c.xy), vec2<bool>(arg_0.x, var_1.d), select(var_1.c.yy, var_1.c.xz, false)), arg_0, true), vec2<bool>(-652f == _wgslsmith_f_op_f32(246f * var_1.b.x), !(u_input.b.x > var_1.a.d.x)), false));
    let var_3 = var_1.a.b.x;
    return var_1.a.e.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), Struct_3(vec3<i32>(1i, 10480i, u_input.c & 0i)), Struct_3(-(vec3<i32>(arg_0.a.x, 2147483647i, -2147483647i) ^ arg_0.a)), vec3<i32>(-2147483647i, 24677i, func_2(vec4<i32>(11321i, global1[_wgslsmith_index_u32(40341u, 13u)], u_input.a, 1272i))))), global0.x, any(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, true, false)), true, true), true))));
    var var_1 = Struct_3(vec3<i32>(func_2(~vec4<i32>(arg_0.a.x, global1[_wgslsmith_index_u32(arg_1.x, 13u)], arg_0.a.x, u_input.a) | ~vec4<i32>(arg_0.a.x, arg_0.a.x, 0i, arg_0.a.x)), 2147483647i, min(1i >> (u_input.b.x % 32u), abs(_wgslsmith_clamp_i32(u_input.c, 23730i, u_input.d)))));
    var_1 = Struct_3(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(select(-16252i, -22404i, false), _wgslsmith_div_i32(var_1.a.x, -1i), var_1.a.x), ~vec3<i32>(-2147483647i, var_1.a.x, -23427i) << (u_input.b.wwx % vec3<u32>(32u)), var_1.a), -var_1.a));
    let var_2 = vec4<bool>(~(~arg_1.x) != arg_1.x, !(!(!all(vec3<bool>(true, true, true)))), !((all(vec4<bool>(false, true, false, false)) && false) || !(0u > u_input.b.x)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), all(vec2<bool>(true, true)), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_4(select(var_2.zy, vec2<bool>(true, true), vec2<bool>(-1i == u_input.a, true)), arg_0, arg_0, arg_0.a)), _wgslsmith_f_op_f32(trunc(849f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-768f, -1990f)) + 516f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-623f * 1000f), 1411f, var_2.x)), _wgslsmith_f_op_f32(func_4(select(select(vec2<bool>(false, true), var_2.xx, vec2<bool>(true, true)), vec2<bool>(false, var_2.x), true), Struct_3(-var_1.a), Struct_3(vec3<i32>(-8939i, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], arg_0.a.x)), firstTrailingBit(_wgslsmith_sub_vec3_i32(var_1.a, var_1.a))))));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(0i, ~select(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(21325u, 13u)], 0i, global1[_wgslsmith_index_u32(u_input.b.x, 13u)]) << (vec4<u32>(14438u, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(-8551i, global1[_wgslsmith_index_u32(30428u, 13u)], u_input.a, 14910i) << (vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(u_input.b.x, 517u)), 13u)] ^ u_input.a, !any(vec2<bool>(false, true))));
    let var_1 = ~vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 25374u, 3975u, u_input.b.x))) | _wgslsmith_clamp_u32(u_input.b.x, func_1(Struct_3(vec3<i32>(-12084i, 58634i, 0i)), vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.x), ~func_1(Struct_3(vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(1u, 13u)], var_0.x)), vec2<u32>(u_input.b.x, 1u)) & (1u | _wgslsmith_mod_u32(u_input.b.x, 8765u)), 1u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), -2197f, -377f);
    var var_3 = vec4<bool>(!select(true, true, true), (1i > reverseBits(0i >> (u_input.b.x % 32u))) || true, any(vec2<bool>(true, select(true, true, true) || all(vec2<bool>(true, true)))), all(vec2<bool>(_wgslsmith_div_f32(global0.x, 751f) <= _wgslsmith_f_op_f32(-var_2.x), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)))));
    var var_4 = Struct_1(min(1i, u_input.a), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(59707u, u_input.b.x, 0u)), vec3<u32>(var_1.x, u_input.b.x, 37427u)), min(var_1.x, ~u_input.b.x)), _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(58934u, var_1.x, 8247u, 1u), vec4<u32>(var_1.x, 1u, u_input.b.x, 36968u)))), reverseBits(vec3<i32>(countOneBits(-u_input.d), _wgslsmith_sub_i32(-23288i, var_0.x), _wgslsmith_mod_i32(-23326i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(56557u, u_input.b.x), 13u)]))), select(u_input.b.zw, reverseBits(~(vec2<u32>(u_input.b.x, var_1.x) & var_1.zx)), ~min(1u, var_1.x) > 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-275f, 357f, -995f, _wgslsmith_div_f32(global0.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-128f, 1137f, -2877f, var_2.x) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(569f, var_2.x, -1598f, -1207f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, 154f, var_2.x), vec4<f32>(var_2.x, global0.x, var_2.x, 1000f)) * vec4<f32>(-890f, var_2.x, var_2.x, -1000f)))));
    let var_5 = Struct_3(vec3<i32>(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_add_i32(-32411i, -28779i), firstLeadingBit(global1[_wgslsmith_index_u32(var_1.x, 13u)])), max(2147483647i, -2147483647i) << (func_1(Struct_3(vec3<i32>(global1[_wgslsmith_index_u32(var_4.b.x, 13u)], var_4.a, u_input.c)), var_1.zx) % 32u), 0i) ^ var_4.c);
    let var_6 = Struct_3(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_0.x, global1[_wgslsmith_index_u32(firstTrailingBit(12528u), 13u)], _wgslsmith_mod_i32(8612i, var_4.a)), ~vec3<i32>(-63740i, -var_4.a, ~global1[_wgslsmith_index_u32(var_1.x, 13u)])));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u ^ reverseBits(~var_4.d.x), var_2.x, ~abs(-52162i));
}

