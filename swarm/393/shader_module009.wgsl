struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, -295f, -679f, -1690f))))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> vec2<f32> {
    let var_0 = u_input.a;
    let var_1 = ~(_wgslsmith_clamp_vec4_i32(abs(arg_1.c), select(vec4<i32>(u_input.c.x, 0i, arg_1.d, 0i) | arg_1.c, vec4<i32>(arg_1.d, var_0, 1906i, var_0), vec4<bool>(arg_2, false, true, true)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.c, vec4<i32>(-1i, u_input.a, arg_1.c.x, arg_1.d)), vec4<i32>(28173i, 2147483647i, -2147483647i, 0i) | vec4<i32>(-2147483647i, -13010i, u_input.c.x, u_input.a))) << (~countOneBits(vec4<u32>(u_input.d.x, u_input.e, 78228u, 34367u)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-138f, -998f, arg_1.b.a.x, 568f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, arg_1.a.x, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(arg_1.b.a * vec4<f32>(arg_1.a.x, arg_1.b.a.x, arg_1.a.x, arg_0)))), _wgslsmith_f_op_vec4_f32(-arg_1.b.a)))));
    var var_3 = _wgslsmith_f_op_f32(-169f - 167f) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(arg_1.a.x - arg_0))) * -271f);
    var_3 = arg_2;
    return _wgslsmith_f_op_vec2_f32(abs(arg_1.a));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.a.wy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1498f, 1134f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-arg_1.a.a.x), Struct_3(arg_1.a.a.zx, Struct_1(vec4<f32>(-1855f, arg_1.a.a.x, 1310f, 964f)), arg_1.e, u_input.a), true))), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))) || all(vec3<bool>(true, false, false)))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), false), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.b.a)), func_1(abs(~4294967295u), true, -arg_1.e), vec2<i32>(0i, min(u_input.a, -5050i)), reverseBits(arg_1.d), -vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.c, vec2<i32>(1i, 6278i)), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(-1i, u_input.b)), ~5395i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.a);
    let var_2 = vec4<i32>(var_0.c.e.x, arg_1.c.x, 0i, _wgslsmith_add_i32(-22114i, max(17527i, 22041i))) ^ select(~var_0.c.e ^ -vec4<i32>(-2147483647i, u_input.b, u_input.b, var_0.c.c.x), abs(~vec4<i32>(u_input.a, -23485i, 0i, u_input.a)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d.x, 44506u, 35120u, 56599u), ~vec4<u32>(0u, 1u, u_input.d.x, 1u), vec4<u32>(0u, var_0.c.d.x, 4294967295u, arg_1.d.x) & vec4<u32>(arg_1.d.x, var_0.c.d.x, var_0.c.d.x, 1u)) % vec4<u32>(32u)), select(!select(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), vec4<bool>(false, var_0.b.x, true, var_0.b.x), false), !vec4<bool>(var_0.b.x, false, true, var_0.b.x), false || !var_0.b.x));
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.a.x)))), Struct_3(_wgslsmith_f_op_vec2_f32(-arg_1.a.a.yw), arg_1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -8907i, var_2.x, u_input.a), vec4<i32>(-8849i, -48447i, -2147483647i, 2147483647i)), firstTrailingBit(arg_1.e.x)), any(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)))))), vec3<bool>(var_0.b.x, !all(vec4<bool>(false, var_0.b.x, var_0.b.x, false)) || !(!var_0.b.x), false), Struct_2(func_1(firstLeadingBit(abs(8272u)), all(vec4<bool>(var_0.b.x, false, true, var_0.b.x)), -vec4<i32>(19536i, -81748i, -3560i, arg_1.c.x)), var_0.c.b, _wgslsmith_clamp_vec2_i32(arg_1.e.xz & max(vec2<i32>(22923i, var_2.x), vec2<i32>(-11533i, u_input.a)), vec2<i32>(1i, 1i), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 49773i), vec2<i32>(var_0.c.c.x, -14612i)))), var_0.c.d, ~vec4<i32>(-1i, 2147483647i, -17596i, u_input.a) & vec4<i32>(arg_1.c.x, ~(-112322i), 1i, 1i)));
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1190f, var_0.c.a.a.x), arg_1.b.a.xx)) * var_0.a)), vec3<bool>(!(var_0.b.x & true), false, any(vec2<bool>(!var_0.b.x, var_0.b.x))), Struct_2(func_1(1u, !all(var_0.b.yy), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 64432i, 2147483647i, -2147483647i), -arg_1.e)), func_1(_wgslsmith_sub_u32(~var_0.c.d.x, ~71502u), var_0.b.x, vec4<i32>(arg_1.c.x, arg_1.c.x, var_2.x, 49857i) | vec4<i32>(557i, var_0.c.c.x, var_0.c.e.x, -472i)), vec2<i32>(1i, 1i), vec2<u32>(u_input.d.x, 1u), _wgslsmith_mod_vec4_i32(var_2, max(vec4<i32>(u_input.a, 2147483647i, 8103i, var_2.x), _wgslsmith_mult_vec4_i32(arg_1.e, arg_1.e)))));
    return min(vec3<u32>(countOneBits(~_wgslsmith_clamp_u32(4294967295u, 1u, 0u)), 0u, 1u), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(1u >> ((u_input.d.x | _wgslsmith_mult_u32(4835u, u_input.e)) % 32u), u_input.e), ~1u);
    let var_1 = false;
    var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(6116u, 1u), _wgslsmith_mod_vec2_u32(u_input.d.xz, u_input.d.yz));
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i | u_input.b, ~(~(-3976i)), ~(-1i)), _wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(0i, u_input.c.x, u_input.c.x))), -(vec3<i32>(-21531i, -1i, u_input.b) & vec3<i32>(u_input.b, u_input.b, u_input.c.x)))) >> ((~u_input.d | func_2(1310f, Struct_2(func_1(42591u, true, vec4<i32>(1i, u_input.c.x, -2147483647i, 0i)), func_1(u_input.d.x, false, vec4<i32>(u_input.a, u_input.b, u_input.c.x, 2147483647i)), ~vec2<i32>(u_input.a, -1i), u_input.d.yz, -vec4<i32>(70031i, 2147483647i, u_input.a, -1i)))) % vec3<u32>(32u));
    var_0 = ~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, u_input.e) ^ ~u_input.d.yx, _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 4294967295u), firstTrailingBit(vec2<u32>(u_input.e, var_0.x))));
    var var_3 = vec3<bool>(!(true | any(select(vec2<bool>(false, false), vec2<bool>(false, var_1), vec2<bool>(var_1, false)))), var_1, var_1);
    var var_4 = min(~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~u_input.c, -vec2<i32>(var_2.x, 0i)), ~(vec2<i32>(var_2.x, -2147483647i) | u_input.c)), vec2<i32>(-1i, countOneBits(-(~u_input.c.x))));
    var_0 = ~(~(min(u_input.d.zz, u_input.d.xy) ^ ~(~u_input.d.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-603f + _wgslsmith_f_op_f32(-1204f - -659f))))), u_input.d.zy, ~abs(~(~vec3<u32>(0u, 1u, 7799u))));
}

