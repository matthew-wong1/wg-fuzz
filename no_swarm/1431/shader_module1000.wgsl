struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 8>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<u32> {
    global1 = array<Struct_3, 8>();
    let var_0 = _wgslsmith_sub_u32(select(u_input.b.x, (u_input.b.x << (u_input.a % 32u)) >> (~(~1u) % 32u), !global0.c.a), ~u_input.b.x);
    var var_1 = 4294967295u;
    let var_2 = select(select(abs(vec3<u32>(global0.e.b, 1u, 60543u)), _wgslsmith_div_vec3_u32(u_input.b, ~vec3<u32>(1u, 22798u, 26285u)), !(!vec3<bool>(global0.e.a, global0.e.a, false))) << (u_input.b % vec3<u32>(32u)), vec3<u32>(4294967295u, ~(~0u), select(u_input.b.x, abs(~40917u), global0.d.x)), global0.c.a);
    global0 = Struct_2(firstLeadingBit(47166i), global0.e.b, global0.c, global0.d, Struct_1(false, 0u, vec3<u32>(_wgslsmith_dot_vec3_u32(~global0.c.c, firstLeadingBit(global0.c.c)), ~u_input.b.x, 24311u)));
    return vec4<u32>(27896u, 14232u, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 12077u), u_input.a), 4294967295u >> ((countOneBits(countOneBits(var_2.x)) | ~var_2.x) % 32u));
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(40552u, 8u)];
    global0 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_0.c, _wgslsmith_mult_vec3_i32(var_0.c, var_0.c)), firstLeadingBit(2147483647i) & var_0.b) ^ -16983i, firstTrailingBit(~(1u ^ select(var_0.a, 24979u, global0.c.a))), Struct_1(true, min(~global0.b, var_0.a) | (3632u << (u_input.b.x % 32u)), ~vec3<u32>(3162u, 4294967295u, _wgslsmith_clamp_u32(26371u, global0.c.b, 18990u))), global0.d, Struct_1(_wgslsmith_f_op_f32(trunc(var_0.e.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1183u, global0.c.c.x, u_input.a), func_3()) ^ global0.c.c.x, vec3<u32>(57799u, ~max(var_0.d.c.x, 38155u), _wgslsmith_mult_u32(select(1u, 0u, var_0.d.a), _wgslsmith_mod_u32(u_input.b.x, u_input.a)))));
    global1 = array<Struct_3, 8>();
    let var_1 = firstLeadingBit(~0u);
    return !(!vec4<bool>(true, _wgslsmith_f_op_f32(-arg_0.x) == _wgslsmith_f_op_f32(arg_0.x - -316f), arg_0.x > -1007f, -2147483647i < max(global0.a, global0.a)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = 29847u;
    var_0 = 1u;
    return global1[_wgslsmith_index_u32(u_input.b.x, 8u)];
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = false;
    global1 = array<Struct_3, 8>();
    global1 = array<Struct_3, 8>();
    var var_1 = arg_1.x > global0.a;
    let var_2 = arg_0.c.d;
    return func_4(global1[_wgslsmith_index_u32(~51472u, 8u)], func_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.c.e.x)), -571f, _wgslsmith_f_op_f32(-arg_0.d.x)), arg_0.c.e.zzy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_1(global0.d.x, 1u, ~u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2192f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-352f, -401f) - -176f)))), func_1(Struct_4(global0.c, _wgslsmith_f_op_f32(sign(-760f)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x | global0.e.b, 0u), 8u)], vec3<f32>(-614f, -1309f, _wgslsmith_f_op_f32(-973f * 1273f)), reverseBits(~u_input.c)), select(select(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a, -19782i), vec2<i32>(29005i, 1i)), countOneBits(vec2<i32>(u_input.c, u_input.c)), !vec2<bool>(global0.c.a, true)), _wgslsmith_mod_vec2_i32(~vec2<i32>(global0.a, global0.a), vec2<i32>(30202i, 7593i)), true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 972f, 277f)), func_1(Struct_4(global0.e, -1290f, Struct_3(48452u, global0.a, vec3<i32>(global0.a, -2147483647i, global0.a), Struct_1(global0.c.a, global0.b, vec3<u32>(global0.b, 4294967295u, 41725u)), vec4<f32>(-983f, -1365f, 796f, -958f)), vec3<f32>(-1093f, -1090f, 622f), -9387i), vec2<i32>(-17679i, u_input.c)).e.xyy))))), u_input.c | u_input.c);
    global1 = array<Struct_3, 8>();
    let var_1 = global0.d;
    global1 = array<Struct_3, 8>();
    var var_2 = global0.d.x;
    var var_3 = var_0.c;
    var var_4 = Struct_3(var_0.a.c.x, firstTrailingBit(0i) << (u_input.b.x % 32u), func_1(Struct_4(var_3.d, func_4(var_0.c, vec4<bool>(true, true, false, global0.c.a)).e.x, Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.a, var_3.a, u_input.a), var_0.c.d.c), ~u_input.c, abs(var_0.c.c), Struct_1(var_3.d.a, 1u, vec3<u32>(var_3.d.b, 0u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e.x, 2209f, -374f, var_0.d.x))), _wgslsmith_f_op_vec3_f32(var_0.d * var_3.e.ywz), _wgslsmith_mult_i32(i32(-1i) * -14061i, var_3.c.x)), select(~(~var_0.c.c.yx), vec2<i32>(1i, var_0.c.c.x | 1i), !select(vec2<bool>(false, var_1.x), vec2<bool>(false, true), vec2<bool>(true, true)))).c, global0.c, _wgslsmith_f_op_vec4_f32(exp2(var_3.e)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(27286i, u_input.c, global0.a, -69132i)), min(~vec4<i32>(var_3.b, -24152i, -2147483647i, 3033i), vec4<i32>(2147483647i, -1i, var_0.e, var_4.c.x))), vec3<u32>(func_1(Struct_4(Struct_1(var_4.d.a, 32081u, global0.e.c), 983f, Struct_3(0u, var_3.b, var_3.c, var_0.a, vec4<f32>(1192f, -644f, var_0.c.e.x, var_3.e.x)), vec3<f32>(506f, -743f, var_4.e.x), -2147483647i), vec2<i32>(-u_input.c, ~0i)).a, 0u, var_3.a), firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(-28250i, 2147483647i), i32(-1i) * -2147483647i) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(6537u, var_0.a.c.x), vec2<u32>(0u, global0.b) & vec2<u32>(var_4.d.b, u_input.a)) % vec2<u32>(32u))), vec2<u32>(~(~var_3.d.b), func_3().x) ^ (~u_input.b.yy | u_input.b.xx), _wgslsmith_f_op_f32(1347f - _wgslsmith_f_op_f32(select(var_3.e.x, var_3.e.x, var_3.d.a))));
}

