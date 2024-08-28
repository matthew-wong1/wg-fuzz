struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 13>;

var<private> global2: array<vec4<u32>, 14>;

var<private> global3: i32 = 16338i;

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    global1 = array<bool, 13>();
    var var_0 = Struct_1(countOneBits(select(~_wgslsmith_add_u32(0u, arg_1.c), u_input.b, !any(vec4<bool>(arg_1.e.x, true, arg_0.x, global1[_wgslsmith_index_u32(arg_1.b, 13u)])))), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 38243u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.d, 0u, 1u), u_input.a << (vec3<u32>(arg_1.c, arg_1.d, u_input.b) % vec3<u32>(32u)))), select(arg_1.a, _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x) >> (47453u % 32u), true), 27578u, vec4<bool>(arg_0.x, !global1[_wgslsmith_index_u32(arg_1.c, 13u)], !arg_0.x | (!global1[_wgslsmith_index_u32(15715u, 13u)] || false), any(!arg_1.e.yww) && !any(vec2<bool>(true, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2173f, 257f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) - -1191f))));
    global4 = array<Struct_1, 25>();
    var_0 = arg_1;
    return 186u;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(68684u << (u_input.a.x % 32u), reverseBits(4294967295u)) | reverseBits(max(u_input.a.x, 1u))) & ~(~u_input.a.x), 25u)];
    let var_1 = 1545f;
    var var_2 = true;
    var var_3 = global4[_wgslsmith_index_u32(1u & max(firstTrailingBit(39696u) & var_0.a, var_0.a), 25u)];
    let var_4 = u_input.c;
    return func_3(!select(!vec4<bool>(true, true, var_0.e.x, false), var_3.e, !(!var_0.e)), global4[_wgslsmith_index_u32(max(~var_0.c, _wgslsmith_clamp_u32(arg_2, ~1u, u_input.b & var_3.d) >> (var_0.d % 32u)), 25u)]);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<bool>) -> vec4<u32> {
    global4 = array<Struct_1, 25>();
    var var_0 = -743f;
    let var_1 = Struct_1(u_input.b, 21063u, func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(2346f, _wgslsmith_f_op_f32(select(878f, 525f, arg_2.x))), _wgslsmith_f_op_f32(480f * -1000f)), 1000f, ~func_3(arg_2, Struct_1(0u, u_input.a.x, arg_1.x, arg_1.x, arg_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-310f, -283f, -193f, -523f), vec4<f32>(-1313f, 944f, -125f, -209f))) * vec4<f32>(-830f, 1000f, 340f, -1000f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1457f, -904f, 978f, 693f))))), arg_1.x >> (~u_input.a.x % 32u), !vec4<bool>(arg_2.x, any(select(arg_2.zzw, vec3<bool>(true, arg_2.x, arg_2.x), global1[_wgslsmith_index_u32(0u, 13u)])), any(arg_2.zzz), u_input.c.x < u_input.c.x));
    var_0 = -737f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1066f, -1060f), vec2<f32>(-226f, -1000f)))))));
    return ~(global2[_wgslsmith_index_u32(1u, 14u)] >> (abs(global2[_wgslsmith_index_u32(~1u, 14u)]) % vec4<u32>(32u))) << (vec4<u32>(var_1.d, 0u, 37872u, _wgslsmith_mod_u32(reverseBits(_wgslsmith_clamp_u32(arg_1.x, 1u, arg_1.x)), ~(~20641u))) % vec4<u32>(32u));
}

fn func_1() -> Struct_1 {
    var var_0 = all(vec2<bool>(true, true));
    let var_1 = Struct_1(10664u, 1u, 68526u, 1u, select(!vec4<bool>(global1[_wgslsmith_index_u32(max(12331u, u_input.a.x), 13u)], global1[_wgslsmith_index_u32(42700u, 13u)] & global1[_wgslsmith_index_u32(u_input.b, 13u)], true, false), !select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], true, true, false), vec4<bool>(true, true, true, true), select(global1[_wgslsmith_index_u32(11598u, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)])), any(vec3<bool>(select(true, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), false, 3272i >= u_input.c.x))));
    global2 = array<vec4<u32>, 14>();
    var var_2 = u_input.c.x;
    let var_3 = ~0u;
    return Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(var_1.a, 14u)], _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(96491u, u_input.a.x, 94217u, var_3)), func_2(global1[_wgslsmith_index_u32(var_3, 13u)], vec3<u32>(var_3, u_input.b, var_3), vec4<bool>(false, true, true, false)))), global2[_wgslsmith_index_u32(var_3, 14u)]), var_3, 14847u, 33725u, !var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -566f))))) + -867f);
    var var_1 = func_1();
    var var_2 = ~(-2147483647i) < ~u_input.c.x;
    var var_3 = ~((~_wgslsmith_div_u32(29652u, var_1.b) << (u_input.b % 32u)) ^ (4294967295u & ~(u_input.a.x | 1u)));
    let var_4 = global4[_wgslsmith_index_u32(~63605u, 25u)];
    var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), 25u)];
    let var_5 = u_input.c.wy ^ u_input.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-469f, -1000f), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-var_0), true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-169f - var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(352f)), _wgslsmith_f_op_f32(round(-1281f)))))))), reverseBits(~firstTrailingBit(vec2<u32>(var_1.c, u_input.a.x))));
}

