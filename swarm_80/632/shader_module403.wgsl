struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: array<f32, 19>;

var<private> global2: Struct_3 = Struct_3(vec3<f32>(-604f, 254f, -1573f));

var<private> global3: i32 = 1i;

var<private> global4: Struct_3 = Struct_3(vec3<f32>(-424f, 1725f, -1214f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_3 {
    return Struct_3(vec3<f32>(-914f, global2.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1627f)))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-285f * global1[_wgslsmith_index_u32(arg_1, 19u)]))), global1[_wgslsmith_index_u32(countOneBits(max(4294967295u, arg_1)), 19u)], true))));
    var var_1 = true;
    var_1 = true;
    let var_2 = global0.yzw;
    global4 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_1, 19u)], global2.a.x, 550f))))));
    return select(!select(select(!vec3<bool>(arg_2, true, global0.x), global0.yxy, !arg_0), global0.xxy, vec3<bool>(18596u == arg_1, true, arg_2)), vec3<bool>(arg_2 && global0.x, any(!(!vec4<bool>(false, arg_2, global0.x, var_2.x))), select(arg_1 > _wgslsmith_div_u32(u_input.b, arg_1), true, u_input.b == 59409u)), any(vec2<bool>(true, u_input.a >= 0i)));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: bool) -> vec4<u32> {
    global3 = max(2147483647i, -firstLeadingBit(firstLeadingBit(_wgslsmith_mod_i32(u_input.a, u_input.a))));
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    let var_0 = ~select(~vec2<u32>(49661u, u_input.b), ~vec2<u32>(u_input.b, u_input.b) | (vec2<u32>(u_input.b, 37538u) | vec2<u32>(u_input.b, u_input.b)), vec2<bool>(true, -1096f < global1[_wgslsmith_index_u32(u_input.b, 19u)])) >> (~vec2<u32>(~1u, u_input.b) % vec2<u32>(32u));
    let var_1 = func_1(Struct_1(select(select(!global0.yy, vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(true, true)), !select(arg_2.yx, vec2<bool>(true, global0.x), vec2<bool>(global0.x, false)), (-7922i > u_input.a) == arg_2.x), vec2<i32>(~_wgslsmith_mod_i32(-1i, u_input.a), u_input.a), ~vec4<u32>(var_0.x, reverseBits(57611u), ~var_0.x, var_0.x >> (var_0.x % 32u)), vec2<u32>(50013u, 60839u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a.x, -1071f, global2.a.x, global2.a.x))))) + _wgslsmith_div_vec4_f32(vec4<f32>(2580f, _wgslsmith_f_op_f32(sign(global4.a.x)), 1895f, global2.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(529f, 991f, global4.a.x, 435f) - vec4<f32>(arg_0, global2.a.x, 1692f, global2.a.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1094f, 201f, 1722f, -402f), vec4<f32>(284f, global2.a.x, 488f, -1065f)))))), Struct_1(arg_1, vec2<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 25885i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, u_input.a), -vec3<i32>(u_input.a, u_input.a, u_input.a))), ~(~vec4<u32>(u_input.b, 16876u, u_input.b, 4294967295u) >> (countOneBits(vec4<u32>(96418u, 4294967295u, 70695u, 0u)) % vec4<u32>(32u))), (var_0 & var_0) << (vec2<u32>(u_input.b, _wgslsmith_mod_u32(var_0.x, var_0.x)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(global4.a.x - -998f)), global4.a.x, 1438f, 501f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-263f, global2.a.x, _wgslsmith_f_op_f32(-arg_0), 558f)))));
    return ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_mod_u32(var_0.x, 0u)), 1u, 56739u, _wgslsmith_mod_u32(u_input.b, u_input.b) >> (~10108u % 32u)), vec4<u32>(var_0.x | _wgslsmith_dot_vec4_u32(vec4<u32>(154705u, var_0.x, var_0.x, 4294967295u), vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.b)), _wgslsmith_div_u32(~0u, _wgslsmith_div_u32(var_0.x, 4294967295u)), u_input.b, 16067u));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = vec3<u32>(~select(_wgslsmith_mod_u32(74747u, 20640u), _wgslsmith_clamp_u32(u_input.b, 4294967295u, 1u), select(global0.x, global0.x, global0.x)) << (0u % 32u), u_input.b, 40180u);
    let var_1 = select(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x) & select(var_0, var_0, global0.yww), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_0, var_0), ~var_0)), var_0.x), var_0.x, global0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global4.a.x, global1[_wgslsmith_index_u32(4294967295u, 19u)]) + vec3<f32>(1000f, global4.a.x, -254f)) + _wgslsmith_f_op_vec3_f32(max(global2.a, vec3<f32>(-2350f, -1020f, 1840f))))), func_1(Struct_1(global0.xw, -vec2<i32>(-2147483647i, u_input.a), ~vec4<u32>(var_0.x, var_1, var_1, 60503u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_1, var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1769f, 1574f, global4.a.x, arg_1.a.x) - vec4<f32>(445f, 831f, global2.a.x, -392f)) * vec4<f32>(global2.a.x, global1[_wgslsmith_index_u32(var_1, 19u)], 2531f, arg_1.a.x)), Struct_1(select(global0.zz, vec2<bool>(global0.x, global0.x), global0.xz), vec2<i32>(u_input.a, 2147483647i) & vec2<i32>(u_input.a, u_input.a), vec4<u32>(0u, var_0.x, 29139u, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(70608u, 0u), var_0.xx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -363f, 503f, 1783f) * vec4<f32>(global4.a.x, arg_1.a.x, global1[_wgslsmith_index_u32(1u, 19u)], 269f)))).a), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.a, arg_1.a) + global2.a)));
    var var_3 = u_input.a;
    let var_4 = Struct_2(var_0);
    return max(select(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b, var_4.a.x, 35732u, 0u), vec4<u32>(70303u, var_4.a.x, 24939u, var_4.a.x), global0.x), ~vec4<u32>(var_1, u_input.b, var_1, var_1)) & countOneBits(~vec4<u32>(var_0.x, var_1, 0u, 0u)), func_4(1774f, !(!vec2<bool>(global0.x, global0.x)), func_3(vec3<bool>(true, true, true), 30620u, true), !all(vec2<bool>(global0.x, global0.x))), vec4<bool>(select(false, global0.x, any(global0.xx)), global0.x, false, false)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2328f))), global0.zw, vec3<bool>(any(global0.zz), true, false), any(!(!global0.xwx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(~(-abs(vec4<i32>(1224i, u_input.a, 15223i, 1i))), vec4<i32>(1i, 39841i, u_input.a, -2147483647i), ~abs(firstTrailingBit(vec4<i32>(-2147483647i, -33907i, u_input.a, 11523i)))) >> (vec4<u32>(u_input.b, _wgslsmith_div_u32(u_input.b, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, firstTrailingBit(0u), countOneBits(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(49260u, u_input.b), vec2<u32>(u_input.b, u_input.b))), ~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 18067u, u_input.b, u_input.b), min(vec4<u32>(13852u, 48058u, 4294967295u, 0u), vec4<u32>(u_input.b, 0u, 4294967295u, 22640u)), true), func_2(_wgslsmith_f_op_f32(select(-1000f, global2.a.x, global0.x)), func_1(Struct_1(global0.wy, vec2<i32>(-2147483647i, u_input.a), vec4<u32>(1u, 4294967295u, 0u, 0u), vec2<u32>(u_input.b, 4294967295u)), vec4<f32>(1607f, 904f, 271f, global4.a.x), Struct_1(vec2<bool>(true, global0.x), vec2<i32>(u_input.a, u_input.a), vec4<u32>(68384u, 11580u, 1u, u_input.b), vec2<u32>(73339u, u_input.b)), vec4<f32>(global4.a.x, -409f, -371f, 748f))))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -var_0.x) >> (u_input.b % 32u));
}

