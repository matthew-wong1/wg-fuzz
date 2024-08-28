struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(-select(-abs(vec4<i32>(2147483647i, -2147483647i, -2147483647i, -7878i)), ~vec4<i32>(-2147483647i, 0i, 2147483647i, -72213i), true), vec4<bool>(any(vec2<bool>(any(vec2<bool>(true, true)), true)), any(vec3<bool>(true, true, true)), !(u_input.a.x == 1u) & any(vec4<bool>(true, true, true, true)), true), vec4<i32>(1i, 1i, select(-9548i, 1i, false), firstTrailingBit(~(-28550i))));
    let var_1 = Struct_1(vec4<i32>(reverseBits(var_0.a.x), var_0.c.x, var_0.c.x, 8991i >> (u_input.b.x % 32u)), !vec4<bool>(true, var_0.b.x, !var_0.b.x, (false | var_0.b.x) | var_0.b.x), reverseBits(vec4<i32>(-16505i, 10740i, var_0.a.x, -1i)) >> (vec4<u32>(u_input.b.x, ~32403u << (u_input.a.x % 32u), ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.zx)) % vec4<u32>(32u)));
    let var_2 = !var_0.b.zzy;
    let var_3 = ~(~countOneBits(_wgslsmith_mod_u32(u_input.a.x, abs(69582u))));
    let var_4 = Struct_3(!(!var_0.b.x));
    return any(!vec2<bool>(true, !var_4.a));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(select(vec3<bool>(any(!arg_2.b), func_3(), true), select(vec3<bool>(any(vec3<bool>(arg_0.a.x, false, false)), !arg_0.a.x, arg_0.a.x), vec3<bool>(false, false, !arg_0.a.x), true), arg_2.b.x), (-29267i & -_wgslsmith_dot_vec4_i32(vec4<i32>(-34550i, arg_2.a.x, -2147483647i, arg_2.a.x), arg_2.c)) << (_wgslsmith_mult_u32(u_input.a.x, ~1u) % 32u), _wgslsmith_sub_i32(arg_1, 39652i));
    var var_1 = Struct_1(~select(reverseBits(-arg_2.a), _wgslsmith_add_vec4_i32(abs(vec4<i32>(29640i, arg_1, arg_2.c.x, -1i)), vec4<i32>(arg_2.c.x, arg_0.c, 20660i, arg_2.a.x)), false), vec4<bool>(false, false, true, (!arg_0.a.x | any(var_0.a)) | any(!vec4<bool>(arg_2.b.x, true, true, true))), vec4<i32>(-1i, ~_wgslsmith_mult_i32(arg_2.c.x, arg_0.c), (i32(-1i) * -1615i) ^ arg_2.a.x, 1i) << (~countOneBits(firstLeadingBit(vec4<u32>(4294967295u, 1780u, u_input.a.x, 10024u))) % vec4<u32>(32u)));
    let var_2 = Struct_3(all(vec3<bool>(var_0.a.x, any(select(arg_2.b, arg_2.b, false)), arg_0.a.x)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1155f, 1849f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-392f, -903f), 629f))))));
    let var_4 = ~(vec4<u32>(u_input.b.x, ~(~20268u), 1u, 45388u) ^ (_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 1u, 47356u, u_input.a.x), vec4<u32>(1u, u_input.b.x, 47274u, u_input.b.x), vec4<u32>(46153u, u_input.a.x, 1u, u_input.b.x)), vec4<u32>(u_input.a.x, 36068u, u_input.a.x, u_input.a.x) | vec4<u32>(35680u, u_input.b.x, 99917u, u_input.b.x), ~vec4<u32>(u_input.a.x, 4294967295u, 51136u, u_input.b.x)) | vec4<u32>(u_input.a.x, ~1u, ~21511u, u_input.a.x)));
    return var_3;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = Struct_3(arg_0);
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(~u_input.b.x), u_input.b.x, abs(u_input.b.x), u_input.a.x), min(vec4<u32>(~u_input.a.x, ~u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(14477u, 4294967295u, 4294967295u, 4294967295u) ^ vec4<u32>(0u, 9694u, u_input.a.x, u_input.b.x)) & vec4<u32>(~u_input.a.x, _wgslsmith_mult_u32(min(u_input.b.x, u_input.a.x), ~u_input.b.x), u_input.b.x, 35658u), _wgslsmith_add_vec4_u32(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 43043u, 1u, u_input.b.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(30475u, u_input.a.x, 35018u, 22689u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 27763u, u_input.a.x, u_input.b.x) & vec4<u32>(2819u, 0u, 33029u, u_input.b.x), vec4<u32>(31104u, 38077u, u_input.b.x, u_input.a.x)))));
    let var_2 = Struct_2(vec3<bool>(var_0.a, true, true), -(~max(i32(-1i) * -1i, -1i)), select(1i, 60958i, !(!any(vec4<bool>(var_0.a, true, false, var_0.a)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1848f + arg_1.x))), _wgslsmith_f_op_f32(ceil(-899f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(328f, arg_1.x)), -1000f, var_0.a)))))));
    let var_4 = ~(~vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(25008i), 0i ^ var_2.c), -23084i));
    return select(!(!vec4<bool>(-58238i > var_4.x, false, true, false)), !(!select(select(vec4<bool>(arg_0, true, false, var_0.a), vec4<bool>(true, arg_0, var_0.a, true), false), select(vec4<bool>(arg_0, arg_0, true, var_2.a.x), vec4<bool>(false, false, var_0.a, var_2.a.x), vec4<bool>(arg_0, false, var_2.a.x, true)), false)), select(select(vec4<bool>(any(var_2.a.zy), all(var_2.a), func_3(), false), !select(vec4<bool>(var_0.a, var_0.a, false, arg_0), vec4<bool>(var_0.a, var_2.a.x, var_0.a, false), true), false), vec4<bool>(any(var_2.a.xz), false, all(!vec4<bool>(var_2.a.x, true, false, false)), all(vec3<bool>(var_0.a, var_0.a, false))), any(vec3<bool>(func_3(), var_0.a, var_2.a.x))));
}

