struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 0u));

var<private> global1: vec3<f32>;

var<private> global2: bool = true;

var<private> global3: array<i32, 1>;

var<private> global4: array<vec4<u32>, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_5(false, true, max(select(~vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], arg_0), select(vec2<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 1u)], arg_1), vec2<i32>(-47424i, -1i), vec2<bool>(false, false)) >> (~vec2<u32>(u_input.c.x, 0u) % vec2<u32>(32u)), any(vec3<bool>(true, true, true))), _wgslsmith_clamp_vec2_i32(max(countOneBits(vec2<i32>(3979i, u_input.b)), ~vec2<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 1u)], 2147483647i)), vec2<i32>(abs(u_input.b), ~22013i), ~vec2<i32>(2147483647i, arg_0) & ~vec2<i32>(u_input.b, global3[_wgslsmith_index_u32(19783u, 1u)]))));
    var var_1 = Struct_4(var_0.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1280f - -451f), _wgslsmith_f_op_f32(-global1.x)), 1241f, -1368f, global1.x))));
    global0 = Struct_1(~(global0.a ^ firstTrailingBit(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(90683u, global0.a.x)))));
    global4 = array<vec4<u32>, 9>();
    let var_2 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(u_input.c.x, 9u)], vec4<u32>(73231u, 83451u, u_input.a.x, global0.a.x)), countOneBits(18261u), ~36058u), 1u)), firstTrailingBit(global0.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(abs(~83170u), ~firstLeadingBit(664u), u_input.a.x), min(vec3<u32>(u_input.a.x, global0.a.x, 0u) >> (countOneBits(vec3<u32>(0u, u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(global0.a.x, u_input.a.x, u_input.c.x), u_input.c), u_input.c << (u_input.c % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(3652u, global0.a.x, 38520u))))));
    return !(!vec4<bool>(var_0.a, var_0.a, all(select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a))), min(arg_1, -58192i) != _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 1u)], 0i, 31088i), vec3<i32>(arg_1, arg_0, 1i))));
}

fn func_2() -> Struct_4 {
    return Struct_4(!any(func_3(36913i, ~5008i)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1583f, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1414f, 1134f))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-857f - global1.x))))));
}

fn func_1() -> vec4<f32> {
    let var_0 = func_2();
    var var_1 = global0.a.x;
    let var_2 = ~(~min(-vec4<i32>(global3[_wgslsmith_index_u32(53853u, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)], -2147483647i, -1i), abs(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 0i, global3[_wgslsmith_index_u32(0u, 1u)], u_input.b)))) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(~(vec2<i32>(1i, global3[_wgslsmith_index_u32(global0.a.x, 1u)]) | vec2<i32>(global3[_wgslsmith_index_u32(1u, 1u)], 1i)), ~vec2<i32>(u_input.b, global3[_wgslsmith_index_u32(33214u, 1u)]) | vec2<i32>(-2147483647i, 0i)), -reverseBits(_wgslsmith_clamp_i32(u_input.b, 23992i, 2441i)), 15994i, ~62364i);
    let var_3 = vec3<i32>(-1i) * -vec3<i32>(1i, firstTrailingBit(23960i), ~global3[_wgslsmith_index_u32(~global0.a.x, 1u)]);
    let var_4 = true;
    return var_0.b;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = arg_0.a;
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(~1u, ~1u, global0.a.x ^ (select(arg_2, 45063u, true) << (arg_2 % 32u))), ~reverseBits(~vec3<u32>(arg_2, u_input.a.x, 50069u)));
    var var_2 = Struct_5(any(select(select(vec3<bool>(true, true, true), func_3(34322i, -1i).xxw, select(vec3<bool>(false, false, true), vec3<bool>(false, false, arg_0.a), false)), vec3<bool>(true || arg_1.a, arg_0.a, true), all(vec2<bool>(true, false)))), ~global0.a.x < _wgslsmith_add_u32(abs(var_1.x), 4294967295u), vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(-1i, u_input.b)), firstTrailingBit(~vec2<i32>(global3[_wgslsmith_index_u32(1u, 1u)], u_input.b)))));
    var_2 = Struct_5(!arg_0.a, true && arg_1.a, vec2<i32>(max(~abs(17680i), 1i), _wgslsmith_div_i32(var_2.c.x, -12357i << (1u % 32u))));
    var var_3 = u_input.c.x;
    return Struct_2(Struct_1(max(vec2<u32>(0u, ~0u), vec2<u32>(1u, ~var_1.x))), u_input.c.x, ~(~((vec3<u32>(u_input.c.x, 133876u, 109047u) & u_input.c) | u_input.c)));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_5 {
    global2 = true;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1240f, -437f, 743f) + vec3<f32>(global1.x, global1.x, 420f))), vec3<f32>(_wgslsmith_f_op_f32(min(403f, -238f)), func_2().b.x, _wgslsmith_f_op_f32(min(global1.x, -1017f))))) * vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1208f + global1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(min(global1.x, global1.x)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(global1.x - 439f))) - global1.x));
    let var_0 = global1.x;
    let var_1 = vec2<i32>(0i, -_wgslsmith_add_i32(-33335i, max(-2147483647i, ~22521i)));
    return Struct_5(!all(vec4<bool>(true, true, true, true)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), ~(-15057i) == u_input.b)), var_1 & vec2<i32>(var_1.x, global3[_wgslsmith_index_u32(func_4(Struct_4(true, vec4<f32>(-186f, global1.x, -1298f, global1.x)), func_2(), ~u_input.c.x, countOneBits(-2147483647i)).a.a.x, 1u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(Struct_4(select(true, true, true), _wgslsmith_f_op_vec4_f32(func_1())), func_2(), _wgslsmith_sub_u32(~abs(u_input.c.x), 26402u), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(max(~0u, countOneBits(69531u)), 1u)], abs(firstLeadingBit(-2147483647i)))), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(26070i, global3[_wgslsmith_index_u32(global0.a.x, 1u)], u_input.b, -1i), vec4<i32>(u_input.b, 1i, -51434i, u_input.b) & vec4<i32>(19626i, -1i, 4589i, global3[_wgslsmith_index_u32(u_input.a.x, 1u)])), -93224i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(~(~u_input.b), var_0.c.x), -10974i), select(~global0.a.x, abs(_wgslsmith_dot_vec2_u32(global0.a, abs(u_input.c.xy))), (var_0.a && true) || (_wgslsmith_f_op_f32(-global1.x) <= -944f)), global1.x);
}

