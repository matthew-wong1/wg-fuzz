struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.a, max(~_wgslsmith_mult_vec2_u32(arg_1.b >> (vec2<u32>(u_input.c, var_0.a) % vec2<u32>(32u)), arg_0.b >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))), ~((arg_0.b << (vec2<u32>(var_0.a, arg_0.b.x) % vec2<u32>(32u))) & vec2<u32>(32702u, 4294967295u))), ~arg_0.b.x, firstTrailingBit(arg_0.d & u_input.d));
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_2.ww + vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2.x)));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-156f))) + _wgslsmith_f_op_f32(sign(1f)));
    return -_wgslsmith_dot_vec2_i32(~vec2<i32>(firstTrailingBit(arg_0.d.x), 86778i), var_0.d.zy);
}

fn func_2() -> u32 {
    var var_0 = vec2<f32>(-1647f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = array<Struct_1, 11>();
    let var_1 = vec4<i32>((-1i >> (_wgslsmith_mod_u32(1u, 4294967295u) % 32u)) >> (u_input.c % 32u), u_input.a & max(2147483647i, func_3(Struct_1(u_input.b, vec2<u32>(1u, u_input.b), 9756u, u_input.d), Struct_1(u_input.c, vec2<u32>(1u, 0u), 38689u, vec3<i32>(13043i, u_input.d.x, 2147483647i)), vec4<f32>(-213f, -3819f, var_0.x, var_0.x))), 1i, max(abs(~u_input.d.x), -u_input.d.x)) | (vec4<i32>(min(max(-2147483647i, 51436i), 30083i), u_input.d.x, u_input.a, u_input.a) & abs(vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, u_input.d.x) ^ vec4<i32>(u_input.a, u_input.a, u_input.d.x, 18055i)));
    var var_2 = global0[_wgslsmith_index_u32(~((_wgslsmith_div_u32(0u, u_input.c) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 41157u, 64029u), vec4<u32>(46199u, u_input.c, 60961u, 8273u)), u_input.b | u_input.b) % 32u)) & _wgslsmith_sub_u32(~(~u_input.b), max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b, 4294967295u, 60520u), vec4<u32>(u_input.b, u_input.c, u_input.c, 0u)), firstLeadingBit(u_input.c)))), 11u)];
    var var_3 = Struct_3(select(select(vec4<bool>(true, true, all(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true), any(vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true))));
    return firstLeadingBit(_wgslsmith_div_u32(1u, ~_wgslsmith_div_u32(var_2.a & 0u, 1u)));
}

fn func_1(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = u_input.d ^ u_input.d;
    var var_1 = Struct_4(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(abs(4294967295u), u_input.b), firstLeadingBit(u_input.c & ~24521u)), func_2(), abs(u_input.b), Struct_2(vec2<i32>(~u_input.d.x, firstTrailingBit(var_0.x)), !arg_0.a.yz), Struct_3(arg_0.a));
    let var_2 = ((~u_input.d ^ (_wgslsmith_div_vec3_i32(u_input.d, u_input.d) | countOneBits(vec3<i32>(0i, u_input.d.x, -2147483647i)))) | vec3<i32>(_wgslsmith_div_i32(-var_1.d.a.x, abs(0i)), _wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_div_i32(0i, var_1.d.a.x), ~(-89471i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 0i, 43797i), u_input.d))) | min(u_input.d, abs(vec3<i32>(~15750i, ~(-1i), 1i)));
    var var_3 = vec4<bool>(var_1.d.b.x, any(select(select(arg_0.a.xw, select(var_1.e.a.xx, var_1.e.a.yx, var_1.e.a.x), true), select(vec2<bool>(true, true), !vec2<bool>(var_1.e.a.x, false), select(arg_0.a.x, true, arg_0.a.x)), any(arg_0.a))), false, true);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1043f + -829f) - _wgslsmith_f_op_f32(abs(-973f)))))) * _wgslsmith_f_op_f32(ceil(242f)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 - var_4) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_4)), _wgslsmith_f_op_f32(sign(2127f)))), -1697f, -940f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, -1206f, -2114f, 509f)))) * _wgslsmith_f_op_vec4_f32(func_1(Struct_3(vec4<bool>(false, true, true, true)))))));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_1 = Struct_4(abs(6271u), firstLeadingBit(32132u), ~u_input.b, Struct_2(abs(u_input.d.yz), vec2<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true)))), Struct_3(vec4<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-630f + var_0.x) < var_0.x, true, u_input.c == abs(u_input.c))));
    var var_2 = reverseBits(select(~vec3<u32>(1u, min(u_input.c, 0u), u_input.c), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.c, u_input.c, u_input.b)), select(var_1.e.a.xzx, !vec3<bool>(var_1.d.b.x, true, var_1.e.a.x), vec3<bool>(true, false, select(true, false, var_1.e.a.x)))));
    var var_3 = abs(var_1.d.a.x);
    var var_4 = var_1.e;
    global0 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_f_op_f32(-var_0.x)))))));
}

