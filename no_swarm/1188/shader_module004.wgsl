struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
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

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec2<bool>(true, false), 1i, Struct_1(true, -728f, 4294967295u, 4294967295u), 4294967295u), Struct_2(vec2<bool>(true, true), -26985i, Struct_1(false, 199f, 40956u, 4294967295u), 0u), Struct_2(vec2<bool>(true, false), -1i, Struct_1(true, 929f, 7510u, 8559u), 33785u), Struct_2(vec2<bool>(false, false), 23816i, Struct_1(true, 1654f, 1u, 43251u), 0u), Struct_2(vec2<bool>(false, false), 0i, Struct_1(true, -605f, 1u, 4294967295u), 7859u), Struct_2(vec2<bool>(true, false), -34393i, Struct_1(false, -1000f, 0u, 1u), 14175u), Struct_2(vec2<bool>(true, false), -27678i, Struct_1(false, -396f, 4294967295u, 31540u), 0u), Struct_2(vec2<bool>(false, false), -22672i, Struct_1(true, -524f, 7223u, 17734u), 8164u), Struct_2(vec2<bool>(true, false), 0i, Struct_1(false, -917f, 1u, 4294967295u), 79157u), Struct_2(vec2<bool>(false, true), -1i, Struct_1(false, 453f, 4294967295u, 51617u), 87543u), Struct_2(vec2<bool>(true, true), 0i, Struct_1(true, 822f, 15406u, 4294967295u), 5451u), Struct_2(vec2<bool>(true, false), -1i, Struct_1(false, -991f, 4294967295u, 14916u), 23476u), Struct_2(vec2<bool>(true, false), i32(-2147483648), Struct_1(false, 1772f, 48041u, 9777u), 1u), Struct_2(vec2<bool>(false, true), 29446i, Struct_1(true, 422f, 35452u, 29057u), 88934u), Struct_2(vec2<bool>(true, false), 2494i, Struct_1(true, -1316f, 4294967295u, 28031u), 4294967295u), Struct_2(vec2<bool>(true, false), 6240i, Struct_1(true, 485f, 15088u, 10443u), 0u), Struct_2(vec2<bool>(true, false), 26598i, Struct_1(false, -231f, 10713u, 1u), 0u), Struct_2(vec2<bool>(false, false), i32(-2147483648), Struct_1(false, -408f, 1u, 15497u), 1u), Struct_2(vec2<bool>(true, true), 43324i, Struct_1(false, 153f, 39217u, 0u), 13145u), Struct_2(vec2<bool>(true, false), 0i, Struct_1(false, -645f, 25103u, 41871u), 1u), Struct_2(vec2<bool>(true, true), 0i, Struct_1(true, 605f, 9044u, 4294967295u), 11912u), Struct_2(vec2<bool>(false, true), -15664i, Struct_1(true, 709f, 4294967295u, 4294967295u), 5796u), Struct_2(vec2<bool>(false, true), -3604i, Struct_1(true, -453f, 0u, 23525u), 1u), Struct_2(vec2<bool>(true, false), 0i, Struct_1(true, 274f, 4294967295u, 67272u), 0u), Struct_2(vec2<bool>(true, false), 2147483647i, Struct_1(false, -871f, 2095u, 14581u), 0u), Struct_2(vec2<bool>(false, true), 1i, Struct_1(true, -1000f, 1u, 0u), 3060u), Struct_2(vec2<bool>(true, false), 0i, Struct_1(false, 154f, 35870u, 8621u), 1u), Struct_2(vec2<bool>(false, true), -1i, Struct_1(false, 918f, 0u, 118375u), 0u), Struct_2(vec2<bool>(true, false), 0i, Struct_1(false, -1000f, 4294967295u, 1u), 0u), Struct_2(vec2<bool>(true, false), 2147483647i, Struct_1(true, 1000f, 4294967295u, 12769u), 1u), Struct_2(vec2<bool>(true, true), 0i, Struct_1(false, -1759f, 18842u, 6998u), 6078u));

var<private> global1: Struct_2;

var<private> global2: array<u32, 25>;

var<private> global3: array<i32, 24>;

var<private> global4: array<u32, 9> = array<u32, 9>(36574u, 1116u, 0u, 4294967295u, 59471u, 1u, 4294967295u, 2591u, 4192u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = global1.c;
    global3 = array<i32, 24>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.a.x), u_input.a.x), 31u)];
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(~countOneBits(~41556i), -u_input.b.x), u_input.c.x);
    let var_3 = firstTrailingBit(reverseBits(1i));
    return false;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(!func_3(), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2[_wgslsmith_index_u32(11653u, 25u)], 4294967295u);
    var var_1 = _wgslsmith_mult_vec4_i32(u_input.b, ~(vec4<i32>(-44489i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(global3[_wgslsmith_index_u32(15161u, 24u)], global1.b, -1i, -1i)), 0i, _wgslsmith_mult_i32(35959i, 28577i)) << (vec4<u32>(~1u, 4294967295u, _wgslsmith_mod_u32(4294967295u, 50512u), 1u) % vec4<u32>(32u))));
    let var_2 = Struct_2(vec2<bool>(var_0.a, func_3()), -62182i, Struct_1(any(!vec4<bool>(false, false, arg_3.a, var_0.a)), var_0.b, global4[_wgslsmith_index_u32(40313u, 9u)], global1.d), ~(~global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.c.c, 9u)], 25u)]));
    var var_3 = var_2.c.b;
    var var_4 = Struct_1(!(-1000f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(select(-1000f, arg_3.b, var_2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -716f), firstTrailingBit(_wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), 41369u);
    return vec4<bool>(true, false, true, var_4.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = 4294967295u;
    let var_1 = !(!all(!vec3<bool>(arg_0.a, false, global1.c.a)));
    global3 = array<i32, 24>();
    var_0 = ~84257u;
    let var_2 = !select(global1.c.a, any(func_2(_wgslsmith_mod_i32(u_input.c.x, 79350i), true, ~vec2<u32>(global4[_wgslsmith_index_u32(45068u, 9u)], 4294967295u), arg_0)), false);
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 9>();
    var var_0 = global1.c;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~max(~_wgslsmith_add_u32(11556u, 24685u), var_0.c)), 24u)];
    var var_2 = global4[_wgslsmith_index_u32(~16789u ^ global1.d, 9u)];
    let var_3 = func_1(global1.c, vec2<bool>(global1.c.a, !var_0.a));
    let var_4 = func_1(func_1(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + var_3.b) - var_0.b), ~(~global4[_wgslsmith_index_u32(var_0.c, 9u)]), _wgslsmith_add_u32(u_input.a.x, 1u)), vec2<bool>(var_3.a, true)), !(!(!select(global1.a, vec2<bool>(global1.a.x, false), global1.a))));
    global2 = array<u32, 25>();
    let var_5 = !vec3<bool>(global1.a.x, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(328f, -455f), _wgslsmith_div_f32(-1160f, global1.c.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1673f))))));
}

