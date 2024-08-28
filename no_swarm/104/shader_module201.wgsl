struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = vec4<bool>(true, true, 90201u > reverseBits(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_3.d.x, 7423u)), _wgslsmith_add_vec2_u32(arg_3.d.yz, vec2<u32>(arg_3.d.x, arg_3.d.x)))), false);
    let var_1 = 4294967295u;
    let var_2 = Struct_2(reverseBits(u_input.e), (_wgslsmith_f_op_f32(trunc(1862f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(floor(arg_0.x)))) || all(arg_3.b), vec4<bool>(all(arg_1.b.wz), var_0.x, !all(vec2<bool>(false, arg_3.b.x)) != true, true), Struct_1(arg_1.c, select(arg_3.b, arg_1.b, all(select(vec3<bool>(false, arg_3.b.x, var_0.x), var_0.yyy, arg_1.b.wyz))), _wgslsmith_f_op_vec3_f32(arg_3.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, 1637f, 161f) + arg_3.a))), ~vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(5916u, 1u)), ~4294967295u)));
    var var_3 = true;
    var var_4 = Struct_2(min(u_input.d, max(-countOneBits(u_input.a.x), _wgslsmith_dot_vec4_i32(countOneBits(u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.a, 25096i, -10214i, u_input.d), vec4<i32>(2147483647i, 1i, var_2.a, -8349i))))), all(!select(!arg_1.b.xyx, var_0.wzy, !arg_1.b.yxy)), select(var_2.c, select(vec4<bool>(arg_0.x <= -735f, all(arg_3.b.ywx), true, true), vec4<bool>(arg_3.b.x, true, var_2.c.x, all(var_2.c.yyx)), vec4<bool>(!var_0.x, arg_0.x > -474f, arg_3.b.x, var_0.x & var_2.c.x)), var_2.d.b.x && !(arg_0.x < 415f)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_2.d.a))))), var_2.c, arg_1.a, ~vec3<u32>(arg_3.d.x, 1u, 0u)));
    return !all(vec2<bool>(true, true));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = var_0.a;
    var var_2 = -vec4<i32>(min(-var_0.a, u_input.a.x >> (41627u % 32u)), 2147483647i, countOneBits(_wgslsmith_mod_i32(var_0.a, -1i)) | ~u_input.d, -countOneBits(abs(1i)));
    var_1 = 2147483647i | _wgslsmith_sub_i32(2147483647i, max(~(var_2.x >> (arg_1.d.d.x % 32u)), arg_1.a));
    let var_3 = Struct_2(-1i, all(vec2<bool>(true, false)), vec4<bool>(any(var_0.d.b), true, true, arg_1.c.x), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.d.a.x - -1408f), _wgslsmith_f_op_f32(sign(753f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f))), vec4<bool>(all(arg_1.d.b.zy), (var_0.a > -2147483647i) | select(var_0.d.b.x, var_0.b, arg_1.b), any(var_0.c.zz) & var_0.d.b.x, arg_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d.a)), u_input.b));
    return Struct_2(-2147483647i, func_3(_wgslsmith_f_op_vec2_f32(-var_3.d.a.xx), arg_1.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a.x * -702f) - _wgslsmith_f_op_f32(1700f - var_3.d.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.c.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(var_3.d.c * vec3<f32>(arg_0.x, arg_0.x, -1181f)), var_0.d.b, arg_1.d.c, var_3.d.d)), !vec4<bool>(any(var_3.d.b.wy), any(var_3.d.b), false || var_0.b, var_0.b), Struct_1(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-2047f)), _wgslsmith_f_op_f32(-368f * var_0.d.c.x)))), var_3.c, vec3<f32>(_wgslsmith_f_op_f32(var_0.d.c.x + arg_1.d.c.x), -741f, -310f), ~_wgslsmith_sub_vec3_u32(vec3<u32>(51999u, 1u, u_input.c), vec3<u32>(0u, 53458u, 6806u))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = true;
    var var_1 = countOneBits(1i) >= (i32(-1i) * -u_input.d);
    var_1 = var_0;
    var var_2 = func_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1379f), -275f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-722f + -1834f) + _wgslsmith_f_op_f32(step(3317f, -1675f))))), Struct_2(~u_input.a.x, !(!var_0), vec4<bool>(true, var_0, true, all(vec3<bool>(var_0, var_0, var_0))), Struct_1(vec3<f32>(-1033f, -500f, -324f), !vec4<bool>(true, false, var_0, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-635f, -1000f, -450f)), vec3<u32>(16015u, 1u, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1271f)));
    let var_3 = min(vec3<u32>(_wgslsmith_mod_u32(reverseBits(select(u_input.c, 4294967295u, var_0)), countOneBits(31603u)), _wgslsmith_mult_u32(func_2(var_2.d.a.xx, func_2(var_2.d.c.xx, Struct_2(-54750i, var_2.c.x, vec4<bool>(false, var_0, false, var_2.c.x), var_2.d), var_2.d.a.x), _wgslsmith_div_f32(-1498f, -1030f)).d.d.x, arg_0 << ((var_2.d.d.x | u_input.c) % 32u)), _wgslsmith_div_u32(0u, 55251u)), max(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.c, 10835u) << (~vec3<u32>(arg_0, 0u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(reverseBits(0u), 1u, select(15206u, 46659u, false))), u_input.b));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true), any(vec2<bool>(true, true))), vec3<bool>(all(vec4<bool>(func_1(24328u), any(vec3<bool>(false, false, false)), false, u_input.b.x <= u_input.b.x)), true, all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), false)))), func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -646f), 1f), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -862f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-124f, -1000f)), true)), func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(937f, 1000f), vec2<f32>(1000f, -1998f), false)), Struct_2(u_input.e, true, vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(542f, -625f, -357f), vec4<bool>(true, true, true, false), vec3<f32>(1626f, 1553f, -1043f), u_input.b)), -223f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(331f - 1303f), _wgslsmith_f_op_f32(f32(-1f) * -773f)))), 1f).b);
    let var_1 = max(vec4<i32>(reverseBits(-18782i), ~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2944i, u_input.e, u_input.e), ~vec3<i32>(0i, u_input.d, 2147483647i)), -2147483647i) ^ u_input.a, (reverseBits(~vec4<i32>(1i, u_input.a.x, u_input.e, u_input.d)) | _wgslsmith_add_vec4_i32(select(u_input.a, u_input.a, var_0.x), vec4<i32>(10241i, 16617i, u_input.d, u_input.a.x))) | select(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.d, u_input.d, u_input.a.x), u_input.a)), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(u_input.a.yxw, u_input.a.yww), 49602i, ~(-2147483647i)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(868f, 1786f, -124f, -705f))));
    var var_3 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + var_2.x)), var_2.x), Struct_2(-53772i, true, !select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_0.x, true, false, var_0.x), true), var_0.x), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(-1780f)), _wgslsmith_f_op_f32(var_2.x * -1785f), _wgslsmith_f_op_f32(var_2.x - -467f)), vec4<bool>(true, true, true, var_0.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -829f), var_2.x, var_2.x), ~vec3<u32>(u_input.c, u_input.c, u_input.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(-139f * _wgslsmith_f_op_f32(ceil(var_2.x))))))).d;
    var var_4 = vec4<i32>(-27349i, u_input.d, var_1.x, _wgslsmith_mod_i32(~reverseBits(~(-29234i)), var_1.x));
    var var_5 = ~u_input.b.yy;
    var_5 = u_input.b.yz;
    var var_6 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1640f, var_2.x, -450f))))), var_3.a)), var_3.c, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, var_3.c.x))), vec2<f32>(213f, 376f)))), func_2(vec2<f32>(var_3.a.x, _wgslsmith_f_op_f32(2135f + var_2.x)), Struct_2(~1i, any(vec3<bool>(true, var_3.b.x, false)), vec4<bool>(true, false, true, true), func_2(vec2<f32>(var_3.a.x, -963f), Struct_2(1i, false, vec4<bool>(var_3.b.x, var_0.x, false, var_0.x), Struct_1(vec3<f32>(-948f, -370f, 828f), var_3.b, vec3<f32>(var_3.a.x, var_2.x, 514f), u_input.b)), 688f).d), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(307f, var_2.x)))), -800f).c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x, 934f, i32(-1i) * -var_4.x, var_1.x);
}

