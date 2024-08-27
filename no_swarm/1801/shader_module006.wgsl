struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> f32 {
    global0 = array<Struct_3, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2019f, 991f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1660f, 211f), vec2<f32>(-322f, -1000f), vec2<bool>(true, true)))))), vec2<f32>(-1000f, _wgslsmith_div_f32(591f, _wgslsmith_f_op_f32(155f - -973f)))));
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    return var_0.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1.c;
    var var_1 = select(var_0.zy, !vec2<bool>(var_0.x, false), true);
    let var_2 = ~(~(~vec4<u32>(_wgslsmith_clamp_u32(arg_0, arg_0, 1u), 81989u, ~arg_1.a.x, 1u >> (1u % 32u))));
    var var_3 = _wgslsmith_f_op_f32(func_2());
    let var_4 = ~arg_0;
    return !(!vec4<bool>(true, all(vec4<bool>(arg_1.c.x, var_0.x, true, true)), reverseBits(36308i) <= ~u_input.e, true));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>) -> vec2<f32> {
    let var_0 = Struct_1(u_input.a ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, arg_0.x), countOneBits(~vec2<u32>(arg_0.x, arg_0.x))), _wgslsmith_div_vec2_i32(u_input.b.yz & _wgslsmith_clamp_vec2_i32(max(vec2<i32>(u_input.e, u_input.e), arg_1), abs(u_input.b.xz), arg_1), vec2<i32>(_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1675i, -19743i), vec3<i32>(-1i, u_input.e, u_input.b.x)), -1i), -reverseBits(2147483647i))), !func_1(_wgslsmith_mod_u32(u_input.a.x, 0u) ^ 0u, Struct_1(vec2<u32>(1u, 1u), arg_1, select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec2<f32>(827f, -717f))).xzz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 302f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, -600f)))));
    let var_1 = -(_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(0i, var_0.b.x, u_input.e)), firstTrailingBit(vec3<i32>(1i, 1i, 1i))) | _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), u_input.b), u_input.b));
    var var_2 = Struct_3(Struct_2(reverseBits(20914i)), Struct_2(var_0.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1263f)), _wgslsmith_f_op_f32(f32(-1f) * -963f), all(vec4<bool>(var_0.d.x >= var_0.d.x, true, select(var_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x)))));
    global0 = array<Struct_3, 11>();
    var_2 = Struct_3(var_2.b, Struct_2(~_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.x, 2147483647i, 4790i), abs(vec3<i32>(23805i, u_input.e, var_0.b.x)))), var_2.c);
    return vec2<f32>(111f, 1540f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec4<bool>(true, true, false, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), !func_1(u_input.a.x, Struct_1(u_input.a, u_input.b.xy, vec3<bool>(true, true, true), vec2<f32>(-549f, 103f)))), func_1(_wgslsmith_div_u32(u_input.a.x, ~1u), Struct_1(~u_input.a, u_input.b.xy, vec3<bool>(false, false, false), _wgslsmith_f_op_vec2_f32(func_3(vec4<u32>(0u, u_input.c, 66575u, u_input.c), vec2<i32>(37980i, -13i))))), true);
    var_0 = !func_1(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.a.x, 1u, 4294967295u), ~vec4<u32>(u_input.c, 5972u, 23617u, u_input.c)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1363u, u_input.c, 8386u), vec3<u32>(u_input.a.x, 34208u, 19130u)), ~1u, _wgslsmith_sub_u32(u_input.c, 0u), ~0u)), Struct_1(u_input.a, u_input.b.zx, var_0.zzz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1736f, 118f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, 1000f)))));
    var_0 = !vec4<bool>(var_0.x, u_input.d < u_input.e, true, var_0.x);
    let var_1 = u_input.d;
    var var_2 = Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_mod_i32(35011i, var_1), -11508i), ~(-u_input.b))), Struct_2(firstTrailingBit(u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1374f))) * -300f)));
    let var_3 = -1115f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_add_u32(abs(u_input.c), u_input.c), ~1u), _wgslsmith_f_op_f32(-var_2.c));
}

