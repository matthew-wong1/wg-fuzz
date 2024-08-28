struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 21>;

var<private> global2: array<i32, 22>;

var<private> global3: vec2<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_mod_u32(global0.x, u_input.a.x), ~59145u), 90254u);
    var var_1 = firstLeadingBit(-vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, min(var_0.a, 53603u)), 22u)], u_input.b.x, u_input.b.x));
    global1 = array<i32, 21>();
    let var_2 = select(!vec2<bool>(true, all(vec2<bool>(global3.x, global3.x)) & global3.x), select(vec2<bool>(true, true), !(!select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, false), global3.x)), global3.x), !vec2<bool>(global3.x, select(!global3.x, all(vec4<bool>(true, true, false, global3.x)), global3.x & global3.x)));
    var var_3 = Struct_5(1u, global1[_wgslsmith_index_u32(0u, 21u)] | ~(-25825i), vec4<u32>(u_input.c, 16646u, var_0.b, u_input.c) & max(~(~vec4<u32>(var_0.b, u_input.a.x, 69019u, global0.x)), select(vec4<u32>(42000u, global0.x, 65520u, global0.x), min(vec4<u32>(global0.x, var_0.b, var_0.a, 1u), vec4<u32>(global0.x, u_input.a.x, u_input.d, u_input.c)), vec4<bool>(global3.x, global3.x, global3.x, var_2.x))), Struct_3(1u, ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) & min(u_input.c, _wgslsmith_sub_u32(var_0.a, 29904u))), firstLeadingBit(_wgslsmith_sub_i32(-1i, select(-10310i, 1i, true))));
    return vec2<bool>(false, true);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_div_u32(select(u_input.d, min(~77752u, select(u_input.a.x, 4294967295u, arg_0.b)), arg_1.x), 45611u), global0.x);
    global3 = select(select(func_3(), !select(arg_1.zy, select(vec2<bool>(false, global3.x), vec2<bool>(arg_0.b, true), arg_1.x), true), vec2<bool>(arg_0.b, -1i != -u_input.b.x)), !select(arg_1.zy, func_3(), vec2<bool>(global3.x, any(vec4<bool>(arg_1.x, true, global3.x, arg_1.x)))), vec2<bool>(_wgslsmith_sub_u32(global0.x, ~var_0.b) < 0u, all(!arg_1)));
    global2 = array<i32, 22>();
    global1 = array<i32, 21>();
    var var_1 = ~vec4<i32>(~abs(global1[_wgslsmith_index_u32(0u, 21u)]), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, var_0.a), 22u)] ^ ~1i, (global1[_wgslsmith_index_u32(0u, 21u)] & _wgslsmith_div_i32(-81627i, global1[_wgslsmith_index_u32(4276u, 21u)])) | 0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-u_input.b.yx, _wgslsmith_div_vec2_i32(u_input.b.yz, u_input.b.yz)), -_wgslsmith_add_i32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 0i)));
    return var_0;
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    global1 = array<i32, 21>();
    global0 = abs(vec2<u32>(67414u, 4294967295u));
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x - -981f))))), arg_2, _wgslsmith_mult_vec3_u32(firstTrailingBit(~arg_0.c.yzy) << (arg_0.c.yxw % vec3<u32>(32u)), ~arg_0.c.yyy), 4294967295u, Struct_1(min(~_wgslsmith_clamp_u32(0u, global0.x, 91853u), u_input.d)));
    let var_1 = func_2(var_0, !(!(!vec3<bool>(false, arg_2, arg_2)))).b >> ((_wgslsmith_dot_vec2_u32(var_0.c.zx, (vec2<u32>(39984u, 4294967295u) ^ vec2<u32>(global0.x, arg_0.d.a)) >> ((vec2<u32>(13365u, 17016u) & u_input.a) % vec2<u32>(32u))) ^ min(24520u, _wgslsmith_add_u32(1u, abs(global0.x)))) % 32u);
    var var_2 = min(vec2<i32>(-12627i, -1i), firstLeadingBit(u_input.b.zy));
    return _wgslsmith_sub_i32(~((global2[_wgslsmith_index_u32(arg_0.d.b & 1u, 22u)] | firstTrailingBit(global2[_wgslsmith_index_u32(var_1, 22u)])) ^ _wgslsmith_mult_i32(-81227i, global1[_wgslsmith_index_u32(func_2(Struct_2(arg_1, true, vec3<u32>(33324u, arg_0.d.b, var_0.d), var_1, Struct_1(0u)), vec3<bool>(true, true, false)).a, 21u)])), _wgslsmith_clamp_i32(-1i & _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -2147483647i, 42700i, arg_0.b), vec4<i32>(-11307i, u_input.b.x, 1i, u_input.b.x)), -2147483647i >> (u_input.d % 32u)), -_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(u_input.c, 21u)], 2147483647i), vec4<i32>(8339i, var_2.x, -4198i, arg_0.e)), -global2[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(10457u, u_input.a.x, 1u), ~0u, true), 22u)]));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    global2 = array<i32, 22>();
    let var_0 = firstLeadingBit(-u_input.b.yy);
    var var_1 = Struct_5(u_input.c, func_4(Struct_5(4294967295u, var_0.x, vec4<u32>(u_input.d, u_input.a.x, abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(0u, global0.x, u_input.a.x, u_input.a.x))), func_2(Struct_2(vec4<f32>(arg_0, 1914f, arg_0, -496f), false, vec3<u32>(u_input.a.x, 14888u, 5150u), 39430u, Struct_1(45471u)), !vec3<bool>(global3.x, true, global3.x)), global2[_wgslsmith_index_u32(global0.x << (4294967295u % 32u), 22u)] >> (~4294967295u % 32u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, arg_0, arg_0, -624f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 2068f, arg_0, 453f) - vec4<f32>(arg_0, arg_0, -797f, 112f))))), any(vec3<bool>(true, false, true))), vec4<u32>(u_input.d, reverseBits(6299u), u_input.c, u_input.a.x), Struct_3(abs(select(_wgslsmith_div_u32(1u, u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(48515u, global0.x), u_input.a), true)), u_input.a.x), _wgslsmith_add_i32(select(min(2147483647i >> (0u % 32u), global2[_wgslsmith_index_u32(1u, 22u)] << (0u % 32u)), ~(-23645i), func_3().x & !global3.x), -_wgslsmith_mult_i32(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(global0.x, 22u)], -2351i), 0i)));
    var_1 = Struct_5(_wgslsmith_mod_u32(0u >> (u_input.a.x % 32u), 6738u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(~var_1.c.zwx), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, global0.x, 29683u), vec3<u32>(38771u, var_1.c.x, u_input.a.x)))), var_1.c.www | var_1.c.yxx), 22u)], vec4<u32>(~13236u, max(28257u, ~func_2(Struct_2(vec4<f32>(583f, -2225f, -1886f, arg_0), global3.x, vec3<u32>(u_input.a.x, 9912u, global0.x), u_input.c, Struct_1(0u)), vec3<bool>(global3.x, global3.x, global3.x)).b), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~var_1.c.wx, vec2<u32>(4294967295u, 20330u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0.x, global0.x), vec3<u32>(4294967295u, u_input.a.x, var_1.d.b)), _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.x, 4294967295u), 0u)), _wgslsmith_dot_vec3_u32(var_1.c.wxy, reverseBits(vec3<u32>(1u, 14240u, var_1.d.a)))), Struct_3(global0.x, global0.x), firstLeadingBit((i32(-1i) * -var_1.e) & ~global2[_wgslsmith_index_u32(~u_input.c, 22u)]));
    var var_2 = global1[_wgslsmith_index_u32(global0.x, 21u)];
    return var_1.c.yyx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = u_input.d;
    let var_2 = abs(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f))))));
    var_0 = firstLeadingBit(_wgslsmith_mult_u32(var_1, var_1));
    let var_3 = ~(abs(var_2.zy) & vec2<u32>(~1u, _wgslsmith_mult_u32(19039u << (u_input.d % 32u), ~20340u)));
    var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(0u, abs(global0.x));
}

