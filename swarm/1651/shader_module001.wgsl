struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-726f, 1743f, -697f), vec3<f32>(100f, -500f, -938f), vec3<f32>(742f, -306f, -1000f), vec3<f32>(-780f, -1000f, 731f), vec3<f32>(-507f, -1233f, -586f), vec3<f32>(-1855f, 974f, 1000f), vec3<f32>(756f, 169f, -308f), vec3<f32>(1186f, -744f, -132f), vec3<f32>(-285f, -1647f, 500f), vec3<f32>(-416f, 926f, -1413f), vec3<f32>(776f, 893f, -560f), vec3<f32>(-1828f, -1704f, -249f), vec3<f32>(-580f, 268f, -333f), vec3<f32>(1610f, 1016f, -636f), vec3<f32>(-772f, 312f, -1356f), vec3<f32>(609f, 357f, 1702f), vec3<f32>(423f, -1747f, -1762f), vec3<f32>(-682f, -1525f, 530f), vec3<f32>(329f, -1380f, 520f), vec3<f32>(458f, 1000f, -957f), vec3<f32>(345f, 736f, 674f), vec3<f32>(-514f, 697f, -890f), vec3<f32>(352f, 2918f, -1269f), vec3<f32>(-1389f, -1000f, -901f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: i32, arg_3: vec3<f32>) -> f32 {
    var var_0 = false;
    var_0 = true;
    var var_1 = 0i ^ u_input.d.x;
    let var_2 = 816f;
    var var_3 = !(!vec3<bool>(~u_input.e > arg_2, select(false, arg_1.a.a.a, arg_1.a.d.a) == (var_2 <= var_2), _wgslsmith_f_op_f32(arg_3.x + var_2) > _wgslsmith_f_op_f32(arg_1.a.d.b.x + arg_0.x)));
    return _wgslsmith_f_op_f32(arg_3.x * arg_0.x);
}

