struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = u_input.a;
    let var_1 = Struct_2(arg_1.a, arg_1.b);
    let var_2 = _wgslsmith_clamp_u32((~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) >> (_wgslsmith_add_u32(abs(56487u), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)) % 32u)) >> (_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b.x, 53138u, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 39224u), vec4<u32>(1u, 1u, 0u, 0u))), vec4<u32>(_wgslsmith_add_u32(40604u, u_input.b.x), 54877u, max(u_input.b.x, 22757u), _wgslsmith_mult_u32(u_input.b.x, 1697u))) % 32u), ~_wgslsmith_add_u32(0u, firstLeadingBit(19515u)), 1u);
    let var_3 = _wgslsmith_div_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(u_input.b.x, var_2, var_2, u_input.b.x)) << (reverseBits(vec4<u32>(0u, 70718u, u_input.b.x, var_2)) % vec4<u32>(32u))), vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(29417u, u_input.b.x, u_input.b.x) | var_2, var_2 << (~var_2 % 32u), max(14441u, ~var_2))) >> (abs(vec4<u32>(u_input.b.x, min(~22145u, ~var_2), countOneBits(_wgslsmith_clamp_u32(1u, 4294967295u, u_input.b.x)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_2, 0u, 47017u, 31037u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2, var_2, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 110520u, u_input.b.x))))) % vec4<u32>(32u));
    let var_4 = min((countOneBits(~var_3.yx) | _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2, 6505u), var_3.wy), vec2<u32>(1u, 1u))) | _wgslsmith_mod_vec2_u32(vec2<u32>(79584u, u_input.b.x) << ((vec2<u32>(48504u, var_2) | var_3.yw) % vec2<u32>(32u)), ~(~u_input.b)), vec2<u32>(abs(27105u), _wgslsmith_add_u32(4751u, var_3.x)));
    return _wgslsmith_f_op_f32(sign(857f));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> vec3<bool> {
    let var_0 = -1i;
    let var_1 = arg_1;
    let var_2 = vec2<bool>(_wgslsmith_add_i32(1523i, _wgslsmith_mod_i32(arg_2, u_input.a)) <= 58561i, (var_0 >= u_input.a) & true);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), var_2.x)), Struct_2(arg_1.a, ~(var_1.b & var_1.b)))) + _wgslsmith_f_op_f32(-1035f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a * -538f) + arg_0)));
    let var_4 = firstLeadingBit(-reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.x, 21485i, var_0, 1i), vec4<i32>(-13599i, arg_2, u_input.a, u_input.a)), abs(vec4<i32>(-35636i, 0i, arg_1.b.x, -11578i)))));
    return select(!select(select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, var_2.x, true), var_2.x), !vec3<bool>(var_2.x, var_2.x, true), var_2.x), !(!vec3<bool>(false, var_2.x, var_2.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(5451i, var_4.x), vec2<i32>(var_0, arg_2)) <= (var_0 >> (arg_3 % 32u))), select(!select(select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, true, false)), !vec3<bool>(false, var_2.x, var_2.x), !vec3<bool>(var_2.x, var_2.x, var_2.x)), select(vec3<bool>(var_2.x, true | var_2.x, var_2.x), vec3<bool>(true, all(var_2), false), select(select(vec3<bool>(false, var_2.x, false), vec3<bool>(false, false, false), vec3<bool>(false, var_2.x, var_2.x)), vec3<bool>(true, true, var_2.x), all(vec2<bool>(var_2.x, true)))), vec3<bool>(var_2.x, false, !(!var_2.x))), !(var_4.x < (var_1.b.x & ~var_0)));
}

fn func_1(arg_0: vec4<u32>) -> vec3<f32> {
    let var_0 = Struct_3(any(select(func_2(_wgslsmith_f_op_f32(103f - 692f), Struct_2(Struct_1(248f), vec3<i32>(-1i, u_input.a, u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -17158i), vec2<i32>(u_input.a, -2147483647i)), ~arg_0.x), vec3<bool>(true, true, true), arg_0.x >= select(u_input.b.x, u_input.b.x, false))), vec3<i32>(u_input.a, countOneBits(_wgslsmith_div_i32(u_input.a, u_input.a)), u_input.a), firstTrailingBit(-_wgslsmith_clamp_vec4_i32(vec4<i32>(591i, -1i, u_input.a, 10299i), vec4<i32>(9429i, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))) ^ reverseBits(firstTrailingBit(vec4<i32>(u_input.a, -17370i, 1i, u_input.a))), Struct_2(Struct_1(1f), (_wgslsmith_mod_vec3_i32(vec3<i32>(22631i, u_input.a, 2147483647i), vec3<i32>(u_input.a, -1i, 25305i)) << (vec3<u32>(51722u, u_input.b.x, 51343u) % vec3<u32>(32u))) << (vec3<u32>(arg_0.x, 39676u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)) % vec3<u32>(32u))), any(vec3<bool>(any(vec2<bool>(false, false)), (arg_0.x | arg_0.x) <= _wgslsmith_dot_vec3_u32(arg_0.zzx, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), select(func_2(-678f, Struct_2(Struct_1(501f), vec3<i32>(-2147483647i, 1i, u_input.a)), 1i, 24301u).x, true, true))));
    var var_1 = !select(all(!vec3<bool>(var_0.e, false, true)) && any(select(vec4<bool>(true, var_0.e, var_0.a, var_0.a), vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(true, true, true, var_0.e))), false, select(true, false, var_0.a));
    var var_2 = Struct_3(any(select(select(vec3<bool>(var_0.a, var_0.a, var_0.e), vec3<bool>(false, true, false), vec3<bool>(var_0.e, var_0.a, var_0.a)), vec3<bool>(var_0.e, var_0.e, false), true)) | (abs(1i) <= ~var_0.c.x), -max(min(vec3<i32>(var_0.d.b.x, u_input.a, -13581i), vec3<i32>(u_input.a, 35853i, 0i)), var_0.c.xwz) << (arg_0.xwx % vec3<u32>(32u)), ~vec4<i32>(~0i, -16193i, reverseBits(abs(var_0.d.b.x)), abs(u_input.a | var_0.c.x)), Struct_2(var_0.d.a, _wgslsmith_sub_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 51022i, 19470i), var_0.b)), ~vec3<i32>(var_0.d.b.x, -21176i, var_0.d.b.x))), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.d.a.a, var_0.d.a.a))), 825f));
    let var_4 = Struct_3(false, vec3<i32>(i32(-1i) * -16662i, u_input.a, var_2.d.b.x), ~(~(~var_0.c)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.a.a, 1230f))), var_2.d.b), func_2(var_0.d.a.a, Struct_2(var_2.d.a, _wgslsmith_div_vec3_i32(~var_2.d.b, select(var_0.c.xww, vec3<i32>(2147483647i, var_0.d.b.x, -2147483647i), true))), _wgslsmith_clamp_i32(var_2.b.x, _wgslsmith_sub_i32(var_0.d.b.x | -35185i, -32067i), _wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(1i, u_input.a))), 112092u).x);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec3<bool>(var_4.a, var_0.e, true), vec3<bool>(var_0.a, var_0.e, true), vec3<bool>(false, var_4.a, true)), Struct_2(Struct_1(-213f), vec3<i32>(u_input.a, 1i, -37045i))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-298f, -296f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(abs(vec4<u32>(1u, u_input.b.x, u_input.b.x, 92381u))))))));
}

