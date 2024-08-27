struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(1u, 4294967295u, 95078u, 4294967295u, 0u, 4294967295u, 0u, 14433u, 16407u, 0u, 4294967295u);

var<private> global1: array<Struct_1, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_3(select(select(vec4<bool>(true, all(vec2<bool>(true, false)), true, all(vec2<bool>(false, false))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), true), vec4<bool>(true, all(vec2<bool>(false, false)) | false, (31859u << (u_input.c % 32u)) < global0[_wgslsmith_index_u32(~1u, 11u)], false), vec4<bool>(any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, false, false, true)), false || all(vec2<bool>(false, false)), any(vec3<bool>(true, true, true)))), global1[_wgslsmith_index_u32(u_input.c, 30u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-280f, _wgslsmith_f_op_f32(293f * -270f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-1000f, 131f), _wgslsmith_f_op_f32(-1000f * 206f))))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(43571i, u_input.e), vec2<i32>(u_input.d.x, ~u_input.e), u_input.d.zx));
    var_0 = Struct_3(vec4<bool>(all(var_0.a), var_0.a.x, any(select(!vec2<bool>(true, var_0.a.x), var_0.a.wx, var_0.a.xw)), false), Struct_1(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16451u, 7885u), vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(1u, 11u)], 1u)), 11u)], 3009u), ~min(var_0.b.b, vec2<i32>(1i, var_0.d.x))), var_0.c, _wgslsmith_mult_vec2_i32(u_input.d.xy, vec2<i32>(var_0.b.b.x, max(i32(-1i) * -23217i, var_0.b.b.x >> (global0[_wgslsmith_index_u32(var_0.b.a, 11u)] % 32u)))));
    var var_1 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.d.x, 22178i, -9787i)), u_input.d), 1i), select(var_0.a.xw, vec2<bool>(var_0.a.x, true), vec2<bool>(true, true)), var_0.a.ywy, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-789f)) + 1119f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - 184f))) * var_0.c.x));
    var var_2 = Struct_3(vec4<bool>(any(var_1.b), true | all(vec2<bool>(true, true)), true, var_1.c.x), Struct_1(_wgslsmith_mult_u32(var_0.b.a, reverseBits(0u)), -u_input.d.yx ^ ~var_0.b.b), _wgslsmith_f_op_vec2_f32(round(var_0.c)), -vec2<i32>(-3999i, firstLeadingBit(_wgslsmith_sub_i32(21764i, 66505i))));
    global1 = array<Struct_1, 30>();
    return vec2<u32>(~var_2.b.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_mult_u32(var_0.b.a, firstTrailingBit(~28558u))), 11u)], 11u)]);
}

fn func_2() -> bool {
    let var_0 = func_3() & u_input.a;
    return ~u_input.e > 68812i;
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = Struct_3(vec4<bool>(any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), arg_0.x > -35563i)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !func_2(), true), global1[_wgslsmith_index_u32(13809u, 30u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-566f, 2039f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-716f, -418f) - vec2<f32>(-165f, -1148f))))), vec2<i32>(u_input.d.x, arg_0.x ^ ~1i) << (u_input.a % vec2<u32>(32u)));
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    return vec3<bool>(var_0.a.x, any(!select(vec3<bool>(false, true, var_0.a.x), !vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(true, false, var_0.a.x))), !var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = any(select(select(vec3<bool>(all(vec3<bool>(var_0, var_0, true)), !var_0, true), vec3<bool>(var_0, true, true), func_1(u_input.d.xx)), vec3<bool>(func_1(vec2<i32>(u_input.d.x, -6195i)).x, !var_0 || true, false), true));
    var_1 = true;
    global0 = array<u32, 11>();
    var var_2 = ~(vec4<i32>(-1i) * -vec4<i32>(-41976i, -1i, u_input.e >> (global0[_wgslsmith_index_u32(0u, 11u)] % 32u), 8669i));
    global1 = array<Struct_1, 30>();
    var var_3 = select(!func_1(firstLeadingBit(firstLeadingBit(u_input.d.xz))).xz, !(!vec2<bool>(var_0, var_0)), select(func_1(select(u_input.d.yz, ~vec2<i32>(u_input.d.x, 31467i), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), true))).xy, !select(vec2<bool>(false, var_0), vec2<bool>(true, true), select(vec2<bool>(var_0, false), vec2<bool>(false, true), true)), true));
    global0 = array<u32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -604f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1606f), 686f), true)));
}

