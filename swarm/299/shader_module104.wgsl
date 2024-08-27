struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(786f), vec4<u32>(65527u, 13510u, 90002u, 57174u), Struct_1(1409f, -8848i, vec4<u32>(16819u, 4294967295u, 4294967295u, 4294967295u), 12358u, vec3<bool>(true, false, true)), vec2<u32>(53278u, 48116u), -1i);

var<private> global1: vec2<f32> = vec2<f32>(652f, 980f);

var<private> global2: array<i32, 15>;

var<private> global3: Struct_1;

var<private> global4: Struct_2 = Struct_2(589f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec2<f32> {
    let var_0 = global3.e.x;
    let var_1 = !global3.e.x;
    global3 = Struct_1(global0.c.a, ~global0.e, global3.c, max(global3.c.x, _wgslsmith_add_u32(select(~4294967295u, 11622u, false), ~4294967295u << (global3.d % 32u))), !(!(!vec3<bool>(global0.c.e.x, global3.e.x, false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-661f, _wgslsmith_f_op_f32(round(-454f)), _wgslsmith_f_op_f32(min(global1.x, global0.c.a))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -418f), global1.x)));
    global2 = array<i32, 15>();
    return vec2<f32>(_wgslsmith_f_op_f32(-global0.a.a), global3.a);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_4(global0.a, ~global0.b, global0.c, select(abs(vec2<u32>(global0.b.x, global3.c.x) & _wgslsmith_clamp_vec2_u32(global3.c.wy, vec2<u32>(global3.c.x, 23570u), global3.c.xy)), global3.c.zz, !arg_0), arg_1.x);
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-36104i & countOneBits(_wgslsmith_clamp_i32(-1i, arg_1.x, u_input.a)), i32(-1i) * -21419i, -_wgslsmith_div_i32(abs(global3.b), global0.c.b)), vec3<i32>(~firstTrailingBit(arg_1.x << (30665u % 32u)), ~var_0.e, -1i));
    global4 = Struct_2(global4.a);
    global3 = global0.c;
    var var_2 = global0.b.xz;
    return _wgslsmith_div_f32(1483f, 1469f);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-169f, -515f))), true))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global3.a))), _wgslsmith_f_op_f32(func_3(any(vec2<bool>(true, global0.c.e.x)), ~vec3<i32>(u_input.a, global3.b, global0.e)))), -2183f));
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(abs(1188f))), ~_wgslsmith_div_vec4_u32(countOneBits(global3.c), vec4<u32>(_wgslsmith_add_u32(global0.b.x, global3.d), 4294967295u, 0u, firstLeadingBit(1u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.c.a, arg_1.a))))), global2[_wgslsmith_index_u32(0u, 15u)], global3.c, 1u, select(select(!vec3<bool>(false, global3.e.x, true), !global3.e, arg_0), global0.c.e, false)), global3.c.xx, global3.b);
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-309f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)), arg_1.a)), 41071i, global0.c.c, firstLeadingBit(~(~global0.b.x)), select(global3.e, !select(global0.c.e, select(global3.e, global3.e, global0.c.e.x), global3.b < -52015i), !vec3<bool>(arg_0, true, true)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(191f)), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(14580u, 15u)], 0i, 3593i, global2[_wgslsmith_index_u32(global3.c.x, 15u)]), min(vec4<i32>(54645i, -2147483647i, 1i, u_input.a) & vec4<i32>(-1i, global3.b, -31355i, 1i), select(vec4<i32>(26859i, -2147483647i, -1i, u_input.a), vec4<i32>(2147483647i, global0.e, 29322i, -2147483647i), vec4<bool>(true, false, true, arg_0)))), firstTrailingBit(~vec4<u32>(global0.b.x, 39451u, 0u, global3.d) & ~global3.c) | global0.c.c, ~_wgslsmith_div_u32(~global0.c.c.x, _wgslsmith_dot_vec4_u32(global0.b, ~global3.c)), global0.c.e);
    let var_1 = Struct_3(~vec4<u32>(1u, 8065u, 12607u, var_0.c.x), global0.c.c.x, global0.c);
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1269f)), global0.b, var_1.c, var_0.c.zw, global2[_wgslsmith_index_u32(~min(~(710u << (0u % 32u)), global3.c.x), 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.e.x && all(vec4<bool>(true, any(!global3.e), any(vec4<bool>(false, true, global3.e.x, false)), false));
    var var_1 = -813f;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.a, -1368f, _wgslsmith_f_op_f32(-global4.a)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1569f, -1128f, global1.x) + vec3<f32>(-654f, -940f, global4.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(195f, -1225f, global0.c.a) - vec3<f32>(-1726f, -585f, 2084f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.a, global3.a, global1.x)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, 139f, 535f) + vec3<f32>(global1.x, -873f, global0.c.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a, global0.a.a, -213f))) * vec3<f32>(global1.x, -393f, _wgslsmith_f_op_f32(-global1.x))))));
    global0 = func_1(all(vec3<bool>(global0.c.e.x, any(vec4<bool>(true, global3.e.x, global0.c.e.x, false)) != (global4.a == global3.a), global0.c.c.x == 0u)), Struct_2(var_2.x));
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_2.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(738f, global4.a)))), var_2.zy, !all(global3.e)))));
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(852f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-103f, global0.c.a))))), vec4<u32>(firstLeadingBit(21431u), firstLeadingBit(~(~global3.d)), ~((global0.b.x & global3.d) ^ global0.b.x), global3.c.x), Struct_1(global4.a, min(global2[_wgslsmith_index_u32(9621u, 15u)], global0.e), max(_wgslsmith_div_vec4_u32(~global0.c.c, select(global3.c, global3.c, vec4<bool>(true, true, global0.c.e.x, global3.e.x))), ~vec4<u32>(37758u, 3348u, 0u, global3.d)), _wgslsmith_mult_u32(~max(global0.d.x, global3.c.x), ~global0.b.x), vec3<bool>(global0.c.e.x, true, !select(global0.c.e.x, global3.e.x, global3.e.x))), ~(~(~(global3.c.zw << (vec2<u32>(global3.d, global3.d) % vec2<u32>(32u))))), u_input.a);
    global4 = global0.a;
    let var_4 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(max(1i, global3.b), 7134u, ~(_wgslsmith_sub_vec3_u32(global0.c.c.www, select(vec3<u32>(var_3.d.x, 0u, 4294967295u), global0.b.zzy, vec3<bool>(var_3.c.e.x, false, global0.c.e.x))) | var_3.b.ywx), vec2<i32>(~countOneBits(-var_3.c.b), _wgslsmith_dot_vec2_i32(~vec2<i32>(global2[_wgslsmith_index_u32(global3.d, 15u)], 74680i), vec2<i32>(var_4.b, -1i)) ^ ~reverseBits(var_3.e)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c.c.x, 15389u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), global0.d), (var_4.c.x >> (45887u % 32u)) ^ (15882u | global3.d), 0u) & var_3.b);
}

