struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(27706u, 28163u, 1u)), Struct_1(vec3<u32>(4294967295u, 12745u, 1u)), Struct_1(vec3<u32>(968u, 1u, 4294967295u)), Struct_1(vec3<u32>(1u, 26300u, 4294967295u)), Struct_1(vec3<u32>(0u, 1u, 1u)), Struct_1(vec3<u32>(1u, 0u, 1u)), Struct_1(vec3<u32>(1u, 44492u, 36412u)), Struct_1(vec3<u32>(1u, 22741u, 1u)), Struct_1(vec3<u32>(67836u, 89915u, 4294967295u)), Struct_1(vec3<u32>(7568u, 39461u, 4294967295u)), Struct_1(vec3<u32>(30260u, 4294967295u, 42095u)), Struct_1(vec3<u32>(1408u, 29283u, 36052u)));

var<private> global2: array<u32, 9> = array<u32, 9>(98301u, 45485u, 4294967295u, 4294967295u, 0u, 44605u, 46696u, 43247u, 1u);

var<private> global3: array<i32, 8> = array<i32, 8>(1i, 11791i, 19211i, -1i, i32(-2147483648), 32449i, 1i, -32018i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    var var_0 = -(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, 4937i)), abs(vec2<i32>(u_input.b, 12146i))) | ~(~vec2<i32>(0i, -42964i))) ^ vec2<i32>(_wgslsmith_div_i32(u_input.b, 27749i), global3[_wgslsmith_index_u32(~(1u ^ firstTrailingBit(41528u)), 8u)]);
    var var_1 = ~global2[_wgslsmith_index_u32(u_input.a, 9u)] >= ~(~u_input.c);
    let var_2 = Struct_1(~(~(~(~vec3<u32>(4294967295u, 0u, 16351u)))));
    var_1 = any(select(!vec3<bool>(any(vec3<bool>(arg_2, false, true)), true, arg_1.x || arg_1.x), vec3<bool>(arg_0, true, all(vec3<bool>(true, arg_1.x, arg_1.x))), true));
    var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 5263i, 1i), vec3<i32>(-2147483647i, -1i, u_input.b)))), vec3<i32>(~(~2147483647i), 0i, countOneBits(0i & u_input.b))), -1i >> (var_2.a.x % 32u));
    return u_input.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: f32) -> f32 {
    global3 = array<i32, 8>();
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2, 1304f), 257f));
    var var_0 = firstLeadingBit(~reverseBits(firstLeadingBit(arg_0.zww)) & arg_0.zyx);
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~func_3(true, vec2<bool>(true, true), true, select(vec3<bool>(true, true, arg_1), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, arg_1, true), arg_1), arg_2 == -720f)), 9u)], 12u)], select(select(vec2<bool>(any(vec2<bool>(true, true)), arg_1), !vec2<bool>(arg_1, true), !vec2<bool>(arg_1, false)), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c | global2[_wgslsmith_index_u32(13385u, 9u)], 9u)] > (4294967295u & global2[_wgslsmith_index_u32(u_input.a, 9u)]), false), arg_1), ~arg_0.x, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<u32>(44576u, global2[_wgslsmith_index_u32(24679u, 9u)], 4294967295u)), select(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a, 1u), vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(u_input.c, 9u)], 0u), false)), 0u, 4294967295u), 12u)], select(vec3<bool>(all(!vec3<bool>(arg_1, true, true)), false, false), vec3<bool>(all(vec3<bool>(arg_1, arg_1, arg_1)), arg_1, !arg_1 | (var_0.x < global3[_wgslsmith_index_u32(u_input.a, 8u)])), var_0.x > 0i));
    var var_2 = var_1.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1195f * arg_2) - arg_2);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_3(true | ((-32244i ^ -u_input.b) == firstTrailingBit(-2147483647i)), vec2<bool>(!select(true, true, false) || true, true), !(abs(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(51938u, 8u)], -26336i)) < (u_input.b & 2147483647i)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, any(vec4<bool>(true, true, true, true)))), vec3<bool>(true, true, true), -870f != arg_0));
    global2 = array<u32, 9>();
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-768f, 157f, 460f, arg_0) - vec4<f32>(arg_0, arg_0, arg_0, 185f)), vec4<f32>(arg_0, arg_0, 1980f, arg_0), all(vec3<bool>(false, true, false)))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-604f)), -717f, _wgslsmith_f_op_f32(-arg_0), 698f)), vec4<f32>(153f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-160f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + -183f)), true)));
    let var_3 = false;
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = max(countOneBits(min(vec4<i32>(u_input.b, -u_input.b, 1i, 1i), -vec4<i32>(u_input.b, 0i, 1i, u_input.b) | ~vec4<i32>(u_input.b, -1i, -12443i, global3[_wgslsmith_index_u32(3358u, 8u)]))), _wgslsmith_mult_vec4_i32(-min(vec4<i32>(1i, u_input.b, 30304i, global3[_wgslsmith_index_u32(1u, 8u)]), ~vec4<i32>(25400i, 14517i, 8382i, -1i)), -_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, u_input.b, -2147483647i, 47108i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.b, global3[_wgslsmith_index_u32(17719u, 8u)], global3[_wgslsmith_index_u32(u_input.a, 8u)]), vec4<i32>(143i, u_input.b, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47194u, 9u)], 8u)], -54238i)))));
    global2 = array<u32, 9>();
    global1 = array<Struct_1, 12>();
    global0 = 173f;
    return func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(2147483647i, 58684i, var_0.x, global3[_wgslsmith_index_u32(4294967295u, 8u)]), true, -977f)), _wgslsmith_f_op_f32(-1055f * -304f)))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(16026u, max(22070u, 1u) & _wgslsmith_dot_vec2_u32(vec2<u32>(17069u, global2[_wgslsmith_index_u32(4294967295u, 9u)]) & vec2<u32>(u_input.c, 1u), vec2<u32>(19540u, u_input.c))), 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec2<bool>(true, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(10515i, ~2147483647i >> (_wgslsmith_add_u32(u_input.c, 60322u) % 32u)), vec2<i32>(~global3[_wgslsmith_index_u32(~20851u, 8u)], 2147483647i)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, reverseBits(global2[_wgslsmith_index_u32(~(~66299u), 9u)])), 12u)], !vec3<bool>(true, false, true & all(vec2<bool>(false, true))));
    var var_1 = vec2<i32>(abs(-var_0.c), var_0.c);
    global1 = array<Struct_1, 12>();
    let var_2 = 1i;
    var var_3 = Struct_2(func_4(695f, Struct_1(var_0.a.a ^ var_0.a.a)), var_0.e.xx, abs(firstTrailingBit(0i)), Struct_1(vec3<u32>(u_input.a, 1u, countOneBits(u_input.a >> (var_0.d.a.x % 32u)))), !vec3<bool>(all(!vec3<bool>(var_0.e.x, false, var_0.e.x)), ~var_2 != -u_input.b, var_0.e.x));
    global0 = 628f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_4(-1333f, Struct_1(var_0.a.a)).a.x), countOneBits(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.a.a.x, global2[_wgslsmith_index_u32(4294967295u, 9u)], u_input.c), vec4<u32>(0u, 17654u, 47415u, u_input.c) & vec4<u32>(774u, 1u, var_3.a.a.x, 71605u))), 277f, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1008f, _wgslsmith_f_op_f32(-384f + _wgslsmith_f_op_f32(-317f + 613f))))));
}

