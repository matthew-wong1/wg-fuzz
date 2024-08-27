struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_5, 13> = array<Struct_5, 13>(Struct_5(Struct_3(vec3<bool>(false, true, false), 1i, -11272i, vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec2<u32>(4082u, 1u)), Struct_2(false, true, Struct_1(vec2<u32>(93209u, 0u), -1725f, -1294f, 2147483647i, vec2<u32>(0u, 34376u))), 4294967295u, Struct_1(vec2<u32>(35400u, 4294967295u), 1023f, -225f, 1i, vec2<u32>(69609u, 726u)), vec3<u32>(28437u, 1u, 4294967295u)), Struct_5(Struct_3(vec3<bool>(false, true, true), 2147483647i, 2147483647i, vec3<i32>(-1i, i32(-2147483648), 12939i), vec2<u32>(11605u, 2266u)), Struct_2(true, false, Struct_1(vec2<u32>(0u, 0u), 703f, -1917f, 0i, vec2<u32>(14088u, 23997u))), 0u, Struct_1(vec2<u32>(0u, 47863u), 955f, 576f, 2147483647i, vec2<u32>(13477u, 28596u)), vec3<u32>(1u, 39498u, 62768u)), Struct_5(Struct_3(vec3<bool>(true, false, false), -36562i, 15601i, vec3<i32>(44060i, 48813i, 51134i), vec2<u32>(33559u, 7709u)), Struct_2(false, false, Struct_1(vec2<u32>(0u, 69264u), -431f, -1000f, -19496i, vec2<u32>(0u, 6950u))), 1u, Struct_1(vec2<u32>(11939u, 7697u), -261f, 1126f, 30585i, vec2<u32>(13034u, 0u)), vec3<u32>(33462u, 66359u, 4294967295u)), Struct_5(Struct_3(vec3<bool>(false, true, false), -5554i, 1i, vec3<i32>(45662i, -28192i, 0i), vec2<u32>(1u, 45479u)), Struct_2(true, true, Struct_1(vec2<u32>(4294967295u, 1u), 402f, 1697f, 22014i, vec2<u32>(62023u, 9942u))), 18903u, Struct_1(vec2<u32>(81902u, 1u), -1390f, -1040f, 253i, vec2<u32>(0u, 4294967295u)), vec3<u32>(1u, 30543u, 4294967295u)), Struct_5(Struct_3(vec3<bool>(true, false, false), 2147483647i, 56058i, vec3<i32>(-1i, 1i, -1i), vec2<u32>(1u, 4294967295u)), Struct_2(true, false, Struct_1(vec2<u32>(1u, 55912u), 1602f, -383f, -16530i, vec2<u32>(19495u, 46704u))), 4294967295u, Struct_1(vec2<u32>(1u, 122512u), 849f, 240f, 1i, vec2<u32>(24592u, 0u)), vec3<u32>(21371u, 39699u, 7762u)), Struct_5(Struct_3(vec3<bool>(false, true, true), 0i, -1i, vec3<i32>(0i, -28222i, -9198i), vec2<u32>(97372u, 23019u)), Struct_2(true, false, Struct_1(vec2<u32>(26074u, 1u), 677f, 494f, i32(-2147483648), vec2<u32>(1u, 1u))), 4294967295u, Struct_1(vec2<u32>(62592u, 24437u), 703f, -1511f, 2147483647i, vec2<u32>(11697u, 33184u)), vec3<u32>(32379u, 1u, 53364u)), Struct_5(Struct_3(vec3<bool>(true, true, true), -14822i, 48062i, vec3<i32>(0i, -1i, i32(-2147483648)), vec2<u32>(53375u, 16849u)), Struct_2(false, false, Struct_1(vec2<u32>(12867u, 0u), -150f, 143f, -25846i, vec2<u32>(0u, 1u))), 0u, Struct_1(vec2<u32>(14512u, 0u), 1095f, 3108f, 14105i, vec2<u32>(10231u, 38114u)), vec3<u32>(4294967295u, 1u, 0u)), Struct_5(Struct_3(vec3<bool>(false, true, false), -20040i, i32(-2147483648), vec3<i32>(2147483647i, -8155i, 25612i), vec2<u32>(0u, 4294967295u)), Struct_2(false, false, Struct_1(vec2<u32>(31340u, 4294967295u), 193f, 567f, i32(-2147483648), vec2<u32>(0u, 4294967295u))), 35821u, Struct_1(vec2<u32>(0u, 94517u), 737f, 541f, -22233i, vec2<u32>(29095u, 1u)), vec3<u32>(78256u, 62510u, 66288u)), Struct_5(Struct_3(vec3<bool>(true, true, false), 41651i, -1823i, vec3<i32>(7923i, -70474i, -1759i), vec2<u32>(20906u, 0u)), Struct_2(true, false, Struct_1(vec2<u32>(1u, 1u), -878f, -1169f, 3344i, vec2<u32>(51870u, 48503u))), 1u, Struct_1(vec2<u32>(1u, 84550u), -226f, 323f, i32(-2147483648), vec2<u32>(43176u, 4294967295u)), vec3<u32>(1u, 12532u, 50054u)), Struct_5(Struct_3(vec3<bool>(false, true, false), 36183i, 2147483647i, vec3<i32>(-35574i, -1i, 48782i), vec2<u32>(10571u, 4294967295u)), Struct_2(true, true, Struct_1(vec2<u32>(27577u, 4294967295u), 557f, -2369f, 3324i, vec2<u32>(42076u, 7008u))), 1366u, Struct_1(vec2<u32>(50399u, 0u), -543f, 901f, -2089i, vec2<u32>(4294967295u, 1u)), vec3<u32>(1u, 1u, 24055u)), Struct_5(Struct_3(vec3<bool>(true, false, false), -1i, -3347i, vec3<i32>(6101i, 19709i, 1i), vec2<u32>(4294967295u, 39112u)), Struct_2(true, false, Struct_1(vec2<u32>(1u, 51355u), 381f, 1707f, -9266i, vec2<u32>(28050u, 0u))), 8415u, Struct_1(vec2<u32>(4294967295u, 3117u), -232f, -1080f, 0i, vec2<u32>(4294967295u, 4294967295u)), vec3<u32>(1u, 1u, 3882u)), Struct_5(Struct_3(vec3<bool>(true, false, true), 6710i, -63924i, vec3<i32>(0i, i32(-2147483648), -82495i), vec2<u32>(63160u, 4294967295u)), Struct_2(false, false, Struct_1(vec2<u32>(1u, 1u), -1281f, 1000f, -14364i, vec2<u32>(26943u, 1u))), 4294967295u, Struct_1(vec2<u32>(1u, 4294967295u), -456f, 1655f, -42499i, vec2<u32>(1u, 0u)), vec3<u32>(85804u, 76395u, 90406u)), Struct_5(Struct_3(vec3<bool>(false, false, true), -5688i, -1i, vec3<i32>(0i, 1i, 3032i), vec2<u32>(30274u, 29489u)), Struct_2(false, true, Struct_1(vec2<u32>(0u, 1u), -207f, -1308f, -2045i, vec2<u32>(11223u, 4294967295u))), 67713u, Struct_1(vec2<u32>(38470u, 4294967295u), 840f, 868f, i32(-2147483648), vec2<u32>(1u, 1u)), vec3<u32>(1u, 317u, 0u)));

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

