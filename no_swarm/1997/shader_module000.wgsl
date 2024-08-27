struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(2147483647i, -1i, -13691i, 0i), vec4<i32>(-5047i, 0i, 2147483647i, 0i), vec4<i32>(-25687i, 38880i, 33637i, 2147483647i), vec4<i32>(1i, -1i, 21943i, i32(-2147483648)), vec4<i32>(2147483647i, -1640i, 1i, 2147483647i), vec4<i32>(-40101i, -16655i, -56173i, 1i), vec4<i32>(2147483647i, 16074i, i32(-2147483648), 39137i), vec4<i32>(-1069i, -1i, 58011i, 1i), vec4<i32>(-13609i, 27985i, i32(-2147483648), -1i), vec4<i32>(64915i, -4134i, i32(-2147483648), 49i), vec4<i32>(2147483647i, 2147483647i, 1i, -24963i), vec4<i32>(-1i, 17283i, 2147483647i, 32039i), vec4<i32>(1i, 0i, -1i, -26634i), vec4<i32>(30279i, 1i, i32(-2147483648), -1i), vec4<i32>(46719i, -1686i, -34560i, -62428i), vec4<i32>(34189i, 2147483647i, 1i, -29646i), vec4<i32>(0i, 1i, 41794i, 82774i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -9453i), vec4<i32>(1i, 2147483647i, -19067i, 1i), vec4<i32>(0i, 1i, 3255i, 49461i), vec4<i32>(1i, 0i, i32(-2147483648), 14280i), vec4<i32>(1i, -63610i, 2147483647i, 22901i), vec4<i32>(43332i, -10262i, 0i, 0i), vec4<i32>(-10022i, -13106i, -17091i, 3306i), vec4<i32>(-3908i, -20692i, -49846i, 0i), vec4<i32>(56637i, 41678i, 23666i, 29402i), vec4<i32>(1i, 20352i, 1i, 1i), vec4<i32>(0i, 16174i, -67370i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 46829i, 8160i), vec4<i32>(-38917i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-18179i, 2147483647i, 0i, 0i));

var<private> global2: f32 = 1331f;

