struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<Struct_2, 28>;

var<private> global2: vec3<i32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    global2 = (min(_wgslsmith_div_vec3_i32(vec3<i32>(-8326i, arg_0.c.x, -2147483647i), max(vec3<i32>(-4151i, -1i, global2.x), vec3<i32>(global2.x, global2.x, global2.x))), select(vec3<i32>(-17287i, 5595i, 6050i), vec3<i32>(arg_0.c.x, u_input.b, -1i) & vec3<i32>(-1i, 35643i, arg_1), false)) << (vec3<u32>(firstTrailingBit(1u) << (4294967295u % 32u), ~85454u ^ firstLeadingBit(u_input.c.x), ~u_input.c.x) % vec3<u32>(32u))) | (vec3<i32>(~countOneBits(-2147483647i), reverseBits(arg_0.c.x), arg_1) & reverseBits(~(-vec3<i32>(arg_0.c.x, -7363i, 5465i))));
    global0 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(635f, 895f) * _wgslsmith_div_f32(1609f, -478f)), 1000f)))));
    global1 = array<Struct_2, 28>();
    let var_1 = Struct_3(select(vec4<bool>(any(arg_0.a.zw), any(arg_0.a.wy), false, false), arg_2, select(vec4<bool>(!arg_0.a.x, arg_0.d, true, arg_0.d), arg_2, arg_2.x)), !arg_0.a.xw, vec2<i32>(~arg_1, -30694i), 1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1674f * -824f), -1423f))));
    return _wgslsmith_f_op_f32(ceil(1365f));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> vec4<bool> {
    var var_0 = Struct_2(select(!select(select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, true)), vec3<bool>(true, arg_1, true), !vec3<bool>(arg_1, arg_1, true)), vec3<bool>(227f < _wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(arg_1, false, true, arg_1), vec2<bool>(arg_1, false), global2.xx, true), u_input.d, vec4<bool>(true, arg_1, false, arg_1))), true | select(arg_1, arg_1, true), any(vec2<bool>(arg_1, false)) && arg_1), select(vec3<bool>(any(vec3<bool>(arg_1, true, arg_1)), !arg_1, arg_1 == arg_1), select(!vec3<bool>(false, arg_1, arg_1), !vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, false, true)), vec3<bool>(any(vec4<bool>(arg_1, arg_1, true, arg_1)), true, any(vec4<bool>(arg_1, arg_1, arg_1, true))))), vec4<u32>(firstTrailingBit(arg_0.x), firstTrailingBit(~0u) | arg_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(16705u, 1u, 0u)), arg_0.wwy & vec3<u32>(arg_0.x, arg_0.x, u_input.c.x)), min(~arg_0.wzw, u_input.c)), arg_0.x));
    let var_1 = Struct_3(select(vec4<bool>(var_0.a.x, any(!vec2<bool>(var_0.a.x, true)), all(var_0.a), var_0.a.x), !(!(!vec4<bool>(false, var_0.a.x, arg_1, arg_1))), select(!(!vec4<bool>(false, false, false, arg_1)), !select(vec4<bool>(var_0.a.x, true, true, arg_1), vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(false, true, true, true)), !select(vec4<bool>(arg_1, var_0.a.x, false, true), vec4<bool>(true, false, true, false), vec4<bool>(arg_1, var_0.a.x, arg_1, false)))), !(!(!var_0.a.zx)), vec2<i32>(34945i, ~global2.x), false);
    var var_2 = global1[_wgslsmith_index_u32(u_input.c.x, 28u)];
    return select(var_1.a, select(vec4<bool>(true, false, any(var_1.a.wzz), !var_1.a.x), var_1.a, vec4<bool>(var_1.a.x, !var_0.a.x, !var_0.a.x, all(var_1.a))), arg_1);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_3) -> i32 {
    var var_0 = u_input.c.x;
    var var_1 = -110f;
    var var_2 = _wgslsmith_add_vec3_u32(~(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(1u, 4294967295u, u_input.c.x)), u_input.a)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(15935u), ~21951u, min(11778u, u_input.c.x)), u_input.a, select(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 20764u) | u_input.c, arg_0.a.x)));
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, -1i), min(arg_2.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_2.c.x), vec2<i32>(2147483647i, -49201i)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(~arg_1.x, 33252i, -u_input.b, 48998i), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, -35219i, -2147483647i, 2872i), vec4<i32>(global2.x, u_input.d, arg_2.c.x, 22307i)), min(vec4<i32>(arg_0.c.x, 2147483647i, arg_1.x, -11079i), vec4<i32>(u_input.d, 8414i, -4921i, u_input.d)), -vec4<i32>(0i, u_input.d, arg_1.x, arg_0.c.x)), ~(~vec4<i32>(-40023i, global2.x, arg_0.c.x, 2147483647i)))));
    let var_4 = min(_wgslsmith_add_vec3_u32(u_input.a >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x ^ var_2.x) % vec3<u32>(32u)), u_input.a), _wgslsmith_mod_vec3_u32(select(u_input.a, vec3<u32>(_wgslsmith_div_u32(35933u, u_input.c.x), u_input.c.x, 1u), vec3<bool>(false, arg_0.d, true)), vec3<u32>(abs(countOneBits(11820u)), max(var_2.x, u_input.c.x), min(~u_input.a.x, 0u))));
    return arg_2.c.x;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> i32 {
    global2 = vec3<i32>(func_4(Struct_3(!func_2(vec4<u32>(67546u, u_input.a.x, u_input.a.x, u_input.c.x), arg_1.d, -1157f), !arg_1.b, _wgslsmith_add_vec2_i32(arg_1.c, vec2<i32>(3206i, arg_1.c.x)) & global2.zx, !any(vec2<bool>(true, arg_1.b.x))), vec2<i32>(global2.x, 44688i), arg_1), global2.x, countOneBits(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(3558i, arg_1.c.x, u_input.d, u_input.b)), -vec4<i32>(22440i, 2147483647i, u_input.d, arg_1.c.x)) >> (u_input.a.x % 32u)));
    let var_0 = max(~vec3<u32>(~41263u, _wgslsmith_add_u32(firstTrailingBit(16145u), ~4294967295u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.c.x), ~76917u)), vec3<u32>(u_input.c.x & ~reverseBits(4294967295u), u_input.a.x, ~u_input.c.x));
    let var_1 = select(arg_1.b, func_2(~(~vec4<u32>(15409u, 4294967295u, var_0.x, 57759u) | ~vec4<u32>(var_0.x, 731u, 4294967295u, 0u)), any(func_2(~vec4<u32>(u_input.a.x, 8526u, var_0.x, u_input.c.x), any(vec4<bool>(false, false, arg_1.d, true)), _wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(arg_0, false, arg_1.d, false), arg_1.b, arg_1.c, false), global2.x, vec4<bool>(arg_1.b.x, true, true, arg_0)))).xz), 538f).yy, select(!vec2<bool>(arg_0, true), !vec2<bool>(arg_1.b.x, arg_1.d), arg_1.d));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1212f * -1611f)))), -128f, 1066f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-253f, -1308f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1973f, -141f, arg_1.d)), _wgslsmith_f_op_f32(sign(-1000f)))))));
    global1 = array<Struct_2, 28>();
    return _wgslsmith_mod_i32(28252i, ~_wgslsmith_sub_i32(global2.x, 8191i) << ((~0u ^ ~max(u_input.c.x, 42746u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(60563u, u_input.a.x, u_input.a.x, u_input.a.x)) & select(vec4<u32>(u_input.a.x, 0u, u_input.c.x, u_input.a.x), vec4<u32>(50583u, u_input.c.x, 4294967295u, 1u), true), (vec4<u32>(u_input.c.x, 12281u, 60949u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) >> (vec4<u32>(68583u, 1u, 0u, u_input.a.x) % vec4<u32>(32u))), max(vec4<u32>(abs(44459u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.c.yy), 1u, ~u_input.a.x), vec4<u32>(u_input.c.x, 4294967295u, 44603u, u_input.a.x) ^ vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 28664u)) | (max(vec4<u32>(14647u, 30261u, u_input.a.x, 59482u), ~vec4<u32>(0u, 97281u, 1u, 4294967295u)) ^ (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x)) | (vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 4294967295u) & vec4<u32>(u_input.a.x, u_input.c.x, 4294967295u, 1623u)))), countOneBits(~vec4<u32>(1u, u_input.a.x, 0u, 45574u) & vec4<u32>(u_input.c.x, 7220u, u_input.a.x, u_input.a.x)) >> (vec4<u32>(1u, select(~4294967295u, ~22746u, true), _wgslsmith_clamp_u32(1u, u_input.a.x, u_input.c.x) ^ abs(u_input.c.x), 4294967295u) % vec4<u32>(32u)));
    global2 = vec3<i32>(-(~2147483647i), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-21462i, u_input.b)) >> (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u)), vec2<i32>(u_input.b, func_1(false, Struct_3(vec4<bool>(false, true, true, false), vec2<bool>(true, true), vec2<i32>(u_input.d, global2.x), true)))) >> (max(u_input.a.x, var_0.x) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(abs(global2.zx), countOneBits(vec2<i32>(1i, u_input.b))), ~(global2.zy & global2.zx), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(56898i, global2.x, global2.x, u_input.d), vec4<i32>(u_input.d, 2147483647i, -2147483647i, -2147483647i)), 1i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, global2.x), ~(~global2.zx))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-645f, _wgslsmith_f_op_f32(abs(-483f)))))), 1f);
    global0 = array<Struct_2, 18>();
    var var_2 = reverseBits(var_0.x);
    let var_3 = !all(vec3<bool>(_wgslsmith_f_op_f32(2125f - var_1.x) > _wgslsmith_f_op_f32(-1333f * var_1.x), any(vec2<bool>(true, true)), false));
    let var_4 = vec2<bool>(var_3, any(vec3<bool>(!(1487f < var_1.x), 0u >= _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), var_0.zyw), var_3)));
    global1 = array<Struct_2, 28>();
    var_0 = vec4<u32>((~_wgslsmith_dot_vec3_u32(var_0.xyy, vec3<u32>(var_0.x, u_input.a.x, u_input.c.x)) >> (u_input.c.x % 32u)) ^ min(var_0.x, reverseBits(countOneBits(var_0.x))), ~var_0.x, ~_wgslsmith_mod_u32(reverseBits(0u), 4294967295u), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(min(u_input.c.x, select(4294967295u, var_0.x, true)), u_input.c.x ^ firstLeadingBit(107311u))), (vec3<i32>(global2.x << (var_0.x % 32u), i32(-1i) * -1039i, global2.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.x, 0u), var_0.zyy, _wgslsmith_mult_vec3_u32(vec3<u32>(21789u, 1u, u_input.a.x), u_input.c)) % vec3<u32>(32u))) | -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.d, u_input.d), min(vec3<i32>(global2.x, global2.x, u_input.b), vec3<i32>(global2.x, u_input.d, u_input.d))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(~17178u, 4294967295u), 4294967295u, 0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(398f, var_1.x, 1297f), vec3<f32>(443f, 1119f, 623f), vec3<bool>(var_3, false, false)))), vec3<f32>(1167f, _wgslsmith_f_op_f32(-1000f * 1000f), 1f))) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.x, 236f), var_1.x, global2.x == global2.x)), -992f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))))), 79487u);
}

