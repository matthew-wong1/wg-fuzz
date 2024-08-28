struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: i32;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(2147483647i, -11140i, vec2<bool>(true, false), vec4<f32>(-312f, -1000f, 1209f, -233f)));

var<private> global2: array<Struct_1, 21>;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<u32>) -> i32 {
    let var_0 = Struct_1(-global3.b, -2147483647i, !vec2<bool>(arg_1.c.x, all(vec4<bool>(true, arg_1.c.x, arg_0.c.x, global3.c.x)) || arg_1.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1489f, -152f, arg_0.d.x, arg_0.d.x))), global3.d)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, -174f, arg_1.d.x, -201f) * vec4<f32>(arg_1.d.x, global3.d.x, arg_1.d.x, -1374f))))));
    return -_wgslsmith_div_i32(var_0.a, ~7732i);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    return vec2<bool>(any(!vec4<bool>(37882u < u_input.b, global3.d.x != arg_0.d.x, any(vec4<bool>(true, true, false, false)), true)), any(select(select(!vec4<bool>(false, true, arg_0.c.x, false), vec4<bool>(arg_1.c.x, arg_0.c.x, true, false), !vec4<bool>(true, true, false, arg_1.c.x)), vec4<bool>(true, false, global3.c.x & global3.c.x, arg_0.c.x), 1u < u_input.a)));
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, -582i, _wgslsmith_sub_i32(-arg_0.b, arg_0.b & arg_0.b)), _wgslsmith_add_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 19510i, arg_0.b), vec3<i32>(arg_0.a, arg_0.a, global3.a)), -vec3<i32>(arg_0.b, 30497i, global3.b)), vec3<i32>(~arg_0.b, 10044i << (u_input.a % 32u), 17970i))), 0i, !(!func_3(Struct_1(0i, -27078i, vec2<bool>(global3.c.x, global3.c.x), global3.d), global1[_wgslsmith_index_u32(u_input.b << (87540u % 32u), 1u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1869f, global3.d.x, -1036f, global3.d.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(880f, global3.d.x, arg_0.d.x, -779f) + vec4<f32>(118f, 627f, global3.d.x, arg_0.d.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.d * vec4<f32>(arg_0.d.x, global3.d.x, global3.d.x, global3.d.x))))));
    global2 = array<Struct_1, 21>();
    let var_1 = global1[_wgslsmith_index_u32(~u_input.b, 1u)];
    global0 = -_wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.b, -2147483647i), global3.a);
    global1 = array<Struct_1, 1>();
    return vec4<f32>(_wgslsmith_f_op_f32(min(global3.d.x, -512f)), _wgslsmith_f_op_f32(-var_0.d.x), -1000f, -1154f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global3 = Struct_1(firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(-34816i, 15638i, arg_1.a), vec3<i32>(0i, arg_1.b, global3.b)) << (u_input.a % 32u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, arg_1.b) & _wgslsmith_div_vec2_i32(vec2<i32>(32741i, global3.a), vec2<i32>(-48361i, arg_1.a)), min(-vec2<i32>(-24023i, arg_0.a), -vec2<i32>(arg_1.b, global3.a))), vec2<bool>(false, select(arg_1.c.x, arg_1.c.x, global3.c.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.d.x, 1000f, arg_0.d.x, 1635f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, global3.d.x, 1892f, -2565f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, arg_1.d.x, 647f, arg_0.d.x) + global3.d) + _wgslsmith_div_vec4_f32(arg_0.d, global3.d)))), global3.d)));
    var var_0 = global2[_wgslsmith_index_u32(19597u, 21u)];
    let var_1 = Struct_1(select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -41084i, 39217i, var_0.b), ~vec4<i32>(24759i, arg_0.a, -33932i, global3.b)), _wgslsmith_add_i32(~arg_0.a, global3.b << (u_input.b % 32u)), max(_wgslsmith_mult_i32(-12007i, var_0.b), -2147483647i)), _wgslsmith_sub_i32(2147483647i, var_0.b), !arg_1.c.x), reverseBits(select(2147483647i, global3.b, true)), vec2<bool>(!any(!arg_1.c), all(select(!vec4<bool>(true, var_0.c.x, arg_1.c.x, true), select(vec4<bool>(true, true, true, var_0.c.x), vec4<bool>(arg_1.c.x, true, false, false), true), select(vec4<bool>(true, true, arg_1.c.x, true), vec4<bool>(global3.c.x, arg_1.c.x, var_0.c.x, global3.c.x), vec4<bool>(false, false, arg_1.c.x, true))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -910f) + _wgslsmith_f_op_f32(abs(arg_1.d.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1157f, arg_1.d.x)), 611f))), _wgslsmith_f_op_f32(-1966f * _wgslsmith_f_op_f32(round(-1342f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-184f)))));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>((var_0.b ^ global3.a) ^ _wgslsmith_clamp_i32(max(var_0.b, global3.b), -1i, reverseBits(var_0.a)), 1i, reverseBits(_wgslsmith_sub_i32(0i, arg_0.a) & global3.b)), ~abs(max(vec3<i32>(-17786i, arg_0.b, var_0.b), vec3<i32>(var_1.b, -1i, var_1.a))));
    let var_3 = select(all(vec4<bool>(!(!arg_0.c.x), !(var_0.d.x <= -1000f), !any(vec2<bool>(false, var_0.c.x)), var_1.c.x)), arg_1.c.x, false);
    return countOneBits(~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, 46546u), vec4<u32>(u_input.b, u_input.a, 0u, u_input.a)) | vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32((vec4<u32>(4294967295u, abs(47800u), _wgslsmith_div_u32(53841u, u_input.a), u_input.b) & ~countOneBits(vec4<u32>(21431u, u_input.b, u_input.b, 50466u))) | reverseBits(vec4<u32>(~u_input.a, u_input.a, 61091u | u_input.b, 0u)), func_4(Struct_1(func_1(Struct_1(-12449i, -22155i, global3.c, global3.d), global2[_wgslsmith_index_u32(51592u, 21u)], vec3<u32>(66122u, 61495u, u_input.a), vec4<u32>(1u, 1u, 0u, u_input.b)), -1i, !vec2<bool>(global3.c.x, global3.c.x), _wgslsmith_f_op_vec4_f32(func_2(global2[_wgslsmith_index_u32(u_input.b, 21u)]))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a), 1u)]) | vec4<u32>(select(u_input.a, _wgslsmith_div_u32(u_input.b, 0u), global3.c.x), u_input.a, _wgslsmith_clamp_u32(select(65122u, 4294967295u, false), firstTrailingBit(14649u), abs(4294967295u)), ~u_input.b));
    global2 = array<Struct_1, 21>();
    var var_1 = abs(-(~vec2<i32>(_wgslsmith_add_i32(global3.a, global3.a), -global3.a)));
    var_1 = min(~_wgslsmith_mult_vec2_i32(vec2<i32>(-17679i, i32(-1i) * -1i), ~vec2<i32>(-20831i, -1i)), vec2<i32>(abs(global3.a), _wgslsmith_add_i32(1i, -2147483647i)) & _wgslsmith_div_vec2_i32((vec2<i32>(-65565i, 20142i) >> (vec2<u32>(u_input.b, var_0) % vec2<u32>(32u))) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(global3.b, var_1.x), vec2<i32>(global3.a, var_1.x))));
    var var_2 = countOneBits(reverseBits(vec4<i32>(-2147483647i, -24530i, _wgslsmith_dot_vec3_i32(vec3<i32>(-30744i, -1i, global3.a), select(vec3<i32>(var_1.x, 2147483647i, -68821i), vec3<i32>(var_1.x, 9154i, global3.a), vec3<bool>(global3.c.x, false, true))), global3.b)));
    var var_3 = Struct_1(35186i >> ((func_4(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(37634u, u_input.a, var_0), 1u)], global1[_wgslsmith_index_u32(func_4(global1[_wgslsmith_index_u32(0u, 1u)], Struct_1(var_2.x, 1i, vec2<bool>(global3.c.x, global3.c.x), vec4<f32>(827f, 1000f, global3.d.x, global3.d.x))).x, 1u)]).x >> (~(~4294967295u) % 32u)) % 32u), global3.b << (min(24065u, ~firstLeadingBit(var_0)) % 32u), vec2<bool>(global3.c.x, true != (firstLeadingBit(1u) > _wgslsmith_clamp_u32(var_0, var_0, 0u))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-403f, _wgslsmith_f_op_f32(-575f - 1310f), _wgslsmith_f_op_f32(round(global3.d.x)), _wgslsmith_f_op_f32(global3.d.x - global3.d.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(283f);
}