var<private> global4: array<vec2<f32>, 4>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(Struct_3(!global1.wzy, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.d.x, vec3<i32>(_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), ~(~u_input.a.x), u_input.d.x), (~u_input.b.xy << ((u_input.b.yx >> (u_input.b.yz % vec2<u32>(32u))) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_u32(max(u_input.b.yx, vec2<u32>(4294967295u, u_input.c)), u_input.b.xy)), Struct_2(!global1.x | (~u_input.d.x > _wgslsmith_div_i32(u_input.d.x, -6537i)), false, Struct_1(_wgslsmith_add_vec2_u32(u_input.b.zx, u_input.b.xx), 571f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-514f, -653f)), ~(-2147483647i), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.c), u_input.b.yz), u_input.b.yz ^ vec2<u32>(u_input.c, 16613u)))), u_input.b.x, Struct_1(~u_input.b.zz, -1997f, -2275f, abs(_wgslsmith_dot_vec2_i32(u_input.d, u_input.d) & ~26711i), vec2<u32>(u_input.b.x, 50220u)), ~(~(vec3<u32>(0u, u_input.b.x, u_input.b.x) << (~u_input.b % vec3<u32>(32u)))));
    var_0 = Struct_5(var_0.a, var_0.b, ~4294967295u, var_0.d, vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(26378u, var_0.b.c.e.x, var_0.a.e.x), u_input.b.x), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 33751u), var_0.b.c.e)), 1u));
    var var_1 = abs(~1u);
    global2 = array<Struct_5, 13>();
    var var_2 = abs(u_input.a.x);
    return 1u >> (0u % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(17528u, ~(0u >> (u_input.b.x % 32u)), _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(u_input.c, 0u)), 8166u >> ((4294967295u & u_input.b.x) % 32u)) ^ vec4<u32>(_wgslsmith_clamp_u32(u_input.c, select(u_input.c, 0u, true), ~44881u), 10786u, u_input.c, 149214u), vec4<u32>(0u, ~_wgslsmith_clamp_u32(~u_input.b.x, 1u, u_input.b.x & 21038u), func_3(), u_input.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-566f, 171f), vec2<f32>(521f, 782f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(811f, 164f) - global4[_wgslsmith_index_u32(var_0.x, 4u)])))))))));
    let var_2 = max(vec3<i32>(u_input.a.x >> (~8142u % 32u), firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<i32>(-66654i, 0i, u_input.a.x, 38235i)), 1i)), -1i), ~(~min(vec3<i32>(5310i, 13657i, -1i), vec3<i32>(1i, 2147483647i, -47737i))) >> (var_0.wzw % vec3<u32>(32u)));
    global2 = array<Struct_5, 13>();
    global1 = select(vec4<bool>(!arg_0.x, true, global1.x, _wgslsmith_f_op_f32(sign(-1255f)) > var_1.x), vec4<bool>(false, false, true, true), select(select(vec4<bool>(false, !global1.x, any(vec2<bool>(true, global3.x)), false), vec4<bool>(arg_1.a.x, global1.x, true, any(vec3<bool>(true, true, false))), select(!vec4<bool>(global1.x, global3.x, false, arg_0.x), !vec4<bool>(true, arg_1.a.x, true, false), arg_0.x)), !vec4<bool>(!arg_0.x, true, all(vec2<bool>(true, arg_0.x)), global1.x), true));
    return Struct_4(!select(global1.wx, !vec2<bool>(global1.x, arg_1.a.x), false));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_4 {
    return func_2(global1.xxy, Struct_4(vec2<bool>(!global1.x, any(vec3<bool>(global3.x, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(u_input.d.x, u_input.a.x, 2147483647i), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_f32(-596f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(582f, -1298f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(844f * _wgslsmith_f_op_f32(ceil(980f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1100f * -489f) + _wgslsmith_f_op_f32(trunc(-141f))))), u_input.b.x);
    global3 = global1.wyw;
    let var_1 = Struct_1(~(~(~vec2<u32>(4294967295u, u_input.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(755f * 476f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(2359f)))))), global1.x)), 2182f, ~(~firstLeadingBit(abs(0i))), firstTrailingBit(u_input.b.xz));
    let x = u_input.a;
    s_output = StorageBuffer(-min(min(~vec3<i32>(1i, u_input.d.x, 25016i), -vec3<i32>(-1i, u_input.d.x, 29682i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(var_1.d, 22985i, -34711i)), vec3<i32>(46590i, var_1.d, 2147483647i))));
}

