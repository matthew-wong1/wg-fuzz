struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-1i, 1i, -21549i);

var<private> global1: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    global1 = Struct_2(Struct_1(!(!arg_0.x) & !(14878i >= global0[_wgslsmith_index_u32(1u, 3u)]), global1.a.b, arg_2.c.x, vec3<i32>(max(~global0[_wgslsmith_index_u32(88690u, 3u)], -global0[_wgslsmith_index_u32(77134u, 3u)]), firstLeadingBit(~global0[_wgslsmith_index_u32(4294967295u, 3u)]), i32(-1i) * -1i), (-global1.a.d.x << (arg_2.c.x % 32u)) < 49891i), arg_1.x, global1.c);
    global1 = Struct_2(arg_2.a, global1.a.b.x, ~_wgslsmith_div_vec3_u32(global1.c << (arg_2.c % vec3<u32>(32u)), firstLeadingBit(~vec3<u32>(1u, global1.c.x, 47438u))));
    global1 = arg_2;
    let var_0 = global1.c;
    global1 = Struct_2(Struct_1(!(arg_1.x == _wgslsmith_f_op_f32(arg_2.b * -615f)), vec3<f32>(_wgslsmith_f_op_f32(sign(-1314f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(f32(-1f) * -767f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-647f)))), ~var_0.x, global1.a.d, !arg_2.a.a == !(!arg_0.x)), -1419f, global1.c);
    return -6487i;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(false && arg_1.e, global1.a.b, 4294967295u, vec3<i32>(arg_2, arg_2, firstLeadingBit(arg_2)), all(select(vec2<bool>(false, global1.a.e), vec2<bool>(true, true), true))), _wgslsmith_f_op_f32(-1036f * arg_1.b.x), global1.c >> ((_wgslsmith_sub_vec3_u32(~global1.c, global1.c & vec3<u32>(37386u, 32660u, u_input.d)) ^ ~(~vec3<u32>(0u, 0u, u_input.a))) % vec3<u32>(32u)));
    var var_1 = ~(~vec4<u32>(select(1u, 53365u ^ var_0.a.c, true), abs(select(4294967295u, 14070u, false)), arg_1.c, reverseBits(u_input.b)));
    let var_2 = var_0;
    var var_3 = ~reverseBits(vec2<i32>(_wgslsmith_mod_i32(-31230i, func_3(vec4<bool>(var_0.a.e, var_0.a.a, global1.a.e, global1.a.e), vec2<f32>(1000f, var_2.b), var_2)), max(select(arg_2, -1i, true), arg_2)));
    return vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1324f - _wgslsmith_f_op_f32(685f + 1384f)), _wgslsmith_f_op_f32(floor(global1.a.b.x)))), global1.b);
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = vec4<i32>(global1.a.d.x, 2147483647i, 4981i, ~global1.a.d.x);
    let var_1 = firstTrailingBit(1u);
    global0 = array<i32, 3>();
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(869f * 124f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)))), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(_wgslsmith_mod_u32(12399u, u_input.c), u_input.c, global1.c.x), ~(~global1.c), false), _wgslsmith_add_vec3_u32(~vec3<u32>(0u, 1u, 1u), vec3<u32>(var_1, _wgslsmith_div_u32(u_input.b, 4294967295u), abs(54217u))), global1.c));
    var_0 = ~vec4<i32>(32184i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global1.a.c), global1.c.zx), var_1), 3u)] ^ 46586i, 1i, var_0.x);
    return Struct_2(global1.a, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1307f, arg_0.x)) + 1441f))), global1.c);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    global1 = arg_1.b;
    var var_0 = !(abs(1u) < _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 0u, global1.a.c, arg_2.c)), vec4<u32>(~u_input.a, arg_2.c, 1u, 4294967295u)));
    let var_1 = _wgslsmith_mult_vec3_u32(~min(arg_1.b.c, ~vec3<u32>(arg_1.b.c.x, 0u, global1.a.c) & (vec3<u32>(global1.a.c, 33091u, 55805u) >> (global1.c % vec3<u32>(32u)))), ~(arg_1.b.c ^ global1.c));
    var var_2 = !arg_2.a;
    var var_3 = arg_1.b.a.b.x;
    return 24572u;
}

