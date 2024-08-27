struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0.e;
    let var_1 = countOneBits(4294967295u) >> (reverseBits(_wgslsmith_sub_u32(34929u, arg_0.c)) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1534f - -153f), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(abs(1928f)), !arg_0.b.x)), _wgslsmith_f_op_f32(ceil(arg_0.e)), 1425f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) + arg_0.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f * _wgslsmith_f_op_f32(-266f * arg_0.e))), var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0, arg_0.e), var_0) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(step(1371f, var_0)))))));
    let var_3 = _wgslsmith_sub_u32(7299u, arg_0.c);
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1492f, _wgslsmith_f_op_f32(arg_0.e + var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-310f - _wgslsmith_f_op_f32(var_0 - 1447f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(728f * var_2.x))), _wgslsmith_f_op_f32(-var_2.x)));
    return var_0;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    var var_0 = 1555f;
    var var_1 = Struct_1(~vec2<u32>(1u, 3700u), ~70897u);
    var_1 = Struct_1(abs(var_1.a), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(23250u, var_1.a.x, 7980u, 20700u), ~vec4<u32>(17136u, var_1.b, var_1.b, 0u))));
    let var_2 = abs(countOneBits(select(u_input.a.xzx, u_input.a.xww, false)) >> (((_wgslsmith_mod_vec3_u32(vec3<u32>(1341u, var_1.b, var_1.b), vec3<u32>(50785u, 2327u, 25677u)) & (vec3<u32>(17144u, 1u, var_1.b) << (vec3<u32>(var_1.a.x, 1u, 55055u) % vec3<u32>(32u)))) << (vec3<u32>(var_1.a.x, ~var_1.b, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_0 = 923f;
    return var_1.b;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_mult_u32(func_4(!any(!arg_1.b.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e, arg_1.e) * _wgslsmith_f_op_f32(func_3(arg_1))) - -959f), abs(vec2<i32>(~(-13014i), arg_2.x))), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, 30283u), max(vec2<u32>(arg_1.d.x, arg_0.a.x), arg_0.a)), (arg_3 & arg_1.d.x) >> (_wgslsmith_sub_u32(4294967295u, arg_0.b) % 32u)));
    var var_1 = Struct_2(_wgslsmith_mult_vec2_i32(arg_1.a, vec2<i32>(-arg_1.a.x, arg_1.a.x)), !vec3<bool>(true, !arg_1.b.x, arg_1.a.x != arg_1.a.x), var_0, arg_1.d, _wgslsmith_f_op_f32(func_3(arg_1)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-270f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-144f)))), 171f, !var_1.b.x)), _wgslsmith_f_op_f32(ceil(var_1.e)), 1738f);
    var var_3 = _wgslsmith_add_i32(0i, arg_2.x);
    var_3 = ~(~(-var_1.a.x) & 2147483647i) << (~(_wgslsmith_dot_vec3_u32(var_1.d.yzy, ~var_1.d.yxz) ^ _wgslsmith_dot_vec4_u32(~arg_1.d, _wgslsmith_div_vec4_u32(vec4<u32>(var_0, 29676u, arg_1.c, 4294967295u), vec4<u32>(var_1.c, var_0, arg_0.b, 0u)))) % 32u);
    return true;
}

