struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-7564i, vec2<u32>(1u, 17025u), vec2<u32>(496u, 81912u));

var<private> global1: array<f32, 4>;

var<private> global2: Struct_3 = Struct_3(16489i, vec2<u32>(238u, 0u), vec2<u32>(48216u, 82930u));

var<private> global3: array<Struct_1, 8>;

var<private> global4: i32 = 17156i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1() -> Struct_2 {
    return Struct_2(max(~(1u ^ _wgslsmith_dot_vec2_u32(global0.c, global0.b)), 1u));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<f32>) -> vec2<i32> {
    let var_0 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(any(vec3<bool>(false, true, true)) | true, all(vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), abs(global0.a) < _wgslsmith_clamp_i32(1i, ~global2.a, _wgslsmith_mod_i32(-71849i, 1i))));
    let var_1 = vec4<u32>(arg_1, firstTrailingBit(_wgslsmith_clamp_u32(global2.c.x, func_1().a, ~global0.c.x) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.c.x, 35154u), vec3<u32>(arg_1, arg_1, u_input.d.x))), arg_0.x, arg_1);
    let var_2 = Struct_2(~global0.c.x);
    var var_3 = true;
    global3 = array<Struct_1, 8>();
    return countOneBits(-_wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(global0.a), global0.a), vec2<i32>(0i, global2.a) << ((global2.c << (u_input.a.xz % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    let var_0 = u_input.a.yz;
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(select(-1i, -2147483647i, true), arg_2), func_3(u_input.c, ~global0.b.x, vec3<f32>(global1[_wgslsmith_index_u32(0u, 4u)], 1394f, global1[_wgslsmith_index_u32(global0.b.x, 4u)]))) | -((vec2<i32>(global0.a, global0.a) | vec2<i32>(global2.a, 0i)) >> (global0.c % vec2<u32>(32u))), -38325i, global1[_wgslsmith_index_u32(u_input.d.x, 4u)]);
    var var_2 = Struct_3(1i, vec2<u32>(~63095u, func_1().a), arg_0);
    var var_3 = Struct_3(_wgslsmith_dot_vec3_i32(max(_wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_2, var_1.a.x, 2147483647i), min(vec3<i32>(-2147483647i, var_2.a, var_1.b), vec3<i32>(1i, var_2.a, -6113i)), vec3<i32>(0i, global0.a, 7560i) >> (vec3<u32>(1u, 1u, 12499u) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(global2.a, arg_2, 2147483647i), vec3<i32>(var_1.a.x, 5481i, arg_2))), reverseBits(_wgslsmith_div_vec3_i32(-vec3<i32>(var_1.a.x, 1i, -1i), ~vec3<i32>(-23670i, 0i, global2.a)))), vec2<u32>(~0u, var_2.b.x << (select(0u, 1u, all(vec2<bool>(false, true))) % 32u)), min(vec2<u32>(u_input.d.x, ~_wgslsmith_sub_u32(global0.b.x, global2.c.x)), ((arg_0 << (var_2.c % vec2<u32>(32u))) | var_0) ^ _wgslsmith_add_vec2_u32(abs(vec2<u32>(arg_1.b.x, 15434u)), _wgslsmith_clamp_vec2_u32(global0.b, vec2<u32>(var_0.x, arg_1.c.x), global0.b))));
    global2 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    return func_2(vec2<u32>(arg_1.a, 1u), Struct_3(_wgslsmith_mod_i32(abs(30295i), -(~6695i)), vec2<u32>(17868u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_2.x, 4294967295u), firstLeadingBit(60693u))), select(vec2<u32>(arg_1.a, arg_1.a), ~(~u_input.a.xx), false)), -arg_3.a);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> vec2<i32> {
    global4 = 21399i;
    var var_0 = global1[_wgslsmith_index_u32(~arg_2, 4u)];
    var var_1 = any(vec4<bool>(select(!all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 4u)] - global1[_wgslsmith_index_u32(96467u, 4u)]) >= 1035f, true), true, true, !(all(vec2<bool>(false, false)) | true)));
    global4 = ~global2.a;
    global4 = arg_1;
    return vec2<i32>(53500i, abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 0i, 1i), vec3<i32>(arg_0.a, arg_1, global2.a)), global2.a) & ~(-7631i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((abs(global0.a >> (0u % 32u)) | -20261i) <= 1i) || false;
    var var_1 = func_5(func_4(Struct_2(1u), func_1(), u_input.c, func_2(~vec2<u32>(4294967295u, 33484u) << (~vec2<u32>(9528u, u_input.d.x) % vec2<u32>(32u)), Struct_3(-1i, global2.c, ~vec2<u32>(global0.b.x, 1u)), global2.a)), ~global0.a, ~global0.b.x);
    global0 = func_4(Struct_2(1486u), func_1(), ~select(select(u_input.c, vec4<u32>(global2.b.x, 0u, global0.b.x, 1u), vec4<bool>(true, true, false, var_0)), ~select(u_input.c, u_input.c, false), select(!vec4<bool>(var_0, false, true, var_0), !vec4<bool>(true, var_0, var_0, var_0), any(vec3<bool>(true, false, var_0)))), Struct_3(1i, vec2<u32>(u_input.c.x, 0u), abs(vec2<u32>(13229u, u_input.a.x) | vec2<u32>(global2.b.x, 42512u))));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(countOneBits(~4294967295u), 41094u), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(~98009u, _wgslsmith_mod_u32(22705u, u_input.a.x), global2.c.x), ~u_input.b), select(1u, abs(abs(global0.c.x)), any(!vec3<bool>(var_0, var_0, false))) >> (_wgslsmith_add_u32(~u_input.c.x, u_input.a.x) % 32u)), 8u)];
    let var_3 = global0.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-120f, -1116f, 756f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(590f, var_2.c, 1815f), vec3<f32>(1533f, 887f, global1[_wgslsmith_index_u32(global2.c.x, 4u)]))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1201f, global1[_wgslsmith_index_u32(global0.c.x, 4u)], -2357f), vec3<f32>(782f, 1644f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, var_2.c, global1[_wgslsmith_index_u32(4294967295u, 4u)])))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.c, _wgslsmith_f_op_f32(abs(1098f)), -775f))))));
    global0 = func_4(func_1(), func_1(), ~u_input.c, Struct_3(var_1.x, global0.c | max(u_input.d | vec2<u32>(global2.b.x, 4294967295u), _wgslsmith_add_vec2_u32(global0.c, vec2<u32>(4294967295u, 0u))), global2.c));
    global2 = Struct_3(global0.a, ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global2.b.x, global2.b.x), 55536u), _wgslsmith_mult_vec2_u32(global0.c, ~global2.b)), ~vec2<u32>(112979u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.x, u_input.a.x, 0u), u_input.c.xzw) >> (_wgslsmith_sub_u32(4294967295u, 15703u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i) | countOneBits(vec3<i32>(var_2.b, -28222i, -19066i)), ~(vec3<i32>(21971i, 51095i, global2.a) << (vec3<u32>(global0.b.x, 40209u, global2.b.x) % vec3<u32>(32u))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -3060f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.c, false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(sign(-1660f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.x, 1000f, 903f), var_4))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4) - vec3<f32>(var_2.c, global1[_wgslsmith_index_u32(1u, 4u)], -1683f))), all(select(select(vec2<bool>(false, true), vec2<bool>(var_0, false), vec2<bool>(true, var_0)), select(vec2<bool>(var_0, false), vec2<bool>(false, false), vec2<bool>(var_0, var_0)), vec2<bool>(true, true))))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d.x, 19408u, global2.c.x, u_input.c.x) & vec4<u32>(global2.c.x >> (4294967295u % 32u), 11166u, global2.b.x, abs(global2.b.x)), vec4<u32>(0u, 41393u, ~65995u ^ ~global2.c.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_clamp_u32(global2.b.x, global0.c.x, u_input.b)))));
}