fn func_1() -> Struct_1 {
    var var_0 = ~reverseBits(_wgslsmith_mult_u32(~max(0u, 39201u), global1.c.x));
    var_0 = ~_wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 44211u, 31747u) ^ vec4<u32>(u_input.a, 1u, u_input.b, u_input.b), vec4<u32>(17357u, 18915u, 63071u, u_input.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, u_input.b), firstTrailingBit(vec4<u32>(u_input.d, global1.c.x, global1.c.x, 87936u))), true), vec4<u32>(0u, 46448u, firstTrailingBit(u_input.d ^ 1u), _wgslsmith_mult_u32(firstLeadingBit(global1.a.c), 4294967295u)));
    var_0 = _wgslsmith_sub_u32(func_5(reverseBits(-global1.a.d.zx), Struct_3(global1.a.d.xx, func_4(_wgslsmith_f_op_vec2_f32(func_2(global1.b, global1.a, -86504i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(171f, -1538f, -148f, global1.a.b.x), vec4<f32>(330f, 168f, global1.a.b.x, 1350f))))), func_4(vec2<f32>(global1.b, global1.b)).a), ~_wgslsmith_add_u32(~(~u_input.d), 4294967295u));
    let var_1 = vec4<u32>(~((u_input.c & ~global1.a.c) & u_input.c), ~44127u, min(max(0u, ~106200u ^ (u_input.b ^ 0u)), u_input.d), 0u);
    let var_2 = abs(vec3<u32>(var_1.x, ~var_1.x, var_1.x));
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a.b.x)) * global1.b))) > global1.a.b.x, _wgslsmith_f_op_vec3_f32(-global1.a.b), abs(~firstLeadingBit(var_1.x)), global1.a.d, ~global1.a.d.x < -83101i);
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_4(vec2<f32>(func_4(arg_0.b.yx).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * 962f)));
    global1 = Struct_2(global1.a, var_0.b, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, ~global1.a.c, firstLeadingBit(28418u)), vec3<u32>(1u, arg_0.c, u_input.d), select(var_0.c, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.x, global1.c.x, 4294967295u), global1.c), all(vec4<bool>(true, global1.a.a, true, var_0.a.e)))));
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(func_4(global1.a.b.yy).a.b.xz + global1.a.b.yz));
    global0 = array<i32, 3>();
    let var_1 = global1.a.d;
    return Struct_2(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.a.b.x, _wgslsmith_f_op_f32(abs(-797f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f * global1.a.b.x)), func_1().b.x)), _wgslsmith_add_vec3_u32(~(~global1.c), ~abs(~global1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 3>();
    global1 = func_6(func_1());
    let var_0 = func_4(global1.a.b.zz);
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    global1 = var_0;
    var var_1 = select(global1.a.d.xx, vec2<i32>(_wgslsmith_sub_i32(0i, firstLeadingBit(select(-1i, 35027i, false))), _wgslsmith_div_i32(-28679i, ~global0[_wgslsmith_index_u32(1u, 3u)])), all(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(global1.a.e, true, false, var_0.a.a)), vec4<bool>(true, false, global1.a.a, false), vec4<bool>(var_0.a.e, true, global1.a.a, var_0.a.a)), select(!vec4<bool>(false, false, global1.a.a, global1.a.a), !vec4<bool>(var_0.a.a, var_0.a.a, global1.a.e, true), true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(4294967295u, global1.c.x, 1u << (_wgslsmith_add_u32(4294967295u, u_input.b) % 32u), 0u)), 41627u);
}

