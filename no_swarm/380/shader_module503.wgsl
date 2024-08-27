struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1i, vec3<bool>(false, false, false), false, -1336f), Struct_1(i32(-2147483648), vec3<bool>(false, true, false), false, 797f), Struct_1(-1i, vec3<bool>(false, true, true), true, 478f), Struct_1(1i, vec3<bool>(true, false, false), true, -885f), Struct_1(0i, vec3<bool>(false, false, true), true, -357f), Struct_1(0i, vec3<bool>(true, true, false), true, 2207f), Struct_1(-1i, vec3<bool>(true, false, false), false, 1674f), Struct_1(-55991i, vec3<bool>(true, true, true), true, 285f), Struct_1(0i, vec3<bool>(false, false, true), false, 830f), Struct_1(0i, vec3<bool>(false, false, false), true, -2052f), Struct_1(1i, vec3<bool>(true, false, false), true, 1000f), Struct_1(-360i, vec3<bool>(false, true, false), true, 369f), Struct_1(27523i, vec3<bool>(false, true, false), true, 720f), Struct_1(0i, vec3<bool>(true, false, true), true, 239f), Struct_1(i32(-2147483648), vec3<bool>(false, true, true), false, -1301f));

var<private> global1: array<f32, 27> = array<f32, 27>(-1812f, 299f, -1765f, 849f, 1000f, 1337f, 1516f, 681f, 107f, -343f, 391f, 162f, -1000f, 1627f, 1000f, 900f, -580f, -305f, 336f, 538f, -870f, -182f, 825f, 1235f, -1690f, 440f, -818f);

var<private> global2: array<vec3<f32>, 9>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-413f))))), _wgslsmith_f_op_f32(-445f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-563f - -1224f))))));
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(~arg_0.b), 15u)];
    var_1 = global0[_wgslsmith_index_u32(arg_0.b, 15u)];
    let var_2 = _wgslsmith_f_op_f32(ceil(795f));
    global0 = array<Struct_1, 15>();
    return -vec3<i32>(34603i, i32(-1i) * -15848i, var_1.a);
}

