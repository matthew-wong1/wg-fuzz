struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 25>;

var<private> global2: array<Struct_4, 19>;

var<private> global3: array<Struct_2, 21>;

var<private> global4: array<f32, 22>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~u_input.c.x, 19u)];
    global2 = array<Struct_4, 19>();
    global3 = array<Struct_2, 21>();
    let var_1 = 60300u;
    global3 = array<Struct_2, 21>();
    return var_0.a;
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    let var_0 = select(select(vec4<bool>(arg_1.b.d.x, arg_1.a.c, 1003f == _wgslsmith_f_op_f32(trunc(431f)), false), arg_1.b.d, vec4<bool>(select(false, true, true), !(u_input.c.x >= 4294967295u), true, arg_1.a.c)), vec4<bool>(false, 551f == func_1(true).a.x, arg_1.a.c, arg_1.b.b.c), !select(arg_1.b.d, vec4<bool>(all(arg_1.b.d), false, func_1(arg_1.b.b.c).c, -19655i <= u_input.a), !(!vec4<bool>(arg_1.a.c, true, arg_1.b.b.c, false))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2176f * func_1(true).e), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0))) * vec2<f32>(-828f, 1448f)), min(firstLeadingBit(vec3<u32>(1u, firstLeadingBit(arg_1.b.c.b.x), 85279u << (u_input.c.x % 32u))), vec3<u32>(arg_1.b.c.b.x, 72501u | u_input.c.x, _wgslsmith_mod_u32(82223u, arg_1.b.c.b.x)) ^ min(u_input.c.zzz, select(vec3<u32>(arg_1.b.c.b.x, u_input.c.x, 54067u), arg_1.b.c.b, vec3<bool>(false, arg_1.b.d.x, true)))), any(vec3<bool>(var_0.x, any(vec2<bool>(var_0.x, var_0.x)), arg_1.a.c)), _wgslsmith_f_op_f32(1082f * _wgslsmith_f_op_f32(-arg_1.b.c.d)), -596f);
    var var_2 = _wgslsmith_clamp_u32(0u, 4294967295u, arg_1.a.b.x);
    let var_3 = arg_1.b;
    var_2 = ~u_input.c.x;
    return u_input.c.x;
}

fn func_2() -> StorageBuffer {
    let var_0 = func_1(true);
    global4 = array<f32, 22>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.c.x, 22u)] * 860f) * -622f);
    let var_2 = vec4<u32>(func_3(403f, Struct_3(var_0, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(var_0.b.x), var_0.b.x), 21u)])), 34006u, _wgslsmith_mult_u32(~(~u_input.c.x), ~max(_wgslsmith_dot_vec2_u32(u_input.c.wy, vec2<u32>(4163u, 1u)), 4294967295u)), abs(_wgslsmith_add_u32(~u_input.c.x, ~(~var_0.b.x))));
    let var_3 = select(select(vec2<bool>(true, true), select(vec2<bool>(all(vec4<bool>(var_0.c, var_0.c, false, var_0.c)), var_2.x >= var_0.b.x), select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, false), !vec2<bool>(var_0.c, var_0.c)), any(vec4<bool>(var_0.c, false, var_0.c, false))), select(!(!vec2<bool>(var_0.c, true)), !vec2<bool>(var_0.c, true), select(!vec2<bool>(true, var_0.c), select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, var_0.c), var_0.c), !vec2<bool>(false, var_0.c)))), !(!(!select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, var_0.c), var_0.c))), !var_0.c & (min(1u, ~var_2.x) > ~1u));
    return StorageBuffer(-vec4<i32>(-65566i, min(u_input.b.x, -13845i), 0i, -2147483647i) & vec4<i32>(0i, -(1i & global1[_wgslsmith_index_u32(4294967295u, 25u)]), firstLeadingBit(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(1u, 25u)], u_input.b.x)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(6818u, 17600u ^ u_input.c.x), 25u)]), ~(-15901i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(147f - var_0.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_0.b.x, 22u)]) - _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_2.x, 22u)] + 975f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(u_input.c.x, countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 97145u, 0u, u_input.c.x), u_input.c) >> (abs(17918u) % 32u), abs(0u))));
    var var_1 = func_1(global1[_wgslsmith_index_u32(u_input.c.x, 25u)] >= _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.wy), 25u)], global1[_wgslsmith_index_u32(~var_0, 25u)] >> (1u % 32u)));
    let var_2 = firstTrailingBit(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, vec4<u32>(4294967295u, 0u, 9473u, 29706u)) | firstTrailingBit(vec4<u32>(44836u, var_0, u_input.c.x, 16547u)), u_input.c));
    var var_3 = vec3<u32>(~4294967295u, ~4294967295u, _wgslsmith_clamp_u32(reverseBits(firstLeadingBit(1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.zw, vec2<u32>(var_1.b.x, var_0)) ^ ~var_2.xz, vec2<u32>(select(3506u, u_input.c.x, var_1.c), 51403u)), 7517u & _wgslsmith_mod_u32(~1u, var_2.x)));
    global4 = array<f32, 22>();
    let x = u_input.a;
    s_output = func_2();
}

