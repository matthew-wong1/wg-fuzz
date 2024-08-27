struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: bool = false;

var<private> global2: array<vec4<u32>, 20>;

var<private> global3: i32;

var<private> global4: vec2<u32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(global4.x, 23u)];
    var var_1 = -select(~vec2<i32>(u_input.a, ~2147483647i), _wgslsmith_clamp_vec2_i32(var_0.a, var_0.a, _wgslsmith_clamp_vec2_i32(var_0.a, var_0.a, var_0.a)) ^ var_0.a, vec2<bool>(true, true));
    global2 = array<vec4<u32>, 20>();
    global3 = u_input.b;
    global0 = array<Struct_1, 23>();
    return Struct_3(1u << (global4.x % 32u));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: f32) -> vec2<u32> {
    return select(~vec2<u32>(_wgslsmith_div_u32(u_input.c, arg_1.x), arg_1.x | 50858u), reverseBits(arg_1.yx), vec2<bool>(arg_0, true));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_4(arg_1, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(global4.x, 3722u) >> (~global4.x % 32u), 65402u), (~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.x, 25994u), vec2<u32>(global4.x, arg_1.a.x)) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, 43905u), vec4<u32>(u_input.c, 54737u, arg_1.d.x, 7579u)) ^ 0u) % 32u)) | _wgslsmith_sub_u32(1u, u_input.c), reverseBits(16813u & ~global4.x), countOneBits(abs(firstLeadingBit(_wgslsmith_div_vec3_u32(arg_1.d, vec3<u32>(global4.x, u_input.c, 37008u))))));
    return Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c & arg_1.a.x, global4.x << (1u % 32u)), func_3(!arg_0, vec3<u32>(0u, var_0.b, var_0.b) >> (arg_1.d % vec3<u32>(32u)), func_2(), 1501f)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = abs(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.a, u_input.b)) | max(vec2<i32>(u_input.a, 0i), vec2<i32>(2147483647i, -26445i)), -(~vec2<i32>(u_input.b, u_input.b))), u_input.b, _wgslsmith_clamp_i32(u_input.b, firstLeadingBit(-u_input.a), firstLeadingBit(-u_input.b)), u_input.b));
    global3 = -37304i;
    global2 = array<vec4<u32>, 20>();
    var var_1 = vec3<f32>(455f, -1704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-173f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(306f, -1205f)) - -1109f))));
    global2 = array<vec4<u32>, 20>();
    return func_1(var_1.x > -1178f, Struct_2(abs(~vec2<u32>(arg_1.a, arg_1.a)) | arg_0.wz, abs(arg_0.wz), global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_add_u32(arg_0.x, 4294967295u)), 23u)], _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global4.x, 1u), arg_0.wzw), vec3<u32>(1u, 4570u, arg_1.a))), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, u_input.b), _wgslsmith_add_vec2_i32(var_0.ww, vec2<i32>(u_input.a, _wgslsmith_clamp_i32(-2147483647i, -1i, -58446i)))));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = vec2<u32>(firstLeadingBit(arg_3.a), ~22165u);
    var var_1 = vec2<u32>(arg_1.x, firstTrailingBit(global4.x));
    var var_2 = Struct_4(Struct_2(_wgslsmith_add_vec2_u32(abs(arg_1.zx), arg_1.zw), vec2<u32>(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(16028u, var_0.x), ~15309u)), Struct_1(firstTrailingBit(vec2<i32>(1i, 1i))), _wgslsmith_clamp_vec3_u32(select(select(vec3<u32>(0u, u_input.c, u_input.c), arg_1.zzx, vec3<bool>(arg_0, arg_0, arg_0)), vec3<u32>(arg_3.a, global4.x, arg_1.x), !vec3<bool>(arg_0, true, true)), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(25218u, 4294967295u), var_0), _wgslsmith_dot_vec2_u32(vec2<u32>(42968u, var_0.x), var_0)), ~vec3<u32>(0u, u_input.c, var_1.x))), 23918u, _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_3.a, firstLeadingBit(var_0.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(36769u, 1u, arg_3.a), vec3<u32>(3088u, var_0.x, var_0.x)), func_4(vec4<u32>(1u, 4294967295u, 0u, var_1.x), Struct_3(arg_3.a)).a, ~17330u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(0u, u_input.c, 4294967295u, 48398u)), ~vec4<u32>(35143u, arg_1.x, u_input.c, 24542u)), abs(vec4<u32>(10206u, var_1.x, 0u, 16094u)))), ~22032u, vec3<u32>(~1u ^ ((var_0.x & 6363u) & 0u), var_0.x, _wgslsmith_mod_u32(0u, func_4(firstLeadingBit(global2[_wgslsmith_index_u32(var_0.x, 20u)]), func_2()).a)));
    var_2 = Struct_4(Struct_2(vec2<u32>(~40196u, var_0.x), ~_wgslsmith_add_vec2_u32(var_0 | vec2<u32>(0u, 31919u), var_0), var_2.a.c, vec3<u32>(~var_2.b, var_0.x, arg_3.a)), ~214u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, var_1.x), global2[_wgslsmith_index_u32(var_0.x, 20u)]), _wgslsmith_mult_u32(var_0.x, 4294967295u)) ^ ~4294967295u, _wgslsmith_dot_vec4_u32(select(arg_1, global2[_wgslsmith_index_u32(57250u, 20u)], select(select(vec4<bool>(arg_0, false, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(arg_0, false, arg_0, false), u_input.c == 0u)), vec4<u32>(~reverseBits(u_input.c), 48805u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_0.x, var_1.x) | var_0), ~40657u)), abs(var_2.e));
    let var_3 = var_2.a;
    return _wgslsmith_mod_i32(select(abs(1i), -24521i, any(vec2<bool>(arg_0, arg_0)) & (var_2.a.c.a.x != var_3.c.a.x)), _wgslsmith_div_i32(2147483647i, var_2.a.c.a.x >> (func_4(arg_1, Struct_3(16157u)).a % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-282f, _wgslsmith_f_op_f32(step(457f, 951f)), -472f)));
    global3 = -_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(277i, 10512i, -11651i), vec3<i32>(56441i, u_input.b, -7906i))), func_5(true, select(vec4<u32>(u_input.c, 1u, 1u, u_input.c), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, global4.x), 20u)], select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 112f), func_4(~global2[_wgslsmith_index_u32(8851u, 20u)], func_1(false, Struct_2(vec2<u32>(u_input.c, u_input.c), vec2<u32>(global4.x, 13682u), global0[_wgslsmith_index_u32(global4.x, 23u)], vec3<u32>(26708u, global4.x, 0u)), vec2<i32>(-2147483647i, -19289i)))));
    global2 = array<vec4<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(-2744i, _wgslsmith_f_op_vec2_f32(-var_0.yy), vec4<i32>(20359i, -1i, select(_wgslsmith_div_i32(u_input.b, -53244i), u_input.b, true) << (global4.x % 32u), _wgslsmith_div_i32(7673i, min(2147483647i, u_input.a)) ^ ~(-29746i)));
}

