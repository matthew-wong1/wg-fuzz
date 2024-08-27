struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32 = 13089u;

var<private> global2: f32 = 798f;

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec2<bool> {
    return vec2<bool>(any(!vec2<bool>(-11478i == arg_0, 4294967295u == global0.a.b.x)), true);
}

fn func_3() -> vec2<f32> {
    var var_0 = global0.a.b.ywy;
    let var_1 = Struct_3(vec2<i32>(62106i, (countOneBits(0i) << (~u_input.a.x % 32u)) >> (~_wgslsmith_dot_vec3_u32(global0.a.b.wzy, vec3<u32>(52522u, 4294967295u, 4294967295u)) % 32u)), Struct_2(global0.a), vec4<bool>(false, any(vec3<bool>(false, true, true)), false, false));
    var var_2 = vec2<bool>(var_1.c.x | var_1.c.x, !(!func_2(0i, var_1.b).x));
    var var_3 = select(var_1.c.zzz, vec3<bool>(_wgslsmith_add_u32(u_input.c, ~19933u) > var_0.x, true | var_1.c.x, var_2.x), false);
    var_2 = select(select(select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, var_3.x), abs(0u) > ~var_0.x), var_3.yz, !all(vec4<bool>(false, var_2.x, var_2.x, true))), !var_1.c.xx, any(var_1.c.zxy));
    return global0.a.a;
}

fn func_4(arg_0: Struct_1) -> f32 {
    global1 = ~min(107472u, 4294967295u);
    var var_0 = Struct_3(vec2<i32>(~(-2147483647i), 1i) >> (_wgslsmith_sub_vec2_u32(arg_0.b.zy, min(_wgslsmith_mod_vec2_u32(global0.a.b.xz, u_input.a.zy), countOneBits(u_input.b.xy))) % vec2<u32>(32u)), global3[_wgslsmith_index_u32(~4294967295u, 12u)], vec4<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(514f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.a.a.x)), arg_0.a.x), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true))));
    let var_1 = _wgslsmith_mult_u32(1u, countOneBits(8857u));
    var var_2 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(firstTrailingBit(-79491i), var_0.a.x, var_0.a.x | var_0.a.x, firstTrailingBit(var_0.a.x)) >> ((vec4<u32>(var_0.b.a.b.x, 0u, 0u, 32030u) & (arg_0.b & u_input.b)) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, 1i, var_0.a.x, var_0.a.x), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, 0i), vec3<i32>(var_0.a.x, var_0.a.x, -2147483647i)), -2147483647i, -var_0.a.x, -15928i)));
    global1 = _wgslsmith_dot_vec2_u32(arg_0.b.yw, ~select(~vec2<u32>(u_input.b.x, global0.a.b.x), vec2<u32>(0u, 1u) >> (vec2<u32>(arg_0.b.x, u_input.b.x) % vec2<u32>(32u)), var_0.c.x != true)) >> (~4595u % 32u);
    return 402f;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    var var_0 = !any(func_2(-2147483647i, global3[_wgslsmith_index_u32(~0u, 12u)]));
    let var_1 = ~72836u;
    var var_2 = global0.a.b.x;
    let var_3 = vec3<f32>(988f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_clamp_vec4_u32(global0.a.b, u_input.b, vec4<u32>(118237u, global0.a.b.x, global0.a.b.x, global0.a.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.x * -879f)))) - -1381f));
    var var_4 = -288f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) * _wgslsmith_f_op_f32(f32(-1f) * -923f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(func_3()).x))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -1670f, 1578f), vec3<f32>(-798f, global0.a.a.x, -428f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.x, -1000f, 1472f) * vec3<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.x, 1539f, global0.a.a.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-194f, -1754f, global0.a.a.x) - vec3<f32>(-1565f, global0.a.a.x, global0.a.a.x)))))));
    let var_1 = ~12797i;
    let var_2 = -_wgslsmith_sub_vec2_i32(vec2<i32>(-28456i, ~select(var_1, var_1, true)), -vec2<i32>(min(0i, -2147483647i), var_1));
    global3 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(802f, 718f, 1013f, var_0.x)) - vec4<f32>(var_0.x, var_0.x, -1169f, 146f))))), var_1 << (global0.a.b.x % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, 801f, 1000f)) - vec3<f32>(var_0.x, -350f, -448f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(-454f, var_0.x, -2955f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -334f, global0.a.a.x, -2768f) + vec4<f32>(-2647f, global0.a.a.x, -985f, 247f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, 148f, global0.a.a.x, global0.a.a.x) + vec4<f32>(global0.a.a.x, -1629f, global0.a.a.x, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(1150f + 1349f), _wgslsmith_f_op_f32(abs(1707f)), _wgslsmith_f_op_vec2_f32(func_3()).x))))));
}