fn func_2() -> vec3<bool> {
    var var_0 = (-_wgslsmith_mod_vec3_i32(func_3(Struct_3(-8549i, 1u, vec4<bool>(true, true, true, false)), Struct_2(vec3<bool>(true, true, false), 22003i, vec3<u32>(4294967295u, 41511u, 8315u))), select(vec3<i32>(-2147483647i, 1i, u_input.b), vec3<i32>(-2080i, u_input.a.x, 57957i), true)) >> ((firstLeadingBit(~vec3<u32>(40492u, 41341u, 16148u)) & select(vec3<u32>(1u, 52545u, 12336u), select(vec3<u32>(31308u, 0u, 74926u), vec3<u32>(4294967295u, 48867u, 9458u), vec3<bool>(true, false, false)), false)) % vec3<u32>(32u))) >> (select(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, 47531u, 27719u)), ~(~vec3<u32>(0u, 68982u, 14472u)), abs(vec3<u32>(1u, 1u, 1u))), vec3<u32>(firstTrailingBit(1u), abs(_wgslsmith_mult_u32(5574u, 1u)), ~1u), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, u_input.b > 2147483647i, all(vec4<bool>(false, true, false, true))), vec3<bool>(-1i >= u_input.b, true, any(vec4<bool>(false, true, true, false))))) % vec3<u32>(32u));
    var var_1 = Struct_3(54502i, ~0u, !select(vec4<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(false, true, false, false)), any(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, true, false, false))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(false, false, true)), false, true, true)));
    let var_2 = var_1.b;
    global0 = array<Struct_1, 15>();
    return select(var_1.c.yzw, select(vec3<bool>(var_1.c.x | (-2147483647i <= var_1.a), var_1.c.x, var_1.c.x), vec3<bool>(any(!var_1.c.yw), ~var_0.x <= ~var_1.a, !var_1.c.x), vec3<bool>(var_1.c.x, var_1.c.x, false)), var_1.c.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: i32) -> vec4<f32> {
    let var_0 = arg_0.xx;
    global0 = array<Struct_1, 15>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 27u)]))));
    var var_2 = Struct_1(~(-25647i), func_2(), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u << (abs(0u) % 32u), 27u)])));
    let var_3 = ~countOneBits(~(min(48301u, 0u) ^ firstTrailingBit(14120u)));
    return vec4<f32>(global1[_wgslsmith_index_u32(40074u, 27u)], _wgslsmith_f_op_f32(-var_2.d), 1130f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f), var_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 15u)];
    var var_1 = var_0.b;
    let var_2 = -firstLeadingBit(vec3<i32>(-(u_input.a.x >> (0u % 32u)), -u_input.a.x, u_input.b >> (1u % 32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1147f, var_0.d, -890f, global1[_wgslsmith_index_u32(50264u, 27u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-841f, -326f, -569f, 217f) - vec4<f32>(-219f, global1[_wgslsmith_index_u32(132605u, 27u)], var_0.d, global1[_wgslsmith_index_u32(53173u, 27u)]))))) + _wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(_wgslsmith_mod_i32(-65648i, var_0.a), u_input.a.x, select(1i, u_input.a.x, var_1.x), ~(-17098i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, 0i), vec4<i32>(-31820i, var_0.a, 1045i, var_2.x)), var_0.a))));
    let var_4 = select(!select(vec4<bool>(all(vec2<bool>(var_0.c, var_1.x)), false && var_0.b.x, var_0.c, var_3.x != var_3.x), vec4<bool>(!var_1.x, select(var_0.c, var_1.x, var_0.b.x), true, true), !select(vec4<bool>(var_0.b.x, var_1.x, true, var_0.b.x), vec4<bool>(var_0.c, true, true, true), var_1.x)), select(vec4<bool>(~var_2.x == u_input.a.x, !(var_0.a >= 31522i), func_2().x, false), vec4<bool>(var_1.x, any(vec4<bool>(true, var_0.b.x, false, true)), true, var_0.d <= _wgslsmith_f_op_f32(-877f * 828f)), select(vec4<bool>(true, true, -1661f > var_0.d, var_0.b.x), select(vec4<bool>(true, true, false, var_0.b.x), !vec4<bool>(var_1.x, true, var_1.x, true), !vec4<bool>(true, var_0.c, true, var_0.b.x)), vec4<bool>(var_0.b.x && true, true, var_0.c, var_1.x))), var_1.x && all(vec4<bool>(false, func_2().x, true, var_0.c)));
    var var_5 = Struct_3(~2147483647i, _wgslsmith_mod_u32(1u, 1u), select(select(!select(var_4, var_4, var_4), var_4, select(var_4, var_4, var_4.x & false)), select(select(!var_4, select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_0.c, false), false), var_4), !var_4, select(!var_4, vec4<bool>(var_4.x, var_4.x, false, false), true && var_4.x)), true));
    var_5 = Struct_3(var_5.a, var_5.b, vec4<bool>(!any(var_0.b), any(vec4<bool>(true || var_0.b.x, true, false, true)), var_5.b < (min(0u, var_5.b) ^ reverseBits(22179u)), var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~reverseBits(var_5.b), _wgslsmith_add_u32(var_5.b, 15648u) ^ 1u), vec3<f32>(1682f, -875f, var_3.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -110f, -2681f))))), abs(_wgslsmith_add_vec3_u32((vec3<u32>(0u, 4294967295u, var_5.b) & vec3<u32>(var_5.b, var_5.b, 7718u)) | vec3<u32>(102215u, var_5.b, var_5.b), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, var_5.b), vec3<u32>(var_5.b, var_5.b, var_5.b)))), vec2<u32>(var_5.b, var_5.b));
}

