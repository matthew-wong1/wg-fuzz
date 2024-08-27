struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: Struct_1 = Struct_1(22690u, vec4<u32>(0u, 1u, 24865u, 1u), 2147483647i, false, vec4<u32>(1u, 4294967295u, 73231u, 30453u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1.a;
    global0 = array<Struct_1, 5>();
    let var_1 = abs(u_input.a.xx) >> (vec2<u32>(13509u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1u, 0u), global1.e, arg_1.e), vec4<u32>(global1.e.x, 5843u, 4294967295u, 129849u)), ~global1.b << (arg_1.b % vec4<u32>(32u)))) % vec2<u32>(32u));
    var var_2 = arg_1;
    let var_3 = ~countOneBits(vec4<u32>(_wgslsmith_div_u32(52985u, reverseBits(arg_1.e.x)), ~u_input.b, ~28018u, u_input.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1340f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f + 694f))), 1000f));
}

fn func_3() -> vec4<u32> {
    var var_0 = global1.d;
    global0 = array<Struct_1, 5>();
    let var_1 = Struct_1(firstLeadingBit(abs(global1.b.x)), vec4<u32>(countOneBits(~_wgslsmith_dot_vec2_u32(global1.b.ww, vec2<u32>(18123u, global1.a))), u_input.e, ~(~firstLeadingBit(u_input.b)), ~(~(~u_input.e))), _wgslsmith_div_i32(global1.c | -global1.c, 2147483647i << (_wgslsmith_div_u32(75294u, global1.a) % 32u)) ^ select(_wgslsmith_dot_vec2_i32(u_input.d.wz | vec2<i32>(-1i, u_input.d.x), u_input.d.wy), global1.c, all(vec3<bool>(true, global1.d, true)) || select(false, true, false)), all(!(!vec2<bool>(global1.d, global1.d))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(global1.b, global1.e), vec4<u32>(abs(66991u), ~(~global1.b.x), global1.e.x ^ abs(4294967295u), 1u)));
    var var_2 = true;
    return vec4<u32>(countOneBits(abs(_wgslsmith_mult_u32(global1.e.x, 1u) & var_1.e.x)), 46576u, global1.a, max(_wgslsmith_mod_u32(~(global1.e.x | 26145u), u_input.b), _wgslsmith_dot_vec3_u32(~(~var_1.e.yyx), var_1.b.zww | var_1.e.wxz)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = !arg_2;
    var var_1 = vec2<bool>(true, all(!vec4<bool>(false, !global1.d, any(vec2<bool>(arg_2, true)), false)));
    var_0 = true;
    var var_2 = abs((_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, 35783u, global1.a)), vec3<u32>(arg_1.b.x, arg_0.a, 0u) << (arg_0.b.ywy % vec3<u32>(32u))) | vec3<u32>(~arg_1.a, _wgslsmith_add_u32(u_input.e, global1.b.x), global1.e.x)) >> (vec3<u32>(~countOneBits(0u), global1.a, arg_0.a) % vec3<u32>(32u)));
    var_0 = arg_1.a > arg_1.b.x;
    return ~arg_0.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    let var_0 = firstLeadingBit(60654u);
    let var_1 = false;
    let var_2 = global0[_wgslsmith_index_u32(var_0, 5u)];
    let var_3 = Struct_1(arg_1.a >> (66619u % 32u), _wgslsmith_mult_vec4_u32(arg_0.e, vec4<u32>(min(var_2.a, 65386u) >> (_wgslsmith_div_u32(58001u, 77649u) % 32u), var_2.e.x & ~4294967295u, _wgslsmith_dot_vec3_u32(~var_2.e.xzx, vec3<u32>(arg_1.e.x, global1.e.x, 1u)), _wgslsmith_mult_u32(~arg_0.b.x, ~0u))), 2147483647i >> (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.e.x, 59595u, var_0) >> (vec3<u32>(arg_0.a, 80568u, 4294967295u) % vec3<u32>(32u)), arg_0.b.yzx & global1.e.xyw, vec3<u32>(1u, arg_0.e.x, 41643u)), ~(~vec3<u32>(1u, arg_1.a, 0u))) % 32u), !global1.d, _wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.e, ~44681u, 55234u, arg_1.e.x), arg_1.e), arg_0.b));
    var var_4 = var_3;
    return func_4(Struct_1(firstTrailingBit(23407u), min(_wgslsmith_div_vec4_u32(arg_1.e, ~var_2.b), vec4<u32>(4294967295u >> (global1.a % 32u), ~arg_1.a, _wgslsmith_div_u32(81984u, global1.a), var_0)), reverseBits(2147483647i), true, func_3()), Struct_1(_wgslsmith_sub_u32(1u, ~global1.e.x), ~(~(~vec4<u32>(0u, 1u, 4294967295u, 12238u))), global1.c, true, var_2.e), _wgslsmith_div_u32(var_4.e.x, 39101u) > func_3().x);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec4<f32> {
    let var_0 = -976f;
    var var_1 = select(select(vec3<bool>(!all(vec2<bool>(true, true)), true, false), !vec3<bool>(arg_0.d, true, true), true), select(vec3<bool>(all(select(vec3<bool>(true, arg_1, arg_0.d), vec3<bool>(true, arg_0.d, arg_1), vec3<bool>(true, true, arg_1))), true, !arg_0.d), vec3<bool>(all(vec3<bool>(arg_0.d, false, true)), global1.d, _wgslsmith_mod_u32(4294967295u, global1.b.x) != ~66543u), !(!vec3<bool>(true, arg_0.d, arg_1))), vec3<bool>(global1.d, arg_0.d, all(!(!vec4<bool>(global1.d, false, true, true)))));
    let var_2 = Struct_1(47076u, select(arg_0.b, vec4<u32>(~arg_0.b.x, u_input.b, abs(arg_0.b.x), global1.a), select(vec4<bool>(true, true, all(vec2<bool>(true, true)), !arg_1), vec4<bool>(arg_0.d && global1.d, any(vec4<bool>(true, var_1.x, global1.d, var_1.x)), !arg_0.d, arg_0.d), !vec4<bool>(arg_1, true, var_1.x, var_1.x))), firstLeadingBit(_wgslsmith_div_i32(reverseBits(global1.c), ~1i)), arg_0.d, abs(~(max(vec4<u32>(0u, arg_0.b.x, 4294967295u, 4294967295u), vec4<u32>(u_input.e, 4294967295u, 0u, u_input.b)) ^ ~vec4<u32>(u_input.b, 56120u, global1.b.x, arg_0.b.x))));
    var_1 = select(!vec3<bool>(firstLeadingBit(global1.c) != 1i, _wgslsmith_dot_vec4_i32(u_input.d, u_input.c) <= abs(-2147483647i), var_1.x), select(!(!vec3<bool>(var_1.x, false, global1.d)), !select(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, true, false), vec3<bool>(true, arg_1, var_2.d)), vec3<bool>(true, arg_0.d, var_2.d), true), select(!select(vec3<bool>(arg_1, true, false), vec3<bool>(true, true, true), vec3<bool>(false, global1.d, global1.d)), vec3<bool>(any(vec4<bool>(var_1.x, false, var_1.x, arg_1)), var_2.d, false), select(vec3<bool>(var_2.d, true, global1.d), select(vec3<bool>(false, true, true), vec3<bool>(arg_1, arg_0.d, true), vec3<bool>(false, false, true)), true))), select(select(!(!vec3<bool>(var_1.x, arg_1, false)), !(!vec3<bool>(false, var_1.x, false)), arg_0.d), select(!select(vec3<bool>(arg_1, true, var_2.d), vec3<bool>(var_1.x, var_2.d, false), var_2.d), select(select(vec3<bool>(var_2.d, arg_0.d, false), vec3<bool>(true, global1.d, var_2.d), true), select(vec3<bool>(global1.d, true, true), vec3<bool>(true, true, false), vec3<bool>(arg_0.d, false, false)), arg_0.d), arg_1), !vec3<bool>(any(vec3<bool>(var_1.x, true, true)), var_1.x, false)));
    var var_3 = vec4<u32>(~u_input.e, func_3().x, 1u, 0u);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_0, 675f, var_0)))) * vec4<f32>(var_0, 1187f, -2891f, _wgslsmith_f_op_f32(1554f * var_0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2265f, 1440f, 948f, 1144f), vec4<f32>(var_0, var_0, var_0, var_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -122f, var_0, var_0) + vec4<f32>(1000f, -942f, -157f, var_0))))), vec4<f32>(-2206f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1503f)))), _wgslsmith_f_op_f32(var_0 - 516f), -391f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(global1.a, _wgslsmith_div_u32(global1.a, global1.a), _wgslsmith_mod_u32(8255u, global1.e.x), ~global1.a);
    global0 = array<Struct_1, 5>();
    var var_1 = u_input.a.x;
    var var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(1u, 15437u) ^ ~var_0.x), 5u)];
    let var_3 = u_input.c;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1072f, _wgslsmith_f_op_f32(-918f - -270f), _wgslsmith_f_op_f32(func_1(global1.c, global0[_wgslsmith_index_u32(35404u, 5u)])), -756f)) * _wgslsmith_f_op_vec4_f32(func_5(Struct_1(~0u, _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, var_0.x), vec4<u32>(var_0.x, global1.b.x, 0u, u_input.e)), func_2(Struct_1(1u, global1.b, 1i, false, vec4<u32>(34560u, var_2.a, var_0.x, u_input.b)), Struct_1(var_0.x, var_2.b, var_2.c, global1.d, global1.b), global1.d, vec2<i32>(-2147483647i, -10221i)), global1.d, ~var_2.b), global1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(global1.e.zzz, abs(var_0.xwz)) << (func_3().xzy % vec3<u32>(32u)), u_input.a.x, -(~vec2<i32>(u_input.d.x, u_input.a.x)), _wgslsmith_f_op_f32(1474f * _wgslsmith_f_op_f32(-var_4.x)));
}

