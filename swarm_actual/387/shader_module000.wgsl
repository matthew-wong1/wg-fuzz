struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(2147483647i, 0i, 1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32) -> vec3<i32> {
    var var_0 = Struct_2(vec3<i32>(firstTrailingBit(1i), -5975i, 0i));
    var_0 = Struct_2(-vec3<i32>(0i, abs(_wgslsmith_div_i32(67109i, u_input.a)), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, var_0.a.x << (0u % 32u))));
    var_0 = Struct_2(vec3<i32>(~(~2147483647i | -global0.a.x), -var_0.a.x, var_0.a.x));
    let var_1 = _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(min(49663u, 39692u), reverseBits(4294967295u), max(37011u, 88677u), 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)) & _wgslsmith_mult_u32(~_wgslsmith_mult_u32(7660u, 0u), 1u);
    let var_2 = Struct_3(vec4<f32>(arg_0, arg_0, -270f, arg_0), Struct_1(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, var_1, var_1, var_1), vec4<u32>(1u, 0u, var_1, 25619u))), ~(-1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), vec3<bool>(all(vec4<bool>(false, false, true, true)), arg_0 > 431f, true), true), vec3<u32>(var_1, ~firstTrailingBit(var_1), _wgslsmith_mult_u32(4294967295u, var_1))), Struct_1(_wgslsmith_add_u32(1u, (76184u >> (var_1 % 32u)) & 0u), ~(-23491i), _wgslsmith_f_op_f32(select(-1130f, arg_0, ~var_1 >= 30002u)), vec3<bool>(false, true, true), ~(~(~vec3<u32>(var_1, var_1, 1u)))));
    return -vec3<i32>(-global0.a.x, -var_2.c.b << (_wgslsmith_sub_u32(101777u, var_1) % 32u), 23685i);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = -1i;
    let var_1 = arg_0;
    var_0 = -56547i;
    var_0 = global0.a.x;
    let var_2 = Struct_2(func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-621f * arg_3.c))))), 43173i, arg_3.b));
    return false;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_1 {
    global0 = Struct_2(vec3<i32>(arg_0.b.b, arg_0.b.b, select(u_input.a, min(1i, global0.a.x), func_2(arg_0, global0.a.yy, true, arg_0.c))) << (vec3<u32>(20456u, _wgslsmith_div_u32(~21589u, 57828u), _wgslsmith_dot_vec4_u32(arg_1, ~arg_1)) % vec3<u32>(32u)));
    let var_0 = ~(~(~(vec3<i32>(1i, 18917i, arg_0.b.b) ^ vec3<i32>(67787i, u_input.a, global0.a.x))));
    global0 = Struct_2(vec3<i32>(var_0.x, firstTrailingBit(_wgslsmith_div_i32(-2147483647i ^ u_input.a, global0.a.x | arg_0.c.b)), firstLeadingBit(global0.a.x)));
    return arg_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(-(~firstTrailingBit(vec3<i32>(32832i, 0i, -43877i))));
    var var_1 = func_1(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(trunc(-330f)), _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(f32(-1f) * -346f)), arg_2.c, arg_1.c), func_1(Struct_3(vec4<f32>(119f, -511f, 909f, arg_1.c), func_1(Struct_3(vec4<f32>(arg_2.c, 759f, 1501f, 468f), arg_1, Struct_1(0u, -14194i, arg_1.c, vec3<bool>(arg_1.d.x, arg_2.d.x, false), arg_2.e)), vec4<u32>(arg_2.e.x, 33615u, arg_1.a, 12206u)), arg_2), ~vec4<u32>(arg_1.e.x, arg_2.e.x, 20749u, arg_2.e.x)), func_1(Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, arg_1.c, -776f, arg_1.c), vec4<f32>(766f, arg_1.c, arg_1.c, arg_1.c)), arg_1, arg_1), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.e.x, 4294967295u, arg_2.e.x, arg_1.a), vec4<u32>(62627u, 4294967295u, arg_2.a, arg_2.a)))), vec4<u32>(min(arg_1.e.x, 4294967295u), arg_1.e.x, arg_1.a, ~42082u | (abs(5136u) >> (arg_2.a % 32u)))).d.xz;
    var_1 = !func_1(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-959f, -1261f, -2487f, arg_1.c) * vec4<f32>(497f, arg_2.c, arg_1.c, arg_2.c)), arg_2, Struct_1(arg_2.e.x ^ arg_2.a, arg_0.a.x, 1343f, vec3<bool>(arg_1.d.x, arg_1.d.x, false), arg_1.e)), vec4<u32>(~(~arg_1.e.x), abs(arg_1.e.x), ~(~65645u), arg_1.e.x)).d.yy;
    let var_2 = select(arg_2.d, !(!(!select(vec3<bool>(arg_2.d.x, false, arg_2.d.x), arg_2.d, var_1.x))), select(func_1(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, 1553f, 614f, -513f)), func_1(Struct_3(vec4<f32>(arg_1.c, -695f, arg_1.c, arg_1.c), Struct_1(arg_1.e.x, -28802i, arg_1.c, arg_2.d, arg_1.e), Struct_1(arg_2.e.x, -33960i, arg_1.c, vec3<bool>(arg_2.d.x, false, false), arg_2.e)), vec4<u32>(75221u, 11884u, arg_2.a, 1u)), Struct_1(arg_1.a, var_0.a.x, arg_1.c, arg_2.d, arg_2.e)), vec4<u32>(~31611u, 3360u, arg_2.a, 1u)).d.x, func_2(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(120f, 257f, -1028f, arg_2.c) + vec4<f32>(848f, arg_1.c, arg_2.c, arg_2.c)), arg_2, func_1(Struct_3(vec4<f32>(arg_2.c, arg_2.c, arg_1.c, arg_2.c), Struct_1(arg_2.a, 5789i, 485f, arg_2.d, vec3<u32>(3701u, 4294967295u, arg_2.e.x)), Struct_1(38188u, 1i, 660f, vec3<bool>(true, false, false), vec3<u32>(arg_2.e.x, 1u, arg_2.e.x))), vec4<u32>(1u, arg_2.e.x, arg_1.e.x, arg_2.a))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-14770i, -30082i), firstTrailingBit(global0.a.xy), _wgslsmith_div_vec2_i32(arg_0.a.zx, var_0.a.zz)), true & var_1.x, func_1(Struct_3(vec4<f32>(-269f, 1000f, arg_2.c, 298f), Struct_1(33758u, -2147483647i, arg_1.c, vec3<bool>(arg_1.d.x, true, var_1.x), arg_2.e), arg_2), vec4<u32>(arg_2.a, 4294967295u, arg_1.a, 0u))), true));
    var var_3 = ~vec2<u32>(arg_2.e.x, arg_2.a);
    return Struct_2(vec3<i32>(-abs(-arg_0.a.x), i32(-1i) * -2147483647i, -_wgslsmith_div_i32(u_input.a, u_input.a)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> bool {
    global0 = Struct_2(vec3<i32>(40644i, arg_2.b.b, -31745i));
    let var_0 = Struct_2(-_wgslsmith_add_vec3_i32(arg_1.a, ~(~arg_1.a)));
    return arg_2.c.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-709f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-493f, -967f)))));
    let var_1 = vec4<bool>(func_5(~vec2<u32>(1u, 1u), func_4(Struct_2(abs(global0.a)), func_1(Struct_3(vec4<f32>(-232f, 693f, -603f, -1000f), Struct_1(1u, u_input.a, -349f, vec3<bool>(false, false, false), vec3<u32>(0u, 16818u, 0u)), Struct_1(51412u, -2147483647i, 846f, vec3<bool>(true, true, true), vec3<u32>(0u, 50186u, 3621u))), firstLeadingBit(vec4<u32>(0u, 0u, 4294967295u, 41001u))), func_1(Struct_3(vec4<f32>(-1129f, 1204f, -438f, 161f), Struct_1(4294967295u, 19630i, -1814f, vec3<bool>(true, false, true), vec3<u32>(0u, 63774u, 1u)), Struct_1(1u, u_input.a, -758f, vec3<bool>(true, true, true), vec3<u32>(73468u, 4294967295u, 65311u))), vec4<u32>(1u, 1u, 1u, 1u))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), 850f, -1383f, _wgslsmith_f_op_f32(abs(715f))), func_1(Struct_3(vec4<f32>(-1162f, 1308f, 332f, -1102f), Struct_1(32150u, global0.a.x, -809f, vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 35284u)), Struct_1(33259u, 1i, -2010f, vec3<bool>(true, false, true), vec3<u32>(4294967295u, 11665u, 4294967295u))), ~vec4<u32>(4294967295u, 11958u, 1u, 4294967295u)), func_1(Struct_3(vec4<f32>(-1000f, -644f, -372f, -2186f), Struct_1(0u, -1i, 943f, vec3<bool>(true, true, false), vec3<u32>(1860u, 0u, 36543u)), Struct_1(0u, u_input.a, 960f, vec3<bool>(true, false, true), vec3<u32>(4294967295u, 1u, 4294967295u))), vec4<u32>(4294967295u, 1u, 4294967295u, 0u))), ~72243i), !((true & func_1(Struct_3(vec4<f32>(106f, 395f, -729f, -909f), Struct_1(13514u, 37389i, 1000f, vec3<bool>(false, true, false), vec3<u32>(31799u, 16880u, 1u)), Struct_1(94081u, 5739i, 567f, vec3<bool>(true, false, false), vec3<u32>(39693u, 88515u, 5837u))), vec4<u32>(0u, 49303u, 47482u, 4294967295u)).d.x) | true), true, true);
    let var_2 = Struct_1(~_wgslsmith_mult_u32(func_1(Struct_3(vec4<f32>(-783f, -118f, -230f, 359f), Struct_1(9650u, -18578i, 521f, vec3<bool>(false, true, true), vec3<u32>(1u, 27041u, 0u)), Struct_1(4294967295u, 14775i, -107f, var_1.zxy, vec3<u32>(4294967295u, 48224u, 43887u))), ~vec4<u32>(94662u, 6957u, 25642u, 1u)).e.x, max(~1u, max(31139u, 0u))), u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-975f)) - _wgslsmith_f_op_f32(119f * -405f)) + _wgslsmith_f_op_f32(abs(-1145f))), _wgslsmith_f_op_f32(-309f + -126f), true)), !vec3<bool>(true, var_1.x, true), reverseBits(vec3<u32>(_wgslsmith_sub_u32(1u, 1u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(51434u, 13933u, 1u, 4294967295u), vec4<u32>(61765u, 1u, 53853u, 69359u))) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(68717u, 8700u, 4294967295u), vec3<u32>(1u, 1u, 1u))));
    var var_3 = reverseBits(var_2.b);
    let var_4 = func_1(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.c, -2384f, -578f, -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, -109f, var_2.c, -1000f)))), var_2, Struct_1(18623u, _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_2.b, -1i), -var_2.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c, var_2.c) * var_2.c), select(select(var_2.d, var_2.d, var_2.d.x), func_1(Struct_3(vec4<f32>(-133f, -2779f, -1173f, var_2.c), Struct_1(0u, -37503i, var_2.c, var_2.d, vec3<u32>(4294967295u, 4314u, 4294967295u)), Struct_1(1u, 0i, var_2.c, vec3<bool>(var_1.x, true, false), var_2.e)), vec4<u32>(42987u, 1647u, var_2.a, 28712u)).d, select(vec3<bool>(false, false, var_1.x), var_2.d, var_2.d.x)), (vec3<u32>(19301u, 0u, 0u) | var_2.e) & var_2.e)), vec4<u32>(_wgslsmith_dot_vec2_u32(select(~var_2.e.yy, min(var_2.e.zy, vec2<u32>(var_2.e.x, 1u)), var_2.d.yy), ~var_2.e.zy), 0u, var_2.a, _wgslsmith_sub_u32(var_2.a, _wgslsmith_div_u32(32668u, 4294967295u))));
    var var_5 = func_1(Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c, var_4.c, var_2.c, var_4.c))))), Struct_1(~0u, _wgslsmith_clamp_i32(var_2.b, var_4.b, var_2.b) | 14175i, _wgslsmith_f_op_f32(-1f), func_1(Struct_3(vec4<f32>(-1449f, -947f, var_2.c, var_2.c), var_4, var_2), vec4<u32>(var_4.e.x, 18181u, 29780u, 1u)).d, var_2.e & countOneBits(vec3<u32>(var_2.a, 0u, 11602u))), var_2), vec4<u32>(reverseBits(countOneBits(0u)) | var_4.e.x, reverseBits(var_2.e.x), 4500u, var_4.a)).d.xy;
    var var_6 = Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c, 731f, -1529f, var_2.c))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(-132f, 545f)), var_2.c, _wgslsmith_f_op_f32(floor(var_4.c)), -1605f), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.c)), 445f, _wgslsmith_div_f32(2098f, var_4.c), var_2.c))))), func_1(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(var_2.c * 1000f), var_4.c, var_2.c, -1600f), func_1(Struct_3(vec4<f32>(var_2.c, var_2.c, 1144f, 224f), var_2, Struct_1(var_2.a, 2147483647i, -1333f, var_4.d, var_2.e)), firstLeadingBit(vec4<u32>(var_2.a, 1u, var_4.e.x, 18417u))), var_4), vec4<u32>(0u, firstLeadingBit(select(var_2.e.x, 27267u, var_5.x)), abs(~var_4.a), 4294967295u)), var_2);
    var var_7 = func_1(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_6.a, vec4<f32>(var_6.b.c, 1000f, var_4.c, var_6.c.c)))), Struct_1(_wgslsmith_clamp_u32(0u, ~1u, var_2.a), 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-161f, var_2.c, true)), _wgslsmith_f_op_f32(abs(var_6.a.x))), vec3<bool>(!var_6.b.d.x, any(vec4<bool>(var_1.x, var_2.d.x, var_2.d.x, var_2.d.x)), var_6.b.d.x), vec3<u32>(~var_2.e.x, 4294967295u, _wgslsmith_div_u32(var_2.e.x, var_6.c.a))), var_6.c), max(~vec4<u32>(var_2.a, var_2.a, var_6.c.e.x, var_4.e.x) << (_wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, 1u, var_4.e.x, 0u)), vec4<u32>(0u, 34933u, var_4.e.x, var_2.a)) % vec4<u32>(32u)), vec4<u32>(var_6.c.a, ~62137u, ~var_6.b.a, _wgslsmith_sub_u32(var_4.e.x, var_6.b.e.x)) | max(~vec4<u32>(4294967295u, var_4.a, 4294967295u, 17120u), vec4<u32>(4294967295u, var_6.c.a, 1u, var_2.a) & vec4<u32>(var_6.c.e.x, 27539u, var_4.a, 50989u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, 7830i, _wgslsmith_add_i32(var_6.c.b, var_6.b.b ^ _wgslsmith_add_i32(u_input.a, global0.a.x))), vec2<u32>(~(_wgslsmith_clamp_u32(var_7.e.x, 61105u, 1u) >> ((4294967295u ^ var_4.e.x) % 32u)), ~0u), ~select(vec3<u32>(~18301u, ~var_4.a, ~var_7.a), var_4.e, !select(var_4.d, var_7.d, var_1.www)), var_2.e);
}

