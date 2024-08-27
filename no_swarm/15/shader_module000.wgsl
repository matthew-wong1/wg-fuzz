struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4;

var<private> global2: i32 = -29358i;

var<private> global3: array<u32, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_i32(~arg_1.c.a, -abs(2147483647i)), arg_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c.c)), arg_0.b, ~(~arg_2.wyy)), false, Struct_1((_wgslsmith_div_i32(arg_0.c.a, global1.b) & (arg_0.c.a << (77812u % 32u))) & 1i, all(!vec4<bool>(false, arg_1.d, arg_0.a.b, false)), _wgslsmith_f_op_vec3_f32(-arg_1.a.c), !(global0.a <= -global0.a), arg_0.c.e), !all(!select(vec4<bool>(arg_1.c.d, global0.d, false, arg_1.c.d), vec4<bool>(true, global1.a.x, true, false), vec4<bool>(global0.d, true, arg_0.a.d, true))));
    let var_1 = arg_0.c.e.x;
    var_0 = Struct_2(var_0.c, false, arg_0.a, true);
    var var_2 = global1.a;
    var var_3 = countOneBits(~var_1);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global1.c * _wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(906f, arg_0.c.c.x, 1713f, arg_0.c.c.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.c, _wgslsmith_f_op_vec4_f32(-global1.c)))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = !global1.a.yy;
    global1 = Struct_4(global1.a, -select(~firstTrailingBit(26972i), 1i, any(vec3<bool>(global0.b, false, arg_0.d.x)) || arg_0.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, arg_2, arg_0.a, arg_0.c)), global1.c)) + _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(global1.b, true, vec3<f32>(global0.c.x, arg_0.c, arg_0.c), arg_0.d.x, global0.e), all(vec3<bool>(var_0.x, arg_1, false)), Struct_1(29766i, false, vec3<f32>(-232f, 350f, 1953f), false, global0.e), !var_0.x), Struct_2(Struct_1(-1i, global1.a.x, vec3<f32>(global0.c.x, arg_2, -679f), var_0.x, vec3<u32>(global3[_wgslsmith_index_u32(18498u, 24u)], global0.e.x, global0.e.x)), all(global1.a), Struct_1(-1i, arg_1, vec3<f32>(arg_0.c, 429f, 2392f), arg_0.b.x, vec3<u32>(1u, global3[_wgslsmith_index_u32(global0.e.x, 24u)], 14545u)), true), vec4<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46711u, 24u)], 24u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.e.x << (35409u % 32u), 24u)], 24u)], ~global3[_wgslsmith_index_u32(49427u, 24u)], ~64605u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.x, arg_2, arg_0.d.x)))))));
    var var_1 = 2147483647i;
    var_1 = select(0i, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, global1.b, -2147483647i, u_input.a), vec4<i32>(1582i, u_input.a, 0i, u_input.a), vec4<i32>(-40311i, global0.a, global0.a, 1i)) & reverseBits(vec4<i32>(-2541i, u_input.a, -31121i, u_input.a))), select(vec4<i32>(~u_input.a, global1.b, ~44888i, global1.b), firstTrailingBit(vec4<i32>(global0.a, global1.b, global1.b, 2147483647i) ^ vec4<i32>(20454i, 2147483647i, -7428i, global1.b)), false)), all(global1.a));
    global2 = -global1.b;
    return global1.a.x;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_3 {
    global3 = array<u32, 24>();
    return Struct_3(global1.d, vec4<bool>(!(!global1.a.x), all(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), arg_0.a.x))), ~(global0.e.x << (arg_3.x % 32u)) >= 1u, !arg_0.a.x), -184f, arg_0.a);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = func_4(Struct_4(select(vec3<bool>(true, func_2(Struct_3(arg_1.a.c.x, vec4<bool>(false, true, arg_0.a.x, false), arg_1.c.c.x, vec3<bool>(arg_2, arg_0.a.x, false)), false, arg_1.c.c.x), all(vec3<bool>(arg_2, arg_2, false))), !(!global1.a), !select(vec3<bool>(global0.b, arg_0.a.x, global0.d), vec3<bool>(false, true, arg_1.c.b), global1.a)), reverseBits(32461i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.c * vec4<f32>(global0.c.x, arg_0.c.x, arg_0.c.x, arg_0.d)), _wgslsmith_f_op_vec4_f32(-global1.c))) - global1.c), global0.c.x), arg_1.a, vec4<i32>(global0.a, max(~global1.b, ~arg_1.a.a) << (~0u % 32u), u_input.a, abs(arg_0.b)), ~abs(~(~arg_1.c.e.xx)));
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(abs(_wgslsmith_mod_u32(13056u << (0u % 32u), global0.e.x)), 1u << ((~arg_1.c.e.x & ~48551u) % 32u), ~(~countOneBits(0u))), ~arg_1.c.e);
    let var_2 = arg_0.b;
    global0 = arg_1.c;
    var var_3 = ~select(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_1.a.e.zz), var_1.yz), ~global0.e.x), _wgslsmith_div_vec3_u32(arg_1.a.e >> (~vec3<u32>(global3[_wgslsmith_index_u32(arg_1.a.e.x, 24u)], var_1.x, global3[_wgslsmith_index_u32(9830u, 24u)]) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(26859u, var_1.x, global3[_wgslsmith_index_u32(global0.e.x, 24u)]), 51058u, _wgslsmith_sub_u32(16252u, global0.e.x))), arg_2);
    return _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(arg_0.c.x * 388f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -394f;
    global3 = array<u32, 24>();
    global1 = Struct_4(!global1.a, _wgslsmith_add_i32(10680i, max(min(_wgslsmith_sub_i32(global1.b, -1i), firstTrailingBit(global1.b)), _wgslsmith_mod_i32(-global1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1.b, 1i, u_input.a), vec4<i32>(23844i, u_input.a, 0i, global0.a))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-976f)), 167f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(func_1(Struct_4(global1.a, 81326i, vec4<f32>(global1.d, global0.c.x, global1.d, var_0), -690f), Struct_2(Struct_1(global1.b, true, vec3<f32>(var_0, 421f, 576f), global1.a.x, global0.e), false, Struct_1(1i, true, global0.c, true, vec3<u32>(global0.e.x, global3[_wgslsmith_index_u32(global0.e.x, 24u)], 5711u)), true), global1.a.x, global0.a))))), 1000f), global0.c.x);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(3233f)), var_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d))), _wgslsmith_f_op_f32(-655f - -827f)), global0.c.x, -211f, _wgslsmith_div_f32(-2211f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * global1.d)));
    global0 = Struct_1(-1i, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-402f, 1567f, 352f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.x, 162f) * global1.c.xxw)))), any(global1.a.xx), ~(~global0.e));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 7545i, 2147483647i), vec4<i32>(u_input.a, 322i, global0.a, 32555i), vec4<i32>(10773i, global1.b, global1.b, 4072i))), vec4<i32>(u_input.a, _wgslsmith_mult_i32(global1.b, global0.a) << (global3[_wgslsmith_index_u32(~global0.e.x, 24u)] % 32u), abs(global1.b ^ global1.b), global0.a), any(global1.a.yy)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(global1.c.zww)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(568f, 168f, global1.d)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -169f, var_0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, var_0, -158f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.d, global1.d, global1.d), global1.c.wzz)))), false)), (max(abs(vec3<i32>(75871i, global1.b, global0.a)), ~vec3<i32>(u_input.a, global0.a, -2645i)) << (global0.e % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(vec3<i32>(global1.b, global0.a << (24297u % 32u), 0i), vec3<i32>(global1.b, 55096i, ~global1.b)), var_1.x, global1.c);
}

