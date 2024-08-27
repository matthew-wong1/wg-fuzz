struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<u32>(72865u, 4294967295u, 1u, 4294967295u), vec4<i32>(12387i, -39488i, -106i, -12612i)), Struct_1(vec4<u32>(0u, 57075u, 48615u, 1u), vec4<i32>(866i, 0i, 54814i, -45089i)), Struct_1(vec4<u32>(21595u, 6744u, 2947u, 0u), vec4<i32>(2147483647i, 0i, -1i, 11248i)), Struct_1(vec4<u32>(33286u, 3363u, 10819u, 4294967295u), vec4<i32>(-29698i, -14247i, -47044i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 27027u, 4294967295u, 4294967295u), vec4<i32>(-14487i, i32(-2147483648), 27060i, i32(-2147483648))), Struct_1(vec4<u32>(4271u, 14636u, 1u, 4294967295u), vec4<i32>(2459i, 14679i, -23337i, -1i)), Struct_1(vec4<u32>(15925u, 9433u, 4294967295u, 4294967295u), vec4<i32>(-1i, 2147483647i, 2147483647i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<i32>(0i, -41059i, 12170i, -20272i)), Struct_1(vec4<u32>(0u, 11129u, 26191u, 65373u), vec4<i32>(2147483647i, i32(-2147483648), -47063i, 0i)), Struct_1(vec4<u32>(30767u, 40482u, 0u, 4294967295u), vec4<i32>(2147483647i, 41167i, 0i, -47715i)), Struct_1(vec4<u32>(75778u, 1u, 56930u, 43808u), vec4<i32>(-1i, 19210i, -1i, 0i)), Struct_1(vec4<u32>(1u, 4294967295u, 14879u, 68442u), vec4<i32>(-5398i, 1i, 2147483647i, 68080i)), Struct_1(vec4<u32>(4294967295u, 4292u, 0u, 84784u), vec4<i32>(1i, -20506i, 2147483647i, -17772i)), Struct_1(vec4<u32>(38926u, 4294967295u, 0u, 78914u), vec4<i32>(1i, i32(-2147483648), -16404i, -31604i)), Struct_1(vec4<u32>(0u, 14225u, 58228u, 11366u), vec4<i32>(0i, -1i, -1i, -1i)), Struct_1(vec4<u32>(4294967295u, 67230u, 1u, 0u), vec4<i32>(2147483647i, 20949i, -5559i, -58503i)), Struct_1(vec4<u32>(15359u, 30903u, 4294967295u, 4294967295u), vec4<i32>(0i, 1i, 30617i, 0i)), Struct_1(vec4<u32>(1u, 4294967295u, 8256u, 4294967295u), vec4<i32>(-1i, -1i, 19960i, i32(-2147483648))), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<i32>(2975i, -11070i, 2147483647i, 1i)), Struct_1(vec4<u32>(1459u, 59610u, 1u, 27200u), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 0i)), Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<i32>(-33999i, -7257i, 6544i, -1i)), Struct_1(vec4<u32>(0u, 15754u, 0u, 0u), vec4<i32>(1i, i32(-2147483648), 1i, -1i)), Struct_1(vec4<u32>(26935u, 59643u, 4294967295u, 29625u), vec4<i32>(4701i, i32(-2147483648), -45979i, 5435i)), Struct_1(vec4<u32>(25949u, 0u, 0u, 4294967295u), vec4<i32>(18074i, 2147483647i, -24136i, 2147483647i)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<i32>(0i, i32(-2147483648), 0i, 28063i)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<i32>(-27085i, -38679i, 1i, i32(-2147483648))));

var<private> global1: vec2<bool>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 15> = array<bool, 15>(false, true, true, true, false, false, true, true, true, false, true, true, false, false, false);

var<private> global4: array<u32, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    var var_0 = arg_1;
    global0 = array<Struct_1, 26>();
    let var_1 = -_wgslsmith_mult_vec2_i32(vec2<i32>(12240i, -2147483647i), ~(-_wgslsmith_div_vec2_i32(var_0.b.b.yy, arg_0.b.b.yz)));
    let var_2 = i32(-1i) * -2147483647i;
    global0 = array<Struct_1, 26>();
    return ~(-1i);
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> i32 {
    let var_0 = 1i;
    global2 = arg_0.b;
    let var_1 = ~global2.b.xzx;
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(~func_3(Struct_2(var_0, Struct_1(vec4<u32>(0u, global4[_wgslsmith_index_u32(14736u, 18u)], 49608u, global2.a.x), arg_0.b.b), 46169i), arg_0, -var_1.yy), min(80267i, 0i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(firstLeadingBit(1i), -global2.b.x), arg_0.b.b.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(36264i, var_1.x), -1170i), firstTrailingBit(-arg_0.c));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-158f - -1925f), _wgslsmith_f_op_f32(1289f - -564f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-641f + -154f) * _wgslsmith_f_op_f32(434f - _wgslsmith_f_op_f32(f32(-1f) * -1535f)))));
    return _wgslsmith_add_i32(var_0, -2147483647i ^ (global2.b.x & var_2.x));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = 4294967295u;
    let var_1 = Struct_2(_wgslsmith_sub_i32(abs(~(~(-51413i))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-global2.b.wxy, countOneBits(global2.b.ywx)), vec3<i32>(u_input.a, firstTrailingBit(global2.b.x), _wgslsmith_div_i32(-38422i, u_input.a)))), Struct_1(global2.a, vec4<i32>(-2147483647i, u_input.a >> ((18778u & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.a.x, 18u)], 18u)]) % 32u), func_2(Struct_2(-1i, Struct_1(global2.a, global2.b), u_input.a), _wgslsmith_mod_u32(1873u, 1u)), -26521i)), 62605i);
    var var_2 = Struct_1(~var_1.b.a, global2.b);
    let var_3 = 1i;
    var var_4 = !any(vec3<bool>(false, global3[_wgslsmith_index_u32(countOneBits(~4294967295u), 15u)], true));
    return _wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(global2.a.x, 8958u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    var var_0 = vec4<u32>(max(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-391f, 930f, -931f, -817f))), _wgslsmith_add_u32(1u, 1u) & _wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(9468u, 18u)], 1u), vec2<u32>(4294967295u, 12229u))) >> (_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, u_input.b), min(1u, reverseBits(u_input.b))) % 32u), global2.a.x, 1u, abs(30245u));
    global4 = array<u32, 18>();
    global1 = select(vec2<bool>(global1.x, true | (false && all(vec3<bool>(global1.x, false, false)))), !select(vec2<bool>(all(vec4<bool>(false, global3[_wgslsmith_index_u32(102302u, 15u)], true, false)), true), !select(vec2<bool>(global1.x, false), vec2<bool>(false, global1.x), global3[_wgslsmith_index_u32(40753u, 15u)]), true), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1f, 1f));
}

