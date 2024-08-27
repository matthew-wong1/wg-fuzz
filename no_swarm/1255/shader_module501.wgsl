struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
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

var<private> global0: array<i32, 31> = array<i32, 31>(43025i, -29076i, 1i, 40798i, 15972i, 28221i, 36904i, i32(-2147483648), -22687i, i32(-2147483648), -1i, -69428i, 2147483647i, i32(-2147483648), 2147483647i, 9346i, 0i, -15700i, -23450i, -17515i, 44835i, -11498i, -1i, 12208i, 2147483647i, 7i, -1i, i32(-2147483648), 2147483647i, i32(-2147483648), 0i);

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<i32>, 6>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> Struct_4 {
    global1 = select(arg_0.b, arg_0.b, arg_0.b);
    return Struct_4(arg_0.a, select(!arg_0.b, vec4<bool>(any(vec3<bool>(false, global1.x, arg_0.b.x)), arg_0.a.x != _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(floor(1000f)) > 520f, arg_0.b.x), arg_1), ~(~(~select(vec3<u32>(u_input.c.x, u_input.c.x, 0u), arg_0.c, global1.x))), ~arg_0.d);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_3) -> f32 {
    return arg_0.x;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-237f, -1506f, -288f, 1155f), vec4<f32>(-432f, -1389f, -331f, 864f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-191f, 1427f, 123f, 356f), vec4<f32>(-221f, 125f, -423f, 712f), global1.x)), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, false, global1.x, false))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-787f, 140f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -517f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1515f * 1000f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(269f, -577f, -124f, 382f) * vec4<f32>(196f, -115f, 283f, -435f)), func_2(Struct_4(vec3<f32>(-1701f, 2054f, -1317f), vec4<bool>(global1.x, true, true, global1.x), vec3<u32>(arg_2.a.x, 0u, 4294967295u), vec3<u32>(arg_2.a.x, 51247u, u_input.a)), global1.x, 4294967295u, global1.xw), _wgslsmith_f_op_vec4_f32(vec4<f32>(-802f, 1833f, -158f, -1742f) * vec4<f32>(-1535f, 496f, -240f, -1039f)), Struct_3(u_input.c.zzz))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-177f, 550f, 1446f, 781f), vec4<f32>(1363f, 1275f, -1658f, 600f), vec4<bool>(global1.x, true, true, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, -595f, 1113f, -1330f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-350f, -413f, 341f, 207f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(_wgslsmith_clamp_i32(reverseBits(2147483647i), global0[_wgslsmith_index_u32(~0u, 31u)], _wgslsmith_add_i32(-51570i, u_input.b)), ~u_input.b)), 0i, Struct_3(~(~vec3<u32>(1u, 33958u, u_input.e.x)))));
    let var_1 = select(vec2<u32>(~8095u, func_2(func_2(Struct_4(vec3<f32>(var_0, 1516f, -276f), vec4<bool>(true, true, false, global1.x), u_input.e.xwz, u_input.e.wzz), false, u_input.a, vec2<bool>(global1.x, true)), global1.x, ~4294967295u, global1.yz).d.x) << (~select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, 39936u), vec2<u32>(0u, 62443u)), _wgslsmith_mult_vec2_u32(u_input.c.wx, u_input.e.zx), vec2<bool>(global1.x, true)) % vec2<u32>(32u)), max(u_input.c.yw, vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(u_input.a), u_input.a), _wgslsmith_div_u32(1u & u_input.e.x, _wgslsmith_sub_u32(u_input.e.x, 1u)))), vec2<bool>(global1.x && false, false));
    global2 = array<vec3<i32>, 6>();
    var var_2 = func_2(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, 584f, -1033f), vec3<f32>(546f, var_0, 493f)))))), vec4<bool>(true, global1.x, false, global1.x | true), min(~vec3<u32>(u_input.a, 53568u, u_input.e.x), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, var_1.x, 1u), u_input.c.zwz)), u_input.e.wzy), !select(true, global1.x, all(global1.wzw)) && true, reverseBits(var_1.x), vec2<bool>(false, func_2(Struct_4(vec3<f32>(683f, var_0, var_0), vec4<bool>(global1.x, global1.x, false, false), vec3<u32>(var_1.x, 21547u, 1u), u_input.c.wxz), all(!vec4<bool>(true, global1.x, global1.x, true)), var_1.x, global1.xy).b.x));
    let var_3 = vec3<bool>(false, !(((var_1.x | var_1.x) & var_2.c.x) <= select(~u_input.c.x, ~21065u, var_2.b.x & global1.x)), !(_wgslsmith_add_u32(1u, var_1.x) < ~var_2.c.x));
    let var_4 = vec3<bool>(true, false, true);
    global1 = var_2.b;
    global0 = array<i32, 31>();
    var var_5 = global0[_wgslsmith_index_u32(60021u, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(53223i, 0i), vec2<i32>(1i, 12157i)) << ((vec2<u32>(u_input.c.x, 55412u) >> (func_2(Struct_4(vec3<f32>(var_2.a.x, -918f, -1281f), var_2.b, u_input.c.yyx, var_2.c), global1.x, 1u, global1.xy).c.yy % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.d.zw));
}

