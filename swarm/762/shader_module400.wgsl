struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(943u, 4294967295u, 1u), vec3<u32>(56131u, 15478u, 1u), vec3<u32>(4294967295u, 7941u, 9472u), vec3<u32>(4294967295u, 8693u, 30322u), vec3<u32>(12974u, 1u, 0u), vec3<u32>(91986u, 4294967295u, 31716u), vec3<u32>(38860u, 14066u, 19871u), vec3<u32>(4294967295u, 65769u, 4294967295u), vec3<u32>(96500u, 24015u, 1u), vec3<u32>(15849u, 1u, 60187u), vec3<u32>(0u, 52799u, 0u), vec3<u32>(36041u, 0u, 95844u));

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    let var_0 = arg_1;
    let var_1 = !(!select(select(!vec4<bool>(true, arg_2.x, arg_2.x, true), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(false, arg_2.x, false, arg_2.x)), vec4<bool>(!arg_2.x, true, true, 65213i != arg_0), true));
    let var_2 = u_input.b.x;
    var var_3 = u_input.e.zz;
    var var_4 = _wgslsmith_mult_i32(-(~var_3.x), 2147483647i);
    return ~0u;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(53770u, 13709u, 11068u, u_input.b.x), vec4<u32>(20497u, 35498u, u_input.b.x, 1u)) > 19371u, !any(vec3<bool>(true, true, false)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)))), _wgslsmith_sub_u32(~67646u ^ u_input.b.x, u_input.b.x), _wgslsmith_clamp_u32(min(u_input.b.x, ~u_input.b.x), ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), func_3(abs(0i), _wgslsmith_f_op_f32(sign(-117f)), vec2<bool>(true, true)))), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(-2731i, u_input.e.x ^ -25372i, 0i), _wgslsmith_mod_i32(~min(2147483647i, u_input.d.x), _wgslsmith_div_i32(-40888i, 1i))), Struct_1(vec4<bool>(!any(vec3<bool>(false, true, false)), all(vec4<bool>(true, false, true, false)), false, all(vec2<bool>(true, true)) == true), vec3<bool>(any(vec3<bool>(false, false, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), u_input.c.x > 1i), _wgslsmith_div_u32(firstTrailingBit(1u), u_input.b.x) & ~(~u_input.b.x), u_input.b.x), Struct_1(vec4<bool>(all(vec2<bool>(true, false)), !all(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, true, true)), false == all(vec4<bool>(true, true, false, false))), vec3<bool>(true, true, true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), global0[_wgslsmith_index_u32(2073u & u_input.b.x, 12u)]), firstLeadingBit(~u_input.b.x)));
    var var_1 = false;
    let var_2 = Struct_4(_wgslsmith_add_i32(44411i, u_input.d.x), ~var_0.a.d, vec2<bool>(!var_0.d.b.x, !var_0.c.b.x), u_input.c, ~(~u_input.b));
    global0 = array<vec3<u32>, 12>();
    let var_3 = vec2<i32>(firstLeadingBit(~0i), 1i);
    return Struct_3(Struct_1(vec4<bool>(all(var_0.d.b), true, true, var_0.d.a.x), !var_0.c.a.zww, _wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.d.d, ~21979u), ~u_input.b.x), ~(~abs(u_input.b.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec2<i32> {
    global1 = arg_1.c;
    var var_0 = func_2();
    global3 = max(select((0i | _wgslsmith_div_i32(10151i, u_input.a)) ^ 1i, ~u_input.e.x, false), -_wgslsmith_sub_i32(1i, ~_wgslsmith_mod_i32(-2147483647i, arg_0.x)));
    global2 = var_0.a.b.x;
    var var_1 = select(!select(var_0.a.a.xyw, var_0.a.b, true), !select(!(!vec3<bool>(true, arg_2, true)), !vec3<bool>(arg_1.b.x, arg_3, var_0.a.a.x), var_0.a.a.xwx), !select(vec3<bool>(false, arg_1.a.x, arg_2 || false), !vec3<bool>(false, arg_2, arg_1.b.x), all(!arg_1.a.wyx)));
    return vec2<i32>(~0i, firstTrailingBit(_wgslsmith_clamp_i32(u_input.c.x, ~(-2147483647i & u_input.a), u_input.c.x & u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2433f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1101f)) + _wgslsmith_f_op_f32(min(1673f, 260f))) + 1521f)));
    var var_1 = -10268i;
    let var_2 = abs(vec4<i32>(5564i, -9819i, _wgslsmith_dot_vec2_i32(func_1(countOneBits(vec2<i32>(u_input.d.x, 0i)), Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, false, false), 0u, u_input.b.x), true, all(vec4<bool>(true, true, false, false))), abs(vec2<i32>(u_input.a, u_input.e.x)) & vec2<i32>(u_input.c.x, 21969i)), ~(-_wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.yy))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-870f, 2013f, -118f, 528f), _wgslsmith_div_vec4_f32(vec4<f32>(-574f, -1440f, -984f, -1356f), vec4<f32>(-308f, 334f, 1000f, -654f))))))));
    let var_4 = var_3.yyz;
    let var_5 = (~vec2<i32>(-1i, 1i) | ~(~u_input.d)) | _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.x, 1i), -vec2<i32>(u_input.a, var_2.x), -(~u_input.e.zx)), vec2<i32>(-firstTrailingBit(31338i), -19231i));
    var var_6 = abs(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.b.x, vec4<u32>(reverseBits(u_input.b.x & u_input.b.x), 51336u, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * var_3.x) + var_4.x), func_1(vec2<i32>(-_wgslsmith_mod_i32(var_5.x, var_2.x), min(reverseBits(var_2.x), _wgslsmith_clamp_i32(-17981i, u_input.a, 2147483647i))), func_2().a, true, true).x);
}