fn func_1(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_2(max(u_input.a.wy | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-30157i, -48775i, u_input.a.x, u_input.b), vec4<i32>(u_input.b, -2147483647i, 9487i, -20821i)), select(1i, 2147483647i, true)), select(u_input.a.yw, u_input.a.xw, vec2<bool>(arg_0.x == 15344u, u_input.a.x <= u_input.b))), select(!vec3<bool>(func_2(Struct_1(arg_0.zy, 0u), Struct_2(u_input.a.xx, vec3<bool>(false, true, true), arg_0.x, vec4<u32>(4294967295u, arg_0.x, arg_0.x, 62187u), 1215f), u_input.a.wwy, arg_0.x), any(vec3<bool>(true, false, false)), true), vec3<bool>(any(vec3<bool>(true, false, false)), -1130f != _wgslsmith_f_op_f32(ceil(-1735f)), false), !all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))), _wgslsmith_div_u32(21596u, 42237u), vec4<u32>(arg_0.x, _wgslsmith_mod_u32(arg_0.x, arg_0.x << (58396u % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 33256u, arg_0.x, 1u), vec4<u32>(28984u, 1u, arg_0.x, 100673u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u), vec4<u32>(4294967295u, arg_0.x, 1u, 6772u))), _wgslsmith_mult_u32(arg_0.x, firstLeadingBit(arg_0.x))) ^ abs(vec4<u32>(arg_0.x, _wgslsmith_sub_u32(arg_0.x, 0u), 21996u, arg_0.x)), -1416f);
    var var_1 = _wgslsmith_mult_i32(u_input.a.x >> (_wgslsmith_mult_u32(arg_0.x, arg_0.x) % 32u), var_0.a.x & 0i);
    let var_2 = max(var_0.a.x, _wgslsmith_sub_i32(~5665i, 1i));
    var_0 = Struct_2(abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(-u_input.a.ww, ~vec2<i32>(48175i, 2147483647i)), vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(1i, -40493i, var_0.a.x)), var_0.a)), vec3<bool>(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e * var_0.e), _wgslsmith_f_op_f32(sign(var_0.e))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.e), var_0.e, !var_0.b.x)), !(all(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)) && (var_0.c >= var_0.c))), _wgslsmith_clamp_u32(1u, ~var_0.c, (abs(arg_0.x) >> (_wgslsmith_mult_u32(var_0.c, var_0.c) % 32u)) & var_0.d.x), ~(~var_0.d), -510f);
    var var_3 = select(vec3<i32>(var_2, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_sub_i32(var_0.a.x, 2147483647i), -45993i), -firstTrailingBit(var_2)), vec3<i32>(-6001i, var_2, var_2), vec3<bool>(any(var_0.b), (arg_0.x << (var_0.c % 32u)) <= _wgslsmith_dot_vec3_u32(vec3<u32>(21030u, var_0.d.x, arg_0.x), var_0.d.xxy), true)) << (vec3<u32>(abs(var_0.c), 25851u, ~arg_0.x) % vec3<u32>(32u));
    return true;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_2 {
    return Struct_2(-_wgslsmith_add_vec2_i32(arg_2.yx, _wgslsmith_sub_vec2_i32(countOneBits(arg_2.yz), arg_2.yx)), vec3<bool>(~u_input.b > ~(-2147483647i), any(arg_0), all(vec3<bool>(arg_0.x, arg_0.x, true))), select(firstTrailingBit(~4294967295u), ~(~19123u), true & any(arg_0)) & ~1u, ~(vec4<u32>(3717u >> (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 100499u, 8607u), vec3<u32>(35225u, 62792u, 67651u)), 28792u >> (1u % 32u), max(67934u, 108481u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))))) - arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, func_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u))), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), true), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(653f, 711f), _wgslsmith_div_vec2_f32(vec2<f32>(532f, -1793f), vec2<f32>(-696f, 346f))), vec2<f32>(_wgslsmith_div_f32(1000f, 1538f), _wgslsmith_f_op_f32(min(-854f, 508f)))))), vec3<i32>(-2147483647i, max(1i, u_input.a.x), _wgslsmith_div_i32(-u_input.b, reverseBits(u_input.b ^ 0i))));
    let var_1 = u_input.a.x;
    var var_2 = var_0;
    var_2 = var_0;
    var var_3 = var_2.a.x;
    var var_4 = Struct_1(var_2.d.zx << (max(vec2<u32>(func_4(var_0.b.x, -574f, vec2<i32>(-8784i, 16068i)), ~0u), var_2.d.xy) % vec2<u32>(32u)), var_0.d.x);
    var var_5 = Struct_2(vec2<i32>(-2147483647i, var_2.a.x), !var_2.b, 4294967295u, func_5(select(select(vec2<bool>(var_0.b.x, false), var_0.b.xz, !var_2.b.x), vec2<bool>(var_2.b.x, var_2.b.x), func_2(Struct_1(vec2<u32>(0u, var_0.c), var_4.a.x), Struct_2(vec2<i32>(var_2.a.x, u_input.a.x), vec3<bool>(true, var_0.b.x, var_2.b.x), var_0.d.x, vec4<u32>(var_4.a.x, 5249u, 14614u, var_4.a.x), var_0.e), abs(vec3<i32>(var_1, -44828i, 1i)), var_0.c & 16373u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.e)), _wgslsmith_f_op_f32(-217f - var_0.e))), abs(~u_input.a.wyz ^ reverseBits(u_input.a.yzz))).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1537f + var_0.e)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -375f), -352f)), 1f)));
    var_5 = func_5(select(var_2.b.xx, !vec2<bool>(var_0.b.x, true), !vec2<bool>(var_5.b.x, select(var_2.b.x, true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(821f, 1000f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.e + var_0.e) - 2184f), func_5(!var_5.b.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, 290f) + vec2<f32>(1490f, -403f)), u_input.a.zwy).e)), -vec3<i32>(abs(-19504i), _wgslsmith_clamp_i32(1i, ~u_input.a.x, abs(3071i)), -65906i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a.wxz), vec2<u32>(57482u, ~(139205u >> ((44719u & var_2.c) % 32u))), u_input.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e, var_0.e, var_0.e))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(873f, var_2.e, var_0.e)))))))), 0u);
}

