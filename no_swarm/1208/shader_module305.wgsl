struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_3(countOneBits(~firstLeadingBit(vec4<u32>(u_input.a.x, 22853u, 122408u, u_input.a.x))), true);
    let var_1 = Struct_1(~2664u & _wgslsmith_add_u32(4294967295u, abs(global0[_wgslsmith_index_u32(~57704u, 5u)])), ~_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u)), var_0.a));
    var_0 = Struct_3(~_wgslsmith_sub_vec4_u32(max(vec4<u32>(var_0.a.x, var_1.a, 0u, u_input.a.x), vec4<u32>(var_0.a.x, var_0.a.x, 39549u, 1u) | vec4<u32>(var_1.b, u_input.a.x, 1u, var_0.a.x)), ~min(vec4<u32>(1u, var_0.a.x, var_0.a.x, var_1.b), vec4<u32>(6079u, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]))), global0[_wgslsmith_index_u32(1u, 5u)] > _wgslsmith_mult_u32(35520u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.a.x, 1u)), countOneBits(vec2<u32>(5509u, 4294967295u)))));
    let var_2 = select(_wgslsmith_mult_vec2_i32(countOneBits(select(countOneBits(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-12563i, -1i), select(vec2<bool>(true, true), vec2<bool>(false, false), var_0.b))), _wgslsmith_sub_vec2_i32(firstTrailingBit(min(vec2<i32>(0i, u_input.b), vec2<i32>(2147483647i, u_input.b))), vec2<i32>(_wgslsmith_div_i32(u_input.b, -23343i), ~u_input.b))), select(_wgslsmith_add_vec2_i32(-select(vec2<i32>(6719i, -2147483647i), vec2<i32>(1i, 38006i), true), max(~vec2<i32>(-10423i, u_input.b), vec2<i32>(u_input.b, u_input.b) << (u_input.a % vec2<u32>(32u)))), ~firstLeadingBit(vec2<i32>(2429i, 0i)) ^ _wgslsmith_mod_vec2_i32(-vec2<i32>(24336i, u_input.b), ~vec2<i32>(1i, u_input.b)), vec2<bool>(true, true)), select(select(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, false), true), vec2<bool>(any(vec2<bool>(true, var_0.b)), true), !(!vec2<bool>(var_0.b, true))), select(select(vec2<bool>(var_0.b, false), select(vec2<bool>(true, false), vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, false)), all(vec3<bool>(var_0.b, var_0.b, var_0.b))), select(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, var_0.b), var_0.b), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, true)), !var_0.b), ~(~36674u) <= firstTrailingBit(33921u & u_input.a.x)));
    var_0 = Struct_3(vec4<u32>(58066u, countOneBits(~countOneBits(14007u)), ~_wgslsmith_add_u32(u_input.a.x, var_1.a ^ u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a >> (vec2<u32>(2237u, var_0.a.x) % vec2<u32>(32u)), var_0.a.wx), 1u)), any(vec2<bool>(true, true)));
    return var_0.b;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_4(arg_3.a, global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(~(~arg_3.e.a.x), 5u)]), 5u)] >> ((_wgslsmith_clamp_u32(arg_2, _wgslsmith_mult_u32(19582u, arg_3.e.a.x), global0[_wgslsmith_index_u32(arg_3.b, 5u)]) | 5784u) % 32u), select(arg_3.c, select(vec2<bool>(!arg_3.e.b, true), select(!vec2<bool>(arg_0, false), arg_3.c, !arg_3.c), func_3()), select(select(vec2<bool>(false, arg_0), arg_3.c, true), vec2<bool>(arg_3.e.b, true), select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_3.d.b, true), vec2<bool>(arg_3.e.b, true)), arg_3.c, true))), arg_3.e, arg_3.d);
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    return -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-8441i, -2147483647i, -1i) >> (arg_2 % 32u), u_input.b | _wgslsmith_sub_i32(0i, -2147483647i), 7304i, u_input.b), reverseBits(vec4<i32>(1i, -49395i, u_input.b, u_input.b ^ 0i)));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f)), Struct_1(~global0[_wgslsmith_index_u32(45615u, 5u)], _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 17314u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(75286u, 5u)], u_input.a.x, 64414u)), 1u)), ~1i, 80248u);
    var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(191f, 231f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.a))))))), var_0.b, max(i32(-1i) * -abs(u_input.b), min(_wgslsmith_add_i32(func_2(false, var_0.a, 0u, Struct_4(1000f, var_0.d, vec2<bool>(false, false), Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(1499u, 5u)], 12504u, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), true), Struct_3(vec4<u32>(u_input.a.x, u_input.a.x, 48536u, 42040u), true))), u_input.b), -1i)), 1u);
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    return var_0.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: Struct_3) -> StorageBuffer {
    global0 = array<u32, 5>();
    let var_0 = vec3<i32>(firstTrailingBit(-2147483647i), arg_2.x, u_input.b);
    global0 = array<u32, 5>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x), Struct_1(abs(~u_input.a.x), abs(~290u) << ((arg_3.a.x << (global0[_wgslsmith_index_u32(4294967295u, 5u)] % 32u)) % 32u)), -14118i, global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(64964u, ~4294967295u), 5u)]) << (firstLeadingBit(arg_3.a.x) % 32u), 5u)]);
    var var_2 = Struct_5(36855u << (1u % 32u), -756f, _wgslsmith_add_i32(_wgslsmith_sub_i32(func_2(arg_3.b || arg_3.b, _wgslsmith_f_op_f32(max(var_1.a, -1143f)), ~44827u, Struct_4(var_1.a, arg_3.a.x, arg_1.zw, arg_3, Struct_3(vec4<u32>(4294967295u, 3390u, var_1.b.a, 103715u), arg_1.x))), 1i), var_1.c));
    return StorageBuffer(_wgslsmith_clamp_u32(~var_1.d, _wgslsmith_add_u32(~5767u, 0u << (u_input.a.x % 32u)), _wgslsmith_mod_u32(abs(13535u), var_1.d)) << (select(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.b, 4294967295u), vec2<u32>(var_1.d, var_2.a)), ~4294967295u), 0u, arg_1.x) % 32u), abs(~arg_3.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-2296f, -904f), -1435f, var_2.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, -1000f, arg_0.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 897f, 1436f) - vec3<f32>(var_2.b, -1000f, arg_0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-231f, var_1.a, 777f) - vec3<f32>(-271f, var_2.b, -875f)) - vec3<f32>(var_2.b, arg_0.x, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 5>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1()), 1262f)), vec2<f32>(598f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-556f, 280f))))), vec4<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), false, true, any(vec2<bool>(false, true))), -vec4<i32>(u_input.b, u_input.b, _wgslsmith_div_i32(-u_input.b, _wgslsmith_clamp_i32(-23611i, u_input.b, u_input.b)), _wgslsmith_add_i32(9078i, u_input.b)), Struct_3(select(vec4<u32>(~global0[_wgslsmith_index_u32(u_input.a.x, 5u)], min(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 1u), 0u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 1u)), select(~vec4<u32>(16898u, 23132u, 23569u, 45884u), firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 1u)), true), any(vec3<bool>(false, true, false))), true));
}

