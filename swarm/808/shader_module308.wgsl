struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(0u, 62419u, 0u, 1u), vec4<u32>(90603u, 0u, 6598u, 22632u), vec4<u32>(21172u, 64748u, 4143u, 4294967295u), vec4<u32>(45800u, 0u, 19491u, 4294967295u), vec4<u32>(73951u, 4294967295u, 88569u, 53343u), vec4<u32>(20413u, 53441u, 0u, 0u), vec4<u32>(4294967295u, 57386u, 33398u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(0u, 0u, 0u, 17692u), vec4<u32>(14118u, 69620u, 1u, 1u), vec4<u32>(20891u, 0u, 5209u, 4294967295u), vec4<u32>(4294967295u, 1u, 35482u, 1u), vec4<u32>(30991u, 58493u, 40756u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 40790u), vec4<u32>(4294967295u, 0u, 4294967295u, 82926u), vec4<u32>(0u, 8005u, 85064u, 21806u), vec4<u32>(1u, 1u, 69130u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(16964u, 1u, 1u, 0u), vec4<u32>(12397u, 33078u, 6896u, 21152u));

var<private> global1: bool;

var<private> global2: array<Struct_2, 12>;

var<private> global3: vec2<i32> = vec2<i32>(9504i, 1i);

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1368f);
    global3 = vec2<i32>(global3.x & max(~global4.b.x, 1i), global4.d);
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(arg_0 - -449f);
    var var_3 = Struct_2(~global4.e, (_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 4028u, 1u), vec3<u32>(u_input.e.x, global4.e, 4294967295u), vec3<u32>(9894u, global4.e, 37288u)) >> (~(vec3<u32>(76258u, u_input.b, global4.e) ^ vec3<u32>(u_input.e.x, 29648u, global4.e)) % vec3<u32>(32u))) & max(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, 51182u), abs(vec3<u32>(global4.e, 0u, global4.e))), ~vec3<u32>(global4.e, u_input.b, 40854u)), global3.x, Struct_1(global4.c, ~vec4<i32>(firstLeadingBit(68631i), global4.d, _wgslsmith_mult_i32(global3.x, 12315i), -10421i), _wgslsmith_f_op_f32(-735f - arg_0), -2147483647i, ~(~_wgslsmith_clamp_u32(4294967295u, 0u, 48660u))), _wgslsmith_div_vec3_i32(u_input.d.zxw, vec3<i32>(-1i, 1i, abs(reverseBits(53432i)))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(227f * var_2) * _wgslsmith_f_op_f32(global4.c * -303f)))), arg_0) - _wgslsmith_div_vec2_f32(vec2<f32>(-2078f, _wgslsmith_f_op_f32(select(var_2, var_3.d.a, all(vec2<bool>(true, var_1))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-463f, -892f)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = vec3<bool>(all(vec3<bool>(true, true, true)) & true, true, true);
    let var_1 = max(~abs(global0[_wgslsmith_index_u32(global4.e, 20u)]), global0[_wgslsmith_index_u32(1u, 20u)]);
    var var_2 = 11872u >> ((var_1.x ^ _wgslsmith_add_u32(~global4.e, _wgslsmith_clamp_u32(~arg_1.e, arg_1.e, 4294967295u))) % 32u);
    let var_3 = Struct_2(~(~69486u), firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(var_1.x & 139264u, firstTrailingBit(46310u)), global4.e, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), arg_1.e << (var_1.x % 32u), 16823u))), 0i, arg_1, min(vec3<i32>(0i, -arg_1.b.x, -72807i) & vec3<i32>(~arg_0, abs(u_input.a.x), 2811i), global4.b.yxw));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_1.c)))))) - vec2<f32>(global4.c, _wgslsmith_f_op_f32(-arg_1.a)));
    return select(var_1, countOneBits(select(~vec4<u32>(1u, 1u, 1u, arg_1.e), firstTrailingBit(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(var_1.x, 20u)], global0[_wgslsmith_index_u32(arg_1.e, 20u)])), !select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, false, true), false))), !select(vec4<bool>(!var_0.x, false, true, true), !vec4<bool>(false, true, var_0.x, true), true));
}

fn func_4(arg_0: vec4<u32>) -> vec3<f32> {
    global3 = _wgslsmith_mod_vec2_i32(global4.b.yz, ~(-vec2<i32>(min(2147483647i, -20032i), -u_input.c)));
    let var_0 = Struct_1(global4.c, vec4<i32>((select(-2147483647i, u_input.d.x, true) & max(-17768i, 1i)) << (12717u % 32u), select(-15007i, _wgslsmith_div_i32(-219i, global4.b.x) ^ 28499i, !select(true, true, true)), ~global4.b.x, _wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(global4.b.x, 8846i, -29285i, 61371i)))), 1f, -abs(-(~24217i)), 42206u);
    let var_1 = var_0.b.xy;
    global2 = array<Struct_2, 12>();
    let var_2 = vec2<f32>(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1007f, var_0.a)), _wgslsmith_f_op_f32(var_0.c * global4.c))))), _wgslsmith_f_op_f32(global4.c - var_0.c));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(174f, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1030f) + var_0.a)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -195f, var_2.x)) + vec3<f32>(-713f, global4.c, 450f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 663f, global4.c) * vec3<f32>(global4.a, 974f, global4.a)), vec3<f32>(var_2.x, -1356f, var_0.c))) + vec3<f32>(_wgslsmith_f_op_f32(min(1410f, -1730f)), -185f, -1535f)), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), (var_2.x > var_0.a) && all(vec4<bool>(true, false, false, true))))));
}

fn func_1(arg_0: i32) -> bool {
    global0 = array<vec4<u32>, 20>();
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec4_u32(func_2(_wgslsmith_mult_i32(global3.x << (4294967295u % 32u), 1i), Struct_1(_wgslsmith_f_op_f32(step(-1827f, 477f)), vec4<i32>(-2147483647i, global3.x, 2147483647i, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1008f), -10013i, _wgslsmith_add_u32(29117u, u_input.b))), ~(~vec4<u32>(1u, 12339u, 4294967295u, 45444u)) | (~global0[_wgslsmith_index_u32(global4.e, 20u)] >> (global0[_wgslsmith_index_u32(~1u, 20u)] % vec4<u32>(32u))))));
    global1 = !any(vec4<bool>(true, true, true, true)) & any(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))));
    global3 = vec2<i32>(~min(~abs(global4.d), max(global4.b.x, global4.b.x)), -25150i);
    var var_1 = all(vec4<bool>(true & (-1327f != _wgslsmith_f_op_f32(-global4.a)), true, all(vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true)), true));
    return all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c);
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(min(703f, 952f)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global4.c, global4.a)), 354f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4.c, global4.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c, -1000f))))));
}

