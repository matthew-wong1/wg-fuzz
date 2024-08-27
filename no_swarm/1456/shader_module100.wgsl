struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(false, false, false, 25102i, vec2<i32>(-36283i, 2147483647i)), Struct_4(true, true, false, 0i, vec2<i32>(2147483647i, 28790i)), Struct_4(true, true, true, -1i, vec2<i32>(22318i, -1i)), Struct_4(true, false, false, 2897i, vec2<i32>(6444i, 21178i)));

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(1000f), Struct_2(306f), Struct_2(-751f), Struct_2(-532f), Struct_2(-581f), Struct_2(-253f), Struct_2(-1815f), Struct_2(996f), Struct_2(-290f), Struct_2(106f), Struct_2(-529f), Struct_2(-893f), Struct_2(-303f), Struct_2(-552f), Struct_2(976f), Struct_2(292f), Struct_2(-499f), Struct_2(-394f), Struct_2(1000f), Struct_2(-838f), Struct_2(612f), Struct_2(-1617f), Struct_2(583f), Struct_2(-804f), Struct_2(2651f), Struct_2(1000f), Struct_2(-1181f), Struct_2(-731f), Struct_2(1115f));

var<private> global2: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(819f))) - 270f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(589f - -644f))), true, vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_add_i32(u_input.a, 59262i), u_input.a), _wgslsmith_div_i32(1i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a, u_input.a & 2147483647i, i32(-1i) * -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a) | reverseBits(vec3<i32>(u_input.a, -16623i, -2147483647i)))));
    var var_1 = Struct_1(var_0.a.x, firstLeadingBit(-2147483647i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1113f)))) + _wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))), vec3<bool>(all(vec4<bool>(u_input.d.x < u_input.d.x, !var_0.b, all(vec2<bool>(var_0.b, var_0.b)), true)), true, true), any(!select(!vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, var_0.b))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))))));
    global2 = !var_0.b;
    var var_3 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, var_1.c, true))), _wgslsmith_f_op_f32(-var_1.c)), !(!(!(var_0.b | false))), vec3<i32>(-23546i, 1i, var_0.c.x | _wgslsmith_div_i32(2147483647i, firstLeadingBit(-1i))));
    return u_input.b;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>) -> i32 {
    var var_0 = Struct_3(select(select(vec4<bool>(false, all(arg_1.yxz), arg_1.x, any(arg_0)), !arg_1, !arg_1), vec4<bool>(true, !(!arg_1.x), arg_0.x, u_input.a >= ~u_input.a), false), vec4<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c) ^ (u_input.c | 1u), min(1u, u_input.c), abs(func_3()) | (u_input.b & ~u_input.d.x), 14308u), reverseBits((max(u_input.b, 1u) ^ countOneBits(u_input.d.x)) << (~_wgslsmith_mod_u32(0u, u_input.b) % 32u)));
    var var_1 = Struct_5(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(1072f - -254f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(349f, 253f), vec2<f32>(402f, -2046f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(516f, 2017f), vec2<f32>(816f, 2401f), arg_0.x)), arg_0.xy)))), !any(select(select(vec3<bool>(arg_0.x, arg_1.x, arg_0.x), arg_0, vec3<bool>(var_0.a.x, true, var_0.a.x)), select(arg_0, vec3<bool>(arg_0.x, arg_1.x, arg_1.x), arg_0.x), any(var_0.a.yzx))), -abs(firstLeadingBit(vec3<i32>(-2147483647i, 52283i, u_input.a))));
    var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x) * -302f))), any(vec2<bool>(all(arg_0.xx), all(!arg_0))), var_1.c);
    var_0 = Struct_3(vec4<bool>(~(~var_0.b.x) > (~var_0.b.x << (abs(u_input.c) % 32u)), arg_0.x, any(var_0.a.zxy), var_1.b | true), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(firstLeadingBit(var_0.c), 4294967295u)), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(1u, ~u_input.d.x, u_input.d.x)), 41345u), var_0.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1942f, -175f, var_1.a.x))))));
    return _wgslsmith_mod_i32(~_wgslsmith_add_i32(~u_input.a & -var_1.c.x, 1i), min(u_input.a, abs(-2147483647i)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_5 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-307f - 742f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-122f + 429f), -268f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(232f - 1102f), 1087f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(213f, -230f)))))), -1535f);
    global0 = array<Struct_4, 4>();
    var var_1 = _wgslsmith_sub_i32(min(u_input.a, -u_input.a), _wgslsmith_sub_i32(u_input.a, min(u_input.a, ~abs(u_input.a))));
    let var_2 = u_input.a >> (u_input.d.x % 32u);
    var var_3 = -2147483647i;
    return Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-342f - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))), false, -vec3<i32>(-(~(-1i)), u_input.a, _wgslsmith_add_i32(func_2(arg_1.zwx, arg_1), reverseBits(var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~u_input.d.xz << (~vec2<u32>(32419u, 13326u) % vec2<u32>(32u))), ~_wgslsmith_clamp_vec2_u32(u_input.d.xx, u_input.d.yz & vec2<u32>(1u, u_input.c), ~u_input.d.zx)) << (u_input.d.x % 32u);
    let var_1 = func_1(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 29888u)), abs(u_input.d.xy)), u_input.d.zx), countOneBits(~(~0u)), 0u), !vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)) || false, true));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mult_i32(2147483647i, var_1.c.x)), var_1.c.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.c.yz, var_1.c.xx & var_1.c.zz), vec2<i32>(abs(10871i), -37241i)), -72562i, 2147483647i), -(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, var_1.c.x, -2147483647i, -3753i)), vec4<i32>(var_1.c.x, var_1.c.x, u_input.a, var_1.c.x) << (vec4<u32>(u_input.d.x, 1u, 2469u, 4294967295u) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 57123u, 115588u, 33962u), max(vec4<u32>(45431u, var_0, 26683u, 1u), vec4<u32>(730u, var_0, u_input.c, var_0))) % vec4<u32>(32u))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_1.a.x), func_1(~(~vec3<u32>(var_0, u_input.c, 28441u)), vec4<bool>(_wgslsmith_f_op_f32(-var_1.a.x) < var_1.a.x, !any(vec4<bool>(false, true, var_1.b, false)), var_1.b, ~var_1.c.x <= 0i)).c.x, _wgslsmith_f_op_f32(trunc(var_1.a.x)), vec3<bool>(!var_1.b, !var_1.b, var_1.b), var_1.c.x > _wgslsmith_clamp_i32(countOneBits(var_1.c.x), _wgslsmith_mod_i32(u_input.a, -1i), ~max(var_1.c.x, var_1.c.x)));
    global0 = array<Struct_4, 4>();
    global0 = array<Struct_4, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, var_1.c.x, var_3.b), ~(~var_1.c), vec3<i32>(6497i, -713i, ~_wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(-82495i, u_input.a, -23115i)))), _wgslsmith_add_vec2_i32(vec2<i32>(func_2(var_3.d, vec4<bool>(true, var_3.e, false, true)), -var_1.c.x >> (49999u % 32u)), abs(-(vec2<i32>(var_1.c.x, -29037i) ^ vec2<i32>(1i, var_3.b)))), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0, ~(~56374u)), _wgslsmith_div_vec2_u32(abs(countOneBits(u_input.d.zx)), ~vec2<u32>(u_input.c, 0u))), firstTrailingBit(var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1187f));
}

