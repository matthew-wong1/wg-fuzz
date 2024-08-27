struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_2, 4>;

var<private> global3: vec2<i32> = vec2<i32>(1i, 0i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec3<bool> {
    global0 = array<Struct_2, 5>();
    global3 = -_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-(~u_input.a), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.a.a.zy, u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(1176i, -2147483647i))), firstTrailingBit(u_input.a));
    global3 = vec2<i32>(-7729i, -(~(-39985i)));
    var var_0 = 24301u;
    global0 = array<Struct_2, 5>();
    return select(vec3<bool>(any(vec3<bool>(true, false != arg_2.d.x, true)), !arg_2.d.x, all(vec4<bool>(select(arg_2.d.x, arg_2.d.x, true), arg_2.d.x, true, !arg_2.d.x))), select(!(!select(vec3<bool>(true, arg_2.d.x, arg_2.d.x), vec3<bool>(true, arg_2.d.x, arg_2.d.x), false)), vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(abs(arg_3.x)) >= _wgslsmith_f_op_f32(-arg_3.x), arg_1 >= _wgslsmith_f_op_f32(516f * arg_0.x)), select(select(select(vec3<bool>(true, true, arg_2.d.x), vec3<bool>(arg_2.d.x, true, false), true), !vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x), any(vec4<bool>(arg_2.d.x, true, arg_2.d.x, false))), !vec3<bool>(false, arg_2.d.x, false), true)), arg_2.d.x | (all(vec2<bool>(false, true)) && true));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_0;
    global1 = arg_1.wx;
    let var_1 = !select(!func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1332f, 787f, 674f)), _wgslsmith_f_op_f32(f32(-1f) * -819f), Struct_2(arg_2, 2147483647i, vec2<f32>(627f, 1145f), vec2<bool>(true, true), vec2<f32>(-285f, -376f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(132f, -198f))), select(select(func_3(vec3<f32>(2478f, 1619f, -369f), 373f, Struct_2(arg_2, 0i, vec2<f32>(1000f, 694f), vec2<bool>(true, true), vec2<f32>(407f, 1000f)), vec2<f32>(-598f, -2455f)), vec3<bool>(true, true, true), func_3(vec3<f32>(362f, -2003f, 1608f), -1166f, Struct_2(arg_2, 2173i, vec2<f32>(-483f, -701f), vec2<bool>(false, false), vec2<f32>(584f, 526f)), vec2<f32>(509f, 246f))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true), true);
    global1 = u_input.a;
    return Struct_3(_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(var_0, 4294967295u, arg_0, arg_0)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, var_0, arg_0), vec4<u32>(var_0, arg_0, arg_0, var_0), vec4<u32>(arg_0, var_0, var_0, var_0))) << (vec4<u32>(var_0 & ~var_0, var_0, arg_0, ~arg_0) % vec4<u32>(32u)), _wgslsmith_clamp_u32(arg_0, arg_0, ~59587u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(982f * 528f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(306f, 2568f) + _wgslsmith_div_vec2_f32(vec2<f32>(192f, 1622f), vec2<f32>(-628f, -666f))))), ~(~max(global3.x, global3.x)) ^ -2147483647i, vec4<i32>(-1i, 2147483647i, _wgslsmith_sub_i32(-17035i, -30766i), -select(reverseBits(11579i), 0i, true)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec3<bool>) -> bool {
    var var_0 = func_2(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(4294967295u, 11000u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 55162u), vec2<u32>(1501u, 4294967295u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 7589u))), ~countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, arg_2, -2147483647i, 0i), vec4<i32>(1i, global1.x, arg_2, global1.x), vec4<i32>(u_input.a.x, 0i, -2147483647i, global1.x)), vec4<i32>(arg_2, arg_2, -2147483647i, 1i))), Struct_1(vec3<i32>(-2147483647i, -arg_2, -2147483647i)));
    global1 = select(_wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(global3.x, 12758i), -vec2<i32>(-17889i, var_0.d)), ~vec2<i32>(2147483647i & global3.x, global3.x & -10700i)), u_input.a, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(-185f - 350f), -886f)), _wgslsmith_f_op_f32(ceil(arg_0)), global0[_wgslsmith_index_u32(85717u, 5u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1188f, -1356f)))), _wgslsmith_f_op_vec2_f32(-var_0.c), select(!vec2<bool>(arg_1.x, true), func_3(vec3<f32>(var_0.c.x, -421f, var_0.c.x), arg_0, global0[_wgslsmith_index_u32(48794u, 5u)], vec2<f32>(-980f, 726f)).zx, false)))).zx);
    global0 = array<Struct_2, 5>();
    let var_1 = 25925u;
    let var_2 = ~abs(select(-var_0.e, select(vec4<i32>(-1i, var_0.d, global1.x, -18904i), -vec4<i32>(-25564i, 1582i, 2147483647i, 1i), vec4<bool>(arg_3.x, true, true, false)), true));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!all(vec4<bool>(true, true, true, true)), true || !func_1(466f, select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), 11984i, vec3<bool>(true, true, false)), any(select(func_3(vec3<f32>(-759f, 1208f, -921f), _wgslsmith_f_op_f32(sign(-989f)), Struct_2(Struct_1(vec3<i32>(-64735i, u_input.a.x, global1.x)), global3.x, vec2<f32>(1895f, -1000f), vec2<bool>(false, true), vec2<f32>(-1072f, 362f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1841f, 270f))).yx, select(vec2<bool>(true, false), func_3(vec3<f32>(-192f, -1119f, -1059f), -393f, Struct_2(Struct_1(vec3<i32>(-2147483647i, global1.x, 13547i)), global1.x, vec2<f32>(-3107f, 1522f), vec2<bool>(false, true), vec2<f32>(1315f, -418f)), vec2<f32>(1051f, 1000f)).xy, true), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1684f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1434f))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-904f)))), 1f));
    var var_2 = vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(13643i, global3.x) | 0i), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.x, 15775i), vec3<i32>(1i, 1i, 1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(17165i, global1.x, u_input.a.x), firstLeadingBit(vec3<i32>(-1514i, global3.x, u_input.a.x)), vec3<i32>(2147483647i, global3.x, 286i)), ~vec3<i32>(19752i, global1.x, global3.x) | (vec3<i32>(global3.x, -1i, -2147483647i) >> (vec3<u32>(4294967295u, 1u, 8190u) % vec3<u32>(32u)))), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, u_input.a.x, -2147483647i) << (vec3<u32>(59442u, 0u, 0u) % vec3<u32>(32u)), -vec3<i32>(-2147483647i, 20325i, 13735i)))) ^ abs(vec4<i32>(u_input.a.x, _wgslsmith_add_i32(-34111i, global1.x), global1.x, 1i) & _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, 1i, global3.x, -25100i), max(vec4<i32>(u_input.a.x, -22747i, -2147483647i, 2147483647i), vec4<i32>(2147483647i, global3.x, global3.x, u_input.a.x))));
    global1 = _wgslsmith_add_vec2_i32(~vec2<i32>(~(var_2.x | u_input.a.x), var_2.x), _wgslsmith_div_vec2_i32(u_input.a, select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 49895i, global3.x), vec3<i32>(2147483647i, global3.x, global1.x)), _wgslsmith_sub_i32(-59726i, global3.x)), vec2<i32>(33914i, u_input.a.x), select(func_3(vec3<f32>(var_1.x, -179f, -269f), 495f, Struct_2(Struct_1(var_2.ywx), -20970i, var_1, vec2<bool>(true, var_0.x), var_1), var_1).xz, vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)))));
    global2 = array<Struct_2, 4>();
    global0 = array<Struct_2, 5>();
    let var_3 = func_2(abs(~(~func_2(0u, vec4<i32>(11164i, global3.x, 1i, 1i), Struct_1(var_2.yzw)).a.x)), min(vec4<i32>(~global3.x, 2147483647i, 14563i << (0u % 32u), abs(global1.x)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), -select(vec4<i32>(global1.x, -1i, var_2.x, 22585i), vec4<i32>(global1.x, -68424i, 85915i, 2147483647i), false)), Struct_1(-var_2.xwx));
    global0 = array<Struct_2, 5>();
    global3 = _wgslsmith_mult_vec2_i32(-abs(vec2<i32>(1302i, global3.x)) ^ vec2<i32>(~u_input.a.x, 2147483647i), _wgslsmith_sub_vec2_i32(func_2(0u >> (_wgslsmith_mult_u32(2054u, 0u) % 32u), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_3.d, -19445i, -2147483647i, 1i)), var_3.e), Struct_1(abs(vec3<i32>(597i, -1i, u_input.a.x)))).e.xy, var_2.wx));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, u_input.a, var_3.e.zy, ~(~var_3.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.x)))))))));
}

