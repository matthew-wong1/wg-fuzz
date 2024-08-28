struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<vec4<u32>, 19>;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(14653u, vec4<i32>(i32(-2147483648), -54460i, 1i, 3224i), 13045i, 2147483647i), Struct_1(1u, vec4<i32>(71149i, i32(-2147483648), 1i, 52788i), 1i, -30786i), Struct_1(4294967295u, vec4<i32>(0i, 1i, -52992i, 6946i), 11031i, 0i), Struct_1(1u, vec4<i32>(-1676i, 60670i, -14526i, 27423i), -1i, 11437i), Struct_1(4294967295u, vec4<i32>(-14364i, 11568i, 2147483647i, 2147483647i), 5437i, 0i), Struct_1(1977u, vec4<i32>(2147483647i, i32(-2147483648), 1i, 1i), i32(-2147483648), -1i), Struct_1(28540u, vec4<i32>(12700i, 0i, 2147483647i, 0i), -18833i, 18399i), Struct_1(1u, vec4<i32>(2147483647i, -26208i, 12236i, 0i), 63605i, 20457i), Struct_1(9991u, vec4<i32>(16510i, 5199i, 1i, i32(-2147483648)), -1i, -31628i), Struct_1(1u, vec4<i32>(0i, 2147483647i, 2147483647i, 9074i), 2147483647i, -17105i), Struct_1(0u, vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 0i), -17858i, -1i), Struct_1(4294967295u, vec4<i32>(16135i, -2398i, 31199i, -9953i), 1i, 13031i));

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(0u, vec4<i32>(-37109i, 2147483647i, 0i, 1i), 39745i, 8527i), Struct_1(4294967295u, vec4<i32>(i32(-2147483648), 2147483647i, -23156i, 33013i), -41230i, 1i), Struct_1(0u, vec4<i32>(-1692i, -13723i, -19066i, 1i), -22123i, 40820i), Struct_1(4294967295u, vec4<i32>(3913i, i32(-2147483648), 59466i, 1728i), 38052i, 1i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_add_i32(countOneBits(_wgslsmith_sub_i32(u_input.b.x, -2147483647i)), u_input.b.x);
    var var_1 = Struct_2(Struct_1(u_input.a, min(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, 1i, 1i, -28127i), select(vec4<i32>(u_input.b.x, 0i, u_input.b.x, 13361i), vec4<i32>(-1910i, u_input.e.x, u_input.b.x, 54848i), false)), -(~vec4<i32>(-69355i, -51112i, 25842i, u_input.e.x))), -u_input.c, ~(-8599i) << (_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_0, 4294967295u), u_input.d.yy), _wgslsmith_clamp_vec2_u32(vec2<u32>(32262u, 4294967295u), vec2<u32>(0u, u_input.d.x), vec2<u32>(92588u, u_input.d.x))) % 32u)), ~u_input.d, i32(-1i) * -9369i);
    return vec2<u32>(_wgslsmith_add_u32(~(~(~4294967295u)), ~(25573u & ~arg_0)), ~1u);
}

