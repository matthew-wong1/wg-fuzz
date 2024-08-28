struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> u32 {
    var var_0 = abs(reverseBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.d.x, -37632i, global0.d.x), u_input.a), vec3<i32>(global0.d.x, -1i, 1i), vec3<i32>(global0.d.x, u_input.d, -2147483647i))) ^ reverseBits(vec3<i32>(firstLeadingBit(u_input.a.x), -17448i, global0.d.x)));
    let var_1 = -400f;
    let var_2 = Struct_3(~(var_0.xx << (vec2<u32>(21116u, _wgslsmith_mod_u32(18721u, global0.a.x)) % vec2<u32>(32u))), 4294967295u);
    var_0 = vec3<i32>(15058i, 2147483647i << (global0.a.x % 32u), u_input.b.x);
    let var_3 = Struct_2(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(26888u, 0u) >> (~vec2<u32>(global0.b.x, 4294967295u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(4294967295u, u_input.e))), global0.b.yy), ~abs(firstLeadingBit(global0.b)));
    return 1u;
}

fn func_3(arg_0: bool) -> vec3<u32> {
    global0 = Struct_1(min(global0.a << ((abs(global0.a) ^ global0.a) % vec2<u32>(32u)), vec2<u32>(~8767u, _wgslsmith_add_u32(~u_input.e, global0.a.x))), ~global0.b, global0.c, ~u_input.b);
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, 340f, global0.c))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, -1209f, global0.c)), vec3<f32>(-438f, 428f, 1055f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, global0.c) - vec3<f32>(global0.c, -1103f, global0.c)))))))));
    let var_1 = Struct_2(_wgslsmith_div_vec2_u32(select(global0.b.wz, ~(~global0.b.xz), false), global0.a), ~global0.b);
    var var_2 = global0.d.x;
    let var_3 = var_0.x;
    return var_1.b.wyy;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32) -> vec2<u32> {
    var var_0 = func_3(!any(!vec4<bool>(arg_0.x, arg_0.x, true, true)));
    let var_1 = global0.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1415f * 1005f)), _wgslsmith_f_op_f32(-global0.c)))), vec2<f32>(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.c, 1000f, false)), global0.c)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c), -103f)))), any(arg_0)));
    let var_3 = Struct_2(vec2<u32>(u_input.e | arg_1.x, arg_1.x), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_div_u32(arg_1.x, 0u), _wgslsmith_dot_vec2_u32(global0.a, var_0.xx), ~var_0.x), vec4<u32>(firstTrailingBit(var_0.x), arg_1.x, 1u, select(100764u, var_0.x, arg_0.x))), 53194u, countOneBits(1u), var_0.x));
    var var_4 = var_3;
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec2<u32>(u_input.e >> (85943u % 32u), firstLeadingBit(u_input.e) << (select(_wgslsmith_mod_u32(28095u, 59278u), ~u_input.e, false) % 32u)), ~vec4<u32>(u_input.e, u_input.e, ~u_input.e, firstTrailingBit(25739u)) & vec4<u32>(~71560u, (u_input.e | 1u) | 29736u, 0u, 30053u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f))), global0.d);
    let var_0 = -2147483647i;
    global0 = Struct_1(~vec2<u32>(~(1u >> (1u % 32u)), u_input.e), vec4<u32>(37902u, ~(~1u | ~u_input.e), _wgslsmith_div_u32(14256u, ~u_input.e), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.b.x, global0.a.x, 4294967295u), vec4<u32>(u_input.e, u_input.e, global0.a.x, 0u))), global0.c, global0.d);
    global0 = Struct_1(firstTrailingBit(vec2<u32>(~global0.b.x, 57612u)), _wgslsmith_add_vec4_u32(global0.b, ~global0.b), global0.c, _wgslsmith_mod_vec4_i32(u_input.b, -global0.d));
    global0 = Struct_1(vec2<u32>(u_input.e, global0.a.x), vec4<u32>(_wgslsmith_mult_u32(~u_input.e, 53607u), u_input.e, ~(44306u | u_input.e), 7086u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c))), _wgslsmith_f_op_f32(abs(global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1210f, global0.c)))) - _wgslsmith_f_op_f32(global0.c * -337f))), global0.d);
    let var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(max(~vec2<u32>(global0.a.x, 77384u), vec2<u32>(firstLeadingBit(106548u), func_1())), global0.b.wy | _wgslsmith_sub_vec2_u32(func_2(vec3<bool>(true, false, true), vec2<u32>(7861u, 10596u), 1i), vec2<u32>(global0.b.x, 4294967295u))), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_clamp_u32(func_1(), global0.a.x >> (global0.a.x % 32u), u_input.e), _wgslsmith_sub_u32(global0.a.x << (1u % 32u), 29506u), reverseBits(_wgslsmith_dot_vec2_u32(var_1, global0.a)), var_1.x & ~18494u), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(reverseBits(var_0), u_input.c), ~var_0), _wgslsmith_clamp_i32(max(u_input.a.x, -15715i), _wgslsmith_add_i32(u_input.c, -1630i), var_0) << (4294967295u % 32u)));
}

