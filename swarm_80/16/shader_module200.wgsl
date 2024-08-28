struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> bool {
    var var_0 = Struct_1(true);
    global0 = array<u32, 32>();
    var var_1 = global1.a;
    return true;
}

fn func_2(arg_0: Struct_2) -> u32 {
    global1 = arg_0;
    let var_0 = global2.c != all(vec4<bool>(any(vec3<bool>(true, true, true)), !(!global2.c), 37060i <= arg_0.b.x, func_3(Struct_1(global1.c), vec2<i32>(global2.e, global2.b.x), ~4294967295u)));
    var var_1 = any(vec4<bool>(any(vec2<bool>(!var_0, !global2.c)), -abs(global1.b.x) < (i32(-1i) * -arg_0.e), all(!select(vec3<bool>(false, global2.c, true), vec3<bool>(arg_0.c, false, true), true)), select(arg_0.c, 2147483647i <= _wgslsmith_sub_i32(global2.e, u_input.a), !(!global2.c))));
    var_1 = (!all(select(vec2<bool>(global2.c, global2.c), vec2<bool>(false, var_0), var_0)) != any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_0.c, true), vec3<bool>(var_0, false, arg_0.c), vec3<bool>(true, arg_0.c, arg_0.c)), !vec3<bool>(arg_0.c, false, global2.c)))) == (var_0 || var_0);
    var var_2 = global2.b;
    return ~(~52993u);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> Struct_2 {
    let var_0 = ~((-2147483647i & ~_wgslsmith_mod_i32(2147483647i, u_input.a)) >> (func_2(Struct_2(global1.a, abs(vec3<i32>(-1i, 1i, 1i)), true, ~global2.a.x, _wgslsmith_add_i32(u_input.b, global2.b.x))) % 32u));
    let var_1 = _wgslsmith_div_u32(global1.a.x, 14u);
    var var_2 = ~global2.b.xx << ((_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, global2.a.x), vec2<u32>(12749u, 4294967295u)), abs(~global2.a), global1.a) << (~countOneBits(vec2<u32>(global2.d, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = Struct_2(_wgslsmith_mod_vec2_u32(abs(global1.a), select(vec2<u32>(21286u, var_1), countOneBits(global2.a), false & global1.c)) & ~vec2<u32>(select(u_input.c.x, global2.a.x, true), global0[_wgslsmith_index_u32(u_input.d.x, 32u)]), _wgslsmith_mod_vec3_i32(global2.b, vec3<i32>(select(~0i, -55208i >> (global1.d % 32u), global2.c), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0, -41114i), vec2<i32>(-1i, global1.e) << (vec2<u32>(3844u, global2.d) % vec2<u32>(32u))), 29306i << (global0[_wgslsmith_index_u32(~0u, 32u)] % 32u))), arg_3, var_1, -_wgslsmith_dot_vec2_i32(global2.b.yz, -global2.b.xz));
    global1 = Struct_2(_wgslsmith_mod_vec2_u32(~countOneBits(u_input.c.xx), vec2<u32>(u_input.d.x, global2.a.x)) & (select(firstLeadingBit(global2.a), max(global1.a, u_input.c.yz), all(vec3<bool>(global2.c, false, true))) & vec2<u32>(global2.d, 1u)), vec3<i32>(-global1.b.x, 2147483647i, global1.b.x), any(!select(vec3<bool>(arg_3, global1.c, global1.c), vec3<bool>(true, true, true), true)), 4294967295u, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(0i, global1.b.x, global2.e, -23143i), vec4<i32>(0i, var_2.x, -2147483647i, 9891i) ^ vec4<i32>(var_0, -1i, u_input.b, var_2.x)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0, u_input.b, var_2.x, u_input.a) >> (u_input.d % vec4<u32>(32u)), vec4<i32>(var_0, 2147483647i, var_2.x, var_2.x))) << (~0u % 32u));
    return Struct_2(firstTrailingBit(u_input.c.yw), global1.b, global2.c, ~(~_wgslsmith_mod_u32(global1.a.x, global1.d)), u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global0 = array<u32, 32>();
    global1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(158f - _wgslsmith_f_op_f32(max(665f, 2023f))), _wgslsmith_div_f32(-505f, -783f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1600f, 883f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 234f) - vec2<f32>(-2755f, 1652f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(160f, -1000f, !arg_1.c || true)) + 635f), false);
    let var_0 = Struct_2(_wgslsmith_mult_vec2_u32(global1.a, ~vec2<u32>(_wgslsmith_mod_u32(1u, 48827u), 48184u)), vec3<i32>(min(countOneBits(global2.b.x), 1i), arg_1.b.x, _wgslsmith_sub_i32(global1.e, u_input.a)), true, _wgslsmith_div_u32(firstLeadingBit(max(select(1u, 0u, true), _wgslsmith_dot_vec2_u32(arg_1.a, global1.a))), ~(~u_input.d.x)), _wgslsmith_mod_i32(u_input.a, 35504i));
    var var_1 = ~global1.a.x;
    global2 = var_0;
    return func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(654f)) * _wgslsmith_f_op_f32(select(2580f, 132f, arg_1.c)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2284f, -1234f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(918f - -810f), 1045f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1629f, -241f) * vec2<f32>(107f, 1045f)), vec2<f32>(888f, 1754f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, -142f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1593f, -1393f) + vec2<f32>(794f, 1394f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -298f)))))), _wgslsmith_f_op_f32(198f - -548f), true | global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 32>();
    let var_0 = func_4(Struct_1(global1.c), func_1(1061f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(440f, 139f)))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2208f)) + 1322f) >= _wgslsmith_f_op_f32(min(-860f, _wgslsmith_f_op_f32(sign(854f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f - -348f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f))))), ~(~u_input.d.xyx));
}

