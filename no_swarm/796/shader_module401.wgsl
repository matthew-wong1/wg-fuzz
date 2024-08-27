struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(abs(reverseBits(0i | u_input.c)), 86888i), ~1i, reverseBits(firstTrailingBit(~u_input.c)));
    let var_1 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(max(var_0.x, -32193i), ~var_0.x, 2147483647i), var_0) ^ vec3<i32>(_wgslsmith_div_i32(-22418i, -2147483647i) >> (select(1u, u_input.b.x, false) % 32u), -min(var_0.x, var_0.x), var_0.x), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1460f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(735f)) - _wgslsmith_f_op_f32(f32(-1f) * -2516f))), 207f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1496f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1396f))) + 1f);
    var var_3 = -(u_input.c << (u_input.e % 32u));
    let var_4 = false;
    return select(!select(!select(vec4<bool>(true, true, var_4, var_4), vec4<bool>(false, var_4, false, true), false), vec4<bool>(var_4, var_4, true, select(var_4, var_4, var_4)), true), !select(select(!vec4<bool>(true, var_4, var_4, true), select(vec4<bool>(var_4, var_4, true, var_4), vec4<bool>(false, false, var_4, var_4), vec4<bool>(var_4, false, var_4, var_4)), !var_4), select(vec4<bool>(false, var_4, false, var_4), select(vec4<bool>(var_4, false, true, var_4), vec4<bool>(false, true, var_4, var_4), false), all(vec2<bool>(var_4, true))), var_4), all(select(!vec4<bool>(var_4, var_4, var_4, false), select(vec4<bool>(false, true, var_4, var_4), vec4<bool>(var_4, var_4, true, true), vec4<bool>(false, true, var_4, true)), var_4)) | var_4);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = select(select(vec4<bool>(true, arg_0.x, !arg_0.x, arg_0.x), vec4<bool>(!(2147483647i >= arg_1.x), arg_0.x, arg_0.x & true, true), (_wgslsmith_f_op_f32(-arg_2.x) == _wgslsmith_f_op_f32(round(993f))) == any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), !(!select(func_3(), !vec4<bool>(arg_0.x, false, arg_0.x, false), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)))), select(all(select(!vec2<bool>(arg_0.x, arg_0.x), func_3().yx, arg_0.x)), arg_0.x, false));
    let var_1 = arg_3;
    var var_2 = Struct_2(vec3<i32>(arg_3.a.x, -1889i, 1i), 1u | ~(~u_input.e));
    var_2 = Struct_2(var_2.a, _wgslsmith_clamp_u32(~u_input.a.x, arg_3.b, 1u));
    return Struct_1(_wgslsmith_f_op_f32(exp2(arg_2.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, 1253f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a, 145f) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a, arg_1.a), vec2<f32>(arg_3.a, arg_3.a)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, 254f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, arg_3.a)), any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, -1167f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1);
    var_2 = var_1;
    let var_3 = ~82657u;
    return Struct_2(-vec3<i32>(firstLeadingBit(~(-1i)), -(arg_0.x | 2147483647i), ~(-1i)), var_3);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = !all(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), false));
    let var_1 = firstLeadingBit(65951i);
    var var_2 = !vec2<bool>(all(select(func_3().ww, select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), false))), true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1362f)))));
    var var_4 = func_4(vec4<i32>(-1i, -(~_wgslsmith_dot_vec3_i32(arg_0.a, arg_0.a)), var_1, _wgslsmith_mod_i32(firstLeadingBit(~(-2147483647i)), _wgslsmith_mult_i32(-var_1, i32(-1i) * -49301i))), var_3, var_2.x, var_3);
    return Struct_2(var_4.a, reverseBits(u_input.b.x));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-714f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1018f - 775f), -1099f, false)))));
    var var_1 = func_5(func_4(-firstLeadingBit(vec4<i32>(u_input.c, 1i, -17548i, u_input.c)) << (vec4<u32>(~130825u, ~34847u, max(22050u, 4294967295u), min(u_input.b.x, u_input.e)) % vec4<u32>(32u)), func_2(vec3<bool>(true, true, true), -(vec2<i32>(u_input.c, u_input.c) & vec2<i32>(u_input.c, u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, var_0)))), Struct_2(-vec3<i32>(-2147483647i, 31849i, u_input.c), select(u_input.e, u_input.a.x, false))), true, Struct_1(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, false), vec2<i32>(u_input.c, u_input.c), vec2<f32>(119f, var_0), Struct_2(vec3<i32>(u_input.c, 1i, -1i), u_input.d.x)).a + _wgslsmith_f_op_f32(-var_0)))));
    var_1 = Struct_2(var_1.a & _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(u_input.c), -36049i | var_1.a.x, -2147483647i), var_1.a, vec3<i32>(u_input.c, func_4(vec4<i32>(var_1.a.x, 1i, u_input.c, 2190i), Struct_1(-801f), true, Struct_1(912f)).a.x, _wgslsmith_add_i32(1i, 9690i))), _wgslsmith_dot_vec2_u32(u_input.a, u_input.b));
    var var_2 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, var_1.b), vec3<u32>(var_1.b, u_input.a.x, 0u)) ^ (vec3<u32>(u_input.b.x, 2918u, 21864u) | vec3<u32>(82748u, 12411u, 1u)), vec3<u32>(1u, ~var_1.b, var_1.b), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.b, u_input.e, 27690u), ~vec3<u32>(0u, 0u, var_1.b)))), ~max((vec3<u32>(var_1.b, 35695u, var_1.b) & vec3<u32>(var_1.b, var_1.b, u_input.b.x)) | countOneBits(vec3<u32>(u_input.e, var_1.b, 31392u)), vec3<u32>(~var_1.b, 4294967295u, 4294967295u)));
    var_2 = 1u;
    return func_4(vec4<i32>(1i, 1i, u_input.c, u_input.c), Struct_1(1934f), true | any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), func_2(!vec3<bool>(select(true, true, true), var_1.a.x > 69647i, true), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -var_1.a.xz, vec2<i32>(max(u_input.c, var_1.a.x), ~(-1i))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -1353f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1000f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, 313f))))), _wgslsmith_sub_i32(3813i, u_input.c) <= ~u_input.c)), Struct_2(_wgslsmith_mod_vec3_i32(var_1.a, -vec3<i32>(-11061i, -2147483647i, u_input.c)), ~var_1.b & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_1.b, 3563u, var_1.b), vec4<u32>(u_input.b.x, 60359u, 25625u, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, ~1i) & -2147483647i, u_input.c) >> (583u % 32u);
    var_0 = u_input.c;
    var var_1 = func_1();
    var var_2 = _wgslsmith_div_vec2_i32(var_1.a.zz, var_1.a.zz);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), -2130f, func_3().x)));
    let var_4 = ~(~(~_wgslsmith_sub_u32(~89322u, u_input.e)));
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_mult_u32(abs(var_1.b), countOneBits(17790u)), func_4(~(vec4<i32>(-2767i, 24191i, 9276i, -1i) & vec4<i32>(0i, -1i, -39457i, var_1.a.x)), var_3, ~0i > func_4(vec4<i32>(var_2.x, var_1.a.x, 16273i, u_input.c), var_3, false, Struct_1(var_3.a)).a.x, Struct_1(_wgslsmith_f_op_f32(-605f - var_3.a))).b), -_wgslsmith_div_vec3_i32((vec3<i32>(-90711i, 5505i, var_1.a.x) << (vec3<u32>(13279u, 0u, 82532u) % vec3<u32>(32u))) | abs(vec3<i32>(var_1.a.x, var_1.a.x, -1i)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-2147483647i, -2251i, 0i), vec3<i32>(var_1.a.x, 23920i, u_input.c), vec3<bool>(true, false, false)), var_1.a, var_1.a)), _wgslsmith_f_op_f32(var_3.a + var_3.a));
}