var<private> global3: vec3<f32>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_1(global3.x, vec3<bool>(true && any(vec4<bool>(true, true, true, true)), false, all(vec2<bool>(true, true))), select(~firstLeadingBit(35296u), max(~countOneBits(0u), 1u), false), select(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, -22674i), global0.x), -13316i, -15486i), _wgslsmith_clamp_vec3_i32(-(~u_input.b.xxz), u_input.b.wyy, ~vec3<i32>(-26292i, -12548i, global0.x) & -vec3<i32>(-6661i, -1i, 8865i)), select(select(true, true, true), all(vec4<bool>(false, true, true, false)), false)), ~(-_wgslsmith_dot_vec3_i32(u_input.b.xww, firstTrailingBit(u_input.b.xyz))));
    var_1 = Struct_1(547f, vec3<bool>(var_1.b.x, var_1.c != ~(~var_1.c), true), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~(~var_1.c), 14950u, 6070u), var_1.c), var_1.d << (abs(vec3<u32>(var_1.c, 4643u, 0u) >> (vec3<u32>(4294967295u, var_1.c, var_1.c) % vec3<u32>(32u))) % vec3<u32>(32u)), 10566i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f - 830f)), select(vec3<bool>(true, all(vec3<bool>(var_1.b.x, var_1.b.x, true)), select(var_1.b.x, false, var_1.b.x) & true), var_1.b, !var_1.b.x), var_1.c, u_input.b.yxy, abs(var_1.e));
    var_1 = Struct_1(840f, var_2.b, ~15875u, var_1.d, -446i);
    return !all(select(var_2.b.yx, vec2<bool>(false, true), !(!var_2.b.yy)));
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    let var_0 = global0.x;
    var var_1 = ~1i;
    let var_2 = select(!(!(!select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(true, false, arg_0.x, false), arg_0))), arg_0, select(select(select(vec4<bool>(false, arg_0.x, arg_0.x, true), arg_0, true), arg_0, false), arg_0, (global0.x & -17861i) == _wgslsmith_add_i32(0i, 8971i)));
    global0 = ~_wgslsmith_clamp_vec2_i32(u_input.b.wy, _wgslsmith_mod_vec2_i32(-(vec2<i32>(global0.x, -30448i) >> (vec2<u32>(1370u, 1u) % vec2<u32>(32u))), u_input.b.zw), vec2<i32>(-u_input.c & countOneBits(u_input.a), -2147483647i));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(global3.x + 1272f), global3.x, 1686f, global3.x);
    return var_3.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(func_3(vec4<f32>(-686f, -194f, global3.x, global3.x)), func_3(vec4<f32>(148f, -609f, -762f, -486f)), false, select(false, false, false))))), vec3<bool>(all(vec3<bool>(false, any(vec2<bool>(false, false)), false)), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), firstLeadingBit(countOneBits(17933u)), vec3<i32>(_wgslsmith_clamp_i32(global0.x, -2147483647i, u_input.b.x), global0.x, select(-1i, _wgslsmith_sub_i32(1240i, u_input.a), true)), ~max(~(-2147483647i | u_input.a), 24350i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-715f - global3.x), -1428f, true)), ~10579i >= countOneBits(var_0.d.x))), !var_0.b, ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_0.c, var_0.c)), ~(vec2<u32>(37616u, 19215u) & vec2<u32>(0u, var_0.c))), -vec3<i32>(-2147483647i, _wgslsmith_mult_i32(min(2465i, -6312i), u_input.a), _wgslsmith_clamp_i32(2147483647i, var_0.d.x, 0i)), _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(abs(u_input.b.yz), vec2<i32>(2147483647i, -1i)), i32(-1i) * -4663i));
    global0 = _wgslsmith_mod_vec2_i32(~(vec2<i32>(global0.x, var_0.d.x) ^ var_1.d.yy), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.d.xy, u_input.b.xy), vec2<i32>(-1i, global0.x) | vec2<i32>(11965i, -1i)) << ((firstLeadingBit(vec2<u32>(9455u, var_0.c)) >> (~vec2<u32>(var_0.c, var_1.c) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ vec2<i32>(-var_1.e, select(2110i, 18698i, !all(vec4<bool>(var_0.b.x, var_1.b.x, true, var_1.b.x))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.x)) - _wgslsmith_f_op_f32(select(var_1.a, -2372f, false))))))), !vec3<bool>(true, var_1.b.x, select(any(var_1.b), true, !var_1.b.x)), firstLeadingBit(~1u), vec3<i32>(1i, reverseBits(global0.x << (_wgslsmith_mod_u32(var_0.c, 1u) % 32u)), ~_wgslsmith_dot_vec3_i32(u_input.b.zxw, u_input.b.wzw) | (15321i ^ global0.x)), reverseBits(-(~(~0i))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_div_f32(-990f, var_0.a))))), var_1.b, 29221u, u_input.b.zzw, -1i);
    return !(!var_1.b);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = -119f;
    global0 = vec2<i32>(-arg_1.e, reverseBits(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-56824i, -34456i, global0.x), vec3<i32>(arg_1.d.x, u_input.b.x, 45015i)))));
    var var_1 = !arg_1.b.x;
    var_1 = any(!vec3<bool>(arg_1.b.x, true, false));
    let var_2 = 8522u;
    return _wgslsmith_sub_u32(arg_2 & firstLeadingBit(abs(var_2 | 4294967295u)), var_2);
}

