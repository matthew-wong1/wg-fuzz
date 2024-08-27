struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> vec2<f32> {
    global0 = array<u32, 9>();
    var var_0 = ~(-2147483647i);
    var_0 = -30172i;
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_mod_vec4_u32(countOneBits(~(vec4<u32>(38938u, global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 9u)], 9u)], 1u) >> (vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], 12365u, 20163u, 5753u), vec4<u32>(1u, 0u, u_input.a, 0u) | vec4<u32>(0u, 71245u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1628u, 9u)], 9u)], 9829u))), _wgslsmith_sub_vec4_u32(abs(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, global0[_wgslsmith_index_u32(57332u, 9u)]))), vec4<u32>(1u, ~56263u, abs(u_input.c), ~4294967295u) & (vec4<u32>(6802u, 48273u, 25686u, 4294967295u) << (~vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 9u)], 9u)], u_input.a) % vec4<u32>(32u)))));
    return vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-579f, -1462f, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1753f))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    var var_0 = Struct_1(~abs(~vec4<u32>(64600u, u_input.a, global0[_wgslsmith_index_u32(4868u, 9u)], arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(680f, -1501f))))))), 9670i, u_input.c);
    global0 = array<u32, 9>();
    var var_1 = select(countOneBits(vec2<u32>(max(arg_0, global0[_wgslsmith_index_u32(u_input.a, 9u)]), arg_2.x & 7434u)) | ~vec2<u32>(abs(arg_0), arg_2.x), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.zx, vec2<u32>(arg_2.x, 1u)), vec2<u32>(~1u >> (arg_1.x % 32u), countOneBits(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(31588u, 9u)], 31142u)))), true);
    var_0 = Struct_1(firstLeadingBit(max(var_0.a, vec4<u32>(4294967295u, 18968u, 1u, _wgslsmith_div_u32(6794u, 3607u)))), _wgslsmith_f_op_vec2_f32(func_3(u_input.b.xxz, vec2<i32>(-(u_input.b.x | u_input.b.x), -13745i), select(select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(arg_3, false, false), select(false, false, arg_3)), vec3<bool>(arg_3, false, !arg_3), select(select(vec3<bool>(false, arg_3, true), vec3<bool>(arg_3, arg_3, true), arg_3), vec3<bool>(true, true, false), any(vec2<bool>(false, true)))))), -u_input.b.x, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_1.yy, firstTrailingBit(vec2<u32>(arg_2.x, u_input.c))), var_0.d));
    var var_2 = var_0.b.x;
    return _wgslsmith_div_f32(var_0.b.x, -995f);
}

fn func_1() -> bool {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1324f, 1008f) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(~11853u, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], u_input.c, global0[_wgslsmith_index_u32(43771u, 9u)], u_input.c) | vec4<u32>(7206u, global0[_wgslsmith_index_u32(u_input.a, 9u)], 1988u, u_input.c), ~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.c, 9u)], global0[_wgslsmith_index_u32(u_input.c, 9u)]), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -853f)) * _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1022f, -1192f)))))));
    var var_2 = 1u;
    var var_3 = select(u_input.b.zzy, -max(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) | u_input.b.xxx, ~u_input.b.zwz) ^ u_input.b.xwx, select(!select(!vec3<bool>(true, true, var_0), !vec3<bool>(var_0, var_0, false), var_0), select(vec3<bool>(any(vec4<bool>(true, true, false, var_0)), true, true), !select(vec3<bool>(false, var_0, true), vec3<bool>(true, true, false), false), ~u_input.a <= _wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(u_input.c, 9u)], 18881u)), vec3<bool>(true, true, !(var_0 || var_0))));
    global0 = array<u32, 9>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(min(84532u, u_input.a), select(~u_input.b.wxx, ~(~(~u_input.b.zxy)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), func_1()))));
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(~(vec4<u32>(var_0.a, 66065u, var_0.a, 29180u) ^ vec4<u32>(4294967295u, u_input.c, 21501u, var_0.a)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, 4294967295u, u_input.a, 101338u), vec4<u32>(2941u, 11993u, 0u, var_0.a)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(2494u, 1u, 30309u, 81398u)), countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(1u, 9u)], 1u, var_0.a, 79550u)))), _wgslsmith_f_op_vec2_f32(func_3(max(vec3<i32>(_wgslsmith_mult_i32(0i, -15915i), _wgslsmith_dot_vec4_i32(vec4<i32>(31711i, -5038i, 17563i, -1i), vec4<i32>(-1i, 15527i, var_0.b.x, u_input.b.x)), 0i), select(reverseBits(vec3<i32>(-2147483647i, 0i, u_input.b.x)), var_0.b, select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), -_wgslsmith_sub_vec2_i32(var_0.b.xy, var_0.b.xx) << (vec2<u32>(4294967295u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50836u, 9u)], 9u)] % 32u), reverseBits(38045u)) % vec2<u32>(32u)), !vec3<bool>(true, all(vec2<bool>(false, false)), true))), var_0.b.x, 59332u << (select(57060u, ~40286u, false && all(vec3<bool>(true, false, false))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(319f, var_1.b.x)) * var_1.b), _wgslsmith_f_op_vec2_f32(func_3(u_input.b.zxz, select(u_input.b.zw, var_0.b.zy, false) & vec2<i32>(25834i, u_input.b.x), vec3<bool>(true, true, true)))));
}

