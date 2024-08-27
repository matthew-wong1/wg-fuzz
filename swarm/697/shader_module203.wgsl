struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: u32;

var<private> global2: array<vec2<u32>, 15>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = reverseBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(-21486i, -u_input.d.x, max(u_input.d.x, u_input.d.x)), u_input.d));
    var var_1 = global0[_wgslsmith_index_u32(12380u, 9u)];
    var var_2 = var_1.d;
    var var_3 = var_2.b;
    return 2147483647i;
}

fn func_3(arg_0: bool, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.b, 44896u, 66506u)), vec4<u32>(arg_1, 1243u, 11018u, u_input.a) | vec4<u32>(55822u, u_input.c, 7702u, arg_1)), 587u), select(max(firstLeadingBit(vec3<u32>(1u, 1u, u_input.b)), ~vec3<u32>(40371u, 1u, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 20308u, 1u), vec3<u32>(arg_1, arg_1, arg_1)), vec3<bool>(true & arg_0, false, true))), ~vec3<u32>(0u, 1u, 1u) >> (~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.c, 64214u), abs(vec3<u32>(1u, arg_1, 0u))) % vec3<u32>(32u)));
    let var_1 = ~(-_wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 34831i, -2147483647i, -2147483647i), vec4<i32>(-2147483647i, -2147483647i, -1i, u_input.d.x))), min(vec4<i32>(u_input.d.x, -36925i, u_input.d.x, u_input.d.x) & vec4<i32>(0i, u_input.d.x, u_input.d.x, u_input.d.x), -vec4<i32>(1i, u_input.d.x, u_input.d.x, 2147483647i))));
    let var_2 = !(arg_0 | (any(!vec3<bool>(arg_0, arg_0, arg_0)) && (true & arg_0)));
    global0 = array<Struct_3, 9>();
    let var_3 = (~(~reverseBits(4294967295u)) & u_input.c) == (~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(1670u, 4701u, 29774u), vec3<u32>(u_input.c, 30431u, arg_1)), vec3<u32>(21645u, u_input.a, u_input.c)) | u_input.a);
    return any(!vec3<bool>(!(var_0.x != 0u), true, true || all(vec2<bool>(var_2, false))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(27631u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.b), ~u_input.c), ~global2[_wgslsmith_index_u32(u_input.b, 15u)] | _wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(u_input.c, 15u)], vec2<u32>(4294967295u, 5587u)))), ~abs(vec3<u32>(u_input.c >> (14013u % 32u), u_input.b << (0u % 32u), ~u_input.b)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-267f, -1280f, 1982f))) * vec3<f32>(-2151f, _wgslsmith_f_op_f32(1682f * 405f), _wgslsmith_f_op_f32(305f * 1000f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-991f, 1010f, _wgslsmith_f_op_f32(max(-1792f, 686f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-924f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(764f, 546f)) * -373f), (i32(-1i) * -1436i) >= (2147483647i >> (var_0.x % 32u)))), -1490f));
    var var_2 = _wgslsmith_mult_i32(-8278i, u_input.d.x | select(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d) >> (_wgslsmith_mult_u32(u_input.a, 0u) % 32u), -2147483647i, all(vec3<bool>(true, true, true))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -1646f);
    global1 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, ~_wgslsmith_mult_u32(var_0.x, 102040u), var_0.x ^ u_input.a, ~57240u), ~vec4<u32>(max(u_input.c, var_0.x), firstTrailingBit(var_0.x), firstLeadingBit(36802u), select(var_0.x, 4294967295u, false))), select(~vec4<u32>(var_0.x, ~var_0.x, firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(27545u, 73091u), vec2<u32>(4294967295u, var_0.x))), vec4<u32>(_wgslsmith_add_u32(min(var_0.x, 0u), ~u_input.b), ~(~u_input.a), firstTrailingBit(_wgslsmith_clamp_u32(1u, u_input.a, 0u)), ~_wgslsmith_add_u32(4294967295u, u_input.c)), vec4<bool>(u_input.d.x <= u_input.d.x, true, true, true)));
    return Struct_3(u_input.d.x > func_2(vec3<u32>(1u, 54963u & u_input.c, select(var_0.x, 29831u, true))), Struct_2(-1i, Struct_1(true, true, _wgslsmith_f_op_f32(min(-235f, 601f)), true != all(vec3<bool>(true, false, false)))), Struct_1(true, true, 2007f, func_3(false, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.zz, vec2<u32>(1u, 1u), var_0.xx), reverseBits(vec2<u32>(1013u, u_input.c))))), Struct_2(min(~1i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2089i, u_input.d.x)), ~u_input.d.xy)), Struct_1(false, true, _wgslsmith_f_op_f32(f32(-1f) * -1189f), all(vec3<bool>(true, true, false)))), Struct_1(false, all(vec4<bool>(true, true, true, true)), var_1.x, !all(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<i32>(-41628i, 33754i, ~(-select(var_0.b.a, var_0.d.a, true)) & abs(_wgslsmith_mult_i32(func_2(vec3<u32>(u_input.a, 0u, u_input.a)), 1i)), countOneBits(~var_0.d.a ^ ~0i));
    var var_2 = var_0.d.b;
    global0 = array<Struct_3, 9>();
    let var_3 = var_0.e.d;
    let var_4 = var_0.b;
    global2 = array<vec2<u32>, 15>();
    let var_5 = Struct_1(func_2(vec3<u32>(~10357u, _wgslsmith_mod_u32(u_input.c, u_input.c), u_input.a << (12006u % 32u))) >= reverseBits(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), u_input.d.xy)), any(!(!select(vec4<bool>(var_0.c.d, var_0.e.a, false, var_2.d), vec4<bool>(true, true, var_4.b.d, true), vec4<bool>(false, false, true, var_0.a)))), func_1().d.b.c, var_4.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_4.b.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.b.c, var_2.c) * _wgslsmith_f_op_f32(f32(-1f) * -334f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.b.b.c))))))), var_1, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 4294967295u), vec3<u32>(10321u, u_input.a, 5589u)) >> (~u_input.b % 32u)) << (_wgslsmith_add_u32(select(u_input.c, ~0u, true), 60704u) % 32u));
}

