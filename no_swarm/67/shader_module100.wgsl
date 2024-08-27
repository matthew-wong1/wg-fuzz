struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: i32) -> f32 {
    global0 = array<u32, 24>();
    let var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1493f)) + _wgslsmith_f_op_f32(f32(-1f) * -108f)) >= _wgslsmith_f_op_f32(f32(-1f) * -438f), !(!all(vec2<bool>(true, true))), select(all(vec3<bool>(true, true, false)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), true), true), !vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), any(vec3<bool>(true, true, true)), true, ~3604u < (global0[_wgslsmith_index_u32(1247u, 24u)] | 22722u)), any(vec4<bool>(true, all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(3176u >> (global0[_wgslsmith_index_u32(59115u, 24u)] % 32u), 24u)] <= min(u_input.d, 0u), all(vec2<bool>(true, true)))));
    global0 = array<u32, 24>();
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1088f))), 2803f), 559f));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f))));
    return 1f;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(arg_0.xz))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_2 {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(arg_0.a.b.a.x, arg_0.a.a), -1000f));
    var var_1 = _wgslsmith_clamp_i32(u_input.e.x, reverseBits(countOneBits(_wgslsmith_mod_i32(abs(arg_1.b.x), i32(-1i) * -1i))), 38959i);
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-40433i, min(-1i, 0i)), ~arg_1.b);
    return arg_1.a;
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = func_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(func_2(-u_input.c.x)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(642f, 946f) * vec2<f32>(-586f, 1432f))), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1051f, -679f, 1979f)), Struct_2(-459f, Struct_1(vec2<f32>(2476f, 1000f)), vec2<f32>(-926f, 325f), vec3<f32>(601f, -238f, -2221f)))), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(1000f, 956f, 719f), Struct_2(-2146f, Struct_1(vec2<f32>(1179f, 692f)), vec2<f32>(-449f, -360f), vec3<f32>(1612f, 157f, -442f)))).x, _wgslsmith_f_op_f32(-2183f * -910f), _wgslsmith_f_op_f32(-1053f * 403f))), select(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.e.yx), u_input.c.x), u_input.e.yy, vec2<bool>(true, true)), u_input.c.x, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(949f + 932f) - _wgslsmith_f_op_f32(-2470f + 515f)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-185f, 1000f) - vec2<f32>(550f, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(-504f * -1530f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), u_input.c.x), Struct_3(Struct_2(_wgslsmith_f_op_f32(func_2(u_input.e.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1541f, 1996f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-376f, -427f) + vec2<f32>(-322f, -238f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(192f, 546f), vec2<f32>(1000f, 737f), vec2<bool>(true, false)))), vec3<f32>(797f, 1086f, -500f)), _wgslsmith_clamp_vec2_i32(countOneBits(u_input.c.xz), vec2<i32>(~u_input.e.x, _wgslsmith_mult_i32(-56057i, -3231i)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(u_input.c.x, u_input.e.x)), ~u_input.c.x)), u_input.c.x, Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-304f)), -276f)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1935f, 374f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, -1399f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(542f, -1921f), vec2<f32>(-698f, -1100f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(1f, 1f, 1f)))), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.c.x), min(u_input.e.x, u_input.c.x), u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 7981i)), vec4<i32>(u_input.e.x, u_input.e.x, 6489i, ~u_input.e.x))), -vec4<i32>(~(u_input.c.x >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)] % 32u)), u_input.e.x >> (~arg_0 % 32u), u_input.e.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(15194i, -6060i, 11157i, 1i), vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, -3271i)))));
    var var_1 = ~u_input.c.x;
    var var_2 = Struct_3(Struct_2(-2395f, var_0.b, var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, -166f, var_0.a)), _wgslsmith_f_op_vec3_f32(min(var_0.d, var_0.d))) - _wgslsmith_f_op_vec3_f32(-var_0.d))), countOneBits(u_input.e.xy), _wgslsmith_mult_i32(max(~_wgslsmith_dot_vec4_i32(vec4<i32>(16430i, u_input.e.x, u_input.c.x, u_input.e.x), vec4<i32>(2147483647i, u_input.c.x, -30597i, u_input.c.x)), u_input.c.x), u_input.e.x), func_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(round(var_0.b.a.x)), func_4(Struct_3(Struct_2(var_0.b.a.x, Struct_1(vec2<f32>(1555f, 801f)), var_0.b.a, vec3<f32>(var_0.a, 1242f, 466f)), u_input.e.yx, u_input.c.x, Struct_2(1594f, Struct_1(var_0.d.xx), vec2<f32>(-1324f, var_0.c.x), var_0.d), 2147483647i), Struct_3(Struct_2(-1138f, var_0.b, vec2<f32>(524f, -891f), var_0.d), u_input.c.xx, 7008i, Struct_2(831f, var_0.b, vec2<f32>(var_0.c.x, var_0.d.x), var_0.d), -2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.e.x, u_input.e.x)).b, var_0.d.yz, _wgslsmith_f_op_vec3_f32(vec3<f32>(1021f, 830f, -659f) + var_0.d)), vec2<i32>(u_input.e.x >> (1u % 32u), _wgslsmith_add_i32(2147483647i, u_input.c.x)), u_input.e.x, func_4(Struct_3(Struct_2(var_0.b.a.x, Struct_1(var_0.c), vec2<f32>(var_0.c.x, var_0.d.x), var_0.d), vec2<i32>(32029i, u_input.c.x), -1i, Struct_2(-597f, Struct_1(vec2<f32>(1000f, var_0.b.a.x)), vec2<f32>(255f, var_0.c.x), var_0.d), u_input.e.x), Struct_3(Struct_2(-338f, var_0.b, vec2<f32>(-1255f, 1014f), vec3<f32>(var_0.b.a.x, -540f, 234f)), u_input.e.yy, u_input.c.x, Struct_2(-368f, Struct_1(var_0.c), vec2<f32>(var_0.c.x, -699f), var_0.d), 0i), vec4<i32>(u_input.e.x, 0i, u_input.e.x, u_input.c.x) & vec4<i32>(u_input.e.x, u_input.c.x, 1i, u_input.c.x)), -(~(-17462i))), Struct_3(Struct_2(736f, func_4(Struct_3(Struct_2(-292f, var_0.b, var_0.d.yx, vec3<f32>(var_0.c.x, var_0.b.a.x, 1145f)), u_input.e.yy, u_input.e.x, Struct_2(943f, var_0.b, var_0.b.a, var_0.d), -1i), Struct_3(Struct_2(-781f, Struct_1(var_0.b.a), vec2<f32>(var_0.b.a.x, var_0.d.x), vec3<f32>(var_0.b.a.x, 729f, 1000f)), vec2<i32>(-31316i, u_input.e.x), u_input.e.x, Struct_2(var_0.d.x, var_0.b, vec2<f32>(var_0.a, -691f), var_0.d), u_input.e.x), vec4<i32>(u_input.e.x, u_input.e.x, u_input.c.x, -16904i)).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 1000f)), vec3<f32>(737f, var_0.b.a.x, var_0.c.x)), u_input.c.zx, ~(-19991i), Struct_2(var_0.b.a.x, Struct_1(vec2<f32>(1000f, var_0.b.a.x)), vec2<f32>(var_0.c.x, var_0.a), _wgslsmith_f_op_vec3_f32(-var_0.d)), 8343i), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.e.yx, ~vec2<i32>(-2147483647i, -51299i)), u_input.c.x, u_input.c.x, reverseBits(u_input.e.x))), i32(-1i) * -10518i);
    var_2 = Struct_3(var_2.d, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(var_2.b, -u_input.c.yx & u_input.c.xy), reverseBits(countOneBits(u_input.c.zx))), ~(1i ^ -_wgslsmith_mult_i32(-1i, var_2.e)), Struct_2(_wgslsmith_div_f32(-483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1586f) - _wgslsmith_f_op_f32(select(231f, -562f, false)))), func_4(Struct_3(var_2.d, var_2.b, _wgslsmith_clamp_i32(-42858i, -2147483647i, var_2.c), Struct_2(var_2.a.d.x, var_2.d.b, vec2<f32>(-1000f, var_2.a.c.x), var_0.d), ~u_input.c.x), Struct_3(func_4(Struct_3(var_2.d, u_input.c.zy, var_2.e, Struct_2(-1207f, var_0.b, var_2.d.b.a, var_0.d), 0i), Struct_3(Struct_2(-448f, var_0.b, var_2.d.c, vec3<f32>(var_0.b.a.x, -1272f, 2124f)), vec2<i32>(-319i, u_input.e.x), 1i, var_2.d, -1i), vec4<i32>(u_input.e.x, 23956i, var_2.c, u_input.c.x)), -vec2<i32>(-31644i, -20961i), i32(-1i) * -4160i, Struct_2(var_0.c.x, Struct_1(vec2<f32>(229f, 570f)), vec2<f32>(var_2.d.c.x, var_2.d.d.x), var_0.d), abs(u_input.c.x)), vec4<i32>(var_2.b.x, -39041i, -1i, _wgslsmith_sub_i32(1i, 2147483647i))).b, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.b.a.x - -1466f), _wgslsmith_f_op_f32(abs(var_0.a)), false)), var_2.d.d.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-615f, var_2.d.b.a.x, var_0.d.x) + var_0.d) - _wgslsmith_f_op_vec3_f32(vec3<f32>(899f, var_2.d.b.a.x, var_2.a.d.x) * var_0.d)), _wgslsmith_f_op_vec3_f32(-var_2.a.d))), var_2.b.x);
    var_1 = reverseBits(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-25045i, 7137i), 2147483647i, -var_2.c)), var_2.e));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(floor(var_2.a.d.x)))) * var_0.d.x) * var_2.d.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-391f, -645f, 1905f, 107f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(285f, -1398f, -671f, -180f)))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_0.x)), -839f)), _wgslsmith_div_f32(-874f, var_0.x), 1251f, _wgslsmith_f_op_f32(-var_0.x));
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -2093f) * var_0.xwy) - var_0.wwx) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), var_0.x)), ~(-2147483647i >> (~max(u_input.d, 0u) % 32u)));
}

