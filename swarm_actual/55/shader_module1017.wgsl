struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_i32((firstTrailingBit(u_input.c) | (u_input.b.x << (1u % 32u))) >> (~1u % 32u), _wgslsmith_clamp_i32(u_input.b.x, i32(-1i) * -40392i, select(~arg_1, firstLeadingBit(abs(arg_1)), any(!vec3<bool>(arg_0, true, arg_0)))));
    var var_1 = select(firstTrailingBit(abs(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, arg_1, u_input.b.x), vec3<i32>(arg_1, var_0, -45489i)))), vec3<i32>(var_0, var_0, 0i), select(!select(arg_0, true, arg_0), any(vec4<bool>(arg_0, true, all(vec2<bool>(arg_0, true)), true)), false));
    return select(vec2<bool>(all(select(vec4<bool>(false, arg_0, false, true), !vec4<bool>(true, false, arg_0, false), vec4<bool>(true, arg_0, arg_0, false))), !arg_0), !vec2<bool>(any(select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), arg_0)), !all(vec3<bool>(false, arg_0, false))), true);
}

fn func_2() -> Struct_3 {
    var var_0 = select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), func_3(true, u_input.a, vec3<f32>(910f, 322f, 1015f))), vec2<bool>(true, true), !func_3(all(vec4<bool>(false, false, false, true)), max(13275i, -2147483647i), vec3<f32>(-1775f, -463f, -1749f)).x), select(vec2<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), func_3(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), ~(~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2575f, 580f, 200f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(585f, 1271f, -744f) - vec3<f32>(574f, 1820f, 171f)))), vec2<bool>(true, _wgslsmith_f_op_f32(step(-506f, 1596f)) == _wgslsmith_f_op_f32(trunc(1010f)))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)));
    let var_1 = reverseBits(_wgslsmith_sub_i32(u_input.b.x, u_input.a & firstLeadingBit(firstTrailingBit(u_input.c))));
    let var_2 = !select(!(!select(vec2<bool>(true, var_0.x), vec2<bool>(false, true), false)), !select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), var_0.x), func_3(var_0.x, var_1, vec3<f32>(359f, -617f, -341f)), var_0.x), var_0.x);
    let var_3 = Struct_1(all(!vec2<bool>(true, var_0.x)), vec3<u32>(reverseBits(~4294967295u), reverseBits(16672u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(28356u, 1u), 29722u)) | vec3<u32>(_wgslsmith_div_u32(11932u, ~1u), max(_wgslsmith_clamp_u32(1669u, 45905u, 17872u), ~1u), 1u), !(!(!select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(false, var_0.x, var_0.x), false))));
    var var_4 = Struct_3(var_3.b.x | var_3.b.x, _wgslsmith_sub_u32(101475u, var_3.b.x), _wgslsmith_div_vec2_i32(u_input.b.zw >> (var_3.b.xy % vec2<u32>(32u)), abs(u_input.b.zz)), Struct_2(var_3.b, _wgslsmith_mod_vec4_u32(~(vec4<u32>(var_3.b.x, var_3.b.x, var_3.b.x, var_3.b.x) ^ vec4<u32>(46817u, 0u, var_3.b.x, 4294967295u)), vec4<u32>(4294967295u, 4294967295u, 4294967295u | var_3.b.x, 1u)), 1i, 10692u), Struct_1(var_0.x, ~vec3<u32>(var_3.b.x, var_3.b.x, var_3.b.x) >> (abs(vec3<u32>(var_3.b.x, 10469u, 2288u)) % vec3<u32>(32u)), var_3.c));
    return Struct_3(var_3.b.x, var_4.b, -(var_4.c & select(~u_input.b.xx, u_input.b.yw, var_2)), var_4.d, var_4.e);
}

