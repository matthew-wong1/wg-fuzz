struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(vec2<u32>(4294967295u, 56128u)), Struct_4(vec2<u32>(11687u, 0u)), Struct_4(vec2<u32>(0u, 4454u)), Struct_4(vec2<u32>(0u, 4294967295u)));

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = countOneBits(-2147483647i);
    global2 = array<Struct_4, 4>();
    global3 = global1[_wgslsmith_index_u32(~(~(~arg_0 & max(73518u, global3.b << (arg_0 % 32u)))), 7u)];
    global0 = u_input.b.x;
    var var_0 = Struct_2(global3.a, 1u, abs(countOneBits(vec4<i32>(u_input.b.x, 1i, -1i, global3.c.x))) | -(global3.c << (select(vec4<u32>(22705u, global3.b, 1u, 1u), vec4<u32>(4294967295u, 0u, 56746u, global3.b), false) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-780f - var_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + -558f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(2229f)))));
}

fn func_2(arg_0: bool) -> f32 {
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(53172u)), global3.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(344f, 769f), _wgslsmith_f_op_f32(global3.a.x - -1000f))))), ~(~_wgslsmith_sub_u32(u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))), abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global3.c.x, u_input.e.x, -1i, 0i), firstTrailingBit(global3.c) ^ (vec4<i32>(global3.c.x, 1i, u_input.e.x, u_input.b.x) ^ vec4<i32>(global3.c.x, 0i, u_input.e.x, u_input.e.x)), vec4<i32>(0i, u_input.e.x, 21947i, global3.c.x) & global3.c)));
    global1 = array<Struct_2, 7>();
    global2 = array<Struct_4, 4>();
    var var_0 = any(select(select(!vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, all(vec4<bool>(arg_0, true, arg_0, arg_0)), !arg_0, false), false), !(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, false, false, arg_0), false)), vec4<bool>(select(global3.c.x != u_input.e.x, !arg_0, false), !(global3.c.x < -1i), any(select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(false, false))), true)));
    var var_1 = vec2<u32>(7949u, 1u);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_3 {
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(u_input.a.yz, vec2<u32>(global3.b, ~0u)), abs(~u_input.a.xz)), 7u)];
    var var_0 = vec2<i32>(26217i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.c.x & arg_2.c.x, _wgslsmith_div_i32(global3.c.x, u_input.b.x), _wgslsmith_sub_i32(1i, -16134i)), -arg_2.c.yyy));
    var var_1 = _wgslsmith_mult_u32(7570u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global3.b, global3.b), vec3<u32>(43973u << (u_input.c.x % 32u), ~arg_2.b, firstTrailingBit(1u))));
    let var_2 = abs(min(~min(vec4<u32>(arg_2.b, u_input.a.x, 0u, 34480u), vec4<u32>(arg_2.b, 1u, 0u, u_input.a.x)), ~select(vec4<u32>(4294967295u, 47300u, 22293u, global3.b), vec4<u32>(58830u, 28327u, global3.b, u_input.a.x), false))) ^ ~abs(~(~vec4<u32>(1u, 12347u, global3.b, arg_2.b)));
    var_1 = _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u ^ var_2.x, global3.b | 5458u), _wgslsmith_add_u32(1u, u_input.a.x)) | _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~global3.b, 7389u), _wgslsmith_mult_u32(~var_2.x, _wgslsmith_add_u32(global3.b, 4294967295u)), ~min(var_2.x, global3.b)), u_input.c.x);
    return Struct_3(!select(vec4<bool>(true, all(vec4<bool>(arg_0, true, false, arg_3.a.x)), true, true), !(!vec4<bool>(false, true, arg_0, false)), !all(arg_3.a)), select(arg_3.a.zwy, select(arg_3.a.zwz, vec3<bool>(any(arg_3.b.xz), arg_3.a.x, false), any(arg_3.a)), arg_3.a.zzz));
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = func_4(false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(arg_0.a.x * 525f), global3.a.x, _wgslsmith_f_op_f32(func_2(true))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2289f, global3.a.x, -481f, 358f))))))), Struct_2(_wgslsmith_f_op_vec3_f32(-arg_0.a), u_input.a.x, vec4<i32>(u_input.d.x, global3.c.x, _wgslsmith_sub_i32(0i, -6435i >> (0u % 32u)), u_input.e.x)), Struct_3(vec4<bool>(select(25572u == arg_0.b, false, true), all(vec3<bool>(true, true, true)), false, false & all(vec4<bool>(true, false, false, true))), select(vec3<bool>(true, true, all(vec3<bool>(false, true, false))), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))));
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(~global3.b, 4294967295u), global3.b), 7u)];
    global2 = array<Struct_4, 4>();
    global2 = array<Struct_4, 4>();
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(global3.a - vec3<f32>(arg_0.a.x, global3.a.x, 1000f)), u_input.a.x, ~vec4<i32>(-global3.c.x, ~(~(-17673i)), ~u_input.e.x, ~global3.c.x));
    return StorageBuffer(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~global3.b, u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(72432u, 4294967295u, global3.b), vec3<u32>(33378u, global3.b, global3.b)), 26919u, 1u), reverseBits(vec3<u32>(1u, u_input.a.x, 1u))) % 32u), 25230u);
    global1 = array<Struct_2, 7>();
    let var_1 = Struct_1(~4294967295u, global3.a.x, ~firstTrailingBit(vec2<u32>(4294967295u, global3.b)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(495f, _wgslsmith_f_op_f32(trunc(var_1.b)), true)))));
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1379f, 1494f, 1000f)))) * global3.a))), (0u << (select(var_0.x, ~38523u, false) % 32u)) << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(~var_0.x, ~4294967295u), ~var_1.c.x) % 32u), vec4<i32>(24925i, firstLeadingBit(_wgslsmith_div_i32(global3.c.x, 0i)), global3.c.x, global3.c.x));
    let x = u_input.a;
    s_output = func_1(Struct_2(global3.a, ~global3.b, vec4<i32>(global3.c.x, -20154i, firstLeadingBit(1i), u_input.b.x) >> (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(0u, 0u, var_0.x, global3.b)), vec4<u32>(var_0.x, u_input.c.x, u_input.c.x, u_input.a.x), select(vec4<u32>(global3.b, global3.b, u_input.c.x, 0u), vec4<u32>(0u, 4294967295u, global3.b, 4294967295u), vec4<bool>(true, true, false, true))) % vec4<u32>(32u))));
}

