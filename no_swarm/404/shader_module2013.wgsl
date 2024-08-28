struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: array<bool, 2>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(48975u << (~_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x) % 32u), max(4660u, ~firstTrailingBit(u_input.a.x))), 4u)];
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec4<bool>(var_0.a.a, !(var_0.a.d <= -941f) != all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], var_0.a.a, var_0.a.a, var_0.a.a)), all(vec4<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], var_0.a.a, true)), true, var_0.a.a, select(true, var_0.a.a, global1[_wgslsmith_index_u32(3328u, 2u)]))), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(476f, -480f, 676f) - vec3<f32>(812f, var_0.a.d, -161f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-969f, var_0.a.d, var_0.a.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d, var_0.a.d, -1115f)) - vec3<f32>(2595f, var_0.a.d, 532f)), true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.d, var_0.a.d, 388f) - vec3<f32>(var_0.a.d, 1084f, 1017f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-228f, var_0.a.d, 500f)))), vec3<f32>(1606f, var_0.a.d, _wgslsmith_f_op_f32(var_0.a.d * 1132f))))), var_0.a, Struct_1(any(vec3<bool>(false, any(vec3<bool>(false, true, false)), 91956u > u_input.a.x)), firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, var_0.a.c.x), _wgslsmith_dot_vec3_i32(var_0.a.c.xxy, u_input.d.zwy), var_0.a.b.x << (22886u % 32u), _wgslsmith_clamp_i32(u_input.d.x, -2147483647i, var_0.a.c.x))), u_input.d, _wgslsmith_f_op_f32(-var_0.a.d)));
    global1 = array<bool, 2>();
    global0 = array<Struct_3, 4>();
    var_0 = Struct_3(Struct_1(var_1.d.a, _wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(var_1.d.c.x, 0i, 56427i, -111217i), var_0.a.c), ~(vec4<i32>(var_1.e.b.x, 2147483647i, var_1.d.b.x, 58209i) << (vec4<u32>(u_input.a.x, 23076u, 1u, u_input.a.x) % vec4<u32>(32u)))), ~vec4<i32>(var_0.a.c.x, 2147483647i, _wgslsmith_clamp_i32(-32270i, 0i, -26559i), var_0.a.c.x), 511f));
    return vec4<i32>(var_1.d.b.x, _wgslsmith_add_i32(var_1.d.c.x, -_wgslsmith_mult_i32(var_0.a.b.x, var_1.d.b.x) << (1u % 32u)), reverseBits(countOneBits(_wgslsmith_add_i32(firstTrailingBit(u_input.c), ~var_1.d.b.x))), abs(min(select(var_1.e.b.x, reverseBits(2147483647i), true), -1i)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(42255u, u_input.a.x), 2u)], _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b.x, 0i, -71877i, 0i), _wgslsmith_div_vec4_i32(func_3(), ~u_input.d), _wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(6676i, -1i, u_input.c, 2147483647i))), u_input.d, -666f));
    global1 = array<bool, 2>();
    let var_1 = var_0.a.d;
    let var_2 = vec3<u32>(min(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 37393u, 3426u, u_input.a.x) >> (vec4<u32>(6552u, 20045u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(1u, u_input.a.x, 23080u, u_input.a.x))), 1u, u_input.a.x);
    var var_3 = var_1;
    return Struct_1(var_0.a.a, func_3(), u_input.d, var_1);
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = func_2(vec4<f32>(418f, 239f, -2226f, _wgslsmith_f_op_f32(abs(1400f))));
    global1 = array<bool, 2>();
    var var_1 = Struct_2(select(arg_0.a, all(!(!vec2<bool>(true, var_0.a))), true), select(!(!select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 2u)], true), vec4<bool>(global1[_wgslsmith_index_u32(24392u, 2u)], true, var_0.a, arg_0.a), global1[_wgslsmith_index_u32(u_input.a.x, 2u)])), vec4<bool>(true | all(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], false)), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 14248u), 2u)], false, (-13443i >> (1u % 32u)) > _wgslsmith_mod_i32(-1i, arg_0.c.x)), !arg_0.a), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1448f, arg_0.d, -505f), vec3<f32>(530f, arg_0.d, var_0.d))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d, -1000f, 1257f))))))))), func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1188f, -387f, func_2(vec4<f32>(var_0.d, -1296f, -1583f, arg_0.d)).d, _wgslsmith_f_op_f32(-arg_0.d))))), Struct_1(!(-2147483647i != (4005i | u_input.b.x)), vec4<i32>(-1i, abs(u_input.d.x), var_0.c.x, u_input.c), -(~(~vec4<i32>(u_input.d.x, 34164i, arg_0.b.x, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)))));
    var var_2 = -func_3().x;
    global0 = array<Struct_3, 4>();
    return select(var_1.b.yyz, select(select(var_1.b.xyx, vec3<bool>(any(vec2<bool>(var_0.a, true)), true, all(var_1.b.wxy)), var_1.b.yyw), !select(var_1.b.xzy, !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], var_1.b.x, true), func_2(vec4<f32>(arg_0.d, var_1.c.x, arg_0.d, arg_0.d)).a), global1[_wgslsmith_index_u32(4294967295u, 2u)]), select(vec3<bool>(true, var_0.a, var_0.a || var_1.d.a), vec3<bool>(any(var_1.b.zwz), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], var_1.a), !arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(!global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)], all(func_1(Struct_1(false, u_input.d, vec4<i32>(u_input.d.x, -2147483647i, u_input.c, -2147483647i), -2223f))), !global1[_wgslsmith_index_u32(~100539u, 2u)]), !(!vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 2u)], func_1(Struct_1(false, u_input.d, vec4<i32>(-71178i, 25494i, u_input.c, 51365i), 2242f)).x, global1[_wgslsmith_index_u32(~0u, 2u)], false)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2278f, -734f, 420f, -872f), vec4<f32>(-621f, 619f, -1071f, 1737f))))).a);
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(354f, 555f, 847f, 2292f))))))));
    let var_2 = true;
    let var_3 = var_1.c.x;
    let var_4 = true;
    var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.a.x), min(u_input.a.x, ~0u)) & (min(0u, u_input.a.x) ^ _wgslsmith_mod_u32(26903u, ~6249u)), 4u)];
    let var_6 = ~u_input.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32((abs(vec3<u32>(4294967295u, var_6.x, u_input.a.x)) << (reverseBits(vec3<u32>(var_6.x, 67288u, 54475u)) % vec3<u32>(32u))) >> (vec3<u32>(4352u, ~var_6.x, _wgslsmith_div_u32(u_input.a.x, var_6.x)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(4294967295u, 90526u, u_input.a.x)), select(u_input.a | vec3<u32>(u_input.a.x, 30972u, u_input.a.x), max(vec3<u32>(23121u, 10691u, 0u), vec3<u32>(var_6.x, 12999u, 4294967295u)), var_0.ywy))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, var_6), ~(~(~1u))));
}