fn func_1(arg_0: vec2<bool>) -> vec4<i32> {
    var var_0 = (~21348u ^ ~u_input.b.x) >> (_wgslsmith_sub_u32(u_input.a.x, select(~111523u, ~u_input.b.x, false)) % 32u);
    let var_1 = 47350i;
    var_0 = 4294967295u;
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(~vec4<i32>(var_1, var_1, 11699i, 8477i), vec4<i32>(var_1, 2147483647i, var_1, var_1)), -(_wgslsmith_div_vec4_i32(vec4<i32>(var_1, var_1, -24172i, -30237i), vec4<i32>(0i, 20385i, 2147483647i, 0i)) | vec4<i32>(-21542i, var_1, var_1, 3861i)), countOneBits(vec4<i32>(~var_1, countOneBits(-906i), abs(0i), -2147483647i))), func_4(!arg_0.x && true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec3<bool>(arg_0.x, arg_0.x, false), -1i, -2147483647i), 1014i, Struct_1(vec4<i32>(var_1, 2147483647i, -2147483647i, -1i), vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<i32>(-1i, var_1, -9984i, 2147483647i))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(622f, 202f) * -112f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1387f))))), select(vec4<i32>(var_1, min(var_1 | var_1, 1468i), _wgslsmith_add_i32(var_1, -1i), -var_1), countOneBits(vec4<i32>(_wgslsmith_clamp_i32(-21041i, -20211i, 26771i), _wgslsmith_mod_i32(var_1, var_1), 0i, -var_1)), all(!vec2<bool>(arg_0.x, arg_0.x)) | !arg_0.x));
    var_2 = Struct_1(vec4<i32>(0i, abs(max(countOneBits(1i), var_1)), -(~var_2.c.x), i32(-1i) * -43001i), !var_2.b, _wgslsmith_clamp_vec4_i32(min(_wgslsmith_clamp_vec4_i32(abs(var_2.a), var_2.c, -vec4<i32>(-1i, var_1, var_2.c.x, var_2.c.x)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(1i, var_1, 1i, 0i), vec4<i32>(var_2.c.x, var_1, -2147483647i, var_1)), vec4<i32>(-25416i, 2147483647i, 2147483647i, -16029i) >> (vec4<u32>(u_input.a.x, u_input.b.x, 28462u, 4294967295u) % vec4<u32>(32u)))), (max(vec4<i32>(var_2.a.x, 0i, -27371i, -1i), var_2.a) ^ abs(vec4<i32>(0i, -7978i, var_1, var_1))) << (~(vec4<u32>(u_input.a.x, 43678u, 9127u, 0u) >> (vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(max(var_1, 0i), 21875i), -var_1, 23492i, _wgslsmith_dot_vec2_i32(var_2.a.zw, _wgslsmith_div_vec2_i32(var_2.c.zz, vec2<i32>(26666i, var_1))))));
    return vec4<i32>(var_1, var_1 | -2147483647i, 17994i, _wgslsmith_mod_i32(var_1, _wgslsmith_dot_vec2_i32(var_2.a.yx | (var_2.a.ww >> (u_input.a.yz % vec2<u32>(32u))), -vec2<i32>(var_1, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1131f, _wgslsmith_f_op_f32(f32(-1f) * -482f)));
    let var_1 = Struct_1(~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(7144i, 13861i, -20346i, 14898i), vec4<i32>(-30936i, -25709i, 0i, 0i)), min(vec4<i32>(-1i, 0i, 0i, -60912i), vec4<i32>(2147483647i, -23491i, 2147483647i, -7003i))), select(func_1(vec2<bool>(true, false)), vec4<i32>(9951i, 2147483647i, 1i, 5209i), true)), vec4<bool>(true, true, true, true), ~vec4<i32>(abs(_wgslsmith_clamp_i32(-6194i, 2147483647i, -2147483647i)), ~1i, 1i, 1i));
    var var_2 = _wgslsmith_f_op_f32(func_2(Struct_2(!func_4(any(var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(204f, -1514f, var_0.x) * vec3<f32>(-1914f, -1000f, 915f))).ywx, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, -1i), var_1.c.xx), max(1i, -_wgslsmith_dot_vec2_i32(var_1.c.xz, var_1.a.ww))), select(var_1.c.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.a.x, var_1.a.x & var_1.c.x), 50849i), var_1.b.x), Struct_1(func_1(select(vec2<bool>(true, false), vec2<bool>(var_1.b.x, false), func_4(false, vec3<f32>(1000f, var_0.x, 1535f)).x)), vec4<bool>(true, func_3(), !var_1.b.x && true, func_3()), select(vec4<i32>(~var_1.c.x, ~var_1.c.x, var_1.c.x, -46194i), reverseBits(var_1.a), var_1.b.x))));
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(-15044i, ~_wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(var_1.c.x, 58722i))), vec2<i32>(var_1.a.x, -1i));
    let var_4 = Struct_1(vec4<i32>(~var_1.a.x, _wgslsmith_mod_i32(var_1.c.x, ~(var_3.x << (1u % 32u))), firstLeadingBit(var_3.x), ~var_3.x), select(!vec4<bool>(true | var_1.b.x, true, var_1.b.x, var_0.x <= 559f), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(var_1.b.x, false)), any(!var_1.b.zz), var_1.b.x, !any(vec3<bool>(var_1.b.x, false, var_1.b.x)))), var_1.a);
    var var_5 = Struct_3(!any(select(vec2<bool>(var_1.b.x, false), func_4(var_1.b.x, vec3<f32>(var_0.x, 163f, var_0.x)).xx, vec2<bool>(true, true))));
    var var_6 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(-vec3<i32>(var_3.x, var_1.c.x, 13605i) ^ _wgslsmith_clamp_vec3_i32(var_4.c.zxw, vec3<i32>(var_1.a.x, var_3.x, 36674i), var_4.a.xwz), _wgslsmith_mod_vec3_i32(reverseBits(var_4.a.zwy), select(var_4.c.yxy, vec3<i32>(var_3.x, var_4.c.x, 1i), var_4.b.yww))) | (var_1.a.wzx ^ var_1.c.zxw), var_1.a.xx);
}