fn func_4(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = ~vec4<u32>(firstTrailingBit(arg_0.d.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.e.b, vec3<u32>(arg_0.d.b.x, arg_0.a, arg_0.d.b.x)), vec3<u32>(arg_0.a, arg_0.a, arg_0.a)), _wgslsmith_add_u32(select(4294967295u, 1u, arg_0.e.c.x), _wgslsmith_clamp_u32(arg_0.d.d, arg_0.e.b.x, 15376u))), abs(11873u), ~_wgslsmith_mult_u32(20827u << (arg_0.e.b.x % 32u), arg_0.e.b.x & arg_0.d.a.x));
    let var_1 = vec4<i32>(_wgslsmith_add_i32(2147483647i, _wgslsmith_mult_i32(u_input.b.x, min(-11739i, 31666i))), ~(~(u_input.a ^ 1i) ^ u_input.b.x), countOneBits(~0i), (2147483647i & _wgslsmith_div_i32(_wgslsmith_sub_i32(-10004i, 37674i), countOneBits(arg_0.d.c))) << ((~(~1u) << ((_wgslsmith_clamp_u32(arg_0.d.a.x, arg_0.d.a.x, 1u) >> (abs(1u) % 32u)) % 32u)) % 32u));
    let var_2 = Struct_3(_wgslsmith_mult_u32(14738u, var_0.x), arg_0.b, countOneBits(vec2<i32>(countOneBits(45100i), u_input.b.x)), func_2().d, Struct_1(false, _wgslsmith_add_vec3_u32(~abs(var_0.xxx), _wgslsmith_sub_vec3_u32(var_0.wzx << (vec3<u32>(var_0.x, arg_0.b, var_0.x) % vec3<u32>(32u)), ~vec3<u32>(1157u, arg_0.e.b.x, 23860u))), !arg_0.e.c));
    return abs(select(_wgslsmith_mult_vec2_i32(countOneBits(var_2.c), arg_0.c), u_input.b.xw, arg_0.e.c.zx)) & (var_2.c ^ ~vec2<i32>(0i, _wgslsmith_div_i32(34452i, arg_0.d.c)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = (min(-_wgslsmith_mod_vec2_i32(vec2<i32>(-32978i, arg_2.c), arg_0.zz), ~(~vec2<i32>(15838i, arg_0.x))) ^ func_4(func_2())) ^ ~vec2<i32>(-(~(-17278i)), abs(i32(-1i) * -1i));
    var_0 = _wgslsmith_sub_vec2_i32(min(~vec2<i32>(1i, ~0i), _wgslsmith_mod_vec2_i32(arg_0.yy, vec2<i32>(~(-11033i), var_0.x >> (3766u % 32u)))), vec2<i32>(u_input.c, func_2().c.x));
    var_0 = vec2<i32>(u_input.c ^ 18569i, var_0.x);
    var_0 = vec2<i32>(firstLeadingBit(max(_wgslsmith_sub_i32(u_input.a | 46212i, -21295i), -2147483647i << (_wgslsmith_div_u32(1u, 80368u) % 32u))), arg_2.c);
    var_0 = arg_0.ww;
    return select(vec4<bool>(false, false, false, true), vec4<bool>(func_3(arg_1.c.x & (arg_2.c > arg_0.x), -1i, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1307f), _wgslsmith_f_op_f32(trunc(1408f)), _wgslsmith_f_op_f32(-247f * -1000f))).x, true, true, false), _wgslsmith_dot_vec2_u32(select(abs(arg_1.b.yy), vec2<u32>(0u, arg_2.b.x), true), _wgslsmith_add_vec2_u32(vec2<u32>(24339u, arg_1.b.x), func_2().e.b.xx)) > ~_wgslsmith_mod_u32(arg_1.b.x << (arg_1.b.x % 32u), arg_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = !select(select(vec4<bool>(false, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, true, var_0.x, true), select(false, true, true)), func_1(vec4<i32>(abs(0i), ~u_input.c, 0i << (0u % 32u), 36149i | u_input.c), Struct_1(!var_0.x, vec3<u32>(60451u, 23792u, 510u), vec3<bool>(var_0.x, var_0.x, true)), Struct_2(countOneBits(vec3<u32>(31405u, 4294967295u, 1u)), reverseBits(vec4<u32>(0u, 1u, 4294967295u, 4319u)), _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, 5588i)), 61679u)), any(vec2<bool>(var_0.x, all(vec2<bool>(var_0.x, var_0.x)))));
    let var_1 = func_2().e;
    var_0 = !func_1(u_input.b, Struct_1(all(var_1.c.zx) & !var_1.c.x, func_2().d.a, var_0.yzy), func_2().d);
    var_0 = select(!(!vec4<bool>(all(vec3<bool>(var_1.a, var_1.a, var_1.c.x)), var_1.c.x, true, all(vec4<bool>(var_1.a, var_0.x, var_0.x, var_0.x)))), !vec4<bool>(all(!var_1.c.zx), var_0.x, !any(vec3<bool>(var_0.x, true, var_1.a)), countOneBits(var_1.b.x) > var_1.b.x), vec4<bool>(all(!func_2().e.c), false, !var_0.x, false));
    var_0 = vec4<bool>(any(!(!(!var_1.c.yy))), true || all(!var_1.c.yx), false, false);
    let var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yx, 2032f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-416f))), vec3<i32>(-1i) * -u_input.b.yxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-138f, 609f, _wgslsmith_f_op_f32(max(2055f, 812f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1727f, -387f, -1000f), vec3<f32>(-1239f, -1445f, -490f), var_1.c))))));
}