fn func_2(arg_0: vec4<f32>) -> vec4<f32> {
    let var_0 = min(-_wgslsmith_mod_vec2_i32(-vec2<i32>(-42105i, u_input.e.x), vec2<i32>(u_input.e.x, reverseBits(-9171i))), vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(u_input.e.yx, u_input.e.yy & vec2<i32>(u_input.e.x, u_input.c))), min(_wgslsmith_dot_vec3_i32(-u_input.e, u_input.e), u_input.b.x)));
    var var_1 = _wgslsmith_sub_vec2_u32(u_input.d.xy, func_3(u_input.a));
    var_1 = u_input.d.yy;
    let var_2 = _wgslsmith_mult_i32(u_input.e.x, _wgslsmith_div_i32(~(-1i), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.x, -48489i, 2147483647i), u_input.e.x))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, ~(~(~u_input.a)), var_1.x << (_wgslsmith_dot_vec3_u32(~(~u_input.d), vec3<u32>(33916u, var_1.x, 0u) << (vec3<u32>(31329u, 4294967295u, var_1.x) % vec3<u32>(32u))) % 32u)), 15u)];
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(arg_0.x * -367f), _wgslsmith_f_op_f32(select(-476f, 1000f, true))))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1233f, _wgslsmith_div_f32(792f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -660f))))), 41100u != reverseBits(_wgslsmith_mod_u32(min(0u, var_3.a.a), u_input.a))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    global4 = array<Struct_1, 4>();
    global3 = array<Struct_1, 12>();
    global1 = array<Struct_2, 15>();
    var var_0 = vec2<bool>(!((_wgslsmith_mod_u32(u_input.a, 4294967295u) <= u_input.d.x) == false), false);
    var_0 = !vec2<bool>(!all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) & var_0.x, select(var_0.x, true || var_0.x, false));
    return Struct_2(Struct_1(firstLeadingBit(_wgslsmith_add_u32(1u, 0u)), vec4<i32>(arg_2, ~(arg_2 | u_input.b.x), -2147483647i, -firstTrailingBit(0i)), _wgslsmith_dot_vec3_i32(u_input.e, u_input.e), reverseBits(select(arg_2, u_input.c, false))), vec3<u32>(4294967295u, u_input.d.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d, ~vec3<u32>(u_input.d.x, 11691u, u_input.d.x)), vec3<u32>(888u, 0u, u_input.d.x) | vec3<u32>(u_input.a, u_input.a, 4294967295u))), 18834i);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(min(0u, ~(~u_input.d.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.c, u_input.e.x) ^ vec4<i32>(2147483647i, 1i, 1i, u_input.b.x), -vec4<i32>(-28039i, u_input.e.x, 24554i, -5934i)) & (vec4<i32>(29782i, 26878i, 2147483647i, 0i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.b.x, -1i, u_input.b.x), vec4<i32>(u_input.c, u_input.b.x, 1i, u_input.e.x))), _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(21727i, 9066i, -26271i, -1i)), abs(vec4<i32>(-16254i, 1i, -2147483647i, u_input.b.x) >> (vec4<u32>(29668u, 0u, u_input.a, arg_2.x) % vec4<u32>(32u)))), u_input.c), ~_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(arg_2.x, u_input.a, u_input.d.x)), arg_2.ywz), select(~u_input.b.x, i32(-1i) * -_wgslsmith_sub_i32(u_input.e.x, -1i), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = _wgslsmith_sub_vec4_i32(var_0.a.b, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_0.a.c, var_0.c, 0i), var_0.a.b.xyw), ~u_input.e), u_input.b.x), 6197i, (u_input.e.x << (var_0.a.a % 32u)) | (-var_0.c >> (abs(3093u) % 32u)), ~var_0.a.b.x));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_0))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-277f, arg_0))), vec2<bool>(any(vec4<bool>(true, true, true, false)) == true, any(vec3<bool>(false, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(106f, 257f, 1319f, arg_0), vec4<f32>(-292f, 1913f, arg_1, arg_0), vec4<bool>(true, false, false, true))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, arg_0, arg_0))))))), u_input.e.x);
    global0 = array<Struct_1, 4>();
    let var_3 = 1000f;
    return Struct_2(func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, var_3)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, -345f) + vec2<f32>(var_3, -214f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) - vec2<f32>(var_3, -1938f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -670f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-493f, arg_1, -2168f, -658f), vec4<f32>(254f, arg_1, -543f, 392f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(119f, arg_1, arg_0, 996f)), false)))), u_input.c).a, firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a.a, 75471u, var_0.b.x), u_input.d), reverseBits(~arg_2.x), 32262u)), var_2.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-194f, -1288f, ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 1u, 42247u, ~58207u), vec4<u32>(1u, u_input.a, 4294967295u, 43762u)));
    global4 = array<Struct_1, 4>();
    let var_1 = u_input.c < -2147483647i;
    let var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(977f, -429f, 114f, 254f) - vec4<f32>(278f, 1517f, -1000f, -391f))))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(202f + 214f), 199f))), select(~vec4<u32>(90771u, u_input.d.x, var_0.a.a, u_input.d.x) >> ((vec4<u32>(u_input.a, u_input.d.x, u_input.a, u_input.d.x) | vec4<u32>(1u, u_input.d.x, 0u, 0u)) % vec4<u32>(32u)), ~global2[_wgslsmith_index_u32(~var_0.b.x, 19u)], select(vec4<bool>(false, true, false, var_1), !vec4<bool>(var_1, var_1, var_1, true), all(vec2<bool>(var_1, true)))) ^ vec4<u32>(func_3(min(var_0.b.x, 4294967295u)).x, 4294967295u, 0u, u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1060f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1499f, 1211f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-927f - -556f)))), vec4<u32>(var_0.b.x, 44156u, 0u, ~var_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 247f, 167f, 2574f))))).x));
}

