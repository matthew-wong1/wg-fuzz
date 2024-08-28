struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(337f, -167f, -45241i, 46502u, 1989u), Struct_1(-739f, -1000f, 1i, 1u, 17680u), Struct_1(-1000f, 2082f, -23474i, 103759u, 4294967295u), Struct_1(-923f, 904f, 0i, 1u, 1u), Struct_1(-1626f, 1883f, 1184i, 76018u, 1u), Struct_1(1756f, 445f, -46085i, 16305u, 12062u), Struct_1(-151f, 1040f, i32(-2147483648), 0u, 55558u), Struct_1(718f, 1000f, 2147483647i, 1u, 32522u), Struct_1(1000f, -1000f, -46092i, 2185u, 57805u), Struct_1(162f, -936f, 0i, 0u, 41298u), Struct_1(378f, -1278f, 1i, 4294967295u, 112282u), Struct_1(1000f, -1364f, 0i, 0u, 535u), Struct_1(1000f, 1861f, -37797i, 59796u, 15353u), Struct_1(1000f, -746f, 2147483647i, 41192u, 1u), Struct_1(238f, 1170f, -81727i, 1u, 1u), Struct_1(-649f, -280f, -35476i, 19273u, 4294967295u), Struct_1(1000f, -1000f, 895i, 1u, 68277u), Struct_1(-1000f, 512f, -1i, 20834u, 4294967295u), Struct_1(221f, 612f, 2147483647i, 21859u, 1u));

var<private> global2: array<bool, 13> = array<bool, 13>(false, true, true, true, false, true, false, false, true, true, false, true, false);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = max(u_input.c.x, ~(~(~(~23729i))));
    var var_1 = _wgslsmith_div_vec2_i32(u_input.a.yx, _wgslsmith_mult_vec2_i32(~(u_input.c.xx | vec2<i32>(var_0, -2147483647i)), u_input.c.zz)) >> (~_wgslsmith_sub_vec2_u32(u_input.e >> (~vec2<u32>(0u, 10637u) % vec2<u32>(32u)), vec2<u32>(0u, u_input.b >> (u_input.e.x % 32u))) % vec2<u32>(32u));
    var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-19616i, var_1.x), vec2<i32>(i32(-1i) * -12982i, -1i), ~select(-u_input.a.wz, -vec2<i32>(var_1.x, var_1.x), vec2<bool>(!global2[_wgslsmith_index_u32(u_input.d, 13u)], global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 13u)])));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1049u, ~u_input.d, min(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, u_input.b) << (u_input.b % 32u), ~113250u), _wgslsmith_div_u32(firstTrailingBit(u_input.e.x), u_input.d))), 13u)];
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 19u)];
    return var_3.e;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>) -> vec3<i32> {
    global1 = array<Struct_1, 19>();
    let var_0 = select(!(!vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.e.x), 13u)], false || global2[_wgslsmith_index_u32(u_input.b, 13u)], false, all(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 13u)])))), !(!(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(48738u, 13u)], false, global2[_wgslsmith_index_u32(arg_0.x, 13u)])))), !(!vec4<bool>(true, global2[_wgslsmith_index_u32(2084u, 13u)] & false, false, u_input.a.x != u_input.a.x)));
    let var_1 = global1[_wgslsmith_index_u32(~1475u, 19u)];
    let var_2 = var_0.wxy;
    let var_3 = global1[_wgslsmith_index_u32(reverseBits(func_3()), 19u)];
    return _wgslsmith_clamp_vec3_i32(~(-(~u_input.c << (~vec3<u32>(arg_0.x, 4294967295u, arg_0.x) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.a.x), _wgslsmith_sub_i32(firstLeadingBit(var_3.c), countOneBits(-2147483647i)), ~(i32(-1i) * -16311i) | _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, -2147483647i) | vec2<i32>(var_3.c, -3172i), vec2<i32>(0i, 0i))), u_input.a.zxy);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 19>();
    var var_0 = ~vec3<u32>(~func_3(), 1u, ~4294967295u);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_sub_u32(71433u, firstTrailingBit(~_wgslsmith_mod_u32(11893u, arg_0.e))), ~_wgslsmith_add_u32(var_0.x, func_3() & arg_0.e)), 19u)];
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 19u)];
    var var_3 = arg_0;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(399f - 1000f))), 542f)), -183f, 52377i, 0u, var_3.d);
}

