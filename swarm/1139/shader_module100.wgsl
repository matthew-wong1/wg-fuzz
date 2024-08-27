struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 13>;

var<private> global1: array<vec4<bool>, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_4) -> f32 {
    let var_0 = ~20426u;
    global1 = array<vec4<bool>, 11>();
    global1 = array<vec4<bool>, 11>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1517f) + -1543f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_3.e, arg_3.e))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_4) -> i32 {
    global1 = array<vec4<bool>, 11>();
    let var_0 = reverseBits(arg_1 << ((~abs(vec2<u32>(55544u, arg_0.x)) >> (_wgslsmith_mult_vec2_u32(~u_input.a.yz, ~vec2<u32>(0u, 40163u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = -2147483647i;
    var var_2 = true;
    let var_3 = u_input.d;
    return var_1 | min(1i, _wgslsmith_dot_vec3_i32(u_input.e, select(countOneBits(u_input.e), u_input.e, any(vec2<bool>(false, arg_3.a.x)))));
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = func_4(select(vec3<u32>(u_input.d, u_input.a.x << (4294967295u % 32u), _wgslsmith_add_u32(u_input.a.x, u_input.c.x)), vec3<u32>(u_input.a.x, ~29139u, select(u_input.a.x, 40193u, false)), false) & ~(~vec3<u32>(4294967295u, 7829u, u_input.d)), _wgslsmith_add_vec2_i32(u_input.e.zz, -select(vec2<i32>(-7577i, 2147483647i), u_input.e.xz, vec2<bool>(false, false))), Struct_1(1f, ~559u, ~(~0u)), Struct_4(vec2<bool>(true, false), true & (_wgslsmith_mod_u32(u_input.a.x, 1u) < 25621u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -299f) * _wgslsmith_f_op_f32(func_3(540f, vec3<i32>(-2147483647i, 2147483647i, arg_0), vec3<i32>(-59891i, u_input.e.x, -37595i), Struct_4(vec2<bool>(true, true), true, Struct_1(701f, 73588u, 0u), 1u, -791f)))), ~27203u, ~_wgslsmith_div_u32(4294967295u, u_input.c.x)), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1184f), vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(66723i, 0i, u_input.b), Struct_4(vec2<bool>(false, false), false, Struct_1(-226f, 1u, u_input.d), u_input.c.x, -1480f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(-924f, vec3<i32>(-23457i, arg_0, u_input.b), vec3<i32>(-1i, -1i, arg_0), Struct_4(vec2<bool>(false, false), true, Struct_1(-653f, 18900u, 31292u), 4294967295u, 1357f))), _wgslsmith_f_op_f32(f32(-1f) * -1599f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(207f, -340f) + vec2<f32>(-1205f, 598f)))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1000f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1069f, 872f), vec2<f32>(2000f, -346f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1510f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(834f, 1571f)), select(vec2<bool>(false, true), vec2<bool>(false, false), false))))), vec2<bool>(true, false)));
    global0 = array<Struct_5, 13>();
    let var_2 = 830f;
    global1 = array<vec4<bool>, 11>();
    return var_1.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_5) -> u32 {
    global0 = array<Struct_5, 13>();
    var var_0 = firstTrailingBit(~arg_3.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(func_2(-2147483647i)));
    var var_2 = false;
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, min(-firstTrailingBit(u_input.b), 0i), u_input.e.x), select(vec3<i32>(reverseBits(_wgslsmith_sub_i32(24498i, u_input.b)), 0i, max(u_input.b, -1i ^ u_input.e.x)), select(_wgslsmith_clamp_vec3_i32(abs(u_input.e), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, 54965i), u_input.e), -vec3<i32>(36056i, u_input.b, u_input.e.x)), vec3<i32>(firstTrailingBit(-2147483647i), u_input.b, ~u_input.b), true), select(false, true, true) || any(vec3<bool>(true, true, true))));
    return u_input.c.x;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    global1 = array<vec4<bool>, 11>();
    var var_0 = Struct_3(~func_4(_wgslsmith_add_vec3_u32(arg_0, ~vec3<u32>(arg_3, 26274u, 212u)), vec2<i32>(reverseBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 34564i, u_input.e.x, 2147483647i), vec4<i32>(-911i, -1i, u_input.e.x, u_input.e.x))), Struct_1(_wgslsmith_f_op_f32(arg_1.a * arg_2.x), arg_1.b, abs(u_input.a.x)), Struct_4(vec2<bool>(true, true), 1u < u_input.c.x, arg_1, ~arg_3, 245f)), ~(_wgslsmith_add_vec3_i32(-u_input.e, vec3<i32>(8209i, u_input.e.x, -35176i)) | ~(~u_input.e)), Struct_2(vec2<bool>(true, all(vec2<bool>(true, true))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c, u_input.d, u_input.c.x, 40661u) & vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x), abs(vec4<u32>(4294967295u, u_input.a.x, u_input.d, 4294967295u))) >> (~(~0u) % 32u), 11u)], _wgslsmith_f_op_f32(f32(-1f) * -2068f), Struct_1(-158f, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.x, u_input.a.x), ~1052u), 115811u)));
    var var_1 = !(!var_0.c.b);
    var var_2 = arg_1;
    let var_3 = -1i;
    return _wgslsmith_f_op_f32(arg_2.x * arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 13>();
    var var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(u_input.d, u_input.c.x) >> (~u_input.c.x % 32u), _wgslsmith_clamp_u32(1u, func_1(vec3<f32>(522f, 592f, 838f), 2695f, vec3<f32>(226f, -1000f, 774f), Struct_5(vec4<f32>(-397f, 368f, -1185f, 230f), u_input.a.x)), _wgslsmith_sub_u32(4294967295u, 52630u))), _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, ~(~u_input.a))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(191f + -1404f), -177f)), 1u, _wgslsmith_div_u32(~u_input.c.x, u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-393f, -238f, 1081f), vec3<f32>(817f, 684f, 697f)))))))), 0u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-702f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-528f, 555f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f))))));
    var var_2 = Struct_4(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true)), any(vec2<bool>(true, any(vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_f_op_f32(917f * _wgslsmith_f_op_f32(-var_1.x)), 0u, ~30423u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.d, u_input.d), max(u_input.c, vec2<u32>(27366u, u_input.d))), u_input.a.zy | reverseBits(u_input.a.xz)), ~(~1u)), var_1.x);
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(184f)), -533f, _wgslsmith_f_op_f32(func_3(var_2.e, u_input.e, vec3<i32>(u_input.e.x, -32799i, 67655i), Struct_4(vec2<bool>(true, false), var_2.b, Struct_1(-1351f, var_2.d, u_input.a.x), 4294967295u, var_2.e))), _wgslsmith_f_op_f32(sign(var_2.c.a))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-440f, var_2.e, -2194f, -1000f)))))))), abs(var_2.c.c));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(507f))), _wgslsmith_f_op_f32(func_5(vec3<u32>(u_input.d, var_3.b, 13691u) & vec3<u32>(1u, u_input.a.x, var_2.d), var_2.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.a, 883f, var_3.a.x)), u_input.a.x)))), -219f, -443f, 362f), 0u << ((_wgslsmith_mod_u32(41992u, 4294967295u) & ~(~var_3.b)) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1172f));
}

