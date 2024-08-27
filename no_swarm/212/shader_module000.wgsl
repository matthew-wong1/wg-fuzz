struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(544f, -912f);

var<private> global1: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_2(vec4<bool>(true, true, false, true), 0i, Struct_1(false, vec2<i32>(136i, 1361i)), vec3<u32>(3799u, 1u, 0u))), Struct_4(Struct_2(vec4<bool>(true, false, true, true), -33879i, Struct_1(false, vec2<i32>(-1i, 77571i)), vec3<u32>(32877u, 68678u, 52703u))), Struct_4(Struct_2(vec4<bool>(false, false, false, true), -2023i, Struct_1(true, vec2<i32>(1i, -5927i)), vec3<u32>(0u, 0u, 70944u))), Struct_4(Struct_2(vec4<bool>(false, false, false, true), 12497i, Struct_1(true, vec2<i32>(2147483647i, 64107i)), vec3<u32>(43529u, 4294967295u, 42846u))), Struct_4(Struct_2(vec4<bool>(false, true, true, false), -1i, Struct_1(false, vec2<i32>(41726i, i32(-2147483648))), vec3<u32>(1u, 4294967295u, 39984u))), Struct_4(Struct_2(vec4<bool>(true, false, true, true), 2147483647i, Struct_1(false, vec2<i32>(-1i, 1i)), vec3<u32>(35969u, 75415u, 18448u))), Struct_4(Struct_2(vec4<bool>(true, false, false, false), 1i, Struct_1(true, vec2<i32>(38424i, 0i)), vec3<u32>(1u, 572u, 0u))), Struct_4(Struct_2(vec4<bool>(true, false, true, false), -17851i, Struct_1(true, vec2<i32>(2147483647i, i32(-2147483648))), vec3<u32>(0u, 9634u, 19917u))), Struct_4(Struct_2(vec4<bool>(true, false, true, false), 1i, Struct_1(false, vec2<i32>(-82675i, -18065i)), vec3<u32>(0u, 0u, 0u))), Struct_4(Struct_2(vec4<bool>(false, false, false, false), -1i, Struct_1(false, vec2<i32>(i32(-2147483648), -12903i)), vec3<u32>(4294967295u, 1u, 27617u))), Struct_4(Struct_2(vec4<bool>(false, false, false, false), 1i, Struct_1(false, vec2<i32>(-12733i, 35672i)), vec3<u32>(25452u, 4294967295u, 1u))), Struct_4(Struct_2(vec4<bool>(false, false, false, false), i32(-2147483648), Struct_1(true, vec2<i32>(2147483647i, -22609i)), vec3<u32>(35108u, 0u, 4294967295u))), Struct_4(Struct_2(vec4<bool>(true, false, true, false), 1i, Struct_1(false, vec2<i32>(39492i, 25550i)), vec3<u32>(55787u, 1u, 65030u))), Struct_4(Struct_2(vec4<bool>(false, false, false, false), -37605i, Struct_1(true, vec2<i32>(-45018i, -46452i)), vec3<u32>(1u, 0u, 4294967295u))), Struct_4(Struct_2(vec4<bool>(false, true, false, false), 2147483647i, Struct_1(false, vec2<i32>(33857i, -39303i)), vec3<u32>(36074u, 4294967295u, 22617u))), Struct_4(Struct_2(vec4<bool>(false, true, false, true), 2147483647i, Struct_1(false, vec2<i32>(10294i, i32(-2147483648))), vec3<u32>(51014u, 1u, 1u))), Struct_4(Struct_2(vec4<bool>(true, false, false, true), i32(-2147483648), Struct_1(true, vec2<i32>(i32(-2147483648), 0i)), vec3<u32>(0u, 1u, 1u))), Struct_4(Struct_2(vec4<bool>(false, true, false, false), 44952i, Struct_1(true, vec2<i32>(-23459i, 8971i)), vec3<u32>(67503u, 1u, 0u))), Struct_4(Struct_2(vec4<bool>(false, true, false, false), -13636i, Struct_1(true, vec2<i32>(0i, 1i)), vec3<u32>(83285u, 0u, 1u))), Struct_4(Struct_2(vec4<bool>(true, false, false, true), 0i, Struct_1(true, vec2<i32>(i32(-2147483648), i32(-2147483648))), vec3<u32>(1u, 4294967295u, 25738u))), Struct_4(Struct_2(vec4<bool>(false, true, false, true), 0i, Struct_1(false, vec2<i32>(1i, 17457i)), vec3<u32>(21271u, 0u, 1u))), Struct_4(Struct_2(vec4<bool>(true, true, true, true), -40905i, Struct_1(true, vec2<i32>(-8574i, -1i)), vec3<u32>(83335u, 89489u, 1u))), Struct_4(Struct_2(vec4<bool>(false, false, false, true), -1i, Struct_1(true, vec2<i32>(-44904i, 6796i)), vec3<u32>(4294967295u, 33510u, 4294967295u))), Struct_4(Struct_2(vec4<bool>(false, false, false, false), -22309i, Struct_1(false, vec2<i32>(i32(-2147483648), 1i)), vec3<u32>(1u, 0u, 1u))), Struct_4(Struct_2(vec4<bool>(false, false, true, false), 5586i, Struct_1(true, vec2<i32>(-17389i, i32(-2147483648))), vec3<u32>(4294967295u, 49379u, 1u))), Struct_4(Struct_2(vec4<bool>(true, true, false, true), 32745i, Struct_1(true, vec2<i32>(2147483647i, -15976i)), vec3<u32>(4294967295u, 49916u, 74938u))), Struct_4(Struct_2(vec4<bool>(false, true, false, true), -8981i, Struct_1(false, vec2<i32>(-50527i, -879i)), vec3<u32>(43181u, 0u, 0u))), Struct_4(Struct_2(vec4<bool>(false, true, true, false), 13136i, Struct_1(false, vec2<i32>(-39057i, -1i)), vec3<u32>(62396u, 1u, 55338u))), Struct_4(Struct_2(vec4<bool>(true, false, true, true), 32727i, Struct_1(true, vec2<i32>(1i, 36773i)), vec3<u32>(4294967295u, 72407u, 1u))), Struct_4(Struct_2(vec4<bool>(true, true, false, false), -21598i, Struct_1(false, vec2<i32>(2147483647i, 3522i)), vec3<u32>(0u, 4294967295u, 0u))), Struct_4(Struct_2(vec4<bool>(false, false, false, false), 31452i, Struct_1(true, vec2<i32>(2147483647i, 9912i)), vec3<u32>(0u, 39275u, 1u))));