fn func_1() -> bool {
    var var_0 = func_4(Struct_1(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-225f, -870f)), _wgslsmith_f_op_f32(1125f * 1128f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)))), _wgslsmith_dot_vec3_i32(u_input.c, func_2(vec2<u32>(u_input.e.x, u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-408f, 459f, -1969f, 285f) - vec4<f32>(1000f, -1686f, 1057f, 677f)))), ~44946u, reverseBits(u_input.d)));
    var var_1 = false;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(var_0.b, var_0.a, (~u_input.e.x >> (4294967295u % 32u)) < ~u_input.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))), ~u_input.c.x, countOneBits(~var_0.e), abs(~(~select(var_0.e, 96929u, global2[_wgslsmith_index_u32(4294967295u, 13u)]))));
    let var_3 = true;
    var var_4 = _wgslsmith_sub_vec3_i32((firstLeadingBit(u_input.a.xzz) >> (vec3<u32>(~100136u, ~u_input.d, var_2.d) % vec3<u32>(32u))) | (-(u_input.a.xyy >> (vec3<u32>(var_0.e, u_input.e.x, 4294967295u) % vec3<u32>(32u))) << (~(~vec3<u32>(1u, u_input.e.x, 4294967295u)) % vec3<u32>(32u))), min(reverseBits(u_input.c), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.c, var_0.c, var_0.c), u_input.a.wyw, vec3<i32>(-24533i, var_0.c, u_input.c.x)), reverseBits(u_input.c)) >> (vec3<u32>(countOneBits(var_0.e), max(0u, u_input.b), ~0u) % vec3<u32>(32u))));
    return true;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-507f)), 2624f, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) + _wgslsmith_div_f32(-199f, -1727f)), _wgslsmith_f_op_f32(-func_4(Struct_1(574f, -568f, -2147483647i, u_input.e.x, 4294967295u)).a), !global2[_wgslsmith_index_u32(~0u, 13u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(-1373f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f * -1016f) + -146f) - 1f)));
    return _wgslsmith_f_op_f32(-var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_5(func_1(), vec3<bool>(global2[_wgslsmith_index_u32(9441u, 13u)], false, global2[_wgslsmith_index_u32(u_input.e.x, 13u)]), -u_input.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f)))), -_wgslsmith_sub_i32(u_input.c.x, 48011i), min(~u_input.e.x, 4294967295u), 4294967295u << (0u % 32u));
    global0 = -20234i;
    global0 = var_0.c;
    global1 = array<Struct_1, 19>();
    let var_1 = global1[_wgslsmith_index_u32(func_3(), 19u)];
    global1 = array<Struct_1, 19>();
    let var_2 = true;
    var var_3 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c, u_input.c.x, u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -var_1.c, var_1.c), select(u_input.a.zzx | u_input.a.zyy, -vec3<i32>(1i, -2147483647i, var_0.c), vec3<bool>(true, global2[_wgslsmith_index_u32(15306u, 13u)], false))));
    var_3 = -u_input.a.yxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-737f)))))), (u_input.e << (min(u_input.e, ~u_input.e) % vec2<u32>(32u))) >> (~u_input.e % vec2<u32>(32u)), var_0.c, u_input.e, func_2(u_input.e, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(func_5(true, select(vec3<bool>(var_2, false, false), vec3<bool>(var_2, false, global2[_wgslsmith_index_u32(var_0.d, 13u)]), vec3<bool>(true, var_2, global2[_wgslsmith_index_u32(18484u, 13u)])), u_input.a.x)), 197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))).x);
}

