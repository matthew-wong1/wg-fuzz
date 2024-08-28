struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 32>;

var<private> global2: array<Struct_3, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(global0.c.c.yy));
    let var_1 = false;
    global1 = array<i32, 32>();
    global2 = array<Struct_3, 11>();
    let var_2 = -_wgslsmith_add_vec3_i32(select(firstTrailingBit(~vec3<i32>(global1[_wgslsmith_index_u32(global0.d.x, 32u)], 37598i, global1[_wgslsmith_index_u32(global0.c.a.b.x, 32u)])), ~reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(global0.c.a.b.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], -26273i)), vec3<bool>(true, true, true)), ~(-vec3<i32>(-2147483647i, global0.c.a.a, global0.a.x)));
    return Struct_4(vec2<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, global1[_wgslsmith_index_u32(global0.d.x, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], global0.a.x, global0.a.x)), max(-1i, global1[_wgslsmith_index_u32(42851u, 32u)])), 2147483647i) | _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_2.x) >> (vec2<u32>(global0.d.x, global0.c.a.b.x) % vec2<u32>(32u)), global0.a), _wgslsmith_div_i32(_wgslsmith_add_i32(37693i, max(global0.c.a.a << (u_input.a % 32u), 1i)), reverseBits(~(global0.b >> (global0.c.a.b.x % 32u)))), global0.c, countOneBits(global0.d));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    global0 = func_2();
    let var_0 = select(max(func_2().c.a.b.x, 0u), 16165u, arg_1.x);
    let var_1 = abs(~func_2().d.x);
    let var_2 = global0.c.a;
    var var_3 = vec2<u32>(var_1, 12999u);
    return ~reverseBits(var_0 << (_wgslsmith_dot_vec3_u32(vec3<u32>(33428u, 4294967295u, arg_0.d.a.b.x), ~vec3<u32>(var_3.x, 29845u, var_2.b.x)) % 32u));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_1 {
    global1 = array<i32, 32>();
    global0 = func_2();
    global0 = Struct_4(~(-arg_0.a), ~_wgslsmith_sub_i32(global0.c.a.a, _wgslsmith_mult_i32(arg_2.d.a.a, arg_0.a.x) >> ((u_input.a | u_input.a) % 32u)), func_2().c, vec2<u32>(abs(arg_0.c.a.b.x) | _wgslsmith_div_u32(~arg_2.b.x, 1u), ~(func_3(global2[_wgslsmith_index_u32(4294967295u, 11u)], vec2<bool>(false, arg_3.x)) | ~arg_2.d.b.x)));
    let var_0 = Struct_4(min(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(24935i, arg_2.a.x) << (arg_0.d % vec2<u32>(32u)), ~vec2<i32>(8621i, 42756i))), ~(_wgslsmith_div_vec2_i32(vec2<i32>(global0.b, arg_2.d.a.a), vec2<i32>(0i, global0.b)) & (arg_2.a.xx >> (global0.d % vec2<u32>(32u))))), arg_2.a.x, func_2().c, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~arg_0.c.b.x, arg_2.b.x), vec2<u32>(~0u, reverseBits(arg_2.b.x))), arg_0.d, _wgslsmith_mod_vec2_u32(~max(global0.c.b.yw, vec2<u32>(arg_2.b.x, u_input.a)), reverseBits(arg_2.d.a.b.wx))));
    global2 = array<Struct_3, 11>();
    return Struct_1(-61323i, _wgslsmith_mult_vec4_u32(~var_0.c.a.b, arg_2.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -920f;
    global0 = Struct_4(firstLeadingBit(global0.a), global0.a.x, Struct_2(func_1(Struct_4(vec2<i32>(-2147483647i, global0.b), countOneBits(global1[_wgslsmith_index_u32(global0.c.b.x, 32u)]), Struct_2(global0.c.a, global0.c.a.b, vec4<f32>(-1000f, var_0, 332f, var_0)), vec2<u32>(global0.d.x, u_input.a)), -220f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~0u), 11u)], vec4<bool>(true, true, true, true)), global0.c.a.b, _wgslsmith_f_op_vec4_f32(sign(global0.c.c))), ~vec2<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(0u, global0.c.b.x)), 0u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.c.c))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.c.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.c.x, var_0, var_0, -572f), global0.c.c, select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))))));
    global1 = array<i32, 32>();
    var var_2 = vec4<f32>(-161f, var_0, _wgslsmith_f_op_f32(ceil(2013f)), var_1.x);
    var var_3 = global0.c;
    var var_4 = Struct_3(vec4<i32>(i32(-1i) * -global1[_wgslsmith_index_u32(~var_3.b.x, 32u)], 0i >> (~(u_input.a >> (39030u % 32u)) % 32u), _wgslsmith_clamp_i32(-16245i, _wgslsmith_mult_i32(global0.c.a.a, global1[_wgslsmith_index_u32(global0.c.b.x, 32u)]), var_3.a.a >> (7694u % 32u)) ^ global1[_wgslsmith_index_u32(~var_3.b.x, 32u)], -global0.c.a.a), vec2<u32>(~(~22845u), global0.d.x) >> (~(~(vec2<u32>(u_input.a, 13907u) >> (vec2<u32>(var_3.b.x, 4294967295u) % vec2<u32>(32u)))) % vec2<u32>(32u)), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.d.c.x), var_3.a.a << (u_input.a % 32u));
}

