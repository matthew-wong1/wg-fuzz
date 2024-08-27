struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 28899i, 2147483647i);

var<private> global1: vec4<f32>;

var<private> global2: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<i32> {
    let var_0 = ~abs(global2.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-140f)) + _wgslsmith_f_op_f32(-arg_0)) - 485f)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, global1.x, arg_0, global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-365f, global1.x, arg_1.a, 2110f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2091f, -1050f, -904f, arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_1.a, 1000f, 583f) * vec4<f32>(-448f, 280f, 498f, arg_0)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_div_f32(-2578f, arg_0), -168f, _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1798f, arg_0, arg_0, global1.x) * vec4<f32>(arg_1.a, 869f, 1271f, arg_1.a))))));
    let var_2 = vec2<bool>(!arg_1.c.a.x, arg_1.c.a.x);
    let var_3 = arg_1.b.x;
    return vec4<i32>(-1i) * -(vec4<i32>(_wgslsmith_sub_i32(arg_1.b.x, global0.x), min(2147483647i, u_input.b), _wgslsmith_mod_i32(15646i, var_3), _wgslsmith_add_i32(-17442i, 1i)) | -(~vec4<i32>(-1i, var_0.x, 1i, global0.x)));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(global0.x, u_input.b), -global2.b.x), 68124i) == 46009i);
    var var_1 = var_0;
    global1 = vec4<f32>(1000f, _wgslsmith_div_f32(-544f, _wgslsmith_f_op_f32(-622f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), global1.x)))), arg_0, _wgslsmith_f_op_f32(max(arg_0, global1.x)));
    var var_2 = Struct_2(!global2.a, global2.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), any(!vec4<bool>(var_0.a, false, global2.a.x, global2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(141f, -1389f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, global1.x, -463f, arg_0), vec4<f32>(arg_0, arg_0, global1.x, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1588f), arg_0, global1.x, 1000f), true)) * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1221f, -2246f)), 309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -551f) + _wgslsmith_div_f32(1174f, -1000f)))));
    return select(~vec4<u32>(max(4294967295u, _wgslsmith_mult_u32(u_input.a.x, 1u)), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 56183u, 16984u) & vec4<u32>(0u, u_input.a.x, 86644u, 7707u), vec4<u32>(28561u, 1u, u_input.a.x, u_input.a.x)), 0u), min(~vec4<u32>(~50091u, min(91179u, 1u), 37385u | u_input.a.x, 1u), ~(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) ^ vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)) >> (_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)), vec4<u32>(0u, 4393u, 0u, 1u)) % vec4<u32>(32u))), false);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(func_2(global1.x, Struct_3(1172f, vec2<i32>(26521i, global0.x), Struct_2(vec2<bool>(arg_0, true), vec2<i32>(global2.b.x, u_input.b))), !vec3<bool>(true, arg_0, arg_0)), -vec4<i32>(u_input.b, -23382i, u_input.b, -11902i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-50365i, -2147483647i, 11255i, global2.b.x), vec4<i32>(49925i, -29016i, 2147483647i, global2.b.x), vec4<i32>(global2.b.x, -2147483647i, -2147483647i, global2.b.x))) << (func_3(_wgslsmith_f_op_f32(-global1.x)) % vec4<u32>(32u)), ~firstLeadingBit(vec4<i32>(global2.b.x, -52850i, 2147483647i, 1i) | -vec4<i32>(-2147483647i, global2.b.x, global0.x, -2147483647i)));
    global0 = vec3<i32>(reverseBits(global0.x), firstTrailingBit(~reverseBits(global0.x) << (u_input.a.x % 32u)), max(-2147483647i << ((u_input.a.x << (u_input.a.x % 32u)) % 32u), select(i32(-1i) * -1i, _wgslsmith_add_i32(-39727i, 8537i), u_input.a.x >= u_input.a.x)) ^ 2147483647i);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-269f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(296f + global1.x), global1.x)))))), reverseBits(_wgslsmith_mult_vec2_i32(var_0.zx, firstTrailingBit(global2.b))), Struct_2(!(!select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, false), global2.a)), -(~var_0.yz ^ (global0.yx | vec2<i32>(u_input.b, 2147483647i)))));
    let var_2 = _wgslsmith_mult_u32(u_input.a.x | 4294967295u, select(1u ^ ~u_input.a.x, ~min(u_input.a.x, 4294967295u), arg_0)) >= 1u;
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(38985i, -2147483647i, u_input.b), var_0.xwz << (_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, 6782u)), ~vec3<u32>(1u, u_input.a.x, 0u)) % vec3<u32>(32u)));
    return !(!(!(!select(vec4<bool>(true, true, false, var_1.c.a.x), vec4<bool>(var_2, arg_1.a, var_1.c.a.x, true), var_1.c.a.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> StorageBuffer {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, -924f, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1535f, global1.x, 804f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1136f)), _wgslsmith_f_op_f32(min(-730f, 342f)), global1.x, 1537f))))) + vec4<f32>(global1.x, _wgslsmith_div_f32(-1185f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x))), 710f, global1.x));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -327f), global0.yx | vec2<i32>(-1i, -2147483647i), Struct_2(select(func_1(true, Struct_1(arg_2)).zz, !(!vec2<bool>(arg_0.x, true)), select(global2.a, global2.a, true)), vec2<i32>(-1i, -(~global0.x))));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-global1.x);
    var var_3 = u_input.a.x;
    return StorageBuffer(vec2<u32>(var_1.x, ~var_1.x), ~reverseBits(u_input.a) | u_input.a, vec4<u32>(abs(_wgslsmith_mod_u32(~0u, ~0u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, var_1.x), var_1.x) << (~(17737u << (u_input.a.x % 32u)) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), firstTrailingBit(vec2<u32>(23680u, 41702u))), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global2.a.x;
    var var_1 = global1.x;
    let x = u_input.a;
    s_output = func_4(select(func_1(false, Struct_1(var_0)), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(global2.a.x, var_0, global2.a.x))), select(select(vec4<bool>(global2.a.x, true, false, global2.a.x), !vec4<bool>(var_0, false, var_0, false), vec4<bool>(false, global2.a.x, global2.a.x, false)), vec4<bool>(70249u < u_input.a.x, any(vec2<bool>(false, true)), any(vec3<bool>(global2.a.x, false, true)), global0.x <= u_input.b), vec4<bool>(global2.a.x, true, false, any(global2.a)))), ~u_input.b, false);
}

