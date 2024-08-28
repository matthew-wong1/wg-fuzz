struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: f32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-283f, -571f);

var<private> global1: array<Struct_5, 29>;

var<private> global2: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-2051f, -387f, -1404f, -581f), vec4<f32>(1000f, -1199f, -911f, 1060f), vec4<f32>(-861f, 1000f, -235f, 990f), vec4<f32>(-544f, 780f, -1000f, 1632f), vec4<f32>(1487f, 1309f, 365f, -330f), vec4<f32>(1080f, -737f, 415f, -414f), vec4<f32>(-688f, -2341f, 1776f, -1525f), vec4<f32>(989f, -224f, 1568f, -371f), vec4<f32>(-610f, -489f, -622f, 989f), vec4<f32>(-1667f, 364f, 920f, 796f), vec4<f32>(851f, 526f, -385f, 336f), vec4<f32>(1114f, -236f, -1165f, -1955f), vec4<f32>(745f, 272f, -101f, 268f), vec4<f32>(-472f, -117f, 1542f, 338f), vec4<f32>(-2109f, 1484f, 1153f, -325f));

var<private> global3: vec2<i32>;

var<private> global4: array<vec3<u32>, 15>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -526f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))));
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 29u)];
    var var_1 = Struct_1(true, ~_wgslsmith_clamp_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, u_input.c))), ~min(vec2<u32>(41346u, var_0.c.x), vec2<u32>(10000u, 45025u)), _wgslsmith_div_vec2_u32(~var_0.a.b, max(vec2<u32>(57879u, var_0.a.b.x), vec2<u32>(u_input.c, var_0.c.x)))), global3.x, var_0.b.c.yy);
    var var_2 = vec2<u32>(abs(u_input.c >> (var_0.a.b.x % 32u)), 7668u);
    global4 = array<vec3<u32>, 15>();
    return var_0.b.c.zx;
}

fn func_4(arg_0: Struct_5) -> vec2<f32> {
    global3 = select(vec2<i32>(reverseBits(firstTrailingBit(~global3.x)), countOneBits(~1i) >> (1u % 32u)), vec2<i32>(arg_0.a.c, abs(1i)), vec2<bool>(true, true));
    global3 = vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(countOneBits(u_input.d), vec2<i32>(arg_0.b.b << (32503u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(32609i, arg_0.a.c, arg_0.b.a, arg_0.a.c), vec4<i32>(arg_0.a.c, 2147483647i, -64859i, 32907i))));
    let var_0 = ~1u;
    global1 = array<Struct_5, 29>();
    var var_1 = arg_0.c;
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-825f))) + -169f), _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -331f), arg_0.b.e.a)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>) -> vec2<bool> {
    global4 = array<vec3<u32>, 15>();
    global4 = array<vec3<u32>, 15>();
    let var_0 = arg_0.b;
    var var_1 = ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, u_input.c), 85625u);
    global0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_5(Struct_1(any(vec2<bool>(true, false)), u_input.b, firstLeadingBit(31455i & global3.x), func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, global3.x), vec3<i32>(0i, u_input.a, 5030i)), Struct_3(global3.x, u_input.a, vec3<bool>(var_0, var_0, arg_0.b), Struct_2(false, false, vec2<bool>(arg_0.b, true)), Struct_2(true, true, vec2<bool>(var_0, false))))), Struct_3(-2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 6913i, u_input.a), vec3<i32>(0i, u_input.d.x, global3.x)), !select(vec3<bool>(true, var_0, arg_0.a), vec3<bool>(var_0, true, false), var_0), Struct_2(all(vec3<bool>(false, false, var_0)), global0.x < arg_0.d.x, select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), vec2<bool>(true, arg_0.b))), Struct_2(false, !var_0, vec2<bool>(var_0, arg_0.b))), vec3<u32>(u_input.c, _wgslsmith_add_u32(4044u, select(1u, u_input.b.x, arg_0.a)), (u_input.c << (51043u % 32u)) & ~4294967295u))));
    return !(!select(!(!vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(true, true), vec2<bool>(var_0, any(vec2<bool>(var_0, false)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(620f - 1401f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1577f)) * global0.x))), vec2<f32>(1699f, 1449f));
    global2 = array<vec4<f32>, 15>();
    var var_1 = select(!(!vec2<bool>(true, 11275u > u_input.c)), !vec2<bool>(true, any(vec2<bool>(true, true))), select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), false), select(func_2(Struct_4(false, true, global0.x, vec3<f32>(-1392f, global0.x, var_0.x)), vec3<f32>(-1072f, 2886f, var_0.x)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), false)), func_2(Struct_4(any(vec4<bool>(true, false, false, true)), select(false, true, true), global0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0.x, global0.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, var_0.x)))), false));
    var var_2 = -16064i;
    global3 = u_input.d & u_input.d;
    return vec4<bool>(false, any(vec3<bool>(true, !all(vec2<bool>(var_1.x, var_1.x)), false)), any(!select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x), var_1.x), select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false)), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, true, true, false), !func_1(), select(vec4<bool>(true | (u_input.a >= u_input.d.x), true, true, global0.x <= _wgslsmith_f_op_f32(f32(-1f) * -1289f)), vec4<bool>(true, false, true, any(vec4<bool>(true, true, true, true))), !(-3292f < global0.x) & true));
    global2 = array<vec4<f32>, 15>();
    var var_1 = ~(~u_input.c) >> (0u % 32u);
    var var_2 = ~55758u >> ((u_input.c & (u_input.c & firstTrailingBit(1u))) % 32u);
    global4 = array<vec3<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(9198u, 15u)], (countOneBits(~62326u) ^ ~u_input.b.x) & 64830u, vec2<i32>(max(_wgslsmith_add_i32(u_input.a, i32(-1i) * -1i), u_input.a), -101594i), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 9211u), 29u)])).x, -1000f), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, firstLeadingBit(~u_input.b.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, ~u_input.c), ~(~u_input.b))));
}

