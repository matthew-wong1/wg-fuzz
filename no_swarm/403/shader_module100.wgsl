struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    return 29621u;
}

fn func_2(arg_0: Struct_5) -> Struct_4 {
    var var_0 = u_input.a << (max(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_0.a, 95281u) ^ vec3<u32>(23678u, arg_0.a, arg_0.a), vec3<u32>(4294967295u, arg_0.a, 18986u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~arg_0.a, arg_0.a, 1u), vec3<u32>(arg_0.a >> (60772u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 54623u, 40713u), vec4<u32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), func_3()))) % vec3<u32>(32u));
    var var_1 = 1f;
    let var_2 = Struct_1(arg_0.a);
    var var_3 = true;
    let var_4 = Struct_5(select(~(~var_2.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 40089u, 27288u, var_2.a) & (vec4<u32>(1u, 33749u, 4294967295u, 0u) << (vec4<u32>(1u, 91331u, arg_0.a, var_2.a) % vec4<u32>(32u))), vec4<u32>(arg_0.a, arg_0.a, 4294967295u, 4294967295u) & _wgslsmith_sub_vec4_u32(vec4<u32>(22339u, arg_0.a, var_2.a, arg_0.a), vec4<u32>(var_2.a, arg_0.a, var_2.a, arg_0.a))), firstTrailingBit(-7302i) == abs(min(-24228i, 0i))));
    return Struct_4(Struct_2(var_2, Struct_1(_wgslsmith_mod_u32(~arg_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, 4294967295u, arg_0.a), vec3<u32>(1u, var_2.a, 20162u)))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xz) ^ _wgslsmith_add_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, var_0.x)), vec2<i32>(var_0.x, var_0.x)), Struct_1(_wgslsmith_sub_u32(~4294967295u, func_3()))), ~select(firstLeadingBit(firstTrailingBit(vec4<u32>(0u, arg_0.a, 0u, 17920u))), ~reverseBits(vec4<u32>(arg_0.a, arg_0.a, 57143u, 9058u)), true), firstTrailingBit(min(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 7495i), vec4<i32>(var_0.x, var_0.x, -2147483647i, 2147483647i))), vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(1i, -5678i), -12169i, u_input.a.x))), true);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: i32) -> i32 {
    let var_0 = vec4<i32>(~(-4918i), u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_0.a.c.x, arg_2, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_0.c.x, -8292i, 0i), arg_0.c)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a.xy), reverseBits(vec2<i32>(2147483647i, arg_0.c.x)))) ^ ~_wgslsmith_div_i32(-2147483647i, 24736i), arg_2 | max(_wgslsmith_mult_i32(arg_0.a.c.x, u_input.a.x) ^ 0i, arg_0.c.x));
    return -3612i;
}

fn func_1(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = u_input.a;
    var var_1 = arg_0.xz;
    var var_2 = countOneBits(func_4(func_2(Struct_5(45426u)), vec3<u32>(0u, 5176u, 60356u), 1i) << (~(~105683u) % 32u)) == u_input.a.x;
    let var_3 = var_1.x;
    let var_4 = func_2(Struct_5(~((4294967295u << (0u % 32u)) >> (1u % 32u)))).a;
    return ~abs(_wgslsmith_div_vec4_u32(~vec4<u32>(var_4.b.a, 4294967295u, 1u, 61937u), abs(vec4<u32>(0u, 0u, 0u, var_4.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(select(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~46773u, ~2597u, 1u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u)), true));
    var_0 = func_1(-vec4<i32>(-2147483647i, u_input.a.x, _wgslsmith_clamp_i32(min(-2147483647i, u_input.a.x), u_input.a.x, u_input.a.x), ~(u_input.a.x >> (var_0.x % 32u))));
    let var_1 = select(vec2<bool>(true, true), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true), vec2<bool>(select(false, false, true), true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), any(vec2<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1059f, 1448f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(400f * 2693f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-827f, -568f))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, 1384f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, var_2.x, -756f, var_2.x)))), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-786f + -1393f), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_div_f32(2031f, -797f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-136f, -616f, var_2.x, -1370f), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -620f, var_2.x, 489f), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)), all(vec2<bool>(var_1.x, var_1.x)))))));
    var var_4 = func_2(Struct_5(~4294967295u)).a.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(-var_2.x))), firstLeadingBit(~(~vec4<u32>(var_0.x, 0u, var_4.a, var_0.x)) & vec4<u32>(var_0.x, 13522u, ~1u, 36787u)));
}

