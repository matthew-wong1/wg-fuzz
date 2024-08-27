struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 4294967295u;

var<private> global2: Struct_1;

var<private> global3: array<f32, 20>;

var<private> global4: u32 = 1u;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global3 = array<f32, 20>();
    let var_0 = Struct_5(_wgslsmith_mod_vec3_u32(u_input.d.wxw, _wgslsmith_mod_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 0u, 1u), u_input.d.yyz)), vec3<u32>(0u, global2.a, firstLeadingBit(0u)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(3174u, u_input.d.x)), 20u)] * _wgslsmith_div_f32(598f, global3[_wgslsmith_index_u32(u_input.d.x, 20u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(52524u, 20u)], 280f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1714f - global3[_wgslsmith_index_u32(90495u, 20u)]))))), Struct_1(reverseBits(41425u)), Struct_1(15979u), 535f);
    var var_1 = 4294967295u;
    var var_2 = vec4<bool>(true || all(vec2<bool>(true, true)), !(-641f >= _wgslsmith_f_op_f32(-var_0.b.x)), select(true, false || (_wgslsmith_mult_u32(37645u, global2.a) == ~88198u), any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), (all(vec2<bool>(true, false)) && all(vec3<bool>(true, true, true))) & (-330f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(global2.a, 20u)]))))));
    global2 = Struct_1(~0u);
    return vec2<u32>(0u, global2.a);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = global2.a;
    global2 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(0u, 36756u)), ~u_input.d.x));
    global4 = ~global2.a;
    global2 = Struct_1(~_wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_mod_vec4_u32(~vec4<u32>(20330u, u_input.a, global2.a, 4294967295u), firstTrailingBit(vec4<u32>(61766u, 35252u, 36144u, 90048u)))));
    let var_1 = (_wgslsmith_add_vec2_i32(select(vec2<i32>(-2147483647i, u_input.c) ^ arg_2, vec2<i32>(-22983i, 28972i), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), -vec2<i32>(-8411i, arg_2.x)) >> (func_3(max(~u_input.a, ~4294967295u)) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(u_input.d.wx, u_input.d.xx) % vec2<u32>(32u));
    return Struct_2(arg_1, _wgslsmith_div_u32(func_3(_wgslsmith_mult_u32(4294967295u, 45918u & u_input.b.x)).x, _wgslsmith_mod_u32(0u >> (global2.a % 32u), _wgslsmith_mod_u32(1u, u_input.a ^ 24123u))));
}

fn func_1() -> Struct_1 {
    global3 = array<f32, 20>();
    global1 = 0u;
    global4 = ~(u_input.b.x | _wgslsmith_add_u32(abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1689u, u_input.b.x, u_input.b.x, 50616u), u_input.d)));
    global1 = abs(0u);
    var var_0 = func_2(-1498f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(213f, 388f, 236f)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(-2147483647i, 1i)), ~vec2<i32>(7368i, -2147483647i) | ~reverseBits(vec2<i32>(u_input.c, 1632i))));
    return Struct_1(var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-522f, 1067f, _wgslsmith_f_op_f32(102f - 1270f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(786f, global3[_wgslsmith_index_u32(global2.a, 20u)], global3[_wgslsmith_index_u32(12705u, 20u)]))), func_2(-674f, vec3<f32>(-1678f, global3[_wgslsmith_index_u32(44666u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<i32>(u_input.c, 5277i)).a))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(83827u, 20u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 20u)])), _wgslsmith_div_f32(-1000f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a, 0u, 0u), vec4<u32>(global2.a, global2.a, u_input.d.x, 66191u)), 20u)])), !(!any(vec2<bool>(false, false))))), abs(742u));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(u_input.c, u_input.c), ~(-25031i)), firstLeadingBit(select(vec2<i32>(u_input.c, 19046i) | vec2<i32>(u_input.c, u_input.c), vec2<i32>(-4048i, u_input.c), false))) <= u_input.c;
    var_0 = func_2(global3[_wgslsmith_index_u32(global2.a, 20u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1100f, -155f, 1114f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(-264f, global3[_wgslsmith_index_u32(75277u, 20u)], global3[_wgslsmith_index_u32(global2.a, 20u)]))))))), _wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-10836i, 2147483647i), vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-32829i, u_input.c)), vec2<i32>(u_input.c, -9250i) ^ vec2<i32>(9564i, -8660i)), ~(~(vec2<i32>(u_input.c, 1i) >> (u_input.d.wx % vec2<u32>(32u))))));
    var var_2 = vec2<bool>(!(global3[_wgslsmith_index_u32(~u_input.b.x, 20u)] < _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~global2.a, 20u)])), var_1);
    var var_3 = Struct_4(~_wgslsmith_sub_vec3_u32(min(vec3<u32>(global2.a, 2920u, 0u), u_input.d.yxx), u_input.b));
    global0 = ~(~(~(~4294967295u))) >= countOneBits(~_wgslsmith_add_u32(var_3.a.x, var_3.a.x));
    var var_4 = Struct_3(func_2(-189f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.a))), _wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(1000f, -714f, global3[_wgslsmith_index_u32(var_0.b, 20u)]))), vec2<i32>(1i, -4191i)).b);
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(var_0.b, 20u)], var_0.a);
}

