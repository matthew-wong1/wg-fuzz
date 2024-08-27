struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = u_input.a.x;
    return global0[_wgslsmith_index_u32(~min(~u_input.a.x, u_input.a.x), 17u)];
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_5, arg_3: vec3<u32>) -> i32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a, vec2<f32>(arg_2.a.x, 1062f)) * _wgslsmith_f_op_vec2_f32(arg_2.a * vec2<f32>(arg_2.a.x, 528f))) * _wgslsmith_f_op_vec2_f32(sign(arg_2.a))) + arg_2.a));
    global0 = array<Struct_2, 17>();
    var var_2 = reverseBits(_wgslsmith_div_i32(-min(-9035i, arg_1.a.x), -52387i));
    let var_3 = -_wgslsmith_clamp_i32(1i, 12777i, arg_1.a.x);
    return var_3;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32) -> i32 {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(~(~(-u_input.b)), u_input.b), func_3(false, func_2(Struct_4(~vec4<i32>(0i, u_input.c.x, -26637i, 18720i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, -530f, -1238f, -1102f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, arg_2)))), Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + vec2<f32>(arg_2, arg_2)))), ~vec3<u32>(28077u, _wgslsmith_mult_u32(u_input.a.x, 0u), 4294967295u)), u_input.b, _wgslsmith_mult_i32(i32(-1i) * -u_input.c.x, _wgslsmith_sub_i32(-max(-1298i, u_input.c.x), -5318i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(214f, arg_2, arg_2) + vec3<f32>(arg_2, arg_2, arg_2)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2395f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))));
    global0 = array<Struct_2, 17>();
    let var_2 = arg_1.ywy;
    global0 = array<Struct_2, 17>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, select(all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), false)), 1u <= ~u_input.a.x, true), !(u_input.b == ~func_1(Struct_3(vec2<bool>(true, true)), vec4<bool>(false, false, false, true), -783f)));
    global0 = array<Struct_2, 17>();
    var var_1 = u_input.b | _wgslsmith_mod_i32(~u_input.b, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, 42933i), func_3(false & var_0.x, global0[_wgslsmith_index_u32(1u, 17u)], Struct_5(vec2<f32>(1517f, 1000f)), vec3<u32>(4334u, 8361u, u_input.a.x))));
    let var_2 = Struct_1(min(vec4<i32>(~abs(-43480i), _wgslsmith_div_i32(u_input.b, u_input.b) & u_input.b, -abs(2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(0i, u_input.b, 2147483647i)), ~vec3<i32>(u_input.b, -2147483647i, u_input.b))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(-8339i, u_input.b), ~u_input.c.x), u_input.b, _wgslsmith_mod_i32(u_input.c.x, u_input.b) & u_input.b, 18597i)), vec3<bool>(false, false, true));
    let var_3 = Struct_3(var_0.zx);
    var_1 = firstTrailingBit(u_input.b);
    global0 = array<Struct_2, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(26895u, u_input.a.x, 22568u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), ~vec4<u32>(63274u, 20017u, u_input.a.x, u_input.a.x)), vec4<u32>(0u, ~firstTrailingBit(0u), u_input.a.x, ~4294967295u)), ~abs(vec4<u32>(1u, ~u_input.a.x, ~u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-813f, -950f)))))));
}

