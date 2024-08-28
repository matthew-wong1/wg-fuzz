struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: Struct_1 = Struct_1(0u, vec3<bool>(true, false, false), vec4<i32>(10848i, 20412i, 1i, -1i), 4294967295u, vec3<u32>(4294967295u, 12739u, 0u));

var<private> global2: Struct_1 = Struct_1(0u, vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 41730i), 1u, vec3<u32>(4294967295u, 0u, 0u));

var<private> global3: array<Struct_1, 21>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_1(global1.d | _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(0u, u_input.d.x, 1u), 48884u), !(!(!vec3<bool>(true, global1.b.x, true))), _wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global2.c.x, u_input.b, arg_1.x), global2.c), -global1.c), min(vec4<i32>(arg_1.x, -4111i, ~global2.c.x, u_input.e.x), -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, global2.c.x, arg_1.x), vec4<i32>(arg_1.x, 1i, -30924i, -6004i)))), _wgslsmith_dot_vec3_u32(reverseBits(abs(global2.e)), ~(~(~global2.e))), global2.e);
    var_0 = Struct_1(25150u, global1.b, global1.c, global1.e.x, ~global2.e);
    var_0 = Struct_1(select(27716u, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(13036u, global2.a), _wgslsmith_dot_vec3_u32(var_0.e, var_0.e) << (_wgslsmith_clamp_u32(global2.a, 4294967295u, 12978u) % 32u), 90711u), !global2.b.x), select(select(!select(vec3<bool>(false, global1.b.x, true), vec3<bool>(true, global2.b.x, var_0.b.x), global1.b.x), var_0.b, global2.b.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), !vec3<bool>(global1.b.x, true, false), !global2.b), global2.b.x), select(select(select(var_0.b, vec3<bool>(false, global1.b.x, var_0.b.x), vec3<bool>(true, var_0.b.x, global1.b.x)), vec3<bool>(global1.b.x, global1.b.x, false), false), var_0.b, global2.b.x)), -(vec4<i32>(-arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -21439i, arg_1.x), vec4<i32>(2147483647i, arg_0, var_0.c.x, 1i)), global2.c.x, firstTrailingBit(34227i)) & vec4<i32>(var_0.c.x, ~u_input.e.x, 0i, -2147483647i)), 70811u, global2.e);
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(283f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(353f, -2249f, var_0.b.x)), _wgslsmith_f_op_f32(sign(-2316f)))))) + _wgslsmith_f_op_f32(f32(-1f) * -234f));
    return _wgslsmith_mult_u32(u_input.a.x, global1.e.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = ~(~abs(func_3(global2.c.x, vec2<i32>(u_input.b, -2147483647i))));
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 21u)];
    var_1 = Struct_1(global1.a | 76246u, !vec3<bool>(!any(vec3<bool>(true, global1.b.x, global2.b.x)), true, true), var_1.c, u_input.d.x, vec3<u32>(~var_1.a, global2.d, global2.d));
    return Struct_1(abs(4294967295u), !global1.b, vec4<i32>(reverseBits(var_1.c.x), select(_wgslsmith_sub_i32(countOneBits(var_1.c.x), ~0i), ~_wgslsmith_clamp_i32(arg_0.x, -8602i, global1.c.x), false & global1.b.x), -1i, -31163i), global2.e.x, vec3<u32>(1u | global2.d, 30699u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.a), vec2<u32>(var_1.e.x, var_1.e.x)))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = 1089f;
    let var_1 = vec2<bool>(global2.b.x, false);
    let var_2 = ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global1.a, global2.e.x, 4294967295u, global1.e.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_0.d, 2791u, 1u), vec4<u32>(4294967295u, u_input.d.x, 0u, global2.a))), vec4<u32>(arg_0.a >> (_wgslsmith_mod_u32(arg_0.a, 1533u) % 32u), firstLeadingBit(_wgslsmith_div_u32(global1.e.x, global1.e.x)), 0u, ~_wgslsmith_sub_u32(arg_0.a, global1.a)), min(max(vec4<u32>(0u, 5113u, u_input.d.x, global2.d), vec4<u32>(1u, global2.d, 20785u, 4294967295u)), min(vec4<u32>(arg_0.e.x, 14667u, u_input.a.x, 23010u), vec4<u32>(u_input.a.x, global1.e.x, arg_0.d, u_input.d.x))) << (vec4<u32>(max(0u, 24404u), firstTrailingBit(u_input.d.x), global1.d, 4294967295u) % vec4<u32>(32u)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_div_f32(573f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(652f)), 732f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-825f)), -791f)))));
    let var_4 = Struct_1(1u, arg_0.b, countOneBits(-(~(vec4<i32>(42849i, u_input.b, arg_0.c.x, global1.c.x) | global1.c))), _wgslsmith_dot_vec3_u32(arg_0.e, _wgslsmith_clamp_vec3_u32(~global2.e, vec3<u32>(u_input.d.x, ~arg_0.a, _wgslsmith_sub_u32(u_input.d.x, var_2.x)), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(15078u, global2.e.x, 14686u), vec3<u32>(0u, var_2.x, 0u)), countOneBits(vec3<u32>(arg_0.e.x, 1u, global1.d))))), abs(reverseBits(firstLeadingBit(vec3<u32>(15187u, var_2.x, u_input.a.x)) ^ countOneBits(vec3<u32>(11255u, 1u, global2.a)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(round(var_3.x))) + _wgslsmith_f_op_f32(select(var_3.x, var_3.x, var_1.x))) - _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(select(var_3.x, 1293f, false)))))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = ~0u;
    var var_1 = true;
    var var_2 = ~(4294967295u >> (0u % 32u));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-311f, -1142f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-203f, 379f))))) * vec2<f32>(-936f, 722f)) + vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(select(u_input.e, vec2<i32>(-54484i, u_input.e.x), global1.b.yx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1395f, 299f, -972f))))), _wgslsmith_f_op_f32(sign(366f))));
    var var_4 = global0[_wgslsmith_index_u32(global2.a, 12u)];
    return Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(var_4.e.yz, global1.e.zy)), var_4.e.xx), _wgslsmith_add_u32(~global2.e.x, global1.a)), global1.b, abs(_wgslsmith_clamp_vec4_i32(global1.c << (_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 23913u, var_4.d, global2.a), vec4<u32>(0u, u_input.a.x, global2.a, global2.e.x)) % vec4<u32>(32u)), vec4<i32>(1i, u_input.e.x, 42954i, reverseBits(global1.c.x)), max(global2.c ^ global1.c, global2.c))), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(34963u, 3523u ^ global2.a, ~var_4.e.x), _wgslsmith_div_u32(_wgslsmith_add_u32(var_4.e.x, 45157u), global1.e.x), func_3(global2.c.x >> (4294967295u % 32u), global1.c.wz)), ~_wgslsmith_add_vec3_u32(select(~vec3<u32>(var_4.e.x, global2.a, global2.a), _wgslsmith_sub_vec3_u32(global1.e, global1.e), false), _wgslsmith_add_vec3_u32(countOneBits(var_4.e), vec3<u32>(0u, 0u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 21>();
    global2 = global0[_wgslsmith_index_u32(23406u, 12u)];
    var var_0 = func_1(-countOneBits(vec2<i32>(global2.c.x, firstLeadingBit(global2.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(vec4<u32>(60264u, var_0.a, global1.e.x, global2.e.x), vec4<u32>(global1.a, 71076u, 4294967295u, u_input.a.x), var_0.b.x) ^ abs(vec4<u32>(53666u, 22033u, 4294967295u, 1u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(220f, 1558f, -1415f)), vec3<f32>(910f, 1000f, -301f)))), vec3<f32>(1f, 1f, 1f))));
}

