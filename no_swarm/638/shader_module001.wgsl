struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9>;

var<private> global1: array<vec4<i32>, 14>;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec2<u32>(4294967295u, 71471u), vec3<f32>(-382f, 225f, -155f), Struct_1(32281u), 34493i), Struct_2(vec2<u32>(1u, 4294967295u), vec3<f32>(798f, -891f, 747f), Struct_1(35329u), 34714i), Struct_2(vec2<u32>(4294967295u, 1u), vec3<f32>(176f, 978f, 174f), Struct_1(5363u), -50496i), Struct_2(vec2<u32>(4294967295u, 0u), vec3<f32>(195f, 669f, -522f), Struct_1(0u), -29484i), Struct_2(vec2<u32>(4294967295u, 1u), vec3<f32>(-643f, -1333f, 389f), Struct_1(87380u), -45884i), Struct_2(vec2<u32>(14286u, 0u), vec3<f32>(1645f, 209f, 1581f), Struct_1(19399u), i32(-2147483648)), Struct_2(vec2<u32>(4294967295u, 60499u), vec3<f32>(1290f, 1096f, 1464f), Struct_1(30717u), -69745i), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(791f, 988f, 1078f), Struct_1(4294967295u), -1i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_u32(select(u_input.e.zz, ~vec2<u32>(u_input.e.x, u_input.e.x) << (u_input.d % vec2<u32>(32u)), true), u_input.e.xx), Struct_1(u_input.d.x), -374f, vec2<i32>(_wgslsmith_clamp_i32(3513i, u_input.b << (34549u % 32u), -60869i), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, u_input.b), u_input.a) >> (~reverseBits(u_input.d.x) % 32u)), Struct_1(u_input.d.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1003f)), -2391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + var_0.c))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(ceil(var_0.c)), 590f, var_0.c));
    global0 = array<vec4<i32>, 9>();
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.x >> (firstLeadingBit(abs(1u)) % 32u), -2147483647i, _wgslsmith_mult_i32(15382i, 30333i >> (u_input.e.x % 32u)) ^ ~(-u_input.c.x), -16498i), ~(-abs(reverseBits(vec4<i32>(1i, -7783i, 29083i, u_input.a)))));
    var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(898f)), var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x * 245f)))), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), -318f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(-1180f))))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c)))))))));
}

fn func_2() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1864f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(-1000f)));
    var var_1 = 139887u;
    let var_2 = Struct_1(abs(u_input.d.x));
    var var_3 = true;
    let var_4 = Struct_1(~(~(~var_2.a)));
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1708f * var_0.x))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec2<f32> {
    var var_0 = select(vec4<bool>(true, !(!all(vec2<bool>(false, true))), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), true)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec4<bool>(true, true, false, all(vec3<bool>(select(true, true, false), true, true))), true);
    var var_1 = arg_0.c;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(trunc(-827f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_1 {
    global2 = array<Struct_2, 8>();
    let var_0 = Struct_4(select(select(select(vec2<bool>(false, false), select(arg_3, arg_3, arg_3), any(vec3<bool>(false, arg_3.x, false))), !(!arg_3), arg_3), vec2<bool>(all(vec3<bool>(arg_3.x, arg_3.x, arg_3.x)) && arg_3.x, select(!arg_3.x, any(vec3<bool>(true, arg_3.x, false)), true || arg_3.x)), !arg_3.x), !vec3<bool>(!arg_3.x, u_input.d.x <= select(u_input.e.x, 1u, arg_3.x), true), ~(~(vec4<u32>(18196u, 4294967295u, 0u, u_input.e.x) >> (vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.d.x) % vec4<u32>(32u)))) << ((~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.e.x, 65218u), vec4<u32>(44032u, 1u, 46018u, 4294967295u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x))) % vec4<u32>(32u)), arg_3, Struct_1(max(u_input.d.x, u_input.e.x)));
    global0 = array<vec4<i32>, 9>();
    global0 = array<vec4<i32>, 9>();
    let var_1 = abs(var_0.c.xw);
    return Struct_1(~u_input.d.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global2 = array<Struct_2, 8>();
    let var_0 = max(u_input.c.yx, u_input.c.ww);
    global1 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 9>();
    let var_1 = ~(~abs(~vec4<u32>(arg_0.a, 10280u, 18071u, 0u) << (~vec4<u32>(arg_2.x, 53298u, 4294967295u, 4294967295u) % vec4<u32>(32u))));
    return Struct_1(arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 9>();
    global0 = array<vec4<i32>, 9>();
    global1 = array<vec4<i32>, 14>();
    global2 = array<Struct_2, 8>();
    global0 = array<vec4<i32>, 9>();
    let var_0 = countOneBits(u_input.e.x);
    let var_1 = func_5(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(vec2<u32>(62305u, u_input.e.x), vec3<f32>(-372f, -438f, 1784f), Struct_1(u_input.e.x), u_input.c.x), -u_input.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1123f, 855f))), u_input.c.xw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-773f, 266f, _wgslsmith_f_op_f32(f32(-1f) * -1801f))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))), Struct_1(1u), u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(var_1, var_1, vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(u_input.e), ~vec3<u32>(1u, 96422u, 41372u)), 21953u >> (~var_0 % 32u), _wgslsmith_dot_vec3_u32(abs(u_input.e), vec3<u32>(4294967295u, 0u, var_1.a)))).a, _wgslsmith_add_vec4_i32(u_input.c, global1[_wgslsmith_index_u32(~var_0, 14u)]));
}

