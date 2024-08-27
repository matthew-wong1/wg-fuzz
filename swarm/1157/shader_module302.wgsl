struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11>;

var<private> global1: array<f32, 24> = array<f32, 24>(1114f, -1000f, -728f, 459f, -996f, 1311f, 708f, -869f, -1557f, -1438f, -960f, 772f, 591f, 954f, 521f, -907f, -1812f, -1074f, -2144f, 426f, -569f, 680f, -2490f, 217f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    return _wgslsmith_add_i32(abs(i32(-1i) * -1i), u_input.b.x);
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: u32) -> Struct_3 {
    global1 = array<f32, 24>();
    let var_0 = vec3<bool>(u_input.a >= func_3(reverseBits(46244u), arg_1.a.x), ~arg_2 >= abs(arg_2), all(!(!arg_1.a)));
    let var_1 = Struct_1(false);
    global1 = array<f32, 24>();
    let var_2 = arg_2;
    return Struct_3(u_input.a, (50353u >> (1u % 32u)) << (max(arg_2, arg_2) % 32u), (max(vec2<u32>(var_2, 9726u) << (vec2<u32>(arg_2, 84996u) % vec2<u32>(32u)), abs(vec2<u32>(1u, var_2))) | (vec2<u32>(arg_2, 4294967295u) | ~vec2<u32>(42321u, 4294967295u))) ^ (vec2<u32>(abs(var_2), 34113u) >> (~(~vec2<u32>(76870u, 27327u)) % vec2<u32>(32u))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(var_2, var_2, 16400u, var_2), ~(~vec4<u32>(1u, 4294967295u, arg_2, arg_2))), ((vec4<u32>(0u, 56284u, 3294u, 0u) | vec4<u32>(0u, var_2, var_2, arg_2)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_2, arg_2, 15611u, var_2), vec4<u32>(var_2, var_2, 2921u, var_2))) & _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 63050u, 0u, arg_2), vec4<u32>(1u, 22666u, var_2, 0u)), vec4<u32>(var_2, var_2, var_2, var_2))), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 24u)] * global1[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_f_op_f32(266f + 1493f), _wgslsmith_f_op_f32(780f + 258f), global1[_wgslsmith_index_u32(var_2 << (4294967295u % 32u), 24u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_2, 24u)], global1[_wgslsmith_index_u32(arg_2, 24u)], global1[_wgslsmith_index_u32(arg_2, 24u)], global1[_wgslsmith_index_u32(var_2, 24u)]) + vec4<f32>(-1000f, -374f, 422f, 620f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-571f, -1000f) + vec2<f32>(global1[_wgslsmith_index_u32(0u, 24u)], 1000f))))), vec3<u32>(~(~1u), 1u, ~1u), vec3<i32>(u_input.a, 25922i & _wgslsmith_add_i32(u_input.a, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1884i, 13321i, 1i, 17177i), countOneBits(vec4<i32>(u_input.a, 21305i, u_input.c, u_input.c)))), Struct_1(any(select(var_0, vec3<bool>(arg_0, false, var_0.x), arg_1.a.zwz)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = ~(~vec3<i32>(arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(23937i, 0i, 1i, arg_3.e.d.x) << (vec4<u32>(arg_0.x, arg_0.x, 48130u, 0u) % vec4<u32>(32u)), vec4<i32>(34093i, arg_2, arg_2, u_input.a)), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_3.a, -15300i), arg_3.e.d.xx)));
    global1 = array<f32, 24>();
    return vec3<bool>(any(vec2<bool>(!arg_3.e.e.a, arg_3.e.e.a)), false, arg_3.e.e.a);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<u32>) -> Struct_4 {
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    let var_0 = select(select(vec3<bool>(any(select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), false)), arg_0, true && !arg_0), vec3<bool>(true, !(arg_2.x == 45323u), arg_0), func_4(countOneBits(vec4<u32>(4294967295u, 8710u, 1u, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(88544u, 24u)])), _wgslsmith_f_op_f32(abs(1169f))), abs(0i), func_2(arg_0, global0[_wgslsmith_index_u32(~arg_2.x, 11u)], 36563u))), vec3<bool>(arg_0, true, true), func_2(arg_0, Struct_4(!select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(true, arg_0, false, true), vec4<bool>(false, true, false, true))), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(arg_2, arg_2), vec2<u32>(1u, min(arg_2.x, arg_2.x)))).e.e.a);
    global1 = array<f32, 24>();
    let var_1 = select(!arg_0, all(select(!select(vec4<bool>(true, false, false, arg_0), vec4<bool>(var_0.x, arg_0, arg_0, true), vec4<bool>(var_0.x, true, false, arg_0)), vec4<bool>(var_0.x & var_0.x, true, arg_0, global1[_wgslsmith_index_u32(12305u, 24u)] < 1696f), all(!var_0))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.x, arg_2.x) << (max(arg_2.x, 4294967295u) % 32u), 24u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(70894u, 24u)] - _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_2.x, 24u)], global1[_wgslsmith_index_u32(arg_2.x, 24u)], false)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 24u)] + global1[_wgslsmith_index_u32(arg_2.x, 24u)]), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_2.x, 24u)], 1000f))))));
    return Struct_4(select(!select(select(vec4<bool>(arg_0, arg_0, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_1), true), select(vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, var_0.x, var_0.x, true), true), false & arg_0), vec4<bool>(true, var_0.x, var_0.x, any(var_0.yy)), !(!(!vec4<bool>(var_1, false, var_1, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 11>();
    let var_0 = func_1(any(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, 2179f != global1[_wgslsmith_index_u32(0u, 24u)]), true)), abs(u_input.d), _wgslsmith_sub_vec2_u32(countOneBits(~(~vec2<u32>(0u, 47710u))), _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(5757u, 4294967295u)), vec2<u32>(1u, 5896u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(57204u, 113939u), vec2<u32>(79674u, 25173u), vec2<u32>(30348u, 9708u)) % vec2<u32>(32u)))));
    global1 = array<f32, 24>();
    global0 = array<Struct_4, 11>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2(true, global0[_wgslsmith_index_u32(0u, 11u)], 35708u).e.a) + vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 24u)]), -1000f, -1231f, _wgslsmith_f_op_f32(-1324f + -1000f)))));
    var var_2 = Struct_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(-14527i ^ u_input.a, _wgslsmith_sub_i32(u_input.b.x, u_input.c)), ~20657i, _wgslsmith_mod_i32(min(u_input.a, 0i), u_input.b.x))));
}