var<private> global2: f32;

var<private> global3: array<f32, 6>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_5) -> Struct_5 {
    global1 = array<Struct_4, 31>();
    var var_0 = -377f;
    global3 = array<f32, 6>();
    return arg_0;
}

fn func_3(arg_0: Struct_5) -> Struct_1 {
    let var_0 = any(vec4<bool>(arg_0.d, select(!all(vec2<bool>(true, arg_0.d)), true, !any(vec4<bool>(arg_0.d, true, arg_0.d, arg_0.d))), !arg_0.d, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a)), vec4<u32>(19285u, 1u, 0u, 1u)) <= _wgslsmith_add_u32(0u, u_input.d)));
    global1 = array<Struct_4, 31>();
    let var_1 = !select(vec4<bool>(var_0, arg_0.b.x <= arg_0.a.x, any(vec2<bool>(false, var_0)), false), !select(!vec4<bool>(true, true, var_0, true), !vec4<bool>(true, arg_0.d, false, false), select(vec4<bool>(arg_0.d, true, true, var_0), vec4<bool>(false, true, arg_0.d, var_0), false)), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1506f, global3[_wgslsmith_index_u32(~(~(~u_input.a)), 6u)])));
    global3 = array<f32, 6>();
    return Struct_1(var_0, vec2<i32>(~_wgslsmith_mult_i32(1i, 1i), -u_input.c.x));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_5) -> u32 {
    var var_0 = Struct_3(Struct_2(!select(!vec4<bool>(false, arg_0.a.x, arg_0.c.a, arg_0.c.a), arg_0.a, !arg_2.d), u_input.c.x, func_3(func_2(Struct_5(vec3<i32>(arg_2.a.x, -2147483647i, 2147483647i), arg_2.a, global3[_wgslsmith_index_u32(0u, 6u)], true))), arg_0.d), func_3(func_2(func_2(arg_2))), -27473i, _wgslsmith_div_u32(1u, ~_wgslsmith_sub_u32(arg_0.d.x, ~40920u)), vec2<f32>(_wgslsmith_f_op_f32(abs(1657f)), _wgslsmith_f_op_f32(f32(-1f) * -1520f)));
    let var_1 = Struct_2(arg_0.a, firstLeadingBit(~(~_wgslsmith_sub_i32(35955i, u_input.c.x))), arg_0.c, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0.d, arg_1), var_0.a.d));
    let var_2 = arg_0.a;
    let var_3 = var_0.a;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-449f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 922f, -1386f) - vec3<f32>(1768f, global0.x, -1174f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global3[_wgslsmith_index_u32(func_1(Struct_2(vec4<bool>(true, false, true, true), 9840i, Struct_1(true, u_input.c.ww), vec3<u32>(u_input.b, 30493u, 16237u)), 0u, Struct_5(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), -225f, false)), 6u)], 759f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 6u)], global0.x, -828f), vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 6u)], global3[_wgslsmith_index_u32(0u, 6u)], -1144f), vec3<bool>(false, false, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1389f, global0.x, global3[_wgslsmith_index_u32(u_input.d, 6u)]))))));
    var_0 = 1767f;
    var var_2 = func_2(func_2(Struct_5(u_input.c.wyy & max(vec3<i32>(-2147483647i, 1i, -1i), u_input.c.wxy), u_input.c.zyy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1059f * global0.x), -1615f), true)));
    var var_3 = any(select(!select(vec2<bool>(var_2.d, var_2.d), !vec2<bool>(var_2.d, var_2.d), var_2.d), vec2<bool>(var_2.d, 4294967295u >= (u_input.d & 121344u)), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, u_input.b, u_input.b), ~vec3<u32>(4294967295u, u_input.b, u_input.d)), vec3<u32>(~(~4294967295u), firstTrailingBit(u_input.b << (u_input.a % 32u)), ~u_input.d)), _wgslsmith_add_u32(60211u, u_input.d), 0u);
}

