struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), global1.x))));
    var var_1 = select(!vec2<bool>(!arg_1.x, false), select(vec2<bool>(arg_0.x, true), select(select(arg_0.wx, select(arg_0.xz, arg_0.yy, true), select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, true), arg_0.yz)), select(!arg_0.zw, !arg_1.wz, select(vec2<bool>(arg_0.x, false), vec2<bool>(true, arg_0.x), vec2<bool>(false, true))), vec2<bool>(false, true)), select(vec2<bool>(all(global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), true), vec2<bool>(any(arg_1), true), true)), all(vec4<bool>(false, all(arg_0.zxx), (0u > global0.x) || true, all(vec2<bool>(true, false)))));
    var_1 = !vec2<bool>(!all(select(arg_0.wwx, arg_1.xzz, vec3<bool>(var_1.x, arg_0.x, false))), true);
    var var_2 = select(select(vec3<bool>(arg_0.x, all(vec4<bool>(true, true, false, false)), any(select(vec4<bool>(arg_1.x, arg_0.x, arg_1.x, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x), global2[_wgslsmith_index_u32(u_input.a.x, 11u)]))), !vec3<bool>(false, any(vec3<bool>(var_1.x, arg_0.x, false)), arg_1.x), vec3<bool>(any(select(vec3<bool>(var_1.x, true, false), vec3<bool>(arg_1.x, var_1.x, arg_1.x), false)), !var_1.x, !(!arg_0.x))), select(!vec3<bool>(var_1.x, arg_0.x, true & arg_1.x), vec3<bool>(!var_1.x, (u_input.a.x >> (13629u % 32u)) > _wgslsmith_clamp_u32(929u, u_input.b.x, global0.x), any(arg_1.xzw)), select(vec3<bool>(false, any(global2[_wgslsmith_index_u32(29711u, 11u)]), !arg_0.x), select(arg_1.wzy, arg_1.yww, !arg_0.x), vec3<bool>(true, true, true))), all(!select(arg_0.zx, arg_0.zz, var_1.x)));
    var var_3 = Struct_4(-u_input.d);
    return 23307u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<i32>) -> vec2<u32> {
    global1 = arg_1.c.xx;
    global0 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.b, ~min(vec2<u32>(arg_0.c.x, 1u), firstLeadingBit(arg_0.c.xy))), abs(firstLeadingBit(vec2<u32>(func_3(global2[_wgslsmith_index_u32(18138u, 11u)], vec4<bool>(false, arg_0.b.x, true, true)), ~2637u))));
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-881f, 867f, 2161f, arg_1.c.x), vec4<f32>(global1.x, -2688f, arg_0.a, 1526f)) * arg_1.c), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(991f, 443f, global1.x, arg_1.c.x) - vec4<f32>(arg_1.c.x, arg_1.c.x, -1825f, global1.x)), vec4<f32>(557f, 207f, arg_1.c.x, global1.x))), all(vec2<bool>(arg_1.e.x, true))))), Struct_1(arg_0.c.x, ~(~11830u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-803f))), -1166f, arg_0.a, _wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(min(-126f, -482f)))), firstLeadingBit(vec3<u32>(19521u << (arg_1.a % 32u), ~arg_0.c.x, ~global0.x)), select(!arg_1.e, arg_1.e, vec3<bool>(arg_2.x, !arg_1.e.x, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(267f + global1.x), -1000f)), 2101f)), arg_1);
    global2 = array<vec4<bool>, 11>();
    global2 = array<vec4<bool>, 11>();
    return vec2<u32>(~(arg_0.c.x & u_input.a.x), _wgslsmith_sub_u32(45671u, 1u));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec4<f32> {
    global0 = abs(arg_0.b.d.xz);
    global0 = max(func_2(Struct_3(arg_0.a.x, arg_1, _wgslsmith_mod_vec3_u32(arg_0.d.d, vec3<u32>(u_input.a.x, 4294967295u, 14993u))), arg_0.b, select(!arg_1, vec2<bool>(false, true), !arg_1), reverseBits(abs(vec2<i32>(2147483647i, -57803i)))), u_input.b) ^ arg_0.b.d.yz;
    var var_0 = vec3<i32>(~(-u_input.d), ~firstTrailingBit(-(~(-2147483647i))), -45227i);
    var var_1 = _wgslsmith_div_i32(16867i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d, -(u_input.c >> (global0.x % 32u))), _wgslsmith_add_i32(-1i, abs(1i))));
    global0 = vec2<u32>(~1u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, 0u), ~vec2<u32>(u_input.a.x, global0.x)), arg_0.b.d.x));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(global1.x + 733f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_2.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(max(arg_2.x, arg_0.b.c.x))), _wgslsmith_f_op_f32(-global1.x))), arg_0.d.c.x, -1262f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1.x)), 527f)) * global1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(181f)))));
    global2 = array<vec4<bool>, 11>();
    let var_0 = Struct_1(u_input.b.x, u_input.b.x << (abs(_wgslsmith_div_u32(global0.x, min(global0.x, 67347u))) % 32u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1093f, -420f, 1000f, 1427f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, 1221f, 869f, -224f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(202f, 1117f, 796f, global1.x), vec4<f32>(398f, 972f, 1540f, global1.x), true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(365f, global1.x, global1.x, -781f), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec4<f32>(-1000f, -770f, global1.x, -2780f), Struct_1(63677u, u_input.b.x, vec4<f32>(global1.x, 2790f, global1.x, -455f), vec3<u32>(global0.x, 60490u, u_input.a.x), vec3<bool>(false, true, false)), vec2<f32>(global1.x, 1373f), Struct_1(15871u, global0.x, vec4<f32>(1497f, global1.x, 1114f, -1591f), vec3<u32>(1u, global0.x, global0.x), vec3<bool>(false, true, false))), vec2<bool>(false, false), vec3<f32>(643f, -368f, -791f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -554f, 2328f) + vec4<f32>(-760f, global1.x, -715f, 1721f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -279f)))), select(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(14097u, 11u)], true))), min(select(~vec3<u32>(1u, global0.x, 0u), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(15849u, u_input.a.x, global0.x), vec3<u32>(u_input.b.x, 1u, 47750u), vec3<u32>(u_input.b.x, 1u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(32061u, global0.x, 15480u), vec3<u32>(global0.x, 4294967295u, 4294967295u)), false), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true)), reverseBits(~(~vec3<u32>(global0.x, 4294967295u, u_input.a.x)))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2192f + _wgslsmith_f_op_f32(-992f - 271f))), select(!var_0.e.yz, select(select(vec2<bool>(var_0.e.x, true), var_0.e.yx, select(var_0.e.zz, var_0.e.zx, false)), select(var_0.e.xz, select(vec2<bool>(var_0.e.x, var_0.e.x), vec2<bool>(true, false), vec2<bool>(var_0.e.x, var_0.e.x)), var_0.e.xz), !select(var_0.e.x, var_0.e.x, var_0.e.x)), true && var_0.e.x), _wgslsmith_clamp_vec3_u32(min(~vec3<u32>(4294967295u, var_0.b, 52795u), var_0.d), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(46771u, 85881u, u_input.b.x), var_0.d, select(var_0.d, vec3<u32>(var_0.a, u_input.a.x, global0.x), var_0.e)), vec3<u32>(1u, var_0.b, reverseBits(8171u)) << (abs(~vec3<u32>(global0.x, global0.x, 41278u)) % vec3<u32>(32u))));
    let var_2 = all(!global2[_wgslsmith_index_u32(16351u, 11u)]);
    global2 = array<vec4<bool>, 11>();
    global2 = array<vec4<bool>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