fn func_6(arg_0: vec4<i32>) -> f32 {
    global3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(611f, global3.x, global3.x))) + vec3<f32>(_wgslsmith_f_op_f32(max(global3.x, 1871f)), -669f, _wgslsmith_f_op_f32(f32(-1f) * -1676f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1884f, 1484f, global3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(403f, global3.x, global3.x) + vec3<f32>(global3.x, global3.x, global3.x)))))));
    var var_0 = Struct_1(global3.x, !func_2(), 99765u, ~arg_0.zwz, select(-u_input.b.x, 0i, true) >> ((select(1u, ~11749u, -2147483647i < arg_0.x) ^ ~12185u) % 32u));
    var var_1 = var_0.b.zz;
    global3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-245f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, var_0.a))))));
    var var_2 = Struct_1(var_0.a, !(!vec3<bool>(all(vec2<bool>(var_0.b.x, true)), true, true)), var_0.c, _wgslsmith_clamp_vec3_i32(reverseBits(reverseBits(~var_0.d)), select(vec3<i32>(u_input.b.x, var_0.d.x & arg_0.x, firstLeadingBit(arg_0.x)), firstTrailingBit(-u_input.b.xxz), !(!var_1.x)), select(_wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_0.x, 44427i), vec3<i32>(1i, var_0.d.x, -1i)), firstTrailingBit(arg_0.zwx), var_0.b)), var_0.e);
    return var_2.a;
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = max(firstTrailingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, arg_0.d.x), vec2<i32>(arg_0.d.x, arg_0.d.x)) ^ vec2<i32>(arg_0.e, u_input.b.x), arg_0.d.zx)), _wgslsmith_div_vec2_i32(u_input.b.wy, u_input.b.xy));
    global2 = -485f;
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1148f), _wgslsmith_f_op_f32(func_6(global1[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(_wgslsmith_f_op_f32(-834f * -919f), func_2(), ~arg_0.c, ~vec3<i32>(23394i, 1i, u_input.a), u_input.b.x << (arg_0.c % 32u)), ~6537u), 31u)])));
    global0 = vec2<i32>(_wgslsmith_sub_i32(-4278i, -2147483647i), _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.e, 0i, global0.x), -u_input.b.yyx), -5700i));
    var var_0 = !(all(!select(vec3<bool>(true, false, arg_0.b.x), vec3<bool>(false, false, false), arg_0.b)) == (arg_0.b.x || !arg_0.b.x));
    return 1557i << (arg_0.c % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 31>();
    global0 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, u_input.c) | -((vec2<i32>(40773i, global0.x) ^ vec2<i32>(0i, 16114i)) << (max(vec2<u32>(28455u, 51172u), vec2<u32>(0u, 7198u)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(u_input.b.zw, vec2<i32>(_wgslsmith_div_i32(func_1(Struct_1(681f, vec3<bool>(false, false, false), 0u, vec3<i32>(global0.x, u_input.a, u_input.c), global0.x)), _wgslsmith_dot_vec3_i32(u_input.b.xyy, vec3<i32>(-1i, global0.x, 2147483647i))), u_input.c)), -u_input.b.xx);
    var var_0 = vec2<bool>(false, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(func_6(global1[_wgslsmith_index_u32(1u, 31u)])))));
    var_0 = vec2<bool>(u_input.a >= global0.x, var_0.x);
    var var_2 = select(func_2(), select(!vec3<bool>(var_0.x, u_input.b.x <= global0.x, true), func_2(), var_0.x), any(vec3<bool>(true, any(select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), vec2<bool>(var_0.x, false))), false)));
    global0 = u_input.b.yx;
    var var_3 = 35551u;
    var var_4 = u_input.c < -(~_wgslsmith_div_i32(u_input.c, ~2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1000f * global3.x), global3.x, _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.x, -595f, -1659f), vec3<f32>(global3.x, global3.x, var_1))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1, 899f, global3.x), vec3<f32>(var_1, global3.x, 761f))))))), vec3<u32>(~abs(84861u), ~_wgslsmith_add_u32(1u, 21409u), abs(1u)), vec2<i32>(reverseBits(-4722i), countOneBits(-4797i)) & vec2<i32>(_wgslsmith_add_i32(global0.x ^ global0.x, max(global0.x, u_input.c)), -global0.x), select(u_input.a, -min(u_input.b.x, 53755i), true) ^ -u_input.b.x, vec4<u32>(1977u, ~firstTrailingBit(~28304u), countOneBits(~(~60295u)), _wgslsmith_dot_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(66488u, 4294967295u)), vec2<u32>(1u, 0u)), firstLeadingBit(vec2<u32>(1u, 1u)))));
}

