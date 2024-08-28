struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec3<u32>, 12>;

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 12u)];
    let var_1 = _wgslsmith_mult_i32(~(-1i), 30103i >> (1u % 32u));
    global0 = arg_0.a.b.x;
    global0 = 1i;
    var var_2 = global2.x;
    return select(!arg_0.b, arg_0.b, true);
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<bool>(!all(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), true);
    var var_1 = Struct_1(select(!func_3(Struct_2(Struct_1(vec2<bool>(var_0.x, true), vec4<i32>(17255i, 0i, u_input.c, 0i)), vec2<bool>(false, var_0.x), false)), vec2<bool>(!all(vec2<bool>(false, var_0.x)), true), func_3(Struct_2(Struct_1(vec2<bool>(var_0.x, false), vec4<i32>(u_input.b.x, u_input.c, -2147483647i, u_input.b.x)), !vec2<bool>(false, var_0.x), !var_0.x))), -_wgslsmith_mod_vec4_i32(~max(vec4<i32>(u_input.c, 542i, u_input.a, u_input.a), vec4<i32>(-33265i, -37229i, 31736i, 2147483647i)), vec4<i32>(i32(-1i) * -2147483647i, 1i, _wgslsmith_sub_i32(-49083i, u_input.a), firstLeadingBit(-1i))));
    let var_2 = abs(_wgslsmith_dot_vec3_u32(select(max(global1[_wgslsmith_index_u32(4294967295u, 12u)] ^ global1[_wgslsmith_index_u32(1u, 12u)], firstLeadingBit(global1[_wgslsmith_index_u32(28765u, 12u)])), select(vec3<u32>(1010u, 0u, 4294967295u), vec3<u32>(1u, 1u, 1u), var_1.a.x), select(var_1.a.x | var_0.x, var_0.x, true)), vec3<u32>(61092u, ~(~17608u), 1u)));
    var_1 = Struct_1(select(vec2<bool>(select(var_1.a.x, false && var_0.x, var_1.a.x), !any(vec4<bool>(false, var_0.x, var_0.x, true))), var_1.a, all(var_1.a)), min(_wgslsmith_mult_vec4_i32(~var_1.b & vec4<i32>(var_1.b.x, -63385i, -20072i, u_input.a), firstTrailingBit(vec4<i32>(-1i, var_1.b.x, u_input.c, u_input.c) ^ vec4<i32>(-3172i, var_1.b.x, var_1.b.x, -2147483647i))), ~(~(-var_1.b))));
    var_0 = select(vec2<bool>(false, _wgslsmith_f_op_f32(round(global2.x)) < -322f), func_3(Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(var_0.x, true), var_1.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, 1i, -8429i), vec4<i32>(-16643i, 3062i, var_1.b.x, u_input.b.x))), vec2<bool>(true, true), var_1.a.x)), var_1.a.x);
    return Struct_3(!all(vec2<bool>(all(vec3<bool>(false, var_0.x, var_1.a.x)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -1537f)) * _wgslsmith_f_op_f32(sign(908f))), reverseBits(vec4<u32>(5243u, reverseBits(37767u), var_2 | var_2, ~29592u)) << (firstLeadingBit(vec4<u32>(~var_2, 4294967295u, var_2, ~24911u)) % vec4<u32>(32u)), Struct_2(Struct_1(!var_1.a, -vec4<i32>(-1135i, u_input.c, var_1.b.x, var_1.b.x)), !(!func_3(Struct_2(Struct_1(var_1.a, vec4<i32>(u_input.a, u_input.a, u_input.b.x, var_1.b.x)), var_1.a, var_1.a.x))), !all(select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(true, true, var_0.x, var_1.a.x), vec4<bool>(true, false, true, var_1.a.x)))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(u_input.a, 13819i), u_input.b.x, ~0i);
    return func_2();
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = Struct_4(arg_2.b);
    global1 = array<vec3<u32>, 12>();
    let var_1 = Struct_4(_wgslsmith_div_f32(arg_2.b, -1000f));
    global1 = array<vec3<u32>, 12>();
    let var_2 = func_2().d.a;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_0.a, var_0.a))) * vec2<f32>(global2.x, var_1.a))))), arg_2.d.a.b.wxz, vec3<i32>(abs(~u_input.c), (u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, arg_2.c.x, 0u, arg_1), arg_2.c) % 32u)) ^ (2147483647i | arg_2.d.a.b.x), select(~(arg_2.d.a.b.x ^ 2147483647i), arg_2.d.a.b.x, all(!vec4<bool>(arg_2.a, true, var_2.a.x, false)))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 39819u, 95u, 5330u), ~func_1(true).c), _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(arg_2.c, arg_2.c), arg_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(true, (select(~24382u, 1u, true) << (30620u % 32u)) >> (~reverseBits(_wgslsmith_add_u32(1u, 8885u)) % 32u), func_1(true));
}

