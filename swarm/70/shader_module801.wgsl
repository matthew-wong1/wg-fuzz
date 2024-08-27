struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> f32 {
    let var_0 = !vec2<bool>(false, 375f >= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, 352f), _wgslsmith_f_op_f32(max(-818f, arg_0)))));
    let var_1 = select(_wgslsmith_clamp_vec3_u32(vec3<u32>(21230u, arg_2, arg_2), vec3<u32>(arg_2, _wgslsmith_div_u32(u_input.b, arg_3.c), _wgslsmith_mod_u32(~u_input.a.x, firstTrailingBit(u_input.a.x))), u_input.a >> (~(~vec3<u32>(22436u, 49725u, 20857u)) % vec3<u32>(32u))), ~u_input.a >> (u_input.a % vec3<u32>(32u)), true);
    var var_2 = 690f;
    var_2 = -438f;
    var var_3 = vec2<f32>(-2029f, arg_0);
    return -590f;
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0;
    let var_1 = !vec3<bool>(all(select(!arg_0.b.zw, vec2<bool>(false, arg_0.d.a), all(vec2<bool>(var_0.d.a, var_0.c.a)))), !var_0.a.a, true);
    var var_2 = u_input.e < u_input.c.x;
    var_0 = Struct_2(Struct_1(true), select(!var_0.b, arg_0.b, var_0.b), arg_0.d, Struct_1(var_1.x && false));
    let var_3 = 0u;
    return _wgslsmith_div_u32(62111u, 4294967295u);
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(384f, -242f, -1217f, -203f), vec4<f32>(-1428f, -1772f, 1319f, 966f), false))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-406f, -402f, 1433f, -1271f), vec4<f32>(-1295f, -323f, -769f, -215f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, -1238f, 2644f, -150f)) * vec4<f32>(-496f, 1000f, -807f, -1384f))) * vec4<f32>(1389f, _wgslsmith_f_op_f32(-562f + _wgslsmith_f_op_f32(f32(-1f) * -1389f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(1760f, Struct_1(true), u_input.a.x, Struct_3(false, vec2<bool>(false, true), 63401u, u_input.a.x))))), -1000f)));
    let var_1 = Struct_1(1u == countOneBits(u_input.a.x));
    var var_2 = u_input.c.x;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-445f * var_0.x) * _wgslsmith_f_op_f32(1612f + 364f)), -1947f)) + vec4<f32>(var_0.x, -2298f, var_0.x, 757f));
    var var_3 = Struct_3(any(vec4<bool>(u_input.a.x < 0u, var_1.a, var_1.a, var_1.a == true)) & var_1.a, !select(vec2<bool>(true, true), select(!vec2<bool>(var_1.a, var_1.a), !vec2<bool>(true, var_1.a), !vec2<bool>(false, var_1.a)), true), abs(u_input.a.x), _wgslsmith_clamp_u32(~(~(1u << (1u % 32u))), 1u, _wgslsmith_mult_u32(~u_input.a.x, ~func_3(Struct_2(Struct_1(var_1.a), vec4<bool>(false, var_1.a, true, var_1.a), Struct_1(var_1.a), var_1)))));
    return vec3<bool>(!any(var_3.b), !all(vec4<bool>(var_3.a, true, var_3.a & var_1.a, var_0.x > var_0.x)), var_1.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = ~firstLeadingBit(abs(abs(~vec4<u32>(u_input.a.x, 6213u, 13915u, 8472u))));
    let var_1 = Struct_2(arg_1, vec4<bool>(!arg_0.x, arg_0.x, any(vec2<bool>(true, false)), arg_0.x), Struct_1(arg_1.a), Struct_1(true));
    let var_2 = (vec2<i32>(-1i) * -firstTrailingBit(u_input.c << (u_input.a.xx % vec2<u32>(32u)))) & ((((u_input.c << (u_input.a.xy % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(u_input.a.yy, vec2<u32>(123842u, 1u)) % vec2<u32>(32u))) ^ ~abs(vec2<i32>(u_input.d, -2147483647i))) | select(select(vec2<i32>(u_input.d, 28686i), u_input.c, false) & vec2<i32>(u_input.e, 64154i), select(select(u_input.c, vec2<i32>(u_input.d, -2147483647i), var_1.b.yw), u_input.c ^ u_input.c, select(var_1.b.yw, vec2<bool>(var_1.b.x, false), var_1.b.zx)), false));
    var var_3 = select(select(max(vec3<i32>(countOneBits(-34161i), -1i, var_2.x << (u_input.b % 32u)), min(vec3<i32>(u_input.e, u_input.d, 17355i) | vec3<i32>(-1i, -2147483647i, -2147483647i), select(vec3<i32>(79i, -1i, u_input.e), vec3<i32>(-18299i, -1i, arg_2), arg_0))), _wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, -1i, arg_2) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.d, arg_2, 6859i), vec3<i32>(var_2.x, u_input.c.x, 61624i))), true && all(select(vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, true), var_1.b.yw))), ~firstTrailingBit(select(-vec3<i32>(arg_2, 2147483647i, var_2.x), ~vec3<i32>(0i, 2238i, arg_2), select(vec3<bool>(false, arg_1.a, false), arg_0, true))), !vec3<bool>(any(var_1.b) | arg_0.x, false, var_1.d.a));
    var_3 = select(vec3<i32>(_wgslsmith_sub_i32(var_2.x >> (14561u % 32u), -57276i), 3773i, 2147483647i), _wgslsmith_clamp_vec3_i32(-abs(~vec3<i32>(48216i, var_2.x, 1i)), select(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(var_3.x, 11859i, -18629i)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, 1i, var_2.x), vec3<i32>(-49033i, 2147483647i, var_3.x))), reverseBits(-vec3<i32>(arg_2, var_2.x, u_input.d)), arg_0), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(var_3.x, 2147483647i, 41495i)) | (vec3<i32>(u_input.e, -40685i, -9565i) ^ vec3<i32>(u_input.d, arg_2, u_input.e)), abs(~vec3<i32>(var_2.x, 1i, -1i)))), var_1.a.a);
    return Struct_1(any(select(var_1.b, !(!vec4<bool>(arg_1.a, false, arg_0.x, arg_1.a)), var_1.b)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.e), firstLeadingBit(_wgslsmith_sub_vec2_i32(~u_input.c, u_input.c << (vec2<u32>(arg_0.x, 22242u) % vec2<u32>(32u)))));
    let var_1 = func_4(vec3<bool>(true, true && !(false || arg_1.x), func_1().x != !(var_0.x < -15649i)), arg_2.c, -24707i);
    var var_2 = Struct_1(all(arg_2.b.yxy));
    let var_3 = Struct_2(Struct_1(!(!select(true, var_2.a, var_1.a))), !select(!select(vec4<bool>(false, var_2.a, var_1.a, arg_1.x), vec4<bool>(false, false, arg_2.a.a, true), var_1.a), arg_2.b, select(true, func_4(arg_2.b.xyy, Struct_1(var_2.a), var_0.x).a, arg_1.x && false)), Struct_1(arg_1.x), Struct_1(true));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) * _wgslsmith_f_op_f32(498f + 640f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(200f)))), _wgslsmith_div_f32(-644f, _wgslsmith_f_op_f32(-1004f - 532f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-887f, 602f, -431f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1256f, -1938f, -505f))))));
    return 33006u << (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(~1u, func_5(vec3<u32>(4294967295u, 16826u, _wgslsmith_sub_u32(u_input.b, 4294967295u) ^ u_input.a.x), vec3<bool>(all(vec2<bool>(true, true)), true, true), Struct_2(func_4(func_1(), Struct_1(false), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, -1i))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))), func_4(vec3<bool>(false, false, true), func_4(vec3<bool>(false, true, true), Struct_1(false), -2147483647i), 2147483647i), func_4(vec3<bool>(true, true, true), Struct_1(false), u_input.e))));
    var var_1 = abs(~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 74590u, 0u), vec4<u32>(15649u, 16654u, u_input.a.x, 85816u) ^ vec4<u32>(var_0, 46644u, u_input.b, 85940u))));
    var_1 = min(select(~vec4<u32>(func_3(Struct_2(Struct_1(false), vec4<bool>(false, false, true, false), Struct_1(true), Struct_1(false))), firstTrailingBit(32891u), u_input.a.x ^ var_0, abs(var_0)), reverseBits(vec4<u32>(func_3(Struct_2(Struct_1(false), vec4<bool>(true, false, false, false), Struct_1(false), Struct_1(false))), 102918u, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, 49644u, var_0), vec4<u32>(var_0, u_input.b, 0u, 0u)))), !(any(vec3<bool>(false, false, false)) & (var_1.x > 4294967295u))), _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(88849u, 1u), u_input.b, var_0, ~7509u), abs(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 96623u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 1u, 1u, 31093u)))));
    var var_2 = Struct_2(Struct_1(true), vec4<bool>(0u != var_0, any(vec2<bool>(true, true)), !(false & any(vec2<bool>(true, false))), all(vec3<bool>(true, true, true))), Struct_1(true), func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), func_1()), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), Struct_1(any(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec4_i32(max(select(vec4<i32>(41656i, u_input.c.x, 27706i, u_input.e), vec4<i32>(u_input.d, -24911i, u_input.c.x, -1i), true), vec4<i32>(u_input.d, -26473i, -10910i, u_input.e)), vec4<i32>(2147483647i, u_input.d, u_input.c.x, u_input.e) & reverseBits(vec4<i32>(-23110i, -2147483647i, u_input.e, u_input.e)))));
    let var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~countOneBits(var_0)), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, 59015u), ~u_input.b), _wgslsmith_add_u32(34243u, u_input.b) & reverseBits(11595u)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b, u_input.a.x, 0u, var_1.x) | vec4<u32>(u_input.a.x, var_0, 4294967295u, 1u)), ~(vec4<u32>(u_input.b, 93403u, 4485u, 28612u) << (vec4<u32>(var_1.x, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)))), ~_wgslsmith_div_u32(var_0, var_0)), reverseBits(~vec4<u32>(1u, abs(4294967295u), 32699u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), var_1.yz))), ~vec4<u32>(45157u, 40045u, 33048u, 64441u));
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1487f) + _wgslsmith_f_op_f32(floor(-705f))), _wgslsmith_f_op_f32(-3958f - _wgslsmith_f_op_f32(floor(-443f)))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -119f))))));
    var_2 = Struct_2(func_4(vec3<bool>(any(!vec4<bool>(var_4.a, true, false, false)), !var_2.b.x, true), Struct_1(true), -38680i), var_2.b, Struct_1(_wgslsmith_clamp_u32(~var_0, _wgslsmith_dot_vec4_u32(var_3, vec4<u32>(40810u, var_3.x, var_1.x, 4294967295u)), ~var_1.x) <= 83867u), var_2.a);
    var_2 = Struct_2(var_2.c, !var_2.b, var_4, func_4(var_2.b.xxy, func_4(select(!var_2.b.zzz, func_1(), false), Struct_1(var_2.c.a), 2147483647i), -u_input.d));
    let var_5 = vec3<i32>(u_input.c.x, 1i, -u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -2205f) * _wgslsmith_f_op_f32(966f * 719f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f))))));
}

