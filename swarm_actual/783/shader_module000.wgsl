struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = Struct_3(vec4<f32>(265f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -818f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_1.a.x, 706f, true))))), arg_0.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1499f)), 539f)));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(arg_1.a, arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -421f, var_0.a.x, arg_1.a.x)))))))));
    var var_1 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_div_u32(32491u, u_input.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 121292u), vec2<u32>(1u, 1u))) & _wgslsmith_dot_vec3_u32((vec3<u32>(44653u, arg_0.b, arg_0.c) | vec3<u32>(4294967295u, 56696u, u_input.c)) | reverseBits(vec3<u32>(arg_0.c, 1u, 9127u)), _wgslsmith_mult_vec3_u32(vec3<u32>(52797u, u_input.c, 4294967295u) & vec3<u32>(arg_0.c, arg_0.c, arg_0.c), countOneBits(vec3<u32>(u_input.c, u_input.c, 64863u)))), ~firstTrailingBit(select(firstTrailingBit(vec4<u32>(1u, 4292u, 18752u, 1u)), vec4<u32>(4294967295u, u_input.c, arg_0.b, 79522u) ^ vec4<u32>(4294967295u, 0u, 65700u, u_input.c), select(false, true, false))), vec2<bool>(!(!(u_input.a == -2147483647i)), _wgslsmith_div_f32(_wgslsmith_div_f32(517f, 252f), _wgslsmith_f_op_f32(sign(-377f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.a.x)))), vec4<u32>(u_input.c, firstTrailingBit(19622u), 4294967295u, ~(0u << (min(0u, u_input.c) % 32u))), !(false & any(vec3<bool>(true, true, true))));
    let var_2 = Struct_4(arg_1, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(18193u, 73753u), var_1.b.wy)), _wgslsmith_div_u32(~(~(~1u)), ~3924u));
    var var_3 = ~select(vec4<u32>(arg_0.b, abs(27717u & arg_0.b), firstTrailingBit(32025u) & 53087u, 0u), vec4<u32>(abs(~1u), var_1.d.x, ~arg_0.b, ~arg_0.c), vec4<bool>(!(!var_1.e), any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true)), true));
    return !var_1.c;
}

fn func_2(arg_0: vec3<bool>) -> Struct_4 {
    var var_0 = 32201u;
    let var_1 = u_input.b.x;
    global0 = array<f32, 9>();
    var var_2 = Struct_1(1u, max(vec4<u32>(min(_wgslsmith_sub_u32(77763u, 4691u), ~0u), u_input.c, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 23688u, 7687u)), ~vec3<u32>(u_input.c, 10988u, 1u)), u_input.c), ~vec4<u32>(~u_input.c, ~u_input.c, u_input.c, 20385u)), !vec2<bool>(true, any(arg_0.yx) & select(arg_0.x, true, arg_0.x)), ~(~vec4<u32>(0u, u_input.c, ~67134u, u_input.c)), 646f >= global0[_wgslsmith_index_u32(~(~(~4294967295u)), 9u)]);
    var_2 = Struct_1(u_input.c, vec4<u32>(var_2.b.x, var_2.b.x, 1u, ~u_input.c << (u_input.c % 32u)), select(vec2<bool>(var_2.e, any(!vec3<bool>(true, true, arg_0.x))), select(arg_0.xz, select(func_3(Struct_4(Struct_3(vec4<f32>(-462f, global0[_wgslsmith_index_u32(u_input.c, 9u)], -1155f, global0[_wgslsmith_index_u32(u_input.c, 9u)])), u_input.c, 53775u), Struct_3(vec4<f32>(934f, -1000f, -1199f, 499f))), func_3(Struct_4(Struct_3(vec4<f32>(821f, 1504f, 1670f, global0[_wgslsmith_index_u32(u_input.c, 9u)])), u_input.c, u_input.c), Struct_3(vec4<f32>(global0[_wgslsmith_index_u32(45914u, 9u)], 237f, global0[_wgslsmith_index_u32(var_2.b.x, 9u)], -1722f))), !vec2<bool>(var_2.c.x, var_2.c.x)), vec2<bool>(arg_0.x || arg_0.x, any(vec4<bool>(false, var_2.c.x, true, true)))), !arg_0.zx), vec4<u32>(3159u, 0u, _wgslsmith_mult_u32(firstTrailingBit(1u), 1898u), _wgslsmith_mult_u32(_wgslsmith_div_u32(42265u, u_input.c), var_2.b.x)), false);
    return Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(636f, -348f, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(12376u, 9u)]) * vec4<f32>(global0[_wgslsmith_index_u32(var_2.a, 9u)], 340f, 1243f, 1723f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.c, 9u)], global0[_wgslsmith_index_u32(var_2.a, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]) * vec4<f32>(830f, global0[_wgslsmith_index_u32(var_2.d.x, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(9148u, 9u)])), arg_0.x)))), ~25497u, ~u_input.c);
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = vec4<i32>(-1i) * -(firstLeadingBit(select(vec4<i32>(-65570i, 0i, 4383i, u_input.a), vec4<i32>(1i, 2296i, -10809i, u_input.b.x), vec4<bool>(arg_0, arg_0, arg_0, arg_0))) ^ vec4<i32>(0i ^ u_input.d, u_input.e.x, _wgslsmith_div_i32(-2147483647i, u_input.a), ~u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = array<f32, 9>();
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 9u)], 417f, global0[_wgslsmith_index_u32(0u, 9u)], 659f) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 9u)], global0[_wgslsmith_index_u32(u_input.c, 9u)], 177f, 517f)))), vec4<f32>(707f, -1163f, 329f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(45504u, 9u)], global0[_wgslsmith_index_u32(15497u, 9u)])), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 9u)], global0[_wgslsmith_index_u32(51140u, 9u)], global0[_wgslsmith_index_u32(u_input.c, 9u)], -1412f))) - vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 9u)]), global0[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_div_f32(103f, -724f), -1624f)))));
    var_0 = _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-2147483647i, -1i, ~u_input.b.x, _wgslsmith_mult_i32(var_0.x, u_input.d))), ~reverseBits(select(vec4<i32>(u_input.e.x, 0i, var_0.x, 2147483647i), vec4<i32>(-2147483647i, var_0.x, var_0.x, -11800i), arg_0)), vec4<i32>(-27272i, -61095i, ~(-2147483647i), _wgslsmith_mult_i32(1i, u_input.e.x) | 2147483647i)) << (countOneBits(countOneBits(vec4<u32>(u_input.c, ~1u, abs(u_input.c), 30596u))) % vec4<u32>(32u));
    return func_2(vec3<bool>(false, true && (_wgslsmith_f_op_f32(-var_2.x) >= _wgslsmith_div_f32(var_2.x, 1338f)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    let var_1 = func_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1462f * 234f)) > _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(select(u_input.c, u_input.c, true), 9u)]))));
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    var var_2 = 32081u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -286f), u_input.c);
}