fn func_3() -> vec4<bool> {
    global1 = array<vec3<f32>, 24>();
    global0 = any(vec2<bool>((1i < abs(u_input.d.x)) || false, any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)))));
    let var_0 = firstTrailingBit(~(vec3<u32>(1u, u_input.c, u_input.c) >> (vec3<u32>(2426u, u_input.c, 50226u) % vec3<u32>(32u))) << (countOneBits(firstLeadingBit(~vec3<u32>(u_input.c, u_input.c, u_input.c))) % vec3<u32>(32u)));
    var var_1 = firstLeadingBit(~(~(~vec4<u32>(1u, 22370u, 38614u, 4294967295u)) << (~firstLeadingBit(vec4<u32>(var_0.x, 1u, 1u, u_input.c)) % vec4<u32>(32u))));
    var_1 = vec4<u32>(var_0.x, countOneBits(var_0.x ^ 1u), u_input.c, countOneBits(~_wgslsmith_sub_u32(var_0.x, 4294967295u) & firstLeadingBit(31318u)));
    return vec4<bool>(false, true, !(!(var_1.x == firstLeadingBit(u_input.c))), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_3 {
    global1 = array<vec3<f32>, 24>();
    global1 = array<vec3<f32>, 24>();
    global0 = any(!func_3()) && true;
    let var_0 = select(false, select(46265u >= u_input.c, abs(select(1u, 4294967295u, false)) != ~(68218u << (u_input.c % 32u)), true), true);
    var var_1 = Struct_3(Struct_2(Struct_1(!var_0, vec4<f32>(_wgslsmith_f_op_f32(arg_0 * -1263f), -247f, _wgslsmith_f_op_f32(min(arg_0, arg_1.x)), _wgslsmith_f_op_f32(min(1594f, arg_1.x))), !(var_0 && var_0), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 57802u, 6657u)), select(vec4<u32>(u_input.c, 51136u, 57977u, 1u), vec4<u32>(u_input.c, 34742u, u_input.c, u_input.c), var_0), max(vec4<u32>(11174u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 4294967295u))), var_0), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, 53467u), vec4<u32>(reverseBits(4294967295u), u_input.c, 74419u, u_input.c)), !vec2<bool>(any(vec3<bool>(true, false, var_0)), var_0), Struct_1(select(var_0, u_input.e > u_input.a, any(vec3<bool>(false, false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, -609f, arg_1.x, 183f)), !var_0, _wgslsmith_mod_vec4_u32(vec4<u32>(33819u, 0u, 50578u, u_input.c) << (vec4<u32>(0u, 0u, 0u, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), var_0 | var_0)), select(vec3<bool>(var_0, all(select(vec3<bool>(false, true, true), vec3<bool>(var_0, false, var_0), vec3<bool>(true, true, var_0))), true), !(!func_3().zyz), vec3<bool>(select(var_0, all(vec4<bool>(false, false, var_0, false)), var_0), var_0, all(func_3()))), ~u_input.d);
    return Struct_3(Struct_2(var_1.a.d, _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(37510u, 4294967295u, 0u, u_input.c), _wgslsmith_mod_vec4_u32(var_1.a.b, vec4<u32>(var_1.a.b.x, 911u, var_1.a.a.d.x, 63160u)), var_1.a.d.d), min(vec4<u32>(u_input.c, 265u, 54476u, 0u), var_1.a.a.d) | ~var_1.a.d.d), !select(!var_1.a.c, func_3().yz, true), Struct_1(!var_1.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.a.b) - vec4<f32>(arg_1.x, 444f, 1409f, -536f)), ~(-2275i) >= (-16849i ^ u_input.b), vec4<u32>(_wgslsmith_div_u32(var_1.a.a.d.x, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.a.d.d.x), vec2<u32>(u_input.c, u_input.c)), 51016u, 0u), true)), func_3().wyy, select(~select(-u_input.d, vec4<i32>(u_input.e, u_input.a, u_input.b, u_input.d.x), var_0), var_1.c, !(!(!vec4<bool>(var_0, false, var_1.a.d.e, var_0)))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec3<bool>) -> Struct_2 {
    global1 = array<vec3<f32>, 24>();
    global0 = arg_0.b.x;
    let var_0 = arg_2.x;
    var var_1 = u_input.d.zzy;
    var var_2 = Struct_4(arg_0.a);
    return Struct_2(Struct_1(true, arg_0.a.a.b, func_3().x, ~firstTrailingBit(~vec4<u32>(arg_0.a.a.d.x, 36373u, 0u, 0u)), false | arg_2.x), _wgslsmith_mod_vec4_u32(min(select(vec4<u32>(arg_0.a.b.x, arg_1, arg_1, 0u), arg_0.a.b >> (vec4<u32>(0u, u_input.c, 25980u, 16676u) % vec4<u32>(32u)), select(false, true, true)), abs(arg_0.a.a.d)), arg_0.a.d.d >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.b.x, u_input.c, var_2.a.d.d.x, 67158u), ~arg_0.a.d.d) % vec4<u32>(32u))), vec2<bool>(true, true), arg_0.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_4(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))), vec2<f32>(_wgslsmith_f_op_f32(func_1(vec3<f32>(-276f, -1000f, -366f), Struct_4(Struct_2(Struct_1(true, vec4<f32>(-579f, -696f, -1000f, 337f), false, vec4<u32>(51175u, 0u, 4294967295u, u_input.c), false), vec4<u32>(u_input.c, 63682u, 1u, 0u), vec2<bool>(true, true), Struct_1(false, vec4<f32>(967f, -127f, 929f, 767f), false, vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), false))), u_input.b, global1[_wgslsmith_index_u32(u_input.c, 24u)])), _wgslsmith_f_op_f32(select(1000f, -538f, true)))), 5918u | ~u_input.c, select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, all(vec4<bool>(false, false, true, false)), func_3().x), vec3<bool>(u_input.a <= 26082i, false, true))));
    let var_1 = vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, 44025u)), countOneBits(vec2<u32>(var_0.a.b.x, 33129u)) | var_0.a.d.d.yz), abs(u_input.c) | u_input.c), 14991u, _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~var_0.a.b.x), ~var_0.a.b.x), 0u), u_input.c);
    let var_2 = !all(!vec4<bool>(var_0.a.a.e == true, !var_0.a.c.x, true, var_0.a.c.x));
    var var_3 = _wgslsmith_mod_vec2_i32(u_input.d.yy, vec2<i32>(-1i) * -u_input.d.ww) << ((var_0.a.b.yy >> (~(~countOneBits(vec2<u32>(var_1.x, 113149u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = array<vec3<f32>, 24>();
    var var_4 = Struct_2(func_4(func_2(-669f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.b.x, var_0.a.a.b.x))), ~abs(var_0.a.d.d.x), select(select(vec3<bool>(true, var_0.a.c.x, false), func_2(-765f, var_0.a.a.b.wx).b, vec3<bool>(false, var_0.a.d.e, var_0.a.c.x)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(var_2, var_2, true), var_0.a.a.a))).a, _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(14250u), _wgslsmith_mult_u32(~629u, func_4(Struct_3(Struct_2(var_0.a.a, var_0.a.b, var_0.a.c, var_0.a.d), vec3<bool>(var_0.a.a.a, true, true), vec4<i32>(33158i, 0i, var_3.x, 2147483647i)), var_1.x, vec3<bool>(false, var_2, false)).a.d.x), ~(var_1.x >> (u_input.c % 32u)), 17749u), vec4<u32>(u_input.c, ~firstTrailingBit(u_input.c), ~_wgslsmith_mult_u32(var_0.a.a.d.x, var_0.a.a.d.x), 0u)), func_2(515f, vec2<f32>(var_0.a.a.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.a.a.b.x, var_0.a.d.b.x, false)))))).b.zz, var_0.a.d);
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(360f, var_0.a.a.b.x, true))), var_4.a.b.x)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_4.a.b.wy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.d.b.xx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_4.a.b.zy)), _wgslsmith_f_op_vec2_f32(min(var_0.a.d.b.zw, var_0.a.a.b.zy)), vec2<bool>(true, var_0.a.c.x)))))));
    var var_6 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.d.b) * _wgslsmith_f_op_vec4_f32(var_0.a.a.b * var_0.a.d.b)) * var_0.a.a.b), func_3().x, ~func_4(Struct_3(Struct_2(Struct_1(false, vec4<f32>(var_0.a.d.b.x, -1036f, 1044f, -921f), var_0.a.d.c, var_4.d.d, true), var_0.a.b, var_4.c, var_0.a.d), vec3<bool>(false, var_4.c.x, false), vec4<i32>(u_input.b, 26207i, 34250i, 1i)), abs(9136u), !vec3<bool>(false, var_0.a.d.a, false)).a.d, false), vec4<u32>(var_4.d.d.x, 0u | ~var_1.x, 58288u, ~(~var_4.a.d.x & ~0u)), select(var_4.c, func_3().yy, all(!vec4<bool>(var_2, var_0.a.a.c, true, var_0.a.c.x))), Struct_1(all(func_3().zzz), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_5.x, var_0.a.a.b.x, var_4.a.b.x, _wgslsmith_div_f32(var_5.x, 1288f)), vec4<f32>(_wgslsmith_f_op_f32(-120f * -144f), -1314f, func_2(var_0.a.d.b.x, var_0.a.d.b.xw).a.a.b.x, _wgslsmith_f_op_f32(-var_4.d.b.x)))), all(vec3<bool>(true, any(vec3<bool>(true, true, true)), func_2(var_0.a.a.b.x, vec2<f32>(var_4.d.b.x, var_4.a.b.x)).b.x)), var_4.b, false));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x | -52444i, 4294967295u & ~(~u_input.c));
}

