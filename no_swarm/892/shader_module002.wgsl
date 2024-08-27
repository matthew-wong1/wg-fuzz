struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<f32>, 4>;

var<private> global2: i32 = -26853i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = vec2<bool>(!global0.x, all(!vec3<bool>(global0.x, global0.x | global0.x, u_input.a.x > 31335u)));
    let var_1 = ~vec3<i32>(select(max(1i, -34823i << (1u % 32u)), -35798i << (u_input.a.x % 32u), u_input.a.x >= 1u), _wgslsmith_mult_i32(abs(i32(-1i) * -12558i), ~firstLeadingBit(-40979i)), abs(-(i32(-1i) * -11759i)));
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x & _wgslsmith_mod_i32(var_1.x, 1i)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.x, min(19541i, var_1.x)), var_1.x), min(-var_1.x, var_1.x) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 57094u, u_input.a.x), vec4<u32>(79351u, 14398u, u_input.a.x, 0u)) % 32u)));
    var var_3 = firstLeadingBit(min(vec2<u32>(~(u_input.a.x >> (u_input.a.x % 32u)), abs(_wgslsmith_mult_u32(1u, u_input.a.x))), ~max(vec2<u32>(4294967295u, 63051u), vec2<u32>(u_input.a.x, 65644u)) | max(abs(vec2<u32>(0u, u_input.a.x)), u_input.a >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))));
    var_3 = vec2<u32>(~((3020u >> (var_3.x % 32u)) << (47093u % 32u)) ^ countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(27304u, var_3.x, 0u) >> (vec3<u32>(u_input.a.x, u_input.a.x, var_3.x) % vec3<u32>(32u)), vec3<u32>(0u, 0u, 55971u))), ~var_3.x);
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(760f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-744f - 475f), _wgslsmith_f_op_f32(1000f - -212f))), _wgslsmith_mod_u32(u_input.a.x, 0u) >= 1u))), _wgslsmith_f_op_f32(f32(-1f) * -1598f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f * 695f)))));
    let var_1 = Struct_3(Struct_2(firstLeadingBit(u_input.a.x | 70252u) << (func_3() % 32u)), -3126i);
    global0 = !(!select(vec2<bool>(global0.x, true), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), vec2<bool>(global0.x, false)), select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), vec2<bool>(true, false))));
    let var_2 = var_0.x;
    global1 = array<vec2<f32>, 4>();
    return Struct_1(all(vec2<bool>(!(!global0.x), any(vec3<bool>(false, global0.x, global0.x)) && global0.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_3(Struct_2(u_input.a.x), 0i);
    let var_2 = Struct_2(~var_1.a.a);
    global0 = select(vec2<bool>(true, true), var_0, var_0);
    var var_3 = Struct_3(var_1.a, var_1.b);
    return Struct_3(var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(select(var_3.b, -54893i, false) >> (_wgslsmith_div_u32(0u, var_2.a) % 32u), _wgslsmith_add_i32(var_3.b << (var_2.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-20515i, 49082i, var_1.b), vec3<i32>(-1i, 1i, -1i))), 29584i, var_3.b), _wgslsmith_add_vec4_i32(vec4<i32>(~(-1i), firstLeadingBit(16816i), select(var_3.b, 2147483647i, true), -1957i), ~(-vec4<i32>(var_1.b, 2815i, var_1.b, 7489i)))));
}

fn func_1() -> vec2<u32> {
    let var_0 = func_4(~reverseBits(max(u_input.a.x, firstTrailingBit(u_input.a.x))), func_2(), Struct_1(all(!select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), global0.x))));
    global2 = countOneBits(-(~(-43972i)));
    let var_1 = func_4(76240u, func_2(), func_2()).a;
    let var_2 = var_1;
    var var_3 = global0.x;
    return select(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.a, abs(vec2<u32>(3078u, var_1.a))), u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(105348u & var_2.a, var_0.a.a), u_input.a)), ~vec2<u32>(var_1.a, ~(~4294967295u)), vec2<bool>(true, global0.x));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> vec3<u32> {
    global2 = arg_1 >> (arg_2.x % 32u);
    global1 = array<vec2<f32>, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32((~5215u >> (1u % 32u)) | abs(~_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(2251u, u_input.a.x))), 4u)]);
    global0 = vec2<bool>(all(!select(vec2<bool>(global0.x, true), !vec2<bool>(true, global0.x), vec2<bool>(true, global0.x))), any(!(!vec3<bool>(global0.x, false, global0.x))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(640f * -911f), _wgslsmith_f_op_f32(var_0.x + -517f), global0.x)))) - var_0.x)));
    return ~_wgslsmith_div_vec3_u32(~(~(vec3<u32>(arg_2.x, 4294967295u, u_input.a.x) & vec3<u32>(arg_3.a, 33438u, 4294967295u))), ~_wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.a.x, arg_3.a, arg_3.a), vec3<u32>(arg_3.a, arg_3.a, arg_3.a)), max(vec3<u32>(u_input.a.x, 17551u, arg_2.x), vec3<u32>(71752u, 4294967295u, 13403u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(-2147483647i, 65891i);
    global0 = vec2<bool>(!all(vec2<bool>(all(vec3<bool>(global0.x, true, false)), global0.x)), false);
    global2 = ~(-56695i >> (_wgslsmith_dot_vec3_u32(func_5(u_input.a.x, 2147483647i, func_1(), Struct_2(4294967295u)), vec3<u32>(u_input.a.x, 0u, ~u_input.a.x)) % 32u));
    var var_1 = u_input.a.x;
    var var_2 = ~var_0;
    var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a.x), ~(~(vec4<u32>(4294967295u, u_input.a.x, 1u, 0u) ^ vec4<u32>(23311u, 4294967295u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1432f, -1855f, -653f, 259f) * vec4<f32>(558f, -128f, 2500f, -1000f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1055f, 631f, -410f, -633f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -899f, 688f, 830f) + vec4<f32>(213f, 2214f, 1237f, 1000f)))))), 28311i, _wgslsmith_f_op_f32(-433f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) + 1291f))));
}

