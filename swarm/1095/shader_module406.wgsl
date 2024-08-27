struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2180f), _wgslsmith_f_op_f32(1477f - -896f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1454f))), 612f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-578f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-448f, 200f)))), 664f)));
    let var_2 = u_input.b.yz;
    var var_3 = reverseBits(~(~vec4<i32>(1i, 1i, 1i, 1i)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - var_1.x), var_3.zy);
    return Struct_1(-600f, -_wgslsmith_add_vec2_i32(var_3.wy, _wgslsmith_sub_vec2_i32(max(vec2<i32>(var_3.x, 28029i), vec2<i32>(1i, 17812i)), vec2<i32>(var_3.x, 1566i))));
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = func_2();
    let var_1 = var_0.b.x;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a, 441f, arg_0.a), vec3<f32>(arg_0.a, var_2.a, var_2.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, var_0.a, 324f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(594f, arg_0.a, var_2.a))))));
    var var_4 = func_2();
    return min(firstTrailingBit(abs(select(-vec3<i32>(arg_0.b.x, -7523i, var_2.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, 954i, var_1), vec3<i32>(-2147483647i, arg_0.b.x, var_2.b.x)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))))), -(vec3<i32>(-1i) * -vec3<i32>(var_4.b.x, 2147483647i, -1i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<bool> {
    return vec4<bool>(all(vec4<bool>(all(vec3<bool>(true, false, true)), any(vec4<bool>(true, false, true, false)), true, false)) & (-258f < _wgslsmith_f_op_f32(max(func_2().a, func_2().a))), !any(vec3<bool>(true, true, true)) != (any(vec2<bool>(true, true)) != (abs(arg_0.b.x) != -11598i)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))) & (func_1(arg_0).x == max(select(2147483647i, -3849i, false), arg_2.b.x)), arg_1.a <= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a, 1534f), 1f), arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(~(-2147483647i), -2147483647i, _wgslsmith_mod_i32(42883i, 1i)) >> (_wgslsmith_sub_vec3_u32(u_input.b, select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), vec3<u32>(21090u, u_input.b.x, u_input.b.x), false)) % vec3<u32>(32u)), (func_1(Struct_1(-1231f, vec2<i32>(-10326i, -1i))) >> (firstLeadingBit(u_input.b) % vec3<u32>(32u))) >> (~vec3<u32>(0u, 1u, 0u) % vec3<u32>(32u)));
    var var_1 = vec3<bool>(!(all(vec4<bool>(true, true, true, true)) != true), all(!func_3(Struct_1(-1709f, vec2<i32>(var_0.x, 1i)), Struct_1(-538f, var_0.xx), Struct_1(501f, var_0.xy), var_0)), true);
    let var_2 = -2147483647i;
    var var_3 = any(select(vec3<bool>(false, var_1.x, var_1.x), func_3(Struct_1(_wgslsmith_f_op_f32(ceil(237f)), select(vec2<i32>(var_0.x, -1i), vec2<i32>(var_0.x, var_0.x), var_1.x)), func_2(), func_2(), vec3<i32>(2147483647i, func_2().b.x, var_2)).zzy, var_1.x));
    let var_4 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-(~vec4<i32>(1i, var_0.x, 2147483647i, var_0.x) ^ vec4<i32>(2147483647i, -28600i, 40854i, 2092i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -7554i, -2147483647i, var_2), vec4<i32>(var_0.x, -1i, -10481i, var_2)), vec4<i32>(9792i, 1i, var_0.x, 52778i)), vec4<i32>(var_2, var_2, 26468i, -21290i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -5198i, var_2, 2147483647i) & vec4<i32>(var_2, var_2, -44495i, 1i), vec4<i32>(-603i, var_2, 1i, var_0.x), vec4<i32>(var_2, 2147483647i, var_0.x, var_2)))), -(_wgslsmith_div_vec4_i32(vec4<i32>(13957i, var_0.x, 2147483647i, 52746i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 1i, var_2, var_2), vec4<i32>(-20350i, var_2, 59486i, var_0.x))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.b.x, 4294967295u), vec4<u32>(17328u, 1u, 1u, 1u)), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 5915u))) % vec4<u32>(32u))));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2615f + 1000f)))), var_0.yy);
    var var_6 = true;
    var_1 = vec3<bool>(select(true, any(select(select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), false), select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, var_1.x, true, false)), u_input.a > u_input.b.x)), _wgslsmith_f_op_f32(-var_5.a) < var_5.a), !(!(false || (var_4 >= -17950i))), select(false, !(_wgslsmith_div_i32(2147483647i, 53947i) > -var_2), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-388f, var_5.a, var_5.a, 1000f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_5.a, var_5.a, -1613f, var_5.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_5.a, 985f, var_5.a, -1131f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(538f, var_5.a, var_5.a, var_5.a)), vec4<f32>(var_5.a, -401f, var_5.a, var_5.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a, -2352f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a, var_5.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1600f, -230f) + vec2<f32>(-169f, 1050f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-588f, var_5.a)) - vec2<f32>(-2335f, 154f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(202f, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1229f, 1555f), vec2<f32>(652f, var_5.a), -363f != var_5.a)))), u_input.b);
}

