struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(0u, 49975u), vec2<u32>(4294967295u, 0u), vec2<u32>(29508u, 0u), vec2<u32>(1u, 115621u), vec2<u32>(518u, 28782u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(52933u, 54753u), vec2<u32>(30468u, 4294967295u), vec2<u32>(0u, 31559u), vec2<u32>(0u, 1u), vec2<u32>(1u, 84110u), vec2<u32>(1u, 62593u), vec2<u32>(73550u, 7919u), vec2<u32>(4294967295u, 1u), vec2<u32>(83430u, 1u), vec2<u32>(4294967295u, 27804u), vec2<u32>(0u, 1u), vec2<u32>(21325u, 1u), vec2<u32>(4294967295u, 12399u));

var<private> global2: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = vec3<u32>(~1u, arg_1.a.x, ~(1u >> (select(50693u, arg_2, any(vec4<bool>(false, true, false, true))) % 32u)));
    global2 = _wgslsmith_div_f32(arg_3, -2161f);
    let var_1 = true;
    global1 = array<vec2<u32>, 20>();
    let var_2 = var_1;
    return Struct_1(25997u, ~arg_0.x, arg_0);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(41557u, 4294967295u, arg_0.a, 1u)), vec4<u32>(1u, 17867u, 4294967295u, 1u) ^ vec4<u32>(arg_0.a, arg_0.a, arg_0.a, 0u)), ~select(vec4<u32>(arg_0.a, 4294967295u, arg_0.a, 18909u), ~vec4<u32>(0u, arg_0.a, arg_0.a, arg_0.a), select(vec4<bool>(false, false, arg_1.x, true), arg_1, vec4<bool>(arg_1.x, arg_1.x, true, true)))), u_input.a, vec3<i32>(-(arg_0.c.x & arg_0.c.x), _wgslsmith_sub_i32(arg_0.c.x << (arg_0.a % 32u), -1i) << (firstLeadingBit(arg_0.a) % 32u), _wgslsmith_sub_i32(~(~u_input.a), -1i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b));
    global1 = array<vec2<u32>, 20>();
    var var_2 = _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-571f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-101f)), _wgslsmith_div_f32(var_1, 429f)))))));
    var var_3 = ~vec2<u32>(15798u, arg_0.a);
    return -abs(13443i) | -_wgslsmith_sub_i32(max(arg_0.b, 24657i) << (abs(var_3.x) % 32u), abs(_wgslsmith_dot_vec3_i32(arg_0.c, var_0.c)));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(func_3(func_2(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.b), vec3<i32>(-17079i, -4348i, -1i)), Struct_5(~vec2<u32>(1u, 46768u)), 1u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -126f), -1789f, false))), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, false)), _wgslsmith_dot_vec4_i32(-(-vec4<i32>(u_input.a, 44386i, u_input.a, 8295i) & -vec4<i32>(2147483647i, -2147483647i, 0i, u_input.a)), _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(u_input.b, 11483i, 28162i, u_input.a)), _wgslsmith_sub_vec4_i32(~vec4<i32>(55535i, -11668i, u_input.a, 82625i), vec4<i32>(21686i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(u_input.b, -25791i, u_input.b, 2762i)))));
    var var_1 = max(vec4<i32>(-1i) * -abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(0i, 3602i, u_input.b, 75123i), vec4<i32>(u_input.a, u_input.b, u_input.a, -1i))), vec4<i32>(1i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), _wgslsmith_mod_i32(u_input.b, -7421i), ~0i, 2147483647i) << (max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~4294967295u, ~1u, 1u, ~0u)) % vec4<u32>(32u)));
    var_1 = vec4<i32>(~var_1.x, -32848i, u_input.a, _wgslsmith_div_i32(max(15836i, -u_input.b), ~var_1.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.a)))) * vec3<f32>(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1068f, 692f))), -182f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2361f, arg_1, arg_1))))))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f + _wgslsmith_f_op_f32(arg_0 * arg_0)))), ~global1[_wgslsmith_index_u32(abs(1u), 20u)]);
    return func_2(firstLeadingBit(firstTrailingBit(var_1.zyx)), Struct_5(vec2<u32>(_wgslsmith_mult_u32(23745u, ~var_3.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 3983u, 0u), vec3<u32>(var_3.b.x, 96371u, 0u)), ~vec3<u32>(var_3.b.x, var_3.b.x, var_3.b.x)))), max(var_3.b.x, 4294967295u), arg_0);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f)))), vec2<u32>(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0.b.a, arg_0.a.a), ~24762u, arg_1.a.x), 97146u));
    var var_1 = 35992i;
    global0 = Struct_2(vec3<f32>(global0.a.x, global0.b, global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1350f - _wgslsmith_f_op_f32(min(-956f, var_0.a))) * -340f)));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.x - global0.a.x), _wgslsmith_f_op_f32(sign(-489f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), global0.b)) * _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(func_4(Struct_4(func_1(1676f, global0.a.x), Struct_1(1u, 2147483647i, vec3<i32>(-1i, -12090i, u_input.b))), Struct_5(vec2<u32>(15992u, 1u)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(21842u, 91232u), 61271u), 20u)], false))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_div_u32(func_2(vec3<i32>(_wgslsmith_sub_i32(u_input.a, 7155i), max(u_input.a, u_input.a), func_3(Struct_1(15805u, u_input.a, vec3<i32>(2147483647i, 18577i, 0i)), vec4<bool>(true, true, true, true))), Struct_5(~global1[_wgslsmith_index_u32(0u, 20u)]), abs(firstLeadingBit(1u)), -775f).a, 17279u));
}

